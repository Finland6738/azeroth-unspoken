-- Italian texts of the regional pack kalimdor_orgrimmar (#102). The rules are in AzerothUnspoken_Kalimdor/Orgrimmar.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("durotar", "itIT", "kalimdor_orgrimmar", [==[
	["org.dawn.01"] = {
		"guarda la prima luce dell'alba traboccare dall'orlo del canyon e scorrere giù per la pietra rossa.",
		"sente partire i primi martelli della giornata mentre il cielo sopra il canyon schiarisce nell'alba.",
		"resta {g:fermo|ferma} mentre l'alba raggiunge a una a una le punte delle mura, come se le contasse.",
	},
	["org.dusk.01"] = {
		"Il crepuscolo riempie prima il canyon; il cielo resta chiaro a lungo dopo che le vie si sono arrossate dei fuochi delle torce.",
		"I fuochi delle torce si accendono lungo le mura mentre al crepuscolo la luce scivola via dalla valle.",
		"Crepuscolo a Orgrimmar: i fuochi delle forge brillano di più, le voci si abbassano.",
	},
	["org.dusk.02"] = {
		"Crepuscolo, e la giornata è finita. Qualcuno mi indichi del cibo.",
		"Il sole cala dietro le mura. Bene. È ora di trovare un fuoco e una scodella finché dura il crepuscolo.",
		"Già il crepuscolo? Ho passato la giornata intera a contrattare.",
	},
	["org.farewell.01"] = {
		"Attenzione alle punte, uscendo.",
		"Io vado. Tenete calde le forge.",
		"Alla prossima volta che la città mi trascinerà dentro.",
	},
	["org.farewell.02"] = {
		"Che le mura restino in piedi finché le nostre strade non si incroceranno ancora.",
		"Va' in pace. Il canyon sarà qui, in fondo alla strada.",
		"Strade sicure oltre il portale.",
	},
	["org.greet.01"] = {
		"Fa piacere vedere una faccia amica dentro queste mura.",
		"Salute! Mura solide, e compagnia ancora più solida.",
		"Salve. Cerchiamo un po' di fresco insieme, se se ne trova.",
	},
	["org.greet.02"] = {
		"Salute a te, sotto gli stendardi dell'Orda.",
		"Salve, fra queste mura rosse e sotto questi stendardi.",
		"Che la strada fin qui ti sia stata breve, e la sosta lunga.",
	},
	["org.jest.01"] = {
		"A Orgrimmar perfino i mobili hanno le punte. Mi sono {g:seduto|seduta} una volta. Una.",
		"Come si trova un goblin nel Drag? Basta pronunciare la parola sconto.",
		"I grunt non ridono alle battute. L'ho verificato. A lungo.",
	},
	["org.journey.arrival.01"] = {
		"scivola giù dalla viverna sulla torre, con le gambe rigide per il volo, e si scuote la polvere di dosso sopra la Valley of Strength.",
		"atterra alla torre di volo con la polvere negli occhi e il rumore della città che sale incontro all'atterraggio.",
		"scende dal dorso della viverna in uno sbuffo di polvere e le dà una pacca sul collo, non troppo vicino ai denti.",
	},
	["org.journey.arrival.02"] = {
		"Le viverne sono bestie splendide, ma dopo un volo le mie gambe preferiscono la terra di casa.",
		"Finalmente sulla terra ferma. Da lassù la città sembrava una crepa nella roccia rossa; quaggiù profuma di cena.",
		"La torre, i tamburi, la folla di sotto, la terra sotto i piedi. Atterraggio fatto, e meno male.",
	},
	["org.journey.start.01"] = {
		"Si sale. Non lasciarmi cadere sui cactus.",
		"Tieniti stabile, bestia. Ho pagato il volo intero.",
		"Arrivederci, Orgrimmar. Tieni alto il chiasso finché non torno a casa.",
	},
	["org.levelup.01"] = {
		"Un altro passo avanti. È ora di andare dal mio maestro prima che la sensazione svanisca.",
		"Un po' più forte, e nella città giusta per farlo vedere. I maestri saranno contenti, o almeno meno delusi.",
		"Le pareti del canyon non cambiano, ma io sì. Un segno in più graffiato sulla lunga salita.",
	},
	["org.lore.drag.song.01"] = {
		"Una canzone da bancarella del Drag, cantata sopra i martelli:\nCuoio, ferro, sale e spago,\ntutto quel che serve in via;\ntratta pure, amico mio,\nma più svelto tratto io.",
		"Una venditrice del Drag la canta ai grunt di passaggio:\nCompra lama, compra cinta,\ncompra fibbia, compra laccio;\nse la borsa ti è leggera,\nprendo pure qualche straccio.",
	},
	["org.lore.honor.formula.01"] = {
		"Lo abbaiano i maestri della Valley of Honor, così forte che si sente da fuori:\nScudo basso e occhio fermo,\nchi più grida, lascia andare;\nlama calma trova il varco,\nchi si vanta sta a parlare.",
		"Quello che le reclute rispondono in coro dal cortile, quando i maestri chiedono:\nIl fantoccio non risponde,\ncerca il varco, impara il gioco;\nma il nemico non perdona:\ntieni a mente, e parla poco.",
	},
	["org.muse.alliance.01"] = {
		"Qui ogni occhio potrebbe dare l'allarme. Continuo a camminare come se fossi di casa, e spero che nessuno chieda.",
		"Il mercanteggiare suona uguale in ogni lingua, anche in una che non capisco. Tengo d'occhio le mani, non le parole.",
		"Fumo, ferro, pelli. Sotto il chiasso è solo una città, e sono l'unica persona qui con un occhio su ogni uscita.",
	},
	["org.muse.canyon.01"] = {
		"Alzi gli occhi e c'è solo una striscia di cielo. Il resto è pietra.",
		"Il vento trova la strada giù nel canyon, ma ci arriva stanco, e il cielo lassù è appena un nastro fra la pietra rossa.",
		"Il canyon tiene la città in una mano rossa di pietra, a coppa, con un po' di cielo versato sopra. Ci si sente piccoli, e al sicuro lo stesso.",
	},
	["org.muse.dawn.01"] = {
		"L'alba sull'orlo del canyon, e quaggiù i primi martelli già al lavoro.",
		"I primi lupi portati fuori, le prime bancarelle aperte. All'alba la città sbadiglia e si stiracchia.",
		"Luce del primo mattino, pietra fredda, odore di pane da qualche parte. L'alba è l'unica ora quieta di Orgrimmar.",
	},
	["org.muse.drag.01"] = {
		"Un fabbro in fondo al Drag discute con un cliente sul prezzo di un chiodo. Si divertono tutti e due.",
		"Qualcuno ha steso pelli ad asciugare da un lato all'altro della via. Schivo la terza e mi prendo in faccia la quarta.",
		"Il Drag al lavoro: scintille, urla e un lupo addormentato sotto una bancarella.",
	},
	["org.muse.drums.01"] = {
		"ascolta per un momento un tamburo da qualche parte in città, regolare come un battito.",
		"batte due dita a tempo con un tamburo lontano, senza farci caso.",
		"si ferma a lasciare che un rullo di tamburi scivoli giù per le pareti del canyon e svanisca.",
	},
	["org.muse.errands.01"] = {
		"Bene. Banca, cibo, una cote, poi i guai. In quest'ordine.",
		"Orgrimmar ha tutto. Tranne il silenzio.",
		"Qui qualcuno vende di tutto. Devo solo trovare chi.",
	},
	["org.muse.forge.01"] = {
		"I fuochi delle forge in questa città non riposano mai. Qualcuno, da qualche parte, sta sempre picchiando su qualcosa.",
		"Ferro, fuoco e il suono dei martelli. Orgrimmar lavora come combatte: a gran voce.",
		"Non sento più le incudini accanto ai fuochi delle forge. Così capisco di essere qui da un po'.",
	},
	["org.muse.heat.01"] = {
		"Mezzogiorno nel canyon: le pareti di pietra restituiscono tutto il sole che hanno inghiottito.",
		"Il caldo del sole si piazza nelle valli come un gatto grasso. Perfino i grunt si muovono più piano sulla pietra rovente.",
		"Sole sulla pietra rossa. Darei una moneta d'oro per un angolo davvero fresco.",
	},
	["org.muse.honor.01"] = {
		"Fantocci d'allenamento, pestati fino a non riconoscerli più. Una vita dura, e nemmeno uno scudo fra tutti.",
		"Le reclute si esercitano nel cortile. Qualcuno avrà un livido grande come uno scudo prima di cena.",
		"Il clangore delle lame d'allenamento sugli scudi mi fa prudere il braccio.",
	},
	["org.muse.market.01"] = {
		"Carne affumicata, frutti di cactus, pelle di lupo e lo stufato bruciato di qualcuno. Troverei il mercato a occhi chiusi, moneta in mano.",
		"Il mercato ronza come un alveare. Tutti vendono, tutti contano monete, tutti sicuri di guadagnarci.",
		"Un mercante mi ha appena {g:chiamato amico|chiamata amica}. Mi costerà qualche moneta.",
	},
	["org.muse.night.01"] = {
		"Qui la notte non è mai buia, soltanto rossa di fuoco.",
		"Stanotte i fuochi delle torce sulle mura allungano le punte in lunghi denti sulla strada.",
		"Di notte la città si calma, ma da qualche parte il fuoco di una forgia continua a brillare come un occhio che non vuole chiudersi.",
	},
	["org.muse.patrol.01"] = {
		"I grunt fanno la ronda a coppie, mai di fretta, mai in ritardo. C'è qualcosa di rassicurante.",
		"Passa una pattuglia, asce in spalla. Nessuno si scansa; non serve.",
		"Qualcuno fa la guardia perché noi altri possiamo contrattare. Un giorno dovrei ringraziare un grunt.",
	},
	["org.muse.peoples.01"] = {
		"Orchi, troll, tauren, i Reietti: tutti in una città, tutti ad alzare la voce. Non dovrebbe funzionare, e invece funziona, quasi sempre.",
		"In banca sento quattro accenti in un solo respiro. L'Orda è una casa molto rumorosa.",
		"Qui non siamo d'accordo quasi su niente, tranne le mura, e lo diciamo a gran voce. Forse basta.",
	},
	["org.muse.spikes.01"] = {
		"Punte sui muri, punte sui tetti, punte sui grunt. Qui qualcuno ha una vera passione per le punte.",
		"Prima ho urtato un palo della palizzata. Ho ancora il buco a dimostrarlo.",
		"Arredamento di Orgrimmar: se non punge, brucia.",
	},
	["org.muse.spirits.01"] = {
		"Il fumo delle capanne sale verso l'alto e si porta dietro l'odore delle erbe. Qualcuno canta sottovoce.",
		"Qui c'è quiete. Perfino i tamburi sembrano pensarci prima di parlare, e il fumo resta basso.",
		"Un troll intaglia qualcosa accanto a un fuoco fumoso. Non alza gli occhi, e io non domando.",
	},
	["org.muse.wisdom.01"] = {
		"I tauren qui parlano a voce bassa, come se ogni parola costasse loro un passo. Mi ritrovo ad ascoltare.",
		"Passano sciamani con i totem alla cintura e la voce smorzata, e l'aria sembra fare loro spazio.",
		"Da qualche parte in quella grande sala si decide dell'Orda. Qui fuori, un vecchio orco con la voce roca sgrida un lupo.",
	},
	["org.muse.wolves.01"] = {
		"si fa da parte mentre un cavaliere su un grande lupo passa al trotto, con gli artigli della bestia che ticchettano sulla pietra.",
		"guarda passare un cavaliere su un lupo, con le orecchie dell'animale che si voltano a ogni grido dalle bancarelle.",
		"fa spazio a due lupi sulla strada; uno annusa, valuta e prosegue.",
	},
	["org.muse.zeppelin.01"] = {
		"Dicono che gli zeppelin dei goblin fuori dalle porte arrivino fino a Undercity e a Grom'gol. Ci crederò quando ci sarò {g:salito|salita} sopra.",
		"Un grunt giura che gli zeppelin non precipitano mai. Un goblin ha giurato lo stesso, e rideva.",
		"Da qualche parte oltre le porte parte uno zeppelin, pieno di gente che si fida delle corde dei goblin.",
	},
	["org.npc.banker.01"] = {
		"Tutto quello che possiedo, prego. Con cura. Qualcosa morde, e le monete sono contate.",
		"Sono qui a depositare la mia fortuna in monete. Non ridete.",
		"Lascio a voi le mie monete. Avete serrature più grosse delle mie.",
	},
	["org.npc.flightmaster.01"] = {
		"alza gli occhi verso le viverne sulla torre mentre il mastro di volo controlla un elenco, con i mantelli mossi dal vento.",
		"fa un cenno al mastro di volo; in alto, una viverna scuote le ali nel vento.",
		"aspetta accanto alla torre di volo mentre una viverna atterra in una folata di vento e polvere.",
	},
	["org.npc.guard.01"] = {
		"Un grunt di Orgrimmar: braccia come pali, una lama al fianco, occhi che hanno visto molti viandanti e se ne sono fidati di pochi.",
		"Il grunt mi squadra come un fabbro squadra una lama.",
		"Grosso, pieno di cicatrici, paziente, una lama a portata di mano. Il genere di guardia che fa piacere avere dalla propria parte.",
	},
	["org.npc.guard.02"] = {
		"Un grunt. Se decide che sono un problema, presto i grunt saranno parecchi di più. Mani ferme.",
		"Gli occhi della guardia si fermano su di me un battito di troppo. Tengo le mani sciolte e il passo regolare.",
		"Non fissare. Non affrettarti. Mani in vista. I grunt notano tutte e tre le cose.",
	},
	["org.npc.innkeeper.01"] = {
		"fa un cenno all'oste, che ha l'aria di chi ha sedato cento risse e ne ha cominciata qualcuna.",
		"incrocia lo sguardo dell'oste attraverso la sala affollata e riceve in cambio un breve cenno.",
		"riceve dall'oste uno sguardo che conosce già l'ordinazione.",
	},
	["org.npc.merchant.01"] = {
		"Un mercante con un sorriso che ha i denti, e un occhio sulle mie monete. Vedremo.",
		"Il venditore allarga le braccia sulla merce come un genitore orgoglioso, poi spara un prezzo in monete.",
		"Prezzi scritti col gesso su una tavola, e ogni moneta trattabile.",
	},
	["org.npc.questgiver.01"] = {
		"In questa città qualcuno ha sempre lavoro per le mani in ozio. Le mie, a quanto pare, lo sembrano.",
		"L'aria di chi ha un incarico e non abbastanza mani per sbrigarlo.",
		"Eccola: sembri in gamba. Dopo non è mai una cosa da poco, e mai a mani pulite.",
	},
	["org.npc.trainer.01"] = {
		"Il maestro mi osserva come un vecchio guerriero osserva una lama nuova: cercando prima il difetto.",
		"Un maestro dell'Orda. Parole brevi, lezioni lunghe, e il filo di una lama in entrambe.",
		"Lo capisco già: questo insegna facendoti rifare tutto, finché la lama non va dove deve.",
	},
	["org.npcd.flight.route.01"] = {
		"Da qui le viverne vanno a sud sopra Durotar e poi attraverso le Barrens. Volo lungo con vento forte: tieniti stretto alla sella.",
		"Per Crossroads si fa il salto più comune. Dopo, le Barrens non finiscono mai, ma alla viverna il vento non dà fastidio.",
		"Dove si va? Scegli un posto che conosco, paga, e giù le mani dalle redini, qualunque cosa faccia il vento.",
	},
	["org.npcd.flight.route.02"] = {
		"Thunder Bluff è lontana, a sud-ovest, controvento. Porta qualcosa da mangiare: la viverna non divide.",
		"Le mie viverne conoscono ogni torre dell'Orda dove hanno già volato, con qualsiasi vento. Però prima quella torre devi averla raggiunta a piedi.",
		"Oggi il vento è buono. Per domani non garantisco.",
	},
	["org.npcd.guard.danger.01"] = {
		"Le grotte profonde sotto la città, oltre la Cleft of Shadow, non sono roba da novellini. Da laggiù risale di tutto.",
		"Stai lontano dalle grotte sotto la Cleft, a meno di avere degli amici alle spalle. Laggiù ci sono cultisti, e di peggio.",
		"I guai dentro le mura sono rari. Quelli sotto le mura sono un'altra faccenda.",
	},
	["org.npcd.guard.danger.02"] = {
		"Fuori, in Durotar, la terra è dura e i predoni pure. Porta acqua e tieni gli occhi aperti.",
		"Qui dentro la pace la tengono i grunt. Oltre le porte, ognuno tiene la propria.",
		"Nella Cleft occhio ai borseggiatori. Sono più svelti dei cultisti, e più cordiali, il che è peggio.",
	},
	["org.npcd.guard.dir.01"] = {
		"La banca, la casa d'aste e la locanda sono tutte nella Valley of Strength, vicino al portale principale. Impossibile non vederle.",
		"Monete e letti? Valley of Strength, proprio dietro il portale principale.",
		"La banca è nella Valley of Strength, se cerchi monete. Come mezza città, quasi tutti i giorni.",
	},
	["org.npcd.guard.dir.02"] = {
		"Mestieri e botteghe stanno lungo il Drag, la strada lunga e storta che passa nel mezzo. Segui i martelli.",
		"Ti serve un conciatore, un fabbro, un alchimista? Percorri il Drag. Chiedi a ogni porta.",
		"Il Drag serpeggia come una strada che ha cambiato idea. Se è fatto a mano, lo vendono lì.",
	},
	["org.npcd.guard.dir.03"] = {
		"Guerrieri e cacciatori si addestrano nella Valley of Honor. Maghi e sacerdoti stanno giù nella Valley of Spirits.",
		"Sciamani, cercate la Valley of Wisdom. Stregoni e ladri, la Cleft of Shadow: la riconoscerete, è quella buia.",
		"Qui ogni mestiere ha la sua valle. Dimmi il tuo, e ti indico dove andare.",
	},
	["org.npcd.guard.dir.04"] = {
		"Il Capoguerra tiene corte a Grommash Hold, nella Valley of Wisdom. Lì bada alle maniere.",
		"Le viverne partono dalla torre nella Valley of Strength. Paga il mastro di volo; non dar da mangiare alle bestie.",
		"Gli zeppelin? Fuori dalle porte, giù in Durotar. Occhio alle tariffe dei goblin.",
	},
	["org.npcd.guard.open.01"] = {
		"Cammina, tieni a freno la lingua, e andremo d'accordo.",
		"Orgrimmar accoglie chi rispetta le sue regole. Rispettale.",
		"Hai l'aria di chi ha degli affari da sbrigare. Sbrigali.",
	},
	["org.npcd.guard.open.02"] = {
		"Dentro queste mura vale la pace del Capoguerra. Fa' in modo che resti così.",
		"Mura solide, regole giuste. Non rompere né le une né le altre.",
		"Qui dentro stai in mezzo all'Orda. Comportati di conseguenza.",
	},
	["org.npcd.inn.news.01"] = {
		"Lo zeppelin è di nuovo in ritardo. I goblin danno la colpa al vento; il vento non la dà a nessuno.",
		"È arrivata una carovana dalle Barrens con metà dei kodo e tutte le lamentele.",
		"Dicono che i grunt abbiano raddoppiato la guardia al portale. Nessuno dice perché, così tutti tirano a indovinare.",
	},
	["org.npcd.inn.news.02"] = {
		"I fabbri del Drag si fanno di nuovo la guerra su un prezzo. Buon per gli affari: bevono qui tutti e due.",
		"Qualcuno nella Valley of Honor ha spaccato in due un fantoccio d'allenamento. Il terzo questo mese.",
		"Sono passati dei tauren da Thunder Bluff, educati come sempre. Hanno mangiato tutto e non hanno rotto niente. Gli ospiti migliori che abbia avuto.",
	},
	["org.npcd.inn.news.03"] = {
		"Un mercante giura che le grotte sotto la città sono più trafficate del dovuto. Gli dico di bere e di smettere di sobbalzare a ogni rumore.",
		"Si dice che un carico di ferro sia sparito fra il portale e il Drag. Buffo, come cammina il ferro.",
		"Raccontano che un troll della Valley of Spirits abbia letto il futuro di qualcuno in una scodella di zuppa. Diceva: altra zuppa.",
	},
	["org.npcd.merchant.news.01"] = {
		"Il cuoio è caro questa settimana, costa belle monete. I cacciatori sono tutti nelle Barrens a inseguire qualcosa di più grosso.",
		"I prezzi? In salita. Sempre in salita. Il vento entra dal portale e si porta via le monete.",
		"Il ferro costa poco, il sale tanto, e i goblin vogliono la loro moneta su entrambi.",
	},
	["org.npcd.merchant.news.02"] = {
		"Presto dovrebbe arrivare una carovana dalla costa. Pesce, sale, chiacchiere. Ti vendo tutte e tre le cose.",
		"Lo zeppelin ha portato una cassa di qualcosa da oltre il mare. Nessuno l'ha aperta. La tentazione è forte.",
		"Nel Drag si dice che i fabbri alzeranno i prezzi prima della prossima adunata. Compra ora, lamentati dopo.",
	},
	["org.npcd.merchant.wares.01"] = {
		"Corda, otri, carne secca, un buon coltello. Tutto quel che serve per lasciare la città e rientrarci sulle proprie gambe.",
		"Guarda, tocca, ma non sbavare sul cuoio.",
		"Pelle conciata in Durotar, cucita nel Drag. Più robusta non la trovi.",
	},
	["org.npcd.merchant.wares.02"] = {
		"Frutti di cactus, freschi di oggi, o quasi. Oppure una lama per sbucciarli.",
		"Frecce, corde d'arco, una cote o tre per la tua lama. Scegli in fretta, c'è la fila.",
		"Quella lama? Buon acciaio orchesco. E anche un buon prezzo orchesco.",
	},
	["org.npcd.trainer.advice.01"] = {
		"Imparalo piano, poi fallo in fretta. Non il contrario.",
		"Ogni maestro di questa città ti dirà lo stesso: esercitati sui fantocci, non sugli amici.",
		"La Valley of Honor è piena di sciocchi forti. Sii dell'altro tipo.",
	},
	["org.npcd.trainer.advice.02"] = {
		"Là fuori nessuno aspetta che ti ricordi la lezione. Ricordala adesso.",
		"Allenati spesso. Le monete tornano; le occasioni perse no.",
		"Ripassa quando avrai fatto un po' di strada. Avrò qualcosa di nuovo da insegnarti.",
	},
	["org.pray.01"] = {
		"Antenati, la città è rumorosa e i miei pensieri lo sono di più. Prestatemi un po' della vostra pazienza.",
		"Spiriti della terra e della pietra, voi reggete queste mura. Reggete anche me.",
		"Voi che avete camminato prima di me: ora sono nella grande città di pietra. Badate che non vi faccia vergognare.",
	},
	["org.quest.done.01"] = {
		"Fatto. Orgrimmar può smettere di preoccuparsi per questa.",
		"Lavoro finito. Qualcuno in questa città mi deve un pasto.",
		"Un'altra commissione per la capitale, pagata e sbrigata.",
	},
	["org.quest.done.02"] = {
		"Un lavoretto per una grande città, e qualche moneta in cambio. Eppure l'Orda va avanti a lavoretti.",
		"Un'altra cosa sistemata dentro queste mura. Nessuno ci farà una canzone, e la moneta basta.",
		"La moneta è buona; il cenno del grunt sulla porta è meglio.",
	},
	["org.rest.01"] = {
		"Un tetto da qualche parte, una panca, una scodella di qualcosa di caldo. La città può ruggire senza di me per un po'.",
		"Finalmente dentro le mura. Gli stivali possono smettere di stare attenti.",
		"Riposo. Il chiasso di Orgrimmar è più facile da amare stando a sedere.",
	},
	["org.rest.02"] = {
		"rallenta dentro le mura, mentre la polvere della strada scivola finalmente giù dalle spalle.",
		"tira un lungo respiro, di quelli che arrivano solo in fondo a una strada, dentro le mura di una città.",
		"trova un angolo tranquillo lontano dalla calca, mette da parte la strada e si siede per un momento.",
	},
	["org.rest.03"] = {
		"Mura sicure, cibo caldo e nessuno che cerchi di mangiarmi. Bella giornata.",
		"In questa città potrei dormire per una settimana.",
		"Dite al Capoguerra che per un po' sono fuori servizio.",
	},
	["org.rest.serene.01"] = {
		"Le forge, i tamburi, le grida dalla banca. Strano quanto suoni tutto riposante, oggi.",
		"Mi siedo a guardare la città che sbriga i suoi affari, e per una volta niente di tutto questo è mio.",
		"Niente da inseguire, niente che mi insegua. Solo la città, che respira.",
	},
	["org.ret.bad.01"] = {
		"L'ultima volta questa città mi ha {g:visto|vista} nel momento peggiore. Entro un po' più {g:dritto|dritta}.",
		"L'altra volta è andata male. Alle mura non importa, e ho deciso che non importerà nemmeno a me.",
		"Lo stesso portale. Ricordo cosa è venuto dopo, l'ultima volta, e vado avanti lo stesso.",
	},
	["org.ret.habit.01"] = {
		"attraversa il portale senza alzare gli occhi alle punte, stavolta.",
		"scansa per abitudine la stessa buca accanto al portale, come l'altra volta.",
		"fa un cenno ai grunt del portale come a vecchie conoscenze; loro non lo ricambiano.",
	},
	["org.ret.home.01"] = {
		"Di nuovo Orgrimmar. Lo stesso fumo, lo stesso chiasso, e chissà come mi mancavano tutti e due.",
		"Ancora fra le mura rosse. Mi arriva il fumo delle forge, e le spalle mi si sciolgono prima che me ne accorga.",
		"Il portale, i tamburi, il fumo delle forge. Certe cose valgono il viaggio di ritorno.",
	},
	["org.ret.long.01"] = {
		"È passato un po'. Una bancarella nuova nel Drag, una crepa nuova nella pietra, e sotto gli stessi tamburi.",
		"Settimane di strada, e la città è andata avanti senza di me. Lo fa sempre. Scopro che non mi dispiace.",
		"Tanto tempo via, e il canyon non si è spostato di un palmo. A questo serve la pietra: a restare, perché noi possiamo partire.",
	},
	["org.ret.often.01"] = {
		"Ormai potrei girare questa città a occhi chiusi. Non lo consiglio, con tutti questi lupi per strada.",
		"Banca, locanda, il Drag. I piedi conoscono la strada meglio di me.",
		"Orgrimmar. Ormai mi conosce perfino la polvere della strada.",
	},
	["org.ret.wry.01"] = {
		"Orgrimmar! Qualcuno ha sentito la mia mancanza? No? I grunt mai.",
		"Ancora in piedi, vedo. Bene. Anch'io.",
		"Lo stesso grunt al portale. Giurerei che non ha battuto ciglio da quando sono {g:partito|partita}.",
	},
	["org.sub.cleft.01"] = {
		"scende nella fenditura sotto la città, dove la luce delle torce si dirada sulla pietra e i discorsi si interrompono al passaggio.",
		"scende nella crepa poco illuminata sotto la città, oltre soglie scavate nella pietra dove nessuno guarda davvero.",
		"entra nella stretta fenditura, e il rumore della città di sopra si spegne in pietra che gocciola e voci basse.",
	},
	["org.sub.cleft.02"] = {
		"Stregoni e ladri tengono qui i loro maestri. Sensato: nessuno dei due mestieri ama il pubblico.",
		"Dicono che le grotte profonde sotto la città scendano più giù di quanto piaccia a chiunque, e che laggiù non tutto sia un trogg.",
		"Venditori incappucciati, candele scadenti, prezzi che nessuno mette per iscritto. Tengo la borsa più vicina.",
	},
	["org.sub.cleft.03"] = {
		"Posticino delizioso. Molto accogliente. Chi c'è dietro di me?",
		"Quaggiù nessuno mi guarda negli occhi. Lo prendo come un complimento.",
		"Attenti alla goccia. Attenti al cappuccio. Attenti al coltello sotto il cappuccio.",
	},
	["org.sub.drag.01"] = {
		"svolta nel Drag, una via storta di bancarelle dove ogni porta ha un mestiere e un'opinione.",
		"segue le curve di {subzone} oltre conciatori, fabbri e un cuoco con un coltello preoccupante.",
		"percorre il Drag con calma, fra pelli stese ad asciugare e martelli che risuonano da botteghe aperte.",
	},
	["org.sub.drag.02"] = {
		"Cuoio, ferro caldo, carne arrosto, qualcosa di acido dalla porta di una conceria. Il Drag non sa mai di una cosa sola.",
		"Ogni mestiere della città ha una porta su questa via, e dietro ogni porta qualcuno che ne sa di più.",
		"Il Drag gira tanto, di porta in porta, che non so mai se ci sono {g:passato|passata} una volta o due.",
	},
	["org.sub.drag.03"] = {
		"Il Drag. Una mano sulla borsa e l'altra sulla pazienza.",
		"Dieci bancarelle, dieci prezzi, una pentola crepata. Ah, il Drag.",
		"Se non lo trovi nel Drag, non hai contrattato abbastanza.",
	},
	["org.sub.hold.01"] = {
		"entra in Grommash Hold, dove l'aria sa di fumo e di pelli e ogni grunt accanto alla porta osserva.",
		"passa sotto l'alto tetto di {subzone}, e il rumore della valle resta fuori dalla porta.",
		"varca piano la soglia della sala del Capoguerra, come si fa alla porta dei luoghi che contano.",
	},
	["org.sub.hold.02"] = {
		"La sala del Capoguerra in persona. Resto in fondo, mani giunte, e lascio passare chi ha affari da sbrigare.",
		"Il nome di Grom Hellscream sulla sala. Ha liberato il suo popolo e l'ha pagato con la vita. Preferirei meritarlo, un nome così, che passarci sotto e basta.",
		"Molto di ciò che l'Orda decide si decide sotto questo tetto. Tengo le mani ben in vista.",
	},
	["org.sub.hold.03"] = {
		"Il cuore dell'Orda, e io ci sto in mezzo. Respira piano. Trova la porta.",
		"Se qualcuno qui mi guarda per bene, finisce male. Occhi bassi, piedi saldi, la porta alle spalle.",
		"Ogni grunt in questa sala potrebbe chiudere la mia faccenda con un colpo solo. Conto i passi fino alla porta.",
	},
	["org.sub.honor.01"] = {
		"entra nella Valley of Honor fra il clangore delle lame d'allenamento e i maestri che abbaiano alle reclute nella polvere.",
		"entra in {subzone}, dove cacciatori, guerrieri e le loro bestie si dividono la polvere del cortile e il suono delle lame.",
		"attraversa la Valley of Honor, dove una voce su due dà ordini, l'altra obbedisce, e le lame sbattono nella polvere.",
	},
	["org.sub.honor.02"] = {
		"La Valley of Honor. Qui tutti camminano come se avessero qualcosa da dimostrare. Quasi tutti ce l'hanno.",
		"Da qualche parte in questa valle si custodiscono i nomi dei più valorosi dell'Orda. Un giorno non mi dispiacerebbe.",
		"L'onore si guadagna nel fango e si restituisce nella pietra. Qui, almeno, qualcuno tiene il conto.",
	},
	["org.sub.honor.03"] = {
		"Il mio maestro è da qualche parte in questa valle. Probabilmente a urlare.",
		"È ora di imparare qualcosa che fa male. Possibilmente a qualcun altro.",
		"Valley of Honor. Occhio alle bestie, occhio alle lame, ma soprattutto occhio ai maestri.",
	},
	["org.sub.legends.01"] = {
		"si ferma alla porta della Hall of Legends, dove entrano soltanto i soldati più decorati dell'Orda.",
		"alza lo sguardo verso {subzone} e i grunt di guardia alla porta, che ricambiano senza calore.",
		"resta un momento davanti alla Hall of Legends, come si resta davanti a una porta non ancora meritata.",
	},
	["org.sub.legends.02"] = {
		"Leggende. Pochi ci sono arrivati in un solo grande giorno, i più in mille giorni brutti, cicatrice dopo cicatrice.",
		"Chi sta là dentro si è guadagnato il posto battaglia dopo battaglia, e ne porta le cicatrici. Ho ancora molta strada.",
		"Grado dopo grado, cicatrice dopo cicatrice, sono saliti fino a quella porta. Qui la gloria non è un dono: è un registro.",
	},
	["org.sub.legends.03"] = {
		"Un giorno mi faranno entrare lì. Probabilmente per spazzare.",
		"Hall of Legends. Allora saluto da qui fuori.",
		"Non oggi, leggende. Ma tenetemi un posto.",
	},
	["org.sub.spirits.01"] = {
		"scende nella Valley of Spirits, fra capanne basse e il fumo di erbe bruciate.",
		"entra in {subzone}, dove il fumo sa d'erbe e i tamburi tengono un ritmo più lento.",
		"entra in silenzio nel quartiere dei troll; da qualche parte nel fumo bolle una pentola, e nessuno spiega cosa ci sia dentro.",
	},
	["org.sub.spirits.02"] = {
		"Maghi e sacerdoti quaggiù, fra i troll. Vicini strani, ma la quiete va bene a entrambi, e nessuno alza la voce.",
		"Dicono che, di tutta la città, sia qui che gli spiriti ascoltano. Abbasso la voce, non si sa mai.",
		"Fumo e canti vecchi a voce bassa. I troll tengono il loro angolo di città come piace a loro, e si vede.",
	},
	["org.sub.spirits.03"] = {
		"Odore di cucina. Non chiederò cosa bolle.",
		"Valley of Spirits. Un cenno educato a tutti, spiriti compresi.",
		"Se qualcosa qui dentro mi fa l'occhiolino, me ne vado.",
	},
	["org.sub.strength.01"] = {
		"entra nella Valley of Strength, dove mezza Orda sembra in coda davanti alla banca a contare monete.",
		"si fa strada nella calca di {subzone}: banchieri, contrattatori e qualcuno che vende a gran voce una spada che nessuno vuole.",
		"entra nella valle affollata accanto al portale, in un frastuono di monete, lupi e prezzi gridati.",
	},
	["org.sub.strength.02"] = {
		"La Valley of Strength. La banca da una parte, la locanda più avanti, e la borsa con meno monete di quanto vorrei.",
		"Qui l'Orda conta le monete e riposa i piedi. Niente di glorioso, ma qualcuno deve pur farlo.",
		"La torre di volo domina la valle. Ogni viverna che ne parte porta la commissione di qualcuno.",
	},
	["org.sub.strength.03"] = {
		"La chiamano Valley of Strength. Soprattutto ci vuole forza per fare la coda.",
		"Valley of Strength. Vedo molta spesa e pochi pesi sollevati.",
		"Una valle forte. E nemmeno gli odori scherzano.",
	},
	["org.sub.wisdom.01"] = {
		"entra nella Valley of Wisdom, dove Grommash Hold si leva sulla pietra e i grunt stanno più dritti.",
		"entra in {subzone}; più avanti incombe la sala del Capoguerra, e perfino il vento pare abbassare la voce.",
		"rallenta nella Valley of Wisdom, fra tauren e sciamani, con la grande sala in fondo.",
	},
	["org.sub.wisdom.02"] = {
		"Qui gli sciamani parlano agli elementi. Fuoco, terra, acqua e aria, interpellati con garbo dentro una sola valle.",
		"Voci di tauren, basse e pazienti, attraversano la valle. A quanto pare la saggezza non ha fretta.",
		"La Valley of Wisdom. Bel nome. Cercherò di non dire sciocchezze finché ci sono.",
	},
	["org.sub.wisdom.03"] = {
		"Là dentro tiene corte il Capoguerra. Stivali puliti e voce bassa.",
		"Grommash Hold. Ogni orco conosce il nome sopra quella porta, e ciò che rappresenta.",
		"Saggezza, dice la valle. Ne prendo un po' anch'io, se ne avanza.",
	},
	["org.thanks.01"] = {
		"Grazie. Ti devo un favore, e in questa città i debiti si ricordano.",
		"Grazie davvero. Saresti un ottimo grunt, se mai ti fermassi.",
		"Grazie. Vale più di un prezzo onesto nel Drag.",
	},
	["org.toast.01"] = {
		"Ai fuochi delle forge che non si spengono mai!",
		"A Orgrimmar: chiassosa, infuocata, e nostra!",
		"Bevete. I grunt là fuori hanno sete solo a guardarci, e i fuochi scottano.",
	},
	["org.toast.02"] = {
		"Alle mura, e a chi le tiene in piedi.",
		"Ai grunt sulle mura, che di questi non ne vedono mai.",
		"Al buon ferro e a una bevanda fresca.",
	},
	["org.travel.hearth.01"] = {
		"La pietra si scalda nella mano. I tamburi di Orgrimmar stanno già sfumando.",
		"Un ultimo sguardo alle mura rosse, poi il mondo si ripiega attorno alla pietra.",
		"Lascio la capitale con la pietra. I grunt non si accorgeranno nemmeno che me ne sono {g:andato|andata}.",
	},
	["org.weather.sand.01"] = {
		"si tira un panno su naso e bocca mentre il vento comincia a soffiare sabbia giù per il canyon.",
		"si volta davanti a una raffica di sabbia rossa che crepita contro ogni punta delle mura.",
		"sbatte le palpebre per togliersi la polvere dagli occhi mentre il vento solleva la sabbia e le bancarelle si affrettano a coprire la merce.",
	},
	["org.weather.storm.01"] = {
		"La tempesta trasforma gli stendardi in fruste. I grunt non alzano nemmeno lo sguardo.",
		"Il tuono in un canyon: rotola da una parete all'altra sopra gli stendardi che schioccano, e non sembra finire mai.",
		"Un lampo oltre l'orlo, e per un battito ogni punta e ogni stendardo della città spicca bianco contro la tempesta.",
	},
	["org.zone.alliance.01"] = {
		"Qui ogni grunt capirebbe subito chi sono. Passi lenti. Mani quiete. Occhi bassi.",
		"Mura nemiche da ogni lato, e una sola uscita. Tengo quel portale nell'angolo dell'occhio.",
		"Entro nel cuore dell'Orda come si cammina sul ghiaccio sottile: con passo lieve, gli occhi aperti, contando ogni rumore.",
	},
	["org.zone.alliance.02"] = {
		"si tiene al bordo della strada, cappuccio basso, lungo mura irte di punte che non sono mai state costruite per gli ospiti.",
		"varca il portale con cautela, soppesando ogni grunt in vista e la distanza da ciascuno.",
		"entra nella capitale nemica senza una parola, con entrambe le mani ben lontane da qualsiasi arma.",
	},
	["org.zone.first.02"] = {
		"si ferma sotto il grande portale e piega indietro la testa per abbracciare, la prima volta, le pareti del canyon.",
		"rallenta sulla soglia, con lo sguardo che risale la roccia rossa fino all'orlo del canyon irto di punte.",
		"dà un primo lungo sguardo alla città nel canyon: fumo, pietra e un gran baccano.",
	},
	["org.zone.first.horde.01"] = {
		"Orgrimmar. L'ho sentita nominare cento volte, eppure le mura di pietra mi colgono alla sprovvista.",
		"Pietra rossa, punte di ferro e stendardi fin dove arriva lo sguardo. Ecco la città di cui si parla attorno a ogni fuoco.",
		"Qui l'Orda ha posato l'ascia e ha costruito nella pietra. Porta il nome di un capoguerra caduto, l'hanno alzata mani vive: entro per la prima volta, e mi pare di venire {g:contato|contata}.",
	},
	["org.zone.horde.01"] = {
		"Orgrimmar. Odore di fumo e di cuoio. Odore di casa.",
		"Orgrimmar! Qualcuno accenda un fuoco e qualcun altro porti la carne.",
		"Mura, grunt, tamburi. Bene. Ogni cosa al suo posto.",
	},
	["org.zone.horde.02"] = {
		"Fra queste mura il vento perde i denti. Pochi posti mi lasciano dormire così.",
		"Nessuno ci ha regalato questo canyon. Ogni pietra di queste mura è stata trascinata e piantata a forza di braccia.",
		"Una pietra che non custodiva nulla ora custodisce un popolo. Mi piace pensare che il canyon ci aspettasse.",
	},
	["org.zone.horde.03"] = {
		"entra sotto gli stendardi rossi, e da qualche parte in alto un tamburo prende il passo.",
		"oltrepassa la palizzata di punte con passo tranquillo, fra stendardi che schioccano e tamburi che battono nel cuore della città.",
		"entra a Orgrimmar al suono di tamburi lontani, sotto stendardi del colore del ferro rovente.",
	},
	["org.zone.horde.04"] = {
		"Orgrimmar. Rumorosa, affollata, e una faccia su due pare in cerca di rissa. Perfetto.",
		"Attenti alle punte. Attenti ai grunt. Attenti ai lupi. Poi potete badare ai fatti vostri.",
		"La capitale! Qui perfino le porte sembrano volerti sfidare a braccio di ferro.",
	},
	["org.zone.night.01"] = {
		"Di notte il canyon si riempie di torce, e le mura brillano come appena uscite dalla forgia.",
		"Notte a Orgrimmar: le forge non si spengono mai del tutto, e le torce dei grunt camminano sulle mura.",
		"Cielo scuro, mura rosse, cento piccoli fuochi. Stanotte la città non dorme: abbassa soltanto la voce.",
	},
	["org.zone.orc.01"] = {
		"Una città di orchi, costruita da mani di orchi. Mi piace ancora come suona.",
		"Porta il nome del Doomhammer. Sfioro il muro passando, come si sfiora con la mano la spalla di un anziano.",
		"Niente campi, niente gabbie, niente terra in prestito. Una città nostra, e la pietra ricorda le mani che l'hanno posata.",
	},
	["org.zone.sand.01"] = {
		"strizza gli occhi contro la sabbia che il vento soffia dal portale, con la bocca coperta.",
		"entra mentre la sabbia sibila lungo le pareti del canyon e la polvere si posa in ogni piega della stoffa.",
		"scuote la sabbia rossa da entrambe le maniche sotto il portale, senza grande risultato.",
	},
	["org.zone.scourge.01"] = {
		"I grunt mi guardano due volte, poi un'altra ancora. Giusto. Anch'io mi guarderei due volte.",
		"Quanto calore in questa città: forge, corpi, fiato. La attraverso come uno spiffero in una stanza piena.",
		"Ci hanno fatto entrare. Non tutti ne sorridono, ma il portale si è aperto, e questo vale qualcosa.",
	},
	["org.zone.tauren.01"] = {
		"Neanche un filo d'erba. Gli orchi hanno fatto di una montagna una casa. Il cielo aperto mi manca un poco.",
		"Pietra sotto, pietra sopra, pietra tutt'intorno. Anche qui c'è la Madre Terra, solo che si sente meno.",
		"I nostri amici costruiscono con asce e fuoco. Nelle pianure avremmo prima chiesto all'erba e alla terra. Eppure hanno costruito bene.",
	},
	["org.zone.troll.01"] = {
		"Troppa pietra e troppo poco mare. Però i tamburi, qui, tengono un buon ritmo.",
		"Gli orchi costruiscono in alto. Almeno giù nella Valley of Spirits qualcuno tiene i fuochi alla vecchia maniera.",
		"I Darkspear hanno un angolo qui, e un angolo è più di quanto avessimo dopo le isole.",
	},
	["org.journey.w01.01"] = {
		"si alza dalla torre sopra la Valley of Strength, e i tamburi della città svaniscono sotto il battito delle ali della viverna.",
		"si allontana da Orgrimmar, mentre le pareti del canyon scivolano giù e il fumo delle forge si assottiglia in fili.",
		"sale nell'aria calda sopra la città, con la grande porta e la strada rossa che rimpiccioliscono in fretta.",
	},
	["org.journey.w01.02"] = {
		"Orgrimmar resta indietro, rumorosa fino all'ultimo. Da qui in poi a gridare ci pensa il vento.",
		"Dall'alto la città è solo una piega nella roccia, e tutto il suo baccano sta in un soffio di vento.",
		"La città del Capoguerra, più piccola a ogni battito di cuore. Dalla porta sembrava più grande.",
	},
	["org.journey.w01.03"] = {
		"Lok'tar, Orgrimmar. Tieni accesi i fuochi.",
		"Via, dove l'Orda ha bisogno di una mano. Vola.",
	},
	["org.journey.w01.04"] = {
		"A terra. Qualcuno mi indichi del cibo e una panca, in quest'ordine.",
		"Coi piedi per terra. Orgrimmar, cerca di non urlare tutta insieme.",
	},
	["org.journey.w01.05"] = {
		"atterra sulla torre nel buio, con la città sotto illuminata dal bagliore delle forge e dalle torce, rosso su rosso.",
		"scende dal cielo notturno dentro Orgrimmar, dove i fuochi non si spengono mai del tutto e i tamburi si fanno solo più bassi.",
	},
	["org.journey.w01.06"] = {
		"Volare va bene. Atterrare va bene. È il dopo che non mi piace, quando la Valley of Strength continua a girare piano piano.",
		"Gambe, svegliatevi. Orgrimmar non si attraversa da sola.",
	},
	["org.quest_complete.w01.01"] = {
		"consegna quanto richiesto in mezzo al baccano del Drag, e riceve un grugnito che in questa città vale un caloroso grazie.",
		"prende la ricompensa e si fa da parte per lasciar passare un cavaliere di lupi, con le monete già al sicuro.",
		"riceve un breve cenno e una borsa più pesante, mentre poco lontano un martello batte il tempo.",
	},
	["org.quest_complete.w01.02"] = {
		"Finito. A Orgrimmar questo ti vale un cenno e un nuovo problema, di solito nello stesso fiato.",
		"Fatto, e nessuno mi ha urlato contro. In questa città è una medaglia.",
	},
	["org.quest_complete.w01.03"] = {
		"Fatto, per l'Orda. Dimmi se c'è dell'altro.",
		"Un altro debito saldato con l'Orda. Volentieri.",
	},
	["org.quest_complete.w02.01"] = {
		"accetta la ricompensa e una burbera parola di grazie, mentre il vento spinge la polvere rossa giù per la Valley of Strength.",
		"torna nel caldo e nel frastuono della città, il compito finito e la borsa più pesante.",
		"intasca la ricompensa sotto le grandi rupi rosse che chiudono la città, e prosegue.",
	},
	["org.quest_complete.w02.02"] = {
		"Fatto. Orgrimmar ha la memoria lunga per chi fa la sua parte, e corta per le scuse.",
		"Finito. In questa città il rispetto si paga in monete piccole, e ne ho appena guadagnata un'altra.",
	},
	["org.dawn.w04.001"] = {
		"guarda il cambio della guardia al portale mentre sale l'alba, i grunt che hanno vegliato al buio che lasciano il posto a quelli freschi con una sola parola borbottata.",
		"vede l'alba trasformare il fumo sopra il canyon da grigio a oro, mentre i primi peoni escono arrancando con gli attrezzi.",
	},
	["org.farewell.w04.001"] = {
		"È ora che vada. Occhio alla calca al portale.",
		"Addio. Non lasciare che il Drag ti porti via tutte le monete.",
	},
	["org.farewell.w04.002"] = {
		"Buona strada. Orgrimmar ti terrà il posto nella folla.",
		"Abbi cura di te, là fuori. Qui dentro, almeno, ci pensano le mura.",
	},
	["org.greet.w04.001"] = {
		"Salve. Hai scelto una città chiassosa per incrociare la mia strada.",
		"Salute! Se vuoi farti sentire qui dentro, grida: lo fanno tutti.",
		"Che piacere vederti. Parliamo prima che i tamburi ci coprano.",
	},
	["org.greet.w04.002"] = {
		"Mura salde e un portale aperto, per te.",
		"Che i tuoi affari in città siano brevi, e il portale aperto quando ti serve.",
	},
	["org.greet.w04.003"] = {
		"Ah, una faccia che non cerca di vendermi niente. Ciao.",
		"Salve! Non vendi niente, vero? Bene.",
	},
	["org.jest.w04.001"] = {
		"Orgrimmar ha una valle per la forza, una per l'onore, una per la saggezza e una per gli spiriti. Sto ancora cercando quella per il pisolino.",
		"Ho chiesto a un tauren della Valley of Wisdom come si diventa ricchi. Ha detto: pazienza. L'ho chiesto a un goblin. Ha detto: la tua borsa.",
	},
	["org.journey.w04.001"] = {
		"si piega in avanti quando la viverna si lascia cadere dal bordo della torre, con le ali che si aprono di scatto sopra le vie affollate.",
		"si aggrappa mentre la bestia risale battendo le ali fuori dal canyon, e il rumore della città si allontana in un unico lungo respiro.",
		"supera l'orlo del canyon, e la città dietro le mura diventa una conca rossa di fumo e di tetti.",
	},
	["org.journey.w04.002"] = {
		"La viverna geme a ogni colpo d'ala. Scelgo di credere che sia per la salita e non per me.",
		"Di sotto, un grunt al portale alza gli occhi. Saluto. Lui no. Certe cose non cambiano a nessuna altezza.",
		"Su e fuori dal canyon. Ora la bestia e io scopriamo chi dei due si fida meno dell'altro.",
	},
	["org.journey.w04.003"] = {
		"passa alto sopra le torri degli zeppelin fuori dal portale, dove un'aeronave goblin viene convinta a fatica a prendere il vento.",
		"guarda giù mentre il volo supera le mura; oltre il portale le torri degli zeppelin spuntano dalla terra rossa come due lunghe dita di legno.",
		"guarda uno zeppelin goblin staccarsi cigolando dalla sua torre oltre il portale, lento e panciuto, mentre la viverna lo sorpassa senza fatica.",
	},
	["org.journey.w04.004"] = {
		"Ogni puntino laggiù nella Valley of Strength è qualcuno che ha fretta. Da quassù niente sembra urgente.",
		"La banca, la locanda, il Drag: laggiù erano il mondo intero. Ora potrei coprirli con una mano.",
		"La città rimpicciolisce, e le preoccupazioni che mi portavo là dentro rimpiccioliscono con lei. È la parte migliore del volo.",
	},
	["org.journey.w04.005"] = {
		"Più su! No, non così tanto. Ecco. Resta lì.",
		"Non guardare giù, mi hanno detto. Nessuno mi ha detto quanto è bello. Guardo.",
		"Addio, chiasso. Benvenuto, vento nelle orecchie.",
	},
	["org.journey.w04.006"] = {
		"vede Durotar aprirsi oltre le mura mentre la bestia sale: creste rosse, calanchi secchi e una strada sottile che serpeggia verso sud.",
		"prende quota finché il canyon è solo una crepa nella terra rossa, e a est compare la linea lontana del mare.",
		"lascia indietro il canyon, con l'aria calda che sale dalle rocce e solleva la viverna sopra la terra rossa in lunghe spinte morbide.",
	},
	["org.journey.w04.007"] = {
		"In fondo a questo volo, chissà dove, c'è un lavoro col mio nome sopra. La città può tenersi il suo chiasso senza di me.",
		"La città mi ha dato riposo. Ora tocca alla strada.",
		"Su, e via dalle mura. Là dentro sono una faccia fra tante; sulla strada ho del lavoro.",
	},
	["org.journey.w04.008"] = {
		"decolla nell'alba, con la prima luce che sfiora le ali della viverna molto prima di arrivare alle vie di sotto.",
		"si alza all'alba sopra la città che si sveglia, mentre il fumo delle cucine sale in linee sottili dalle valli.",
	},
	["org.journey.w04.009"] = {
		"Partire di notte. Dietro di me la città brilla come un letto di braci; davanti, il buio non ha più bordi.",
		"Le torce sulle mura scivolano via sotto le ali, e nella notte restano solo le stelle e il respiro della viverna.",
	},
	["org.journey.w04.010"] = {
		"Piano, adesso. Vogliamo arrivare tutti e due interi.",
		"Calma, bestia. So cosa mangi: non farmene pentire.",
		"Si parte. Tu voli, io mi preoccupo.",
	},
	["org.journey.w04.011"] = {
		"stringe la sella un po' più forte del necessario mentre la torre sprofonda di sotto.",
		"tiene gli occhi fissi sull'orizzonte, e non sul lungo salto fino alla Valley of Strength.",
	},
	["org.journey.w04.012"] = {
		"Decollo in mezzo alla sabbia che vola. La viverna stringe gli occhi a fessura; farei lo stesso, se ci vedessi ancora.",
		"Sabbia fra i denti prima ancora di superare le mura. Durotar mi saluta come mi accoglie.",
	},
	["org.journey.w04.013"] = {
		"Dall'alto la scelta ha senso: un solo portale, alte pareti di pietra, e tutta Durotar distesa sotto lo sguardo.",
		"Una città costruita in una crepa della terra, nascosta finché non ci sei sopra. Chi ha scelto questa pietra ha scelto bene.",
	},
	["org.journey.w04.014"] = {
		"si volta una volta verso la torre, dove gli addetti stanno già portando fuori la prossima viverna.",
		"lascia la torre in una raffica di colpi d'ala, facendo scappare due peoni che riposavano alla sua ombra.",
	},
	["org.journey.w04.015"] = {
		"Lasciare una città in volo dà sempre un senso di leggerezza. Probabilmente perché il Drag mi ha svuotato la borsa.",
		"Addio, fila alla banca. Addio, urla della casa d'aste. Ciao, cielo.",
		"Per un po' niente di laggiù può raggiungermi: niente commissioni, niente venditori, niente grunt con le loro domande.",
	},
	["org.journey.w04.016"] = {
		"sale oltre gli stendardi sulle punte più alte delle mura, abbastanza vicino da sentirli schioccare.",
		"si slancia fuori sopra le mura di Orgrimmar, con gli stendardi rossi che tirano sulle aste appena sotto.",
		"sale finché i tamburi della città sono solo un battito che si sente attraverso la sella, e poi neanche quello.",
	},
	["org.journey.w04.017"] = {
		"arriva basso sopra il grande portale, e il rumore della città sale incontro alle ali come il calore di una forgia.",
		"compie un giro sopra la Valley of Strength mentre la viverna sceglie dove posarsi, poi piomba sulla torre con un tonfo.",
		"tocca terra sulla piattaforma della torre, dove un addetto prende le redini senza una parola e indica la via per scendere.",
	},
	["org.journey.w04.018"] = {
		"Ho ancora le orecchie piene di vento. Tre passi in città e le urla le ripuliranno.",
		"Terra ferma. Be', torre ferma, col vento ancora dentro. Mi accontento.",
		"Occhi che lacrimano, gambe che ronzano, bocca piena di polvere. Ciao, Orgrimmar.",
	},
	["org.journey.w04.019"] = {
		"scende dalla torre con una mano sul parapetto, mentre il terreno smette di ondeggiare un giro alla volta.",
		"scende piano dalla piattaforma, con la banca e la locanda che salgono all'altezza degli occhi un passo dopo l'altro.",
		"segue l'addetto giù dalla piattaforma, con le gambe che a ogni gradino reimparano il terreno.",
	},
	["org.journey.w04.020"] = {
		"Le mura trattengono il calore anche quassù sulla torre. Dopo il freddo dell'aria alta, sembra una mano sulla schiena.",
		"Lassù c'era solo la voce del vento. Quaggiù ce ne sono mille, e nessuna parla con me. A modo suo, riposante.",
	},
	["org.journey.w04.021"] = {
		"Bel volo. Vai pure, e non mangiarti il prossimo passeggero.",
		"Grazie, bestia. Ti darei la mancia, ma ti prenderesti anche la mano.",
		"Atterraggio riuscito. Parlerò bene di te al tuo addetto, bestia.",
	},
	["org.journey.w04.022"] = {
		"scende dopo il lungo volo con le ginocchia che hanno dimenticato come piegarsi, e si appoggia alla sella finché non se ne ricordano.",
		"atterra alla fine di un lungo volo, e per un momento la torre sotto gli stivali sembra dondolare.",
	},
	["org.journey.w04.023"] = {
		"Volo lungo. Ogni parte di me che ha toccato la sella ha qualcosa da dire in proposito.",
		"Troppo tempo in aria. Le gambe sono di qualcun altro, ormai, e vogliono sdraiarsi.",
	},
	["org.journey.w04.024"] = {
		"segue nella notte la fila di torce lungo le mura, come se la città avesse illuminato la strada apposta.",
		"atterra nella notte sotto un cielo pieno di stelle, e l'addetto sulla torre alza una lanterna per vedere chi è arrivato.",
	},
	["org.journey.w04.025"] = {
		"A terra all'alba. Le vie mezze vuote, i fuochi delle cucine mezzi accesi. Per una volta arrivo a Orgrimmar in anticipo.",
		"Atterraggio all'alba. L'addetto sbadiglia, la viverna sbadiglia, e io cerco con tutte le forze di non farlo.",
	},
	["org.journey.w04.026"] = {
		"scende in un riverbero duro, con la pietra rossa della valle che restituisce dritto in su il calore del sole.",
		"atterra nel caldo del giorno, sotto il sole alto, e si fa schermo agli occhi per guardare giù sulla valle di pietra affollata.",
	},
	["org.journey.w04.027"] = {
		"atterra in una foschia di polvere rossa, e la viverna si scuote la sabbia dalla criniera prima che qualcuno riesca a prendere le redini.",
		"scende alla cieca nella sabbia che vola, fidandosi della bestia per trovare la torre.",
	},
	["org.journey.w04.028"] = {
		"Atterraggio fatto, e la città non se n'è accorta. Le concedo un momento prima di cominciare a chiederle cose.",
		"Nessuno quaggiù sa che un attimo fa ero in cielo. Tengo il segreto ancora un po', prima di unirmi alla folla.",
		"Il cielo era semplice. Quaggiù qualcuno vuole già scambiare due parole con me. Me lo sento.",
	},
	["org.journey.w04.029"] = {
		"Ancora pietra rossa sotto i piedi. L'aria torna a sapere di ferro.",
		"Orgrimmar, sono {g:tornato|tornata}. Cerca di contenere la gioia.",
		"Atterraggio sotto gli stendardi dell'Orda. Qualunque cosa mi abbia fatto la strada, qui dentro non può seguirmi.",
	},
	["org.journey.w04.030"] = {
		"atterra tra l'ululato di un lupo da qualche parte di sotto, come se la città tenesse una bestia solo per annunciare gli arrivi.",
		"tocca terra e consegna le redini della bestia, mentre di sotto una carovana di kodo entra arrancando dal portale.",
	},
	["org.journey.w04.031"] = {
		"Già mi manca la quiete di lassù. Quaggiù ogni cosa ha un prezzo e una voce.",
		"La viverna viene portata via e non si volta. Non è una creatura sentimentale. Un po' la invidio.",
	},
	["org.journey.w04.032"] = {
		"atterra e guarda dalla torre la folla della Valley of Strength, un fiume lento di teste, zaini e lupi.",
		"passa dalla sella alla pietra e si ferma sul bordo della torre a riconoscere di sotto la locanda, la banca e il portale.",
		"scende con un turbine d'ali che fa rotolare il carico di legna di un peone, seguito da una sfilza di imprecazioni.",
	},
	["org.journey.w04.033"] = {
		"Se qualcuno ha visto quell'atterraggio: no, non l'avete visto.",
		"Siamo a terra. Tra un attimo riapro le mani.",
		"Ringrazio la viverna, le cinghie della sella e qualunque cosa mi abbia tenuto su.",
	},
	["org.muse.w04.001"] = {
		"Mezza Orda tiene i suoi risparmi nella banca vicino al portale, e l'altra mezza continua a chiedere prestiti alla prima.",
		"Sotto la Valley of Strength dev'esserci più oro accatastato che in tutte le colline di Durotar. Neanche una moneta è mia.",
		"I banchieri hanno le facce più tranquille della città. Contare le monete degli altri dev'essere riposante.",
	},
	["org.muse.w04.002"] = {
		"Alla casa d'aste qualcuno ha appena pagato oro buono per un vaso crepato. Con orgoglio.",
		"Ogni giorno la casa d'aste vende a peso d'oro quello che io ho dato via per una manciata di rame.",
		"La casa d'aste: il posto dove una fibbia arrugginita trova l'unico compratore di Kalimdor che la cercava.",
	},
	["org.muse.w04.003"] = {
		"Controllo la cassetta delle lettere per abitudine. Nessuno scrive granché a chi non resta mai nello stesso posto.",
		"La cassetta della posta vicino alla banca oggi ha inghiottito cento lettere, e nessuna era per me. È la strada, che ci vuoi fare.",
	},
	["org.muse.w04.004"] = {
		"segue con lo sguardo l'ombra di una viverna che scivola sulla folla e risale la parete del canyon.",
		"alza gli occhi mentre una viverna vira sopra la città, con i colpi d'ala sommersi dalle grida delle strade.",
		"si fa schermo agli occhi per guardare una viverna che gira due volte intorno alla torre prima di degnarsi di atterrare.",
	},
	["org.muse.w04.005"] = {
		"La locanda vicino al portale non si svuota mai. Qualcuno ha sempre una storia, e nessuno ha mai uno sgabello libero.",
		"Per avere uno sgabello alla locanda dovrei vincere una gara di sguardi con un tauren. Perderei.",
		"La locanda è piena di viaggiatori che si raccontano quanta strada hanno fatto. A ogni boccale la strada si allunga.",
	},
	["org.muse.w04.006"] = {
		"C'è una mia cassa, in banca, piena di cose che non userò mai. La cianfrusaglia più al sicuro di tutto Kalimdor.",
		"La banca protegge la mia roba dai ladri, e anche da me, che è il lavoro più difficile.",
		"Potrei svuotare oggi la mia cassa in banca e ripartire con meno peso. Non lo farò. Quel corno crepato un giorno potrebbe servire.",
	},
	["org.muse.w04.007"] = {
		"Ogni artigiano del Drag ha cicatrici di bruciature sulle mani e una predica pronta. Potrei imparare un mestiere, se reggessi le prediche.",
		"Un conciatore, un sarto, un alchimista che respira i suoi stessi fumi: il Drag insegna qualsiasi mestiere, in cambio di una tariffa e di qualche scottatura sulle mani.",
		"Nel Drag perfino gli apprendisti hanno le mani dure. Laggiù nessuno ha imparato un mestiere stando a guardare.",
	},
	["org.muse.w04.008"] = {
		"Se il Drag fosse dritto, sarebbe lungo la metà e noioso il doppio.",
		"Chi ha tracciato il Drag stava seguendo un kodo ubriaco lungo la strada.",
		"Il Drag ha più curve della parlantina di un goblin.",
	},
	["org.muse.w04.009"] = {
		"Uno sbuffo di fumo verde da qualche bottega del Drag, un'imprecazione, poi risate. La pozione di qualcuno ha detto la sua.",
		"Un alchimista, chissà dove, ha commesso un errore che sa di uova marce e peli bruciacchiati, e il fumo lo sta raccontando a tutta la città.",
	},
	["org.muse.w04.010"] = {
		"soppesa il borsellino in una mano, poi decide che le botteghe del Drag possono aspettare finché non sarà più pesante.",
		"conta le monete sul palmo, sospira e ne mette da parte metà per il conto delle riparazioni.",
		"si tasta una tasca dopo l'altra, trova il borsellino nell'ultima e tira il fiato, come s'impara a fare tra la folla di Orgrimmar.",
	},
	["org.muse.w04.011"] = {
		"La mia armatura cigola. Metà dei fabbri di questa città potrebbe sistemarla, e ognuno mi spiegherebbe come l'ho rotta.",
		"Un fabbro ha squadrato il mio equipaggiamento al mio passaggio e ha scosso la testa. Non arrabbiato. Deluso. Peggio.",
		"Ho un'ammaccatura nell'armatura di cui ogni fabbro del Drag discuterebbe volentieri a lungo, a pagamento.",
	},
	["org.muse.w04.012"] = {
		"La Cleft of Shadow sta proprio sotto la città del Capoguerra, piena di stregoni e delle loro bestiole. Thrall lo saprà di certo. Immagino che qualcuno tenga sempre d'occhio la faccenda.",
		"Giù nella Cleft si commercia in maledizioni e veleni, a un tiro di sasso dalla banca. Ogni grande casa ha una cantina che agli ospiti non mostra.",
		"Stregoni, avvelenatori, tagliaborse con le buone maniere: la Cleft custodisce i mestieri di cui la città ha bisogno e che non nomina ad alta voce.",
	},
	["org.muse.w04.013"] = {
		"I grunt parlano di un abisso di fuoco sotto la Cleft, e dei cultisti che ci si nascondono. Tutta la città ci dorme sopra.",
		"Ragefire Chasm, proprio sotto le strade. Ogni capitale tiene qualcosa che brucia là sotto e che preferirebbe non guardare.",
	},
	["org.muse.w04.014"] = {
		"A qualcuno è scappato di nuovo l'imp. Occhio alle sopracciglia.",
		"Un imp mi ha appena detto qualcosa in una lingua che, per fortuna, non parlo.",
		"Di chi è questo imp? Mi sta mangiando il laccio dello stivale, e ne va pure fiero.",
	},
	["org.muse.w04.015"] = {
		"I troll parlano ai loro loa come si parla a un vicino oltre la staccionata: con garbo, e tenendo il conto dei favori.",
		"Loa, amuleti, le vecchie usanze dei troll, tenute in vita in una valle di una città di orchi. I Darkspear si sono portati dietro i loro dèi, e nessuno ha chiesto di lasciarli alla porta.",
	},
	["org.muse.w04.016"] = {
		"I maghi dell'Orda imparano gli incantesimi a pochi passi dai santuari dei troll. L'arcano non sembra infastidito dalla compagnia.",
		"Maghi e sacerdoti, addestrati nella valle dei troll tra amuleti e fumo. Uno studioso di Dalaran avrebbe molto da ridire. Qui nessuno lo ascolterebbe.",
	},
	["org.muse.w04.017"] = {
		"Thrall è cresciuto in una gabbia e ha imparato a combattere in un'arena. Adesso siede in una sala senza sbarre, e ascolta chiunque si presenti alla porta.",
		"Un Capoguerra che un tempo era schiavo. Forse è per questo che le porte della sua sala restano aperte.",
		"Il Capoguerra sa com'è una porta chiusa vista dalla parte sbagliata. Si capisce da come tiene la sua.",
	},
	["org.muse.w04.018"] = {
		"La nera armatura di Orgrim e il suo martello, indossati ora da chi lui ha scelto. La città porta il nome del vecchio Capoguerra; il nuovo ne porta il peso.",
		"Il Doomhammer pende al fianco di Thrall e la città porta il nome di Orgrim. Fra l'uno e l'altra, il vecchio orco fa ancora la guardia.",
	},
	["org.muse.w04.019"] = {
		"Forza al Capoguerra. Ci porta sulle spalle più di quanto lasci vedere.",
		"La pace del Capoguerra regge un altro giorno. Bene. Vediamo di tenerla così.",
		"Qualunque cosa stia decidendo il Capoguerra in quella sala, spero che prima abbia mangiato come si deve.",
	},
	["org.muse.w04.020"] = {
		"Thrall parla di pace con gli umani di Theramore. Mezza città brontola, l'altra mezza affila le asce e sta zitta. Sto ancora cercando di capire a quale metà appartengo.",
		"Pace, dice il Capoguerra. Non tutti in queste strade la vogliono, ma nessuno vuole essere quello che glielo dice.",
		"Una tregua con Theramore, e comunque un grunt a ogni porta. Il Capoguerra spera, e intanto tiene le mura presidiate. Mi sembrano sagge tutte e due le cose.",
	},
	["org.muse.w04.021"] = {
		"lancia un'occhiata verso la Valley of Wisdom, dove sorge la sala del Capoguerra, poi torna alle sue faccende.",
		"tace un momento quando i discorsi lì accanto cadono sul Capoguerra, come fanno quasi tutti qui.",
	},
	["org.muse.w04.022"] = {
		"Sulla sala del Capoguerra c'è il nome di Grommash Hellscream. Non perché fosse mite, ma perché alla fine spezzò la catena che il suo popolo non riusciva a spezzare.",
		"Grom non era un'anima gentile. Bevve per primo e pagò per ultimo, e quell'ultimo pagamento spezzò le catene del suo popolo. La sala porta il suo nome per questo.",
	},
	["org.muse.w04.023"] = {
		"Le guardie di Grommash Hold sono le migliori della città. Si capisce: nessuna di loro ha sorriso da quando hanno alzato le mura.",
		"Le guardie del Capoguerra fisserebbero una montagna finché non abbassa gli occhi. Con i viaggiatori ci riescono anche meglio.",
	},
	["org.muse.w04.024"] = {
		"Una sciamana mormora qualcosa a un braciere e la fiamma si piega verso di lei, come un cane verso la mano del padrone.",
		"C'è uno sciamano che parla al fuoco, e il fuoco, a giudicare dall'aspetto, lo ascolta.",
		"Gli sciamani di questa città chiedono il permesso al fuoco prima di accenderlo. I fabbri lo accendono e basta. Il fuoco sembra conoscere la differenza.",
	},
	["org.muse.w04.025"] = {
		"Un tempo l'Orda era soltanto un esercito. Qui ha imparato a essere un popolo: banca, scuole, mercato e sala del consiglio. Thrall ha costruito questo, più delle mura.",
		"Un esercito può vivere nelle tende. Un popolo ha bisogno di una città. Orgrimmar è il giorno in cui l'Orda ha deciso di essere entrambe le cose.",
	},
	["org.muse.w04.026"] = {
		"Nella Valley of Honor, di sicuro, c'è un cacciatore che sta spiegando a un orso che il maestro non è cibo.",
		"I cacciatori portano a spasso le loro bestie per la città come niente fosse. Un felino, un raptor, un cinghiale con le sue idee, tutti in attesa davanti alla stessa banca.",
		"Il felino di un cacciatore dorme di traverso sulla strada, e tutta la folla gli gira intorno. A Orgrimmar nessuno discute con una bestia di quella taglia.",
	},
	["org.muse.w04.027"] = {
		"I guerrieri escono dalla Valley of Honor camminando come se tutta la città fosse un'arena da duello. Alcuni hanno ragione.",
		"In questa città una cicatrice fresca si porta come un mantello nuovo, e si sfoggia allo stesso modo.",
		"Ogni recluta della città sogna la Hall of Legends. Quasi tutte si accontenteranno, felici, di una buona ascia e della pancia piena.",
	},
	["org.muse.w04.028"] = {
		"Qui un maestro ti fa pagare in argento per dirti che sbagli. Il guaio è che ne vale la pena.",
		"In una di queste valli c'è un maestro che aspetta di dirmi che tengo l'arma come un peon tiene la scopa.",
		"Ogni maestro di Orgrimmar comincia la lezione allo stesso modo: con un sospiro.",
	},
	["org.muse.w04.029"] = {
		"Largo, largo. C'è chi ha dei maestri da deludere.",
		"Fate spazio. Ho un appuntamento con un maestro e con una nuova serie di lividi.",
		"Attenzione alle spalle! Passo io, con tutta la mia roba e nessuna pazienza.",
	},
	["org.muse.w04.030"] = {
		"Oltre il portale la strada scende a sud per la terra rossa, verso Razor Hill. Tutte le strade cominciano qui, e sono tutte polverose.",
		"Dal portale Durotar sembra una terra a cui qualcuno ha dato fuoco e che ha lasciato raffreddare. Eppure le strade se ne vanno in ogni direzione.",
		"Là fuori, oltre le mura, la polvere della strada aspetta. Aspetta me sempre più a lungo di quanto faccia la città.",
	},
	["org.muse.w04.031"] = {
		"ascolta due viaggiatori che litigano su quanto valga il biglietto dello zeppelin per Grom'gol.",
		"sente qualcuno lamentarsi a gran voce che lo zeppelin è partito in anticipo, per la prima volta da quando i goblin hanno imparato a volare.",
		"coglie un brandello di discorso sugli zeppelin: l'ennesimo viaggiatore che giura mai più, e intanto compra il biglietto.",
	},
	["org.muse.w04.032"] = {
		"Zeppelin o viverna? Uno l'hanno costruito i goblin. L'altra morde. Scelta difficile.",
		"Prenderei lo zeppelin, ma ho conosciuto i goblin che lo pilotano.",
		"Una viverna almeno atterra dove hai pagato. Di solito.",
	},
	["org.muse.w04.033"] = {
		"Undercity è a un viaggio di zeppelin da qui. Lasciare questa polvere rossa e scendere in quelle cantine umide: faccio fatica a immaginarlo.",
		"Grom'gol, Undercity: dalle torri fuori dal portale un pallone dei goblin va quasi dappertutto. Il canyon è solo la soglia di casa.",
	},
	["org.muse.w04.034"] = {
		"Polvere rossa negli stivali, nel colletto, nel pane. Continuerò a ritrovarmi Orgrimmar nelle tasche per una settimana.",
		"Basta scuotere un mantello in questa città per sollevare una nuvoletta rossa tutta tua.",
		"Tutto quello che ho ha preso il colore del canyon. Orgrimmar ti dipinge, che tu lo voglia o no.",
	},
	["org.muse.w04.035"] = {
		"Questa roccia rossa c'era molto prima di tutti i popoli che ci camminano sopra. Porta le nostre mura e le nostre punte come un vecchio cane porta il collare: con pazienza.",
		"Al canyon non importa chi lo governa. Chiunque sieda nella sala, la roccia continua a essere rossa, e lo sarà anche dopo di noi.",
	},
	["org.muse.w04.036"] = {
		"sfrega tra due dita un pizzico di sabbia rossa staccata dal muro, come se la stesse leggendo.",
		"passa una mano sulla roccia rossa e ruvida e osserva la polvere che le resta sul palmo.",
	},
	["org.muse.w04.037"] = {
		"Qui è tutto rosso. La roccia, la polvere, gli stendardi, i caratteri.",
		"Muri rossi, strada rossa, polvere rossa. Qui qualcuno aveva un solo barattolo di vernice.",
		"Roccia rossa, strada rossa, facce rosse in banca. Perfino i miei stivali sono passati dalla loro parte.",
	},
	["org.muse.w04.038"] = {
		"Fumo di legna, lupo, grasso bruciato e cuoio. Orgrimmar ha l'odore di un accampamento che ha deciso di restare.",
		"Sotto il fumo delle forge c'è sempre qualcosa che arrostisce. In questa città un pasto non è mai a più di qualche passo.",
		"Conceria, recinto dei lupi, fuoco da cucina, fucina: quattro fumi e quattro puzze, e in qualche modo fanno una città sola.",
	},
	["org.muse.w04.039"] = {
		"A Orgrimmar nessuno sussurra. Perfino i segreti si raccontano a squarciagola.",
		"Due orchi fanno quattro chiacchiere da un lato all'altro della strada. Da qui sembra una dichiarazione di guerra.",
		"Ho appena sentito un grunt dire una cosa tenera a un lupo. Era più forte della maggior parte dei gridi di battaglia.",
	},
	["org.muse.w04.040"] = {
		"In una città così rumorosa, un momento di quiete sembra una cosa rubata. Me lo tengo un po', prima che qualcuno se ne accorga.",
		"Fra un colpo di tamburo e l'altro c'è uno spazio largo appena un respiro. Ho imparato ad abitarci.",
	},
	["org.muse.w04.041"] = {
		"fa una smorfia quando un tamburo attacca troppo vicino, tanto forte da far tremare i denti, e aspetta che passi.",
		"sobbalza a un rullo di tamburi improvviso dalla strada accanto, poi fa finta che il sobbalzo non ci sia mai stato.",
	},
	["org.muse.w04.042"] = {
		"In questo canyon ogni grido torna indietro due volte. Orgrimmar non deve mai dire niente una volta sola.",
		"Le pareti rosse rimandano ogni voce alla strada. È una città che si risponde da sola.",
	},
	["org.muse.w04.043"] = {
		"Se un altro imbonitore mi urla nell'orecchio, gli compro qualunque cosa venda pur di farlo smettere. Che probabilmente è il piano.",
		"Un goblin mi segue per la strada con un prezzo che scende ogni dieci passi. Ho la tentazione di arrivare fino al portale per vedere dove va a finire.",
		"Davanti a ogni bancarella di questa città c'è qualcuno che sbraita. Quelle silenziose, l'ho imparato, sono quelle con i prezzi buoni.",
	},
	["org.muse.w04.044"] = {
		"Ogni porta di questa città è stata costruita per gli orchi. I tauren ci passano chini tutto il giorno, corna avanti, senza una parola di lamento.",
		"Un tauren si china sotto un architrave basso, piano, come si girerebbe intorno a un bambino addormentato.",
		"I tauren si muovono in questa città affollata con la cura di chi teme che sia fatta d'argilla. Grossi, gentili, e mai di fretta.",
	},
	["org.muse.w04.045"] = {
		"Un Reietto attraversa il mercato e la folla si apre un po' più del necessario. L'Orda si sta ancora abituando ai suoi ultimi arrivati.",
		"Uno speziale reietto contratta con un fabbro orco per un paio di tenaglie. Nessuno dei due apprezza l'odore dell'altro.",
	},
	["org.muse.w04.046"] = {
		"La risata dei troll arriva più lontano di qualunque tamburo. Qualcuno tra la folla ha appena raccontato una barzelletta bellissima, o pessima.",
		"I troll ridono con tutto il corpo, zanne comprese. È difficile restare di cattivo umore a portata d'orecchio di uno di loro.",
		"Due troll prendono in giro un grunt in una lingua che lui capisce a metà. Fa finta di offendersi, e gli riesce male.",
	},
	["org.muse.w04.047"] = {
		"Un goblin vende qualcosa da un carretto, parlando più in fretta di quanto le monete cambino mano. Neutrali, si definiscono. Neutrali come una bilancia con un pollice sopra.",
		"I goblin di questa città sono cortesi con tutti e fedeli solo alle monete. Almeno sai sempre come stanno le cose.",
		"Un goblin mi ha stretto la mano per un affare e poi mi ha contato le dita, con molta cortesia. Ci sono tutte.",
	},
	["org.muse.w04.048"] = {
		"si scansa per lasciar passare un peon che barcolla sotto un carico di assi, borbotta qualcosa e tira dritto.",
		"guarda una fila di peon che porta legname su per la rampa, lenta e costante come una colonna di formiche.",
		"fa strada a un peon con una cesta di minerale su ciascuna spalla e la pazienza di chi è stanchissimo.",
	},
	["org.muse.w04.049"] = {
		"Un branco di giovani orchi corre tra la folla, schivando le gambe dei grunt. Nati liberi, tutti quanti. Non tutti i loro anziani possono dire lo stesso.",
		"I bambini di qui non hanno mai visto un campo di prigionia né una gabbia. Giocano ad asce e lupi, non a scappare. Le mura servono a questo.",
	},
	["org.muse.w04.050"] = {
		"Cinque popoli in una sola strada, e tutti quanti in mezzo ai piedi.",
		"Permesso. Scusate. Attenzione alle corna. Attenzione alle zanne. Permesso.",
		"Orchi, troll, tauren, Reietti, goblin. Tutti di fretta, tutti nella direzione opposta.",
	},
	["org.muse.w04.051"] = {
		"guarda un goblin e un orco stringersi la mano su un affare, ciascuno con l'aria di aver derubato l'altro.",
		"si ferma a osservare una contrattazione tra un troll e un tauren, condotta quasi tutta a scrollate di spalle.",
	},
	["org.muse.w04.052"] = {
		"Un grunt ha appena aiutato un vecchio troll a salire la rampa senza che nessuno glielo chiedesse, poi mi ha {g:fulminato|fulminata} con lo sguardo, caso mai lo trovassi tenero.",
		"Un tauren riconsegna un piccolo orco in lacrime a sua madre, con molta cura, come se potesse rompersi. La madre lo ringrazia con un ringhio.",
	},
	["org.muse.w04.053"] = {
		"Qua e là un vecchio orco ha cicatrici pallide attorno ai polsi. Ceppi, immagino. Qui nessuno lo chiede, e nessuno le nasconde.",
		"I vecchi orchi tra la folla si muovono più piano dei giovani, e guardano le mura più a lungo. Ricordano com'era prima di avere mura proprie.",
	},
	["org.muse.w04.054"] = {
		"si ferma per lasciar passare un cavaliere su un kodo; la bestia occupa tutta la strada e non chiede scusa a nessuno.",
		"si schiaccia contro un muro mentre un kodo passa ciondolando, con il cavaliere che ringrazia con un cenno da lassù.",
		"aspetta mentre un kodo si pianta in mezzo alla strada a grattarsi, e il cavaliere sospira con la pazienza dell'abitudine.",
	},
	["org.muse.w04.055"] = {
		"Un cucciolo di lupo mastica il laccio dello stivale di un grunt, e il grunt si sforza moltissimo di far finta di niente.",
		"Un lupacchiotto sbuca rotolando da una porta dietro a un ritaglio di cuoio, e tre guerrieri fatti e finiti si scansano per lui.",
		"Un cucciolo di lupo si è addormentato su una pila di pelli in vendita, e il conciatore non ha cuore di spostarlo.",
	},
	["org.muse.w04.056"] = {
		"si fa da parte mentre una colonna di grunt in armatura completa marcia verso il portale, e la folla tace finché non sono passati.",
		"guarda un drappello di grunt passare al passo, con la strada che trema appena sotto i loro stivali.",
	},
	["org.muse.w04.057"] = {
		"afferra al volo una moneta caduta a qualcuno tra la folla e la restituisce; il proprietario la guarda come se la contasse due volte.",
		"raccoglie una moneta che rotola sulla strada e la restituisce a un peon stupito, che la morde per sicurezza.",
	},
	["org.muse.w04.058"] = {
		"Un mago sta in piedi in mezzo alla folla, fissa il vuoto e muove le dita. Da un momento all'altro, sparito. Probabilmente in un posto più fresco.",
		"Qui i maghi svaniscono in un lampo di luce e si lasciano dietro solo un odore di bruciato e un buco nella fila.",
		"Un mago è appena comparso dal nulla davanti alla banca e per poco non è finito sotto un lupo. Nessuno ha nemmeno alzato gli occhi.",
	},
	["org.muse.w04.059"] = {
		"Orgrimmar non è bella come lo è un bosco o un lago. È bella come lo è un'ascia fatta bene.",
		"Nessuno chiamerebbe graziosa questa città. Però è onesta: ogni muro dice a cosa serve, come una buona lama.",
		"Non un giardino, non una fontana. Solo pietra, ferro e uno scopo. Ho finito per farmelo piacere.",
	},
	["org.muse.w04.060"] = {
		"Una città alzata da gente che non molto tempo fa stava dietro un recinto. Quando partono i tamburi, è questo che ci sento dentro.",
		"Non molto tempo fa gli orchi stavano nei campi, in catene. Adesso hanno una città. I tamburi suonano così, se li ascolti.",
	},
	["org.muse.w04.061"] = {
		"Durotar porta il nome del padre di Thrall, Orgrimmar quello del vecchio Capoguerra che lo scelse. Una terra intera intitolata ai morti, e così piena di vivi.",
		"Due nomi su questa terra, Durotan e Orgrim, e nessuno dei due è vissuto abbastanza da percorrerla. I vivi hanno preso i loro nomi, e hanno costruito.",
	},
	["org.muse.w04.062"] = {
		"Ero {g:uscito|uscita} per comprare una cosa sola. Me ne andrò con sei, e nessuna sarà la prima.",
		"Sulla lista c'era scritto cote. Nelle borse ho una corda, due pelli, una lanterna e un pasticcio di carne che ho già mangiato.",
		"Ogni volta che passo davanti a una bancarella mi ricordo di un'altra cosa che mi serve. Questa città l'hanno progettata i mercanti.",
	},
	["org.muse.w04.063"] = {
		"C'è qualcosa di fresco in questa città? Acqua, birra, un angolo d'ombra, non vado per il sottile.",
		"Chi vende qualcosa di fresco qui? Pago il prezzo da goblin, solo per questa volta.",
		"Qualcuno mi indichi una cantina fresca e gli pago l'affitto.",
	},
	["org.muse.w04.064"] = {
		"Questa città sfianca il corpo senza un solo combattimento: rampe, folla, scale tagliate nella roccia, e polvere a ogni respiro.",
		"Una giornata a Orgrimmar stanca le gambe più di una giornata di strada. Ogni commissione è in salita rispetto all'ultima.",
	},
	["org.muse.w04.065"] = {
		"Mezza città sembra pronta a fare a pugni, e l'altra mezza pronta a scommetterci sopra.",
		"Tre spintonate nell'ultima ora, e nessuno ha estratto un'arma. A Orgrimmar è praticamente una festa della pace.",
		"Qualcuno mi ha appena urtato la spalla e ha ringhiato. Ho ringhiato anch'io. Ognuno per la sua strada, e amici come prima. Qui funziona così.",
	},
	["org.muse.w04.066"] = {
		"All'Orda non bastano le asce. Servono cuoio, chiodi, pane, inchiostro. Camminando per la città vedo l'altro esercito.",
		"Per ogni grunt sulle mura ci sono dieci peon, fabbri e cuochi alle sue spalle. Le guerre si vincono anche nelle cucine.",
	},
	["org.muse.w04.067"] = {
		"Lok'tar. Che il canyon resti in piedi e le forge ardano.",
		"Lok'tar ogar. La città lo sente, anche se nessuno risponde.",
		"Lok'tar, Orgrimmar. Continua a farti sentire.",
	},
	["org.muse.w04.068"] = {
		"Qui tutti vanno da qualche parte: la banca, un maestro, il portale. Mi fermo e la folla si divide intorno a me come l'acqua attorno a un sasso.",
		"Mi fermo in mezzo alla strada senza motivo, e la città mi scorre ai due lati senza degnarmi di uno sguardo.",
	},
	["org.muse.w04.069"] = {
		"si appoggia a un muro in un angolo fuori dalla calca e guarda per un po' il viavai della città.",
		"si siede su un muretto a sistemare una fibbia allentata, mentre il rumore della città continua a scorrere indifferente.",
		"trova un gradino fuori mano, si siede e lascia passare la folla per un po', come si lascia passare un acquazzone.",
	},
	["org.muse.w04.070"] = {
		"Scorpide arrosto sullo spiedo, un rame l'uno. Croccante. Dicono che sia un gusto da acquisire. Lo sto acquisendo.",
		"Un troll a un braciere vende spiedini di qualcosa con troppe zampe. Ne ho presi due. Il secondo era meglio.",
		"Su un braciere sì e uno no sfrigola qualcosa. Il borsellino e lo stomaco stanno litigando.",
	},
	["org.muse.w04.071"] = {
		"Orgrimmar ha una banca, una casa d'aste, una locanda e un maestro per ogni mestiere esistente, eppure nessuno vende ombra.",
		"In questa città si compra tutto, tranne un momento d'ombra e una risposta chiara da un goblin.",
	},
	["org.muse.w04.072"] = {
		"La città è costruita in un pugno di roccia, con pochi ingressi. Chi l'ha progettata di assedi ne aveva visti un paio.",
		"Pareti di roccia rossa su ogni lato, porte che si contano su una mano. Orgrimmar l'ha costruita gente che si aspettava ospiti indesiderati.",
	},
	["org.muse.w04.073"] = {
		"Ogni grunt al portale, ogni fabbro all'incudine, ogni sciamano al fuoco: tutta l'Orda al lavoro nello stesso momento. Farei meglio a trovare la mia parte.",
		"In questa città nessuno resta con le mani in mano a lungo. Perfino i lupi sembrano indaffarati. È ora che lo sia anch'io.",
	},
	["org.muse.w04.074"] = {
		"Migliaia di persone, e nessuna che conosca il mio nome. C'è una specie di riposo, in questo.",
		"Una città così piena è il posto più facile in cui stare da soli. Nessuno ti guarda due volte, nessuno chiede dove vai.",
		"Qui nessuno sa cosa ho fatto né dove sono {g:stato|stata}. Nella folla sono solo un altro paio di stivali.",
	},
	["org.muse.w04.075"] = {
		"Ossa e zanne sono incastrate in metà dei muri, qui. Dopo un po' ho smesso di chiedermi di chi fossero.",
		"Zanne sopra le porte, teschi sui pali. Orgrimmar si adorna con quello che la caccia si lascia dietro.",
	},
	["org.muse.w04.076"] = {
		"Pietra, fuoco e un popolo che non ha voluto morire. Questa è tutta la ricetta di Orgrimmar; il resto è rumore.",
		"Togli le bancarelle e le urla, e resta roccia, fuoco di forgia e testardaggine. Basta per costruirci sopra.",
	},
	["org.muse.w04.077"] = {
		"Perché in questa città ogni rampa è in salita? In entrambe le direzioni?",
		"Chi ha costruito Orgrimmar non ha mai dovuto portarci su niente.",
		"Le mie gambe hanno delle opinioni sulle rampe di questa città. Molto rumorose.",
	},
	["org.muse.w04.078"] = {
		"Capanne sulle sporgenze, sporgenze sopra le capanne, una rampa per ogni cosa. Il canyon non lasciava spazio per allargarsi, e allora sono saliti.",
		"Ogni livello di questa città guarda dall'alto un altro livello. Dalla cima di una rampa si vedono tre mestieri, due litigi e un goblin che conta monete.",
	},
	["org.muse.w04.079"] = {
		"Non molto tempo fa gli orchi bevvero sangue di demone e misero a fuoco terre intere. Adesso piantano chiodi e vendono pane. È un cambiamento di cui mi fido: lento, e rumoroso.",
		"Qualunque cosa ci fosse un tempo nel sangue degli orchi, questa città è il lungo lavoro di toglierla. Ogni giorno di pace qui è un giorno ripreso.",
	},
	["org.muse.w04.080"] = {
		"All'Alleanza piacerebbe vedere bruciare queste mura. Che vengano, e prima diano una bella occhiata alle mura.",
		"Ogni punta su queste mura è la risposta a una domanda che nessuno è ancora stato così sciocco da fare.",
	},
	["org.muse.w04.081"] = {
		"Bracieri, forge, fuochi da cucina, torce. Una città di piccoli fuochi, ognuno con qualcuno accanto che si scalda le mani o la cena.",
		"A ogni angolo di Orgrimmar c'è un fuoco. Potresti attraversare tutta la città senza mai avere freddo, ammesso che qui faccia mai freddo.",
	},
	["org.muse.w04.082"] = {
		"Un giorno alla locanda di qui racconteranno storie su di me. Spero quasi tutte vere.",
		"Orgrimmar è piena di eroi. C'è posto anche per me?",
		"Qualcuno qui dovrebbe incidere il mio nome su un muro. In piccolo. Vicino alla porta, magari.",
	},
	["org.muse.w04.083"] = {
		"Tutto questo rumore e questi commerci poggiano su una pace sottile. Oltre le mura, in qualche posto, qualcuno la paga ogni giorno.",
		"Le bancarelle sono piene e le forge accese perché qualcuno sorveglia le strade. Cerco di non dimenticare chi.",
	},
	["org.muse.w04.084"] = {
		"Orgrimmar non è un posto che si ama a prima vista. Ti cresce addosso, come un callo.",
		"Questa città è troppo rumorosa, troppo calda, troppo affollata, e non la vorrei diversa. Non diteglielo.",
	},
	["org.muse.w04.085"] = {
		"scansa una pozzanghera di qualcosa che di sicuro non è acqua, con grande attenzione.",
		"fa un balzo indietro quando da una sporgenza qualcuno svuota un secchio d'acqua sporca, e la evita per un pelo.",
	},
	["org.muse.w04.086"] = {
		"Chi vende, chi compra, chi mente? Ah, Orgrimmar.",
		"Senti che profumo? Qualcuno arrostisce un cinghiale. Seguo il naso.",
		"Allora, città. Fammi vedere cos'hai in vendita oggi, e cerca di non urlarlo.",
	},
	["org.muse.w04.087"] = {
		"Sabbia nel vento, e tutta la città le volta le spalle nello stesso momento, come una mandria nella pianura.",
		"La sabbia attraversa Orgrimmar come se avesse affari in banca. Tengo la bocca chiusa, e non solo per educazione.",
	},
	["org.muse.w04.088"] = {
		"affonda il mento nel colletto e si piega contro il vento carico di sabbia, seguendo la sagoma confusa del grunt davanti.",
		"prosegue nella sabbia che sibila con gli occhi socchiusi, orientandosi col suono delle incudini.",
	},
	["org.muse.w04.089"] = {
		"Pioggia a Orgrimmar. La polvere rossa diventa vernice e cola giù da ogni muro, e i troll ci stanno sotto a ridere.",
		"Pioggia, proprio qui. Il fumo delle forge sfrigola, le strade diventano rosso scuro e tutto il canyon sa di argilla bagnata.",
	},
	["org.muse.w04.090"] = {
		"alza il viso verso la pioggia rara, come sta facendo mezza strada, e lascia che lavi via un po' di polvere.",
		"tende il palmo aperto per raccogliere la pioggia, come si fa nelle terre aride, e guarda l'acqua riempirlo.",
	},
	["org.muse.w04.091"] = {
		"Dal fondo di un canyon le stelle scorrono come un fiume stretto fra le pareti, e le punte sull'orlo ci si stagliano contro come denti.",
		"Sopra le torce, una manciata di stelle. La città è troppo luminosa per vederne di più, e troppo rumorosa per sentirne la mancanza.",
	},
	["org.muse.w04.092"] = {
		"sente un lupo ululare da qualche parte nel buio del canyon, e una dozzina d'altri rispondere dall'altro capo della città.",
		"si ferma a un lungo ululato che sale dal buio; fa il giro delle mura prima di spegnersi.",
	},
	["org.muse.w04.093"] = {
		"esce nel fresco della prima ora, prima che si alzi la polvere e cominci il vociare.",
		"guarda i guardiani dare da mangiare ai lupi alle prime luci, maledicendo ogni bestia per nome, con affetto.",
	},
	["org.muse.w04.094"] = {
		"La prima ora appartiene ai peon. Sono in piedi prima di tutti, a spazzare la polvere da un lato all'altro della strada.",
		"Prima che si sveglino i mercanti, la città è tutta peon e grunt che sbadigliano. L'ora più onesta di Orgrimmar.",
	},
	["org.muse.w04.095"] = {
		"Al crepuscolo si accendono tutte le torce della città, e tutti i cuochi bruciano qualcosa nello stesso momento.",
		"Crepuscolo. Le torce sono accese, le bancarelle chiudono e i prezzi finalmente scendono.",
	},
	["org.muse.w04.096"] = {
		"Mentre la luce se ne va, le viverne rientrano alla torre una dopo l'altra, come corvi su un albero secco.",
		"Con la luce che cala, le ultime viverne scendono dal cielo verso la torre, stanche e lente.",
	},
	["org.muse.w04.097"] = {
		"A quest'ora la gente sta in fila nella striscia d'ombra dei muri, come se facesse la coda per il fresco.",
		"L'ombra attraversa la valle seguendo il sole, e la folla la segue, come un gregge dietro al pastore.",
	},
	["org.muse.w04.098"] = {
		"Finalmente sotto un tetto. I tamburi passano ancora attraverso i muri, attutiti, come qualcuno che per una volta bussa con garbo.",
		"Al chiuso, il fracasso della città si riduce a un ronzio. Avevo dimenticato che anche i miei pensieri fanno rumore.",
	},
	["org.muse.w04.099"] = {
		"Dentro, l'aria è densa di fumo e di chiacchiere. Fuori c'erano polvere e urla. Non so se ci ho guadagnato granché.",
		"Quattro muri e un tetto, e il fumo mi trova lo stesso. A Orgrimmar il chiuso non funziona come nelle altre città.",
	},
	["org.muse.w04.100"] = {
		"Gli stendardi sulle mura schioccano e si posano, schioccano e si posano. Mi accorgo di respirare al loro ritmo.",
		"Sopra la strada uno stendardo si gonfia e ricade come un respiro lento. È la cosa più calma della città.",
	},
	["org.muse.w04.101"] = {
		"guarda il fumo di cento focolari e forge salire e radunarsi sotto l'orlo del canyon come un secondo tetto.",
		"segue con lo sguardo una colonna di fumo di forgia su per la parete rossa, finché il vento sull'orlo non la sfilaccia.",
	},
	["org.npc_meet.w04.001"] = {
		"passa accanto a un grunt di guardia, i cui occhi seguono senza che la testa si sposti di un dito.",
		"si prende una lunga occhiata da un grunt appoggiato a un'ascia, di quelle che misurano e archiviano.",
		"fa un cenno al grunt accanto al muro, e il grunt sposta il peso dell'ascia in quella che potrebbe essere una risposta.",
	},
	["org.npc_meet.w04.002"] = {
		"Turno lungo? Non rispondere. Te lo leggo nelle zanne.",
		"Si tiene la pace? Bene. Cercherò di non metterla alla prova.",
		"Non badare a me. Cammino e basta. Niente da vedere, solo una persona che rispetta le regole.",
	},
	["org.npc_meet.w04.003"] = {
		"Avambracci da fabbro e una voce capace di zittire una rissa dall'altra parte della sala. L'oste ideale per Orgrimmar.",
		"L'oste guarda i miei stivali prima della mia faccia. Giusto: gli stivali raccontano di più, e senza bisogno di voce.",
		"Chi manda avanti una locanda in questa città ha visto entrare ogni genere di guaio. Cerco di essere quello noioso.",
	},
	["org.npc_meet.w04.004"] = {
		"Qualcosa di caldo da mangiare e qualcosa di fresco da bere, e sull'ordine non faccio storie.",
		"Una panca lontana dalla porta, se ce l'avete. Di compagnia, per un po', ne ho avuta abbastanza.",
	},
	["org.npc_meet.w04.005"] = {
		"Il mastro di volo ha l'odore delle bestie su ogni manica, e la stessa abitudine di guardare la gente come per pesarla per una sella.",
		"Dietro il mastro le viverne si agitano sui trespoli, e ogni bestia mi guarda come un cuoco guarda la carne.",
	},
	["org.npc_meet.w04.006"] = {
		"Lontano, per favore, e senza scossoni. Ho appena mangiato.",
		"Quale di queste bestie mi sopporta di meno? Ne prendo un'altra.",
		"Vorrei una viverna educata. Ne tenete qualcuna?",
	},
	["org.npc_meet.w04.007"] = {
		"si sente chiamare da un mercante a tre bancarelle di distanza, che in questa città vale come una parola sussurrata.",
		"si ferma a una bancarella dove il mercante sta già porgendo qualcosa, prima che si sia detta una parola.",
		"lascia che un mercante disponga la merce sul banco, un pezzo alla volta, con la cura di chi stende un piano di battaglia.",
	},
	["org.npc_meet.w04.008"] = {
		"Ogni mercante qui ha due prezzi: uno per gli amici e uno per tutti gli altri. Vediamo quale tocca a me.",
		"La merce è buona. Il sorriso è migliore. Il prezzo sarà il migliore di tutti, per il mercante.",
	},
	["org.npc_meet.w04.009"] = {
		"C'è ancora tutto là dentro? Anzi, se non c'è non ditemelo.",
		"Sono qui a far visita alle mie cose. Si sentivano sole.",
		"Come sempre: metto dentro cose, ne tiro fuori di meno.",
	},
	["org.npc_meet.w04.010"] = {
		"A questo banco ogni moneta si conta come se fosse un grunt che si presenta in servizio. Nessuna passa senza essere vista.",
		"Dietro il banco, file di casse chiuse a chiave, e qualcuno che conta moneta per moneta e ha l'aria della serratura più robusta di tutte.",
	},
	["org.npc_meet.w04.011"] = {
		"aspetta che il maestro finisca con un altro allievo, poi si fa avanti per farsi squadrare allo stesso modo.",
		"si presenta davanti al maestro e si lascia studiare dagli stivali alla fronte senza una parola, come un libro aperto.",
	},
	["org.npc_meet.w04.012"] = {
		"Hai l'aria di chi ha una lista. Leggimi la prima riga.",
		"Lavoro? Ascolto. Paga? Ascolto meglio.",
		"Va bene, sentiamo. Prima la versione corta.",
	},
	["org.npcd_flightmaster_bye.w04.001"] = {
		"Tieniti alle cinghie, non alle orecchie della bestia. Vai.",
		"Buon volo. Se incroci uno zeppelin per strada, saluta: i goblin ci vanno matti.",
	},
	["org.npcd_flightmaster_open.w04.001"] = {
		"Le viverne hanno mangiato e riposato. Il punto è se l'hai fatto anche tu.",
		"Avvicinati al trespolo, piano. Le bestie non amano i movimenti bruschi, né i grunt, né me, certi giorni.",
		"Da questa torre si raggiunge mezza Kalimdor, se hai le monete e lo stomaco per la groppa di una bestia.",
	},
	["org.npcd_guard_bye.w04.001"] = {
		"Vai, allora. Dentro le mura l'arma resta dove deve stare.",
		"Cammina, e tieniti a destra dei lupi.",
		"Oltre il portale la guardia la fai tu. Qui dentro, la facciamo noi.",
	},
	["org.npcd_guard_thanks.w04.001"] = {
		"Non ringraziare me. Ringrazia il Capoguerra: io sto solo dove mi mette lui.",
		"Mh. A questo posto i ringraziamenti sono rari. Mi ricorderò la faccia.",
	},
	["org.npcd_innkeeper_bye.w04.001"] = {
		"Vai pure. La tua panca sarà calda sotto qualcun altro in un battito di ciglia.",
		"Fa' attenzione. E se incontri una carovana per strada, di' che qui ci sono letti.",
		"Occhio al gradino, e occhio ai lupi fuori dalla porta.",
	},
	["org.npcd_innkeeper_more.w04.001"] = {
		"Non so altro. Chiedi ai goblin delle torri degli zeppelin: sentono tutto e si fanno pagare la metà.",
		"Basta così. Quello che sento a questo banco lo sento a pezzi, fra un'ordinazione e l'altra.",
	},
	["org.npcd_innkeeper_open.w04.001"] = {
		"Entra, prima che la strada ti inghiotta. C'è una panca libera vicino al muro, e oggi lo stufato non si è ancora bruciato.",
		"Avanti, avanti. Fuori Orgrimmar fa già abbastanza chiasso; qui dentro devi sopportare solo me.",
		"Siediti dove non ci sono punte. Il che restringe la scelta.",
	},
	["org.npcd_innkeeper_open.w04.002"] = {
		"Letto o scodella? Dillo forte: i tamburi non si fermano per nessuno.",
		"Questa è la locanda più affollata dell'Orda, e i tamburi non smettono mai. Trovati un angolo e difendilo.",
	},
	["org.npcd_innkeeper_rest.w04.001"] = {
		"I letti sono sul retro. Muri spessi: i tamburi non li sentirai, o quasi.",
		"Dormi quanto vuoi. Quando ti svegli i tamburi saranno ancora lì a battere.",
	},
	["org.npcd_innkeeper_sit.w04.001"] = {
		"Così. Piedi in alto, se trovi uno sgabello che nessuno sorveglia.",
		"Resta quanto vuoi. Solo, tieni i gomiti lontani dal tavolo accanto: è di un grunt che si scalda facilmente.",
	},
	["org.npcd_innkeeper_thanks.w04.001"] = {
		"I ringraziamenti sono gentili. Le monete lo sono di più. Qui sono benvenuti entrambi.",
		"Nessun disturbo. In questa città un ospite educato è cosa rara, più di una moneta d'avanzo; lo dirò al cuoco.",
	},
	["org.npcd_merchant_bye.w04.001"] = {
		"Quando la polvere ti avrà consumato le suole, sai a quale banco tornare.",
		"Vai pure. E se qualcuno chiede dove sono le bancarelle buone, sai cosa rispondere.",
		"Buon viaggio, e se là fuori la borsa ti pesa, sai dove trovarmi.",
	},
	["org.npcd_merchant_haggle.w04.001"] = {
		"Mercanteggiare? A Orgrimmar è metà del mestiere. Avanti, allora: dai goblin ho sentito offerte peggiori.",
		"Più basso? Il kodo che l'ha portato fin qui non ha camminato per meno.",
	},
	["org.npcd_merchant_open.w04.001"] = {
		"Avanti, avanti. Tutto quello che vedi ha attraversato Durotar in groppa a un kodo, e si vede solo un pochino.",
		"Hai l'aria di chi lascerà presto la città. Compra prima di partire: là fuori nessuno vende.",
		"Guarda quanto vuoi. Tocca quello che pagherai.",
	},
	["org.npcd_merchant_open.w04.002"] = {
		"In questa via le monete parlano più forte dei tamburi. Sentiamo le tue.",
		"Occhio alla merce, morde. Il cuoio, intendo. Quasi sempre. Prima le monete, poi puoi accarezzarlo.",
	},
	["org.npcd_merchant_thanks.w04.001"] = {
		"Ringraziami tornando. E portando amici con la borsa pesante.",
		"Piacere mio. Spargi la voce per la valle; trovarmi è facile.",
	},
	["org.npcd_trainer_bye.w04.001"] = {
		"Vai. Esercitati. Torna quando ce l'avrai nelle mani, non nella testa.",
		"Vai pure. Ricorda quello che ho detto, soprattutto la parte che non ti è piaciuta, e tieni le mani occupate.",
	},
	["org.npcd_trainer_open.w04.001"] = {
		"Qui per imparare, o per sentirti dire che è ancora presto? In ogni caso, mettiti lì.",
		"Fammi vedere cosa ti ha insegnato la strada. Poi ti mostro cosa non ti ha insegnato.",
		"Questa città è piena di reclute convinte di sapere tutto. Dimostrami che non sei una di loro, prima di rimetterti in strada.",
	},
	["org.pray.w04.001"] = {
		"Qualunque cosa ascolti sotto tutto questo chiasso: tieni in piedi le mura, e oneste le mie mani.",
		"Spiriti di questo canyon rosso, avete sentito un mucchio di urla. Ascoltate una parola sommessa da parte mia, e tenete ferma la mia mano.",
	},
	["org.quest_complete.w04.001"] = {
		"soppesa la borsa nel palmo, approva il suono che fa e la lega stretta.",
		"conta le monete due volte al riparo di un muro, più per abitudine che per sospetto.",
		"infila la ricompensa sotto il mantello prima che il prossimo grido dalle bancarelle la trovi.",
	},
	["org.quest_complete.w04.002"] = {
		"Il ringraziamento è durato un respiro. Poi lo sguardo è passato oltre la mia spalla, al prossimo. A Orgrimmar c'è la fila per tutto.",
		"Pagato, ringraziato e congedato nel tempo di uno sbadiglio di lupo. Città efficiente.",
		"Speravo in un discorso. Ho avuto un grugnito e un dito puntato verso l'uscita. Ci siamo quasi.",
	},
	["org.quest_complete.w04.003"] = {
		"Questa è fatta. E adesso, quale bancarella del Drag si prende per prima queste monete?",
		"Saldato fino all'ultima moneta. Il Drag me le porterà via prima che finisca la giornata.",
		"Bene. Questa borsa non resterà pesante a lungo, col Drag a due passi.",
	},
	["org.quest_complete.w04.004"] = {
		"Ormai non è più nelle mie mani, e le mani se ne accorgono. Più leggere, e un po' vuote.",
		"Riferito e chiuso. Qualunque cosa ne venga fuori, da qui in avanti è un pensiero di qualcun altro.",
		"Un peso in meno sulle spalle. La città si tiene tutti i suoi, come al solito.",
	},
	["org.quest_complete.w04.005"] = {
		"sente dichiarare il compito concluso da una voce che si fa sentire, e qualche testa in strada si gira a guardare.",
		"riceve un grazie di poche parole ruvide, e un orco di passaggio grugnisce la sua approvazione come se la faccenda riguardasse anche lui.",
		"accetta la ricompensa con un breve cenno del capo, e il frastuono della città si richiude intorno come acqua.",
	},
	["org.quest_complete.w04.006"] = {
		"Se c'è altro da portare, ammazzare o contare, mi trovate alla locanda.",
		"Bene. La prossima volta chiedetemi qualcosa di difficile.",
		"Ecco. Scrivetelo da qualche parte, prima che mi dimentichi di averlo fatto.",
	},
	["org.quest_complete.w04.007"] = {
		"Un'altra pietra posata. Un giorno forse questa città saprà il mio nome senza doverlo chiedere due volte.",
		"Piccole imprese, una sopra l'altra. Qui è così che si alzano le mura, e anche i nomi.",
		"Nessuno ricorda il primo incarico. Ricordano quello dopo il centesimo. Continuo a contare.",
	},
	["org.quest_complete.w04.008"] = {
		"si scansa per lasciar passare un peone carico di legname, il compito finito e la ricompensa già nella borsa alla cintura.",
		"chiude la faccenda mentre un peone passa arrancando sotto un carico di legna, con l'aria di chi non viene mai ringraziato.",
		"si lascia alle spalle il conto saldato, oltre un peone che si è fermato a guardare e viene rispedito al lavoro da qualcuno che urla più forte.",
	},
	["org.quest_complete.w04.009"] = {
		"Fatto come chiesto, e fatto bene. Ditelo a chi va detto.",
		"Consideratela chiusa. C'era sopra la mia parola.",
		"È finita. Nella città del Capoguerra non lascio le cose a metà.",
	},
	["org.quest_complete.w04.010"] = {
		"La moneta è ancora calda della tasca da cui è uscita. Strano, in cosa si trasforma un lavoro.",
		"Pagato, e la città ha già dimenticato l'incarico. Lo ricorderò solo io, e solo per un po'.",
		"La preoccupazione di qualcun altro è diventata il mio lavoro, e ora non è più di nessuno. È anche questa una specie di magia.",
	},
	["org.quest_complete.w04.011"] = {
		"prende la ricompensa mentre gli stendardi si muovono in una folata calda, e per un momento tutta la via sembra approvare.",
		"salda il conto sotto le gronde irte di punte, mentre in lontananza un corno annuncia il cambio della guardia.",
	},
	["org.quest_complete.w04.012"] = {
		"In questa città c'è qualcuno che sta graffiando il mio nome in un registro. Probabilmente scritto male.",
		"Un segno sulla lista di qualcuno. Sotto tutte quelle urla, l'Orda va avanti a liste.",
	},
	["org.quest_complete.w04.013"] = {
		"Ecco fatto. I miei piedi vorrebbero scambiare due parole con chi ha organizzato tutto questo camminare.",
		"Sistemato. E adesso, dove ci si siede in questa città?",
		"Finito e archiviato. Gli stivali si sono guadagnati un riposo, anche se io no.",
	},
	["org.quest_complete.w04.014"] = {
		"È il momento migliore: niente da dare, nessuno che mi aspetta, e tutto il chiasso della città che appartiene a qualcun altro.",
		"Mani libere, zaino leggero, qualche moneta. Per una volta potrei girare il Drag solo per guardare.",
		"Niente più da portare, niente più da cercare. Per un'ora Orgrimmar è solo un posto dove stare, a mani vuote.",
	},
	["org.quest_complete.w04.015"] = {
		"ascolta un ringraziamento che si allunga più del previsto, annuendo, mentre qualcuno alle spalle si schiarisce la voce.",
		"si sente dire due volte che il lavoro è stato fatto bene, da una voce non abituata a dirlo nemmeno una.",
		"si sente rivolgere un ringraziamento più lungo di quanto questa città ne spenda di solito, e annuisce fino alla fine.",
	},
	["org.quest_complete.w04.016"] = {
		"La vostra gratitudine è registrata. Anche la mia. Guardateci, educati a Orgrimmar.",
		"Non serve fare festa. Una festicciola, magari. In privato.",
	},
	["org.quest_complete.w04.017"] = {
		"Questa città è stata tirata su un incarico alla volta: un carico portato, un messaggio consegnato, qualcuno che rientra dal portale. Un po' ne faccio parte anch'io.",
		"Niente di tutto questo verrà inciso da nessuna parte. Eppure la città poggia su mille commissioni come questa.",
	},
	["org.quest_complete.w04.018"] = {
		"intasca la ricompensa, lancia un'occhiata verso l'odore di carne arrosto che scende lungo la via, e deglutisce.",
		"rigira la ricompensa una volta, e dall'altra parte della strada un goblin le sta già sorridendo.",
		"mette via la ricompensa, e tre venditori a portata d'orecchio alzano la voce tutti insieme.",
	},
	["org.quest_complete.w04.019"] = {
		"Dite loro che è fatto. E dite chi l'ha fatto.",
		"Fatto. Se ci saranno canzoni, vorrei una strofa. Anche corta.",
		"Fatto, e fatto bene. Qualcuno dica alla Hall of Legends di aspettarmi.",
	},
	["org.quest_complete.w04.020"] = {
		"Lavoro dato, lavoro fatto, paga presa. Gli accordi più semplici sono quelli di cui mi fido.",
		"Niente discorsi, niente giuramenti, solo un compito e la sua fine. Mi sta bene così.",
	},
	["org.quest_complete.w04.021"] = {
		"lascia andare un respiro che sembra trattenuto dall'inizio del compito; nella calca nessuno se ne accorge.",
		"fa ruotare le spalle una volta chiusa la faccenda, come se posasse uno zaino che in realtà non c'era.",
		"si concede un piccolo sorriso privato, sparito prima che qualcuno in strada possa coglierlo.",
	},
	["org.quest_complete.w04.022"] = {
		"Un piacere. Be', quasi tutto un piacere. Qualche parte è stata tremenda.",
		"Se avete ancora bisogno di me, è facile trovarmi: seguite le lamentele.",
	},
	["org.quest_complete.w04.023"] = {
		"È tardi e le torce si consumano, ma l'incarico è chiuso. Stanotte dormirò meglio senza debiti.",
		"La guardia notturna è sulle mura, e io sono qui a chiudere gli affari della giornata alla luce delle torce.",
	},
	["org.quest_complete.w04.024"] = {
		"torna nel riverbero delle mura rosse, la ricompensa in una mano e l'altra alzata contro il sole.",
		"si ferma in una striscia d'ombra lungo il muro per riporre la ricompensa, mentre il sole picchia sulla pietra.",
		"si asciuga il sudore dalla fronte con l'avambraccio, il sole alto sul canyon e la ricompensa al sicuro in una borsa.",
	},
	["org.quest_complete.w04.025"] = {
		"Non chiedo mai che fine fa il lavoro una volta consegnato. Oggi per poco non l'ho fatto.",
		"Qualunque cosa fosse, ora è nelle mani della città. Mani grandi. Spero che abbiano cura.",
	},
	["org.quest_complete.w04.026"] = {
		"La fiducia era ben riposta. La prossima volta datemi qualcosa di più pesante.",
		"È fatto. Avete chiesto alla persona giusta.",
	},
	["org.quest_complete.w04.027"] = {
		"guarda il fumo delle forge salire oltre l'orlo del canyon mentre la faccenda si conclude, e lascia che il momento si posi.",
		"si concede un momento dopo il conto, con gli occhi alla striscia di cielo fra le pareti del canyon.",
	},
	["org.quest_complete.w04.028"] = {
		"Ogni commissione mi insegna la città un po' meglio: chi urla, chi paga, chi fa tutte e due le cose.",
		"Una faccia in più a Orgrimmar che conosce la mia. Piano piano la città si riempie di gente a cui ho dato una mano.",
	},
	["org.quest_complete.w04.029"] = {
		"Non ringraziatemi, pagatemi. Ah, l'avete fatto. Allora anche i ringraziamenti sono graditi.",
		"Tenetevi il discorso. Io mi tengo la ricompensa. Scambio equo.",
	},
	["org.quest_complete.w04.030"] = {
		"chiude la faccenda con un panno tirato sulla bocca, e il ringraziamento si perde a metà nel sibilo della sabbia lungo la via.",
		"ripara la ricompensa dalla sabbia che vola con una mano e torna fuori nel vortice rosso.",
	},
	["org.quest_complete.w04.031"] = {
		"Il lavoro è fatto e la città non si è fermata un attimo. È giusto così: una città che si ferma per ogni commissione resta ferma.",
		"Nessuno per strada sa cosa ho appena finito. Le forge continuano a suonare, i lupi a camminare avanti e indietro. Mi va bene.",
		"Fatto, e i tamburi non hanno perso un colpo. Mi preoccuperei se lo avessero fatto.",
	},
	["org.quest_complete.w04.032"] = {
		"Chi ha fame? Offro io. Una cosa piccola, eh.",
		"Questo merita un bicchiere. Economico. Ho visto i prezzi, qui.",
	},
	["org.quest_complete.w04.033"] = {
		"Gli sciamani della Valley of Wisdom dicono che gli spiriti tengono il loro conto delle azioni. Spero che questa ci sia finita dentro.",
		"Gli antenati guardano, dicono i vecchi, anche se non si sa da dove. Oggi, almeno, non hanno visto niente di cui vergognarsi.",
	},
	["org.quest_complete.w04.034"] = {
		"si allontana a faccenda chiusa, oltre un tauren che si china con cura sotto una porta fatta per gli orchi.",
		"si volta dalla faccenda conclusa e per poco non urta un troll con un cesto di qualcosa che si dimena.",
		"si allontana col compito alle spalle, lasciando il passo sulla porta a un goblin che conta qualcosa sottovoce e non vuole essere interrotto.",
	},
	["org.quest_complete.w04.035"] = {
		"Strano. La città è chiassosa come sempre, e dentro di me si è fatto silenzio, come succede quando un compito molla la presa.",
		"La fine di un lavoro lascia sempre un piccolo vuoto. Lo riempirò col prossimo, immagino.",
		"Finito, e per un battito di cuore non so più a cosa servano le mie mani.",
	},
	["org.quest_complete.w04.036"] = {
		"Bene. La prossima, mettetela in un posto con un po' d'ombra.",
		"Se ce n'è un'altra, la vorrei da questa parte della città. Le gambe stanno votando.",
		"Sistemato. E se il prossimo lavoro è giù nella Cleft, il prezzo sale.",
	},
	["org.quest_complete.w04.037"] = {
		"riceve la ricompensa da una mano pesante e callosa, e la stretta che l'accompagna dura un attimo più del necessario.",
		"si prende una pacca decisa sulla spalla che per poco non fa cadere a terra la ricompensa.",
	},
	["org.quest_complete.w04.038"] = {
		"Nessuno ha mercanteggiato sulla mia ricompensa. In questa città è rispetto o un errore. Non torno indietro a chiedere quale dei due.",
		"Pagato senza discutere. Quasi mi manca la discussione.",
	},
	["org.reputation_change.w04.001"] = {
		"Qualcuno, da qualche parte, adesso ha un'opinione un po' migliore di me. In una città così chiassosa un complimento silenzioso si perde facilmente; io l'ho sentito.",
		"Un nome conta un po' di più di prima. Il mio, per una volta.",
		"Qui la stima cresce come le mura: una pietra trascinata alla volta. Un'altra è al suo posto.",
	},
	["org.rest_enter.w04.001"] = {
		"allenta una cinghia o due e lascia che il frastuono della città diventi qualcosa da ascoltare invece che da attraversare a spintoni.",
		"posa lo zaino contro un muro che, a giudicarlo, ha sorretto un gran numero di schiene stanche.",
		"si siede su un gradino lontano dal via vai, a guardare passare lupi e kodo senza doverli schivare.",
	},
	["org.rest_enter.w04.002"] = {
		"Dentro queste mura la guardia spetta ai grunt. I miei occhi possono finalmente chiudersi senza chiedere il permesso.",
		"Qui niente mano sull'elsa. Quel peso lo portano i grunt per tutti noi.",
		"Per una volta le mura sono un problema di qualcun altro. A me tocca solo starci dentro.",
	},
	["org.rest_enter.w04.003"] = {
		"Un soffitto basso, un fuoco fumoso, e una sala piena di gente troppo stanca per attaccare briga. La folla migliore.",
		"Finalmente sotto un tetto. Il fuoco scoppietta, lo stufato borbotta, e il rumore della strada passa dai muri come un ronzio.",
		"Qualcuno sta già russando in un angolo vicino al focolare. Lo prendo come una raccomandazione.",
	},
	["org.rest_enter.w04.004"] = {
		"si china sotto l'architrave basso, al riparo dal rumore, e lascia che l'odore di fumo e di stufato sistemi il resto della giornata.",
		"trova un posto con un muro alle spalle e un fuoco davanti, la vecchia disposizione di chi è stanco.",
		"si sistema al caldo, al chiuso, dove i muri sono abbastanza spessi da ridurre la città là fuori a una diceria e il fuoco all'unica notizia.",
	},
	["org.rest_enter.w04.005"] = {
		"Svegliatemi per il cibo o per la guerra. Per niente di meno.",
		"Se comincio a russare, fatemi rotolare sotto una panca.",
		"Le mie gambe e io siamo d'accordo: per un po' non andiamo da nessuna parte.",
	},
	["org.rest_enter.w04.006"] = {
		"Ogni strada che mi ha portato qui mi ronza ancora nelle gambe. Che ronzi pure. Non vado da nessuna parte.",
		"Mura, tamburi, un tetto lì vicino. Non mi serve tutta la città, solo un angolo che stia quieto, lontano dalla strada.",
	},
	["org.rest_enter.w04.007"] = {
		"La notte si posa sulle mura. Da qualche parte una guardia chiama e un'altra risponde, poi resta solo il crepitio dei fuochi delle torce.",
		"Notte dentro le mura. I fuochi delle forge brillano, i tamburi rallentano, e il mio cuore sembra rallentare con loro.",
	},
	["org.rest_enter.w04.008"] = {
		"lascia finalmente cadere le spalle, e un grunt di passaggio squadra quell'improvviso afflosciarsi con sospetto professionale.",
		"si siede così di peso che un lupo lì vicino apre un occhio per controllare, poi lo richiude per solidarietà.",
	},
	["org.thanks.w04.001"] = {
		"Grazie. In questa città nessuno regala niente, quindi so quanto ti è costato.",
		"Ti ringrazio. Me ne ricorderò la prossima volta che saremo tutti e due in fila alla banca.",
		"Grazie. Se mai ti serve una mano nel Drag, cercami.",
	},
	["org.thanks.w04.002"] = {
		"Hai la mia gratitudine, e quella dell'Orda, per quanto vale la mia parola.",
		"Grazie. La gentilezza sta bene dentro mura come queste.",
	},
	["org.travel.w04.001"] = {
		"A metà di un grido dal Drag, la città si richiude attorno alla pietra come un libro.",
		"Stringo la pietra e ascolto Orgrimmar ancora per un respiro: martelli, tamburi, un goblin che impreca. Poi niente.",
	},
	["org.weather_change.w04.001"] = {
		"guarda i lupi per strada sdraiarsi piatti e nascondere il muso sotto la coda mentre il vento solleva la sabbia.",
		"si ripara dietro un muro irto di punte mentre la sabbia rossa trabocca dall'orlo del canyon come acqua da una chiusa.",
		"alza il bavero mentre la sabbia entra dal portale in lunghe lingue sibilanti.",
	},
	["org.weather_change.w04.002"] = {
		"Sabbia fra i denti, sabbia negli stivali, sabbia anche nei registri della banca, probabilmente. Orgrimmar continua a urlare attraverso tutto questo.",
		"Il cielo sopra il canyon prende il colore della ruggine, e la sabbia comincia a volare. Da qualche parte un goblin sta già vendendo sciarpe.",
		"La città tira dentro la testa come una tartaruga; tutti continuano a lavorare, solo con gli occhi socchiusi contro la sabbia.",
	},
	["org.weather_change.w04.003"] = {
		"Coprite la bocca. La sabbia di Durotar sta entrando dal portale.",
		"Eccola che arriva. Qualcuno chiuda il canyon prima che la sabbia lo riempia.",
	},
	["org.weather_change.w04.004"] = {
		"alza gli occhi mentre l'aria si schiarisce, e la striscia di cielo fra le pareti del canyon diventa di un azzurro netto e duro.",
		"guarda la foschia sollevarsi dalla città, finché ogni punta sulle mura più lontane spicca nitida contro il cielo.",
		"vede i bottegai uscire da sotto le coperture mentre il cielo si rimette al bello, scuotendo i teli e brontolando.",
	},
	["org.weather_change.w04.005"] = {
		"L'aria si schiarisce. Un peone sta già spazzando via la polvere dai gradini della banca; ci tornerà la prossima volta che gira il vento.",
		"L'aria si fa ferma e pulita, e d'un tratto sento le forge a tre valli di distanza.",
	},
	["org.weather_change.w04.006"] = {
		"Pioggia a Orgrimmar. Tutti i grunt sulle mura alzano gli occhi insieme, come se qualcuno li avesse offesi.",
		"La pioggia batte sui tetti roventi, e tutta la città sa di pelle bagnata e di vapore.",
		"Piove! I peoni hanno smesso di lavorare per guardare la pioggia. Anch'io.",
	},
	["org.weather_change.w04.007"] = {
		"tende il palmo alla pioggia, e guarda le gocce scurire la polvere rossa della via in tante monete che si allargano.",
		"si mette sotto una tenda di pelle mentre scende la pioggia, e da qualche parte in città i tamburi esitano, poi riprendono.",
	},
	["org.weather_change.w04.008"] = {
		"Tuoni nel canyon! Sembra che le mura stiano litigando con la tempesta.",
		"Fulmini sull'orlo. Se fossi una viverna, con questa tempesta starei lontano dalle torri.",
	},
	["org.weather_change.w04.009"] = {
		"guarda la luce della tempesta tremolare lungo l'orlo del canyon, ogni lampo che proietta in strada il profilo irto delle mura.",
		"si ritira dalla strada aperta quando scoppia la tempesta, col vento che strappa le tende e sbatte le imposte mal chiuse.",
	},
	["org.weather_change.w04.010"] = {
		"Il cielo si è schiarito, e la sua striscia stretta sopra il canyon è affollata di stelle.",
		"Notte limpida. Le torce sulle mura sembrano piccole contro tutto quel cielo.",
		"L'aria si fa tagliente e limpida, e le stelle spuntano sull'orlo a una a una, come grunt che prendono posto.",
	},
]==])
