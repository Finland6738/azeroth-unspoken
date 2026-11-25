# Romanticismo attivo con gli NPC

> Versione italiana. Il gemello inglese è [romance.md](romance.md), che fa fede; quando differiscono, si correggono entrambi.
>
> Specifica dello step **R0** del romanticismo attivo. Decisione: [ADR 0061](../adr/0061-active-romance-flirt-answers-an-affinity-table-one-beloved-and-three-tone-tiers.md),
> che estende l'[ADR 0037](../adr/0037-romance-with-npcs-opposite-sex-and-the-vow.md). Step: [ROADMAP.md](../../ROADMAP.md),
> sezione "Active romance".
>
> **Stato: R1-R3 costruiti (il motore, l'interfaccia, le frasi dei livelli 1-2).** Il pacchetto del livello 3 è lo step R4.
> Che cosa ha fissato ogni step è nei punti 21 (R1), 22 (R2) e 23 (R3). I mockup sono in [`docs/design/mockups/`](../design/mockups/README.md)
> (`romance-*.html`, i PNG in `png/`): sono proposte disegnate sui widget e sui token veri dell'addon, segnate *PROPOSED*.

## 1. Che cosa aggiunge, in un paragrafo

Oggi il romanticismo accade da solo (ADR 0037). Con questo, il giocatore lo **fa**: nella finestra del dialogo
ambientale, accanto alle risposte neutre, possono comparire una o due **risposte di corteggiamento**, segnate da un cuore
e da un colore proprio; l'NPC le **accoglie**, resta **freddo** o **rifiuta**, secondo una **tabella di affinità** nei
dati. L'interesse cresce fino al **corteggiamento**; i grandi momenti (una **dichiarazione**, un **appuntamento**, il
**voto**) aprono un **popup romantico** tutto loro, sempre da un clic. C'è **un solo amato** alla volta; corteggiare un
altro NPC dopo il voto porta **gelosia**; il giocatore può **lasciare**. Il tono va da **Cortese** (predefinito) a
**Intimo** (dissolvenza al nero), e un livello **Esplicito** esiste solo dietro un **blocco 18+**, spento di base, in un
pacchetto separato che CurseForge non riceve mai. È tutto narrazione privata.

## 2. Le condizioni

Il romanticismo attivo compare solo quando valgono **tutte** queste condizioni, controllate a ogni uso
(`R:RomanceActive(npcID)` in R1):

| Condizione | Dove sta |
|---|---|
| Modulo Relazioni acceso | `NS.db.modules.relations` |
| Asse dell'attrazione acceso | `relations.attraction` (spento di base) |
| Romanticismo attivo acceso | `relations.romanceActive` (nuovo, **acceso** di base) |
| L'anima non evita l'argomento *romance* | tratto `avoid` di `Personality`, valore `romance` |
| L'NPC è idoneo | `R:RomanceEligible(npcID)`: sesso opposto, umanoide (ADR 0037) |
| L'NPC non è escluso | `romance.exclude` (npcID) in `Data/Romance.lua`; `romance = false` in `Data/NPCs.lua` |
| Conoscente o più, nessun rancore | `romance.flirt.minLevel`; `rec.foe` (ADR 0041) |
| Un momento tranquillo | fuori combattimento, vivi, nessuna schermata invasiva, non un dialogo `/au talk test` |
| L'NPC non sta prendendo le distanze | `rec.romance.cd` (dopo i rifiuti) e la pausa dopo una rottura |

`R.session.kin` riceve una lettura all'inizio di un dialogo ambientale aperto dal bersaglio (R1): `R.Kin("target")`
quando l'npcID del bersaglio è l'NPC del dialogo.

## 3. Il file dei dati: `AzerothUnspoken/Data/Romance.lua`

Un nuovo file di dati, caricato dopo `Data/Relationships.lua`, unito da `NS.Relationships:RegisterData({ romance = ... })`
al blocco `romance` che esiste già (così un pacchetto può cambiare qualunque numero). Ogni valore qui sotto è il
predefinito proposto.

```lua
romance = {
	-- ADR 0037 (invariato): minLevel, gain, decay, cap, humanoid, vow = { attraction = 80, label = "lover", variants = 3 }
	active = { default = true },
	exclude = { npcIDs = { --[[ R3: bambini e chiunque non vada mai corteggiato ]] } },
	stages = {                                 -- in ordine; la fase si salva, queste sono le soglie per raggiungerla
		{ id = "interest", attraction = 5 },
		{ id = "courtship", attraction = 25, band = "friend" },
		{ id = "declared", moment = "declaration", attraction = 50, band = "friend" },
		{ id = "vowed", moment = "vow" },      -- attrazione ed etichetta di `vow` qui sopra
	},
	flirt = { minLevel = "acquaintance", max = 2, maxEarly = 1, perTalk = 1, hours = 6 },
	affinity = {
		base = 50, random = 12, welcome = 60, cold = 40,
		race = { same = 6, pairs = { Human = { Dwarf = 2, NightElf = 2 }, Orc = { Troll = 3, Tauren = 2 } } },
		class = { guard = { WARRIOR = 4, PALADIN = 4 }, innkeeper = { ROGUE = 2, HUNTER = 2 }, trainer = { same = 6 } },
		soul = {                               -- temperamento dell'NPC -> tratto del personaggio -> fascia -> punti
			cheerful = { optimism = { high = 6, low = -4 }, irony = { high = 2 } },
			gruff = { irony = { high = 4 }, stoicism = { high = 3 }, altruism = { high = -2 } },
			stoic = { stoicism = { high = 5 }, irony = { high = -3 } },
			melancholic = { spirituality = { high = 3 }, optimism = { low = 4, high = -2 } },
			merciful = { altruism = { high = 6 }, vengefulness = { high = -5 } },
			fierce = { vengefulness = { high = 4 }, ambition = { high = 3 }, altruism = { high = -2 } },
			resolute = { ambition = { high = 4 }, patriotism = { high = 3 } },
		},
		relation = {
			band = { acquaintance = -12, friend = 0, close = 8, bond = 14 },
			axes = { attraction = 0.25, affection = 0.10, trust = 0.08, respect = 0.04, fear = -0.15 },
		},
		stage = { ahead = -15, tierOut = -20 },
		situation = { inn_night = 6, festival = 6, city = 0, wild = -3 },
		mood = { happy = 3, serene = 1, admiring = 2, curious = 1, worried = -4, tense = -3, furious = -5, melancholic = -10 },
		momentum = { step = 2, max = 6 },
	},
	refuse = { hours = 20, streak = 3, restDays = 5 },
	moment = { coldDays = 3, refuseDays = 7, dateHours = 20 },
	jealousy = { from = "vowed", farChance = 0.35, days = 7 },
	breakup = { attraction = 15, affection = 5, restDays = 30, confirmSeconds = 30 },
	tone = { default = 1, mix = { [1] = 0.6, [2] = 0.4, [3] = 0.4 }, night = { from = 21, to = 5 } },
	pack18 = { addon = "AzerothUnspoken_Romance18", toc = "X-AzerothUnspoken-Romance" },
}
```

