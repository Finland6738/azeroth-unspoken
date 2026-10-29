# Contribuire ad Azeroth Unspoken

Grazie dell'interesse. Questo documento spiega come segnalare problemi, scrivere frasi e pacchetti, modificare il codice e aprire una pull request.

> **Licenza da definire.** Il progetto non ha ancora una licenza ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)). Finché non è scelta, apri prima un'issue per parlarne se vuoi proporre un contributo di una certa dimensione.

## Indice

1. [Prima di cominciare](#1-prima-di-cominciare)
2. [Segnalare un problema o proporre un'idea](#2-segnalare-un-problema-o-proporre-unidea)
3. [Scrivere frasi](#3-scrivere-frasi)
4. [Scrivere un pacchetto](#4-scrivere-un-pacchetto)
5. [Modificare il codice](#5-modificare-il-codice)
6. [Test](#6-test)
7. [Stile Lua ed EmmyLua](#7-stile-lua-ed-emmylua)
8. [Git, issue e pull request](#8-git-issue-e-pull-request)
9. [Cosa non si accetta](#9-cosa-non-si-accetta)

## 1. Prima di cominciare

Leggi, nell'ordine:

1. [README.md](README.md): che cosa fa l'addon e che cosa no.
2. [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md): moduli, flusso di un evento, punti di estensione.
3. [docs/adr/README.md](docs/adr/README.md): le decisioni già prese e il loro perché. Non vanno aggirate: se pensi che una sia sbagliata, apri un'issue.
4. [ROADMAP.md](ROADMAP.md): lo stato, gli step e le regole di lavoro.
5. [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): la specifica di prodotto (il prodotto lì si chiama ancora "Immersion Director"; dove GDD e roadmap non coincidono, vale la roadmap).

Tre principi non negoziabili:

- **Tutto offline**, senza IA ([ADR 0002](docs/adr/0002-fully-offline-no-ai.md)).
- **Nulla in chat senza un'azione del giocatore** ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md)).
- **Il motore non contiene testi** ([ADR 0001](docs/adr/0001-engine-and-narrative-database-separated.md)).

## 2. Segnalare un problema o proporre un'idea

Apri un'[issue](https://github.com/Finland6738/azeroth-unspoken/issues) in italiano o in inglese. **Prima cerca** se esiste già.

**Etichette**: `bug`, `enhancement`, `docs`, `in-game` (da verificare nel client), `content` (frasi), `good first issue`, e una priorità `priority:high`, `priority:medium` o `priority:low`.

**Un buon rapporto** contiene:

- il **file e la riga**, oppure la funzione;
- il **comportamento atteso**;
- il **comportamento osservato**;
- **come riprodurlo**: un test fuori dal gioco, oppure i passi in gioco;
- per i problemi in gioco: l'output di `/au debug full`, la build del client e gli eventuali errori (si vedono con `/console scriptErrors 1`).

Una sessione di lavoro o una persona che trova un problema **fuori dallo step in corso apre un'issue** invece di allargare lo step.

## 3. Scrivere frasi

Le frasi sono il cuore del progetto. Sono **intere, originali e curate**: non si compongono frammenti a caso.

### Formato

Lo schema dati v2 separa la **regola** (quando e chi parla) dai **testi** (le varianti, per lingua). Una frase è una regola più i suoi testi:

```lua
AzerothUnspoken:RegisterPack({
    id = "nani",
    languages = { "itIT", "enUS" },
    registry = {
        ["nani.battle.01"] = {
            event = "battle",               -- o più eventi: { "battle", "threat" }
            speaker = "character",          -- narrator | inner | character | npc
            styles = { "epic" },            -- registri; il primo è quello principale
            depth = { "literary" },         -- profondità per cui è scritta (assente = tutte)
            weight = 1,                     -- peso relativo (facoltativo)
            cooldown = 600,                 -- secondi prima che possa tornare (facoltativo)
            conditions = { race = "Dwarf" },-- condizioni (facoltative)
        },
    },
    texts = {
        itIT = { ["nani.battle.01"] = { "Le montagne non arretrano!", "Né un passo indietro." } },
        enUS = { ["nani.battle.01"] = { "The mountains do not yield!", "Not one step back." } },
    },
})
```

Tutti i dettagli (eventi, condizioni, tag di personalità, memoria, relazioni, interlocutore e luogo, dialoghi, archi, segnaposto, cornici, vocabolario) sono in [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md), i cui esempi sono provati dai test: segui sempre la versione di `main`. Un pacchetto in un addon **separato** chiama le API da `AzerothUnspoken:`, non da `NS:`.

### Convenzioni

- **`id`**: `pacchetto.evento.NN` (ad esempio `nani.battle.01`); le emote possono usare `.e.NN`. L'id esprime un'**intenzione**, uguale in tutte le lingue. Gli id sono unici in tutto l'addon: un duplicato viene ignorato con un avviso. Gli id servono alla memoria e alle traduzioni: **non cambiarli** dopo la pubblicazione.
- **Entrambe le lingue e più varianti**: ogni intenzione va scritta almeno in italiano (`itIT`) e in inglese (`enUS`), e per le scene comuni con **due o più varianti** per lingua (stesso significato e stesso registro, parole e ritmo diversi: il motore non ripete di fila l'ultima). Le lingue non si mescolano mai: una frase compare solo nelle lingue in cui esiste. `/au valida` segnala le lingue mancanti.
- **Emote** (voce `narrator`, forma emote): iniziano con la minuscola e **senza il nome**; il gioco antepone quello del personaggio («*Brann* snuda l'arma…»).
- **Profondità**: `natural`, `literary`, `elevated`. Per i momenti chiave scrivi una variante per ciascuna (`{ "testo", depth = "elevated" }`); una frase senza `depth` vale per tutte e non è mai penalizzata.
- **Segnaposto** `{player}`, `{target}`, `{spell}`, `{zone}`, `{subzone}`, `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}`, genere `{g:pronto|pronta}`, vocabolario `{cry}`. Se un dato manca, la frase viene scartata: non serve gestirlo.
- **Voci** (`speaker`): `narrator` descrive l'atmosfera e non attribuisce decisioni al personaggio; `inner` sono pensieri privati; `character` è la voce pubblica, più breve; `npc` è un contenuto simulato. Le voci `inner` e `npc` non vanno mai in chat ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md)).
- **Registri** (`styles`): `ancient`, `epic`, `tragic`, `intimate`, `everyday`, `ironic`, `ceremonial` (GDD §5.1). Il motore penalizza due frasi di fila con lo stesso registro principale (`lastTone`) e il StyleResolver preferisce quelli adatti all'evento, alla zona, alla voce e alla profondità, senza mai escludere: servono più registri per evento. (I «toni» `eroico`, `solenne`, `ironico`… sono del formato del prototipo e si convertono in registri in caricamento.)
- **Personalità**: i `tags` con i due punti legano la frase ai tratti del personaggio: `temperament:stoic` (affinità morbida), `req:faith:devout` (esce solo se il profilo lo dice), `not:…`, `topic:death` (argomento che il giocatore può escludere). Una frase che **afferma** qualcosa del personaggio usa `req:`; una che lo dice con un tono usa l'affinità morbida; una che tocca sangue, morte, famiglia o religione porta `topic:`.
- **Condizioni** (`conditions`, alias `when`): più condizioni = frase più specifica = peso maggiore. Usa le condizioni per ciò che rende la frase *giusta* in quel momento, non per forzarla. Quelle di memoria, relazione, interlocutore e luogo (`firstVisit`, `relation`, `other = {…}`, `place = {…}`) valgono solo se il dato esiste davvero: una frase che cita un ricordo o un rapporto non deve poter uscire senza.
- **Lunghezza**: le frasi pubbliche vanno tenute brevi. Il tetto tecnico di un invio in chat è di 255 byte (le lettere accentate ne occupano 2); il Chat Gateway taglia oltre, con «...».

### Regole di qualità (GDD §5.4)

Ogni frase deve rispettarle. Sono la lista di controllo della revisione.

1. **Testi originali**, coerenti con l'ambientazione; **nessuna citazione riconoscibile copiata** (dal gioco, dai libri, da altri addon o da altri autori). Non copiare testi di altri progetti.
2. **Separare la lore verificata dall'invenzione atmosferica**: niente affermazioni false su eventi canonici, né lore inventata presentata come canone.
3. **Varia struttura e lunghezza**; non accumulare sempre «ombra», «destino», «sangue», «antico». Prima di aggiungere una frase rileggi quelle dello stesso evento.
4. **Accessibili senza conoscenze enciclopediche**, ma con una ricompensa per chi conosce la lore.
5. **Nessuna decisione morale imposta da razza, fazione o classe.** Una razza o una classe può suggerire un'*inclinazione*, mai uno stereotipo obbligato.
6. **Ogni testo pubblico va valutato per rischio di spam e di lunghezza** del canale.
7. **Le varianti italiana e inglese preservano *intento* e *registro***: non sono calchi meccanici.
8. **Il registro giusto per il momento** (GDD §5.1): un venditore non declama come un antico re; un momento insignificante non diventa ogni volta un'apocalisse.
9. **Il personaggio non decide al posto del giocatore** nella voce del narratore (GDD §5.3).

Prima di aprire la PR, rileggi ad alta voce in entrambe le lingue.

## 4. Scrivere un pacchetto

Un pacchetto è un addon separato che aggiunge frasi, cornici, vocabolario, traduzioni, lingue o eventi, senza toccare il motore.

1. Copia `AzerothUnspoken_Example` in una cartella nuova (ad esempio `AzerothUnspoken_Nani`).
2. Rinomina il file `.toc` con lo stesso nome della cartella e lascia `## Dependencies: AzerothUnspoken`.
3. Scrivi le regole e i testi con `AzerothUnspoken:RegisterPack({ id = "nani", name = "…", languages = { "itIT", "enUS" }, registry = { … }, texts = { itIT = { … }, enUS = { … } } })`. L'`id` del pacchetto è unico. In un addon separato chiama sempre `AzerothUnspoken:` (il `NS` della prima riga del file è il namespace del tuo pacchetto).
4. Controlla con `/au valida nani` (id doppi, lingue mancanti, segnaposto, condizioni, lunghezze, tag) e prova nel client con `/au pacchetti`, `/au info` e `/au prova <evento>`.

Oltre alle frasi un pacchetto può aggiungere eventi, registri, condizioni, luoghi, NPC, **dialoghi ambientali** e **archi narrativi**. Per i copioni usa una chiave nuova (`npc:<npcID>` con `extends`): una chiave già esistente **sostituisce** il copione di base ([#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)).

La guida completa è [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md); se scrivi o cambi un esempio, marcalo `<!-- prova -->` e `Tests/check_docs.py` lo carica come un pacchetto esterno. Un pacchetto deve rispettare le stesse regole di qualità di cui sopra e non deve usare la rete né inviare dati ([ADR 0002](docs/adr/0002-fully-offline-no-ai.md)).

## 5. Modificare il codice

1. **Lavora su un'issue** o aprine una. Per cambiamenti grandi, parlane prima.
2. **Rispetta l'architettura**: [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md), sezione "Per chi scrive un nuovo sistema nell'addon".
3. **Ogni API del client passa da Compat** e deve **degradare con eleganza** se manca o è limitata ([ADR 0005](docs/adr/0005-compat-secret-values-and-defensive-events.md)). Prima di usare una funzione o un evento nuovo, **controllalo nel dump delle API di Forever** ([ADR 0010](docs/adr/0010-forever-api-dump-as-reference.md)).
4. **Nessuna decisione basata su valori segreti** e nessun uso del log di combattimento.
5. **Per parlare, passa dal Director** (se è spontaneo) **e dal Chat Gateway** (sempre). Nessun invio in chat da timer o da eventi.
6. **Dati salvati nuovi**: predefiniti in `Config.defaults` o `Config.characterDefaults`, regole in `Config.rules`, **migrazione** in `Config.migrations` (e `SCHEMA_VERSION` +1) quando cambia la forma, una **versione interna** del modulo se i dati sono complessi, `Sanitize` per i dati rovinati, sola lettura per quelli di una versione più nuova, e i test ([ADR 0006](docs/adr/0006-savedvariables-and-schema-versions.md)). Mai contenuti di chat.
   Per influire sul peso, sul ritmo o sui registri senza toccare il Director usa gli **agganci** (`SetWeightHook`, `SetRhythm`, `SetEventGuard`, `RegisterTab`…): vedi «Come i sistemi si agganciano al motore» in [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md).
7. **Non modificare i file che un altro step sta toccando** (vedi la roadmap): se hai dubbi, apri un'issue.
8. **Funzioni che richiedono il client vero**: se aggiungi comportamenti da verificare in gioco, aggiorna [docs/G1_checklist.md](docs/G1_checklist.md) e dichiara nella PR che cosa non hai potuto verificare.
9. **Aggiorna la documentazione** nella stessa PR: `README.md` **e** `README.en.md` (comandi, numeri, privacy, stato), `PACK_FORMAT.md` se cambia l'API dei pacchetti, `docs/ARCHITECTURE.md` e un'ADR se la decisione è nuova (e l'indice delle ADR), e il [CHANGELOG](CHANGELOG.md) nella sezione «Non rilasciato», **nel gruppo del tuo step** (non in fondo).

## 6. Test

I test girano fuori dal gioco con lupa (Lua 5.1) e un client simulato ([ADR 0007](docs/adr/0007-offline-tests-with-lupa-and-mock.md)). Dalla radice del progetto:

```bash
python -m venv .venv
.venv/Scripts/python -m pip install lupa
.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken
```

(Su Linux e macOS: `.venv/bin/python`.) Il comando esce con codice 1 se un controllo fallisce. **Tutti i controlli devono passare prima di una PR.**

Come aggiungere test:

- Un file `Tests/TestNome.lua` riceve `NS` come argomento (`local NS = ...`) e usa `T.run("descrizione", function() … end)`, `T.eq(valore, atteso, "messaggio")` e `T.ok(condizione, "messaggio")`. Ogni file gira in un **runtime nuovo**.
- **Registra il file** nell'elenco di `Tests/run_tests.py` (la tupla con `TestCompat`, `TestConfig`…).
- Se usi un'API del client nuova, aggiungila al mock `Tests/MockWoWAPI.lua`, e prova anche il caso "API mancante" e "valore segreto" (`MakeSecret()`).
- `Tests/check_api.py` confronta le funzioni e gli eventi usati con il dump delle API di Forever (si salta con un avviso se il dump non c'è); dichiara le sorgenti di eventi nuove con **stringhe letterali**, altrimenti non le vede.
- `Tests/check_docs.py` carica gli esempi della guida ai pacchetti come pacchetti esterni e controlla che **tutti i link relativi** dei file Markdown esistano (àncore comprese). Un link rotto fa fallire i test.
- I conteggi di frasi e di pacchetti stanno in `Tests/run_tests.py` e in `Tests/TestContent.lua`: se aggiungi contenuti, aggiornali e riporta i numeri nel README e nel CHANGELOG.
- Un test fuori dal gioco **non prova il client**: dichiara nella PR che cosa resta da verificare in gioco ([G1](docs/G1_checklist.md)).

## 7. Stile Lua ed EmmyLua

Il codice Lua è per **Lua 5.1**, come il client. Si segue lo stile del codice esistente:

- **Indentazione con tab**; fine riga **LF** ([ADR 0008](docs/adr/0008-lf-line-endings.md)); file in UTF-8 senza BOM.
- **Commenti in italiano**, brevi, che spiegano il *perché* più che il *che cosa*.
- Ogni file comincia con `local ADDON, NS = ...` e **non crea variabili globali** oltre a quelle dichiarate (SavedVariables, `SLASH_*`, `BINDING_*`, funzioni dei tasti, la API pubblica `AzerothUnspoken`). **Ogni nuova globale va aggiunta a `diagnostics.globals` in `.luarc.json`.**
- I moduli si registrano con `NS:RegisterModule("nome")` e si inizializzano in `OnInit`.
- Gli errori si isolano con `NS.Diagnostics:Guard(...)`; le API del client si chiamano con `Compat.Query`/`SafeCall`.
- **Non usare `%s`, `%l`, `%a` o `%w`** nei pattern applicati a testo UTF-8: con alcune impostazioni locali spezzano le lettere accentate. Usa classi esplicite (ad esempio `[ \t\r\n]`).
- Nei `.toc` i percorsi usano la barra rovesciata (`Core\Compat.lua`).
- Non duplicare le API di WoW nel progetto: le fornisce il plugin del language server.

**EmmyLua.** Annota le API pubbliche, i moduli e le strutture dati (contesto, frase, configurazione, relazione) con `---@class`, `---@field`, `---@param`, `---@return`, così l'IDE completa e controlla i tipi. Ambiente consigliato: JetBrains WebStorm con i plugin **EmmyLua** e **WoW Lua Language Server**; `.luarc.json` imposta Lua 5.1, le globali e le cartelle da ignorare. Per le definizioni delle API di Forever serve il clone del dump accanto al progetto (vedi [docs/REFERENCES.md](docs/REFERENCES.md)).

**Python.** Gli strumenti in `Tests/` sono Python 3, eseguiti con `-I -X utf8`.

## 8. Git, issue e pull request

Il flusso completo è nell'[ADR 0009](docs/adr/0009-git-flow-branch-pr-squash.md). In breve:

1. **Branch** partito da `main` aggiornato: `step/sN-nome` per gli step, `docs/…` o `fix/…` per il resto.
2. **Commit piccoli, con messaggi in italiano** che dicono che cosa e perché.
3. **Test superati** prima di aprire la PR.
4. **Pull request verso `main`**, con titolo e descrizione che riassumono la modifica e **ciò che non è stato verificato** (in particolare tutto ciò che richiede il client vero).
5. Se risolve un'issue, scrivi `Closes #N` nella descrizione.
6. **Merge squash**, con eliminazione del branch.
7. **Mai** `--force` su `main`, mai riscrivere la storia pubblicata, mai saltare gli hook.
8. Se `main` cambia mentre lavori: allinea il branch, risolvi i conflitti, ripeti i test.

I file di testo hanno **fine riga LF**: `.gitattributes` lo impone.

## 9. Cosa non si accetta

- Qualunque **accesso alla rete**, telemetria o dipendenza esterna a runtime.
- **Esecuzione di codice ricevuto** da altri giocatori (`loadstring` e simili).
- Codice che **aggira l'azione del giocatore** per scrivere in chat, o che prova ad aggirare funzioni protette, azioni sicure o il sistema di restrizioni del client.
- **Salvare contenuti di chat** o dati personali di altri giocatori senza una scelta esplicita dell'utente.
- **Copiare** testi dal gioco o da altri progetti, o **file da repository senza licenza dichiarata** (come il dump di Atraeau/WoW-Addons: si consulta, non si copia).
- Frasi che violano le regole di qualità della sezione 3.
- Modifiche che rompono i test o che mescolano più step.

Grazie per l'aiuto.
