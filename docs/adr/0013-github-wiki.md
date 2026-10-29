# 0013. La wiki di GitHub: `docs/` resta la fonte, la wiki non si usa per ora

- Stato: accettata
- Data: 2026-10-29

## Contesto

Il compito D1 chiedeva di valutare la wiki di GitHub come luogo per le guide agli utenti (installazione, comandi, domande frequenti, come scrivere pacchetti). La documentazione del progetto vive già in `docs/`, nel README e in `CONTRIBUTING.md`, tutta versionata e rivista nelle PR.

Dati di fatto verificati il 2026-10-29:

- la funzione Wiki è **attiva** sul repository (è l'impostazione predefinita di GitHub) ma **vuota**: l'indirizzo `…/azeroth-unspoken.wiki.git` risponde "Repository not found";
- una wiki di GitHub è un **repository git a parte**, che esiste solo dopo che si crea la prima pagina dall'interfaccia web: non si può avviare da un comando o da uno script;
- le pagine della wiki non passano dalle pull request del repository principale: chi ha il permesso scrive direttamente, senza revisione né legame con una versione dell'addon.

## Decisione

1. **La fonte autorevole della documentazione è `docs/` (più `README.md`, `README.en.md`, `CONTRIBUTING.md`, `CHANGELOG.md`).** Sta nel repository, è versionata insieme al codice, passa dalle PR e si legge bene su GitHub con i link relativi.
2. **Per ora non si usa la wiki.** Non si pubblicano pagine e non si crea `tools/sync_wiki.py`.
3. **Se in futuro servirà**, la wiki sarà solo un **riflesso** generato dai file di `docs/` da uno script (`tools/sync_wiki.py`), con una nota "generata automaticamente: non modificare qui" in ogni pagina e la modifica ristretta ai collaboratori. Nessun contenuto nascerà solo nella wiki.
4. **Quando riconsiderare**: allo step S12 (manuale, privacy, troubleshooting, v1.0) o quando comparirà una platea di giocatori non tecnici che non legge il repository. A quel punto: pagine per utenti (installazione, comandi, FAQ, scrivere pacchetti) generate dalle stesse sorgenti.
5. **Stato attuale della funzione Wiki**: il tab "Wiki" del repository è visibile ma vuoto, per l'impostazione predefinita di GitHub. Finché non si usa, il proprietario può disattivarlo: `gh repo edit --enable-wiki=false`. È un'impostazione del repository e non è stata cambiata da questa attività.

## Alternative considerate

- **Attivare la wiki e usarla come documentazione principale.** Comoda da modificare dal browser, ma separata dal codice, senza revisione e senza versioni: la documentazione e l'addon potrebbero divergere. Scartata.
- **Attivare la wiki come riflesso subito, con lo script di sincronizzazione.** Possibile, ma:
  - la wiki non si può creare da script: serve prima una pagina creata a mano sul sito, quindi un passaggio manuale che un'attività automatica non può fare;
  - il progetto è alla 0.1.0 e il formato dei pacchetti cambierà con lo step S3: guide per utenti scritte ora andrebbero riscritte quasi subito;
  - raddoppia la superficie da mantenere (italiano e inglese, due posti) per un pubblico che oggi legge il README.
  Rinviata, non scartata: la regola al punto 3 resta valida.
- **GitHub Pages** (un sito generato da `docs/`). Un'opzione migliore della wiki se servirà un sito vero; non è necessaria adesso.

## Conseguenze

- Positive: una sola fonte, sempre allineata al codice e rivista; nessun costo di sincronizzazione.
- Negative: manca per ora una vetrina per utenti non tecnici; la navigazione di `docs/` su GitHub è meno elegante di una wiki con barra laterale, e le guide per utenti sono nel README e in `docs/`, in italiano per la maggior parte.
- Il tab Wiki vuoto resta visibile finché il proprietario non lo disattiva o non lo usa.

## Riferimenti

- [docs/README.md](../README.md) (indice della documentazione), [CONTRIBUTING.md](../../CONTRIBUTING.md).
- ROADMAP: attività D1, step S12.
