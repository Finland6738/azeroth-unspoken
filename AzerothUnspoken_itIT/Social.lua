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
	["race.gnome.farewell.w09.001"] = {
		"Ciao per ora! Occhio alla gente alta: non sempre guarda in basso.",
		"Vai pure! Se si rompe qualcosa, mandala a me. Se sei tu a romperti, rivolgiti a un sacerdote.",
		"Arrivederci! Si torna al lavoro. Da qualche parte c'è qualcosa da regolare.",
	},
	["race.gnome.farewell.w09.002"] = {
		"Abbi cura di te. Noi gnomi sappiamo quanto in fretta si perde una casa: non perderti anche tu.",
		"Ciao, e a presto. Vieni a trovarmi a Tinker Town quando puoi. Metterò su il bollitore.",
		"Buona strada. Scrivimi, se puoi. Mi piacciono le lettere: sono l'unica cosa che non smonterei mai.",
	},
	["race.gnome.greet.w09.001"] = {
		"Ciao! Non badare a me, sono solo quaggiù a essere {g:delizioso|deliziosa}.",
		"Oh, ciao! È una fibbia nuova, quella? È una buona fibbia.",
		"Salve! Domanda veloce, senza nesso: quanto misuri, di preciso? Per la scienza.",
	},
	["race.gnome.greet.w09.002"] = {
		"Eccoti! Ottimo, ora ho qualcuno a cui spiegare la mia ultima idea.",
		"Ciao, ciao! Vieni, siediti, raccontami tutto, soprattutto le parti complicate.",
		"Che bell'incontro! Gnomeregan ti manda i suoi saluti. Da lontano. Molto lontano, per ora.",
	},
	["race.gnome.jest.w09.001"] = {
		"Quanti gnomi servono per aggiustare una lampada? Uno, ma dopo la lampada suona anche musica e ti dice che tempo fa.",
		"I nani ci chiamano bassi. Noi li chiamiamo «piacevolmente imbottiti». Tutti contenti.",
	},
	["race.gnome.pray.w09.001"] = {
		"Chiunque mandi avanti questo mondo: un po' meno guasti, oggi, per favore, e un po' più di fortuna. Al resto penso io.",
		"Se lassù qualcuno ascolta: tieni interi i miei amici e confusi i trogg. È tutta la richiesta. Grazie!",
	},
	["race.gnome.thanks.w09.001"] = {
		"Grazie! Era proprio l'aiuto che mi serviva, fino alla terza cifra decimale.",
		"Oh, grazie! Mi hai risparmiato un sacco di preoccupazioni, e noi gnomi ci preoccupiamo in modo molto efficiente.",
		"Ti sono {g:obbligato|obbligata}! Ricambierò con gli interessi. Interessi composti, se hai pazienza.",
	},
	["race.gnome.thanks.w09.002"] = {
		"Grazie. Da quando la città è caduta, la gentilezza degli altri è ciò che ha tenuto in piedi il mio popolo. Ne conto ogni briciola.",
		"Grazie, davvero. Noi gnomi abbiamo perso molto, ma non le buone maniere. E nemmeno la gratitudine.",
	},
	["race.gnome.toast.w09.001"] = {
		"A Gnomeregan! Che possiamo rivederne le sale, ripulite e ronzanti!",
		"Alzate i boccali! Alle mani ingegnose, ai piedi veloci, e al giorno in cui torneremo a casa.",
	},
	["race.orc.farewell.w09.001"] = {
		"Buona strada. Che il tuo filo resti affilato e l'acqua ti basti.",
		"Forza e onore sul tuo cammino. Torna con delle storie.",
	},
	["race.orc.farewell.w09.002"] = {
		"Alla prossima battaglia. Non cominciarla senza di me.",
		"Vai. Gli spiriti sorvegliano la strada, e anche i banditi: occhio a tutti e due.",
	},
	["race.orc.greet.w09.001"] = {
		"Salute. Siediti, se vuoi: la terra è gratis e la compagnia è onesta.",
		"Salute a te. Braccio forte, occhio limpido? Bene. Allora andremo d'accordo.",
	},
	["race.orc.greet.w09.002"] = {
		"Eccoti! Cominciavo ad annoiarmi dei miei grugniti.",
		"Ah, una faccia che vale un saluto. Vieni, raccontami cosa hai preso a botte ultimamente.",
	},
	["race.orc.jest.w09.001"] = {
		"Perché gli orchi sono pessime spie? Pensiamo che sussurrare sia una cosa che fanno gli altri.",
		"Per un orco, la delicatezza è sfondare una porta sola.",
	},
	["race.orc.jest.w09.002"] = {
		"A Durotar ci sono due stagioni: caldo, e quella in cui ti accorgi che fa caldo.",
		"I troll dicono che gli orchi ridono come le frane: di rado, forte, e nessuno vuole starci sotto.",
	},
	["race.orc.pray.w09.001"] = {
		"Spiriti della terra e del vento, non chiedo favori. Solo di restare {g:dritto|dritta} quando conta.",
		"Antenati, la maledizione è uscita dal nostro sangue. Aiutatemi a tenerla fuori, nel mio piccolo.",
	},
	["race.orc.thanks.w09.001"] = {
		"Hai aiutato un orco. I clan hanno cantato per molto meno. Io dico solo grazie.",
		"Grazie. Le belle parole non mi vengono facili, quindi prendi queste, semplici, e tienitele.",
		"Grazie. Se mai ti servisse un muro tra te e i guai, chiamami.",
	},
	["race.orc.thanks.w09.002"] = {
		"Grazie. Quando lo racconteremo, l'aiuto non mi serviva.",
		"Ti sono {g:obbligato|obbligata}. Ma che non diventi un'abitudine: il mio orgoglio si ammacca più della mia pelle.",
	},
	["race.scourge.farewell.w09.001"] = {
		"Addio. Cerca di restare in vita: tornare come sono {g:tornato|tornata} io non vale la fatica.",
		"Arrivederci. Tieni la carne sulle ossa, e le ossa in ordine. Consiglio di chi se ne intende.",
	},
	["race.scourge.farewell.w09.002"] = {
		"Buona strada. I vivi hanno così poco tempo: spendi bene il tuo, e spendine un po' per tornare.",
		"Alla prossima. Tienimi un posto da qualche parte: non mi serve, ma mi piace essere {g:atteso|attesa}.",
	},
	["race.scourge.greet.w09.001"] = {
		"Salve. Non badare all'odore: viene insieme alla libertà.",
		"Saluti. Sì, sto parlando. Sì, sono {g:morto|morta}. Le due cose possono stare insieme.",
		"Piacere di incontrarti. Ti darei la mano, ma poi conteresti le dita.",
	},
	["race.scourge.greet.w09.002"] = {
		"Ah, una faccia che non si tira indietro. Salve, e grazie per questo.",
		"Salve, anima affine. Sì, affine: anche i morti sanno dirlo, e pensarlo.",
		"Che piacere vederti. Davvero. Non lo dico a molti.",
	},
	["race.scourge.jest.w09.001"] = {
		"Il lato buono dell'essere morti? Nessuno mi chiede di aiutare a portare la bara. Conflitto d'interessi.",
		"Un Reietto entra nella tenda di un guaritore. «Da quanto ce l'ha?» «Dal funerale.» Non gli hanno nemmeno fatto pagare.",
	},
	["race.scourge.pray.w09.001"] = {
		"Luce, se mi ascolti: adesso mi bruci. Ti chiedo lo stesso. Fanne quello che vuoi.",
		"A ciò che sta lassù, o laggiù, o da nessuna parte: io sono ancora qui. Prendila come una preghiera o come un reclamo.",
	},
	["race.scourge.thanks.w09.001"] = {
		"Grazie. Mi hai aiutato senza prima fare il conto di cosa sono. L'ho notato.",
		"Ti ringrazio. La gratitudine funziona ancora, in questo corpo, anche se poco altro funziona a dovere.",
		"Grazie. Me lo ricorderò, e i morti hanno tutto il tempo del mondo per ricordare.",
	},
	["race.scourge.thanks.w09.002"] = {
		"Grazie. Arrossirei, ma ci vorrebbe del sangue che si muove da qualche parte.",
		"Ti sono {g:obbligato|obbligata}. Ti offrirei da bere, ma poi starei solo a guardarti mentre te lo godi.",
	},
	["race.scourge.toast.w09.001"] = {
		"Alla Dama Oscura, che ci ha restituito la testa! E a chi ce la ricuce dopo.",
		"Ai vivi di questa tavola: bevete anche per me, io il sapore non lo sento. Mi godrò lo spettacolo.",
	},
	["race.troll.farewell.w09.001"] = {
		"Buon cammino, e che gli spiriti tengano i serpenti fuori dai tuoi stivali.",
		"Buon viaggio. Se passi da Sen'jin, il pesce lo offro io.",
		"Alla prossima. Testa bassa e fortuna alta.",
	},
	["race.troll.farewell.w09.002"] = {
		"Che i loa veglino sulla tua strada. Io veglio sulla mia: è più lunga.",
		"Io vado. Cerca di non farti mangiare prima che ci rivediamo.",
		"Occhi aperti. Il mondo morde.",
	},
	["race.troll.greet.w09.001"] = {
		"Ehilà! La giornata è buona e gli spiriti si fanno sentire. Li senti anche tu?",
		"Oh, viandante! Vieni, siediti, racconta a un troll qualcosa di nuovo.",
		"Salve. Non badare alle zanne: anche loro dicono salve.",
	},
	["race.troll.greet.w09.002"] = {
		"Eccoti! Bene. Adesso la giornata ha qualcuno con cui dividere il pesce.",
		"Ah, una faccia amica. Oggi i loa hanno lavorato bene.",
		"Vieni qui, vieni qui. Un saluto Darkspear vuole tutte e due le braccia.",
	},
	["race.troll.jest.w09.001"] = {
		"Perché i troll hanno le braccia lunghe? Per prendere l'ultimo pesce prima che gli altri arrivino alla pentola.",
		"Un troll entra in una locanda. Si abbassa. Picchia comunque la testa sulla trave. Fine della storia.",
	},
	["race.troll.jest.w09.002"] = {
		"Gli orchi chiedono perché i troll ridono tanto. Semplice: abbiamo visto ballare gli orchi.",
		"La rigenerazione dei troll è un dono: puoi fare lo stesso errore due volte nella stessa battaglia.",
	},
	["race.troll.pray.w09.001"] = {
		"Loa, non chiedo molto: una strada libera, la pancia piena, e nemici più lenti di me.",
		"Spiriti della tribù, vegliate sui Darkspear dovunque siamo sparsi, e riportateci a casa, al mare.",
	},
	["race.troll.thanks.w09.001"] = {
		"Grazie. Dirò il tuo nome agli spiriti: tengono i conti meglio di me.",
		"Grazie. Una buona azione è come una bella pesca: tutta la tribù ne sente parlare.",
		"Grazie. Hai fatto una gentilezza a un troll, e i troll le restituiscono con gli interessi.",
	},
	["race.troll.thanks.w09.002"] = {
		"Grazie. La carne si sarebbe richiusa comunque, ma con un aiuto fa prima.",
		"Ti sono {g:obbligato|obbligata}. Adesso ho un debito, e ai troll non piace averne. Sbrigati ad aver bisogno di qualcosa.",
	},
	["race.troll.toast.w09.001"] = {
		"Alle reti piene, alle lance affilate, e agli spiriti che non ce le fanno mai mancare!",
		"In alto i boccali: ai Darkspear, e a chiunque abbia mai diviso un fuoco con noi!",
	},
	["faction.alliance.farewell.w10.001"] = {
		"Buona strada. Qualunque bandiera tu incontri, spero sia la nostra.",
		"Addio, e quando puoi tieni le spalle contro un muro dell'Alleanza.",
		"Al prossimo accampamento. L'Alleanza è grande, ma le sue strade continuano a incrociarsi.",
	},
	["faction.alliance.greet.w10.001"] = {
		"Salute a te! Che notizie dal tuo angolo di Alleanza?",
		"Ehilà! Qualunque capitale tu chiami casa, qui sei tra amici.",
	},
	["faction.alliance.greet.w10.002"] = {
		"Salute a te. Un'unica bandiera su tutti e due, qualunque sia la strada.",
		"Per la Luce, per la luna o per la montagna, scegli tu: salute a te.",
	},
	["faction.alliance.jest.w10.001"] = {
		"Quanti capi dell'Alleanza servono per accendere una lanterna? Quattro: uno la comanda, uno la forgia, uno la benedice e uno gnomo la fa esplodere.",
		"L'Alleanza ha un nano per la forza, un elfo per la pazienza, uno gnomo per l'ingegno e un umano per le scartoffie. Indovina chi arriva sempre in ritardo.",
	},
	["faction.alliance.pray.w10.001"] = {
		"Luce, Elune, artefici della pietra, chiunque vegli sull'Alleanza: tenete aperte le nostre strade e chiusi i nostri cancelli davanti ai morti.",
		"A chi veglia su tutti noi, con qualunque nome: fa' che i popoli dell'Alleanza durino più delle loro liti.",
	},
	["faction.alliance.thanks.w10.001"] = {
		"Grazie! Mettilo sul conto dell'Alleanza: è lunghissimo, ma onesto.",
		"Grazie. Tra alleati non è mai un debito, solo un turno. Il prossimo tocca a me.",
	},
	["faction.alliance.thanks.w10.002"] = {
		"Ti ringrazio. È l'Alleanza al suo meglio: un aiuto dato prima che qualcuno chiedesse da quale popolo vieni.",
		"Grazie. La gentilezza di un alleato arriva sempre un po' più morbida di quella di uno sconosciuto.",
	},
	["faction.horde.farewell.w10.001"] = {
		"Buon cammino. Che le strade dell'Orda ti siano gentili, e i suoi nemici lenti.",
		"Forza e onore, finché le nostre strade non si incroceranno di nuovo.",
		"Buon viaggio. Riporta indietro tutta la pelle: all'Orda servono tutte le braccia.",
	},
	["faction.horde.greet.w10.001"] = {
		"Throm-ka. Forza a te, e una strada facile.",
		"Salute. Notizie dall'altro capo dell'Orda?",
	},
	["faction.horde.greet.w10.002"] = {
		"Che piacere vedere una faccia amica dell'Orda. Vieni, fermati un po'.",
		"Eccoti. L'Orda è vasta, e fa sempre piacere quando ci fa capitare nello stesso posto.",
	},
	["faction.horde.jest.w10.001"] = {
		"Quanti soldati dell'Orda servono per piantare una tenda? Un orco che batte la mazza, un tauren che tiene il palo, un troll che ride, e un Reietto che fa notare che è al rovescio.",
		"Perché l'Orda non perde mai al tiro alla fune? I tauren tirano, gli orchi urlano, i troll barano, e i Reietti semplicemente non mollano mai.",
	},
	["faction.horde.pray.w10.001"] = {
		"Spiriti, Madre Terra, loa, o chiunque ascolti: vegliate sugli accampamenti sparsi dell'Orda, e riportate a casa la sua gente.",
		"A chiunque vegli sull'Orda, in qualunque lingua preferisca: tienici interi ancora un po'.",
	},
	["faction.horde.thanks.w10.001"] = {
		"Grazie. Nell'Orda l'aiuto è un debito, e i miei li pago.",
		"Grazie. Te lo restituirò alla maniera dell'Orda: quando ti servirà, senza che tu debba chiederlo.",
	},
	["faction.horde.thanks.w10.002"] = {
		"Grazie. Canterei le tue lodi, ma l'Orda fa già abbastanza rumore.",
		"Ti devo un favore. Non dirlo a nessuno: ho una fama da {g:brontolone|brontolona} da difendere.",
	},
	["time.day.farewell.w10.001"] = {
		"Va' in pace, e sfrutta bene la luce finché dura.",
		"Arrivederci. In una giornata così c'è tanta strada da fare: non sprecarla con me.",
	},
	["time.day.greet.w10.001"] = {
		"Buongiorno! E per ora, almeno, il giorno è buono davvero.",
		"Salve! Bell'ora per incontrarsi per strada, con tutta questa luce per guardarsi in faccia.",
	},
	["time.day.thanks.w10.001"] = {
		"Grazie. Mi hai fatto risparmiare un'ora buona di luce, e quelle non crescono sugli alberi.",
		"Ti ringrazio. Il lavoro della giornata adesso pesa meno, e la giornata è già lunga di suo.",
	},
	["time.night.thanks.w10.001"] = {
		"Grazie. La gentilezza al buio vale doppio: è più difficile da trovare.",
		"Ti ringrazio. A quest'ora avevo smesso di aspettarmi qualsiasi aiuto.",
	},
	["farewell.w15.light.001"] = {
		"Vai pure. Cerca di non cacciarti in guai di cui dovrei sentir parlare.",
		"Ciao! Non fare niente che non farei io. Il che ti lascia parecchio margine.",
	},
	["farewell.w15.light.002"] = {
		"Ci si vede! Cerca di non perdere pezzi per strada.",
		"A presto. Tieni tutti i pezzi al loro posto.",
	},
	["farewell.w15.light.003"] = {
		"Vai, vai. Farò finta che non mi dispiaccia vederti partire.",
		"Su, sparisci. Me la caverò. Credo. Quasi di sicuro.",
	},
	["farewell.w15.light.004"] = {
		"saluta con la mano, con molto più entusiasmo di quanto l'occasione richieda.",
		"fa un saluto allegro, un tantino esagerato.",
	},
	["farewell.w15.light.005"] = {
		"Ciao, per ora. È stato bello, questo. Qualunque cosa fosse.",
		"Arrivederci, allora. Mi è piaciuto più di quanto pensassi.",
		"Arrivederci, e grazie della compagnia.",
	},
	["farewell.w15.road.001"] = {
		"Buon cammino, e che ogni strada sia gentile con i tuoi piedi.",
		"Che le miglia ti siano lievi, ovunque tu vada.",
		"Stammi bene, e che ogni svolta ti tratti con giustizia.",
	},
	["farewell.w15.road.002"] = {
		"Abbi cura di te, là fuori. Dico sul serio.",
		"Bada a te. Il mondo è sbadato; tu non esserlo.",
	},
	["farewell.w15.road.003"] = {
		"Va', allora. Tieni la testa sveglia e lo zaino leggero.",
		"Bada alla strada, e che la strada badi a te.",
		"Vai, dunque. Dovunque porti il cammino, tieni gli occhi aperti.",
	},
	["farewell.w15.road.004"] = {
		"si porta due dita alla fronte in un saluto di commiato, poi si volta.",
		"saluta con un breve gesto da sopra la spalla, già in cammino.",
	},
	["farewell.w15.road.005"] = {
		"Un congedo è solo lo spazio tra due incontri. Stammi bene.",
		"Ogni addio lascia una porta aperta. Bada di ritrovarla.",
	},
	["farewell.w15.road.006"] = {
		"Stammi bene, {target}. Guarda dove cammini.",
		"Occhio a dove vai, e non farti masticare da niente.",
	},
	["thanks.w15.plain.001"] = {
		"Lo apprezzo.",
		"Lo apprezzo molto. Davvero.",
	},
	["thanks.w15.plain.002"] = {
		"Grazie. È una gentilezza.",
		"Gentile da parte tua, davvero.",
		"Grazie. Un gesto garbato.",
	},
	["thanks.w15.plain.003"] = {
		"Grazie. Però non abituarti a sentirmelo dire.",
		"Grazie. E adesso non parliamone mai più.",
	},
	["thanks.w15.plain.004"] = {
		"Lasciami almeno stringerti la mano. Te lo sei meritato.",
		"Dammi la mano. Questo merita un grazie fatto bene.",
	},
	["thanks.w15.plain.005"] = {
		"Ti sono {g:obbligato|obbligata}.",
		"Te ne sono {g:obbligato|obbligata}. Non lo scordo.",
	},
	["thanks.w15.plain.006"] = {
		"Grazie. Ti darei una mancia, ma ho visto la mia borsa ed è imbarazzante.",
		"Grazie mille. La mia borsa vorrebbe aggiungere qualcosa, ma è timida.",
	},
	["thanks.w15.plain.007"] = {
		"Un bel gesto. Non lo dico tanto per dire.",
		"È stato un gesto onesto. Non fingerò il contrario.",
	},
	["thanks.w15.plain.008"] = {
		"Sei un tesoro. Grazie!",
		"Sei una meraviglia, lo sai? Grazie!",
	},
	["thanks.w15.plain.009"] = {
		"Ti ringrazio, e volentieri.",
		"Accetta il mio grazie, detto senza fronzoli.",
	},
	["thanks.w15.plain.010"] = {
		"Grazie. Ne avevo un bisogno che non ammetterei mai.",
		"Mi è servito. Niente discorsi, ma mi è servito.",
	},
	["thanks.w15.plain.011"] = {
		"ringrazia con un cenno veloce e un sorriso storto.",
		"annuisce, riconoscente, con un mezzo sorriso sghembo.",
	},
	["thanks.w15.plain.012"] = {
		"Grazie, {target}. Davvero.",
		"Grazie mille. Sei una brava persona.",
	},
	["thanks.w15.warm.001"] = {
		"Avevi tutte le ragioni per passare oltre. Grazie di non averlo fatto.",
		"Potevi tirare dritto. Mi fa piacere che tu non l'abbia fatto.",
	},
	["thanks.w15.warm.002"] = {
		"Ha contato più di quanto immagini. Grazie.",
		"Non hai idea di quanto mi abbia aiutato. Davvero.",
		"È stato importante. Più di quanto riesca a dire.",
	},
	["thanks.w15.warm.003"] = {
		"Di quello che diventerò, un pezzetto sarà merito tuo.",
		"Se mai combinerò qualcosa di buono, ricordati che ci hai messo mano anche tu.",
	},
	["thanks.w15.warm.004"] = {
		"Considerami in debito. Intendo saldarlo per bene.",
		"Il mio grazie, dato di cuore, e un debito che intendo onorare.",
	},
	["thanks.w15.warm.005"] = {
		"Una gentilezza così rende il mondo un po' più sopportabile.",
		"Sono le piccole gentilezze come questa a tenerti in piedi. Grazie.",
	},
	["thanks.w15.warm.006"] = {
		"posa una mano sul cuore e china il capo in segno di gratitudine.",
		"si porta una mano al petto e abbassa la testa, {g:grato|grata}.",
	},
	["thanks.w15.warm.007"] = {
		"Grazie. Così mi rendi difficile restare {g:cinico|cinica}.",
		"Occhio, o mi rovini la pessima opinione che ho della gente. Grazie.",
	},
	["thanks.w15.warm.008"] = {
		"Certi debiti pesano. Questo lo porto volentieri.",
		"Questo debito lo porto con piacere. Non pesa niente.",
	},
	["thanks.w15.warm.009"] = {
		"Grazie! Se mai capiti in una taverna mentre ci sono anch'io, il primo boccale è mio.",
		"Grazie! Ti devo da bere, e i miei debiti li pago.",
	},
	["thanks.w15.warm.010"] = {
		"Grazie, sul serio. Cercherò di valere la fatica che hai fatto.",
		"Farò del mio meglio per meritarlo. Grazie.",
	},
	["thanks.w15.warm.011"] = {
		"si piega in un inchino lento e profondo, come per saldare un debito.",
		"s'inchina a fondo, e resta giù un istante più di quanto chieda l'educazione.",
	},
	["thanks.w15.warm.012"] = {
		"{target}, grazie. Il nome me lo tengo stretto, e quello che significa.",
		"Mi ricorderò a chi devo essere {g:grato|grata}.",
	},
}, "base_social")
