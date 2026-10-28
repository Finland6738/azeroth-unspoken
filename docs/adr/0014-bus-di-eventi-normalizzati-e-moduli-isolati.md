# 0014. Bus di eventi normalizzati, moduli isolati e Director come punto di aggancio

- Stato: accettata
- Data: 2026-10-29 (implementata negli step S1 e S2; GDD §11.2, §11.3)

## Contesto

Il prototipo reagiva direttamente agli eventi del client, in un unico file (`Events.lua`). Con più sistemi in arrivo (Narrative Director, personalità, memoria, relazioni, NPC) serve una struttura in cui gli eventi del gioco siano tradotti in un formato unico, i sistemi si possano aggiungere senza toccarsi, un errore non fermi gli altri, e la decisione di "quando parlare" stia in un solo punto.

## Decisione

1. **Un bus di eventi** (`Core/EventBus.lua`). Ogni evento del client viene tradotto da una *sorgente* (`EventBus:AddSource`) in un **envelope** uniforme:
   ```
   { type, timestamp, source, context = { … }, fields = { [campo] = AVAILABLE | MISSING | RESTRICTED } }
   ```
   con `source` fra `WOW_API`, `USER`, `ADDON`, `SIMULATED`. I tipi attuali: `WORLD_ENTER`, `ZONE_ENTER`, `COMBAT_START`, `COMBAT_END`, `HEALTH_CHANGED`, `PLAYER_DEATH`, `PLAYER_REVIVE`, `LEVEL_UP`, `TARGET_CHANGED`, `SPELL_SENT`, `SPELL_CAST`, `RESTRICTION_CHANGED`.
2. **Deduplicazione**: stesso tipo e stessa chiave entro una finestra (`dedupWindow`, 1 secondo predefinito, finestre proprie per alcuni tipi) non si pubblicano due volte. I valori segreti non entrano nel contesto: il campo risulta `RESTRICTED` ([ADR 0005](0005-compat-valori-segreti-ed-eventi-difensivi.md)).
3. **Niente cascate**: un gestore che pubblica a sua volta mette l'evento in una coda (al massimo 32 eventi; i più vecchi di 5 secondi si scartano).
4. **Abbonamento**: `EventBus:Subscribe(tipo o "*", proprietario, fn)`. Ogni gestore gira dentro `Diagnostics:Guard`: un errore si registra e gli altri gestori continuano.
5. **Moduli**: ogni sistema si registra con `NS:RegisterModule(nome)` e ha un `OnInit` opzionale. `NS:Initialize` (su `ADDON_LOADED`) esegue, in ordine, `Config:Load`, `Compat:Probe`, `EventBus:Start` e l'`OnInit` di ogni modulo, ciascuno isolato.
6. **Il Director è l'unico punto che decide se intervenire.** `Systems/Triggers.lua` traduce gli eventi del bus in eventi narrativi (`battle`, `victory`, `zone`…) e per ognuno chiede a `Director:Evaluate(evento)`, che risponde `{ allow, chanceMul, cooldownMul }` oppure `{ allow = false, reason }`. Oggi il Director applica l'intensità, la pausa immediata e i moduli attivi; lo step S4 ne sostituirà il corpo con il Narrative Director completo senza cambiare i chiamanti.
7. **L'uscita passa dal Chat Gateway** ([ADR 0003](0003-narratore-privato-e-chat-gateway.md)): i sistemi non scrivono mai in chat da soli.

## Alternative considerate

- **Registrare gli eventi del client in ogni modulo.** Più semplice all'inizio, ma ogni modulo duplicherebbe la gestione dei valori segreti, la deduplicazione e il controllo degli eventi, e la diagnostica non avrebbe un punto di osservazione unico.
- **Un sistema di plug-in con callback libere.** Troppo permissivo: un errore in un plug-in fermerebbe gli altri.
- **Lasciare la decisione di parlare dentro `Triggers`.** È ciò che faceva il prototipo; renderebbe difficile aggiungere budget, priorità e silenzio.

## Conseguenze

- Positive: tracciabilità (`/au debug` mostra gli ultimi eventi, i conteggi e i doppioni scartati; `/au debug trace` li stampa); isolamento degli errori; nuovi sistemi si aggiungono abbonandosi al bus; la logica di "quando" è in un posto solo.
- Negative: un livello di indirezione tra evento del client e frase; il formato dell'envelope è un contratto interno da mantenere con attenzione quando si aggiungono campi.
- I tipi di evento previsti per gli step futuri (gossip, quest, mercante, gruppo…) non esistono ancora: vanno aggiunti come sorgenti, con controllo in Compat.

## Riferimenti

- GDD §6, §10, §11.2, §11.3.
- `Core/EventBus.lua`, `Core/Bootstrap.lua`, `Systems/Triggers.lua`, `Systems/Director.lua`.
- [docs/ARCHITETTURA.md](../ARCHITETTURA.md).
