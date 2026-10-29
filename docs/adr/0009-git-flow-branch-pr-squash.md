# 0009. Flusso git: un branch per step, pull request, squash merge

- Stato: accettata
- Data: 2026-10-29 (da [ROADMAP.md](../../ROADMAP.md), "Regole per ogni sessione di step" e "Decisioni già prese", n. 7 e 8)

## Contesto

Il progetto è sviluppato a step, uno alla volta, spesso da sessioni di lavoro diverse (anche parallele su cose diverse, come dati e revisione) e a volte senza che il proprietario sia davanti al computer. Servono una storia leggibile, la possibilità di rivedere ogni passo prima che entri in `main`, e regole che si possano seguire in modo automatico senza fare danni. Il repository è pubblico: `github.com/Finland6738/azeroth-unspoken`.

## Decisione

1. **`main` è sempre in condizioni funzionanti**: i test passano.
2. **Ogni step lavora in un branch proprio, partito da `main` aggiornato.**
   - Step della roadmap: `step/sN-nome` (esempio: `step/s2-narratore`).
   - Attività trasversali e correzioni: un prefisso che dice il tipo, ad esempio `docs/…`, `fix/…`, `review/…` (le sessioni automatiche possono usare un prefisso proprio).
3. **Commit piccoli e leggibili, con messaggi in italiano**, che dicono *che cosa* e *perché*.
4. **A step finito, con i test superati**: `git push -u origin <branch>`, poi `gh pr create --base main` con titolo e descrizione che riassumono lo step **e ciò che non è stato verificato** (in particolare tutto ciò che richiede il client vero); poi `gh pr merge --squash --delete-branch`.
5. **Merge squash**: ogni PR diventa un solo commit su `main`; la storia di `main` è una riga per step.
6. **Dopo il merge**, l'installazione in `AddOns` si aggiorna con i file di `main`.
7. **Mai** `--force` su `main`, mai riscrivere la storia già pubblicata, mai saltare gli hook (`--no-verify`).
8. **Conflitti**: si allinea il branch a `main`, si risolvono, si ripetono i test, poi si fa il merge. Se non si riesce, **la PR resta aperta** e il problema si spiega nel resoconto.
9. **Le issue** (etichette `bug`, `enhancement`, `docs`, `in-game`, `content`, `good first issue`, `priority:high|medium|low`) riportano file e riga, comportamento atteso e osservato, e come riprodurre. Una PR che risolve un'issue la chiude con `Closes #N`. Chi trova un problema fuori dal proprio step **apre un'issue** invece di allargare lo step.
10. **Automazione autorizzata**: il proprietario ha autorizzato commit, push, PR e merge automatici perché il PC non è presidiato. Le scelte che spettano al proprietario, come la licenza, non si prendono in autonomia: si apre un'issue con le opzioni ([#2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

## Alternative considerate

- **Commit diretti su `main`.** Nessuna revisione, nessuna descrizione delle cose non verificate. Scartata.
- **Merge commit o rebase.** Mantengono ogni commit intermedio, ma in un progetto con molte sessioni la storia di `main` diventa lunga e rumorosa. Lo squash tiene un commit per PR; i dettagli restano nella PR.
- **Git flow completo** (develop, release, hotfix). Eccessivo per un progetto con un solo proprietario e rilascio non ancora iniziato.
- **Più step nello stesso branch.** Gli step toccano gli stessi file: tenerli separati evita conflitti e permette di annullarne uno solo.

## Conseguenze

- Positive: una PR per step con il suo resoconto onesto; `main` leggibile; le cose non verificate sono dichiarate.
- Negative: lo squash perde i commit intermedi (restano nella PR); serve disciplina per non lasciare branch aperti a lungo.
- **Non c'è ancora integrazione continua**: i test si eseguono a mano prima della PR (vedi [ADR 0007](0007-offline-tests-with-lupa-and-mock.md)). Aggiungerla è un possibile miglioramento.
- Se `main` è già estratto in un altro worktree, `gh pr merge` può non riuscire a fare il checkout locale: il merge su GitHub è comunque avvenuto, e va verificato lì.

## Riferimenti

- [ROADMAP.md](../../ROADMAP.md), [CONTRIBUTING.md](../../CONTRIBUTING.md).
