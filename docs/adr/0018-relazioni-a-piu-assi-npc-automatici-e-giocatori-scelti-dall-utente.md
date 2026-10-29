# 0018. Relazioni: assi indipendenti, etichette come dati, NPC automatici, giocatori scelti dall'utente

- Stato: accettata
- Data: 2026-10-29 (step S6b; GDD §7.4, §10, §14; ADR 0004, 0005, 0014, 0015, 0016, 0017)

## Contesto

Il narratore deve scrivere in modo diverso secondo il rapporto con la persona con cui il personaggio interagisce: tono formale con uno sconosciuto, caldo con un amico, teso con un rivale rispettato. Un'unica barra «amico ↔ nemico» non lo permette: un rivale rispettato ha *poca fiducia* e *molto rispetto*; un compagno d'armi può non essere «affezionato»; un nemico può essere temuto o no. Servono più dimensioni, indipendenti, e un modo di nominare le combinazioni che non stia scritto nel motore.

Gli NPC sono tanti e identificabili in modo affidabile (`npcID` dal GUID): un calcolo automatico è possibile e utile. I giocatori no: sono persone, hanno nomi che l'utente non ha scelto di registrare, e il progetto non salva mai testo di chat né dati di altri giocatori senza una scelta esplicita (ADR 0004, 0017; GDD §14). S6b, S6c (profilo dell'interlocutore) e S8 (NPC Alive) riusano questo lavoro.

## Decisione

