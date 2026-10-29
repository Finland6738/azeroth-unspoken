-- Testi di base in italiano: saluti, brindisi, scherzi e preghiere. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySocial.lua.
local ADDON, NS = ...

NS:AddTexts("itIT", {
	["greet.01"] = {
		"Ben trovato, viandante. Che la tua strada sia stata meno dura della mia.",
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
		"Lok'tar, fratello. Hai combattuto bene, ultimamente?",
		"Lok'tar. Vedo cicatrici nuove: raccontami.",
	},
	["greet.tauren.01"] = {
		"Che la Madre Terra ti guidi i passi.",
		"Il vento delle praterie ti ha portato fin qui. Sii il benvenuto.",
	},
	["greet.troll.01"] = {
		"Ehi, amico! Ti va bene la giornata? A me sì, finché nessuno mi tira una lancia.",
		"Ehi, tu! Bella giornata per pescare, brutta per lavorare.",
	},
	["greet.scourge.01"] = {
		"Vivo? Che fortuna. Goditela finché dura.",
		"Non fissarmi la mascella. Ci tengo ancora.",
	},
	["greet.human.01"] = {
		"La Luce sia con te, amico.",
		"Che la Luce ti tenga la mano ferma e la tavola piena.",
	},
	["greet.dwarf.01"] = {
		"Salute! Hai sete? Io sì. Io ho sempre sete.",
		"Ehilà! Barba asciutta, eh? Rimediamo subito.",
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
		"Alla prossima, compagno. Tieni l'arma pulita e le spalle coperte.",
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
		"Forza e onore.",
		"Lok'tar. Ci vediamo dove si combatte.",
	},
	["bye.tauren.01"] = {
		"Cammina con il vento, amico.",
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
		"Che la tua barba cresca folta e il tuo boccale non resti mai vuoto!",
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
		"Per Forgiardente, per le barbe dei padri e per il secondo giro!",
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
		"Non sono basso. Sono efficiente in altezza.",
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
}, "base_social")