Nuove righe di `increments` (nello stesso file delle altre, `Data/Relationships.lua`; il temperamento le moltiplica come
ogni riga):

```lua
romance_flirt = { gain = { attraction = 2, affection = 0.5 }, decay = 0.7, cap = { attraction = 4, affection = 1 } },
romance_date = { gain = { attraction = 3, affection = 1, trust = 1 }, decay = 0.5, cap = { attraction = 3, affection = 1, trust = 1 } },
romance_declared = { gain = { attraction = 4, affection = 3, trust = 2 }, decay = 1 },
romance_refused = { gain = { attraction = -1 }, decay = 1 },
romance_jealous = { gain = { attraction = -4, trust = -3 }, decay = 1 },
romance_breakup = { gain = { affection = -5 }, decay = 1 },
```

Con questi numeri chi corteggia ogni giorno un Amico e si vede accogliere circa metà delle risposte arriva al
corteggiamento in circa una settimana, alla dichiarazione in due o tre, al voto in circa un mese: più in fretta delle
sette settimane del percorso passivo, di proposito, ma sempre con calma.

## 4. Le risposte di corteggiamento

### 4.1 Formato

```lua
NS:RegisterDialogues({
	pack = "base_romance",
	flirts = {
		{ id = "glance", kind = "glance", stage = { "none", "courtship" }, tier = 1,
			label = { en = "Hold their gaze a moment longer.", it = "Reggi il suo sguardo un attimo di più." } },
		{ id = "inn_stay", kind = "invite", stage = { "declared", "vowed" }, tier = 2, roles = { "innkeeper" },
			when = { romanceNight = true },
			label = { en = "Ask whether a room is free tonight, for two.", it = "Chiedi se stanotte c'è una stanza, per due." } },
	},
})
```

- `id`: `[a-z_0-9]`, unico nel pacchetto. `kind`: `glance`, `compliment`, `gift`, `walk`, `invite`, `moment`.
- `stage`: `{ da, a }`, identificatori di fase compreso `none`. `tier`: 1 o 2 (3 solo con `romance18 = true` sul pacchetto).
- `roles` (facoltativo): i ruoli di NPC a cui si addice. `when` (facoltativo): condizioni ordinarie (`Engine.CheckConditions`).
- `label`: ogni lingua dell'addon, al massimo `N.LABEL_BYTES` (70) byte, nessun `{segnaposto}`, UTF-8 valido.
- Una risposta `moment` ha `moment = "declaration" | "date" | "vow"` e si offre solo quando quel momento è maturo.

### 4.2 Validatore

`N:Check()` guadagna un passaggio sui `flirts`. Il controllo di neutralità (`N.PutsWords`) **non gira** sulle risposte di
corteggiamento; ogni altro controllo sì. Nuovi errori: un `kind` sconosciuto, un intervallo di fasi sbagliato, un livello
fuori da 1-2 (o 3 fuori da un pacchetto `romance18`, o 1-2 dentro uno), una lingua mancante, e **qualunque risposta di un
copione che dichiari `romance = true`**.

### 4.3 Nel dialogo

`ComputeChoices` (NPCAlive) costruisce le risposte neutre come oggi, poi, se vale `R:RomanceActive(npcID)` e in questo
dialogo non si è ancora corteggiato, chiede a `Romance:Flirts(npcID, node)` fino a `flirt.max` risposte (`maxEarly` prima
del corteggiamento): prima la risposta del momento maturo, poi le altre la cui fase, livello (punto 9), ruoli e `when`
valgono, estratte a caso con la memoria anti-ripetizione del selettore. La vista dà a ciascuna `romance = true` e la
finestra la disegna con il cuore (punto 11.1). I numeri continuano dopo le risposte neutre (`4.`, `5.`); i tasti 1-5 le
scelgono.

Scegliere una risposta di corteggiamento:

1. `Romance:Answer(npcID, flirt)` calcola l'esito (punto 5) e lo applica (incrementi, attese, gelosia);
2. la replica dell'NPC si sceglie da `npcd_romance_<esito>` con il contesto della risposta (`romanceKind`,
   `romanceTier`, `romanceOutcome`, `romanceStage`) e si mostra come battuta del nodo;
