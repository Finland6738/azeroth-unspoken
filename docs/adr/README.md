# Decisioni di progetto (ADR)

Qui sono registrate le decisioni di architettura e di metodo di Azeroth Unspoken, una per file, nel formato [MADR](https://adr.github.io/madr/) in italiano: **contesto**, **decisione**, **alternative considerate**, **conseguenze**.

Servono a ricordare *perché* il progetto è fatto in un certo modo, non solo *come*. Quando una decisione cambia non si riscrive: se ne scrive una nuova che sostituisce la vecchia, e la vecchia passa allo stato "sostituita".

## Indice

| N. | Decisione | Stato |
|---|---|---|
| [0001](0001-motore-e-database-narrativo-separati.md) | Motore e database narrativo separati, con frasi curate e non generate | accettata |
| [0002](0002-tutto-offline-senza-ia.md) | Tutto offline, senza intelligenza artificiale | accettata |
| [0003](0003-narratore-privato-e-chat-gateway.md) | Narratore privato e Chat Gateway: nessun invio senza un'azione del giocatore | accettata |
| [0004](0004-total-rp-3-facoltativo-con-adattatore.md) | Total RP 3 facoltativo, tramite un adattatore | accettata |
| [0005](0005-compat-valori-segreti-ed-eventi-difensivi.md) | Compat, valori segreti e registrazione difensiva degli eventi | accettata |
| [0006](0006-savedvariables-e-versioni-dello-schema.md) | SavedVariables e versioni dello schema | accettata |
| [0007](0007-test-fuori-gioco-con-lupa-e-mock.md) | Test fuori dal gioco con lupa e un client simulato | accettata |
| [0008](0008-fine-riga-lf.md) | Fine riga LF in tutti i file di testo | accettata |
| [0009](0009-flusso-git-branch-pr-squash.md) | Flusso git: un branch per step, pull request, squash merge | accettata |
| [0010](0010-dump-api-di-forever-come-riferimento.md) | Il dump delle API di Forever come riferimento, mai copiato | accettata |
| [0011](0011-nome-azeroth-unspoken.md) | Il nome Azeroth Unspoken | accettata |
| [0012](0012-lingue-scelte-dall-utente.md) | Lingue scelte dall'utente, indipendenti dal client | accettata |
| [0013](0013-wiki-github.md) | La wiki di GitHub: `docs/` resta la fonte, la wiki non si usa per ora | accettata |
| [0014](0014-bus-di-eventi-normalizzati-e-moduli-isolati.md) | Bus di eventi normalizzati, moduli isolati e Director come punto di aggancio | accettata |

## Decisioni in sospeso

- **Licenza** di codice e testi: [issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2). Quando sarà presa, diventerà l'ADR 0015.

## Come scriverne una nuova

1. Copia lo scheletro qui sotto in `docs/adr/NNNN-titolo-breve.md`, con il numero successivo.
2. Scrivila **prima o insieme** al cambiamento che giustifica, non dopo mesi.
3. Aggiungila all'indice di questo file.
4. Se sostituisce una decisione precedente, cambia lo stato di quella in "sostituita da NNNN" e indicalo nella nuova.

```markdown
# NNNN. Titolo: la decisione in una frase

- Stato: proposta | accettata | sostituita da NNNN
- Data: AAAA-MM-GG

## Contesto

Il problema, i vincoli e le forze in gioco.

## Decisione

Che cosa si fa, in forma attiva.

## Alternative considerate

- **Alternativa A.** Perché no.
- **Alternativa B.** Perché no.

## Conseguenze

- Positive: …
- Negative o costi: …

## Riferimenti

File, issue, sezioni del GDD, altre ADR.
```

Le ADR descrivono il codice **com'è su `main`** e ciò che la roadmap prevede. Ciò che non è ancora stato provato nel client vero è indicato come tale.
