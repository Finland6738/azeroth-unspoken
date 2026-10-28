# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse.

Azeroth Unspoken è un addon per **World of Warcraft: Forever** (Interface `16001`). Contiene un motore narrativo locale e un database di frasi curate, in italiano e in inglese, che reagiscono a luoghi, eventi e alla storia del personaggio.

- **Offline.** Nessuna connessione a internet, nessun servizio esterno, nessuna IA online.
- **Rispettoso.** Le frasi compaiono in un narratore privato. Nulla va in chat pubblica senza un'azione del giocatore: il Chat Gateway offre solo proposte da confermare, modificare o scartare.
- **Espandibile.** Nuove frasi, lingue ed eventi si aggiungono con pacchetti locali.
- **Total RP 3.** Integrazione facoltativa: l'addon funziona anche senza.

## Struttura del repository

| Percorso | Contenuto |
|---|---|
| `AzerothUnspoken/` | l'addon |
| `AzerothUnspoken_Example/` | pacchetto di frasi di esempio |
| `Tests/` | test fuori dal gioco (Lua 5.1 tramite lupa) |
| `docs/` | specifica di progetto (GDD) |
| `archive/VociDiAzeroth*/` | prototipo originale, solo come riferimento |
| `ROADMAP.md` | milestone, step e stato di avanzamento |

## Installazione

Copia `AzerothUnspoken` (e, se vuoi, `AzerothUnspoken_Example`) in
`World of Warcraft\_forever_\Interface\AddOns\`, poi in gioco scrivi `/au`.
Al primo avvio compare una procedura guidata (saltabile); si riapre con `/au benvenuto`.
Per provare l'addon nel client vero segui [docs/G1_checklist.md](docs/G1_checklist.md).

## Test fuori dal gioco

```bash
python -m venv .venv
.venv/Scripts/python -m pip install lupa
.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken
```

## Sviluppo

Il progetto è pensato per JetBrains WebStorm con i plugin EmmyLua e WoW Lua Language Server.
`.luarc.json` imposta Lua 5.1, le variabili globali dell'addon e le cartelle da ignorare (`archive/`, `.venv/`, `Tests/`).
