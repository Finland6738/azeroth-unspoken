# Azeroth Unspoken - Romance 18+

> Versione italiana. L'originale inglese è [README.md](README.md); se differiscono, correggerli entrambi.

Un pacchetto **facoltativo** per il romance attivo di Azeroth Unspoken ([ADR 0061](../docs/adr/0061-active-romance-flirt-answers-an-affinity-table-one-beloved-and-three-tone-tiers.md),
[specifica](../docs/specs/romance.it.md), punto 12). Contiene le frasi del terzo livello di tono, **Esplicito**, e resta
muto finché il giocatore non accende l'impostazione 18+.

- **Dove trovarlo:** solo come zip a parte, `AzerothUnspoken_Romance18-<versione>.zip`, allegato ai rilasci del
  repository GitHub del progetto (la pagina Releases). **Mai** su CurseForge, e lo zip principale non lo contiene mai.
  Si estrae in `Interface\AddOns` accanto ad `AzerothUnspoken`.
- **Come si accende:** *Impostazioni > Romance > Romance esplicito (18+)* (o `/au romance adult on`) chiede due volte;
  poi il tono *Esplicito* (`/au romance tone 3`). Solo allora l'addon carica questa cartella. Spegnere l'impostazione 18+
  toglie subito dalla memoria le frasi e le risposte del pacchetto.
- **Cosa contiene:** pochi esempi scritti dal progetto: tre risposte di corteggiamento e nove frasi (risposte del PNG,
  le scene della promessa, due pensieri). Sono **maturi e mai espliciti nei dettagli**: una porta chiusa, un bacio, una
  candela che si spegne. I testi più spinti non fanno parte di questo progetto: sono il pacchetto di un autore, scritto
  nel formato qui sotto.

Il romance è **narrazione privata**. Nulla di qui va mai in chat o al Chat Gateway, cambia una vera finestra di gioco,
una missione o un mercante, o toglie l'etichetta *dialogo ambientale dell'addon* della finestra di dialogo e del popup.

## Le regole per qualsiasi testo scritto per lui

Non sono consigli di stile; un pacchetto che le viola non è uno che questo progetto collegherà o distribuirà mai.

1. **Solo adulti.** Ogni personaggio è adulto. Nulla può coinvolgere, descrivere, suggerire o alludere a un minore, al
   corpo di un bambino o a un'età scolare, in nessuna lingua. I PNG bambini sono già esclusi dal romance
   (`romance.exclude` in `AzerothUnspoken/Data/Romance.lua`); un pacchetto non ne nomina mai uno.
2. **Consenso, sempre.** Un approccio è invitato e accolto. Il PNG può dire *no* (`npcd_romance_refuse`) o *non stanotte*
   (`npcd_romance_cold`), e un no è rispettato, dal PNG e dalla voce interiore. Niente costrizione, pressione,
   ubriachezza, sonno, nessuno che non possa rispondere, nessun "no che vuol dire sì", nessuna punizione.
3. **Nessuna persona reale**, nessun nome di giocatori, nessun URL, nessun testo copiato dal gioco o da altre opere.
4. **Il personaggio non parla mai.** Nessuna frase è nella voce del personaggio (`speaker = "character"`): è il giocatore
   a decidere cosa fa il personaggio, con la risposta che ha scelto.

## I file del pacchetto

```
AzerothUnspoken_Romance18/
  AzerothUnspoken_Romance18.toc
  Registry.lua        le regole
  Flirts.lua          le risposte di corteggiamento
  Texts_enUS.lua      i testi inglesi
  Texts_itIT.lua      i testi italiani
  README.md           questa guida (e README.it.md)
  NOTICE.md           la licenza dei testi
```

Il `.toc`:

```
## Interface: 16001
## Title: Azeroth Unspoken - Romance 18+
## Notes: Optional explicit romance texts for Azeroth Unspoken. Silent unless the 18+ setting is on.
## Dependencies: AzerothUnspoken
## LoadOnDemand: 1
## X-AzerothUnspoken-Romance: 18
```