1. **Sette assi indipendenti**, come scale del modello dei tratti di S5 (`Traits.Define{ kind = "scale", scope = "rel" }`): `familiarity` 0…100, `trust`, `respect`, `affection`, `loyalty` −100…100, `fear` 0…100 e `attraction` 0…100, **facoltativo e spento di base** (`relations.attraction`). Un asse spento non ha valore, non entra nel contesto e le regole che lo citano non scattano. Ogni asse ha fasce `low`/`mid`/`high` per i tag delle frasi. I valori mancanti valgono 0 e non si salvano.
2. **Etichette, disposizione, registro e incrementi sono dati**, in `Data/Relationships.lua` (IT ed EN), non nel motore: etichette con priorità e condizioni sugli assi (`sconosciuto`, `conoscente`, `indifferente`, `amico`, `compagno d'armi`, `rivale rispettato`, `nemico`, `inviso`, `diffidente`, `temuto`, `amato`), la **disposizione complessiva** −100…100 (media pesata di affetto, fiducia, rispetto e lealtà, più un calore per la familiarità; nove fasce da *Odiato* a *Legame profondo*), il registro per fasce di familiarità e le tabelle degli incrementi. `NS:RegisterRelationData` permette a un pacchetto di aggiungere etichette o assi. L'etichetta derivata è la prima regola, per priorità, che vale per tutti gli assi che cita.
3. **Etichetta scelta a mano**: ha la precedenza sulla derivata. Se è l'id (o il nome localizzato) di un'etichetta, le regole usano quella; se è un testo libero (al massimo 24 byte) si mostra al posto del nome e le regole usano la derivata.
4. **NPC automatici**: l'identità è l'`npcID` ricavato da `Creature-…-npcID-…`; se il GUID manca, è segreto, è di un'altra cosa o l'identità dell'unità è segreta (`C_Secrets`), **non si registra nulla**. Fonti (eventi verificati sul dump di Forever, registrati con `Compat:RegisterEvent` e normalizzati sul bus): dialogo (`GOSSIP_SHOW`, `QUEST_GREETING`), quest accettate e consegnate (NPC dell'ultimo dialogo, `QUEST_DETAIL`/`QUEST_COMPLETE`/`QUEST_PROGRESS` poi `QUEST_ACCEPTED`/`QUEST_TURNED_IN`), mercante (`MERCHANT_SHOW`, più `hooksecurefunc` su `BuyMerchantItem`, `RepairAllItems` e `C_Container.UseContainerItem` per acquisti, riparazioni e vendite), maestro di volo, addestratore, locandiere. Ogni fonte ha una riga di incrementi (`gain`, `decay`, `cap`): **rendimenti decrescenti** dentro la giornata (`gain × decay^n`), **tetto giornaliero** per asse e fonte, ammorbidimento vicino al massimo. La **familiarità decade lentamente** (dopo 14 giorni senza incontri, mezzo punto al giorno, mai sotto 3) e solo per gli NPC: gli altri assi no, e i giocatori non decadono.
5. **Giocatori: solo l'utente decide.** Il sistema **propone** (`R:Propose`): membri del gruppo, chi apre uno scambio, il bersaglio che ha un profilo Total RP 3 (solo presenza nel registro: nessun dato letto), chi ha ricevuto una risposta in privato (solo il nome). Le proposte vivono solo nella sessione; un giocatore entra in lista solo con `R:AddPlayer(nome, "user")` (clic su `+`, nome scritto, comando). `AddPlayer` rifiuta qualunque altra fonte, tranne `"auto"` quando l'opzione esplicita **«registra automaticamente»** (spenta di base) è accesa. Il tetto è 300 giocatori e 1.000 NPC (si perdono prima gli NPC meno familiari e vecchi, mai quelli con etichetta, nota o tag dell'utente).
6. **Privacy**: nessun contenuto di chat o di whisper è letto o salvato. L'unica sorgente di chat è `CHAT_MSG_WHISPER_INFORM`, di cui il normalizzatore legge **solo il nome del destinatario** (il testo non entra mai nell'envelope: lo prova un test). Nulla va in rete; il modulo Social (S10) non condividerà nulla senza un consenso esplicito. Note e tag sono testo dell'utente, mai usato nelle regole. I ricordi nel diario per un legame importante (`LivingMemory.Record{ kind = "relation" }`) contengono solo i token del tipo e dell'etichetta, mai nomi.
7. **Narratore**:
   - `NS:BuildContext` aggiunge `ctx.relation` (etichetta), `ctx.relationLabel`, `ctx.disposition`, `ctx.dispositionValue`, `ctx.rel` (assi), `ctx.relationKind`, `ctx.isKnown`, `ctx.relTraits` e `ctx.groupRelations` per la persona dell'interazione: l'NPC con cui si sta parlando (dialogo aperto), il bersaglio, oppure `extra.relationSubject`;
   - condizioni nel RuleEngine: `relation`, `disposition`, `relationKind`, `isKnown`, `<asse>Min`/`<asse>Max` per ogni asse, `familiarityMin` e `withRelation` (un compagno di gruppo con quell'etichetta, per la «battaglia al fianco»); senza persona note ogni condizione di relazione vale falsa (tranne `isKnown = false`); il validatore le conosce;
   - segnaposto `{relation}`;
   - **fattore `R`** (`Engine:SetWeightHook("R", "relations")`): i tag con ambito `rel.` (`rel.relation:friend`, `rel.trust:high`, `rel.req:relation:rival`, `rel.not:relation:enemy`) usano la grammatica dei tratti di S5: affinità morbida (×1,6 / ×0,6), requisito e divieto rigidi (0 esclude); senza persona, una frase che *afferma* un rapporto (`req:`) è esclusa e le altre restano neutre;
   - **registro dal formale all'intimo** (`StyleResolver:SetModifier "relations"`): fasce di familiarità e disposizione preferiscono registri diversi (dati);
   - evento `relation_npc` (incontro con un NPC conosciuto, priorità «richiamo di memoria», modulo `relations`) con guardia nel motore e obbligo di una condizione di relazione nel validatore (`relationWithoutRelation`).
8. **Dati e schema**: `AzerothUnspokenCharacterDB.relationships = { version, npcs = { [npcID] }, players = { ["Nome-Reame"] } }`, con versione propria; SavedVariables **schema 5** (migrazione 5 del personaggio); impostazioni `relations = { npcAuto, attraction, autoRegisterPlayers, proposePlayers }` e modulo `relations`. `Sanitize` riporta gli assi nei limiti, accorcia note, tag ed etichette senza spezzare l'UTF-8 e scarta le voci malformate; dati di una versione più nuova passano in sola lettura.
9. **Interfaccia**: `UI/RelationsFrame.lua` (`/au relazioni`, alias `relations`/`relationships`): tabella ordinabile e filtrabile (NPC/giocatori, etichetta, nome), persone proposte, dettaglio con cursori (`Widgets.Slider`, disegnati con texture), etichetta, nota e tag, eliminazione con conferma, opzioni, esportazione testuale nella finestra copiabile del diario; due schede nel diario (*Relazioni*, *Persone incontrate*).

## Alternative considerate

- **Una sola barra di affinità.** Non distingue il rivale rispettato dal nemico, né l'amico fidato dal conoscente simpatico; e non dà ai contenuti nulla di più fine delle tre fasce amico/neutro/nemico.
- **Etichette nel codice.** Ogni nuova etichetta o traduzione richiederebbe di toccare il motore; come dati si regolano e un pacchetto ne aggiunge.
- **Registrare in automatico i giocatori che si incontrano.** È l'opzione che il GDD sconsiglia: nessuno è stato scelto, e si accumulerebbe un elenco di persone senza il loro, né il suo, consenso. Si propone e basta; l'automatismo è un'opzione esplicita.
- **Leggere i profili Total RP 3 degli altri per proporli.** Si usa solo la presenza nel registro (`isUnitIDKnown`): nessun dato del profilo viene letto, e per leggerlo servirebbe un consenso a parte (S6c).
- **Decadimento di tutti gli assi.** Il rancore e la fiducia non si spengono col tempo; solo il «quanto ci si conosce» si appanna.
- **Riconoscere le vendite con un evento.** Non esiste un evento per la vendita; si osserva l'uso di un oggetto delle borse mentre il mercante è aperto, in modo prudente.

## Conseguenze

- Positive: il narratore può cambiare tono col rapporto; gli autori scrivono per etichetta, disposizione o singoli assi; S6c e S8 riusano il registro degli NPC e le relazioni; nessun giocatore è registrato senza che l'utente lo scelga.
- Negative o costi:
  - i numeri (incrementi, tetti, soglie delle etichette, pesi della disposizione, decadimento) sono ipotesi da regolare con le prove in gioco ([G1](../G1_checklist.md), passi 46–55);
  - **nulla è stato provato nel client vero**: gli eventi di gossip, quest e mercante, i tre `hooksecurefunc`, `UnitGUID("npc")` per l'identità, `UnitFullName` sui compagni di gruppo, la risposta di Total RP 3 e l'aspetto della finestra e dei cursori;
  - la vendita è un'euristica; un oggetto usato mentre il mercante è aperto può contarsi come vendita;
  - il quest-giver è «l'NPC dell'ultimo dialogo»: una quest accettata senza dialogo recente non va a nessuno;
  - le frasi di base sono 51: i contenuti estesi arrivano con S7.

## Riferimenti

- GDD §7.4, §10, §14.
- `Systems/Relationships.lua`, `Data/Relationships.lua`, `UI/RelationsFrame.lua`, `Engine/RuleEngine.lua` (condizioni), `Engine/Traits.lua` (ambito dei tratti), `Data/RegistryRelations.lua` (frasi).
- [ADR 0004](0004-total-rp-3-facoltativo-con-adattatore.md), [ADR 0005](0005-compat-valori-segreti-ed-eventi-difensivi.md), [ADR 0016](0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md), [ADR 0017](0017-living-memory-ricordi-selettivi-e-richiamo-onesto.md).
- `Tests/TestRelations.lua` e la sezione «persistenza delle relazioni» di `Tests/run_tests.py`.