3. le risposte neutre del nodo restano; quelle di corteggiamento spariscono per il resto del dialogo.

Scegliere una risposta di momento chiude il dialogo (`End("romance")`) e apre il popup su quel momento.

## 5. Il punteggio di affinità

`Romance:Score(npcID, flirt)` restituisce il punteggio e le sue parti (`/au romance why` le mostra, per la taratura):

| Parte | Come |
|---|---|
| base | `affinity.base` |
| razza | `same` se la razza nota dell'NPC è quella del personaggio; altrimenti `pairs[mia][sua]` o `pairs[sua][mia]`; 0 se ignota |
| classe | `class[ruolo][MIACLASSE]`, o `class[ruolo].same` quando la classe di un addestratore è quella del personaggio |
| anima | per il temperamento dell'NPC, la somma sui suoi tratti del valore della fascia del personaggio (`low`/`mid`/`high`); 0 se manca |
| relazione | `band[disposizione]` + Σ `axes[a] × valore(a)` |
| fase | `ahead` se la prima fase della risposta viene dopo quella dell'NPC; `tierOut` se una risposta di livello 2 è fuori dalla sua situazione |
| situazione | `inn_night` in una locanda (o a riposo) di notte; `festival`; `city`; `wild` |
| umore | l'emozione dominante del personaggio (ADR 0031), se c'è |
| slancio | `step` per ogni accoglienza di fila, al massimo `max` |
| caso | uniforme in `[-random, +random]` |

`>= welcome` accoglie, `>= cold` freddo, altrimenti rifiuta. Un esempio con i predefiniti: un Amico (0) con attrazione 20,
affetto 40, fiducia 35 (5 + 4 + 2,8 = 11,8), un NPC allegro e un personaggio ottimista (+6), in città (0), nessun umore:
50 + 11,8 + 6 = **67,8** prima del caso, quindi accoglie se il caso non scende sotto -7,8 (circa un terzo delle volte
freddo, mai un rifiuto). Lo stesso NPC da Conoscente con attrazione 0: 50 - 12 + 4 + 2,8 + 6 ≈ 51: per lo più freddo,
a volte accoglie, raramente rifiuta.

Esiti:

| Esito | Effetti | Battuta dell'NPC |
|---|---|---|
| accoglie | `romance_flirt`; slancio +1; la fase può salire (punto 6) | `npcd_romance_welcome` |
| freddo | nessuno; slancio a 0 | `npcd_romance_cold` |
| rifiuta | `romance_refused`; `cd = adesso + refuse.hours`; rifiuti +1 (a `streak`: `cd = adesso + restDays`); slancio a 0; il primo rifiuto di questo NPC lascia `relation_refused` nel diario | `npcd_romance_refuse` |

## 6. Fasi e momenti

Salvata in `rec.romance.st`: `none` (nessuna tabella), `interest`, `courtship`, `declared`, `vowed`, `ended`, `past`.

- Dopo ogni cambio di attrazione (`RecordNPC`, una risposta, un appuntamento) `Romance:Advance(npcID)` porta `none` a
  `interest` e `interest` a `courtship` quando valgono le loro soglie. Non fa mai scendere una fase.
- `declared` e `vowed` si raggiungono solo con i loro momenti.
- **Un momento è maturo** quando: la fase che lo precede è raggiunta, le sue soglie valgono, `mo[momento]` (il prossimo
  momento permesso) è passato e, per una dichiarazione, nessun altro NPC occupa il posto dell'amato; per il voto, questo
  NPC è l'amato.
- **Momenti**:

| Momento | Maturo | Scelte nel popup | Accoglie | Freddo | Rifiuta |
|---|---|---|---|---|---|
| dichiarazione | corteggiamento, attrazione 50, Amico+, nessun amato | *Apri il tuo cuore* / *Non ancora* | `declared`, amato, `romance_declared`, `relation_declared` (permanente) | `mo.declaration = adesso + coldDays` | `mo.declaration = adesso + refuseDays`, `romance_refused` |
| appuntamento | dal corteggiamento, una volta ogni `dateHours` | 2-3 proposte secondo situazione e livello, ognuna con la sua etichetta di livello / *Non stasera* | `romance_date`, cancella la gelosia, `relation_date` la prima volta | nulla | `romance_refused`, `mo.date = adesso + dateHours` |
| voto | l'amato, attrazione 80, etichetta *amato* | *Fai il voto* / *Non ancora* | `vowed`, il voto dell'ADR 0037 (ricordo, battuta) | — (il voto non ha punteggio: l'amato accetta sempre) | — |

La dichiarazione e l'appuntamento hanno il punteggio di una risposta, con la parte `stage` del momento a 0 (un momento
non è mai "in anticipo"). *Non ancora* e *Non stasera*, Esc e la casella di chiusura non costano nulla e non fissano tempi.

## 7. Gelosia e rottura

- **Gelosia**: quando la fase dell'amato è pari o successiva a `jealousy.from` e un altro NPC risponde a un corteggiamento
  con accoglienza o freddezza, l'amato riceve `jl = adesso` se i due NPC hanno la stessa `town`, altrimenti con
  probabilità `farChance`. Al successivo incontro con l'amato (`RecordNPC`), una volta: `romance_jealous`, una riga
  `relation_jealous` nel diario, una battuta privata della voce interiore; la condizione `romanceJealous` vale finché
  `adesso - jl < days × 86400`, così il dialogo dell'amato si apre con una battuta gelosa (`npcd_romance_jealous_open`,
  voce dell'NPC, prima della battuta d'apertura dell'archetipo). Un appuntamento accolto mette `jl = nil`.