`## X-AzerothUnspoken-Romance:` è ciò che tiene una cartella fuori dallo zip principale (`tools/package_release.py`).
L'addon carica solo la cartella indicata in `romance.pack18.addon` di `Data/Romance.lua` (`AzerothUnspoken_Romance18`),
e permette il tono *Esplicito* solo mentre quella cartella è caricata. Perciò il pacchetto di un autore sta **in questa
cartella**: aggiungi i tuoi file (con un id di pacchetto tuo) e elencali nel `.toc`, o sostituisci gli esempi. Così il
primo lucchetto (nulla si carica prima del consenso e del tono *Esplicito*) vale anche per i tuoi testi.

## Come si registra una parte: `Register18`

Ogni file avvolge ciò che registra in `AzerothUnspoken.Romance:Register18(pacchetto, fn)`:

```lua
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("mypack18", function()
	AU:RegisterPack({ id = "mypack18", romance18 = true, languages = { "itIT", "enUS" }, registry = { ... } })
end)
```

`fn` gira solo mentre il consenso 18+ è acceso. Quando il giocatore spegne il consenso, il motore toglie tutto ciò che il
pacchetto aveva registrato (regole, i loro testi, risposte); quando lo riaccende, `fn` gira di nuovo. Costruisci le
tabelle **dentro** `fn` (il motore svuota le tabelle di un pacchetto registrato). Mai chiamare `RegisterPack` o
`RegisterDialogues` fuori da lì.

## Le regole (`Registry.lua`)

Il formato delle regole è quello di [`PACK_FORMAT.md`](../AzerothUnspoken/PACK_FORMAT.md) (*One rule*, *Conditions*),
con `romance18 = true` sul pacchetto. Un pacchetto 18+ non dichiara eventi propri: usa i sei eventi del romance attivo,
che dichiara l'addon di base.

| Evento | Voce | Cos'è | Byte |
|---|---|---|---|
| `npcd_romance_welcome` | `npc` | il PNG accoglie l'approccio, nella finestra di dialogo | 255 |
| `npcd_romance_cold` | `npc` | il PNG dice *non ora*, con garbo | 255 |
| `npcd_romance_refuse` | `npc` | il PNG dice *no* | 255 |
| `npcd_romance_jealous_open` | `npc` | l'apertura gelosa della persona amata (scelta solo al livello 1: a un pacchetto 18+ non serve) | 255 |
| `romance_scene` | `narrator`, `form = "say"` | la prosa del popup del romance (i momenti `declaration`, `date`, `vow`) | 600 |
| `romance_inner` | `inner` | il pensiero privato del personaggio dopo un approccio | 255 |

I limiti contano i byte UTF-8, con `{other}` già sostituito; le lettere accentate italiane valgono due.

### Condizioni

