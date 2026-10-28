# Valutazione: diario narrativo in Markdown ("Cronaca")

Data: 2026-10-29. Stato: **proposta, in attesa delle decisioni dell'utente**.

## Richiesta

Registrare tutto ciò che fa il personaggio, soprattutto le parti utili al roleplay:
- NPC con cui parla e cosa dicono;
- quest accettate e completate, con i loro testi;
- frasi del narratore di Azeroth Unspoken;
- cosa dicono gli altri giocatori;
- acquisti e vendite;
- con chi combatte, con quale esito;
- cosa raccoglie.

Il risultato deve essere un file Markdown per ogni giorno di gioco, organizzato in `<yyyy>\<mm>\<dd>\<giorno-wow>.md`, come materiale per scrivere novelle.

## Il vincolo che decide l'architettura

**Un addon di WoW non può scrivere file.** Non può creare `.md` né cartelle. L'unico modo che ha per salvare dati sono le SavedVariables, cioè tabelle Lua che il client scrive in:

```
_forever_\WTF\Account\<ACCOUNT>\<Reame>\<Personaggio>\SavedVariables\<Addon>.lua
```

e solo al logout, al `/reload` o alla disconnessione.

Serve quindi una soluzione in **due parti**:

1. **Un registratore dentro il gioco** (addon). Raccoglie gli eventi in forma strutturata e li conserva nelle SavedVariables.
2. **Un programma esterno, il compagno**, che gira sul PC e non in gioco.
   - Legge quel file e genera i `.md` nella struttura di cartelle richiesta.
   - Lavora offline, come l'addon.
   - Leggere le proprie SavedVariables è una pratica comune (lo fa ad esempio il WeakAuras Companion) e non tocca il client.

Il client offre anche due registri testuali propri, scritti su disco **in tempo reale**, che il compagno può usare come fonti aggiuntive:
- `LoggingChat(true)` → `Logs\WoWChatLog.txt`;
- `LoggingCombat(true)` → `Logs\WoWCombatLog.txt`.

Entrambe le funzioni sono presenti nel dump delle API di Forever.

## Cosa si può registrare (verificato sul dump delle API, build 70170)

| Contenuto | Come | Affidabilità |
|---|---|---|
| Testi di quest: dettaglio, obiettivi, avanzamento, ricompensa | `QUEST_DETAIL`, `QUEST_PROGRESS`, `QUEST_COMPLETE` con `GetQuestText`, `GetObjectiveText`, `GetProgressText`, `GetRewardText`; titolo da `C_QuestLog.GetTitleForQuestID` | alta |
| Quest accettate e consegnate | `QUEST_ACCEPTED`, `QUEST_TURNED_IN` (con XP e denaro) | alta |
| Dialoghi con gli NPC (gossip) e opzioni scelte | `GOSSIP_SHOW` più `C_GossipInfo.GetText` e `GetOptions`; NPC da `UnitName`/`UnitGUID("npc")` | alta |
| Frasi dette dagli NPC nel mondo | `CHAT_MSG_MONSTER_SAY`, `_YELL`, `_EMOTE`, `_WHISPER` | alta, salvo i valori segreti negli scontri |
| Frasi di Azeroth Unspoken (narratore, voce interiore, NPC simulati) | aggancio diretto al motore | totale |
| Chat dei giocatori (say, yell, emote, party, whisper...) | eventi `CHAT_MSG_*` | media: durante incontri e in istanza il client può rendere segreti testi o identità (`C_Secrets.ShouldUnitIdentityBeSecret`) |
| Acquisti, vendite, riparazioni | `MERCHANT_SHOW`/`CLOSED`, `C_MerchantFrame.GetItemInfo`, hook su `BuyMerchantItem`, differenza di `GetMoney` | media: le vendite si deducono |
| Bottino, raccolta, denaro, mestieri | `CHAT_MSG_LOOT`, `CHAT_MSG_MONEY`, `CHAT_MSG_SKILL` | alta |
| XP, livello, reputazione | `CHAT_MSG_COMBAT_XP_GAIN`, `PLAYER_LEVEL_UP`, `CHAT_MSG_COMBAT_FACTION_CHANGE` | alta |
| Viaggi: zone, voli, pietra del ritorno | `ZONE_CHANGED_*`, `TAXIMAP_OPENED`, incantesimi di viaggio | alta |
| **Combattimenti**: contro chi, quanto è durato, esito (vittoria, fuga, morte) | `PLAYER_REGEN_*`, bersaglio all'inizio, morte, XP e bottino subito dopo | media |
| Combattimenti in dettaglio: danni, colpi mortali | **non disponibile agli addon**: `CombatLogGetCurrentEventInfo` non esiste in Forever. Si può fare solo dal compagno, leggendo `WoWCombatLog.txt` | condizionata, fase 2 |
| Scambi tra giocatori, gruppi | `TRADE_*`, `GROUP_ROSTER_UPDATE` | media |

## "Giorno di gioco" e cartelle

In WoW l'orologio di gioco **coincide con l'ora del server del reame**: Azeroth non ha un ciclo di giorni accelerato. Il "giorno WoW" corrisponde quindi alla data del server (`C_DateAndTime.GetCurrentCalendarTime`), che per un reame europeo è vicina all'ora italiana.

Proposta:
- **Cartelle** `<yyyy>\<mm>\<dd>` dalla data del server. Una sessione che passa la mezzanotte del server si divide in due file.
- **Nome del file** `<giorno-wow>.md`, a scelta dell'utente:
  1. un titolo narrativo generato, ad esempio `Giorno 12 - Da Durotar alle Barrens.md`, con un contatore dei giorni giocati dal personaggio e le zone principali (**consigliato**);
  2. un calendario RP inventato, con nomi propri di mesi e giorni;
  3. il nome del personaggio, ad esempio `Thrallia.md`.
