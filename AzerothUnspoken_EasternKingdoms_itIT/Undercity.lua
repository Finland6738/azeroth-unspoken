-- Italian texts of the regional pack eastern_undercity (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/Undercity.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("tirisfalglades", "itIT", "eastern_undercity", [==[
	["und.journey.arrival.01"] = {
		"scende dal pipistrello sul lastricato spaccato tra le rovine, poi si avvia agli ascensori che sprofondano verso la città.",
		"atterra all'ombra del palazzo caduto e si volta verso i grandi ascensori, mentre il bagliore verde sale già dal basso.",
		"scivola giù dalla groppa del pipistrello tra colonne spezzate, con le membra rigide per il volo, e cerca la via per scendere.",
	},
	["und.journey.arrival.02"] = {
		"Casa, o quello che ne abbiamo fatto. Le rovine sopra, la città sotto, e in mezzo la pace della Dama Oscura.",
		"Sotto Lordaeron, ancora una volta. Non è calda e non è luminosa, ma è nostra, e nessuno ce l'ha regalata.",
	},
	["und.journey.arrival.03"] = {
		"Giù dal pipistrello. Le ginocchia sono rimaste lassù.",
		"Mai più su quell'affare. Fino alla prossima volta, s'intende.",
	},
	["und.journey.start.01"] = {
		"risale dalle profondità della città e monta sul pipistrello che aspetta; un attimo dopo le rovine sono una macchia grigia là sotto.",
		"si lascia alle spalle il bagliore verde della città per l'aria aperta, aggrappandosi a un pipistrello che sale a colpi d'ala oltre le torri spezzate.",
		"scambia i canali col cielo in un solo balzo, mentre l'addestratore dei pipistrelli torna già verso le rovine.",
	},
	["und.journey.start.02"] = {
		"Fuori dalla città e dritti nel cielo. Dopo la melma, persino il vento profuma di regalo.",
		"Su, lontano dal verde. Qualunque cosa ci aspetti là fuori, almeno ha il cielo per soffitto.",
	},
	["und.journey.start.03"] = {
		"Pipistrelli. Ma certo, pipistrelli. I Reietti non fanno mai niente nel modo più comodo.",
		"Piano, ali. Non sono mica una falena.",
		"Stai fermo, coso di cuoio. Vorrei atterrare in un pezzo solo.",
	},
	["und.muse.01"] = {
		"I canali emanano un verde malato, denso come una zuppa, e qui nessuno ci getta nemmeno un'occhiata.",
		"Melma verde in ogni canale, che illumina la pietra dal basso. Quaggiù passa per un fiume.",
		"L'intera città è illuminata dalla sua melma. Quel verde ti entra nei vestiti e non se ne va più.",
	},
	["und.muse.02"] = {
		"osserva un abominio passare durante la ronda, la carne cucita che ondeggia, il pavimento di pietra che trema appena a ogni passo.",
		"si fa da parte per un enorme abominio di pattuglia; quello non abbassa lo sguardo, e il suolo vibra sotto il suo peso.",
	},
	["und.muse.03"] = {
		"Più in basso, nel Quartiere Reale, la Regina Banshee tiene la sua corte. Tutta la città sembra trattenere il fiato attorno a lei.",
		"La Dama Oscura governa dalla sala più interna. Qui tutto si piega verso quel silenzio, come l'acqua verso uno scolo.",
	},
	["und.muse.04"] = {
		"Dopo un po' l'odore non lo senti più. È questo che mi preoccupa.",
		"Posto incantevole. Porta uno stomaco forte, oppure nessuno.",
	},
	["und.muse.05"] = {
		"Sopra le nostre teste la sala del trono di Lordaeron è aperta al cielo. Noi viviamo nelle sue cantine, e certi giorni mi sembra proprio giusto.",
		"Un tempo i vivi passeggiavano nelle sale lassù e seppellivano i loro morti quaggiù. Ora i morti tengono casa di sotto, e le sale sono macerie.",
		"Forse una volta stavo nella piazza qui sopra, ad applaudire una parata. Il ricordo c'è, sotto tutto il resto, come una moneta sotto le assi del pavimento.",
	},
	["und.muse.06"] = {
		"L'Apothecarium ronza di vetri che gorgogliano e di voci sommesse. Preferirei non sapere cosa c'è nei grandi tini. E vorrei tanto saperlo.",
		"Dall'Apothecarium escono fumi di colori che non dovrebbero esistere. Là dentro qualcuno è molto indaffarato, e molto soddisfatto.",
	},
	["und.muse.07"] = {
		"Niente cielo, quaggiù. Alzo gli occhi per abitudine e trovo pietra. Ai Reietti non sembra mancare.",
		"Un'intera città senza vento né stagioni. I miei alleati qui stanno a loro agio; io continuo a contare i passi fino agli ascensori.",
	},
	["und.muse.08"] = {
		"Nel Quartiere del Commercio gli affari vanno bene. La morte non ha guarito nessuno dal vizio di mercanteggiare.",
		"Mercanti che gridano i prezzi tutt'attorno all'anello, impiegati della banca che contano alla luce delle lampade. Certi mestieri sopravvivono a chi li fa.",
	},
	["und.muse.09"] = {
		"Ogni anello di questo posto è uguale a quello prima. Da che parte erano gli ascensori?",
		"È la seconda volta che faccio questo giro. La città mi sta prendendo in giro, ne sono {g:sicuro|sicura}.",
	},
	["und.muse.10"] = {
		"ascolta i rumori della città: acqua che gocciola, martelli lontani, una voce che si alza tra le volte e che la pietra inghiotte.",
		"si ferma sotto le arcate buie, dove ogni passo rimbalza due volte, un po' più lento di come è partito.",
	},
	["und.npc.banker.01"] = {
		"Tienimelo al sicuro, va bene? Non che qui qualcuno abbia fretta di spenderlo.",
		"Chiudilo bene. In questa città perfino le monete hanno l'aria stanca.",
	},
	["und.npc.guard.01"] = {
		"La guardia mi guarda passare senza una parola né un battito di ciglia. In questa città niente spreca fatica.",
		"Una sentinella della città, immobile, paziente come la pietra che la circonda. Dubito che le sfugga granché.",
	},
	["und.npc.innkeeper.01"] = {
		"riceve dall'oste un inchino che scricchiola un poco, e l'offerta di un angolo tranquillo.",
		"scambia due parole con l'oste, di una cortesia impeccabile e con un sorriso che ormai è soprattutto un ricordo.",
	},
	["und.quest.01"] = {
		"Fatto. Quaggiù persino la gratitudine arriva un po' fredda.",
		"Finito. Qualcuno in questa città se ne ricorderà, a modo suo, asciutto.",
		"Sistemato. Ora, sotto queste volte dev'esserci pure una panca che non sia umida.",
	},
	["und.quest.02"] = {
		"Un servizio reso alla Dama Oscura. Ci ha restituito la volontà; il minimo che posso fare è usare la mia.",
		"Siamo pochi, quindi ogni compito portato a termine conta. Questo l'ho portato a termine.",
		"Fatto, per Sylvanas e per chi tra noi, al risveglio, non aveva più nessuno da ritrovare.",
	},
	["und.quest.03"] = {
		"prende il compenso sotto il bagliore verde della città e lo mette via senza contarlo.",
		"riceve un asciutto ringraziamento e qualche moneta, poi torna nel lento viavai dell'anello.",
	},
	["und.rest.01"] = {
		"Al sicuro sotto la pietra. La strada può aspettare fuori, in cima agli ascensori, dove deve stare.",
		"Dentro la città, o meglio sotto. Le spalle si sciolgono, che io lo voglia o no.",
		"Quaggiù niente mi dà la caccia. È uno strano conforto, ma è un conforto.",
	},
	["und.rest.inn.01"] = {
		"si sistema in un angolo della locanda del Quartiere del Commercio, dove gli avventori parlano piano e il silenzio non disturba nessuno.",
		"si siede nella locanda del Quartiere del Commercio; una tazza compare sul tavolo senza che nessuno l'abbia chiesta.",
	},
	["und.ret.01"] = {
		"La stessa luce verde, gli stessi echi lenti. La città non è cambiata dall'ultima volta che sono {g:sceso|scesa} quaggiù, e scopro di esserne {g:contento|contenta}.",
		"Eccomi ancora quaggiù. So quale ascensore cigola e quale mercante fa la cresta sul prezzo. È un modo di sentirsi a casa.",
	},
	["und.sub.magic.01"] = {
		"Il Quartiere della Magia. Qui l'aria pizzica, e le ombre negli angoli non corrispondono sempre a chi le proietta.",
		"Gli incantesimi restano sospesi nell'aria del Quartiere della Magia come la polvere in una biblioteca. Meglio non toccare niente.",
	},
	["und.sub.rogues.01"] = {
		"entra nel Quartiere dei Ladri, dove le conversazioni calano a un mormorio e riprendono solo dopo il suo passaggio.",
		"entra nel Quartiere dei Ladri sotto gli occhi di figure che sembrano non avere niente da fare, e lo fanno con molta attenzione.",
	},
	["und.sub.trade.01"] = {
		"entra nel Quartiere del Commercio, un ampio anello di botteghe, banchieri e banditori, dove ogni voce rimbalza sulla pietra delle volte.",
		"si immerge nel viavai del Quartiere del Commercio, coi mercanti che chiamano dalle nicchie e un odore di pergamena vecchia e olio di lampada sospeso su tutto.",
	},
	["und.sub.war.01"] = {
		"Il Quartiere della Guerra. Bene. Mi serviva il suono dell'acciaio.",
		"Quartiere della Guerra. Lame affilate, pazienza corta. Mi troverò bene.",
	},
	["und.wc.rain.01"] = {
		"Piove sulle rovine, a sentire il rumore. Quaggiù arriva come un gocciolio lento attraverso la pietra, e arriva tardi.",
		"Lassù sta piovendo su Lordaeron. La città se ne accorge solo dall'umido che striscia lungo i muri.",
		"I canali salgono di un dito: lassù piove, dunque. Quaggiù nessuno alza lo sguardo.",
	},
	["und.greet.w02.01"] = {
		"Buonasera, o buongiorno. Quaggiù è difficile dirlo. Salute, in ogni caso.",
		"Salute. Attenzione ai canali: quello che ci cade dentro non lo restituiscono.",
	},
	["und.muse.w02.01"] = {
		"Accanto alla Regina Banshee c'è un signore del terrore, tutto ali e cortesia. Qui, quando se ne parla, si abbassa la voce, e se ne parla di rado.",
		"Varimathras non lascia il Royal Quarter e sorride al nulla. I Reietti lo tengono d'occhio come si guarda un fuoco acceso troppo vicino al tetto di paglia.",
	},
	["und.muse.w02.02"] = {
		"segue la curva dell'anello oltre nicchie dove un tempo giacevano bare, ora piene di casse e di pezze di stoffa.",
		"passa davanti a un'alcova scavata per i morti tanto tempo fa, dove adesso un mercante tiene la bilancia e una lampada.",
	},
	["und.muse.w02.03"] = {
		"Ratti in ogni angolo, grassi e per niente intimoriti. Nessuno qui sembra badarci, e non so bene cosa dica di questa gente.",
		"Un ratto mi ha appena guardato come se {g:l'intruso|l'intrusa} fossi io. Quaggiù, forse, non ha tutti i torti.",
	},
	["und.muse.w02.04"] = {
		"In città si dice che gli speziali stiano preparando una nuova piaga, da rivolgere contro il Flagello. Nessuno dice contro cos'altro potrebbe rivolgersi.",
		"Una piaga per combattere una piaga. Quaggiù la voce gira così, a mezza bocca, e nessuno sembra trovarla strana.",
	},
	["und.quest_complete.w02.01"] = {
		"riceve un cenno da un viso che ormai si muove poco, e scopre che vale più di tanti sorrisi.",
		"si scosta dal banco mentre il compenso viene posato da dita grigie e attente.",
	},
	["und.quest_complete.w02.02"] = {
		"Fatto. Non applaudite tutti insieme. O non applaudite affatto, va bene lo stesso.",
		"Finito. Direi che ha rallegrato il posto, ma per quello ci vorrebbe ben altro.",
	},
	["und.weather_change.w02.01"] = {
		"Tuoni lassù, smorzati da tutta quella pietra. Quaggiù sembra qualcuno che sposta i mobili in una stanza lontana.",
		"Un temporale sulle rovine, a giudicare dal brontolio. Le lampade non tremano nemmeno.",
	},
]==])