- **Rottura** (`Romance:BreakUp(npcID)`, solo l'amato, solo per mano del giocatore): `st = "ended"`, `endT = adesso`,
  `beloved = nil`; attrazione `min(valore, breakup.attraction)`; `romance_breakup`; `relation_breakup` (permanente); una
  battuta della voce interiore (`rel_breakup_N`). Dalla finestra Relazioni: un pulsante *danger* **Chiudi la storia** nel
  dettaglio dell'amato e un Dialog (*Chiudere la storia con %s? Il voto, se c'è stato, resta nel diario. Potrai
  corteggiare di nuovo fra 30 giorni.*). Dalla chat: `/au romance end` due volte entro `breakup.confirmSeconds`. Passati
  `restDays`, la fase torna a `none` all'incontro successivo.

## 8. Le scene del popup

Ogni momento è raccontato dalla narrazione dell'evento `romance_scene` con le condizioni `romanceMoment` (declaration,
date, vow), `romanceTier` (1, 2, 3), `romancePhase` (`open` prima della scelta, `welcome`, `cold`, `refuse` dopo) e
`romanceDate` (la proposta scelta: `walk`, `supper`, `stargaze`, `night`, ...). Parla il `narrator`; le parole dell'NPC
dentro la narrazione stanno fra virgolette. Una scena è di 2-5 frasi. Una scena `welcome` di livello 2 finisce con una
frase di chiusura che sfuma al nero (punto 9.3).

Le proposte di appuntamento sono dati (`romance.dates`), ognuna con un `tier`, un `kind` e un `when` (per esempio
`night` chiede `romanceNight`, `supper` un luogo di riposo, cioè una locanda o una città, `stargaze` una notte all'aperto),
e la loro etichetta sta nei file di lingua:

```lua
dates = {
	{ id = "walk", tier = 1 }, { id = "supper", tier = 1, when = { resting = true } },
	{ id = "stargaze", tier = 1, when = { romanceNight = true, indoors = false } },
	{ id = "night", tier = 2, when = { romanceNight = true, resting = true } },
},
```

## 9. I livelli di tono

### 9.1 Il livello permesso

`relations.romanceTone`: 1 (Cortese, predefinito), 2 (Intimo), 3 (Esplicito, solo con il blocco acceso **e** il
pacchetto installato; altrimenti l'impostazione vale come 2). `/au romance tone` e il selettore delle Impostazioni lo
cambiano.

### 9.2 Il livello della situazione

`Romance:SituationTier()` è intimo (ogni livello che il giocatore permette, quindi 2 o 3) quando: la fase dell'NPC è `declared` o `vowed`; ed è notte (`tone.night`, l'ora del
mondo) in una locanda o a riposo, **oppure** è nota una festa (una variabile del mondo `festival` che R1 aggiunge solo se
il dump delle API di 1.60.1 ha un calendario; senza, mai); e l'umore del personaggio non è il lutto. Altrimenti 1. Una
risposta o un appuntamento di livello `t` si offre quando `t <= min(permesso, situazione)`. Il lutto è l'emozione
dominante *melancholic* di `Systems/Emotion.lua`. Quando valgono entrambi i
livelli, le loro battute si mescolano secondo `tone.mix`; fra proposte di appuntamento di livelli diversi il giocatore
sceglie guardando le loro etichette.

### 9.3 Dissolvenza al nero

Una scena `welcome` di livello 2 mostra il testo, poi la frase finale, poi il testo sfuma in 1,5 s (`NS.Motion.FadeOut`)
sulla superficie vuota del popup con la sola parola *Più tardi.* / *Later.* e il pulsante Chiudi. Con *Animazioni: no*
l'ultima vista appare subito.

### 9.4 La regola

Ogni regola degli eventi romantici (`npcd_romance_*`, `romance_scene`, `romance_inner`) deve avere `romanceTier` fra le
condizioni (lo controlla il validatore). Il motore filtra per livello permesso prima di ogni peso: una regola oltre il
livello non è mai candidata.

## 10. Il blocco 18+

- `Consent:Register("romance_adult", { text = "consent_romance_adult_text", accept = ... })`; il pulsante delle
  Impostazioni e `/au romance adult on` chiamano `Consent:Step`; spegnerlo è un passo solo e porta il tono a `min(tono, 2)`.
- Avviso (in inglese, testo definitivo in R2): *Explicit romance texts (18+). Turn this on only if you are 18 or older and
  want them. They come only from a separate optional pack, AzerothUnspoken_Romance18, which is not on CurseForge; without
  it, nothing changes. Romance stays private: nothing is ever sent to chat. You can turn it off at any time.*
- Si conserva nell'account: `relations.romanceAdult = true`.

## 11. L'interfaccia

### 11.1 Le risposte di corteggiamento nella finestra del dialogo

Mockup: `romance-dialogue-flirt` (e `romance-refusal`). La finestra del dialogo (`UI/DialogueFrame.lua`, larga 380)
guadagna un tipo di FlatButton **romance**: la superficie del pulsante secondario, un bordo di 1 unità in
`voice-romance`, il cuore del foglio di icone (14 unità, `voice-romance`) 6 unità prima dell'etichetta centrata,
l'etichetta in inchiostro `voice-romance` (o `text-1` quando la prova di contrasto non passa, come per le voci). Il suggerimento:
*Una risposta romantica: %s può accoglierla, restare freddo o rifiutare.*; con un amato: *... L'amato potrebbe venirlo a
sapere.* La finestra cresce di 28 unità per ogni pulsante in più (al massimo 5 risposte).

### 11.2 Il popup romantico

Mockup: `romance-popup-declaration`, `romance-popup-date`, `romance-popup-aurora`. Costruito come il riquadro del
narratore:

- frame `AzerothUnspokenRomance`, largo 440, alto quanto il contenuto; Panel `bg` all'opacità del narratore (mai sotto la
  soglia), raggio 12, l'anello e l'ombra; strato `DIALOG`; si sposta, la posizione è per personaggio; Esc lo chiude
  (*Non ora*);