- La radice delle cartelle è per personaggio: `<cartella scelta>\<Reame>\<Personaggio>\<yyyy>\<mm>\<dd>\...`.

## Formato dei file

Pensato per essere letto e per diventare materia da romanzo. È compatibile con **Obsidian**, già installato sul PC:
- intestazione YAML con personaggio, reame, livello, zone, quest, persone incontrate e durata;
- cronologia con l'ora, divisa in **scene** che si chiudono con un cambio di zona, una pausa lunga o un combattimento;
- dialoghi come citazioni, con chi parla in grassetto. Le frasi del narratore sono in corsivo e marcate come testo dell'addon;
- tabelle per bottino, acquisti e combattimenti;
- collegamenti `[[Nome NPC]]` e `[[Nome giocatore]]`: in Obsidian ogni persona e NPC diventa una pagina con lo storico degli incontri, che si aggancia al sistema di relazioni dello step S6b;
- nota a mano del giocatore con `/au nota <testo>`, per segnare un momento importante o un'intenzione del personaggio.

## Stesso addon o addon nuovo?

**Raccomandazione: un addon separato nello stesso progetto, `AzerothUnspoken_Chronicle`, più il compagno in `tools/chronicle/`.**

Motivi:

1. **Le SavedVariables vengono separate.**
   - Il registro cresce di centinaia di KB o di qualche MB al giorno, mentre impostazioni e memoria narrativa restano piccole.
   - Ogni addon ha il suo file. Così un registro grande non rallenta né rischia di rovinare i dati del narratore, e si può svuotare senza toccarli.
2. **Il consenso e la privacy sono più chiari.**
   - Registrare la chat degli altri giocatori è un'attività diversa dal raccontare il proprio personaggio.
   - Un addon a parte si attiva o si disattiva con un gesto esplicito: è coerente con il GDD (§7.4, §14: "nessun salvataggio indiscriminato della chat").
3. **Il codice si riusa.**
   - Dipende da `AzerothUnspoken` e ne usa EventBus, Compat, contesto, testi del narratore, relazioni e diario.
   - Non duplica nulla e beneficia di ogni miglioramento del motore.
4. **Ognuno fa il suo lavoro.**
   - La *Living Memory* del GDD è selettiva: al massimo 500 ricordi significativi, che servono al narratore.
   - La Cronaca è un archivio completo per l'autore.
   - Tenerli separati evita che uno condizioni l'altro.

Un addon del tutto indipendente, con un suo motore, non conviene: duplicherebbe Compat, EventBus e la gestione dei valori segreti, e perderebbe i testi del narratore.

## Rischi e limiti, detti con chiarezza

- **Dati persi in caso di crash.**
  - Ciò che il client non ha ancora salvato, cioè quanto accaduto dall'ultimo `/reload` o logout, si perde se il gioco si chiude male.
  - Mitigazioni: il compagno può usare `WoWChatLog.txt`, scritto in tempo reale, come rete di sicurezza per le parti di chat; l'addon può proporre un `/reload` nei momenti tranquilli, ma non può forzarlo.
- **Peso delle SavedVariables.**
  - Si caricano in memoria a ogni accesso.
  - Serve una ritenzione configurabile, ad esempio gli ultimi 14 giorni. Il compagno esporta in modo idempotente e riconosce ciò che ha già scritto grazie a un id per ogni evento.
- **Valori segreti.** Durante gli incontri e in istanza alcuni testi e nomi possono essere nascosti all'addon. Vanno registrati come "non disponibile", senza tentativi di aggirare la restrizione.
- **Diritti sui testi.**
  - I testi di quest e NPC sono di Blizzard; le frasi dei giocatori appartengono ai giocatori.
  - Per un archivio personale va bene. **Per una novella pubblicata, i testi vanno rielaborati e non copiati, e per usare le parole di un altro giocatore serve il suo permesso.**
  - Il compagno offrirà un'opzione per rendere anonimi i nomi dei giocatori.
- **Privacy degli altri giocatori.** Impostazioni predefinite prudenti:
  - say, emote e gruppo registrati;
  - **whisper spenti**;
  - canali pubblici e commerciali spenti;
  - lista di persone da escludere;
  - nessun invio di dati in rete.

## Proposta di step

| Step | Contenuto | Modello / effort |
|---|---|---|
| C1 | `AzerothUnspoken_Chronicle`: registratore strutturato, categorie attivabili, ritenzione, `/au nota`, `/au cronaca` (stato, pausa), test fuori gioco | Sonnet · high |
| C2 | `tools/chronicle/` (Python, senza rete): lettura sicura delle SavedVariables, scene, Markdown con YAML, pagine Obsidian per persone e NPC, esportazione idempotente, opzione per anonimizzare; avvio a mano o dopo la chiusura del gioco | Sonnet · high |
| C3 (facoltativo) | Arricchimento da `WoWChatLog.txt` e `WoWCombatLog.txt`: esiti dettagliati degli scontri e recupero dopo un crash | Sonnet · medium |

Collocazione consigliata: **subito dopo la prova G1**.
- C1 e C2 dipendono solo da ciò che esiste già (EventBus, Compat, testi del narratore).
- I collegamenti alle relazioni si aggiungono quando arriva S6b.
- Così il diario raccoglie materiale fin dalle prime partite.
