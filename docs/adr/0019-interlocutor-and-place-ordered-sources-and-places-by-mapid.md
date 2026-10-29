# 0019. Interlocutore e luogo: fonti in ordine di priorità, tendenze deboli, luoghi per uiMapID

- Stato: accettata
- Data: 2026-10-29 (step S6c; GDD §5.2, §5.3, §5.4, §7.1, §7.2, §10; ADR 0004, 0005, 0015, 0016, 0017, 0018; issue #31)

## Contesto

Le frasi devono cambiare secondo **chi incontriamo** (personalità, azioni recenti, razza, classe, obiettivi, ruolo) e **dove siamo** (regione, territorio, dungeon, incursione, campo di battaglia, arena). S5 descrive il *nostro* personaggio, S6b il *rapporto*; manca il profilo dell'altro e un luogo più ricco del nome della zona.

I rischi sono tre. Primo: le informazioni su un'altra persona arrivano da fonti di affidabilità diversa (l'utente, il profilo Total RP 3 di un altro giocatore, dati curati, dati di gioco) e un'informazione indovinata è peggio di nessuna. Secondo: razza, fazione e classe tentano a dedurre un carattere, e il GDD (§5.4) vieta qualunque decisione morale imposta da questi dati. Terzo: la memoria dei luoghi di S6 usa il nome della zona come chiave, che cambia con la lingua del client (issue #31), e gli uiMapID di Forever non sono ancora verificati nel client vero.

## Decisione

1. **`ctx.other`** (`Systems/Interlocutor.lua`) descrive il bersaglio, l'NPC dell'interazione in corso, oppure chi ci ha appena rivolto un'emote, sfidato a duello o invitato (passato come `extra.otherSubject`). Campi di gioco letti da Compat: `kind` (npc, player, creature), `race`, `class`, `faction`, `sex`, `level`, `classification`, `ctype`, `family`, `reaction`, `hostile`; poi `role`, `temperament`, `morality`, `goals`, `speech`, `actions`, `relation`.
2. **Stesso modello dei tratti di S5** (`Engine/Traits.lua`): temperamento e morale sono le definizioni del Character Soul; `goals`, `speech` e `role` sono tratti nuovi con `scope = "other"`. I tag delle frasi si scrivono `other.temperament:gruff`, `other.role:innkeeper`, `other.req:…`, `other.not:…` e pesano nel **fattore C** (`Engine:SetWeightHook("C", "other")`).
3. **Fonti in ordine di priorità**, unite con `Traits.Merge` (per ogni tratto vince la prima che lo dice):
   1. l'utente, nella lista delle relazioni di S6b (`rec.traits`, `rec.role` con `roleSource = "user"`; `Interlocutor:SetTrait`);
   2. il **profilo pubblico** Total RP 3 di un altro giocatore, con un **consenso a parte** (`interlocutor.trp3Others`, spento di base, `/au chi trp3`): solo razza e classe personalizzate (testo breve, senza codici) e i tratti psicologici, di cui si tengono temperamento e morale; mai note, storia o altri campi;
   3. il registro curato `Data/NPCs.lua` per `npcID` (condiviso con S8); per i personaggi canonici solo il ruolo;
   4. il ruolo ricavato **solo** da un'interazione affidabile: mercante, addestratore, maestro di volo, locandiere, quest, banca (`BANKFRAME_OPENED`). Il gossip da solo non dice il ruolo; un ruolo non si indovina mai. Il ruolo ricavato si conserva nella relazione dell'NPC (`roleSource = "auto"`), mai sopra una scelta dell'utente;
   5. una **tendenza debole** di classe (razza e fazione vuote nei dati di base): non entra in `ctx.other` né nelle condizioni, un `req:` non la vede, e sposta soltanto il peso delle frasi con il tag corrispondente (×1,15, mai sotto 1). Le tendenze non toccano mai la morale (`RegisterTendencies` la scarta);
   6. neutro: un tratto assente è «non so».