- la barra d'accento di 3 unità in `voice-romance` dentro gli angoli;
- la riga d'intestazione: il cuore (16 unità) a 14, poi **Romanticismo** in `voice-romance` e ` · <nome dell'NPC>` in
  `text-2`; a destra l'etichetta del tono (*Cortese*, *Intimo*, *Esplicito*) e la casella di chiusura;
- il distintivo *dialogo ambientale dell'addon* sotto l'intestazione (la stessa chiave del dialogo, `npc_badge`);
- il testo della scena nella misura e nel carattere del narratore, `text-1`; le parole dell'NPC in `voice-npc`;
- la barra delle scelte in fondo, sopra una riga `border-subtle`: le scelte come pulsanti, da destra (la prima
  *primary*, le altre *secondary*, *Non ancora* un pulsante *text*); le proposte di un appuntamento stanno sopra la barra,
  una sotto l'altra, come pulsanti *romance* larghi quanto il riquadro, ognuno con una piccola etichetta del livello a
  destra;
- dopo la scelta lo stesso riquadro mostra la scena dell'esito e un solo pulsante *Chiudi*;
- movimento: `Motion.PopIn` 0,15 s all'apertura, `Motion.FadeOut` 0,1 s alla chiusura; niente con *Animazioni: no*;
- si chiude all'inizio di un combattimento (come *Non ora*), all'uscita dal mondo e a una schermata di caricamento; non
  si apre mai da solo.

### 11.3 Impostazioni: la sezione *Romanticismo*

Mockup: `romance-settings-gate`. Una nuova sezione dopo *Privacy* (la riga "Moduli" del README non cambia: non è un
modulo):

| Riga | Controllo | Predefinito |
|---|---|---|
| Romanticismo attivo | Switch; con l'asse dell'attrazione spento mostra *serve l'asse Attrazione* ed è disattivato | acceso |
| Tono | Segmented: Cortese, Intimo, Esplicito (18+); Esplicito è disattivato finché il blocco non è acceso e il pacchetto installato | Cortese |
| Testi espliciti (18+) | pulsante che mostra *No*, *Leggi l'avviso...*, *Clicca di nuovo per confermare*, *Sì* (gli stati del consenso) | No |
| Pacchetto 18+ | testo di stato: *non installato* / *installato, non caricato* / *caricato* | — |

La conferma è la finestra di dialogo del client (StaticPopup), come per gli altri consensi.

### 11.4 Finestra Relazioni e diario

- Il dettaglio di un NPC mostra la fase (*Interesse*, *Corteggiamento*, *Dichiarato*, *Votato*, *Finita*) accanto
  all'etichetta, un cuore se è l'amato e, per l'amato, il pulsante *danger* **Chiudi la storia** (punto 7).
- Il diario mostra i nuovi tipi di ricordo nella scheda Ricordi (mockup `romance-journal`): la dichiarazione, il primo
  appuntamento, una gelosia, la rottura, il primo rifiuto; testi senza nomi, da `Data/<lingua>/RelationsUI.lua`.

### 11.5 Comandi

Una riga del gruppo **Personaggio** di `/au help` (step R2: un gruppo di una sola riga non riempirebbe una finestra, e
Personaggio ci sta ancora con essa).

| Comando | Che cosa |
|---|---|
| `/au romance` | l'amato, la fase con l'NPC bersaglio e il momento maturo (lo apre) |
| `/au romance on\|off` | Romanticismo attivo |
| `/au romance tone courteous\|intimate\|explicit` | il livello permesso |
| `/au romance adult on\|off` | il consenso 18+ (due passi per accenderlo) |
| `/au romance end` | lasciare l'amato (due volte entro 30 s) |
| `/au romance why` | le parti dell'ultimo punteggio (per la taratura) |

Nessun tasto assegnabile.

## 12. Il pacchetto del livello 3

### 12.1 La cartella

```
AzerothUnspoken_Romance18/
  AzerothUnspoken_Romance18.toc
  Registry.lua        -- NS:RegisterPack({ id = "romance18_base", romance18 = true, registry = { ... } })
  Flirts.lua          -- NS:RegisterDialogues({ pack = "romance18_base", romance18 = true, flirts = { ... } })
  Texts_enUS.lua
  Texts_itIT.lua
  README.md           -- come scrivere testi per il pacchetto
  NOTICE.md           -- licenza dei testi
