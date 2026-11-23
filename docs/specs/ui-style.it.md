# Stile dell'interfaccia: il look NEBULA in Azeroth Unspoken

> Versione italiana. Il gemello inglese è [ui-style.md](ui-style.md); quando differiscono, si correggono entrambi.
>
> Specifica del passo **UI-0** del piano UI-ECO. Decisione: [ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md) (in inglese).
> Issue di tracciamento: [#284](https://github.com/Finland6738/azeroth-unspoken/issues/284). Passi: [ROADMAP.md](../../ROADMAP.md), sezione "UI-ECO".

## 1. La fonte, e cos'è questo file

Il look di Azeroth Unspoken è il look di Finland Dragon Credit Points (FDCP), l'addon gemello della community NEBULA.
La specifica di FDCP è la fonte e **non si copia qui**:

- nel repository fratello, clonato accanto a questo: `../finland-dragon-credit-points/docs/specs/ui-style.md` (in italiano);
- su GitHub: [`docs/specs/ui-style.md` di FDCP](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/specs/ui-style.md), con la sua decisione nell'[ADR 0004](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/adr/0004-interface-style-of-the-community-site.md).

**Si legge prima la specifica di FDCP.** I suoi numeri di sezione sono scritti qui "FDCP §n". Tutto ciò che contiene vale per questo addon,
salvo dove questo file dice altro. Qui ci sono solo le **differenze**: dove Azeroth Unspoken (AU) fa un'altra cosa, e che cosa gli è proprio. Un passo che
cerca un token, un componente, la misura di una texture, una regola dei font o un verdetto di fattibilità li guarda in FDCP; un passo che vuole sapere
che cosa AU fa di diverso guarda qui.

Che cosa si prende senza cambiarlo:

| Da FDCP | Che cosa |
|---|---|
| §2 | i token (nomi e valori), forme, ombre, bagliori, durate, curve, spaziatura; le dimensioni del testo, con l'eccezione del §2.4 qui sotto |
| §3 | i componenti e come si costruiscono in gioco: texture bianche tinte a runtime, 9-slice, il registro del tema che ricolora senza `/reload`, tooltip proprio, lista di scelta propria (niente `UIDropDownMenu`) |
| §4 | i font e le loro licenze (Outfit, JetBrains Mono, Orbitron, SIL OFL 1.1) e il ripiego sui font del gioco, con l'impostazione *Font: Addon / Gioco* |
| §5 | i verdetti di fattibilità (niente sfocatura dello sfondo, niente spaziatura fra le lettere, niente curve a molla, gradienti a due colori) |
| §7 | le texture e le regole di prestazione: al massimo quattro regioni per card, righe da pool, nessun `OnUpdate` fisso, nessun frame protetto |

## 2. Differenze

### 2.1 Finestre separate, non una sola finestra a schede

FDCP ha una finestra principale con schede orizzontali (FDCP §6). AU **no**: tiene le sue finestre separate, perché il narratore deve restare
visibile accanto ad esse e ogni finestra si apre da sola, con un comando o un pulsante
([#181](https://github.com/Finland6738/azeroth-unspoken/issues/181)). Ogni finestra è costruita da `W.Window` (il nome resta) sul guscio di FDCP:
barra del titolo di 52 punti (il logo tondo di Azeroth Unspoken, `assets/logo-source.webp`, il nome della finestra in Orbitron, un sottotitolo mono, un chip di stato quando la finestra ne ha uno, il pulsante di chiusura), forma
della finestra a 12 con il suo anello e l'ombra, trascinabile, trattenuta nello schermo, Esc la chiude, la scala delle finestre di
[#182](https://github.com/Finland6738/azeroth-unspoken/issues/182). `Windows.lua` continua a impilarle, a portarle in primo piano e a spostare il narratore. Una finestra con
sezioni usa le Schede (FDCP §3) *dentro* di sé, mai per contenere altre finestre. La posizione si ricorda per personaggio.

### 2.2 Le finestre e i frame di AU, e i componenti che ognuno usa

I componenti sono quelli di FDCP §3 (i tipi di Button *primary*, *secondary*, *ghost* e *neon*, e i due in più di AU, *danger* e
*text*). "Guscio" è il guscio di finestra di FDCP del §2.1. I passi sono quelli della sezione "UI-ECO" del ROADMAP.

| Finestra o frame (nome globale) | Guscio | Componenti | Passo |
|---|---|---|---|
| Riquadro del narratore (`AzerothUnspokenNarrator`) | frame proprio, non il guscio | Panel (traslucido, §2.3), etichetta e barra d'accento della voce, pulsanti ghost, Badge (canale), barra della proposta con un pulsante principale e uno discreto, ThinBar (tempo) | UI-4 |
| Cronologia del narratore (`AzerothUnspokenNarratorHistory`) | guscio, senza schede | DataTable (ora, voce, testo), pulsanti ghost | UI-4 |
| Pulsante "parla" (`AzerothUnspokenButton`) | frame proprio | texture circolare, Badge, Tooltip proprio, lo stato di pausa detto anche a parole | UI-4 |
| Proposta e editor del Chat Gateway | dentro il riquadro del narratore | Badge, EditBox con contatore di byte, tipi di Button | UI-4 |
| Dialogo degli NPC (`AzerothUnspokenDialogue`) | frame proprio, **non si chiude con Esc** (ADR 0020) | Panel, fascia del titolo dell'NPC con la dicitura "dialogo d'ambiente dell'addon", ChoiceList per le risposte | UI-4 |
| Diario (`AzerothUnspokenJournal`) | guscio | Tabs (sette, con l'indicatore che scorre), DataTable di ricordi e luoghi, sotto-schede Segmented, Button, Dialog per le azioni irreversibili, Toast per gli esiti | UI-5 |
| Esportazione del diario (`AzerothUnspokenJournalExport`) | guscio | EditBox di sola lettura con Ctrl+C, Button | UI-5 |
| Relazioni (`AzerothUnspokenRelations`) | guscio | Tabs (elenco, persone, opzioni), DataTable ordinabile, Segmented, EditBox, ChoiceList, Chip, Dialog, Toast, il dettaglio del giocatore su due colonne | UI-5 |
| Anima del personaggio (`AzerothUnspokenProfile`) | guscio | Card, ThinBar per i livelli dei tratti, ChoiceList, Chip, Button | UI-6 |
| Procedura guidata del primo avvio (`AzerothUnspokenWizard`) | guscio | Segmented (lingua e passi), card ChoiceList per i consensi, Button primario, Dialog | UI-6 |
| Impostazioni (il canvas delle Impostazioni del client) | **nessun guscio**: il frame lo disegna il client | Card per i gruppi, Switch, Slider, Segmented, Button, EditBox; il contenuto è rifatto sul tema (§2.5) | UI-6 |
| Conferme, esiti | Dialog (strato `DIALOG`) e Toast, dalle finestre del guscio | Dialog, Toast | UI-3 |

### 2.3 Che cosa è proprio di AU

- **Il narratore non è una finestra.** Sta sopra il mondo di gioco, con l'opacità scelta dal giocatore. La regola di FDCP per l'effetto vetro,
  una superficie quasi opaca, non gli si adatta. Il narratore tiene le regole della revisione dell'interfaccia: l'impostazione di opacità vale per lo
  sfondo soltanto, il testo resta del tutto opaco, lo sfondo effettivo è almeno 0,55 ([#173](https://github.com/Finland6738/azeroth-unspoken/issues/173)) e il
  contrasto si calcola contro una scena bianca in entrambi i temi, come in `docs/design/UI_REVIEW.md`.
- **Le quattro voci** (narratore, voce interiore, personaggio, NPC) sono l'unica aggiunta di AU all'elenco dei token di FDCP: un token di colore per voce e per tema,
  scelti in modo che differiscano per luminosità oltre che per tinta, e che superino la prova di contrasto in Nebula e in Aurora. Una voce si riconosce
  anche dall'etichetta scritta e dalla forma della barra d'accento, e la voce interiore dal corsivo
  ([#186](https://github.com/Finland6738/azeroth-unspoken/issues/186)); un colore non è mai l'unica differenza. I colori di Personaggio e NPC devono
  distinguersi per un protanope.
- **Tipi di pulsante.** *danger* (un'azione che perde dati: il token `err` per contorno ed etichetta, mai un riempimento) e *text* (un pulsante simile a un
  collegamento, per "Salta" nella procedura guidata). Non aggiungono token di colore: *danger* usa `err`.
- **Consensi.** Il testo che il giocatore legge per dare un consenso, e ogni nota sulla privacy, è di 12 unità o più. Un consenso attivo mostra lo
  stato a parole, non solo con il colore. Un'azione irreversibile si chiede con un Dialog.

### 2.4 Nessun terzo tema, e le misure che AU non segue

- **Solo due temi**: **Nebula** (scuro, predefinito) e **Aurora** (chiaro). Il terzo tema di FDCP, **Drago**, non si costruisce; la sua colonna nel §2.1 di FDCP si
  ignora. I nomi dei token sono gli stessi, quindi un tema resta solo una tabella di colori e un terzo si può aggiungere senza toccare le finestre.
- **Nessun testo sotto le 12 unità.** FDCP scrive i sopratitoli a 11 pt e le intestazioni di tabella a 10 pt (FDCP §2.3). In AU entrambi sono a 12 (la revisione dell'interfaccia,
  [#182](https://github.com/Finland6738/azeroth-unspoken/issues/182)); il testo è a 13, i numeri mono a 12 o 13. Le aree di clic sono almeno 24 per 24 unità.
- **Densità.** Le righe di tabella di 36-40 unità di FDCP restano, con il testo a 13.
- **Che cosa ha FDCP e AU no**: niente finestre Roster, Crediti, Progress o Loot, niente nomi di classe con il quadratino luminoso, niente copertine di istanza,
  niente schermate di esportazione del sito. Dei componenti di FDCP, AU usa quelli del §2.2 e nient'altro.

### 2.5 Nomi, file e dati salvati

| | FDCP | Azeroth Unspoken |
|---|---|---|
| Cartella e toc | `FinlandDragonCreditPoints/` | `AzerothUnspoken/` (`AzerothUnspoken.toc`, resta `## Author: Finland6738`) |
| Namespace e prefisso | `FDCP` | `AU` (nomi globali `AzerothUnspoken...`, tabella dei moduli `NS`) |
| Variabili salvate | quelle del suo addon | `AzerothUnspokenDB` (account) e `AzerothUnspokenCharacterDB` (personaggio) |
| File dell'interfaccia | `UI/Assets.lua`, `Theme.lua`, `Motion.lua`, `Widgets.lua`, `Widgets/{Controls,DataTable,ThinBar}.lua`, `Windows/About.lua` | gli stessi nomi sotto `AzerothUnspoken/UI/`; le finestre tengono i loro file (`JournalFrame.lua`, `RelationsFrame.lua`, ...) |
| Media | `Media/*.tga`, `Media/Fonts/` | `AzerothUnspoken/Media/` e `AzerothUnspoken/Media/Fonts/`, elencati in `UI/Assets.lua`, un testo OFL per famiglia di font |
| Strumenti | `tools/make_media.py`, `make_fonts.py`, `mockup_lib.py`, `make_mockups.py`, `check_addon.py`, `check_locale.py` | copiati e adattati in `tools/` e `Tests/` (i controlli entrano nella suite) |
| Testo | chiavi di localizzazione | ogni stringa visibile è una chiave di localizzazione, enUS e itIT ([ADR 0023](../adr/0023-english-first-addon-and-english-command-names.md)); niente è scritto nel codice |

| Impostazioni personali dell'aspetto (UI-2) | il profilo del suo database (`theme`, `effects`, `animations`, `fontSource`) | `AzerothUnspokenDB.settings.ui`, **nell'account** come `windowScale` e non per personaggio: `ui.theme` (`nebula` \| `aurora`), `ui.neon` (bagliori e ombre, `effects` in FDCP), `ui.animations`, `ui.fontSource` (`addon` \| `game`). Predefiniti Nebula, sì, sì, addon; `Config.THEMES` elenca gli id dei temi e `Tests/TestTheme.lua` li confronta con `Theme.ORDER`. `Theme.Set(id)` o `Config:Set("ui.theme", id)` cambia tema dal vivo. Le righe delle Impostazioni sono in Impostazioni > Aspetto da UI-3 (sotto) |
| Posizione delle finestre (UI-3) | per personaggio | `AzerothUnspokenCharacterDB.windows[<nome globale>]` = `{ punto, punto relativo, x, y }`, scritta quando una finestra si trascina (dal suo frame o dalla barra del titolo), ripristinata la prima volta che si apre in una sessione; una voce rovinata la toglie `Config:Validate`. Impostazioni > Aspetto > *Riposiziona le finestre* le dimentica |

**Widget e guscio (UI-3).** `UI/Widgets.lua` e `UI/Widgets/{Controls,DataTable,ThinBar}.lua` contengono i componenti di FDCP §3, tutti
costruiti su `NS.Theme` e `NS.Motion`: i tipi di pulsante (`W.FlatButton(parent, text, width, height, onClick, kind)`, il tipo predefinito è
*secondary*, un pulsante con il riquadro), Card, Badge, Chip, Tabs, Segmented, TitleBar, Dialog, Toast, DataTable, EditBox, ChoiceList, Select,
Switch, Slider, ThinBar e il Tooltip dell'addon (invertito: superficie `text-1`, testo `bg`; `GameTooltip` resta solo per gli oggetti del gioco).
La tavolozza piatta di bronzo (`W.PALETTE`, `W.BRAND`) non c'è più; il riquadro del narratore tiene i suoi colori fino a UI-4 con
`W.LegacyFlatButton`. La fascia di 36 unità è diventata la barra del titolo di 52, che sale di 16 unità sopra il frame della finestra
(`W.BAR_ABOVE`), così il contenuto di ogni finestra resta al suo posto (`W.TOP`, 46 unità dalla cima del frame) finché UI-5 e UI-6 non lo
ricostruiscono; `Windows.lua` conta la barra quando il narratore si sposta. Il nome della finestra è scritto in maiuscolo in Orbitron; il
sottotitolo monospazio è il nome dell'addon con la versione; `:SetStatus(testo, tono)` mostra un chip di stato. Fino a UI-5 e UI-6, i testi di
una finestra che usano ancora gli oggetti font del gioco prendono i colori del tema dal loro font (`W.Adopt`: l'oro del gioco diventa
`accent-text`, il bianco `text-1`, il bianco piccolo `text-2`), e una parola colorata dentro una riga usa `W.Hex(token)`; la pagina delle
Impostazioni ha una superficie `bg` sua dentro il frame del client, così i suoi testi tengono il contrasto anche in Aurora. L'esempio del
narratore nella guida tiene la superficie scura del narratore (`auKeepColours`) fino a UI-4. La DataTable prende il primo motore che il client
offre: lo ScrollBox con una vista lineare e un DataProvider, poi un FauxScrollFrame, poi un gruppo di righe che scorre con la rotella
(`Core/Compat.lua` crea ognuno dentro `pcall`; uno ScrollBox che fallisce mentre si riempie fa passare la tabella al successivo per sempre).

**Animazioni: una sola impostazione (UI-3).** Impostazioni > Aspetto ha *Tema* (Nebula, Aurora), *Effetti neon*, *Animazioni* e *Caratteri*
(addon, gioco), ognuna dal vivo con `Config:Set`, senza `/reload`. La vecchia riga del narratore *Riduci il movimento* **confluisce in
Animazioni**: la riga scrive `ui.animations` e tiene `ui.narrator.reduceMotion` al suo contrario, che il riquadro del narratore legge finché UI-4
non lo porta su `NS.Motion`. `Theme.AnimationsOn()` legge ancora le due, quindi un file scritto prima di UI-3 si comporta allo stesso modo. Una
sola impostazione, perché il motivo per spegnere il movimento (il mal di movimento, un client lento) è lo stesso per il narratore e per le
finestre.

**Migrazione (UI-2).** Chi aveva spento le dissolvenze del narratore (`ui.narrator.reduceMotion`, [#177](https://github.com/Finland6738/azeroth-unspoken/issues/177)) parte con
`ui.animations = false`: lo fa `Config:Load` una volta sola, solo quando `ui.animations` non è ancora nel file. L'impostazione del narratore ferma
comunque le animazioni (`Theme.AnimationsOn()` legge entrambe), quindi nulla di ciò che il giocatore ha scelto si disfa. La versione dello schema non cambia:
`Merge` aggiunge le chiavi nuove e `Validate` riporta un tema o una sorgente di font sbagliati al predefinito.

**Testo scritto nel codice (UI-2).** `Tests/check_locale.py` (lo esegue `Tests/run_tests.py`) fallisce quando una stringa di `AzerothUnspoken/UI/*.lua` è
testo visibile: argomento di `SetText`, `Print`, `AddMessage` e simili, valore di un campo come `text`, `title`, `label` o `tooltip`, o
qualunque cosa che sembri una frase (due parole con uno spazio). Una chiave come `help_depth` non è testo. La sintassi di un comando
(`usage = "mode private / preview"`) è in inglese per l'ADR 0023. Una riga che non ha testo da tradurre (il formato di una riga di comando, una
diagnostica per chi sviluppa) lo dice con `-- nolocale: il motivo`; senza motivo fallisce. Lo stesso controllo confronta le tabelle `ui` di
`Data/enUS/*UI.lua` e `Data/itIT/*UI.lua` (le stesse chiavi, gli stessi segnaposto `%s`) e che ogni `NS:L("chiave")` dell'interfaccia esista.

### 2.6 La pagina Info e i crediti

FDCP mostra i crediti in una scheda About della sua finestra principale. AU non ha quella scheda: la **pagina Info sta nel canvas delle Impostazioni del client** (una
pagina della categoria dell'addon, costruita da `UI/Windows/About.lua`). Un comando chiamato `about` (previsto in UI-7, quindi non citato ancora come comando) apre le Impostazioni su di essa, e la sua forma `chat` stampa gli stessi
crediti nella chat. La pagina mostra il nome, la versione, la licenza (codice GPL-3.0-or-later, frasi e dati narrativi tutti i diritti riservati, pacchetto
d'esempio MIT, documenti CC BY 4.0), il sito NEBULA, il repository GitHub e le issue, e Ko-fi, ognuno in una casella di sola lettura da copiare con Ctrl+C. L'avviso
di opera di fan (non affiliata né approvata da Blizzard Entertainment) c'è. **Ko-fi compare solo lì e nei documenti, mai come richiesta.** La
pagina Info mostra anche il **logo della community NEBULA**, un'immagine a sé (non il logo tondo dell'addon della barra del titolo): a colori pieni e mai tinta, in una variante scura
per Nebula e una chiara per Aurora, scambiate con il tema senza `/reload` ([ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md), decisione 7). Il logo della community si usa con il permesso del proprietario
e non è coperto dalla licenza del codice; lo dice `docs/third-party.md`. I file delle immagini arrivano nel passo UI-7.

### 2.7 Invarianti di accessibilità

Le regole della revisione dell'interfaccia (#171-#194) sono nell'[ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md), sezione "Invariants that must survive". Hanno
la precedenza su un token o un componente di FDCP dove i due non concordano. In breve: le prove di contrasto passano in entrambi i temi, aree di clic di 24 per 24,
testo di 12 o più, la selezione mai solo con il colore, Esc chiude ogni finestra (tranne il dialogo degli NPC), l'impostazione *Animazioni: no* rende tutto immediato,
il testo del narratore resta opaco, la scala delle finestre e i font di ripiego continuano a funzionare.

## 3. Stato

Ogni riga si compila quando la sua pull request viene unita. Nulla è verificato nel client di gioco finché non lo dice il proprietario: il look, i font, le forme 9-slice,
i bagliori e le animazioni sono previsioni fino ad allora.

| Passo | Che cosa | Pull request | Stato |
|---|---|---|---|
| UI-0 | ADR 0058, questa specifica e il suo gemello inglese, la sezione del ROADMAP, l'issue #284 | [#285](https://github.com/Finland6738/azeroth-unspoken/pull/285) | fatto (solo documenti) |
| UI-1 | media: `make_media.py`, `make_fonts.py`, texture, font e testi OFL, `UI/Assets.lua`, pacchetto, `docs/third-party.md` | [#289](https://github.com/Finland6738/azeroth-unspoken/pull/289) | fatto: file generati e controllati fuori dal gioco; **non provati nel client** (caricamento dei TGA, glifi dei font) |
| UI-2 | `UI/Theme.lua`, `UI/Motion.lua`, chiavi di configurazione, prove del tema, il controllo del testo scritto nel codice | [#290](https://github.com/Finland6738/azeroth-unspoken/pull/290) | fatto: token uguali a quelli di FDCP, cambio di tema senza ricarica, contrasto dei due temi, `Tests/TestTheme.lua` e `Tests/check_locale.py`; **non provato nel client** (`SetFont` con i font inclusi, 9-slice, bagliori ADD, gradienti, animazioni) |
| UI-3 | widget, barra del titolo di 52 punti, `W.Window`, impostazioni di aspetto | UI3PR | fatto: ogni widget di FDCP §3 sul tema, le finestre sul nuovo guscio, posizione per personaggio, Impostazioni > Aspetto dal vivo, Riduci il movimento confluito in Animazioni, contrasto di ogni widget nei due temi (`Tests/TestLayout.lua`), `Tests/TestWidgets.lua`; **non provato nel client** (l'aspetto, i font, il 9-slice, i bagliori, le animazioni, lo ScrollBox e il FauxScrollFrame, il salvataggio della posizione) |
| UI-4 | riquadro del narratore, pulsante "parla", proposta e editor del Chat Gateway, finestra di dialogo | | da fare |
| UI-5 | Diario e Relazioni | | da fare |
| UI-6 | procedura guidata, Anima del personaggio, il canvas delle Impostazioni | | da fare |
| UI-7 | crediti: la pagina Info con il logo della community NEBULA (scuro e chiaro), il comando `about`, README, pagina About del wiki, testo di CurseForge | | da fare |
| UI-8 | anteprime e asset rigenerati, GIF del README, Interface Tour del wiki, stato finale di questa specifica | | da fare |
