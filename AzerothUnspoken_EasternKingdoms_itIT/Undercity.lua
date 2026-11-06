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
	["und.dawn.w05.001"] = {
		"nota che chi scende dagli ascensori è cambiato: meno lanterne in mano, più facce che sbattono le palpebre per l'alba di lassù.",
		"sente le guardie degli ascensori darsi il cambio mentre l'alba spunta sopra le rovine, invisibile e ignorata quaggiù.",
		"non vede nessuna alba, solo i primi corrieri della giornata che scendono di fretta le rampe con il freddo del mattino ancora addosso.",
	},
	["und.dusk.w05.001"] = {
		"Il tramonto, lassù a Tirisfal. Quaggiù le lampade erano già accese, e accese resteranno. La città non conosce la sera.",
		"Lassù la luce se ne va. Quaggiù esce più gente, come se il crepuscolo fosse il mattino della città.",
		"Il giorno finisce sopra le rovine, e le volte si animano un po'. A quanto pare, molti Reietti preferiscono mettersi in strada al crepuscolo.",
	},
	["und.farewell.w05.001"] = {
		"Addio. Non sporgerti sui canali: si sporgono anche loro.",
		"Io vado. Saluta gli ascensori da parte mia, e da parte delle mie ginocchia.",
		"Stammi bene. E se un ratto ti propone un affare, rifiuta.",
	},
	["und.farewell.w05.002"] = {
		"Buon cammino, e che la strada ti riporti in queste sale.",
		"Strade sicure, lassù. La città resterà qui, come sempre.",
	},
	["und.farewell.w05.003"] = {
		"Alla prossima. Stai alla larga dalle porte dell'Apothecarium: da lì le cose escono di corsa.",
		"Arrivederci. Su con l'ascensore, e occhio ai pipistrelli all'uscita.",
	},
	["und.greet.w05.001"] = {
		"Salute. Occhio a dove metti i piedi: quaggiù il pavimento suda.",
		"Ciao. Vieni, spostiamoci dal viavai degli ascensori.",
	},
	["und.greet.w05.002"] = {
		"Che piacere incontrarti sotto il tetto della Dama Oscura.",
		"Salve. Che le lampade di questa città ti rischiarino la strada.",
	},
	["und.greet.w05.003"] = {
		"Ehi, tranquillità: quaggiù nessuno morde. Be', quasi nessuno.",
		"Ehilà! Che bello incontrare qualcuno in una città dove quasi tutti saltano i convenevoli.",
	},
	["und.jest.w05.001"] = {
		"Undercity: l'unica città dove 'stanco morto' è una voce del censimento.",
		"Ho chiesto a uno speziale qualcosa per il mal di testa. Mi ha chiesto quale testa, e di chi.",
		"A Undercity l'affitto costa poco. I vecchi inquilini non ci abitavano più.",
	},
	["und.journey.w05.001"] = {
		"scende con l'ascensore dentro la pietra, mentre l'apertura del pozzo si restringe lassù fino a diventare un ricordo.",
		"resta sulla piattaforma che scende mentre l'aria si fa fresca e immobile, e l'ultimo vento del volo si perde a ogni braccio di discesa.",
		"mette piede in fondo al pozzo con il volo che ancora ronza nelle gambe, e i primi odori della città {g:gli|le} vengono incontro.",
	},
	["und.journey.w05.002"] = {
		"Dalla groppa del pipistrello la città non si vede affatto: solo un castello spezzato su un'altura. Undercity comincia soltanto quando ci passi sotto.",
		"Lassù Lordaeron è una rovina che si potrebbe credere deserta. Poi l'ascensore ti porta giù, e la rovina si rivela una cantina piena di gente.",
	},
	["und.journey.w05.003"] = {
		"Tutto quello che ho addosso adesso sa di pipistrello. La città non se ne accorgerà; io sì.",
		"Il mantello puzza come l'interno di un campanile. Delizioso. Quaggiù mi mimetizzo alla perfezione.",
		"Vento lassù, umido quaggiù. Il cappello l'ho perso da qualche parte nel mezzo.",
	},
	["und.journey.w05.004"] = {
		"Ho ancora nelle orecchie il battito di quelle ali di cuoio. Quaggiù svanisce piano, dentro il gocciolio e le voci basse.",
		"Per un po' le ali del pipistrello sono state la cosa più rumorosa del mondo. Ora lo è una goccia, da qualche parte alla mia sinistra, e ne sono {g:grato|grata}.",
	},
	["und.journey.w05.005"] = {
		"Fuori dal cielo aperto e di nuovo sotto la pietra. I vivi lo chiamano scendere; per noi è entrare.",
		"Il volo è roba da vivi, vento compreso. Questo, il fresco e il silenzio sotto la pietra, è fatto per quelli come me.",
	},
	["und.journey.w05.006"] = {
		"A metà discesa l'aria cambia: il freddo pulito lascia il posto a un odore fresco e chiuso, con qualcosa di amaro sotto. Undercity, dunque.",
		"Prima il vento, poi le rovine, poi questo: aria ferma che sa appena di olio da lampada e pietra vecchia. I polmoni ci mettono un momento ad abituarsi.",
	},
	["und.journey.w05.007"] = {
		"scende dalla notte di lassù in una città che non si è mai accorta che fosse notte, con le lampade accese come sempre.",
		"lascia il buio delle rovine per il buio delle volte, e scopre che il secondo è meglio illuminato.",
		"arriva da un cielo notturno pieno di vento nelle volte senza vento, dove l'ora non conta e le lampade non dormono mai.",
	},
	["und.journey.w05.008"] = {
		"scende la rampa dagli ascensori dopo il lungo volo, una mano sulla parete fredda finché il pavimento smette di ondeggiare.",
		"arriva ai piedi degli ascensori con le membra rigide per il lungo volo, e si concede un momento perché la pietra smetta di muoversi sotto i piedi.",
	},
	["und.journey.w05.009"] = {
		"Tanto tempo in groppa a un pipistrello. Le mani stringono ancora, anche se non c'è più niente da stringere.",
		"Un volo lungo, e adesso una lunga camminata attorno agli anelli. Chi ha progettato questa città non ha mai dovuto portare uno zaino.",
	},
	["und.journey.w05.010"] = {
		"scende con l'ascensore con la pioggia che ancora cola dal mantello, lasciando sulla pietra una scia scura che l'umido della città inghiotte presto.",
		"esce dall'ascensore {g:fradicio|fradicia} per il volo sotto la pioggia, scuotendo una manica mentre le gocce ticchettano sulla piattaforma.",
	},
	["und.journey.w05.011"] = {
		"Arrivando su Tirisfal nella nebbia non ho visto che grigio, finché le rovine non sono spuntate di colpo. Quaggiù almeno il buio è onesto.",
		"La nebbia si è mangiata tutto il volo. Sotto terra, per una volta, vedo più lontano che in cielo.",
	},
	["und.journey.w05.012"] = {
		"Pipistrello, ascensore, rampa. Adesso, da che parte è la banca, prima che mi scordi il motivo del viaggio?",
		"Finalmente giù. Qualcuno mi indichi il Trade Quarter: ho monete che mi bruciano in tasca.",
	},
	["und.journey.w05.013"] = {
		"passa davanti alle guardie silenziose ai piedi degli ascensori, ancora {g:intento|intenta} a sciogliere dai capelli i nodi del volo.",
		"si allontana dagli ascensori sotto lo sguardo delle sentinelle di guardia, il vento del viaggio ancora impigliato nei vestiti.",
	},
	["und.journey.w05.014"] = {
		"Dall'alto Tirisfal sembrava quasi tranquilla: campi grigi, una strada spezzata, un castello senza tetto. Cosa ci vive lo scopri solo atterrando.",
		"Ho visto la vecchia capitale di Lordaeron venir fuori dai boschi grigi e ho pensato: qualcuno, una volta, è stato felice qui. Poi il pipistrello è sceso, e il pensiero con lui.",
	},
	["und.journey.w05.015"] = {
		"Sotto il tetto della Dama Oscura. Se c'è bisogno di me, sono qui.",
		"Eccomi, al servizio della città. Indicatemi dove servo.",
	},
	["und.journey.w05.016"] = {
		"Freddo lassù in cielo, freddo quaggiù, ma non è lo stesso freddo. Quello del cielo morde; questo aspetta.",
		"Ho scambiato il freddo del vento con quello della pietra. Il primo ti schiaffeggia, il secondo si sistema per restare a lungo.",
		"Il gelo del cielo era tagliente e pulito. Questo è più morbido e più vecchio, e ha intenzione di farmi compagnia.",
	},
	["und.journey.w05.017"] = {
		"si toglie un ciuffo di pelo di pipistrello da una spalla, poi un altro, poi rinuncia ed entra in città con il resto addosso.",
		"annusa i guanti, fa una smorfia per l'odore di cuoio e di bestia, e decide che i canali lo copriranno.",
	},
	["und.journey.w05.018"] = {
		"In fondo agli ascensori la città si apre, e tutti i suoi suoni si fondono in un unico lungo mormorio, raccolto nella pietra come acqua in una coppa.",
		"Dopo l'aria aperta, le volte sembrano l'interno di una grande conchiglia. Ci appoggi l'orecchio e senti tutta la città sussurrare.",
	},
	["und.journey.w05.019"] = {
		"Promemoria per la prossima volta: il pipistrello non rallenta per le rovine.",
		"Quel pipistrello ha preso l'ultima torre così da vicino che avrei potuto spolverarla.",
		"I miei complimenti al pipistrello. Le mie lamentele a chi gli ha insegnato ad atterrare.",
	},
	["und.journey.w05.020"] = {
		"Adesso sono tra i Reietti. Alleati, dice il Capoguerra. Io abbasso comunque la voce, come si fa in casa d'altri.",
		"La loro città, il loro silenzio. Quaggiù sono ospite, e ogni lampada sembra saperlo.",
	},
	["und.journey.w05.021"] = {
		"scende dagli ascensori con ancora negli occhi la sala di sopra: colonne spaccate, un podio vuoto, edera nelle giunture della pietra.",
		"arriva dalle rovine di sopra, dove l'antico splendore di Lordaeron giace in pezzi, nella città cresciuta nelle sue cantine.",
	},
	["und.journey.w05.022"] = {
		"Sulle rovine stava spuntando l'alba quando il pipistrello è arrivato. Quaggiù è la solita ora illuminata dalle lampade, e a nessuno sembra importare.",
		"Sono {g:arrivato|arrivata} in volo con l'alba e sono {g:sceso|scesa} dall'ascensore in nessuna ora. La città tiene il suo tempo, e ho il sospetto che sia tardi.",
	},
	["und.journey.w05.023"] = {
		"si unisce al lento flusso dell'anello ai piedi degli ascensori, mentre il viaggio si rimpicciolisce alle spalle a ogni passo.",
		"si lascia gli ascensori alle spalle e si fa portare dalla curva dell'anello, oltre le prime lampade e le prime porte aperte.",
	},
	["und.journey.w05.024"] = {
		"Arrivo in una città di morti, a dorso di pipistrello, passando per un palazzo in rovina. Detta ad alta voce, la mia giornata sembra un delirio da febbre.",
		"Pipistrello, rovina, ascensore, cripta. Certi viaggi finiscono in una locanda accogliente. I miei finiscono in una volta di pietra.",
	},
	["und.journey.w05.025"] = {
		"Un pavimento che sta fermo. Un momento: lo stomaco sta ancora scendendo.",
		"Piedi sulla pietra, finalmente. Quell'ascensore scende più in fretta del pipistrello.",
	},
	["und.memory_return.w05.001"] = {
		"scende dall'ascensore e si dirige alla banca senza guardarsi intorno, come fanno i frequentatori abituali di questa città.",
		"percorre l'anello con il passo calmo di chi non ha più bisogno di leggere le insegne.",
		"prende una scorciatoia per un passaggio laterale che conoscono solo gli habitué, e sbuca esattamente dove si aspettava.",
	},
	["und.memory_return.w05.002"] = {
		"Settimane in giro, e mi aspettavo quasi che la città fosse andata avanti senza di me. Non è così. Quaggiù niente va avanti: in fondo è proprio questo il senso.",
		"Tanto tempo via, e Undercity ha conservato tutto com'era, fino al gocciolio vicino alla banca. I morti sono bravi a conservare le cose.",
	},
	["und.muse.w05.001"] = {
		"L'ascensore geme per tutta la discesa, le catene reggono il peso, e l'apertura lassù si restringe a una moneta, poi a niente.",
		"Ogni discesa con l'ascensore è come farsi calare in un pozzo che qualcuno ha dimenticato di riempire. Le catene si lamentano, e qui nessuno le sente più.",
		"A furia di prendere l'ascensore impari quale cigolio vuol dire metà strada. Lo sto imparando. Non so se ci tengo.",
	},
	["und.muse.w05.002"] = {
		"Niente canto d'uccelli, niente cani che abbaiano, niente bambini tra i piedi. Una città, scopro, è soprattutto il rumore dei vivi, e questa ne fa a meno.",
		"Più della luce, quaggiù manca il rumore minuto: un bambino da qualche parte, un cane a una porta, una gallina che protesta. Il silenzio occupa il posto che hanno lasciato.",
		"Tra le volte risuona un colpo di tosse, e tre Reietti si voltano a guardare. Quaggiù i rumori dei vivi arrivano lontano, e si fanno notare.",
	},
	["und.muse.w05.003"] = {
		"La Regina Banshee era un tempo generale dei ranger, e difendeva le foreste del suo popolo dallo stesso principe che poi la uccise. Ora regna sotto le sale di suo padre. C'è una forma, in tutto questo, che non riesco a smettere di guardare.",
		"Cadde difendendo Quel'Thalas, e il campione del Re dei Lich ne fece la sua serva. Lei si riprese la volontà. Tutto, in questa città, comincia da lì.",
	},
	["und.muse.w05.004"] = {
		"Un mercante si è appena rilegato un dito con un pezzo di spago, e ha continuato a contare il resto. Ho visto gente fare più storie per una manica strappata.",
		"Punti alla mandibola, fil di ferro al polso, una pezza di tela dove c'era una spalla. I Reietti si rammendano come un contadino aggiusta un recinto: senza cerimonie.",
		"Un impiegato della banca si è fermato a rimettersi a posto un occhio, si è scusato e ha finito le mie carte. Il servizio qui è impeccabile.",
	},
	["und.muse.w05.005"] = {
		"Qui chi vende cibo vende soprattutto funghi. Cresciuti da qualche parte nel buio, immagino, e ho deciso di non chiedere su cosa.",
		"Funghi in un cesto, pallidi, grassi e un po' umidi. A Undercity questa è verdura fresca, e il mercante ne va giustamente fiero.",
		"Ho comprato un tortino di funghi per educazione. Era sorprendentemente buono, e non ho intenzione di chiedermi perché.",
	},
	["und.muse.w05.006"] = {
		"Alcuni sacerdoti dei Reietti invocano ancora la Luce, e lei risponde, a modo suo. Altri l'hanno lasciata per l'ombra e dicono che la Luce non è mai venuta mentre morivano. Sembrano tutti molto sicuri.",
		"I Reietti ora hanno una fede tutta loro, la Forgotten Shadow, per chi è stato deluso dalla Luce. È un credo duro. Si addice alle cantine.",
	},
	["und.muse.w05.007"] = {
		"Ogni Reietto qui è stato un tempo un burattino del Re dei Lich. Parlano del Flagello come un prigioniero liberato parla del carceriere: a bassa voce, e con un coltello a portata di mano.",
		"La guerra che conta per questa città non è contro l'Alleanza. È a est, nelle Plaguelands, contro il padrone che avevano un tempo.",
	},
	["und.muse.w05.008"] = {
		"I soldati dei Reietti tengono il Bulwark, al limite delle Plaguelands, tra Tirisfal e il Flagello. Ogni cassa che lascia il Trade Quarter diretta a est sembra finire lì.",
		"Quaggiù si parla del Bulwark come altre città parlano di una muraglia: sottile, fredda, e l'unica cosa tra la città e i morti che ancora obbediscono.",
	},
	["und.muse.w05.009"] = {
		"A sud, oltre Silverpine, i Reietti premono contro i lupi di Arugal e i cancelli chiusi di Gilneas. Gli umani si sono murati dentro. I morti hanno abbastanza pazienza da aspettare fuori.",
		"Più a sud, a Shadowfang Keep, un mago folle tiene un branco di worgen. I Reietti ne tornano con rapporti, e con la pazienza molto corta.",
	},
	["und.muse.w05.010"] = {
		"A Hillsbrad i Reietti di Tarren Mill e gli umani di Southshore si guardano in cagnesco da un capo all'altro di pochi campi. Quaggiù ne parlano come di una partita su una scacchiera, e dei contadini come di pedine.",
		"Gli speziali mandano i loro intrugli più nuovi a sud, alle fattorie di Hillsbrad, si dice, per scoprire cosa fanno ai vivi. Qui nessuno pensa che serva abbassare la voce.",
	},
	["und.muse.w05.011"] = {
		"In questa città nessuno ti chiede come stai. Viste le risposte che riceverebbe, è una gentilezza.",
		"Ho detto a un mercante che lo trovavo bene. Ha riso così forte che ha dovuto risistemarsi la mascella.",
	},
	["und.muse.w05.012"] = {
		"si stringe nel mantello contro un freddo umido che sembra uscire dai muri stessi.",
		"si sfrega le mani contro il freddo delle volte, che penetra e si sistema, paziente come un pigionante.",
	},
	["und.muse.w05.013"] = {
		"segue con un dito un nome inciso in un pilastro tanto tempo fa, le lettere quasi lisciate dalle spalle di chi passa.",
		"si ferma sotto un arco dove è ancora scolpito lo stemma del vecchio regno, scheggiato ma ostinatamente leggibile.",
		"spolvera una ghirlanda di pietra scolpita su un muro, fatta per gente in lutto che non immaginava chi un giorno ci sarebbe passato davanti.",
	},
	["und.muse.w05.014"] = {
		"Una tauren attraversa il Trade Quarter a corna basse sotto ogni arco, e chiede scusa alla pietra ogni volta che la sfiora.",
		"Un orco alla banca tiene una mano vicino all'ascia e l'altra sul naso. Alleati, ha detto il Capoguerra. Nessuno ha promesso che sarebbe stato comodo.",
	},
	["und.muse.w05.015"] = {
		"Furono i tauren a parlare per i Reietti davanti al fuoco del Capoguerra, sperando che si trovasse una cura. Non tutti i Reietti ne vogliono una. È difficile da spiegare a un popolo gentile.",
		"Una cura: questo speravano i tauren quando garantirono per i Reietti. Quaggiù quella speranza viene messa da parte con garbo, come un regalo della taglia sbagliata.",
	},
	["und.muse.w05.016"] = {
		"Ho smesso di chiedere cosa ci sia nei barili, quaggiù. Le risposte non erano mai di quelle rassicuranti.",
		"Ogni cassa di questa città ha un'etichetta scritta con cura, e nessuna dice cosa c'è dentro. Lo rispetto.",
		"Quel barattolo si è appena mosso. No, non lo compro. No, non voglio sapere.",
	},
	["und.muse.w05.017"] = {
		"Le mani ricordano un mestiere che non serve più: il nodo di una rete, il peso di un mestolo, qualcosa. Il resto di me ha dimenticato quale. Le mani continuano a esercitarsi lo stesso.",
		"Ho visto gli attrezzi di un bottaio sul banco di un mercante, e le dita ci sono andate prima che capissi perché. I pezzi della vecchia vita tornano di sbieco.",
	},
	["und.muse.w05.018"] = {
		"Nessuno possiede più la mia volontà. Certi giorni mi siedo in un angolo di questa città solo per sentire l'assenza della voce che dava gli ordini.",
		"La voce del Re dei Lich se n'è andata dalla mia testa. Quello che resta è mio, e silenzioso, e sto ancora imparando a riempirlo.",
	},
	["und.muse.w05.019"] = {
		"I vivi trasaliscono quando passiamo, anche quelli che ci chiamano alleati. Non gliene faccio una colpa. All'inizio trasalivo davanti alle mie stesse mani.",
		"Ho visto la mia faccia in una bacinella d'acqua ferma, e non ho distolto lo sguardo. Piccole vittorie. Questa città è costruita su queste.",
	},
	["und.muse.w05.020"] = {
		"Uno stregone passa a passeggio con un voidwalker che gli fluttua dietro come un livido paziente. A Undercity nessuno gli concede un'occhiata.",
		"Imp che litigano sui gradini del Magic Quarter mentre i padroni fanno compere. In qualunque altra città qualcuno chiamerebbe le guardie.",
		"Un felhunter annusa la borsa di un mago, e il mago si sforza moltissimo di non accorgersene. Quaggiù anche le bestiole hanno la loro politica.",
	},
	["und.muse.w05.021"] = {
		"Nel Rogues' Quarter vendono veleni in fiale etichettate su scaffali aperti, come spezie. I prezzi sono onesti. È questo che inquieta.",
		"Un venditore di veleni mi ha appena consigliato qualcosa «per una giornata lenta». Ho annuito come se avessi capito, e ho tenuto le mani in tasca.",
	},
	["und.muse.w05.022"] = {
		"sussulta quando una goccia gelida cade dalla volta e trova la nuca con una mira inquietante.",
		"aggira una pozza scura sul lastricato senza guardare troppo da vicino di che colore sia.",
	},
	["und.muse.w05.023"] = {
		"Queste sale erano un tempo le cripte e le fogne di una città reale. I Reietti hanno preso ciò che i vivi nascondevano sottoterra e ne hanno fatto il loro mondo intero.",
		"Qualcuno ha posato queste fogne con cura, per tenere pulita la città di un re. Non poteva immaginare chi ci avrebbe abitato.",
	},
	["und.muse.w05.024"] = {
		"La Scarlet Crusade direbbe che l'intera città è una tomba da purificare. I Reietti direbbero che la descrizione è giusta, e il piano pessimo.",
		"Su per la strada, al loro monastero, i crociati pregano per il giorno in cui scenderanno con questi ascensori. Le guardie qui non ci perdono il sonno. Non sembrano dormire affatto.",
	},
	["und.muse.w05.025"] = {
		"A est di qui il Flagello insegna la negromanzia in una scuola a Caer Darrow, e Stratholme giace in rovina nelle Plaguelands. I Reietti conoscono quelle lezioni dall'interno.",
		"La Scholomance sulla sua isola, Stratholme tra le sue ceneri, Naxxramas sospesa sopra tutto. Da Undercity l'intero est sembra una ferita aperta.",
	},
	["und.muse.w05.026"] = {
		"Dite quello che volete: è tranquillo, è fresco e nessuno cerca di vendermi una canzone. Potrei farci l'abitudine.",
		"Sinceramente? Il segreto meglio custodito dell'Orda. Portatevi una lampada e il senso dell'umorismo.",
	},
	["und.muse.w05.027"] = {
		"Ho lasciato i miei risparmi a un banchiere senza polso e senza appetito. Difficile immaginare un custode meno tentato.",
		"Gli impiegati della banca qui non si stancano, non mangiano, non alzano mai gli occhi. Le mie monete non sono mai state così al sicuro, né così poco amate.",
		"Deposito, prelievo, un cenno. La faccia del banchiere non si muove mai. Ho avuto rapporti più cordiali con una cassaforte.",
	},
	["und.muse.w05.028"] = {
		"guarda un manovale dei Reietti strofinare lo stesso tratto di pavimento con colpi lenti e senza fine, come se il tempo fosse l'unica cosa di cui questa città abbonda.",
		"si ferma per lasciar passare due facchini dei Reietti curvi sotto una cassa grande come una bara, nessuno dei due col fiato corto, nessuno dei due col fiato.",
	},
	["und.muse.w05.029"] = {
		"Le candele quaggiù bruciano dritte dritte. Nessuna corrente a piegarle, nessun respiro abbastanza vicino. Le fiamme più immobili che abbia mai visto.",
		"Lampade in gabbie di ferro lungo ogni muro. Qualcuno le cura una per una, per tutto il giro di ogni anello, e nessuno sembra mai ringraziarlo.",
	},
	["und.muse.w05.030"] = {
		"Orgrimmar e Undercity si stringono la mano coi guanti. L'Orda ha bisogno dell'astuzia dei Reietti; i Reietti hanno bisogno dei numeri dell'Orda. L'amore non c'entra.",
		"Un'alleanza di disperati: gli orchi volevano alleati, i Reietti volevano chiunque. Regge come regge una corda, perché si tira da entrambi i capi.",
	},
	["und.muse.w05.031"] = {
		"In ogni nicchia, quaggiù, c'è qualcuno immobile che osserva. Salve. Sì. Sono solo di passaggio.",
		"Ho salutato con la mano un Reietto su una soglia. Ha ricambiato dopo una pausa così lunga da sembrare un commento.",
		"Se quello nell'angolo è una statua, ha appena sbattuto le palpebre. Se non lo è, chiedo scusa per averlo fissato.",
	},
	["und.muse.w05.032"] = {
		"Al cimitero di Deathknell si risvegliano ancora nuovi Reietti, confusi e rigidi, e qualcuno li accompagna fin qui a vedere cosa sono diventati. Dev'essere un primo giorno difficile.",
		"Tra questa folla c'è chi si è rialzato da poche settimane, e sta ancora imparando che fame e freddo non vogliono più dire quello che volevano. Nessuno qui gli mette fretta.",
	},
	["und.muse.w05.033"] = {
		"Il trono di Lordaeron sta ancora lassù tra le rovine, all'aria aperta, e la Regina Banshee non l'ha mai voluto. Governa da sotto. Tutta la sua politica sta in quella scelta.",
		"Un trono vuoto sopra, una corte piena sotto. I Reietti non si sono presi la corona di Lordaeron: si sono presi le fondamenta.",
	},
	["und.muse.w05.034"] = {
		"A Undercity nessuno corre. I Reietti camminano come chi ha già mancato l'unico appuntamento che contava.",
		"Qui tutto procede al passo: i facchini, le guardie, i pettegolezzi. Solo i visitatori vivi vanno di fretta, e ci fanno una figura da sciocchi.",
		"Un corriere dei Reietti passa a passo svelto, la cosa più simile a una corsa che abbia visto qui. La gente si scansa come per un cavallo al galoppo.",
	},
	["und.muse.w05.035"] = {
		"Che il Flagello venga pure quaggiù. Ogni anima di questa città ha un conto da regolare con lui.",
		"Il Re dei Lich ha creato questa città per sbaglio. Arriverà a rimpiangerlo, quello sbaglio.",
		"Se il Flagello rivuole Lordaeron, può mettersi in fila agli ascensori come tutti.",
	},
	["und.muse.w05.036"] = {
		"sente una sarta dei Reietti canticchiare al lavoro, un motivo sottile e antico che forse un tempo si cantava a una fiera del raccolto.",
		"coglie qualche nota di liuto da qualche parte tra le volte, suonata con cura da dita che devono ricordare più di quanto sentano.",
	},
	["und.muse.w05.037"] = {
		"Colletti alti, cappucci profondi, guanti lunghi. I Reietti si vestono come chi ha qualcosa da nascondere, e a dire il vero si tratta per lo più di se stessi.",
		"Un sarto del Trade Quarter vende guanti di ogni misura, e qualcuno per mani a cui manca un dito o due. Buon fiuto per gli affari.",
	},
	["und.muse.w05.038"] = {
		"In cima agli ascensori e oltre le radure, le torri degli zeppelin aspettano chi va a Orgrimmar o a Grom'gol. Da quaggiù il resto dell'Orda sembra molto lontano, e tenuto insieme da motori goblin.",
		"Brill è appena su per la strada, con la sua locanda e il suo cimitero uno accanto all'altro. Anche ai morti piace cambiare aria.",
	},
	["und.muse.w05.039"] = {
		"Per una città costruita in una cantina, ha ambizione: soffitti a volta, anelli larghi, ponti sopra i canali. I Reietti non si sono accontentati di un buco. Ne hanno fatto una capitale.",
		"Chi ha scavato queste volte voleva impressionare i morti. Funziona anche coi vivi.",
		"Oltre la penombra, le proporzioni sono da re: archi da far vergognare una cattedrale, scale larghe abbastanza per una processione. I Reietti hanno tenuto tutto, e l'hanno riempito di sé.",
	},
	["und.muse.w05.040"] = {
		"Camminando tra i risorti, sento il mio cuore più del solito. Quaggiù sembra rumoroso, un po' sciocco, e molto prezioso.",
		"Ogni volto dei Reietti è la risposta a una domanda che preferirei non farmi. Vado avanti e continuo a respirare, apposta.",
	},
	["und.muse.w05.041"] = {
		"Gente vivace, oggi. Be'. Relativamente.",
		"Che ressa, quaggiù. Tutti a morire dalla voglia di arrivare in banca.",
		"Attenti a dove mettete i piedi. Qui c'è gente più vecchia del pavimento.",
	},
	["und.muse.w05.042"] = {
		"Fra tutti i visitatori, i troll sembrano i più a loro agio. I Darkspear frequentano spiriti e morti da molto tempo; una città intera di loro è solo una versione più affollata.",
		"Un troll chiacchiera con una bottegaia dei Reietti come con una vecchia vicina, e ride alle sue battute asciutte. Certi popoli sono semplicemente meno schizzinosi.",
	},
	["und.muse.w05.043"] = {
		"alza gli occhi alla volta come se si aspettasse, quasi, di vedere le rovine della vecchia città attraverso la pietra.",
		"piega indietro la testa per seguire un arco fin dentro il buio, dove la luce delle lampade si arrende molto prima della pietra.",
	},
	["und.muse.w05.044"] = {
		"Qualunque cosa si dica dei Reietti, ognuno di loro ha scelto di stare qui. Non molte città possono dirlo di tutti i loro abitanti.",
		"Hanno perso tutto, hanno tenuto la volontà, e con quel che restava hanno costruito una città. Ho conosciuto vivi con molto di più che ne facevano molto meno.",
	},
	["und.muse.w05.045"] = {
		"Su Tirisfal è scesa la notte, mi dice una guardia senza che io chieda. Quaggiù le lampade restano esattamente com'erano, e così tutti quanti.",
		"Sopra tutta questa pietra, ormai, le radure sono buie, e i corvi tacciono. La città non se n'è accorta, e non se ne accorgerà.",
	},
	["und.muse.w05.046"] = {
		"Lassù il giorno va avanti sui campi grigi, per quel che vale. I Reietti lo lasciano volentieri dov'è.",
		"Il sole, lassù, fa del suo meglio con Tirisfal. Quaggiù nessuno gli ha chiesto di impegnarsi di più.",
	},
	["und.muse.w05.047"] = {
		"I guerrieri dei Reietti si addestrano nel War Quarter senza grugnire, senza sudare, senza fermarsi. È il non fermarsi che mette a disagio gli orchi.",
		"Lame che risuonano nel War Quarter, e nemmeno un grido di fatica. I polmoni, a quanto pare, servono soprattutto per fare scena.",
	},
	["und.muse.w05.048"] = {
		"Credo che quella guardia mi abbia appena sorriso. O le manca un pezzo di labbro. In ogni caso, ho ricambiato.",
		"Quello speziale mi squadrava come un ingrediente interessante. Me ne vado.",
	},
	["und.muse.w05.049"] = {
		"Alcuni maghi dei Reietti hanno studiato a Dalaran quando ancora respiravano. Ora le sue mura stanno dietro una barriera, ai piedi dell'Alterac, e ne parlano come di un vecchio amore che non nominano.",
		"Chiedi a un mago dei Reietti dove ha imparato l'arte e a volte otterrai una lunga pausa, poi il nome di una città viola che non lo lascia più entrare.",
	},
	["und.muse.w05.050"] = {
		"Sotto la città ci sono le vecchie fogne, e ci vivono cose che perfino i Reietti definiscono sgradevoli. Mi fido della loro parola.",
		"Le grate delle fogne ronzano appena per l'acqua che scorre sotto. Laggiù qualcosa sciaguatta quando non dovrebbe, e nessuno va a vedere.",
	},
	["und.muse.w05.051"] = {
		"La pestilenza arrivò a Lordaeron in sacchi di grano, consegnati in ogni villaggio. Un regno ucciso dal proprio pane. I Reietti non mangiano molto pane.",
		"I granai di Andorhal spedirono la pestilenza insieme al raccolto. Metà della gente di questa città è morta di un buon pasto. Dopo, il gusto per i funghi si capisce meglio.",
	},
	["und.muse.w05.052"] = {
		"guarda due Reietti fuori servizio lanciare astragali contro un muro, senza che nessuno dei due si prenda la briga di dire di chi fossero.",
		"si ferma accanto a due Reietti che giocano a carte su una cassa rovesciata, così immobili tra una mossa e l'altra da sembrare parte dell'arredo.",
	},
	["und.muse.w05.053"] = {
		"A Stormwind o a Southshore c'è chi piange ancora una persona che quaggiù sta comprando olio per lampade. Mi chiedo se qualcuno dei due vorrebbe saperlo.",
		"Ogni Reietto ha avuto una famiglia, un tempo. Alcune di quelle famiglie vivono ancora, nei villaggi dell'Alleanza, e accendono candele per morti che non lo sono del tutto.",
	},
	["und.muse.w05.054"] = {
		"Giù, giù, e ancora più giù. Questa città non suggerisce mai di salire.",
		"Se prendo quell'ascensore un'altra volta, chiedo una quota della catena.",
		"Qualcuno dovrebbe dipingere «su» sull'ascensore. Così, per lasciare una speranza ai visitatori.",
	},
	["und.muse.w05.055"] = {
		"Né vivi né del Re dei Lich: i Reietti abitano la stretta terra di mezzo, e l'hanno scavata a fondo. Questa città ne è la forma.",
		"Né vivi, né Flagello, né di nessuno. La parola «Reietti» suona amara finché non la senti dire da loro. Allora suona come una porta chiusa dall'interno.",
	},
	["und.muse.w05.056"] = {
		"I vivi ci chiamano mostri, il Flagello ci chiama traditori. Quaggiù sono solo qualcuno che sbriga le sue commissioni. È più dignità di quanta pensassi di trovare dopo la morte.",
		"Non ho bisogno di respirare, ma sospiro lo stesso, per abitudine, quando la fila alla banca è lunga. È un conforto, quanto questa città mi lasci essere normale.",
	},
	["und.muse.w05.057"] = {
		"Alcuni vecchi passaggi che si aprono sugli anelli sono murati, e i mattoni sono più recenti della pietra. Qualunque cosa i Reietti abbiano trovato là dietro, hanno deciso che poteva restarci.",
		"Non tutte le porte quaggiù si aprono, e non tutte quelle chiuse hanno una serratura. Una città di morti tiene per sé i suoi pensieri.",
	},
	["und.muse.w05.058"] = {
		"Lunga vita alla Dama Oscura. Be', lunga non-vita. Il senso è chiaro.",
		"Alla Regina Banshee, e a chi strofina questi pavimenti. Lavorano sodo tutti e due.",
	},
	["und.muse.w05.059"] = {
		"si sporge su un canale e vede il proprio riflesso affiorare dalla melma, poi decide che non è il caso di sporgersi oltre.",
		"si ferma sul bordo di una passerella a guardare una bolla grossa come un pugno salire, gonfiarsi e scoppiare nel canale di sotto.",
	},
	["und.muse.w05.060"] = {
		"Quaggiù l'umidità entra nelle giunture. I Reietti non la sentono, o dicono di non sentirla. Le mie ginocchia sono meno diplomatiche.",
		"Un'ora sotto questa pietra e le ossa mi fanno male come una vecchia casa nell'umido.",
	},
	["und.muse.w05.061"] = {
		"Qualcuno ha messo un vaso di muschio pallido sul davanzale di una finestra che non c'è. È la cosa più piena di speranza che abbia visto in questa città.",
		"Un rametto di qualcosa di grigio e testardo spunta da una crepa nella volta. Nessuno l'ha strappato. Mi piace pensare che sia voluto.",
		"Un uccellino di legno intagliato sta sullo scaffale di un mercante, con la scritta «non in vendita». Di chiunque fosse un tempo, qualcuno quaggiù lo tiene ancora.",
	},
	["und.muse.w05.062"] = {
		"Cupa, fredda e aperta per affari. Undercity sa esattamente cos'è.",
		"Echi, piedi strascicati e prezzi onestissimi. Quasi quasi la chiamerei accogliente.",
		"Volte fredde, vicini silenziosi, nessuno che canta sotto la finestra. Ci sono posti peggiori dove tenere i propri soldi.",
	},
	["und.muse.w05.063"] = {
		"La locanda quaggiù tiene da mangiare per gli ospiti vivi e da conversare per tutti gli altri. I Reietti vengono per la compagnia, non per lo stufato.",
		"Un'ostessa dei Reietti che sostiene di non sentire il sapore dello stufato lo sala comunque con grande cura. Questo è orgoglio professionale.",
	},
	["und.muse.w05.064"] = {
		"si fa indietro mentre un cavallo scheletrico attraversa un ponte, gli zoccoli che suonano a vuoto e il cavaliere che ondeggia con la disinvoltura della lunga pratica.",
		"guarda una cavalcatura tutta ossa aspettare fuori dalla banca senza essere legata, perfettamente disposta a restare lì un anno.",
	},
	["und.muse.w05.065"] = {
		"Ai Reietti non era rimasto da aspettare altro che una seconda morte, e hanno costruito una città lo stesso. Qualunque cosa sia il coraggio, abita anche quaggiù.",
		"Ci vuole un fegato testardo per andare avanti quando persino il corpo ha smesso di insistere per te. Ogni Reietto di questa sala ce l'ha, e lo porta senza ostentarlo.",
	},
	["und.muse.w05.066"] = {
		"A Undercity i pettegolezzi viaggiano al passo, come tutto il resto, ma arrivano dappertutto. Quando raggiungo la banca, l'impiegato sa già dove sono {g:stato|stata}.",
		"Qui nessuno alza la voce, eppure tutti sentono tutto. Le volte portano un sussurro più lontano di un grido.",
	},
	["und.muse.w05.067"] = {
		"La Dama Oscura si porta ancora come la ranger che era: mai ferma, sempre a sorvegliare i margini. L'intera città ha imparato a stare così.",
		"Qualunque cosa voglia Sylvanas, non l'ha mai spiegata ai vivi. Ai Reietti non sembra servire una spiegazione.",
	},
	["und.muse.w05.068"] = {
		"chiude una mano a coppa attorno a una candela che vacilla in una nicchia finché la fiamma non si ferma, poi prosegue senza voltarsi.",
		"rimette un guanto caduto sul bordo del banco di un mercante, dove il proprietario lo ritroverà, se se ne ricorda.",
	},
	["und.muse.w05.069"] = {
		"I Reietti hanno tutto il tempo del mondo, e si vede nel loro lavoro: registri in una calligrafia minuta e perfetta, ogni incastro di ogni cassa preciso.",
		"La pazienza costa poco a chi non si stanca mai. Quaggiù un impiegato ricopia una pagina tre volte per sistemare una sola lettera.",
	},
	["und.muse.w05.070"] = {
		"Questo ai Reietti lo concedo: qui nessuno ha mai cercato di vendermi un portafortuna. La fortuna, per quasi tutti loro, è passata e se n'è andata.",
		"Bella città. Fresca, tranquilla, e nessuno mi invita mai a ballare.",
	},
	["und.muse.w05.071"] = {
		"posa una mano sul parapetto di un ponte e sente, debole attraverso il ferro, il lento girare di qualche grande ruota nel profondo dei muri.",
		"aspetta ai piedi di una scala mentre una colonna di guardie scende, le armature che sussurrano invece di sferragliare.",
	},
	["und.npc_meet.w05.001"] = {
		"passa accanto a una guardia i cui occhi ardono di un giallo tenue sotto l'elmo e seguono il passaggio senza che la testa si muova affatto.",
		"passa accanto a una sentinella in maglia scura, così immobile che una falena le si è posata sullo spallaccio.",
		"riceve dalla guardia sotto l'arco un'occhiata lunga e fissa, poi la guardia torna a sorvegliare il vuoto.",
	},
	["und.npc_meet.w05.002"] = {
		"Turno tranquillo? Domanda sciocca. Quaggiù ogni turno è tranquillo.",
		"Non badare a me. Sto solo attraversando il tuo corridoio così solenne.",
	},
	["und.npc_meet.w05.003"] = {
		"Un oste che serve cibo senza assaggiarlo, e chiede comunque se era buono. Quel genere di cortesia sopravvive a parecchie cose.",
		"L'oste dispone pane e formaggio con cura, il piatto girato per bene. Qualcuno gliel'ha insegnato tanto tempo fa, in una stanza più calda.",
		"Dietro il banco, una tazza già pulita viene lucidata ancora una volta. Certe abitudini sopravvivono ai loro motivi.",
	},
	["und.npc_meet.w05.004"] = {
		"Un angolo tranquillo e qualcosa di caldo, se quaggiù c'è ancora qualcosa di caldo.",
		"Un posto per una persona, grazie. Il più lontano possibile dall'odore dei canali.",
	},
	["und.npc_meet.w05.005"] = {
		"si vede offrire un barattolo di qualcosa sottaceto da un mercante che giura si conservi per sempre, e dovrebbe saperlo.",
		"curiosa tra le merci di una bancarella dove ogni oggetto ha un cartellino in una grafia sottile e ordinata, prezzo compreso, contrattazioni sconsigliate.",
		"osserva un mercante pesare le monete su una minuscola bilancia d'ottone, lentamente, come se il tempo fosse l'unica cosa che abbonda.",
	},
	["und.npc_meet.w05.006"] = {
		"Quanto è fresco il fresco, quaggiù? Non rispondere. Lo prendo.",
		"Avete qualcosa in vendita che non sia stato dissotterrato prima? Chiedo per un conoscente.",
	},
	["und.npc_meet.w05.007"] = {
		"Metà della merce su questo banco so dire cos'è. L'altra metà preferirei non toccarla senza guanti.",
		"Il sorriso dall'altra parte del banco è più che altro un'abitudine, ma i prezzi sono onesti. Mi va bene così.",
	},
	["und.npc_meet.w05.008"] = {
		"Il banchiere annota il mio deposito senza fretta. Quaggiù nessuno ha paura di restare senza tempo, solo di perdere il conto.",
		"Una cassaforte dentro una cripta dentro un regno morto. Il mio pugno di monete non è mai stato sepolto così a fondo.",
	},
	["und.npc_meet.w05.009"] = {
		"consegna un fagotto oltre il banco della banca, dove sparisce nel buio senza che nessuno ne guardi il contenuto.",
		"aspetta al banco mentre una figura grigia conta, riconta e annota tutto, in perfetto silenzio.",
	},
	["und.npc_meet.w05.010"] = {
		"Qui chi insegna ha avuto una vita intera per imparare il mestiere e una morte per ripensarci. Ascolterò con attenzione.",
		"Correzioni asciutte, esatte, nessuna lode. Forse insegnava nelle sale di sopra, quando c'erano ancora delle sale.",
		"Niente parole sprecate, niente gesti sprecati. Qualunque cosa la piaga si sia presa, il talento l'ha lasciato.",
	},
	["und.npc_meet.w05.011"] = {
		"si sottopone all'esame di chi addestra, che {g:gli|le} gira intorno una volta, piano, e con un colpetto corregge l'angolo di una spalla.",
		"aspetta il verdetto; arriva come un solo cenno del capo, concesso come qui si spende una moneta: con parsimonia.",
	},
	["und.npc_meet.w05.012"] = {
		"Hai l'aria di chi ha un problema e niente tempo. Per tua fortuna, il tempo ce l'ho io.",
		"C'è qualcosa da fare? Dimmi prima la parte noiosa: quella macabra la indovino da me.",
	},
	["und.npc_meet.w05.013"] = {
		"passa accanto a una figura reietta immobile vicino a un canale, lo sguardo nel vuoto, le labbra che ripetono un nome.",
		"scambia un cenno con qualcuno che indossa un cappotto liso, elegante un tempo, i bottoni lucidati fino all'ultimo.",
	},
	["und.npcd_flightmaster_open.w05.001"] = {
		"I pipistrelli hanno mangiato e sono irrequieti. Tieniti con tutte e due le mani: non amano i passeggeri che mollano la presa.",
		"Dove si va? I miei pipistrelli conoscono la strada per Silverpine, per Hillsbrad e oltre, se hai le monete.",
	},
	["und.npcd_guard_bye.w05.001"] = {
		"Prosegui. E stai fuori dalle fogne, a meno che qualcuno non ti ci mandi.",
		"Va' pure. Gli ascensori sono da quella parte, se il buio comincia a pesarti.",
	},
	["und.npcd_guard_directions.w05.001"] = {
		"La banca e la casa d'aste sono nel Trade Quarter. Anche la locanda è lì, se ti serve un letto.",
		"Maestri? I maghi al Magic Quarter, i guerrieri al War Quarter, e i tipi silenziosi al Rogues' Quarter.",
		"Gli speziali stanno nella loro ala, l'Apothecarium. Vai se proprio devi, e non toccare niente.",
	},
	["und.npcd_guard_open.w05.001"] = {
		"Resta sull'anello e tieni le mani dove possiamo vederle. Qui vale la pace della Dama Oscura.",
		"Cammina piano. Questa città ha orecchie lunghe, e memoria ancora più lunga.",
	},
	["und.npcd_guard_open.w05.002"] = {
		"Respiri ancora o hai smesso? Non importa. Occhio ai canali lo stesso.",
		"Dichiara i tuoi affari, oppure guarda in silenzio. Qui sono permesse entrambe le cose.",
	},
	["und.npcd_innkeeper_bye.w05.001"] = {
		"Buon viaggio lassù. Portaci qualche notizia: quaggiù arrivano quasi solo notizie vecchie.",
		"Vai pure. Il tuo letto sarà qui, e anch'io. Nessuno dei due si muove mai.",
	},
	["und.npcd_innkeeper_news.w05.001"] = {
		"Si dice che gli speziali cerchino di nuovo volontari. Nessuno che conosco si è offerto. Nessuno che conosco è stato richiesto due volte.",
		"Le guardie di Brill dicono che i crociati si fanno più audaci sulle strade. Come il mese scorso. Come ogni mese.",
	},
	["und.npcd_innkeeper_open.w05.001"] = {
		"Avanti, avanti. I letti sono asciutti, quasi tutti, e lo stufato era caldo non molto tempo fa.",
		"Accomodati dove vuoi. Qui nessuno si offende se fissi il muro per un po'.",
	},
	["und.npcd_innkeeper_open.w05.002"] = {
		"Clienti! Che tu respiri ancora o no, un letto è un letto, e il prezzo è lo stesso.",
		"Gente di passaggio. Vorrai da mangiare, un letto o un po' di silenzio. Posso darti tutte e tre le cose; il silenzio è gratis.",
	},
	["und.npcd_merchant_bye.w05.001"] = {
		"Attenzione a come lo porti su per gli ascensori. Niente si rompe come il vetro che cade in un pozzo.",
		"Arrivederci. Tienilo lontano dall'umido: quaggiù arrugginisce tutto, tranne i clienti.",
	},
	["und.npcd_merchant_news.w05.001"] = {
		"Il cuoio è di nuovo caro. Dicono che tutti i cacciatori di Tirisfal siano a Silverpine, e i worg non sono in vendita.",
		"Una carovana da Hillsbrad è arrivata mezza vuota. Guai al fronte, dicono i carrettieri, e non dicono altro.",
	},
	["und.npcd_merchant_open.w05.001"] = {
		"Avvicinati, la luce è scarsa. Qui è tutto in buono stato, qualunque aspetto abbia.",
		"Guardi o compri? In ogni caso, fai con calma. Il tempo è l'unica cosa che non ci manca.",
	},
	["und.npcd_merchant_open.w05.002"] = {
		"Merce fresca! Be'. Merce. A Undercity la freschezza è relativa.",
		"Benvenuti al mio banco. Niente rimborsi, niente trattative, niente lamentele sull'odore.",
	},
	["und.npcd_merchant_wares.w05.001"] = {
		"Filo, fiaschette, bende, e una lampada che non si spegne con l'umido. Tutto quel che serve quaggiù, a chi è vivo e a chi no.",
		"Oli da imbalsamazione, candele, corda bella robusta. Non chiedere a cosa serviva prima: adesso è pulita.",
	},
	["und.npcd_trainer_open.w05.001"] = {
		"Sei qui per imparare. Bene. La morte mi ha insegnato la pazienza; io cercherò di insegnarti qualcosa di più rapido.",
		"Schiena dritta, e fammi vedere cosa sai. Poi vedremo cosa non sai.",
	},
	["und.pray.w05.001"] = {
		"Qualunque cosa ascolti ancora così in profondità sotto la pietra, la Luce o qualcosa di più antico: tieni accese le lampade di questa città, e saldi i miei passi.",
		"Se qualche potenza ascolta le preghiere tra i morti, ne ascolti un'altra: chi riposa qui riposi, e chi cammina cammini senza catene.",
		"Luce, o chiunque risponda al tuo posto quaggiù: chiedo poco. Una mente lucida, e la strada per risalire.",
	},
	["und.quest_complete.w05.001"] = {
		"conta la ricompensa alla luce di una lampada appesa, mentre dietro i muri una pompa continua ad ansimare.",
		"fa scivolare il compenso in una borsa e resta un istante nel silenzio delle volte, la faccenda chiusa.",
		"prende le monete, fa un cenno e torna a confondersi nella lenta processione attorno all'anello.",
	},
	["und.quest_complete.w05.002"] = {
		"I Reietti pagano esattamente quanto promesso. Il calore non faceva parte dell'accordo, e nessuno finge il contrario.",
		"Quaggiù un grazie viene dosato come una medicina: la quantità giusta, non una goccia di più. E scopro che non mi dispiace.",
		"Qui nessuno si sbilancia. Il cenno che ho ricevuto era preciso come un peso sulla bilancia, e valeva altrettanto.",
	},
	["und.quest_complete.w05.003"] = {
		"Annotalo in qualunque registro tengano i morti: è finita.",
		"Ecco, tutto sistemato. Puoi anche concederti un'aria compiaciuta: non lo dirò a nessuno.",
		"Lavoro fatto, e pure spolverato. Siamo a Undercity, la polvere non manca.",
	},
	["und.quest_complete.w05.004"] = {
		"Il patto tra Orgrimmar e questa città non è nato dall'affetto. Regge su favori come questo, uno sopra l'altro.",
		"Thrall e la Dama Oscura hanno bisogno l'uno dell'altra più di quanto ammetterebbero. Commissioni come questa sono la calce che li tiene insieme.",
		"Orco, tauren, troll o Reietto, l'Orda sta insieme grazie a chi sbriga faccende per gli altri. Ecco un altro nodo stretto.",
	},
	["und.quest_complete.w05.005"] = {
		"Per anni la voce del Re dei Lich ha scelto ogni mio passo. Questo compito l'ho preso con le mie mani, e con le mie mani l'ho posato.",
		"Nessuna voce nella testa me l'ha ordinato. L'ho fatto perché l'avevo detto. Una piccolezza. Non per me.",
	},
	["und.quest_complete.w05.006"] = {
		"Pagato. E adesso, dove trova da mangiare uno stomaco ancora vivo, in questa città?",
		"Bene. Prossima domanda: chi vende pane quaggiù che non sia più vecchio di me?",
	},
	["und.quest_complete.w05.007"] = {
		"sente una penna grattare su uno scrittoio vicino mentre le monete passano di mano, come se la città stessa prendesse nota.",
		"chiude la faccenda sul graffio della penna di qualche scrivano lì accanto: in questa città tutto finisce messo per iscritto.",
	},
	["und.quest_complete.w05.008"] = {
		"Non ho chiesto a cosa servisse. A Undercity, il non chiedere fa parte della paga.",
		"Quello che ne sarà adesso succederà dietro porte chiuse. Ho imparato a tenere la mia curiosità in buona salute.",
		"Meglio non sapere dove andrà a finire. Undercity tiene per sé i suoi consigli, e le sue cantine.",
	},
	["und.quest_complete.w05.009"] = {
		"Per l'Orda e per le sale della Dama Oscura: è fatta.",
		"Un'altra pietra nel muro dell'Orda. Stavolta, pietra di questa città.",
	},
	["und.quest_complete.w05.010"] = {
		"Questa gente ha perso tutto una volta, vita compresa, e continua a tenere i conti e a saldare i debiti. C'è una lezione, lì dentro, che non sono {g:pronto|pronta} a imparare.",
		"Una città di morti che salda i conti come un qualunque borgo di mercato. In qualche modo è la cosa più triste che abbia visto oggi, e la più piena di speranza.",
	},
	["und.quest_complete.w05.011"] = {
		"intasca la ricompensa e lancia un'occhiata verso gli ascensori, già pensando alla lunga risalita verso la superficie.",
		"chiude la faccenda e guarda lungo l'anello, verso gli ascensori e la lunga salita all'aria aperta.",
	},
	["und.quest_complete.w05.012"] = {
		"Le monete di una mano fredda si spendono come quelle di una mano calda. I mercanti del Trade Quarter me lo dimostreranno entro un'ora.",
		"Le monete sono gelide: sono rimaste in una cripta sotto un regno morto. Nella mia borsa si scalderanno, per poco.",
		"La borsa pesa di più, e sa appena della cripta da cui viene. Erbe da imbalsamatore, o carta vecchia. Non lo chiederò.",
	},
	["und.quest_complete.w05.013"] = {
		"Chiuso. Se quaggiù c'è altro da far finire, sai dove trovarmi.",
		"Tutto a posto. La prossima volta mandami a fare qualcosa di più duro: le fogne, magari.",
	},
	["und.quest_complete.w05.014"] = {
		"Rampe, anelli e corridoi che curvano tutti dallo stesso lato. Gli stivali si sono guadagnati la loro parte di questa ricompensa.",
		"Tutto quel salire e scendere nella pietra, ed ecco come finisce: qualche moneta e un po' di quiete. Mi basta.",
	},
	["und.quest_complete.w05.015"] = {
		"riceve i ringraziamenti proprio mentre il canale più vicino lascia salire una bolla grassa e lenta, che quaggiù forse vale come applauso.",
		"sente dichiarare chiusa la faccenda, e la melma del canale lì sotto fa un rutto solo, come per approvare.",
	},
	["und.quest_complete.w05.016"] = {
		"Lassù le sale di Lordaeron sono macerie ed erbacce. Quaggiù le loro cantine vanno avanti a favori e paghe oneste.",
		"Sopra queste volte è caduto un regno, pietra dopo pietra. Chi gli è sopravvissuto continua a scambiarsi favori là sotto, e paga quello che deve.",
	},
	["und.quest_complete.w05.017"] = {
		"Come richiesto, e per intero. Non serve aggiungere altro: questa città non lo fa mai.",
		"È sistemato. Tieniti il discorso: quaggiù sono brevi comunque.",
	},
	["und.quest_complete.w05.018"] = {
		"Ogni commissione quaggiù mi insegna un'altra curva di questi anelli: quale scala è viscida, quale scrivano non alza mai gli occhi.",
		"Un po' alla volta la città smette di essere un labirinto. Oggi ne ho imparato un altro angolo, e la lezione me l'hanno pure pagata.",
	},
	["und.quest_complete.w05.019"] = {
		"sente il breve ringraziamento rotolare via lungo la volta e tornare più sottile da un punto lontano dell'anello.",
		"riceve poche parole sommesse che la pietra si porta subito via, passandole di arco in arco finché si spengono.",
	},
	["und.quest_complete.w05.020"] = {
		"Questa merita da bere. Chi offre? Ah. Io, a quanto pare.",
		"Qualcuno mi versi qualcosa di forte. Un bicchiere me lo sono guadagnato, e le cantine di questa città sono profonde.",
	},
	["und.quest_complete.w05.021"] = {
		"Nessuno lungo l'anello gira la testa. In una città così silenziosa, un lavoro finito non fa più rumore di una porta che si chiude.",
		"Il lavoro è consegnato, e il passo strascicato della città continua senza una pausa. Mi sta bene così.",
	},
	["und.quest_complete.w05.022"] = {
		"si fa da parte per lasciar passare due figure in tunica con una cassa coperta tra loro, e non chiede cosa contenga.",
		"con la ricompensa in mano cede il passo a un carretto spinto da qualcuno con un pesante grembiule, il carico nascosto sotto una tela cerata.",
	},
	["und.quest_complete.w05.023"] = {
		"I Reietti ricordano i nomi come ricordano i torti: molto a lungo. Che ricordino il mio per questo.",
		"Anche qui, dove nessuno sorride, un nome può crescere. Il mio è appena entrato un po' più a fondo in qualche memoria fredda.",
	},
	["und.quest_complete.w05.024"] = {
		"Bene. La prossima volta, un lavoro in un posto con un cielo sopra.",
		"Perfetto. Il prossimo incarico lo vorrei in superficie, se qualcuno accetta richieste.",
		"Splendido. Il prossimo lavoro potrebbe avere una finestra? Anche piccola.",
	},
	["und.quest_complete.w05.025"] = {
		"mette via la ricompensa mentre un ascensore si mette in moto cigolando da qualche parte in alto, catene che sferragliano, a portare qualcun altro verso le rovine.",
		"ripone le monete mentre il grande ascensore si scuote e comincia a salire, e tutta la volta sembra fermarsi ad ascoltarlo.",
	},
	["und.quest_complete.w05.026"] = {
		"Era un sorriso? Poteva essere un tic. Quaggiù lo conto come sorriso.",
		"Mi è parso che un angolo della bocca si muovesse. A Undercity è praticamente una festa.",
	},
	["und.quest_complete.w05.027"] = {
		"L'incarico è chiuso, e la mia parola con lui. Chiamatemi di nuovo quando la città avrà bisogno.",
		"Come promesso. Quando questa città chiede, io rispondo.",
	},
	["und.quest_complete.w05.028"] = {
		"Qualunque cosa abbia appena aiutato a fare finirà imbottigliata, archiviata o sepolta da qualche parte sotto queste volte. Cerco di non indovinare quale delle tre.",
		"Certe commissioni, qui, sembrano un solo punto di un arazzo molto grande e molto scuro. Io vedo sempre e solo il mio punto.",
	},
	["und.reputation_change.w05.001"] = {
		"Da qualche parte un registro freddo adesso dice di me qualcosa di più caldo. In una città che non dimentica niente, vale la pena averlo.",
		"Il mio nome sale un po' nei conti di qualcuno, quaggiù. È una salita lenta, come quella degli ascensori, ma sale.",
	},
	["und.rest_enter.w05.001"] = {
		"Lascio scivolare lo zaino dalla spalla. In questa città le cose peggiori stanno dalla nostra parte, e in un certo senso è un conforto.",
		"Mura sicure e tanta pietra sopra la testa. Qui posso smettere di ascoltare i passi alle mie spalle.",
		"Il silenzio della città mi fa l'effetto di una coperta. Non calda, ma pesante, e per ora pesante basta.",
	},
	["und.rest_enter.w05.002"] = {
		"trova una panca di pietra in un'alcova lungo l'anello e si siede, lasciando che il fresco del muro {g:gli|le} entri nella schiena.",
		"posa lo zaino accanto a una colonna e resta lì {g:appoggiato|appoggiata} per un po', con gli occhi socchiusi, mentre la città passa strascicando i piedi.",
	},
	["und.rest_enter.w05.003"] = {
		"Non ci stanchiamo come i vivi. Ma qualcosa in me posa il suo carico quando l'ascensore arriva in fondo.",
		"Il riposo, adesso, è un'altra cosa. Il corpo quasi non lo chiede; la mente sì, e quaggiù finalmente ne ha un po'.",
	},
	["und.rest_enter.w05.004"] = {
		"Finalmente una città dove nessuno si offende se sembro {g:mezzo morto|mezza morta}.",
		"Riposo, finalmente. E per una volta non sono la faccia più pallida della stanza.",
	},
	["und.rest_enter.w05.005"] = {
		"Riposare tra i Reietti. Non russano, non si agitano e non fanno domande. Vicini ideali, a pensarci.",
		"Strano posto per rilassarsi, sotto un regno morto. Ancora più strano che funzioni.",
		"Attorno a me i Reietti riposano senza un rumore, fermi come statue. Mi sorprendo a respirare più piano, per educazione.",
	},
	["und.rest_enter.w05.006"] = {
		"si lascia avvolgere dai suoni lenti della città: il gemito di un ascensore lontano, l'acqua che ticchetta in una grondaia, una voce che legge ad alta voce chissà dove.",
		"si riposa un po', ascoltando il respiro delle volte: pompe al lavoro dietro i muri, passi che svaniscono, il mormorio pigro dei canali.",
		"si appoggia all'indietro e sente i piccoli rumori della città: un mestolo che gratta una pentola, una pagina girata, il gocciolio lento che non smette mai.",
	},
	["und.rest_enter.w05.007"] = {
		"Neanche una finestra. Potrei sdraiarmi in questa città e perdermi una settimana senza che nessuno se ne accorga.",
		"Quaggiù nessuno tiene il conto delle ore. Per una volta potrei riposare finché sono {g:riposato|riposata}, e non un momento prima.",
	},
	["und.subzone_enter.w05.001"] = {
		"entra nel Royal Quarter, dove le guardie stanno più vicine fra loro e perfino il gocciolio dell'acqua sembra aspettare il suo turno.",
		"mette piede nel Royal Quarter sotto gli occhi di sentinelle alte e immobili, e il brusio della città resta indietro.",
		"passa nel Royal Quarter, dove l'aria è più fredda e ogni passo suona come un'intrusione.",
	},
	["und.subzone_enter.w05.002"] = {
		"Più avanti la Regina Banshee tiene corte. Mi sorprendo a sistemarmi il colletto, come se potesse notarlo. Potrebbe.",
		"Il quartiere della Dama Oscura. Qualunque cosa abbia in mente per Lordaeron, la decide qui, a poche stanze da dove mi trovo.",
	},
	["und.subzone_enter.w05.003"] = {
		"L'Apothecarium. Serpentine di vetro, fiasche che ribollono, e speziali che alzano gli occhi giusto il tempo di stabilire che non sono un ingrediente.",
		"Su ogni tavolo c'è qualcosa con un'etichetta scritta con cura. Ne leggo una, e decido di smettere di leggere etichette.",
		"La Royal Apothecary Society al lavoro. Il solo odore scrosterebbe la vernice: provo a respirare attraverso la manica e il buon senso.",
	},
	["und.subzone_enter.w05.004"] = {
		"Nessuno tocchi niente. Soprattutto io.",
		"Che profumino. Deve far lacrimare gli occhi, o è un omaggio della casa?",
	},
	["und.subzone_enter.w05.005"] = {
		"Il Trade Quarter. Banca, aste, e mercanti che hanno avuto tantissimo tempo per perfezionare i loro prezzi.",
		"Botteghe nelle vecchie cripte, una banca nelle volte. La borsa mi sembra già più leggera.",
	},
	["und.subzone_enter.w05.006"] = {
		"entra nel Magic Quarter, dove piccole luci restano sospese nell'aria senza sostegno e il ronzio degli incantesimi si sente dietro i denti.",
		"attraversa il Magic Quarter, dove figure in tunica mormorano su libri aperti e sotto la volta aleggia un vago odore di temporale.",
	},
	["und.subzone_enter.w05.007"] = {
		"Il War Quarter. Qui le esercitazioni sono lente e precise: nessuno sbuffa, nessuno si vanta. È questo che mette paura.",
		"Soldati che si addestrano senza una parola sotto le volte. Quando i Reietti preparano una guerra, lo fanno come chi ne ha già persa una e se la ricorda.",
	},
	["und.subzone_enter.w05.008"] = {
		"Rogues' Quarter. Tengo una mano sulla borsa e l'altra bene in vista.",
		"Bel quartiere. Qui sono tutti molto cordiali, e molto interessati alla mia cintura.",
	},
	["und.subzone_enter.w05.009"] = {
		"passa sotto un altro arco ed entra in {subzone}, dove le volte grigie si ripetono come se i costruttori non se ne stancassero mai.",
		"entra in {subzone}, dove le lampade pendono più in basso e la pietra trasuda un po' nell'aria fresca.",
		"svolta un angolo ed entra in {subzone}; più avanti la volta si allarga e le voci cambiano.",
	},
	["und.subzone_enter.w05.010"] = {
		"{subzone}, a quanto pare. L'avrei capito dall'odore, se ogni quartiere non avesse lo stesso odore.",
		"Quartiere nuovo, umidità di sempre. Sto imparando a distinguerli dai rumori: martelli, sussurri o vetri.",
	},
	["und.subzone_enter.w05.011"] = {
		"Queste sale furono scavate per i morti di Lordaeron, molto prima che i morti tornassero a governarle. Cammino piano lo stesso.",
		"Ogni quartiere di questa città un tempo era una cripta. Da qualche parte, sotto le botteghe e le esercitazioni, i vecchi nomi devono essere ancora incisi.",
	},
	["und.subzone_enter.w05.012"] = {
		"Occhio al gradino. Ogni quartiere quaggiù ne ha uno di cui nessuno ti avverte.",
		"Gomiti stretti. Questi corridoi sono stati scavati per le bare, non per la folla.",
	},
	["und.thanks.w05.001"] = {
		"Grazie. Una mano gentile è rara lassù; quaggiù lo è ancora di più.",
		"Grazie di cuore. In questa città fredda, è la cosa più calda che abbia incontrato oggi.",
		"Grazie. Non me lo scorderò: questa città mi ha insegnato quanto può durare un ricordo.",
	},
	["und.thanks.w05.002"] = {
		"Grazie mille. La prossima volta che passo dal Trade Quarter, la prima bevanda senza melma la offro io.",
		"Grazie davvero. Ti offrirei una calda stretta di mano, ma quaggiù niente resta caldo.",
	},
	["und.toast.w05.001"] = {
		"A Undercity! Cantine fredde, compagnia fredda, e i segreti meglio custoditi di Lordaeron.",
		"In alto i bicchieri: a tutti quelli quaggiù che bevono ancora, che ne sentano il sapore o no.",
		"Alla città della Dama Oscura, dove la birra è fresca e nessuno fa domande sul tuo pallore.",
	},
	["und.travel.w05.001"] = {
		"La pietra del ritorno si scalda nel palmo, l'unica cosa calda in tutta la città. Poi le volte si ripiegano e spariscono.",
		"Stringo la pietra in mano. L'ultima cosa che sento sono i canali, e poi nemmeno quelli.",
	},
	["und.travel.w05.002"] = {
		"lascia crescere il bagliore della pietra del ritorno nella penombra delle volte; chi passa non si volta nemmeno a {g:guardarlo|guardarla} sparire.",
		"rigira una volta la pietra del ritorno sotto una lampada appesa, e svanisce tra una goccia dal soffitto e la successiva.",
	},
	["und.weather_change.w05.001"] = {
		"Un tauren è appena sceso dall'ascensore con addosso odore di pelo bagnato. È così che scopri che a Tirisfal piove.",
		"Dall'ascensore continua a scendere gente con il cappuccio gocciolante. Piove sulle rovine, dunque; quaggiù arrivano solo le pozzanghere che si portano dietro.",
		"Qualcuno scuote un mantello zuppo ai piedi degli ascensori e maledice la pioggia di Tirisfal. Colgo l'allusione e resto sottoterra.",
	},
	["und.weather_change.w05.002"] = {
		"nota un nuovo filo d'acqua che scende lungo una vecchia giuntura della volta: la pioggia di sopra trova pazientemente la strada verso la città.",
		"sente un ticchettio lieve e costante provenire da una grata in alto nel muro, dove la pioggia sulle rovine scola giù nel buio.",
		"si ferma sotto un arco da cui hanno cominciato a cadere gocce una alla volta, sempre sullo stesso punto scuro: pioggia, molto più in alto.",
	},
	["und.weather_change.w05.003"] = {
		"Tuoni su Lordaeron. Quaggiù arrivano più dal pavimento che dall'aria, un brivido lento nella pietra.",
		"Il temporale è quasi troppo in alto per sentirlo. Poi una catena dell'ascensore oscilla da sola, e una guardia alza lo sguardo.",
		"Un temporale sopra di noi, e le vecchie cantine della capitale lo incassano come hanno incassato tutto il resto: in silenzio.",
	},
	["und.weather_change.w05.004"] = {
		"osserva una sottile nebbia grigia scendere strisciando lungo il pozzo dell'ascensore: la nebbia di Tirisfal fa una rara visita alla città.",
		"vede filamenti di nebbia scendere dall'alto e posarsi sui canali, pallidi sulla melma, finché il calore delle lampade non li sfilaccia.",
		"nota che la nebbia posata sulle radure di sopra allunga qualche dito freddo giù nelle volte.",
	},
	["und.weather_change.w05.005"] = {
		"Lassù c'è nebbia, dicono. Bella giornata per starci sotto.",
		"Qualcuno dice che lassù la nebbia è così fitta che le rovine non si vedono. Da qui non si vedono comunque. Pari.",
	},
	["und.weather_change.w05.006"] = {
		"L'aria che scende dal pozzo dell'ascensore ha perso l'umido. Sereno su Tirisfal, dunque, per chi lassù può godersela.",
		"Cielo sereno, lassù, dice un corriere che scende. Nelle volte non cambia niente, ma tengo la notizia come una moneta in tasca.",
	},
]==])