```

```
## Interface: 16001
## Title: Azeroth Unspoken - Romance 18+
## Notes: Optional explicit romance texts for Azeroth Unspoken. Silent unless the 18+ setting is on.
## Dependencies: AzerothUnspoken
## LoadOnDemand: 1
## X-AzerothUnspoken-Romance: 18
```

### 12.2 Le serrature

1. **Caricamento**: all'accesso e quando cambiano il blocco o il tono, se il blocco è acceso e il tono è 3,
   `Romance:LoadPack()` chiama `Compat` (`C_AddOns.LoadAddOn` o `LoadAddOn`) per la cartella di `pack18.addon`. Nessun
   altro lo carica.
2. **Silenzio**: `NS:RegisterPack` e `NS:RegisterDialogues` tengono il segno `romance18` su tutto ciò che il pacchetto
   registra; il motore scarta una regola o una risposta `romance18` finché il blocco è spento, in qualunque stato.
3. **Contenuto**: un pacchetto `romance18` può contenere solo il livello 3 (ogni regola `romanceTier = 3`, ogni risposta
   `tier = 3`), e solo un pacchetto `romance18` può contenere il livello 3.

### 12.3 Pacchettizzazione

`tools/package_release.py` legge il `.toc` di ogni cartella; quella con `## X-AzerothUnspoken-Romance:` resta fuori da
`AzerothUnspoken-<versione>.zip` (lo zip che riceve CurseForge) e si comprime da sola in
`AzerothUnspoken_Romance18-<versione>.zip`, allegato solo alla release di GitHub. Un test prova che lo zip principale non
la contiene mai. Il workflow di rilascio e le sue note dicono dove va il secondo zip; la descrizione su CurseForge non lo
nomina.

### 12.4 Scrivere per il pacchetto

`AzerothUnspoken_Romance18/README.md` documenta: il formato delle regole (lo stesso di `PACK_FORMAT.md`), gli eventi
(`npcd_romance_*`, `romance_scene`, `romance_inner`), le condizioni che devono o possono comparire (`romanceTier = 3`
sempre; `romanceStage`, `romanceMoment`, `romancePhase`, `romanceDate`, `romanceKind`), il formato delle risposte con
`tier = 3`, la regola per cui nulla può riguardare un minore o l'assenza di consenso, e come provarlo offline. Gli esempi
scritti da questo progetto sono pochi e maturi, mai una descrizione sessuale esplicita; i testi più forti sono il
pacchetto del loro autore.

## 13. Dati salvati

`relationships.version` 9 → **10** (`R.VERSION`):

```lua
npcs[npcID].romance = {
	st = "courtship",     -- interest | courtship | declared | vowed | ended | past
	t = 1764000000,       -- ultima risposta di corteggiamento
	rf = 1,               -- rifiuti di fila
	cd = 1764072000,      -- nessun corteggiamento prima di quest'ora
	jl = nil,             -- gelosia da quando
	dt = 1763900000,      -- ultimo appuntamento
	mo = { declaration = 1764259200 },   -- prossimo momento permesso di ogni momento
	endT = nil,           -- la rottura
	mm = 2,               -- slancio
	jp = true,            -- la gelosia dell'amato aspetta il prossimo incontro
}
relationships.beloved = 12345   -- un npcID, o nil
```

`CleanRecord` conserva `romance` tramite `R.CleanRomance` (solo fasi note, tempi nel passato o `cd`/`mo` nel futuro
vicino, contatori piccoli), e `beloved` solo se quell'NPC esiste in fase `declared` o `vowed`. Migrazione 9 → 10 come
nell'ADR (punto 10). Impostazioni dell'account: `relations.romanceActive = true`, `relations.romanceTone = 1`, `relations.romanceAdult = false`.

## 14. Nuovi pezzi del motore

- **Condizioni** (`Engine/RuleEngine.lua`, condizioni di relazione per il validatore): `romanceStage`, `romanceTier`,
  `romanceOutcome`, `romanceMoment`, `romancePhase`, `romanceDate`, `romanceKind`, `romanceJealous`, `romanceNight`,
  `romanceBeloved` (l'NPC è l'amato), `romanceOther` (il personaggio ha un amato che non è questo NPC).
