# 0008. Fine riga LF in tutti i file di testo

- Stato: accettata
- Data: 2026-10-29 (commit `79c23f3`, "Fine riga LF per tutti i file di testo")

## Contesto

Lo sviluppo avviene su Windows, dove git può convertire le fini riga in CRLF a seconda della configurazione locale (`core.autocrlf`) e di ogni strumento. Con più sessioni e più macchine in gioco, la stessa riga può risultare diversa a seconda di chi l'ha salvata, e le differenze (diff) si riempiono di modifiche che non sono modifiche. Il client di WoW legge indifferentemente LF e CRLF, ma gli script, i test e gli strumenti di revisione ci guadagnano da un'unica convenzione.

## Decisione

- **Tutti i file di testo del repository usano LF**, indipendentemente dal sistema. Lo impone `.gitattributes`:
  ```
  * text=auto eol=lf
  ```
- **Eccezione**: i file di comandi di Windows (`*.bat`, `*.cmd`) restano CRLF, perché Windows li richiede.
- **I file binari sono dichiarati** (`*.tga`, `*.blp`, `*.png`, `*.jpg`, `*.ogg`, `*.mp3`) per non essere toccati.
- Gli editor vanno impostati per salvare con LF (in WebStorm, nelle impostazioni dello stile del codice, separatore di riga "Unix e macOS"), senza BOM.

## Alternative considerate

- **CRLF ovunque.** Coerente con Windows, ma scomodo per strumenti Unix, per `git diff` su altri sistemi e per chi contribuisce da Linux o macOS.
- **Lasciare `core.autocrlf` a ciascuno.** È proprio ciò che genera diff rumorosi.
- **Convertire solo in `.editorconfig`.** Non basta: git deve normalizzare anche i file creati da strumenti che non lo leggono.

## Conseguenze

- Positive: diff puliti, nessuna sorpresa tra macchine, script e test che non devono gestire `\r`.
- Negative: su Windows git può avvisare che un file "sarà convertito" al prossimo commit; basta lasciar fare. I file generati da strumenti che scrivono CRLF vengono normalizzati al commit.
- Chi aggiunge un tipo di file nuovo che non deve essere toccato (ad esempio un'immagine di un formato non elencato) lo dichiara `binary` in `.gitattributes`.

## Riferimenti

- `.gitattributes`.
- [CONTRIBUTING.md](../../CONTRIBUTING.md).