4. **Azioni recenti solo da eventi affidabili**, mai dal log di combattimento: dialogo, proposta e consegna di quest, mercante, addestratore, volo, locanda, banca, scambio (`TRADE_SHOW`), gruppo (`GROUP_ROSTER_UPDATE`), duello (`DUEL_REQUESTED`), invito (`PARTY_INVITE_REQUEST`), emote standard rivolte a noi (`CHAT_MSG_TEXT_EMOTE`: si guarda soltanto se il testo generato dal client contiene la parola «you», poi si scarta; le emote personalizzate non si leggono), e, leggendo il bersaglio, «ci attacca» (ostile e ci ha come bersaglio) e «combatte al nostro fianco». Le azioni hanno il momento in cui sono avvenute, restano solo nella sessione (al massimo 60 persone, 15 minuti) e non si salvano mai.
5. **Identità segreta** (`C_Secrets.ShouldUnitIdentityBeSecret`): `ctx.other = { secret = true }` e nient'altro.
6. **`ctx.place`** (`Systems/Place.lua`): zona e sottozona, `mapID` e continente (`C_Map`), tag e temi, atmosfera, territorio (`C_PvP.GetZonePVPInfo`, con i dati come ripiego), capitale e fazione che la governa (capitale amica o nemica), tipo, nome, id e difficoltà dell'istanza (`GetInstanceInfo`), scontro con un boss (`ENCOUNTER_START`/`END`), ruolo nel gruppo (`UnitGroupRolesAssigned`), stato del campo di battaglia (`UPDATE_BATTLEFIELD_STATUS`, `C_PvP.IsBattleground`).
7. **`Data/Places.lua`** usa come chiave il nome del client inglese e annota gli uiMapID e gli instanceID di Classic Era **come non verificati**. `Place:Lookup` cerca nell'ordine: uiMapID verificato (`verified = true`) > nome > uiMapID non verificato (ultimo ripiego, segnalato da `/au luogo`). La verifica si fa in gioco con `/au luogo`.
8. **Memoria dei luoghi per chiave stabile** (#31): la chiave è `"map:<uiMapID>"` quando il client lo dà, altrimenti il nome. Migrazione **versionata** interna (`memories.version` 2): un nome che i dati conoscono con un uiMapID verificato passa subito al numero (due nomi con lo stesso numero si uniscono); gli altri restano col nome e vengono **adottati** alla prima visita che porta l'uiMapID. Il nome resta come etichetta e segue la lingua del client.
9. **Regole**: sotto-tabelle `when = { other = {…}, place = {…} }` con gli stessi operatori del livello superiore (elenchi, `not`, `any`, `func`), `other.actions` con finestra (`"duel"`, `{ "duel", within = 30 }`), `place.tags` (uno dei tag), `place.encounter`/`lastEncounter` (vero/falso o nome). Il validatore controlla campi, tipi e valori. Segnaposto `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localizzati.
10. **Ritmo** (`NarrativeDirector:SetRhythm("place")`): incursione ×0,5 probabilità e ×1,6 pause, scontro con un boss ×0,25/×2, dungeon ×0,8/×1,25, campo di battaglia ×0,7/×1,2, arena ×0,4/×1,5, locanda o città nel mondo aperto ×1,25/×0,8; gli eventi eccezionali non diventano più rari. In campo di battaglia, arena e contro un boss il fattore C premia le frasi brevi (≤ 80 byte). Uno scontro con un boss è impegnativo anche senza la classificazione `worldboss` (`SetDemandCheck("encounter")`). Il registro segue `speech` e `role` dell'interlocutore (`StyleResolver:SetModifier("other")`).
11. **Eventi nuovi**: `npc_meet` (un NPC dal ruolo riconosciuto, modulo `npc`), `other_action` (un'azione verso di noi), `encounter_end` (fine di uno scontro con un boss); ognuno con una guardia nel motore, così non parla senza la persona o lo scontro, nemmeno a mano.

## Alternative considerate

- **Indicizzare i luoghi per uiMapID dei dati**: scartata finché i numeri non sono verificati; la chiave viene dal client, i dati servono solo a tag e temi.
- **Tendenze di razza e fazione** (per esempio un temperamento tipico): scartate nei dati di base. Restano possibili ai pacchetti, sempre deboli e mai sulla morale.
- **Leggere il testo di tutte le emote**: scartata; solo le emote standard e solo per sapere se sono rivolte a noi.
- **Salvare le azioni recenti**: scartata per privacy; il ruolo, che è un fatto sul mondo e non su una persona, si salva con la relazione dell'NPC.

## Conseguenze

- Le frasi possono chiedere un ruolo, un temperamento, una razza o una classe, un'azione recente, un tipo di istanza, un territorio o un tag del luogo; S7 le userà.
- `Data/Places.lua` e `Data/NPCs.lua` vanno verificati in gioco (`/au luogo`, `/au chi`); finché non lo sono, nulla si rompe: una voce sbagliata non scatta.
- La prova di `CHAT_MSG_TEXT_EMOTE` funziona solo con il client inglese (la parola «you»): con un client in un'altra lingua l'azione «emote» non si registra.
- La memoria dei luoghi di un personaggio esistente resta per nome fino alla prossima visita con uiMapID; l'utente non perde nulla.