- **Eventi**: `npcd_romance_welcome`, `npcd_romance_cold`, `npcd_romance_refuse`, `npcd_romance_jealous_open` (voce
  dell'NPC, dialogo), `romance_scene` (narratore, popup), `romance_inner` (voce interiore: dopo un corteggiamento, in una
  locanda di notte pensando all'amato, dopo una rottura).
- **Tipi di ricordo**: `relation_declared` (permanente), `relation_date`, `relation_jealous`, `relation_breakup`
  (permanente), `relation_refused`.
- **Modulo**: `Systems/Romance.lua` (`NS.Romance`), sopra `NS.Relationships`, così `Relationships.lua` (oltre 3.000
  righe) non cresce ancora; tiene le condizioni d'accesso, il punteggio, le fasi, i momenti, la gelosia, la rottura, il
  tono e il caricamento del pacchetto. Il popup è `UI/RomanceFrame.lua`.

## 15. Contenuti da scrivere (R3, italiano e inglese, livelli 1-2)

Subagenti scrittori su Opus. Quantità proposte per lingua (varianti comprese):

| Che cosa | Quantità |
|---|---|
| risposte di corteggiamento (etichette) | circa 40, di ogni tipo, livelli 1-2, alcune per ruolo |
| repliche dell'NPC (accoglie, freddo, rifiuta) | circa 240: 3 esiti × 2 livelli × i 7 temperamenti e un gruppo generico × i ruoli che contano (locandiere, guardia, mercante, addestratore, chi dà missioni), 2-3 varianti |
| aperture gelose | circa 20 |
| scene del popup | circa 90: 3 momenti × fasi × livelli, le proposte di appuntamento |
| voce interiore | circa 60 |
| ricordi del diario e avvisi | circa 30 chiavi |
| `romance.exclude` | gli NPC bambini del registro curato e delle capitali, per npcID |

Ogni testo è cortese o pudico (il livello 2 sfuma al nero), mai pubblico, mai su un minore.

## 16. Privacy

Le regole romantiche non possono usare la voce `character` (errore del validatore); il narratore non propone mai la
chat per un evento romantico; il popup e il dialogo tengono il distintivo *dialogo ambientale dell'addon*; i ricordi del
diario contengono identificatori, mai un nome; non si invia nulla, nel gioco non cambia nulla.

## 17. Test (per step)

- **R1**: `Tests/TestNPCRomance.lua` (le condizioni d'accesso, l'ADR 0037 invariato con il romanticismo attivo spento),
  il nuovo `Tests/TestRomance.lua` (parti del punteggio ed esiti con un caso fissato, ogni fase e momento, un solo amato,
  gelosia nella stessa città e lontano, rottura, scelta del tono, le serrature del blocco, migrazione 9 → 10 e pulizia),
  `TestValidator` (l'eccezione delle risposte di corteggiamento e i suoi errori).
- **R2**: `Tests/TestRomanceFrame.lua` (gli stati del popup, Esc e combattimento, la dissolvenza), il dialogo con le
  risposte di corteggiamento, la sezione delle Impostazioni, i comandi e il gruppo d'aiuto, il token in
  `check_mockups`, i mockup e gli asset generati.
- **R3**: i conteggi dei contenuti in `run_tests.py`, `TestSchema`, `TestValidator`; ogni regola romantica ha `romanceTier`.
- **R4**: il pacchetto si registra solo con il blocco, il test di pacchettizzazione (lo zip principale non ha cartelle
  `X-AzerothUnspoken-Romance`; il secondo zip sì), il validatore sul pacchetto.

## 18. Step

| Step | File (principali) | Fatto quando |
|---|---|---|
| R0 | ADR 0061, questa specifica e il suo gemello, sette mockup, ROADMAP, CHANGELOG | documenti uniti |
| R1 | `Systems/Romance.lua`, `Data/Romance.lua`, `Data/Relationships.lua`, `Systems/Relationships.lua` (versione 10, pulizia, migrazione, lettura dal bersaglio), `Systems/NPCAlive.lua` (risposte, validatore), `Engine/RuleEngine.lua`, uso di `Core/Consent.lua`, `Core/Config.lua`, test, wiki, G1 | i test passano |
| R2 | `UI/RomanceFrame.lua`, `UI/DialogueFrame.lua`, `UI/SettingsFrame.lua`, `UI/RelationsFrame.lua`, `UI/Commands.lua`, `UI/Theme.lua` (`voice-romance`), file di lingua, mockup e asset, wiki | test e controlli dei mockup passano |
| R3 | `Data/RegistryRomance.lua`, `AzerothUnspoken_enUS|itIT/Romance.lua`, `Data/<lingua>/RelationsUI.lua`, le risposte di corteggiamento, `romance.exclude` | conteggi e validatore passano |
| R4 | `AzerothUnspoken_Romance18/`, `tools/package_release.py`, il workflow di rilascio, il suo README, test | il test di pacchettizzazione passa |

## 19. Mockup (R0)

| Pagina | Mostra |
|---|---|
| `romance-dialogue-flirt` | la finestra del dialogo con tre risposte neutre e due di corteggiamento (cuore, colore), una evidenziata con il suggerimento |
| `romance-refusal` | il rifiuto dell'NPC come battuta del dialogo, le risposte neutre ancora lì, la voce interiore nel riquadro del narratore |
| `romance-popup-declaration` | il popup alla dichiarazione: la scena, *Apri il tuo cuore* e *Non ancora* |
| `romance-popup-date` | il popup a un appuntamento in locanda di notte: tre proposte con le etichette di livello e *Non stasera* |
| `romance-popup-aurora` | il popup dopo un appuntamento accolto, che sfuma al nero, nel tema chiaro |
| `romance-settings-gate` | la sezione *Romanticismo* delle Impostazioni e la finestra di conferma del client per il consenso 18+ |
| `romance-journal` | la scheda Ricordi del diario con una dichiarazione, una gelosia e una rottura |

## 20. Non verificato nel client

Tutto; in particolare: `UnitSex` e `UnitCreatureType` per il `target` del dialogo; la finestra del dialogo con cinque
risposte; lo strato del popup sopra il narratore e il dialogo; Esc sul popup; i tempi della dissolvenza al nero;
`C_AddOns.LoadAddOn` o `LoadAddOn` per una cartella LoadOnDemand in 1.60.1; se una festa possa essere nota del tutto.

## 21. Che cosa ha fissato lo step R1

Il motore (`Systems/Romance.lua`, `NS.Romance`) segue questa specifica, con questi dettagli fissati mentre lo si
costruiva:

- **Le impostazioni** sono chiavi semplici di `relations` dell'account: `romanceActive` (acceso), `romanceTone` (1-3,
  controllato da `Config.rules`), `romanceAdult` (spento).
- **È l'interfaccia a decidere quando si vede qualcosa.** Le risposte romantiche si offrono solo quando la finestra del
  dialogo dice di poterle disegnare (`NS.DialogueFrame.ROMANCE = true`, impostato da R2), le risposte dei momenti solo
  quando il popup esiste (`NS.RomanceFrame.Open`). Fino ad allora il voto dell'ADR 0037 arriva da solo, come prima; con il
  romanticismo attivo acceso, l'NPC di quel voto diventa l'amato (fase `vowed`) se il posto è libero. Con il popup, il voto
  aspetta il suo momento (`R:RomanceHoldsVow`).
- **Una risposta di una fase più avanti** di quella dell'NPC può comparire (mai oltre il corteggiamento) e costa
  `affinity.stage.ahead`.
- **Una situazione intima** permette ogni livello che il giocatore permette (2, o 3 con il consenso e il pacchetto);
  altrimenti 1. Il lutto che tiene il tono cortese è l'emozione dominante *melancholic*; `affinity.mood` usa le emozioni
  di `Systems/Emotion.lua`. `tone.mix` ha un peso anche per il livello 3.
- **La gelosia nella stessa città** vuole entrambe le città note (`rec.town`); una città ignota vale come lontana. La
  gelosia in attesa è `jp`; si racconta al prossimo incontro (`R:RomanceMet`). Una fase `none` non si salva mai; `ended`
  torna a `none` al primo incontro dopo `breakup.restDays`.
- **Il temperamento** scala le righe del romanticismo come ogni altra riga: un rifiuto costa 1 punto di attrazione per il
  temperamento dell'NPC.
- **Le scene del popup** sono prosa: le loro regole hanno la voce `narrator` e `form = "say"`.
- **Il validatore**: i problemi di una risposta romantica sono errori `badDialogue` sulla chiave `flirt:<pacchetto>:<id>`;
  una regola romantica senza `romanceTier` è `romanceTier`, una nella voce del personaggio `romanceVoice`.
- **Per R2**: `Romance:Flirts`, `Romance:Answer`, `Romance:Reply`, `Romance:DueMoment`, `Romance:DateOptions`,
  `Romance:Decide`, `Romance:Scene`, `Romance:BreakUp`, `Romance:SetTone`, `Romance:SetAdult`, `Romance:PackState`,
  `Romance:Status` e l'ultimo punteggio in `Romance.session.last` (per `/au romance why`). Il pacchetto 18+ si carica con
  `NS.Packs:Load`.

## 22. Che cosa ha fissato lo step R2

- **Il token** `voice-romance` è in `UI/Theme.lua` (33 token: i 27 dell'addon gemello e sei voci), in
  `tools/mockup_lib.py` e in `mockups.css`; il tipo di pulsante `romance` di `UI/Widgets.lua` lo usa sul bordo e
  sull'etichetta (5,7:1 o più su `surface-3`).
- **La finestra del dialogo** costruisce cinque pulsanti di risposta (`DialogueFrame.MAX_BUTTONS`); una risposta
  romantica è `romance` con il cuore 6 unità prima dell'etichetta, ed esistono i tasti *risposta 4* e *5* (non assegnati,
  come 1-3). `DialogueFrame.ROMANCE` accende le risposte romantiche del motore.
- **Il popup** (`UI/RomanceFrame.lua`) mostra una riga semplice dell'interfaccia per ogni momento e fase
  (`rom_scene_<momento>_<fase>`) quando nessuna riga dei contenuti va bene: R3 porta le scene vere. La sua posizione si
  conserva per personaggio (`windows.AzerothUnspokenRomance`). Un appuntamento mostra al massimo quattro proposte.
- **Il comando** `/au romance` è una riga del gruppo *Personaggio* di `/au help`, non un gruppo a sé.
- **Impostazioni > Romanticismo** viene subito dopo *Privacy*; con l'asse dell'attrazione spento, *Romanticismo attivo* è
  disattivato e dice che cosa gli serve; *Esplicito* è disattivato finché il consenso è spento.

## 23. Che cosa ha fissato lo step R3

- **Il pacchetto** `base_romance`: 133 regole in `Data/RegistryRomance.lua` (70 risposte degli NPC: qualunque NPC ai due
  livelli, i sette temperamenti, i cinque ruoli, il tipo di corteggiamento, la persona amata e un NPC che sa di un'altra
  persona amata; 11 aperture gelose; 32 scene: ogni momento e fase, le quattro proposte dell'appuntamento; 20 pensieri),
  387 testi per lingua in `AzerothUnspoken_enUS|itIT/Romance.lua`, scritti da cinque scrittori Opus su un'unica
  traccia e controllati dal validatore dell'addon. Gli id sono `rom.<cosa>.<livello o fase>.<chi>`. `romance_inner` ha
  probabilità 70 e una pausa di 300 s.
- **Le risposte di corteggiamento**: 45 in `Data/RomanceFlirts.lua` (sguardi, parole, piccoli doni trovati per strada,
  passeggiate, inviti, dieci per mestiere, cinque intime, quattro momenti; prima la risposta serale dell'appuntamento).
  Un pacchetto spento non offre nemmeno le sue risposte.
- **L'NPC di una frase**: `Romance:Person` mette nel contesto di ogni frase romantica il nome dell'NPC (`{other}`) e il
  suo sesso (`{og:}`); senza la lettura del client il sesso è l'opposto di quello del personaggio (il romanticismo è
  solo con il sesso opposto).
- **Il popup** colora le parole dell'NPC tra virgolette nella voce dell'NPC (punto 11.2; `RomanceFrame.Voiced`) e si
  ridisegna al cambio di tema.
- **Il validatore** misura una scena (`romance_scene`, `Validator.READ_ONLY_EVENTS`) sul limite READING (600 byte), non
  sull'emote del narratore: il popup si legge, non si propone mai in chat.
- **I bambini** esclusi: gli npcID di Lil Timmy e degli orfani della Settimana dei bambini (numeri di Classic Era, da
  verificare in gioco). Il registro curato non ne ha.
- **Non scritti**: il pensiero alla locanda di notte rivolto alla persona amata (nessun evento lo fa scattare ancora; i
  pensieri seguono solo un corteggiamento) e nuove chiavi del diario (quelle di R1 bastano per i cinque ricordi).
