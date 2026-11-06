-- Testi di base in italiano: saluti, brindisi, scherzi e preghiere. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySocial.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["greet.01"] = {
		"{og:Ben trovato|Ben trovata}, viandante. Che la tua strada sia stata meno dura della mia.",
		"Salute, viandante. Siediti, se la strada ti ha stancato quanto ha stancato me.",
	},
	["greet.02"] = {
		"Oh, un volto amico. O almeno un volto che non mi sta attaccando.",
		"Ciao. Non mi hai ancora attaccato: siamo già a buon punto.",
	},
	["greet.03"] = {
		"{target}! Il fuoco è più caldo quando ci sono vecchi amici intorno.",
		"Eccoti! Adesso sì che il fuoco scalda.",
	},
	["greet.04"] = {
		"Salute a te, {target}. Che le stelle ti siano propizie.",
		"Ti saluto, e saluto la strada che ti ha portato fin qui.",
	},
	["greet.05"] = {
		"Buona sera, se ancora ne esistono di buone.",
		"Sera. Anche tu non riesci a dormire?",
	},
	["greet.06"] = {
		"Buongiorno. Siamo ancora vivi: è un buon inizio.",
		"Già in piedi? Allora siamo in due a non avere giudizio.",
	},
	["greet.07"] = {
		"Ehi. Tutto a posto?",
		"Salute. Di passaggio?",
	},
	["greet.08"] = {
		"Che bello vederti! Vieni, raccontami tutto.",
		"Eccoti, finalmente. Mi mancava una faccia gentile.",
	},
	["greet.e.01"] = {
		"alza una mano in segno di saluto, senza fretta.",
		"porta due dita alla fronte in un saluto breve.",
	},
	["greet.e.02"] = {
		"si porta una mano al petto e china il capo, come si usa tra viandanti.",
		"accenna un inchino; il mantello sfiora la polvere della strada.",
	},
	["greet.orc.01"] = {
		"Throm-ka. Che il tuo sangue resti caldo e la tua lama affilata.",
		"Throm-ka. Siedi vicino al fuoco, la carne è quasi pronta.",
	},
	["greet.orc.02"] = {
		"Lok'tar, {og:fratello|sorella}. Hai combattuto bene, ultimamente?",
		"Lok'tar. Vedo cicatrici nuove: raccontami.",
	},
	["greet.tauren.01"] = {
		"Che la Madre Terra ti guidi i passi.",
		"Il vento delle praterie ti ha portato fin qui. Sii {og:il benvenuto|la benvenuta}.",
	},
	["greet.troll.01"] = {
		"Ehi, tu! Ti va bene la giornata? A me sì, finché nessuno mi tira una lancia.",
		"Ehi! I Loa sorridono, oggi. Si sente nell'aria.",
	},
	["greet.scourge.01"] = {
		"Vivo? Che fortuna. Goditela finché dura.",
		"Non fissarmi la mascella. Ci tengo ancora.",
	},
	["greet.human.01"] = {
		"La Luce sia con te, {og:amico|amica}.",
		"Che la Luce ti tenga la mano ferma e la tavola piena.",
	},
	["greet.dwarf.01"] = {
		"Salute! Hai sete? Io sì. Io ho sempre sete.",
		"Ehilà! Vieni dalla montagna o ci vai? In tutti e due i casi, la strada è in salita.",
	},
	["greet.nelf.01"] = {
		"Ishnu-alah. Che Elune illumini il tuo cammino.",
		"Ishnu-alah. Il bosco ti ha visto arrivare molto prima di me.",
	},
	["greet.gnome.01"] = {
		"Salve salve! Hai per caso visto una vite dentata da tre quarti? No? Peccato.",
		"Ciao! Non toccare quel congegno. No, nemmeno quello.",
	},
	["bye.01"] = {
		"Che le stelle vigilino sul tuo cammino, finché le nostre strade non si incroceranno di nuovo.",
		"Che il cammino ti sia lieve, e l'acqua mai lontana.",
	},
	["bye.02"] = {
		"Addio. O arrivederci. Con i tempi che corrono, è difficile sapere quale.",
		"Ci vediamo. Spero. Sì... ci vediamo.",
	},
	["bye.03"] = {
		"Vado. Se non torno entro tre giorni, aspettate ancora un po'.",
		"Me ne vado prima che qualcuno mi chieda di consegnare un pacco.",
	},
	["bye.04"] = {
		"Ci rivedremo. In una locanda o su un campo di battaglia: io scommetto sulla locanda.",
		"Alla prossima. Tieni l'arma pulita e le spalle coperte.",
	},
	["bye.05"] = {
		"Va' in pace, {target}. E se non trovi pace, trova almeno un buon fuoco.",
		"Va' piano, e torna. Il resto si aggiusta.",
	},
	["bye.06"] = {
		"Vado.",
		"Bene. Ci si vede.",
	},
	["bye.07"] = {
		"Abbi cura di te, intesi? Mi serve qualcuno con cui brindare.",
		"Mi mancherai. Non dirlo a nessuno.",
	},
	["bye.e.01"] = {
		"fa un cenno con il capo e si avvia, senza voltarsi.",
		"alza la mano in un breve saluto, poi si stringe nel mantello e riprende la strada.",
	},
	["bye.e.02"] = {
		"si volta un'ultima volta prima della curva del sentiero, e solleva la mano.",
		"si allontana piano; per un tratto si sente ancora il passo sulla ghiaia, poi più niente.",
	},
	["bye.orc.01"] = {
		"Che i tuoi antenati ti guardino le spalle.",
		"Lok'tar. Ci vediamo dove si combatte.",
	},
	["bye.tauren.01"] = {
		"Cammina con il vento, {og:amico|amica}.",
		"Che la pioggia trovi sempre la tua strada, e l'erba la tua mandria.",
	},
	["bye.nelf.01"] = {
		"Che il bosco ti sia amico e la luna ti sia lampada.",
		"Va' leggero, come il cervo tra le felci.",
	},
	["bye.scourge.01"] = {
		"Ci rivedremo. Io, di sicuro, ci sarò ancora.",
		"Arrivederci. Io non ho fretta: di tempo, ormai, ne ho fin troppo.",
	},
	["bye.dwarf.01"] = {
		"Che la pietra ti regga i passi e la forgia ti tenga caldo il cuore!",
		"Torna presto! E la prossima volta porta tu da bere.",
	},
	["toast.01"] = {
		"Ai vivi, alla loro salute. Ai caduti, alla loro memoria.",
		"Un sorso per chi è qui. Uno per chi non c'è più.",
	},
	["toast.02"] = {
		"Alla prossima battaglia! Che sia lontana, e che la vinciamo comunque!",
		"Alla vittoria di domani! E a quella di ieri, che ci paga il giro!",
	},
	["toast.03"] = {
		"Al nostro oste, che ci serve birra annacquata con tanta dignità!",
		"All'oste! Che il suo stufato sia più tenero del suo conto.",
	},
	["toast.04"] = {
		"Alle strade che ci hanno portati qui, e a quelle che ci porteranno via.",
		"A chi ha percorso queste strade prima di noi, e a chi le percorrerà dopo.",
	},
	["toast.05"] = {
		"A noi, che siamo ancora vivi contro ogni buon senso!",
		"A noi! Nessuno ci ha ancora fermati, e non per mancanza di tentativi.",
	},
	["toast.06"] = {
		"A questa compagnia! Che le canzoni non dimentichino nessuno di noi!",
		"Alla compagnia! Chi cade lo rialziamo, chi beve troppo lo portiamo a letto!",
	},
	["toast.dwarf.01"] = {
		"Per Forgiardente, per i padri dei nostri padri e per il secondo giro!",
		"Alla montagna che ci ha fatti, e al birraio che ci rimette in sesto ogni sera!",
	},
	["toast.orc.01"] = {
		"Al sangue e al tuono! E a chi regge meglio il grog!",
		"Al tuono! E a chi resta in piedi dopo il terzo boccale!",
	},
	["thanks.01"] = {
		"Ti devo un debito. Non lo dimenticherò.",
		"Questo non lo scordo. Quando avrai bisogno, chiamami.",
	},
	["thanks.02"] = {
		"Grazie. Ti offrirei da bere, ma ho speso tutto in bende.",
		"Grazie davvero. Ti pagherei, ma ho le tasche più vuote dello stomaco.",
	},
	["thanks.03"] = {
		"{target}, quando le canzoni parleranno di oggi, il tuo nome verrà prima del mio.",
		"Se mai qualcuno racconterà questa giornata, che cominci da te.",
	},
	["thanks.04"] = {
		"Grazie. Non sono {g:abituato|abituata} a che qualcuno torni indietro per me.",
		"Grazie. Pensavo che nessuno si sarebbe fermato.",
	},
	["thanks.05"] = {
		"Grazie. Te ne devo una.",
		"Bene. Grazie.",
	},
	["jest.01"] = {
		"Ho un piano. È un pessimo piano, ma è l'unico che abbiamo.",
		"Ho un piano. Ne ho anche un secondo, ed è peggio del primo.",
	},
	["jest.02"] = {
		"Gli eroi non hanno paura. Io sono qui solo per le ricompense.",
		"Coraggio? No, no. Io sono qui per il bottino e per lo stufato.",
	},
	["jest.03"] = {
		"Dieci orsi mi hanno chiesto la stessa cosa: perché proprio dieci pelli?",
		"Il contadino voleva otto zampe di ragno. Non sette, non nove: otto.",
	},
	["jest.04"] = {
		"Ho salvato il regno tre volte questa settimana. Il regno non mi ha mai scritto.",
		"Ho abbattuto un drago, a sentire me. A sentire il bardo, era una lucertola.",
	},
	["jest.05"] = {
		"Qualcuno sa perché ogni contadino di Azeroth ha perso qualcosa nel bosco?",
		"Ogni villaggio ha un pozzo, un oste e qualcuno che ha perso una pecora.",
	},
	["jest.06"] = {
		"La prossima volta che qualcuno mi dice 'è solo una piccola commissione', scappo.",
		"«Una cosa veloce», dicevano. Tre giorni, due paludi e un orso dopo...",
	},
	["jest.mage.01"] = {
		"No, non faccio altra acqua. Sì, anche se me lo chiedi gentilmente.",
		"Il prossimo che mi chiede pane evocato diventa una pecora.",
	},
	["jest.rogue.01"] = {
		"Quella borsa? Era già aperta quando l'ho trovata. Nella tua tasca.",
		"Io non rubo. Riorganizzo la proprietà altrui.",
	},
	["jest.warrior.01"] = {
		"La mia strategia è semplice: colpisco finché non smette di muoversi.",
		"Tattica? Ho uno scudo. Quella è la tattica.",
	},
	["jest.hunter.01"] = {
		"Il mio animale è più amato di me. E, onestamente, ha ragione la gente.",
		"Il mio animale mangia meglio di me. E dorme anche di più.",
	},
	["jest.gnome.01"] = {
		"Non sono {g:basso|bassa}. Sono efficiente in altezza.",
		"L'altezza? Sopravvalutata. Le frecce mi passano sopra.",
	},
	["jest.scourge.01"] = {
		"Il bello di essere morti? Niente più raffreddori.",
		"Mangiare? Ci provo, per educazione. Finisce tutto sul pavimento.",
	},
	["pray.light.01"] = {
		"Luce, non ti chiedo di togliermi il peso. Ti chiedo spalle per portarlo.",
		"Luce, tienimi ferma la mano quando trema.",
	},
	["pray.light.02"] = {
		"Luce, accogli quelli che ho perduto. Io li porterò con me finché potrò.",
		"Luce, tienili al caldo, quelli che non ho saputo proteggere.",
	},
	["pray.elune.01"] = {
		"Madre Luna, la tua luce è fredda, ma non mi ha mai tradito.",
		"Elune, veglia su di me mentre dormo, e su chi fa la guardia al posto mio.",
	},
	["pray.earth.01"] = {
		"Madre Terra, insegnami la pazienza della pietra e la forza dell'acqua.",
		"Madre Terra, che i miei passi pesino poco su di te.",
	},
	["pray.ancestors.01"] = {
		"Antenati, guardatemi. Non vi farò vergognare di me.",
		"Antenati, prestatemi la vostra pazienza. La mia è finita.",
	},
	["pray.loa.01"] = {
		"Loa della giungla, prendete questo dono e lasciatemi la mia fortuna.",
		"Loa, ecco la frutta e le piume. Il resto lo sapete già.",
	},
	["pray.scourge.01"] = {
		"Pregare? Ho smesso quando ho smesso di respirare. Ma per te farò un'eccezione, Dama Oscura.",
		"Nessuno ascolta, laggiù. Lo dico lo stesso, per abitudine.",
	},
	["pray.gnome.01"] = {
		"O grande Ingranaggio dell'universo, fa' che oggi nulla esploda. Tranne i nemici.",
		"Se esiste un dio degli ingranaggi, oggi gli chiedo solo un po' d'olio.",
	},
	["pray.shaman.01"] = {
		"Spiriti della terra, del fuoco, dell'acqua e del vento: siate in equilibrio, e io lo sarò con voi.",
		"Terra sotto, cielo sopra, fuoco dentro, acqua intorno. Restate con me.",
	},
	["pray.gen.01"] = {
		"A chiunque ascolti: proteggi chi ho lasciato a casa.",
		"Non so a chi sto parlando. Ma se c'è qualcuno, tienili al sicuro.",
	},
	["pray.gen.02"] = {
		"Non ho mai smesso di credere, nemmeno nelle notti peggiori. Non smetterò stanotte.",
		"La mia fede è una lanterna piccola. Basta per vedere il prossimo passo.",
	},
	["pray.gen.03"] = {
		"Prego senza sapere se qualcuno ascolta. Forse pregare è proprio questo.",
		"Una volta le parole venivano da sole. Adesso le cerco, e non sempre le trovo.",
	},
	["pray.gen.04"] = {
		"Se lassù c'è qualcuno, gradirei un po' meno pioggia e un po' più oro.",
		"Ecco la mia preghiera: che il prossimo forziere non sia vuoto.",
	},
	["pray.gen.05"] = {
		"Io non prego. Affilo la lama, che è più utile.",
		"Preghiere? Preferisco contare sulle mie mani e su un buon paio di stivali.",
	},
	["pray.e.01"] = {
		"china il capo e resta in silenzio per qualche respiro.",
		"intreccia le dita e muove appena le labbra, senza un suono.",
	},
	["race.dwarf.farewell.w08.001"] = {
		"Va' in pace, e che ogni strada che prendi abbia roccia salda sotto il fango.",
		"Buon viaggio. Se passi da Ironforge, chiedi di me in una taverna qualsiasi: in una di esse sapranno dirti.",
	},
	["race.dwarf.farewell.w08.002"] = {
		"Vai, allora. E non farti ammazzare: non ho intenzione di bere alla tua memoria da {g:solo|sola}.",
		"Bene, io me ne vado. Occhio a dove metti i piedi, e alla borsa nelle città degli umani.",
	},
	["race.dwarf.greet.w08.001"] = {
		"Salute a te. Hai l'aria di chi ha bisogno di sedersi e bere qualcosa, e io sono {g:il nano giusto|la nana giusta} per tutte e due le cose.",
		"Salute! Fuori le mani, che le stringo. Sotto la montagna si saluta così.",
		"Salute, salute! Khaz Modan ti saluta, a voce alta, come sempre.",
	},
	["race.dwarf.greet.w08.002"] = {
		"Eccoti! Bene. Vieni qui accanto come se fossimo alla Grande Forgia, e raccontami le novità.",
		"Ah, una faccia amica! Fino a questo momento la mia giornata era grigia come un mucchio di scorie.",
		"Salute a te! Siediti, siediti. Si chiacchiera meglio con gli stivali fuori dalla strada.",
	},
	["race.dwarf.jest.w08.001"] = {
		"Un nano entra in una taverna. Poi esce, poi rientra: è così che controlliamo che la birra ci sia ancora.",
		"Qualcuno chiese a un nano quanto fosse profonda la miniera. «Fin dove finisce la birra», rispose, «e poi un po' più giù, per trovarne altra.»",
	},
	["race.dwarf.jest.w08.002"] = {
		"Gli gnomi costruiscono cose che esplodono. I nani costruiscono cose che non esplodono. Chissà perché, i noiosi siamo noi.",
		"Per un nano, uno spuntino leggero è qualunque cosa si possa sollevare con una mano sola.",
	},
	["race.dwarf.pray.w08.001"] = {
		"Che la Luce ci protegga, che la pietra regga sopra di noi, e che i luoghi profondi restino tranquilli ancora un po'.",
		"Alla terra che ci ha generati e alla Luce che ci trova anche laggiù: veglia sulle sale, e sulla gente che le abita.",
		"I vecchi minatori alzano il boccale alla roccia prima di un lungo scavo. Boccale non ne ho, quindi prendi le parole: reggi, e lasciaci passare.",
	},
	["race.dwarf.thanks.w08.001"] = {
		"Grazie. Dammi la mano: da dove vengo io un debito si sigilla con una stretta, e la mia è forte.",
		"Grazie davvero. È un favore che ripagherò in pietra, non in parole.",
		"Ti sono {g:grato|grata}. Non lo dico spesso, quindi ascoltalo bene.",
	},
	["race.dwarf.thanks.w08.002"] = {
		"Grazie. Ecco, l'ho detto. Non farmelo ripetere: fa male alla reputazione di un nano.",
		"Sì, grazie. Adesso facciamo tutti e due finta che ce l'avrei fatta da {g:solo|sola}.",
	},
	["race.human.farewell.w08.001"] = {
		"Abbi cura di te. Le vite sono già abbastanza brevi senza che la strada le accorci.",
		"Va' con prudenza, e torna. Ogni umano ha qualcuno che non è tornato: non diventare il mio.",
		"Alla prossima volta che le nostre strade si incrociano. Che arrivi prima di quanto questi tempi di solito concedano.",
	},
	["race.human.farewell.w08.002"] = {
		"Vai pure. Se passi dal Lion's Pride, di' che ho saldato il conto. Non ci crederanno, ma diglielo.",
		"Addio! Attenzione ai lupi nella foresta e ai nobili in città, in quest'ordine. O nell'altro.",
		"Alla prossima. Direi «la Luce ti protegga», ma mi sembri capace di cavartela anche senza.",
	},
	["race.human.greet.w08.001"] = {
		"Salve! Notizie dalla strada? Noi umani non possiamo fare a meno di chiederlo: ultimamente ne abbiamo avute fin troppe.",
		"Salve! Dove vai di bello? Ovunque sia, probabilmente lungo la strada ci ho perso qualcosa.",
	},
	["race.human.greet.w08.002"] = {
		"Pace a te. Vieni, siediti un poco: il mondo può fare a meno di noi per il tempo di una tazza.",
		"Salute a te. Chi è amico della strada è amico del mio fuoco.",
	},
	["race.human.jest.w08.001"] = {
		"Stormwind ha un reggente, una dama a corte, un re scomparso e un consiglio. Lì in mezzo, chissà dove, c'è qualcuno che decide.",
		"Chiedi a tre nobili di Stormwind chi comanda e avrai quattro risposte e un conto da pagare.",
	},
	["race.human.jest.w08.002"] = {
		"I contadini di Westfall giurano di avere il pane migliore del regno. Dicono lo stesso delle rape, quindi regolati.",
		"I nani vivono duecento anni, gli elfi diecimila, e noi umani i nostri li passiamo quasi tutti in fila a Stormwind.",
	},
	["race.human.pray.w08.001"] = {
		"Luce, mantieni verdi i campi e aperte le strade, e porta i dispersi di Lordaeron in un posto caldo.",
		"A chiunque ascolti la preghiera di un umano: non restiamo a lungo. Fa' che ciò che costruiamo duri un po' più di noi.",
		"Luce lassù, fa' che quest'anno le campane suonino per i matrimoni e non per gli allarmi.",
	},
	["race.human.thanks.w08.001"] = {
		"Grazie. È con gentilezze così che i villaggi superano gli inverni cattivi, e la gente gli anni cattivi.",
		"Grazie. Ti devo un pasto caldo alla prima locanda in cui capitiamo tutti e due.",
		"Grazie davvero. La mia gente non ha avuto molti decenni facili: ci ricordiamo di ogni mano tesa.",
	},
	["race.human.thanks.w08.002"] = {
		"Grazie! Se Stormwind un giorno salderà i suoi debiti, io salderò per {g:primo|prima} il mio con te.",
		"Ti sono {g:obbligato|obbligata}. Ti farei cavaliere, ma pare sia compito del re, e il re non c'è.",
	},
	["race.human.toast.w08.001"] = {
		"Alle vite brevi e alle amicizie lunghe! Noi umani dobbiamo bere più in fretta per farci stare tutto.",
		"Alzate i boccali: al ritorno del re, alla pazienza del reggente, e a chi paga questo giro!",
	},
	["race.nightelf.farewell.w08.001"] = {
		"Va' in pace, e che le ombre ti nascondano da qualunque cosa vada a caccia.",
		"Che Elune vegli sulla tua strada.",
	},
	["race.nightelf.farewell.w08.002"] = {
		"Arrivederci. Ci rivedremo: il mio popolo è paziente, e le strade sono lunghe.",
		"Alla prossima radura. Terrò un orecchio rivolto dalla tua parte.",
	},
	["race.nightelf.greet.w08.001"] = {
		"Stammi bene, viandante. Che la foresta si scosti al tuo passaggio, e la luna ti trovi quando ne avrai bisogno.",
		"Salute. Cammina con passo lieve, e i boschi ti accoglieranno sempre.",
		"Salve. Che gli alberi antichi si ricordino di te con gentilezza.",
	},
	["race.nightelf.greet.w08.002"] = {
		"Salve. Perdona lo sguardo: il mio popolo osserva a lungo i volti nuovi.",
		"Ehilà. Mi hai sentito arrivare? No? Bene. Salve, allora.",
	},
	["race.nightelf.greet.w08.003"] = {
		"Salve. Sì, le orecchie sentono tutto. Sì, anche quello.",
		"Salve, salve. Non badare al bagliore dei miei occhi: è solo il mio buonumore.",
	},
	["race.nightelf.jest.w08.001"] = {
		"Gli elfi della notte non arrivano mai di soppiatto. Arriviamo e basta, prima che tu te ne accorga.",
		"Perché gli elfi della notte sono così calmi? Lo saresti anche tu, dopo diecimila anni di problemi altrui.",
	},
	["race.nightelf.jest.w08.002"] = {
		"Le mie orecchie non sono lunghe. Sono quelle di tutti gli altri a essere cortissime.",
		"Mai chiedere l'età a un elfo della notte. Non perché sia scortese: perché ti servirà una sedia.",
	},
	["race.nightelf.pray.w08.001"] = {
		"Elune, custodisci le Sentinelle nella loro veglia e Malfurion nel suo lungo sogno, e insegnami la pazienza del tuo ruotare.",
		"Signora della luna, chiedo poco: un passo silenzioso, uno sguardo limpido, e la forza di restare dove c'è bisogno di me.",
	},
	["race.nightelf.thanks.w08.001"] = {
		"Grazie. La gentilezza oggi è più rara dei pozzi lunari; non dimenticherò dove ho trovato questa.",
		"Hai la mia gratitudine. Elune l'ha visto, e anch'io.",
		"Grazie. Se mai passerai per Ashenvale, gli alberi sapranno che sta passando un amico.",
	},
	["race.nightelf.thanks.w08.002"] = {
		"Grazie. Tra la mia gente questo ti varrebbe un inchino lunghissimo e lentissimo. Ti risparmio l'attesa.",
		"Ti sono {g:obbligato|obbligata}. Te lo dovrò per anni, e per una volta lo dico alla lettera.",
	},
	["race.nightelf.toast.w08.001"] = {
		"Alle foreste ancora in piedi, e a chi di noi le tiene in piedi!",
		"Alzate le coppe alla luna, che beve con noi che la invitiamo o no.",
	},
	["race.tauren.farewell.w08.001"] = {
		"Cammina in equilibrio, e lascia che sia la Madre Terra a darti il passo.",
		"Va' in pace. Che le mandrie siano grasse dovunque pieghi la tua strada.",
	},
	["race.tauren.farewell.w08.002"] = {
		"Alla prossima. Se ti servo, sarò la grossa sagoma all'orizzonte.",
		"Buona strada. Se ti perdi, cerca impronte di zoccoli grandi come piatti da portata.",
	},
	["race.tauren.greet.w08.001"] = {
		"Salve. Occhio alle corna: girano più in fretta di me.",
		"Salute a te, che sei in viaggio. L'erba è larga abbastanza per tutti e due.",
	},
	["race.tauren.greet.w08.002"] = {
		"Che An'she ti scaldi la strada, e Mu'sha vegli mentre dormi.",
		"Pace a te, nel nome della Madre Terra e dei suoi due occhi luminosi.",
		"Che la Madre Terra cammini con te, viandante, e tenga i tuoi zoccoli, o i tuoi stivali, su un terreno saldo.",
	},
	["race.tauren.greet.w08.003"] = {
		"Salve, laggiù! Senza offesa: da dove sto io, è tutto laggiù.",
		"Salve. Sì, le corna sono vere. No, non puoi appenderci il mantello.",
	},
	["race.tauren.jest.w08.001"] = {
		"Perché i tauren non giocano mai a nascondino? L'unico posto abbastanza grande per nasconderne uno è Mulgore, e tutti cercano lì per primo.",
		"Mi chiedono se le corna danno fastidio. Solo a porte, lanterne, rami bassi e alla pazienza di tutti.",
	},
	["race.tauren.jest.w08.002"] = {
		"Un tauren su una barchetta non è un passeggero. Un tauren su una barchetta è il carico.",
		"Muoversi di soppiatto non è un'arte da tauren. Il terreno fa la spia a ogni nostro passo.",
	},
	["race.tauren.pray.w08.001"] = {
		"Madre Terra, ti calpesto ogni giorno e ti ringrazio troppo di rado. Ascoltami adesso, e fa' che la strada sotto di me resti onesta.",
		"An'she, Mu'sha, occhi della Madre: guardatemi per quello che sono, e guidatemi dove c'è bisogno di me.",
	},
	["race.tauren.thanks.w08.001"] = {
		"Grazie. Il mio popolo dice che un dono fatto di cuore rende l'erba più verde dovunque passi chi l'ha dato.",
		"Hai la mia gratitudine. Me ne ricorderò quanto un tauren si ricorda di un buon abbeveratoio: per sempre.",
		"Grazie davvero. Una gentilezza che merita un cenno lungo e lento.",
	},
	["race.tauren.thanks.w08.002"] = {
		"Grazie. Ti abbraccerei, ma mi dicono che gli abbracci dei tauren vanno annunciati.",
		"Ti sono {g:obbligato|obbligata}. Se mai ti servisse qualcosa da portare, da sollevare o da schiacciare sedendoci sopra, chiedi di me.",
	},
	["race.tauren.toast.w08.001"] = {
		"Alla Madre Terra, che ci nutre, e a chi cucina, che fa la parte faticosa!",
		"Alle mandrie, alla caccia e alle mani che la cucinano! Che la Madre Terra ne prenda per prima la sua parte.",
	},
}, "base_social")