| Condizione | | Significato |
|---|---|---|
| `romanceTier = 3` | **obbligatoria** | su ogni regola. Il validatore rifiuta una regola di un pacchetto 18+ senza, con un altro livello o su un evento che non è uno dei sei (errore `romance18`); e rifiuta il livello 3 in un pacchetto senza `romance18 = true` |
| `romanceStage` | facoltativa | lo stadio con il PNG: `declared` o `vowed` sono gli unici in cui il livello 3 può capitare (il livello della situazione, specifica 9.2) |
| `romanceMoment` | facoltativa | `vow` (l'unico momento che arriva al livello 3: la dichiarazione avviene prima dello stadio `declared`, un appuntamento prende il livello della sua opzione, 1 o 2) |
| `romancePhase` | facoltativa | `open`, `welcome` (dopo la promessa, sempre `welcome`) |
| `romanceDate` | facoltativa | l'opzione dell'appuntamento (`walk`, `supper`, `stargaze`, `night`): oggi nessuna è di livello 3, quindi una regola di livello 3 con questa condizione non esce mai |
| `romanceKind` | facoltativa | il tipo di approccio: `glance`, `compliment`, `gift`, `walk`, `invite`, `moment` |
| `romanceOutcome` | facoltativa | per `romance_inner`: la risposta a cui segue il pensiero, `welcome`, `cold`, `refuse` (o un elenco) |
| `romanceBeloved`, `romanceOther`, `romanceNight` | facoltative | il PNG è la persona amata; il personaggio ama un altro; la notte del romance |
| `other = { temperament = ..., role = ... }` | facoltativa | il temperamento e il ruolo del PNG, come nelle frasi di base |

Può comparire anche ogni altra condizione di `PACK_FORMAT.md`. Una scena nomina il PNG con `{other}`; l'italiano si
accorda con il personaggio con `{g:m|f}` e con il PNG con `{og:m|f}`. Le risposte del PNG devono andare bene per un PNG
di entrambi i sessi.

```lua
["mypack18.welcome.t3.n1"] = { event = "npcd_romance_welcome", speaker = "npc", styles = { "intimate" },
	tags = { "topic:romance" }, theme = "home", weight = 1,
	conditions = { romanceTier = 3 } },
["mypack18.scene.vow.welcome.t3"] = { event = "romance_scene", speaker = "narrator", form = "say",
	styles = { "intimate" }, tags = { "topic:romance" }, theme = "home",
	conditions = { romanceTier = 3, romanceMoment = "vow", romancePhase = "welcome" } },
```

Una scena accolta di livello 2 o 3 **sfuma nel nero** nel popup dopo il testo: scrivila in modo che finisca con una frase
di chiusura.

### Testi

```lua
AU.Romance:Register18("mypack18", function()
	AU:AddTexts("itIT", { ["mypack18.welcome.t3.n1"] = { "Prima variante.", "Seconda variante." } }, "mypack18")
end)
```

Due o tre varianti per regola e lingua; ogni lingua del pacchetto (`languages`) per ogni regola.

## Le risposte di corteggiamento (`Flirts.lua`)

Il formato del punto 4.1 della specifica e di `PACK_FORMAT.md` (*Ambient dialogues*), con `romance18 = true` e
`tier = 3`:

```lua
AU.Romance:Register18("mypack18", function()
	AU:RegisterDialogues({ pack = "mypack18", romance18 = true, flirts = {
		{ id = "stay_night", kind = "invite", stage = { "declared", "vowed" }, tier = 3, when = { romanceNight = true },
			label = { en = "Ask them to stay the night with you.", it = "Chiedi di restare con te stanotte." } },
	} })
end)
```

- `id`: `a-z`, `0-9`, `_`, unico nel pacchetto. `kind`: `glance`, `compliment`, `gift`, `walk`, `invite` (una risposta
  `moment` è dell'addon di base).
- `stage = { da, a }`: `declared` e `vowed` (il livello 3 non è mai offerto prima).
- `tier = 3`, sempre (i livelli 1 e 2 in un pacchetto 18+ sono un errore).
- `label`: ciò che fa il giocatore, al massimo 70 byte, nessun `{segnaposto}`, in ogni lingua dell'addon (inglese e
  italiano).
- `roles`, `when`: facoltativi, come nelle risposte di base.

Il PNG risponde con una frase di `npcd_romance_<esito>`. Una risposta 18+ è offerta solo quando tutte le condizioni del
romance attivo valgono, il consenso 18+ è acceso, il tono è *Esplicito* e il momento è intimo (un PNG dichiarato o
promesso, di notte in una locanda o a riposo).

## Come provarlo senza il gioco

Servono Python 3 e `lupa` (`pip install lupa`), da una copia del repository.

1. Metti i tuoi file in `AzerothUnspoken_Romance18/` ed elencali nel suo `.toc`.
2. `python -I -X utf8 Tests/run_tests.py AzerothUnspoken`: tutta la batteria. Il suo test `TestRomance18` installa
   `AzerothUnspoken_Romance18` come fa un giocatore, controlla i tre lucchetti ed esegue il validatore sugli esempi. Per
   controllare il tuo pacchetto allo stesso modo, copia `Tests/TestRomance18.lua`, cambia `PACK` e i conteggi, e
   aggiungi il nome all'elenco dei test in `run_tests.py`.
3. `python -I -X utf8 Tests/check_package.py`: lo zip principale non contiene mai una cartella segnata
   `X-AzerothUnspoken-Romance`.

In gioco, con il pacchetto installato e l'impostazione 18+ accesa: `/au validate mypack18` esegue lo stesso validatore,
e `/au romance why` dice quanto ha ottenuto l'ultimo approccio e a quale livello.

## Licenza

I testi d'esempio di questa cartella sono frasi e dati narrativi: vedi [NOTICE.md](NOTICE.md) e
[LICENSING.md](../LICENSING.md). I testi che scrivi per il tuo pacchetto sono tuoi.
