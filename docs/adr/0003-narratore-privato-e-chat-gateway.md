# 0003. Narratore privato e Chat Gateway: nessun invio senza un'azione del giocatore

- Stato: accettata
- Data: 2026-10-29 (implementata nello step S2; decisione della [roadmap](../../ROADMAP.md), n. 3 e 4)

## Contesto

Il prototipo pubblicava emote automatiche in chat quando succedeva qualcosa. Per un addon di roleplay è un comportamento rischioso: fa parlare il personaggio a sua insaputa, può inondare la chat (spam), e va contro le protezioni del client, che consente `/say` e `/yell` nel mondo aperto solo dopo un gesto dell'utente (clic, tasto, comando). Allo stesso tempo, il testo narrativo ha valore anche solo come lettura privata.

## Decisione

1. **Separare la narrazione privata dall'invio in chat.** Ogni frase compare prima nel **narratore privato** (`UI/NarratorFrame.lua`): un riquadro non bloccante, visibile solo al giocatore. Il **Chat Gateway** (`Integration/ChatGateway.lua`) decide se e come una frase può diventare testo di chat.
2. **Quattro modalità** (`chat.mode`), con `PRIVATE` predefinita:
   - `PRIVATE`: solo narratore, mai proposte.
   - `PREVIEW`: la frase pubblica diventa una proposta; il tasto "pronuncia" apre l'editor e si invia con Invio.
   - `CONFIRM_TO_SEND`: la proposta è pronta e un gesto del giocatore la invia.
   - `AUTO_ONLY_IF_ALLOWED`: invio automatico **solo** dove il client lo permette senza gesto (emote ovunque, `/say` e `/yell` nelle istanze) e **solo** con un secondo consenso (`output.autoPublicSay`, acceso solo scegliendo questa modalità). Il resto resta una proposta.
3. **Ogni frase ha una voce** (`speaker`): `narrator`, `inner`, `character`, `npc`. Le voci `inner` e `npc` **non diventano mai proposte**. Il modulo `publicChat` spento equivale a `PRIVATE`.
4. **L'invio da gesto del giocatore passa solo da `Gateway:PlayerAction(fn)`** (clic, tasto assegnato, comando, Invio nell'editor). `Gateway:Send` fuori da quell'ambito rifiuta tutto tranne `EMOTE` e, in istanza, `SAY`/`YELL` (motivo `needs_action`): un timer o un evento non può inviare in chat pubblica. Il codice che invia deve passare da `Gateway:Send` o `Gateway:SendPending`.
5. **Protezioni**: pausa minima di 4 secondi tra due invii, al massimo 6 al minuto e 2 automatici (`chat.floodSeconds`, `maxPerMinute`, `autoMaxPerMinute`); proposta in attesa per 25 secondi (`pendingSeconds`); testo di al massimo 255 byte con UTF-8 intatto; niente invio con la chat bloccata dal client, con canale non disponibile o con testo vuoto; errori del client registrati in diagnostica.
6. **Il giocatore controlla la frase**: può modificarla, cambiare canale (`/s`, `/e`, gruppo, incursione, gilda, istanza) o scartarla. Una **pausa immediata** (tasto, pulsante, `/au pausa`) sospende le nuove frasi.
7. **Migrazione dal prototipo**: lo schema 2 trasforma l'antico `output.mode` in `chat.mode` (`self` → `PRIVATE`, qualunque modalità pubblica → `CONFIRM_TO_SEND`) e forza `autoPublicSay = false`. Nessuna pubblicazione automatica senza una nuova scelta dell'utente.

## Alternative considerate

- **Pubblicare in automatico come il prototipo.** Scartata: spam, protezioni del client, personaggio che parla a insaputa dell'utente.
- **Nessuna uscita in chat** (solo lettura privata). Sicura, ma toglie un uso legittimo del roleplay: dire una frase scelta dal narratore. Il Chat Gateway la rende possibile con consenso.
- **Una sola modalità di conferma.** Meno codice, ma non copre chi vuole rivedere il testo prima (`PREVIEW`) né chi accetta le emote automatiche (`AUTO_ONLY_IF_ALLOWED`).
- **Permettere ad altri addon di inviare con `Gateway:Send` senza vincoli.** Scartata: il vincolo dell'azione del giocatore deve valere per tutti.

## Conseguenze

- Positive: le impostazioni predefinite sono sicure per costruzione; il comportamento è verificabile con test per ogni combinazione di modalità, forma e voce (`Tests/TestChatGateway.lua`); un futuro Narrative Director può cambiare quando parlare senza cambiare come si esce in chat.
- Negative:
  - il valore di una frase "detta" richiede un gesto: meno fluidità nelle modalità `PREVIEW` e `CONFIRM_TO_SEND`;
  - **l'ipotesi "senza gesto solo emote e, nelle istanze, `/say`" è prudente e non è stata misurata nel client vero**: è da verificare nella prova G1 ([checklist](../G1_checklist.md), SP-05). Se il client si rivela più restrittivo, il Gateway riporterà il rifiuto in diagnostica e la proposta resterà in attesa.
  - la voce `speaker` oggi si ricava in modo provvisorio dalla forma (`say` → `character`, `emote` → `narrator`) finché lo schema v2 (step S3) non la porta nei dati.

## Riferimenti

- GDD §4.2, §7.7, §14; [ROADMAP.md](../../ROADMAP.md), "Esito di S2".
- `Integration/ChatGateway.lua`, `UI/NarratorFrame.lua`, `Systems/Director.lua`, `Core/Config.lua`.
- [docs/ARCHITETTURA.md](../ARCHITETTURA.md), [docs/G1_checklist.md](../G1_checklist.md).
