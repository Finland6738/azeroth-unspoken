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
	["org.muse.w17.canyon.001"] = {
		"La parete del canyon è a strisce come una pagnotta tagliata: rosso, rosso più scuro, una sottile linea chiara, di nuovo rosso. Ogni striscia un'età del mondo, deposta molto prima che qualcuno avesse un nome per lei.",
		"A guardarle bene le rupi sono a strati, una fascia sull'altra, come pelli impilate in una conceria. La roccia aveva una storia lunga prima che gli orchi le dessero quella corta.",
	},
	["org.muse.w17.canyon.002"] = {
		"In alto sulla rupe un solo cespuglio stentato spunta da una crepa, dove nessuno potrebbe mai annaffiarlo. Ha l'aria testarda quanto tutti quelli che stanno quaggiù.",
		"C'è un groviglio di rovo aggrappato alla parete del canyon, molto più su di dove arriva una mano. Si è scelto il terreno come gli orchi si sono scelti Durotar.",
	},
	["org.muse.w17.canyon.003"] = {
		"alza lo sguardo mentre un rivolo di sassolini scende lungo la parete del canyon e rimbalza su un tetto; nessun altro gira nemmeno la testa.",
		"sobbalza a un piccolo crepitio di sassi che cadono da qualche punto alto della rupe, e nota che intorno nessuno batte ciglio.",
		"nota una piccola cascata di ghiaino che scende da una sporgenza sopra la strada, e si sposta di un passo, come tutti intorno hanno già fatto senza pensarci.",
	},
	["org.muse.w17.canyon.004"] = {
		"Sulla roccia c'è una venatura scura da cui l'acqua trasuda goccia a goccia, e qualcuno ci ha messo sotto un secchio. A Durotar non si spreca niente.",
		"Una macchia umida sulla parete del canyon, verde di muschio ai bordi, e sotto una pentola di coccio che raccoglie quello che cade. Qualcuno viene a controllarla spesso, a giudicare dal sentiero.",
	},
	["org.muse.w17.canyon.005"] = {
		"Alcune stanze della città sono scavate dritte nella roccia. Ci entri e il caldo resta fuori, come un cane a cui hanno detto di aspettare.",
		"Il canyon il fresco se lo tiene dentro. Le stanze scavate nella rupe sembrano cantine, e il caldo aspetta sulla porta, imbronciato.",
	},
	["org.muse.w17.canyon.006"] = {
		"Dentro il canyon il resto di Durotar smette di esistere. Niente orizzonte, niente terreno aperto: solo roccia, e quello che la città ci ha appoggiato contro.",
		"Quaggiù tutto si ferma alle rupi. Dopo il paese rosso e aperto là fuori, c'è uno strano sollievo nel vedere dove stanno i bordi.",
		"Fuori, Durotar è tutto orizzonte. Qui dentro l'orizzonte è un muro, e scopro che non mi dispiace.",
	},
	["org.muse.w17.canyon.007"] = {
		"Un troll tra la folla giura che il canyon è il solco lasciato dalla coda di un vecchio loa. Gli orchi preferiscono dire che l'hanno trovato vuoto e se lo sono tenuto.",
		"Chiedi a un Darkspear come si è formato questo canyon e ti parlerà di un loa che andava di fretta. Chiedilo a un orco e alzerà le spalle: c'era, e l'hanno usato.",
	},
	["org.muse.w17.canyon.008"] = {
		"nota una lucertola spiaccicata su una sporgenza tiepida sopra la folla, immobile, l'unica creatura di Orgrimmar che non ha nessun posto dove andare.",
		"sorprende qualcosa di piccolo e squamoso che guarda la strada da una crepa della roccia, prima che decida che la città è troppo rumorosa e sparisca.",
		"scruta uno scarabeo che risale la parete del canyon con grande determinazione, per niente turbato dall'Orda intera che gli passa sotto.",
	},
	["org.muse.w17.canyon.009"] = {
		"I gradini tagliati nella roccia sono già consumati a conca. Una città giovane, e i suoi piedi hanno lavorato parecchio.",
		"Ogni scala scavata nel canyon si avvalla nel mezzo, lucidata da stivali, zoccoli e artigli. La pietra tiene il conto del traffico meglio di qualsiasi scrivano.",
	},
	["org.muse.w17.canyon.010"] = {
		"Di notte il canyon restituisce il caldo che ha messo da parte. Le pareti restano tiepide a lungo dopo che l'aria si è rinfrescata, come la pietra del focolare a fuoco spento.",
		"Quaggiù di notte l'aria si raffredda in fretta, ma la roccia no. Appoggiarsi a un muro è come appoggiarsi a un forno che qualcuno si è dimenticato.",
	},
	["org.muse.w17.canyon.011"] = {
		"strizza gli occhi verso una sporgenza alta sulla parete del canyon, dove un grosso nido disordinato pende sulla città come un rancore.",
		"segue con lo sguardo un rapace che si lascia cadere dalla sua sporgenza sulla parete del canyon e scivola sopra i tetti, incurante del chiasso.",
	},
	["org.muse.w17.canyon.012"] = {
		"Tutta questa città è in pendenza. Ti cade una moneta e rotola in discesa verso qualcuno più fortunato.",
		"Niente sta in piano, a Orgrimmar. Perfino i carri hanno bisogno di un peon dietro che tiri al contrario e imprechi.",
	},
	["org.muse.w17.canyon.013"] = {
		"Guarda quella rupe. Stava lì prima che a qualcuno venisse in mente di piantarci uno spuntone.",
		"Questo canyon è più vecchio di tutte le liti della città messe insieme. Strano conforto.",
	},
	["org.muse.w17.canyon.014"] = {
		"La sabbia scende dal ciglio come farina dal tavolo di un fornaio. Il canyon si prende il peggio; fuori, in piena Durotar, ti scorticherebbe.",
		"La sabbia scavalca il bordo del canyon in veli sottili e chiari e si posa su tutto. Il resto lo fermano le mura, che servono proprio a questo.",
	},
	["org.muse.w17.canyon.015"] = {
		"segue una goccia di pioggia che si raccoglie sulla punta di uno spuntone, resta sospesa e cade; lungo tutto il muro gli spuntoni gocciolano a turno.",
		"nota che la pioggia ha trovato ogni spuntone del muro e ci ha appeso una perla d'acqua, una fila di piccole lanterne.",
	},
	["org.muse.w17.canyon.016"] = {
		"Una tempesta sopra il canyon, e io riesco solo a pensare a quanti spuntoni di ferro questa città tiene puntati verso il cielo.",
		"Lampi oltre il ciglio. La città è irta di punte di ferro, e per una volta preferirei che non ci fossero.",
	},
	["org.muse.w17.canyon.017"] = {
		"socchiude gli occhi nel riverbero della roccia rossa, come se il canyon stesso ricambiasse lo sguardo.",
		"tira avanti il cappuccio contro la luce che rimbalza su ogni parete, finché la strada sembra illuminata dal basso.",
	},
	["org.muse.w17.canyon.018"] = {
		"Roccia rossa sotto gli stivali, e nessuno steccato intorno. Non il vecchio mondo, non i campi. Nostra, ogni sasso duro.",
		"Il mio popolo ha vissuto su terra prestata e dietro le sbarre degli altri. Questo canyon è la prima pietra che risponde a noi.",
	},
	["org.muse.w17.cleft.001"] = {
		"La luce arriva tardi nella Cleft of Shadow e se ne va presto, come un ospite che sa che mestiere fanno i padroni di casa.",
		"La luce, nella Cleft of Shadow, non si trattiene mai a lungo. Dà un'occhiata, vede chi c'è, e trova un posto migliore dove stare.",
		"Perfino le torce della Cleft of Shadow ardono basse, come se qualcuno avesse chiesto loro di parlare piano.",
	},
	["org.muse.w17.cleft.002"] = {
		"Qualcuno, nella Cleft of Shadow, vende il veleno a fiale e l'antidoto a bottiglie. Non ho mai visto i due prezzi sulla stessa tavola.",
		"Veleni a un banco, rimedi a quello accanto, e dietro tutti e due, giurerei, le stesse mani. La Cleft ha la testa per gli affari.",
		"Nella Cleft il veleno si paga subito, l'antidoto quando puoi. Sanno che i soldi li troverai.",
	},
	["org.muse.w17.cleft.003"] = {
		"Nella Cleft of Shadow si addestrano i ladri, e a guardarla non lo diresti mai. Immagino che la lezione sia proprio questa.",
		"Gli addestratori dei ladri, nella Cleft, sono qui intorno, ne sono {g:sicuro|sicura}. Solo che non ne ho ancora visto uno, ed è proprio questo il loro mestiere.",
	},
	["org.muse.w17.cleft.004"] = {
		"Una volta gli orchi bevvero il sangue dei demoni, e giurarono: mai più. Giù nella Cleft gli stregoni tengono i demoni al guinzaglio, e giurano di essere loro a reggerlo.",
		"Un popolo che per i patti coi demoni ha rischiato di bruciare, e ancora gli stregoni della Cleft li evocano. Con prudenza, dicono. Hanno sempre detto con prudenza.",
		"Gli stregoni girano per la Cleft con i demoni alle calcagna, e ogni orco abbastanza vecchio da ricordare il sangue rivolge loro la stessa lunga occhiata.",
	},
	["org.muse.w17.cleft.005"] = {
		"La Burning Blade si è rintanata nell'abisso sotto la Cleft per tenere acceso il vecchio fuoco. La città continua i suoi affari un piano più su, e tiene d'occhio le scale.",
		"Cultisti della Burning Blade sotto la città, ancora innamorati del fuoco che per poco non divorò gli orchi. Certi debiti si riscuotono ancora, poco sotto il livello della strada.",
		"Sotto la Cleft la Burning Blade intona ancora i suoi canti ai vecchi padroni. Il resto di Orgrimmar dorme tranquillo, più o meno.",
	},
	["org.muse.w17.cleft.006"] = {
		"Un grunt dice che sotto la Cleft scavano i trogg. Se qualcosa gratta sotto i miei stivali, prima scappo e poi chiedo.",
		"Trogg sotto la città, mi dicono. Magnifico. Adesso ogni sassolino che rotola mi sembra un artiglio.",
	},
	["org.muse.w17.cleft.007"] = {
		"abbassa la voce senza deciderlo, mentre le pareti della Cleft of Shadow si stringono ai due lati.",
		"si accorge di parlare più piano scendendo nella Cleft, come se la pietra prendesse appunti.",
	},
	["org.muse.w17.cleft.008"] = {
		"si fa da parte per lasciar passare una figura incappucciata nella strettoia della Cleft; la tunica sa di zolfo e di carta vecchia.",
		"si schiaccia contro la roccia mentre uno stregone incappucciato passa di gran carriera, lasciandosi dietro un odore di zolfo e di cera di candela.",
	},
	["org.muse.w17.cleft.009"] = {
		"Un voidwalker scivola dietro al suo stregone attraverso la Cleft, senza portare niente, senza dire niente, lasciando una chiazza di freddo dove è passato.",
		"I voidwalker della Cleft non hanno volti da leggere. Seguono i padroni come ombre staccatesi, e l'aria si raffredda al loro passaggio.",
		"Un voidwalker aspetta fuori da una porta della Cleft come un cane paziente fatto di fumo e di lividi.",
	},
	["org.muse.w17.cleft.010"] = {
		"Se qualcosa giù nella Cleft mi propone un affare, la risposta è no. Lo dirò prima che finisca la frase.",
		"Promemoria: nella Cleft of Shadow non annuire a niente, non firmare niente, e non comprare niente che sussurra.",
	},
	["org.muse.w17.cleft.011"] = {
		"Chi ha illuminato la Cleft of Shadow ci ha messo giusto le torce indispensabili. Neanche una di più.",
		"Qualcuno risparmia sulle torce, giù nella Cleft. Sarà per l'atmosfera, di sicuro.",
		"Mi sono {g:portato|portata} una torcia nella Cleft. Quelli del posto mi hanno guardato come se avessi portato un tamburo a un funerale.",
	},
	["org.muse.w17.cleft.012"] = {
		"Gli orchi che per primi si volsero alla magia degli stregoni ci persero un mondo intero. Nella Cleft alcuni dei loro nipoti la studiano di nuovo, con grande cautela, e con la porta socchiusa.",
		"Un mondo intero, dicono gli anziani, è andato perduto per la magia degli stregoni. La Cleft tiene vivo il mestiere lo stesso, come si tiene un lupo: nutrito, incatenato, sorvegliato.",
	},
	["org.muse.w17.cleft.013"] = {
		"Il suono entra nella Cleft e non ne esce. Qualunque cosa si dica laggiù, la roccia se la tiene, come un usuraio che non rivende mai.",
		"La Cleft inghiotte i rumori. Una moneta caduta, un'imprecazione, un passo: la pietra se li prende uno per uno e non restituisce niente.",
		"Giù nella Cleft perfino i miei passi sembrano custodire un segreto.",
	},
	["org.muse.w17.cleft.014"] = {
		"In fondo alla Cleft un goblin e un orco incappucciato parlano a voce bassissima. A Orgrimmar il silenzio è il suono più sospetto che esista.",
		"Due figure nella Cleft parlano sottovoce. Altrove sarebbe educazione. In questa città è quasi una confessione.",
		"Nella Cleft più le voci sono basse, più l'affare è grosso. Qualcuno là in fondo sta comprando qualcosa di enorme.",
	},
	["org.muse.w17.cleft.015"] = {
		"Dalla discesa verso Ragefire Chasm sale aria calda che sa di zolfo e di pietra rovente. Sembra che la roccia stessa abbia la febbre.",
		"Vicino all'imbocco di Ragefire Chasm la pietra è tiepida al tatto, come se dall'altra parte dormisse qualcosa di grosso, con la schiena appoggiata.",
		"La discesa verso Ragefire Chasm odora di una forgia che nessuno sorveglia. Il calore sale lungo la pietra a ondate lente e irregolari.",
	},
	["org.muse.w17.cleft.016"] = {
		"Qui nella Cleft of Shadow nessuno ti chiede come ti chiami, e sarebbe scortese dirlo.",
		"I nomi, nella Cleft of Shadow, non si scambiano. Le facce, a malapena.",
		"Nessuno, nella Cleft of Shadow, guarda nessuno dritto in faccia. È considerata buona educazione, e buon senso.",
	},
	["org.muse.w17.cleft.017"] = {
		"Le pareti, qui, sono così vicine che le tocco da tutti e due i lati, e ho l'impressione che tutti e due i lati ascoltino.",
		"Roccia a sinistra, roccia a destra, e ogni pochi passi una soglia con qualcuno che finge di non vedermi.",
	},
	["org.muse.w17.cleft.018"] = {
		"Ho chiesto la strada tre volte, nella Cleft, e ho avuto tre risposte. Tutte gentilissime. Tutte diverse.",
		"Chiedi la strada nella Cleft e te la indicano, con calore e leggermente sbagliata. Credo sia una specie di prova.",
	},
	["org.muse.w17.cleft.019"] = {
		"Di tutta Orgrimmar, la Cleft of Shadow è il posto che mi spaventa meno. Laggiù sono tutti estranei con qualcosa da nascondere, e mi confondo benissimo.",
		"Strana consolazione: nella Cleft nessuno guarda due volte una faccia sconosciuta. Laggiù ce l'hanno tutti.",
		"Se un grunt deve fermarmi da qualche parte a Orgrimmar, che sia nella Cleft. Laggiù fanno meno domande e si aspettano risposte peggiori.",
	},
	["org.muse.w17.cleft.020"] = {
		"guarda giù per il pendio buio verso Ragefire Chasm, dove un bagliore rosso e sordo cresce e svanisce come qualcosa che si rigira nel sonno.",
		"si attarda in cima alla discesa verso Ragefire Chasm, osservando una luce rossa che va e viene sulla roccia di sotto.",
		"sente sul viso il calore che sale dalla discesa verso Ragefire Chasm, e si allontana dal bordo.",
	},
	["org.muse.w17.cleft.021"] = {
		"Chiunque sia il padrone del vilsegugio che mi annusa gli stivali: bestia deliziosa. Richiamala.",
		"Quel vilsegugio mi segue dal fondo della Cleft. Vuole qualcosa, o vuole me?",
	},
	["org.muse.w17.crowd.001"] = {
		"A Orgrimmar si cammina di spalla e non si chiede mai scusa. Ci ho messo un po' a impararlo. Adesso lo faccio senza pensarci, e a nessuno dà fastidio.",
		"Il trucco, in queste strade, è andare avanti di spalla con gli occhi dritti davanti. Chi chiede scusa, per la folla, o è debole o non sa dove va.",
	},
	["org.muse.w17.crowd.002"] = {
		"Qui la folla ha tre altezze: corna di tauren in alto, spalle d'orco nel mezzo, e goblin all'altezza della cintura, che imprecano.",
		"Guardo la calca e vedo corna, poi spalle, poi un varco dove qualcosa di basso e rumoroso si fa largo all'altezza delle ginocchia. Sarà un goblin.",
		"Da dove sto io la folla è un paesaggio: corna per vette, spalle per colline, e giù nelle valli un goblin che sgomita contro gli stinchi.",
	},
	["org.muse.w17.crowd.003"] = {
		"viene {g:trascinato|trascinata} dalla folla per una dozzina di passi nella direzione sbagliata prima di riuscire a girarsi, e ricomincia con un sospiro.",
		"si ritrova in mezzo a una calca, rinuncia per un momento a opporsi e lascia decidere alla corrente.",
	},
	["org.muse.w17.crowd.004"] = {
		"Ho imparato una dozzina di parole della lingua troll solo stando in mezzo a questa folla. Metà farei bene a non usarle mai davanti a un troll.",
		"La folla insegna le lingue gratis. Adesso so dire «spostati» in orchesco, in taur-ahe e nella lingua dei troll, più tre cose molto meno educate.",
		"Ogni lite in questa calca è una lezione di una lingua che non avevo chiesto di imparare. Le mie imprecazioni in orchesco migliorano a vista d'occhio.",
	},
	["org.muse.w17.crowd.005"] = {
		"Gomiti in fuori, allora. A quanto pare è l'usanza del posto.",
		"Si va di gomito, mi dicono. Paese che vai, usanza che trovi.",
	},
	["org.muse.w17.crowd.006"] = {
		"In una folla così fitta tengo una mano sulla borsa. Qui nessuno è un ladro, si capisce. È la mia borsa che non lo sa.",
		"Mano sulla borsa, occhi avanti. Io della gente di Orgrimmar mi fido; è la borsa a essere di carattere nervoso.",
		"Ogni volta che la ressa si stringe, la mia mano trova la borsa da sola. Non che sospetti di qualcuno. È la mano che di folle ne ha già viste.",
	},
	["org.muse.w17.crowd.007"] = {
		"Un Reietto se ne sta perfettamente immobile ai margini della folla, a guardare. Di tutta Orgrimmar, i morti sembrano gli unici a non avere nessuna fretta.",
		"La folla gira intorno a un Reietto che si è semplicemente fermato a guardare qualcosa. Nessuno lo urta. La gente aggira quell'immobilità come se fosse una colonna.",
	},
	["org.muse.w17.crowd.008"] = {
		"Attraversando la folla colgo una parola di ogni vita: un debito, un cucciolo appena nato, una lite con un fratello, un lupo azzoppato. Cento storie, e nessuna è la mia.",
		"Pezzi delle giornate degli altri mi passano accanto nella calca: un matrimonio la settimana prossima, uno zio malato, un fabbro che ha imbrogliato qualcuno. Me li porto dietro per qualche passo, poi li lascio andare.",
		"La folla mi lascia addosso le sue storie come polvere: mezza lamentela, mezza battuta, un nome chiamato a voce alta e mai risposto. Non ne tengo nessuna.",
	},
	["org.muse.w17.crowd.009"] = {
		"Quando perdo l'orientamento nella folla mi regolo sul tauren più vicino. Spunta sopra tutti come una collina, e si muove più o meno con la stessa velocità.",
		"Un tauren in mezzo alla calca vale più di un cartello. Tieni gli occhi sulle corna e segui: prima o poi arriverai da qualche parte, con calma.",
	},
	["org.muse.w17.crowd.010"] = {
		"In questa folla tutti camminano come se fossero in ritardo per qualcosa d'importante. Vorrei che qualcuno mi dicesse per cosa.",
		"Tanta gente con tanta fretta. In città ci dev'essere un appuntamento importantissimo, e a me nessuno ha mandato l'invito.",
		"Dove corrono tutti quanti? Se si mangia gratis, ci sto anch'io.",
	},
	["org.muse.w17.crowd.011"] = {
		"Gli orchi marciano, i troll avanzano a lunghe falcate dondolanti, i tauren fanno un passo per ogni tre di un goblin, e i Reietti si muovono come se avessero già contato ogni pietra. La folla tiene una dozzina di ritmi insieme.",
		"Guarda i piedi in questa folla e riconosci i popoli senza alzare gli occhi: il passo lungo e dondolante dei troll, quello pesante degli orchi, il calpestio lento degli zoccoli.",
	},
	["org.muse.w17.crowd.012"] = {
		"Tutti i popoli dell'Orda in un'unica calca, che spingono e imprecano in cinque lingue, e nessuno mette mano alle armi. Non molto tempo fa una cosa così l'avrebbero chiamata battaglia.",
		"Spalla a spalla con tutti i popoli dell'Orda, e il mio gomito nelle costole di un tauren. Nessuno se la prende. Ecco com'è, da vicino, stare dalla stessa parte.",
	},
	["org.muse.w17.crowd.013"] = {
		"Qui la folla è il mantello migliore che ho. Finché tutti sono occupati a spingere, nessuno si ferma a chiedersi che cosa sono.",
		"Resto nel punto più fitto della calca. In una ressa così nessuno guarda le facce, solo i gomiti.",
	},
	["org.muse.w17.crowd.014"] = {
		"Un altro tallone pestato e comincio a farmi pagare a passo.",
		"Qualcuno mi sta pestando il piede da un bel pezzo. Puoi spostarti quando vuoi. Davvero, quando vuoi.",
		"Di chi è lo zoccolo sulle mie dita? Fai pure con calma. Non le stavo usando.",
	},
	["org.muse.w17.crowd.015"] = {
		"si accovaccia per aiutare un goblin a raccogliere bulloni e rondelle sparsi fra i piedi della gente, e riceve in cambio una lunga occhiata sospettosa.",
		"si china a raccogliere una manciata di chiodi caduti a un mercante goblin, che se li riprende, controlla se nella folla ci sono complici e solo allora borbotta un grazie.",
	},
	["org.muse.w17.crowd.016"] = {
		"si abbassa insieme a tutti gli altri quando un peone con una lunga asse si gira per rispondere a qualcuno, e l'intero cerchio di folla si china nello stesso istante, come se l'avessero provato.",
		"abbassa la testa a tempo con una dozzina di altri mentre una trave passa girando sopra la folla, e chi la porta non si accorge di niente.",
	},
	["org.muse.w17.crowd.017"] = {
		"Sentita da un po' più in là, la folla sembra la risacca sulla costa di Durotar: nessuna voce sua, solo il lungo boato di tutti insieme.",
		"Fai un passo indietro dalla calca e le voci si fondono in un solo suono, che sale e scende come il mare contro gli scogli di Durotar.",
	},
	["org.muse.w17.crowd.018"] = {
		"viene {g:superato|superata} da una troll che porta in equilibrio sulla testa una cesta di pesce, e attraversa tutta la folla senza mai alzare una mano per tenerla.",
		"guarda una troll scivolare nella calca con una cesta pesante sulla testa, ferma come una lanterna appesa al gancio.",
	},
	["org.muse.w17.crowd.019"] = {
		"Svuota le strade e Orgrimmar sarebbe solo una fortezza in fondo a un canyon. È la folla, che spinge, contratta e litiga, a farne una città.",
		"Le mura fanno una roccaforte. Per farne una città serve questa calca che spinge e urla.",
		"Senza la ressa della gente, questo sarebbe pietra e ferro e niente di più. La folla è la malta che nessun muratore ha steso.",
	},
	["org.muse.w17.crowd.020"] = {
		"Se tutta questa folla smettesse di parlare nello stesso istante, credo che le mura cadrebbero per lo spavento.",
		"Immagina questa gente che tace tutta insieme. Il canyon penserebbe di essere diventato sordo.",
	},
	["org.muse.w17.crowd.021"] = {
		"guarda la folla correre verso la tettoia più vicina alle prime gocce grosse, e poi restare lì pigiata a ridere della stranezza della pioggia.",
		"si ripara sotto una tenda che cede insieme a una mezza dozzina di sconosciuti mentre viene giù la pioggia, e li sente concordare tutti che qui non piove mai.",
	},
	["org.muse.w17.crowd.022"] = {
		"posa lo zaino per un momento sotto un tetto, lontano dalla ressa, e ascolta il commercio della città che continua oltre la porta.",
		"si concede un momento lontano dalla calca, al chiuso, e lascia che il rumore della folla diventi una cosa che succede agli altri.",
	},
	["org.muse.w17.crowd.023"] = {
		"riceve spintoni da tre lati insieme e semplicemente si ferma, lasciando che la folla si risistemi da sola tutt'intorno.",
		"si prende tre gomitate di fila, sospira, e decide di aspettare un varco che non arriva mai.",
	},
	["org.muse.w17.crowd.024"] = {
		"cede il passo a una madre tauren che guida tre vitelli attraverso la calca in una piccola fila solenne.",
		"sorride senza volerlo mentre una fila di piccoli tauren segue la madre nella folla, ognuno attaccato alla coda di quello davanti.",
	},
	["org.muse.w17.drag.001"] = {
		"Qui nel Drag riconosci i tintori dall'altra parte della strada: blu fino al gomito, e per niente dispiaciuti.",
		"I tintori del Drag portano il mestiere sulle braccia, macchiate fino al gomito. Uno mi saluta con una mano del colore dell'acqua profonda.",
	},
	["org.muse.w17.drag.002"] = {
		"si ferma accanto a un conciatore che raschia una pelle tesa con passate lunghe e regolari, un suono costante come una scopa sulla pietra.",
		"resta un momento a guardare una pelle che viene raschiata sul telaio, una passata paziente dopo l'altra.",
		"indugia accanto al telaio di un conciatore, dove una pelle viene lisciata con un raschietto smussato e senza la minima fretta.",
	},
	["org.muse.w17.drag.003"] = {
		"Metà delle botteghe lungo il Drag appende un disegno invece di una parola: un'incudine, un ago, una fiaschetta. Un'insegna che chiunque sa leggere, qualunque lingua parli.",
		"Sopra quasi tutte le porte del Drag, nessuna scritta: un martello dipinto, un rocchetto, una bottiglia. Orco, troll o tauren, lo leggono tutti allo stesso modo.",
		"Le insegne del Drag sono disegni, non scritte. Uno stivale vuol dire stivali, una pentola vuol dire stufato, e nessuno deve discutere di ortografia.",
	},
	["org.muse.w17.drag.004"] = {
		"Prima regola del Drag: se lo prendi in mano, hai già cominciato a trattare.",
		"Qui non toccare niente, a meno che tu non voglia discuterne. Nel Drag una mano sulla merce è già un'offerta.",
	},
	["org.muse.w17.drag.005"] = {
		"Un apprendista alchimista risale la strada di corsa reggendo una fiaschetta incrinata a braccio teso, e tutto il Drag si scansa senza che nessuno lo chieda.",
		"Un ragazzo di una delle botteghe di pozioni passa correndo con qualcosa che frigge in una fiaschetta, tenuta il più lontano possibile dalla faccia. Non serve dire a nessuno di fargli strada.",
		"Qualcosa fuma in una fiaschetta incrinata, nella mano tesa di un apprendista. Non ho mai visto questa strada svuotarsi così in fretta.",
	},
	["org.muse.w17.drag.006"] = {
		"Una cuoca del Drag giura che la sua pentola di stufato non è mai stata vuota da quando hanno alzato le mura. Continua solo ad aggiungere. Non chiedo cosa ci sia sul fondo.",
		"Nel Drag c'è uno stufato che, a sentire il cuoco, sobbolle dalla fondazione della città: rabboccato ogni giorno, mai svuotato. Sa di storia, e un po' di stivale.",
	},
	["org.muse.w17.drag.007"] = {
		"passa una mano su una rastrelliera di cinture e cinghie finite, appese fuori da una bottega, e le fibbie tintinnano come campanelli.",
		"sfiora una fila di finimenti appesi alla porta di una bottega, e una dozzina di fibbie sbattono fra loro con un suono di monete sciolte.",
	},
	["org.muse.w17.drag.008"] = {
		"Potrei percorrere il Drag a occhi chiusi e sapere comunque dove mi trovo: il raschiare di una lima, un mazzuolo che batte sul cuoio, il ferro che sibila nella tempra, un venditore d'aghi che ripete sempre le stesse tre parole.",
		"Ogni bottega del Drag ha il suo rumore. Il graffio di una lima, un mazzuolo sul cuoio bagnato, il sibilo del ferro rovente immerso nel barile. Anche con una benda sugli occhi, ritroverei la strada a orecchio.",
	},
	["org.muse.w17.drag.009"] = {
		"Il garzone di un fabbro spazza la limatura di ferro in un secchio e la rivende al fabbro a peso. Quello lì un giorno si comprerà mezzo Drag.",
		"Ho visto un apprendista raccogliere la limatura dal pavimento di una forgia e farla pagare al suo stesso maestro. E il fabbro ha pagato, con l'aria fiera.",
	},
	["org.muse.w17.drag.010"] = {
		"Sulla soglia di una bottega del Drag un vecchio orco lavora con un martello il cui manico ha preso la forma della sua presa. Venderebbe la bottega, piuttosto che quel martello.",
		"Lungo il Drag c'è un vecchio fabbro col manico del martello lucido e scuro, incavato dove vanno le dita. Gli attrezzi durano più dei maestri, dice lui, se i maestri ci stanno attenti.",
		"Un vecchio artigiano del Drag usa lo stesso martello da così tanto che il legno ha preso l'impronta della sua mano. Dice che è l'unico socio che non l'abbia mai imbrogliato.",
	},
	["org.muse.w17.drag.011"] = {
		"In una porta lungo il Drag pendono a seccare mazzi di erbe raccolte sulle colline di Durotar, e per qualche passo l'aria sa di verde, come se fosse tutto un altro posto.",
		"Un erborista del Drag ha appeso a seccare le sue erbe argentate, di traverso sulla porta. Passarci davanti è come intravedere un prato in mezzo a tutto questo ferro.",
	},
	["org.muse.w17.drag.012"] = {
		"Senti? Qualcuno nel Drag sta cercando di raddrizzare un'ammaccatura a martellate, e l'ammaccatura sta vincendo.",
		"Quel clangore giù per il Drag va avanti da un pezzo. Qualunque cosa stia combattendo il fabbro, per ora è in vantaggio lei.",
	},
	["org.muse.w17.drag.013"] = {
		"Certi conciatori del Drag trattano ancora le pelli alla vecchia maniera, col fumo e con la pazienza, come facevano i clan prima dei campi. I giovani alzano gli occhi al cielo, e non si perdono una mossa.",
		"Un vecchio conciatore del Drag lavora le pelli come faceva il suo clan prima dei campi. Dice che i giovani hanno mani svelte e memoria corta. Ma insegna lo stesso.",
		"Pelli affumicate, lavorate con la lentezza che i clan conoscevano prima dei campi d'internamento. Qualche vecchio conciatore ha tenuto vivo il mestiere nella testa, per tutti quegli anni dietro i recinti.",
	},
	["org.muse.w17.drag.014"] = {
		"Qui un sarto sta prendendo le misure a un tauren per un mantello, in piedi su una cassa, borbottando numeri. Il tauren sta immobile, paziente come una rupe.",
		"In una bottega del Drag un sarto sale su uno sgabello per far passare la cordicella intorno alle spalle di un tauren, poi scende e ne chiede una più lunga.",
	},
	["org.muse.w17.drag.015"] = {
		"guarda le scintille schizzare da una mola dove un grunt si fa rifare il filo dell'ascia, la ruota che geme sotto l'acciaio.",
		"si ferma accanto a una mola che morde un'ascia, e si tira indietro davanti al ventaglio di scintille arancioni.",
		"aspetta che passi una cascata di scintille da una mola, dove un'ascia riprende il suo filo un giro dopo l'altro.",
	},
	["org.muse.w17.drag.016"] = {
		"Le botteghe del Drag appendono fuori la merce buona e tengono quella migliore sul retro, per chi ha l'idea di chiederla. Quasi nessuno ci pensa.",
		"Quello che pende fuori da una bottega del Drag è l'esca. Il lavoro vero sta sotto il banco, avvolto in un panno, in attesa di qualcuno che sappia fare la domanda giusta.",
	},
	["org.muse.w17.drag.017"] = {
		"Chi vende in questa città del filo che non si spezza? Lo chiedo per conto dei miei calzoni.",
		"Mi serve un sarto, in fretta, e uno che non rida. In quest'ordine.",
		"Indicatemi l'ago e il filo più vicini. E nessuno guardi in basso.",
	},
	["org.muse.w17.drag.018"] = {
		"Gli artigiani qui mangiano al banco di lavoro, un tozzo di pane in una mano e il lavoro nell'altra. Nel Drag un pasto è una cosa che si fa fra un punto e l'altro.",
		"Nel Drag nessuno si ferma a mangiare. Masticano chini sul lavoro, con le briciole che cadono sul cuoio, e si puliscono le dita sul grembiule.",
	},
	["org.muse.w17.drag.019"] = {
		"Metà delle botteghe lungo il Drag tiene un vecchio lupo che sonnecchia di traverso sulla soglia. Costa meno di una serratura, e si corrompe solo con la carne.",
		"I bottegai del Drag non si fidano granché delle serrature. Si fidano del lupo dal muso grigio sdraiato sulla porta, con un occhio socchiuso.",
		"Una porta sì e una no, nel Drag, c'è un lupo addormentato di traverso. Scavalcalo con educazione. Il vero padrone della bottega è lui, e lo sa.",
	},
	["org.muse.w17.drag.020"] = {
		"Chiedi a tre persone perché si chiami il Drag e avrai tre risposte. Per come serpeggia, dice un grunt. Per come ti trascina via i soldi, dice un goblin. Il conciatore indica soltanto una pelle che qualcuno sta trascinando per terra.",
		"Sul nome nessuno è d'accordo. Un peone giura che il Drag si chiama così per i tronchi trascinati lungo la via quando la città era giovane; un mercante giura che si chiama così per quello che fa alle borse.",
	},
	["org.muse.w17.drag.021"] = {
		"Il tuono rotola giù per il canyon e tutti i mercanti della città ritirano la merce nello stesso momento. Per un attimo, all'aperto, restano solo le forge e io.",
		"La tempesta schiocca sopra le mura, e una bancarella dopo l'altra si richiude come una mano. I fabbri non alzano nemmeno la testa.",
	},
	["org.muse.w17.drag.022"] = {
		"si ferma davanti a una bottega aperta dove un pellettiere fora una cintura, un colpo secco dopo l'altro, e si sorprende a contarli.",
		"guarda una lesina attraversare il cuoio spesso con un colpetto secco, e poi un altro e un altro, finché la cintura non ha buchi abbastanza per qualunque vita della città.",
	},
	["org.muse.w17.drag.023"] = {
		"si tura il naso passando accanto alle vasche dei conciatori, come fanno quasi tutti, mentre i conciatori guardano senza scomporsi.",
		"passa in fretta davanti alla porta di una conceria con una manica sulla faccia, e sente un vecchio conciatore ridacchiare alle sue spalle.",
	},
	["org.muse.w17.folk.001"] = {
		"osserva due grunt che si danno il cambio a un posto di guardia: un cenno, una parola troppo bassa per sentirla, e quello che smonta fa scrocchiare il collo.",
		"nota un grunt che passa il turno a un altro con un solo grugnito e un colpo di mento. A quanto pare basta e avanza.",
		"vede un grunt fresco prendere il posto di uno stanco, che però si attarda a indicare qualcosa più in là, poi alza le spalle e se ne va.",
	},
	["org.muse.w17.folk.002"] = {
		"guarda un grunt che mangia in servizio, la ciotola in un pugno e l'ascia nell'altro, senza staccare gli occhi dalla folla, masticando come se anche quello facesse parte del turno.",
		"segue con una certa ammirazione un grunt che finisce una ciotola intera di stufato senza guardarla nemmeno una volta.",
	},
	["org.muse.w17.folk.003"] = {
		"Un piccolo orco sta di guardia a una porta con un bastone al posto dell'ascia e chiede a tutti la parola d'ordine. I grunt gliela danno, serissimi, e lui li lascia passare.",
		"Una bambina si è nominata guardia della porta di una capanna e pretende la parola d'ordine da chiunque passi. Un grunt vero gliel'ha appena mormorata. Approvata.",
		"Un bambino con un bastone difende una porta contro tutta la città. Senza parola d'ordine non passa nessuno, e i grunt stanno al gioco senza un sorriso.",
	},
	["org.muse.w17.folk.004"] = {
		"guarda un addestratore di lupi che porta una fila di bestie tra la folla, parlando loro piano e senza fretta, gli avambracci segnati da vecchi morsi.",
		"gira intorno a un'addestratrice che si è fermata a grattare un suo lupo dietro le orecchie; le cicatrici sulle braccia dicono che non è sempre andata così liscia.",
	},
	["org.muse.w17.folk.005"] = {
		"Un tauren appena arrivato da Mulgore fissa le mura come si fisserebbe una rupe che qualcuno ha costruito apposta.",
		"I tauren che vengono dalle praterie si riconoscono subito: continuano a guardare in su, come se la città potesse cadergli addosso, con educazione.",
		"La gente delle praterie si ferma sempre almeno una volta a fissare tutta questa pietra. A Mulgore le colline ci sono, ma nessuno ci ha mai inchiodato sopra del ferro.",
	},
	["org.muse.w17.folk.006"] = {
		"In città le notizie le portano i messaggeri, quasi sempre ragazzi, che sgusciano tra le gambe con un pezzo di pelle piegato nel pugno. Metà degli affari di Orgrimmar viaggia alla loro velocità.",
		"Un messaggero per poco non mi butta a terra, grida qualcosa che forse era una scusa, e sparisce verso le valli più lontane. Il messaggio di qualcuno ha fretta.",
		"Qui le notizie vanno a piedi: ragazzi svelti che corrono da una valle all'altra, e non camminano mai se possono scattare.",
	},
	["org.muse.w17.folk.007"] = {
		"Forza alla guardia. Non scomodarti.",
		"Tu tieni il portale, grunt. Io mi tengo fuori dai guai. Più o meno.",
		"Buon turno. C'è qualcosa che dovrei sapere prima di andare a fare una sciocchezza?",
	},
	["org.muse.w17.folk.008"] = {
		"Un vecchio orco con una mano sola siede contro un muro e racconta una battaglia a chiunque rallenti. Al terzo ascoltatore i nemici sono già raddoppiati.",
		"Lungo la strada c'è un veterano con una mano sola che racconta la sua guerra ai bambini di passaggio. Loro lo correggono sui dettagli. Lui li lascia fare.",
	},
	["org.muse.w17.folk.009"] = {
		"si scosta per far passare un'orchessa che porta una pentola fumante verso il portale, dove i grunt di guardia si raddrizzano appena ne sentono l'odore.",
		"guarda una cuoca portare una pentola di stufato ai grunt di guardia, che smettono di fare paura giusto il tempo di mangiare.",
	},
	["org.muse.w17.folk.010"] = {
		"Basta un'ora a Orgrimmar e si vede che attacca: la voce si alza, i gomiti si allargano, il passo somiglia un po' di più a quello di un grunt.",
		"I viaggiatori entrano dal portale parlando piano ed escono gridando. Questa lezione la città la dà gratis.",
		"Un'ora in questa città e anche chi borbotta comincia a sbraitare. Lo sento succedere anche a me.",
	},
	["org.muse.w17.folk.011"] = {
		"passa accanto a tre peon che si dividono una panca e un solo otre d'acqua, brontolando del sorvegliante in perfetto accordo.",
		"sguscia oltre una fila di peon a riposo, spalle contro un muro e piedi contro l'altro, che si passano le lamentele lungo la fila come una pipa.",
	},
	["org.muse.w17.folk.012"] = {
		"Fuori servizio i grunt sono un'altra gente: armatura slacciata, risate, braccio di ferro su un barile rovesciato. Si rimettono di guardia, e la faccia si chiude come un portone.",
		"Un grunt con una faccia da rupe ride così forte a un tavolo che il tavolo va tenuto fermo. Fuori servizio, a quanto pare, è permesso.",
	},
	["org.muse.w17.folk.013"] = {
		"Piano, piccolo. Anche quel lupo ha avuto una giornata lunga.",
		"Occhio a dove corri, piccolo guerriero. I grunt non si spostano: rimbalzi.",
	},
	["org.muse.w17.folk.014"] = {
		"si fa da parte per una madre orchessa che attraversa con un neonato su un fianco e un sacco di ferro sull'altro, e non rallenta per nessuno.",
		"rallenta a guardare una donna con un bambino legato sulla schiena che spacca legna davanti alla porta, un colpo netto dopo l'altro, mentre il piccolo dorme per tutto il tempo.",
	},
	["org.muse.w17.folk.015"] = {
		"vede un grunt raccogliere un bambino caduto, rimetterlo in piedi e proseguire, senza perdere il passo né cambiare faccia.",
		"nota un bambino che inciampa davanti a una pattuglia; il grunt più vicino lo tira su per il colletto e la pattuglia non perde un passo.",
	},
	["org.muse.w17.folk.016"] = {
		"I Reietti che scendono a Orgrimmar tengono il cappuccio alzato e gli affari brevi. Il chiasso pare strano a loro quanto loro sembrano strani a tutti gli altri.",
		"Un Reietto è seduto su un gradino in mezzo a tutto questo caldo e questa vita, immobile, e la guarda come si guarda un fuoco che non si ha intenzione di toccare.",
	},
	["org.muse.w17.folk.017"] = {
		"Qui l'acqua vale la fatica di portarla. I portatori passano curvi sotto i gioghi coi secchi che sciabordano, e nessuno li urta, nemmeno i grunt.",
		"Di tutta la gente della città, i portatori d'acqua sono quelli a cui si fa più spazio. Rovesciare un secchio a Durotar è rovesciare qualcosa di vero.",
	},
	["org.muse.w17.folk.018"] = {
		"Tutti i grunt di questa città hanno la stessa faccia. Credo se la passino al cambio della guardia.",
		"Ho contato una dozzina di grunt e un'espressione sola in tutto. Gente parsimoniosa.",
	},
	["org.muse.w17.folk.019"] = {
		"Un vitello tauren e due piccoli orchi giocano nella polvere, a un gioco le cui regole sembrano inventarsi in tre man mano. Nessuno gli ha detto che l'Orda è una faccenda complicata.",
		"Bambini di tre popoli si rincorrono intorno a un palo, strillando in un miscuglio di lingue. Qualunque patto abbiano stretto i grandi, questi qui ci credono davvero.",
	},
	["org.muse.w17.haggle.001"] = {
		"A Orgrimmar anche gli affari ti ringhiano contro.",
		"In questa città pure gli affari buoni prima ti mostrano i denti.",
	},
	["org.muse.w17.haggle.002"] = {
		"Ho passato quasi un'ora a strappare due rame di sconto, poi per festeggiare ho preso da bere per tre rame. Il commercio è un'arte strana.",
		"Due rame risparmiati dopo una lunga e dura discussione. Ho celebrato la vittoria con un boccale che ne costava tre. La mia borsa e io ne stiamo ancora parlando.",
	},
	["org.muse.w17.haggle.003"] = {
		"Un goblin mi ha venduto una mappa della città. Metà delle strade passano dove piacerebbe a lui, e ogni bottega segnata è della sua famiglia.",
		"La mia nuova mappa di Orgrimmar, disegnata da un goblin, mostra una scorciatoia dentro la roccia viva e sei botteghe della stessa famiglia. Vale ogni rame, come barzelletta.",
	},
	["org.muse.w17.haggle.004"] = {
		"Affare fatto! Aspetta. Stavo comprando o vendendo?",
		"Andata. Un momento: chi dei due doveva pagare?",
	},
	["org.muse.w17.haggle.005"] = {
		"Ogni mercante di Orgrimmar ha un cugino che lo farebbe a meno. Il cugino non c'è mai.",
		"Chiedi uno sconto a un mercante qualunque e ti parlerà del cugino che vende a meno. Nessuno ha mai conosciuto il cugino.",
		"Dietro ogni bancarella di questa città c'è un cugino, più economico, più bravo, e mai presente. Comincio a pensare che sia sempre lo stesso cugino.",
	},
	["org.muse.w17.haggle.006"] = {
		"Qui i mercanti mi comprano gli stivali vecchi per un rame e mi vendono l'acqua per dieci. Un goblin, chissà dove, ha fatto il conto su una lavagnetta e ha riso fino a cadere per terra.",
		"Vendere un paio di stivali: un rame. Comprare un otre d'acqua: dieci. Non so chi faccia i prezzi in questa città, ma di sicuro non ha mai avuto sete.",
	},
	["org.muse.w17.haggle.007"] = {
		"Volevo una borsa. Esco con una borsa e con tutto quello che c'è da sapere sulle ginocchia del conciatore.",
		"Mi serviva solo una sacca. Ho avuto la sacca, più mezz'ora sul mal di schiena del pellettiere, gratis.",
	},
	["org.muse.w17.haggle.008"] = {
		"rovescia con gran cerimonia tutte e due le tasche vuote sotto lo sguardo di un imbonitore, e può tirare dritto in pace.",
		"risponde allo sguardo speranzoso di un bottegaio scuotendo tristemente una borsa vuota, e se la cava con un grugnito di comprensione.",
	},
	["org.muse.w17.haggle.009"] = {
		"C'è qualcosa in questa città che non sia in vendita? No, non rispondere. Mi faresti un prezzo.",
		"Ho chiesto che cosa non fosse in vendita a Orgrimmar. Il goblin mi ha chiesto quanto offrivo.",
	},
	["org.muse.w17.haggle.010"] = {
		"Trattare con un tauren è molto riposante. Lui dice un prezzo, io dico il mio, e poi aspettiamo tutti e due di vedere chi invecchia prima.",
		"Un mercante tauren non discute. Ti guarda e basta, con gentilezza, finché la tua offerta non sale da sola fino alla sua.",
		"Ho provato a tirare sul prezzo con un pellettiere tauren. Ha ascoltato ogni parola, ha annuito e ha ripetuto lo stesso prezzo, calmo come l'erba.",
	},
	["org.muse.w17.haggle.011"] = {
		"Qualcuno ha messo all'asta una semplice camicia di lino al prezzo di un buon lupo da cavalcare. O è uno scherzo, o è un sarto molto ottimista.",
		"Alla casa d'aste c'è una camicia di lino in vendita per una piccola fortuna. Ci ho già dato un'occhiata due volte per vedere se qualcuno abbocca.",
	},
	["org.muse.w17.haggle.012"] = {
		"La mia borsa è entrata in città grassa e allegra. Guardala adesso, poverina.",
		"Questa borsa pesava, al portale. Orgrimmar se n'è presa molta cura.",
		"All'arrivo avevo delle monete. Ne conservo un ricordo affettuoso.",
	},
	["org.muse.w17.haggle.013"] = {
		"A sentire i mercanti, ogni pelle di questa città è la più resistente di Kalimdor e ogni ascia la più affilata. Kalimdor dev'essere molto piccola.",
		"Mi hanno già mostrato la cintura più bella di tutta Kalimdor quattro volte, in quattro bancarelle diverse. Ognuna più bella della precedente, pare.",
	},
	["org.muse.w17.haggle.014"] = {
		"accetta di annusare la merce dal vasetto di un mercante zelante, e glielo rende subito con gli occhi che lacrimano.",
		"si china ad annusare un barattolo d'unguento offerto da un mercante, e si ritrae di scatto, come davanti a un pugno, mentre il mercante annuisce soddisfatto.",
	},
	["org.muse.w17.haggle.015"] = {
		"La locanda si fa pagare in buon argento una scodella di stufato e la rissa te la regala. Onesto, tutto sommato.",
		"Una scodella di stufato alla locanda costa più del dovuto. La scazzottata al tavolo accanto è compresa nel prezzo.",
	},
	["org.muse.w17.haggle.016"] = {
		"Un goblin ha appena provato a vendermi un mantello identico al mio. Era il mio. L'avevo lasciato su un gancio.",
		"Quel goblin era a metà dell'opera per vendermi il mio stesso mantello quando ce ne siamo accorti. Voleva comunque una mancia per averlo trovato.",
	},
	["org.muse.w17.haggle.017"] = {
		"A sentire gli imbonitori, in questo mercato è tutto fresco: conciato di fresco, forgiato di fresco, pescato di fresco. La mia pagnotta sfornata di fresco potrebbe tenere chiusa una porta.",
		"Pane fresco, giurava il venditore. Poi l'ho usato per piantare un picchetto della tenda. Ha funzionato benissimo.",
	},
	["org.muse.w17.haggle.018"] = {
		"Qualcuno in questa folla mi deve dei soldi. Non so chi. È solo questione di probabilità.",
		"Con tutta questa gente in giro, almeno uno mi deve dell'argento. Comincio a chiedere a caso.",
	},
	["org.muse.w17.haggle.019"] = {
		"ascolta con educazione il lungo racconto di un mercante su una caccia famosa, e capisce solo alla fine che era la pubblicità di una cintura.",
		"annuisce per tutta la storia di un mercante su un vecchio guerriero e il suo portafortuna, e alla fine si ritrova il portafortuna in mano.",
	},
	["org.muse.w17.haggle.020"] = {
		"Le tariffe del maestro di volo sono l'unica cosa di questa città che sale più in fretta delle viverne.",
		"Chiedi un prezzo al maestro di volo e capirai perché le viverne hanno sempre l'aria così soddisfatta.",
	},
	["org.muse.w17.haggle.021"] = {
		"si vede offrire un portafortuna da un mercante e un amuleto contro la sfortuna da quello dopo, e per principio non compra nessuno dei due.",
		"rifiuta con garbo un amuleto, poi un amuleto più economico, poi un amuleto che a quanto pare fa funzionare gli altri amuleti, e alla fine riesce a scappare.",
	},
	["org.muse.w17.history.001"] = {
		"Chiedi ai grunt del portale e ti raccontano di come l'Orda attraversò il mare su navi prese agli umani, stipati così stretti che metà di loro l'acqua non la vide mai.",
		"Gli orchi arrivarono a Kalimdor per mare, raccontano i veterani, su scafi rubati, malati come cani e cantando lo stesso. Nessuno di loro era mai stato un marinaio.",
		"Un veterano della locanda giura di aver passato tutta la traversata sottocoperta con una capra e un troll. Non dice quale fosse la compagnia peggiore.",
	},
	["org.muse.w17.history.002"] = {
		"Nei campi il mio popolo si era dimenticato come si fa a volere qualcosa. È la parte che nessuno mette nelle canzoni. Questa città è la voglia che si è svegliata.",
		"Steccati, giorni grigi, guardie che si annoiavano a guardarli. I campi non hanno ucciso gli orchi: li hanno svuotati. Ogni strada chiassosa di qui è quel vuoto riempito fino all'orlo.",
	},
	["org.muse.w17.history.003"] = {
		"Thrall avrebbe potuto mettere il suo nome sopra il portale. Ha dato invece la città a Orgrim, il vecchio Capoguerra che gli aveva insegnato tutto ed era morto prima di vederla costruita.",
		"Un Capoguerra che chiama la sua capitale col nome del suo maestro e non col proprio. Non sono molti i sovrani che si lascerebbero sfuggire un'occasione così.",
		"Il nome di questa città appartiene a un orco morto, per scelta di uno vivo. Quel piccolo gesto di modestia dice di Thrall più della sua armatura.",
	},
	["org.muse.w17.history.004"] = {
		"Prima delle mura, dicono quelli che c'erano dall'inizio, c'erano un fossato, una fila di pali appuntiti e un sacco di orchi che facevano a turno a non dormire.",
		"Un orco che c'era dall'inizio ti racconterà di tende nella polvere, uno steccato di pali e un pozzo che si è seccato due volte. Le mura sono venute molto dopo.",
	},
	["org.muse.w17.history.005"] = {
		"Kul Tiras mandò una flotta a bruciare Durotar quando queste mura erano appena tirate su, ricordano ancora i grunt. Tiragarde Keep è ancora lì sulla costa, accucciata, a ricordarglielo.",
		"La città si reggeva appena in piedi quando arrivarono le navi di Kul Tiras, raccontano i veterani. Ne parlano come di una febbre che alla fine è passata.",
	},
	["org.muse.w17.history.006"] = {
		"Non molto tempo fa orchi, umani ed elfi tennero insieme una montagna contro i demoni. A Orgrimmar questa storia si racconta a bassa voce, in fretta, e mai davanti a tutti.",
		"Hyjal è un nome che qui nessuno sa bene dove mettere. Lì l'Orda combatté al fianco dell'Alleanza, e la città preferisce ricordarsi della battaglia, non di chi aveva accanto.",
	},
	["org.muse.w17.history.007"] = {
		"I Darkspear lo raccontano senza giri di parole: gli orchi li trovarono nelle loro isole messi male, si fermarono a combattere e se li portarono dietro. Da allora i troll ripagano il favore, a gran voce.",
		"Chiedi a un troll perché i Darkspear seguono un Capoguerra orco e ti becchi una storia lunga, con dentro streghe del mare, e un finale corto: lui è rimasto quando non era obbligato.",
	},
	["org.muse.w17.history.008"] = {
		"I tauren raccontano che gli orchi combatterono i centauri al loro fianco quando le mandrie venivano cacciate per le pianure, e Cairne non dimentica un debito. Thunder Bluff ne è la prova.",
		"La gente di Cairne gira per queste strade come vecchi amici di famiglia, e in un certo senso lo è. Gli orchi le restarono accanto quando aveva i centauri alle calcagna.",
	},
	["org.muse.w17.history.009"] = {
		"Scegli una terra che nessuno vuole, dicono gli anziani, e nessuno verrà a prendertela. Ecco Durotar: scelta per le sue spine.",
		"Roccia rossa, terra magra, scorpidi sotto ogni sasso. Thrall ha scelto questo paese a occhi aperti, dicono i grunt, perché nessun altro l'avrebbe mai desiderato.",
		"Nessuno fa una guerra per Durotar, amano dire gli anziani. Era proprio questo il punto.",
	},
	["org.muse.w17.history.010"] = {
		"Questa città è più giovane di quasi tutti i grunt che la sorvegliano. Ricordatelo, quando si dà delle arie.",
		"Orgrimmar ha meno anni del grunt medio di guardia al portale. Solo che si comporta da vecchia.",
		"Quasi tutti quelli che girano per queste strade si ricordano il canyon vuoto. La città fa finta di esserci sempre stata.",
	},
	["org.muse.w17.history.011"] = {
		"rallenta accanto a un vecchio orco che racconta dei campi a un cerchio di bambini; per una volta nessuno di loro si agita.",
		"si attarda ai margini di un capannello che ascolta un veterano descrivere la traversata del mare, con le mani che mostrano quanto erano alte le onde.",
	},
	["org.muse.w17.history.012"] = {
		"Orgrim questa città non l'ha mai vista. Spero che qualcuno glielo racconti lo stesso.",
		"La città di Doomhammer. Avrebbe odiato la folla e amato le mura, ci scommetto.",
		"A Orgrim, che avrebbe brontolato per il nome e ne sarebbe stato contento in segreto.",
	},
	["org.muse.w17.history.013"] = {
		"Recinti e steccati, non tanto tempo fa. Adesso forge, una banca e un portale che teniamo noi. Quando il chiasso mi stanca, penso a che suono doveva avere il silenzio dei campi.",
		"Gli umani pensavano che avremmo perso la capacità di costruire. Pochi anni fuori dai campi, ed ecco Orgrimmar. Spero che a Stormwind qualcuno lo sappia.",
	},
	["org.muse.w17.history.014"] = {
		"Per gli anziani i vecchi clan contano ancora: un Warsong te lo dice forte, un Frostwolf te lo dice piano. I loro figli dicono solo Orgrimmar.",
		"Domanda a un vecchio orco di che clan è e avrai un nome e una storia. Fallo con uno giovane e avrai il nome di una valle.",
	},
	["org.muse.w17.history.015"] = {
		"La prima cosa che costruirono in questo canyon fu una forgia, mi ha detto un grunt, prima ancora delle mura. Senza chiodi, un muro non lo fai.",
		"Secondo un peon che giura di esserci stato, il primo fuoco acceso a Orgrimmar fu per il ferro e il secondo per la cena. Quell'ordine non l'ha ancora digerito.",
	},
	["org.muse.w17.history.016"] = {
		"Niente male, per gente che pochi anni fa stava dietro uno steccato.",
		"Guarda cosa hanno tirato fuori da un canyon e da un rancore.",
		"Tutto questo da un pugno di orchi liberati e da un pezzo di terra infame. Notevole.",
	},
	["org.muse.w17.history.017"] = {
		"resta un momento a guardare lungo le mura, come se cercasse di immaginare il canyon spoglio, prima che qualcuno ci posasse la prima pietra.",
		"si guarda intorno, pietra e legno della città, come se provasse a vederla con gli occhi dei primi orchi: una spaccatura vuota in un paese duro.",
	},
	["org.muse.w17.history.018"] = {
		"Gli anziani nominano il vecchio mondo oltre il Dark Portal come si nomina un amico morto: di rado, e mai ad alta voce. Orgrimmar è quello che hanno costruito al posto del lutto.",
		"C'era un mondo prima di questo, dicono i vecchi orchi, e non c'è più. Non lo descrivono granché. Indicano le mura, piuttosto.",
	},
	["org.muse.w17.history.019"] = {
		"Thrall ha trovato una crepa nel terreno e ne ha fatto una capitale. Certi re hanno fatto di meno con molto di più.",
		"Un canyon, qualche clan liberato e un Capoguerra testardo. Ecco tutta la fondazione di Orgrimmar, ed è bastata.",
	},
	["org.muse.w17.hold.001"] = {
		"Dentro Grommash Hold ogni passo si sente due volte: una sul pavimento, e una dai Kor'kron.",
		"Entri in Grommash Hold e i tuoi passi ti annunciano molto prima di chiunque altro. I Kor'kron si sono già fatti un'idea.",
		"Ogni stivale che attraversa la sala di Grommash Hold viene soppesato da una dozzina di sguardi. I miei sembrano più pesanti del solito.",
	},
	["org.muse.w17.hold.002"] = {
		"Niente tende, niente anticamera, nessuno scrivano col registro. Il Capoguerra siede dove chiunque entri può vederlo, in fondo a un lungo tragitto sotto gli occhi di ogni guardia.",
		"Il trono di Grommash Hold è in piena vista. Per arrivare al Capoguerra attraversi tutta la sala sotto gli sguardi della sua guardia, e quella camminata è l'unico cancello.",
	},
	["org.muse.w17.hold.003"] = {
		"passa accanto ai postulanti in attesa fuori da Grommash Hold: un peone con una lagnanza, un goblin con un contratto, un tauren con tutto il tempo del mondo.",
		"costeggia la fila di chi aspetta l'orecchio del Capoguerra, un capotribù, una vedova, un mercante col mal di denti, e non ne trova due dello stesso popolo.",
	},
	["org.muse.w17.hold.004"] = {
		"Thrall porta ancora il nome che gli diedero i suoi carcerieri. Gli ha fatto significare tutt'altro, e questo nessuno potrà toglierglielo.",
		"Thrall: un nome da schiavo, dato dagli umani che lo tenevano prigioniero. Lo porta alla testa dell'Orda, e ormai suona come un avvertimento per chiunque voglia riprovare con le catene.",
		"I carcerieri gliel'avevano dato come un guinzaglio. Lui l'ha tenuto, e ora i capotribù chinano il capo davanti a quel nome.",
	},
	["org.muse.w17.hold.005"] = {
		"Grom Hellscream morì nelle foreste di Ashenvale con un signore dei demoni abbattuto ai suoi piedi, lontano da qualsiasi sala. Thrall gliene ha data una lo stesso, e il mio popolo ci entra ogni giorno.",
		"La sala del Capoguerra porta il nome di un orco che non l'ha mai vista. Grom cadde in Ashenvale per liberarci, e Grommash Hold tiene pronto quel nome finché non ne saremo degni.",
	},
	["org.muse.w17.hold.006"] = {
		"Abbassa la voce vicino alla sala del Capoguerra. I Kor'kron hanno già sentito tutte le battute, e non hanno riso a nessuna.",
		"Non così forte. Siamo a portata d'orecchio della sala del Capoguerra, e preferirei che si ricordassero di me per altro.",
	},
	["org.muse.w17.hold.007"] = {
		"sosta dove il sentiero sale verso Grommash Hold per lasciar passare due Kor'kron, con le armature che non fanno un rumore più del necessario.",
		"si scosta per una pattuglia di Kor'kron sul pendio sotto la sala del Capoguerra, e riceve uno sguardo che soppesa e congeda in un colpo solo.",
	},
	["org.muse.w17.hold.008"] = {
		"si tiene a rispettosa distanza dal trono, con le mani bene in vista, come sembrano preferire i Kor'kron.",
		"rimane ai margini della grande sala, fuori dai piedi dei postulanti, e alza gli occhi alle travi perse nel fumo sotto il tetto.",
	},
	["org.muse.w17.hold.009"] = {
		"Il Capoguerra ascolta peoni e capotribù nella stessa sala, dallo stesso seggio. Ho sentito dire che ai peoni concede più tempo: sono meno abituati a essere brevi.",
		"Capotribù e peoni aspettano nella stessa fila fuori da Grommash Hold. A Orgrimmar nessuno lo trova più strano, ed è questa la cosa più strana.",
	},
	["org.muse.w17.hold.010"] = {
		"Qualunque cosa si decida in Grommash Hold arriva ai confini di Durotar prima che il lupo del messaggero si sia raffreddato.",
		"Una parola detta in Grommash Hold viaggia più veloce di qualunque cavaliere. Quando arriva alle Barrens, le sono già cresciuti i denti.",
		"Thrall decide in Grommash Hold, e alla carovana successiva tutta Durotar ha già un'opinione.",
	},
	["org.muse.w17.hold.011"] = {
		"I Kor'kron non guardano mai il Capoguerra. Guardano tutti gli altri, tutti insieme, e chissà come proprio me in particolare.",
		"Gli occhi di un Kor'kron non sono mai sul Capoguerra. Sono sulle tue mani, sulla cintura, sulla faccia, e poi da capo sulle mani.",
	},
	["org.muse.w17.hold.012"] = {
		"Che la sala di Grommash non resti mai muta per mancanza di voci.",
		"Che Grommash Hold resti aperto a lungo, e chi vi siede tenga sempre l'orecchio a terra.",
		"Forza e pazienza a chi siede sotto quel tetto. Della seconda gliene servirà di più.",
	},
	["org.muse.w17.hold.013"] = {
		"Il posto più tranquillo di Orgrimmar, dicono. Qualche decina di voci e un fuoco. Non oso immaginare quello rumoroso.",
		"Il cuore tranquillo della città, quella sala. Tranquillo per la misura di Orgrimmar: nessuno sta martellando niente.",
	},
	["org.muse.w17.hold.014"] = {
		"Il Capoguerra porta le scelte di un popolo intero su un solo paio di spalle. Da qui sembra che le stia ascoltando tutte insieme.",
		"Lassù sul trono Thrall sta immobile, e non è calma. È l'immobilità di chi tiene in equilibrio un grande peso.",
		"Dal pavimento della sala il trono sembra meno un seggio di potere che il posto dove qualcuno deve continuare ad ascoltare.",
	},
	["org.muse.w17.hold.015"] = {
		"Orchi, troll, tauren, Reietti: vengono tutti nella stessa sala per farsi ascoltare. Il seggio del Capoguerra è l'unico posto di Orgrimmar verso cui ogni popolo deve camminare.",
		"Ogni strada di Orgrimmar, prima o poi, piega verso Grommash Hold. Anche quelle che sembrano dirette alla banca.",
		"Inviati Reietti, anziani troll, guerrieri tauren: la porta di Grommash Hold li vede passare tutti. La tavola di Thrall è affollata.",
	},
	["org.muse.w17.hold.016"] = {
		"si volta al suono basso di un corno dalla parte della sala del Capoguerra, aspetta, e si rigira quando non segue altro.",
		"alza la testa a un richiamo di corno dalla Valley of Wisdom, poi lascia perdere quando lo fa anche la folla.",
	},
	["org.muse.w17.hold.017"] = {
		"Il nostro Capoguerra non tiene oro sul trono né corona sul capo. Un seggio, un martello, e una sala piena di chiunque abbia bisogno di lui.",
		"Nessuna corona in Grommash Hold. L'Orda non ha mai voluto un re; voleva qualcuno che si mettesse davanti quando contava.",
		"Altri popoli coprono d'oro i loro re. Noi abbiamo dato al nostro Capoguerra una sala di legno e pelli, e lui sembra preferirla.",
	},
	["org.muse.w17.hold.018"] = {
		"Grommash Hold. Non riesco a guardarlo senza raddrizzare la schiena. La schiena ha presentato un reclamo.",
		"Basta un'occhiata alla sala del Capoguerra e controllo se ho gli stivali impolverati. Come se a Orgrimmar qualcuno li avesse puliti.",
	},
	["org.muse.w17.hold.019"] = {
		"osserva un postulante inginocchiarsi davanti al trono, dire poche parole stentate e rialzarsi, più leggero a vederlo.",
		"vede i Kor'kron accanto al trono spostare il peso tutti insieme, come se il pavimento si fosse inclinato sotto di loro nello stesso istante.",
	},
	["org.muse.w17.hold.020"] = {
		"Le mura di Orgrimmar furono innalzate per tenere fuori i nemici. Grommash Hold per il contrario: per far entrare tutti i popoli della città e farli sedere intorno a un solo fuoco.",
		"A una città servono mura per stare in piedi e una sala per restare unita. Thrall ha costruito le mura per i nemici e Grommash Hold per gli amici, e sospetto che la seconda cosa sia stata la più difficile.",
		"Mura per i nemici, una sala per gli amici. Delle due, Orgrimmar spende di più per le mura e ha più bisogno della sala.",
	},
	["org.muse.w17.honor.001"] = {
		"Un cacciatore della Valley of Honor cerca di insegnare a uno scorpide a stare seduto. Lo scorpide ci sta pensando, molto lentamente, con la coda.",
		"Nell'angolo dei cacciatori della Valley of Honor qualcuno insegna le buone maniere a uno scorpide. Nessuno dei due sembra fiducioso.",
	},
	["org.muse.w17.honor.002"] = {
		"Gli addestratori di guerrieri della Valley of Honor hanno tutti qualcosa in meno: un dito, un orecchio, mezzo dente. Ogni lezione arriva con la sua prova.",
		"Fra gli addestratori e gli allievi della Valley of Honor la differenza è in quello che manca. Un orecchio intaccato, due dita perdute. Insegnano per esperienza.",
		"Più l'addestratore della Valley of Honor è vecchio, meno dita gli restano. Io do retta soprattutto a quelli che ne hanno tre.",
	},
	["org.muse.w17.honor.003"] = {
		"Guarda quei due. Discutono di guardia da più tempo di quanto sarebbe durato lo scontro.",
		"Hanno smesso di allenarsi per litigare sulla tecnica. A gesti. L'addestratore li lascia sfogare finché non crollano.",
		"Due grunt, una guardia, una dozzina di opinioni. È un pezzo che nessuno tira un pugno.",
	},
	["org.muse.w17.honor.004"] = {
		"La Hall of Legends non si apre alla curiosità. Il grado, guadagnato sui campi di battaglia, è l'unica chiave che la sua porta accetti.",
		"Nessuna moneta compra l'ingresso alla Hall of Legends, e nessun amico alla porta serve a qualcosa. Solo il grado, conquistato sul campo, e il campo non si lascia corrompere.",
		"A Orgrimmar l'oro apre quasi tutte le porte. La Hall of Legends è l'eccezione testarda.",
	},
	["org.muse.w17.honor.005"] = {
		"Silenzio, dentro la Hall of Legends. Chi si è guadagnato un posto fra queste mura non ha bisogno di gridarlo.",
		"Nella Hall of Legends le voci si abbassano senza che nessuno lo chieda. Gli stendardi alle pareti si vantano per tutti.",
	},
	["org.muse.w17.honor.006"] = {
		"Se qualcuno nella Valley of Honor chiede, sto solo guardando. Questi lividi vengono da un'altra parte.",
		"Guardo soltanto l'allenamento. Davvero. Lo zoppicare non c'entra.",
	},
	["org.muse.w17.honor.007"] = {
		"indugia ai margini del campo d'addestramento a guardare due grunt che si scambiano colpi, e fa una smorfia ogni volta che il più grosso va a segno.",
		"si appoggia a un palo ai bordi del cortile della Valley of Honor e segue un incontro d'allenamento con gli occhi socchiusi di chi tiene il punteggio.",
		"tiene il conto in silenzio di un incontro nel cortile, muovendo le labbra, e lo perde quando il grunt più piccolo vince all'improvviso.",
	},
	["org.muse.w17.honor.008"] = {
		"rallenta accanto a un cacciatore che spazzola via la polvere dal manto di un grosso felino, che sopporta a occhi chiusi con la coda che freme.",
		"si accosta a un cacciatore che toglie i lappoloni dal collo di un lupo; il lupo si appoggia al pettine con la gioia sfacciata di un cucciolo.",
		"resta a vedere un cacciatore controllare gli zoccoli di un cinghiale uno per uno, parlandogli per tutto il tempo con voce bassa e ragionevole.",
	},
	["org.muse.w17.honor.009"] = {
		"Ogni guerriero che lascia la Valley of Honor si porta via un po' della sua polvere nelle pieghe dell'armatura. Metà dei campi di battaglia di Kalimdor devono averne un pizzico.",
		"La polvere rossa del cortile viaggia. Salta fuori a cento leghe da Orgrimmar, amano dire gli addestratori, negli stivali di chi hanno istruito.",
		"Un po' della Valley of Honor parte sempre con i suoi guerrieri: polvere rossa nelle fibbie, la voce degli addestratori nelle orecchie.",
	},
	["org.muse.w17.honor.010"] = {
		"Un tempo il mio popolo combatteva con il fuoco del demone nel sangue. Nella Valley of Honor i giovani imparano a combattere senza, e combattono meglio.",
		"I nostri anziani hanno imparato la guerra con una maledizione che bruciava loro dentro. Gli addestratori della Valley of Honor la insegnano pulita. Guardo i giovani e penso: ecco cosa dovevamo essere.",
	},
	["org.muse.w17.honor.011"] = {
		"Per il caldo, nella Valley of Honor, non si ferma nessuno. Il caldo, dicono gli addestratori, è solo un nemico che non puoi colpire, tanto vale ignorarlo.",
		"Gli addestratori della Valley of Honor trattano il caldo come uno che fischia dagli spalti: non merita risposta.",
		"Nel cortile nessun addestratore concede riposo per il caldo, la polvere o la sete. I grunt si lamentano di tutti e tre e continuano a esercitarsi.",
	},
	["org.muse.w17.honor.012"] = {
		"L'addestratore di bestie della Valley of Honor parla agli animali come un buon fabbro parla al ferro: con pazienza, e aspettandosi di essere capito.",
		"C'è chi addestra le bestie, nella Valley of Honor, senza mai alzare la voce. Gli animali si sporgono per sentire, e forse il trucco è tutto lì.",
	},
	["org.muse.w17.honor.013"] = {
		"Guardali. La Valley of Honor potrebbe mettere in campo un esercito solo con quelli che stanno a guardare.",
		"Metà di questa valle si allena, l'altra metà dà consigli urlando. So bene in quale metà sto io.",
		"Più gente a guardare che ad allenarsi. Come al solito. Nessuno si offre mai per fare il fantoccio.",
	},
	["org.muse.w17.honor.014"] = {
		"Qui tutti contano a voce alta: colpi, giri, passi, punti. L'intera Valley of Honor tiene il tempo come un unico, enorme istruttore.",
		"Qualcuno, nella Valley of Honor, conta sempre ad alta voce. Altri dieci. Da capo. Altri cinque. I numeri non sembrano mai scendere.",
	},
	["org.muse.w17.honor.015"] = {
		"si abbassa di scatto quando un bastone d'allenamento sfugge di mano a qualcuno e vola via sferragliando a un passo di distanza, tra le risate fragorose del cortile.",
		"si scansa in fretta quando una coppia di lottatori rotola fuori dal cortile fin sul sentiero, ancora avvinghiata, scusandosi a denti stretti.",
		"schiva una coppia di grunt che lottano nella polvere del cortile, e si guadagna un grugnito d'approvazione da un addestratore per il gioco di gambe.",
	},
	["org.muse.w17.honor.016"] = {
		"Alcuni di quelli che escono dalla Hall of Legends portano il loro grado come altri portano una zoppia: guadagnato, e non se ne discute.",
		"Gli ufficiali che entrano ed escono dalla Hall of Legends raccontano di rado come ci sono arrivati. Il loro silenzio è il vanto più rumoroso della Valley of Honor.",
		"La Hall of Legends lascia entrare pochi, e quei pochi, quando escono, non si vantano mai. Vantarsi è roba da cortile.",
	},
	["org.muse.w17.honor.017"] = {
		"Colpisci il palo, non l'addestratore. A meno che non abbia cominciato lui.",
		"Tieni su quel gomito! Scusa. Non è il mio cortile, non sono affari miei.",
	},
	["org.muse.w17.honor.018"] = {
		"Raptor, felini, cinghiali e una tartaruga molto offesa. Il lato dei cacciatori di questa valle è un'aia dove morde tutto.",
		"Fra bestie, cacciatori e odore di stalla, questa è la cosa più simile a un'aia che abbia Orgrimmar. Un'aia con i denti.",
		"Il raptor di qualcuno ha appena rubato il pasto a un cinghiale, e i cacciatori scommettono già sulla rivincita.",
	},
	["org.muse.w17.honor.019"] = {
		"Ogni grunt nel cortile d'addestramento combatte contro qualcuno che non c'è: il nemico della prossima campagna, della prossima guerra. Colpiscono il palo come se avesse una faccia.",
		"I compagni d'allenamento della Valley of Honor si guardano oltre le spalle. Ciascuno vede un nemico diverso, lontano, al di là delle mura.",
		"Gli scontri più feroci del cortile si combattono contro nessuno: un grunt da solo che martella l'aria, e chi lo aspetta al di là delle mura.",
	},
	["org.muse.w17.honor.020"] = {
		"socchiude gli occhi nella sabbia che vola e guarda il cortile della Valley of Honor, dove l'allenamento prosegue come se la polvere facesse parte della lezione.",
		"guarda gli addestratori tenere gli allievi al lavoro nella sabbia che sibila, ogni grido mezzo inghiottito dal vento.",
		"si ripara gli occhi dalla sabbia e guarda un addestratore continuare a gridare il conto, come se il vento avesse solo fatto una domanda.",
	},
	["org.muse.w17.order.001"] = {
		"assiste a una spinta tra due orchi che finisce prima di cominciare: compare un grunt in mezzo, dice una parola sola, e tutti e due si ricordano di avere affari urgenti altrove.",
		"vede scoppiare una zuffa davanti a una porta e due grunt chiuderla quasi prima che cominci, senza sguainare niente.",
	},
	["org.muse.w17.order.002"] = {
		"La legge di Orgrimmar ci sta sull'unghia di un pollice: niente ferro sguainato contro un cittadino, niente mani nella borsa degli altri. Le note a margine le scrivono i grunt.",
		"Da quel che capisco, la città ha due leggi, e le fanno rispettare orchi grossi come porte.",
		"Qui nessuno legge le leggi ad alta voce. Non serve: i grunt sono proprio lì.",
	},
	["org.muse.w17.order.003"] = {
		"si ferma a guardare un grunt che ascolta un orco e un troll litigare per un debito, poi fissa una cifra che lascia tutti e due ugualmente scontenti.",
		"resta lì mentre un grunt risolve una lite tra un goblin e un tauren, soprattutto lasciando che il goblin finisca le parole per primo.",
	},
	["org.muse.w17.order.004"] = {
		"Troll in una valle, tauren in un'altra, orchi dappertutto in mezzo. Una parte della pace del Capoguerra sta nel dare a ciascuno un posto dove tenere il muso.",
		"La città tiene i suoi popoli abbastanza separati e abbastanza vicini. Qualcuno ci ha pensato a lungo.",
		"Dai a ogni popolo una valle e una lamentela tutta sua, e saranno troppo occupati per litigare tra loro. Chi ha pensato Orgrimmar l'aveva capito.",
	},
	["org.muse.w17.order.005"] = {
		"Un avviso inchiodato a un palo: la parola del Capoguerra su qualcosa, in orchesco, e sotto un disegno della stessa cosa per chi non sa leggere. Nel disegno c'è un'ascia.",
		"Qualcuno ha appeso gli ordini del Capoguerra a una trave, con una figura sotto per chi non legge. La figura è più chiara.",
	},
	["org.muse.w17.order.006"] = {
		"In questa folla tutti portano ferro, e nessuno lo tocca. È la legge di Orgrimmar, scritta nel modo in cui la gente cammina.",
		"Un'ascia su ogni schiena, un coltello a ogni cintura, e nemmeno uno sfoderato. La pace della città è mille persone che scelgono la stessa cosa nello stesso momento.",
		"Una folla armata fino ai denti, e il peggio che succede è un piede pestato. È una disciplina che nessuno ha dovuto urlare.",
	},
	["org.muse.w17.order.007"] = {
		"A Orgrimmar i ladri sono rari, dice il grunt. Soprattutto perché la punizione è lui.",
		"Qui nessuno ruba, mi ha detto un grunt. Gli ho chiesto perché. Si è solo fatto scrocchiare le nocche.",
	},
	["org.muse.w17.order.008"] = {
		"guarda due orchi chiudere un accordo stringendosi l'avambraccio, e basta: niente carte, nessun testimone se non la strada.",
		"assiste a un patto concluso con una sola stretta d'avambracci, e le due parti si separano come se avessero firmato un contratto nel ferro.",
	},
	["org.muse.w17.order.009"] = {
		"Pace nelle strade, ferro al portale. È questo l'accordo, e funziona.",
		"Tieniti stretti la calma e la borsa, e i grunt non sapranno mai come ti chiami.",
		"Il modo migliore per restare in buoni rapporti con le guardie, qui? Non dargli niente da scrivere.",
	},
	["org.muse.w17.order.010"] = {
		"Non siamo un popolo solo. Siamo una promessa che più popoli si sono fatti a vicenda, e il Capoguerra è quello che ce la fa mantenere.",
		"L'Orda non è una razza, è una stretta di mano. A Orgrimmar la vedi tenere salda tutto il giorno, in mezzo alla folla.",
	},
	["org.muse.w17.order.011"] = {
		"osserva due grunt fermare un carro, frugare tra i sacchi col manico dell'ascia e farlo ripartire senza dire una parola.",
		"coglie un grunt che solleva il telo dal carro di un goblin, guarda, annusa e lo lascia ricadere, mentre il goblin sorride per tutto il tempo.",
	},
	["org.muse.w17.order.012"] = {
		"Il Capoguerra esce di rado dalla sua sala, dicono, eppure la sua parola sta in ogni strada: nel modo in cui stanno i grunt, in chi si sposta per chi.",
		"Thrall per le strade non si vede granché. Si vedono le sue regole ovunque, e forse è meglio così.",
		"La pace di Thrall cammina per le strade anche senza di lui, sulle spalle di ogni grunt in vista.",
	},
	["org.muse.w17.order.013"] = {
		"I grunt mantengono la pace in questa città per chiunque ci si trovi, mi dicono. Preferisco non essere io a verificare se quel chiunque comprende anche me.",
		"Qui l'ordine è severo e giusto, per quel che vedo. Giusto per chi, è la domanda che mi tengo in tasca.",
	},
	["org.muse.w17.order.014"] = {
		"I grunt si ricordano le facce. Resta in città abbastanza e uno di loro ti concede il più piccolo dei cenni: conosciuto, innocuo, per ora.",
		"Essere riconosciuti da un grunt è uno strano onore. Niente sorriso, solo uno sguardo che si allenta un poco, come una porta lasciata senza sbarra.",
	},
	["org.muse.w17.order.015"] = {
		"Strade tranquille, grunt? Allora stai facendo il tuo lavoro, e io me ne tengo fuori.",
		"Bel lavoro, tutti quanti. Non hanno accoltellato nessuno da almeno un'ora.",
	},
	["org.muse.w17.order.016"] = {
		"Certe liti i Darkspear le sistemano a modo loro, nella loro valle, e i grunt trovano qualcos'altro da guardare. Anche sapere quando non vedere fa parte della legge.",
		"Non tutte le dispute di Orgrimmar arrivano a un grunt. I tauren hanno i loro anziani e i troll le loro usanze, e la città ha il buon senso di lasciarli fare.",
	},
	["org.muse.w17.order.017"] = {
		"si raddrizza un poco al passaggio di una pattuglia, come fanno tutti a Orgrimmar, senza che nessuno lo chieda.",
		"porta le mani bene in vista quasi senza accorgersene mentre passano due grunt, poi le lascia ricadere lungo i fianchi.",
	},
	["org.muse.w17.order.018"] = {
		"Il portale è aperto a chiunque venga in pace, e chi lo sia lo decidono i grunt a colpo d'occhio. Mi dicono che sbagliano di rado.",
		"Al portale nessuno ti chiede cosa vieni a fare. I grunt guardano e basta, e in qualche modo quella è insieme la domanda e la risposta.",
	},
	["org.muse.w17.spirits.001"] = {
		"Le maschere sui pali delle capanne, nella Valley of Spirits, hanno la bocca aperta, come colte a metà di una parola. Darei parecchio per sentire come va a finire.",
		"Maschere dipinte sorvegliano il sentiero della Valley of Spirits, tutte a bocca spalancata. Qualunque cosa avessero cominciato a dire, la stanno dicendo da molto tempo.",
		"Ogni maschera della valle dei troll sembra intagliata a metà di una frase. Continuo ad aspettarmi che una di loro la finisca.",
	},
	["org.muse.w17.spirits.002"] = {
		"Giù nella Valley of Spirits c'è una pozza d'acqua ferma, l'unica acqua di Orgrimmar che nessuno cerca di vendermi.",
		"Nella valle dei troll c'è una pozza, piatta e silenziosa, in una città dove ogni altra goccia arriva in un secchio e si paga.",
		"Acqua ferma, in un canyon di polvere rossa. I Darkspear tengono la loro pozza come altri tengono un focolare: qualcosa intorno a cui ritrovarsi.",
	},
	["org.muse.w17.spirits.003"] = {
		"Un vecchio Darkspear della Valley of Spirits, quando parla, volge sempre il viso verso la costa. Verso le isole perdute, immagino. Dubito che se ne accorga.",
		"Alcuni dei troll più anziani continuano a guardare a sud-est, oltre le mura, verso le Echo Isles. Un'abitudine, come la lingua che va a cercare un dente che non c'è più.",
		"I troll della Valley of Spirits parlano poco delle Echo Isles. Non ne hanno bisogno: metà dei loro amuleti pende rivolta verso il mare.",
	},
	["org.muse.w17.spirits.004"] = {
		"resta a guardare un piccolo troll che batte un ritmo su una pentola rovesciata, mentre un anziano gli corregge il tempo senza alzare gli occhi dal lavoro.",
		"indugia accanto a una capanna della Valley of Spirits, dove una bambina tamburella male su una pentola e un vecchio le batte il tempo giusto sul ginocchio finché non lo trova.",
		"sorride suo malgrado davanti a un trollino che pesta su una pentola, e alla mano adulta che ogni tanto si allunga a rallentarlo.",
	},
	["org.muse.w17.spirits.005"] = {
		"Vicino all'acqua, nella Valley of Spirits, un sacerdote e uno sciamano discutono su da dove venga davvero la guarigione. Nessuno dei due la spunterà, ed entro la settimana rattopperanno gli stessi grunt.",
		"Accanto alla pozza dei troll un sacerdote e uno sciamano dissentono, con garbo e a lungo, su chi chiuda una ferita: la Luce o gli spiriti. Alla ferita, intanto, non importa a chi vada il merito.",
		"Luce o spiriti? I due guaritori accanto alla pozza dei troll ci stanno dietro da un pezzo. Chiunque vinca, i grunt in fila alle loro spalle zoppicano lo stesso.",
	},
	["org.muse.w17.spirits.006"] = {
		"osserva uno stregone vudù scuotere una zucca secca contro un lupo di passaggio, e il lupo, molto saggiamente, prendere il giro lungo.",
		"nota che perfino i lupi lasciano parecchio spazio agli stregoni vudù della Valley of Spirits, e segue il loro esempio.",
		"gira alla larga da uno stregone vudù che scuote una zucca contro niente di preciso, come fanno i lupi del posto.",
	},
	["org.muse.w17.spirits.007"] = {
		"Occhio ai vasi, da queste parti. Nella Valley of Spirits metà di loro hanno qualcuno che ci abita dentro.",
		"Non prendere a calci quel vaso. Giù nella valle dei troll non sai mai chi ci sta di casa.",
		"Piano coi vasi. I troll dicono che alcuni sono abitati.",
	},
	["org.muse.w17.spirits.008"] = {
		"vede i riflessi delle capanne tremare sulla pozza della Valley of Spirits ogni volta che lì vicino attacca un tamburo.",
		"si trattiene accanto alla pozza dei troll quanto basta per vedere un colpo di tamburo attraversare l'acqua in un anello di increspature.",
		"si sporge sulla pozza dei troll e vede le maschere dipinte delle capanne alle sue spalle appese a testa in giù nell'acqua, con gli occhi sgranati.",
	},
	["org.muse.w17.spirits.009"] = {
		"passa chinandosi sotto una corda di radici messe a seccare fra due capanne della Valley of Spirits, e si rialza starnutendo per l'odore di pepe.",
		"rallenta accanto a una fila di radici, cortecce e una cosa secca con le zampe, e decide di non chiedere quale sia la medicina e quale la cena.",
		"arriccia il naso davanti a una corda di radici a seccare nella Valley of Spirits, poi, per curiosità, annusa una seconda volta.",
	},
	["org.muse.w17.spirits.010"] = {
		"I troll lasciano fuori ciotoline di cibo che nessuno mangia. Quando le mosche hanno finito, dicono gli stregoni vudù, anche gli spiriti hanno avuto la loro parte.",
		"Davanti alle capanne della Valley of Spirits ci sono ciotoline di farina e frutta. Per gli spiriti, mi ha spiegato un Darkspear, come si tiene da parte un piatto per un ospite in ritardo.",
		"Una piccola troll ha appena preso un fico da una delle ciotole per gli spiriti. La nonna le ha dato uno scappellotto e ne ha messo al suo posto uno più grosso.",
	},
	["org.muse.w17.spirits.011"] = {
		"I tamburi degli orchi marciano. Quelli della Valley of Spirits invece vagano: girano in tondo, si fermano, ripartono altrove, come una voce anziana che racconta una storia saputa a memoria.",
		"I tamburi dei troll non vanno mai al passo. Divagano, esitano, riattaccano da un'altra parte, e dopo un po' le marce degli orchi, al confronto, sembrano un po' rigide.",
		"Ascolta abbastanza a lungo i tamburi della valle dei troll e i ritmi di guerra della città cominciano a sembrare qualcuno che conta sulle dita.",
	},
	["org.muse.w17.spirits.012"] = {
		"Un amuleto contro i serpenti, uno contro la sfortuna, uno contro i goblin. Indovinate quale finisce per primo, alla bancarella di quella troll.",
		"Quella troll ha un amuleto per ogni cosa. Gliene ho chiesto uno contro i prezzi. Ha riso per un bel pezzo.",
		"Ho comprato un amuleto portafortuna da una troll. Me ne ha regalato un secondo, contro qualunque cosa attiri il primo.",
	},
	["org.muse.w17.spirits.013"] = {
		"Qui nella Valley of Spirits la strada diventa terra battuta, e il ferro degli orchi lascia il posto a ossa, piume e legno dipinto.",
		"La Valley of Spirits costruisce con ciò che gli orchi buttano via: ossa, piume, zucche secche, moltissima vernice. Sembra più antica del resto della città, anche se non può esserlo.",
		"Meno punte e più piume, da queste parti. La Valley of Spirits ha gusti tutti suoi.",
	},
	["org.muse.w17.spirits.014"] = {
		"aggira un cerchio di pietre dipinte posato a terra, e non domanda a cosa serva.",
		"passa alla larga da un cerchio di sassolini disposti nella polvere fra le capanne, come si gira intorno al cane addormentato di qualcun altro.",
	},
	["org.muse.w17.spirits.015"] = {
		"guarda una sciamana seduta accanto alla pozza dei troll a occhi chiusi, immobile come un palo, mentre tre trollini fanno di tutto per farla ridere.",
		"sosta vicino all'acqua della Valley of Spirits, dove una sciamana siede assorta e una banda di piccoli troll fa del suo meglio per farla crollare. Per ora vince la sciamana.",
	},
	["org.muse.w17.spirits.016"] = {
		"Pioggia sulla pozza dei troll, e ogni Darkspear in vista ci sta sotto col viso all'insù. Acqua che cade sull'acqua: pare che lo prendano per un buon segno.",
		"Pioggia nella Valley of Spirits. Le maschere dipinte colano colore, e i vecchi troll restano accanto alla pozza a guardarla riempirsi, come se contassero le gocce.",
	},
	["org.muse.w17.spirits.017"] = {
		"In quella capanna bolle qualcosa. Medicina, maledizione o zuppa? Nella Valley of Spirits non lo chiedo.",
		"Quell'odore o è una cura o è una maledizione. L'assaggio lo lascio a qualcuno più coraggioso.",
	},
	["org.muse.w17.spirits.018"] = {
		"I Darkspear arrivarono a Kalimdor sulle navi di Thrall con poco più delle loro lance e dei loro spiriti. La valle che hanno ricevuto è piccola, e l'hanno riempita fino all'orlo.",
		"Thrall portò via i Darkspear dalle loro isole quando ormai non restava niente a trattenerli. Lo ripagarono con l'unica moneta che avevano, la parola data, ed è nella Valley of Spirits che la custodiscono.",
		"I Darkspear devono la vita a Thrall, e lo sanno tutti. Nella valle dei troll non c'è bisogno di ripeterlo.",
	},
	["org.muse.w17.spirits.019"] = {
		"si scosta mentre alcuni troll in tunica passano diretti all'acqua, senza fretta, con gli orli che spazzano la polvere come scope.",
		"fa strada a due sacerdoti troll che scendono verso la pozza, e che ringraziano con la stessa lenta inclinazione del capo.",
	},
	["org.muse.w17.spirits.020"] = {
		"Alcuni amuleti dei troll, nella Valley of Spirits, pendono rivolti verso fuori, verso il resto della città. Non si sa mai, mi ha detto un Darkspear con un sogghigno.",
		"I troll si fidano dei loro vicini orchi, mi ha spiegato uno stregone vudù. Gli amuleti inchiodati in direzione del Drag sono lì solo per buona educazione.",
		"Metà degli amuleti dei troll puntano verso il resto della città. Cortesia, l'ha chiamata uno stregone vudù. Io la chiamerei prudenza.",
	},
	["org.muse.w17.spirits.021"] = {
		"Tranquilla, questa valle. Solo tre tamburi alla volta. Per Orgrimmar è una ninna nanna.",
		"Ecco un angolo tranquillo: un tamburo, una pozza, e nessuno che vende niente. Potrei schiacciare un pisolino.",
		"Mi piace questa valle. I tamburi non ti urlano addosso: borbottano fra sé.",
	},
	["org.muse.w17.strength.001"] = {
		"Chi entra dal portale principale si ferma qui un momento, a decidere che cosa sarà Orgrimmar per lui. Glielo leggi in faccia, mentre decide.",
		"In questa valle i viaggiatori si fermano davvero, dopo giorni di cammino. Hanno ancora la strada addosso; la città non è ancora cominciata.",
		"Appena dentro il portale la gente si ferma e fa il punto: la banca, la locanda, il Drag più in là. Si vede la strada scivolargli giù dalle spalle.",
	},
	["org.muse.w17.strength.002"] = {
		"si scansa per lasciar passare un carro che entra dal portale principale, le ruote bianche di polvere e il conducente già a discutere con una guardia su dove fermarsi.",
		"guarda una carovana entrare dal portale, le casse che ondeggiano, mentre le guardie le fanno cenno di passare con la noia di chi lo fa da sempre.",
		"lascia sfilare oltre il portale una fila di portatori carichi, ognuno col collo allungato per vedere se la banca è lontana quanto temeva.",
	},
	["org.muse.w17.strength.003"] = {
		"In un registro della banca un impiegato tiene il mio nome accanto a un numero. Quella pagina sa di me più di tanta gente con cui ho viaggiato.",
		"Nei libri della banca c'è una riga d'inchiostro che è soltanto mia: un nome e una cifra. Forse è il ritratto più sincero che mi abbiano mai fatto.",
		"Il mio nome sta in un registro della Valley of Strength, accanto a una cifra che cresce di rado. Chi l'ha scritto non mi riconoscerebbe in faccia.",
	},
	["org.muse.w17.strength.004"] = {
		"La casa d'aste mi fa comprare da gente che non incontrerò mai. Qualcuno, giù nei Barrens, ha deciso il prezzo di questa pelliccia e se n'è andato fischiettando.",
		"Ogni lotto della casa d'aste l'ha messo in vendita uno sconosciuto che non vedrò mai. Sto trattando con un fantasma che ha già lasciato la città.",
	},
	["org.muse.w17.strength.005"] = {
		"I banditori d'asta non alzano mai la voce. In una città dove tutti urlano, è così che capisci chi comanda davvero.",
		"Alla casa d'aste nessuno grida. I banditori mormorano le offerte come uno sciamano che legge le ossa, e intanto le monete di mezza città cambiano mano.",
		"Di tutte le voci di Orgrimmar, le più sommesse sono quelle dei banditori. Chi grida vende pelli; chi sussurra sposta patrimoni.",
	},
	["org.muse.w17.strength.006"] = {
		"guarda un addetto salire sulla torre di volo con un secchio di carne cruda, e sente le bestie lassù azzuffarsi molto prima che arrivi in cima.",
		"alza gli occhi alla torre di volo mentre un addetto tira su un secchio di avanzi che sciaborda; da qualche parte sulla piattaforma una bestia lancia un verso affamato e roco.",
	},
	["org.muse.w17.strength.007"] = {
		"Gli habitué della locanda giurano che le tacche sullo stipite contano le risse. La locandiera dice che contano i conti non pagati. Nessuno ha chiesto quale lista sia più lunga.",
		"Sullo stipite della locanda ci sono cento tacche incise. Risse, dicono i clienti fissi. Debiti, dice la locandiera, e non sorride quando lo dice.",
		"Chiedi delle tacche sullo stipite della locanda e senti due storie: le zuffe, secondo chi beve, e le scodelle di stufato mai pagate, secondo la locandiera.",
	},
	["org.muse.w17.strength.008"] = {
		"Portale, banca, locanda. Orgrimmar mette i suoi tre argomenti migliori proprio all'ingresso.",
		"Appena passato il portale: un posto dove tenere i soldi e uno dove spenderli. Questa città conosce i suoi ospiti.",
	},
	["org.muse.w17.strength.009"] = {
		"Il portale principale ha visto più addii che benvenuti. Chi esce da lì marcia verso qualche guerra in fondo a una strada.",
		"Dal portale le strade partono verso tutti i guai di Kalimdor. Metà di quelli che ci passano sotto stanno salutando qualcuno, e fanno finta di niente.",
	},
	["org.muse.w17.strength.010"] = {
		"Ci vediamo alla banca, dicono tutti. Guarda qui: mezza Orgrimmar ferma davanti alla banca ad aspettare l'altra metà.",
		"Qui davanti alla banca stanno tutti aspettando qualcuno. Potrei vendere i posti a sedere.",
		"I gradini della banca sono il punto di ritrovo della città. Nessuno ha ancora trovato nessuno, ma tutti aspettano con grande pazienza.",
	},
	["org.muse.w17.strength.011"] = {
		"Un viaggiatore è appena entrato dal portale con uno zaino grande il doppio di lui e la faccia di chi ha fatto a piedi tutta la strada da Razor Hill per puntiglio.",
		"Dal portale arriva arrancando un venditore ambulante piegato sotto un fagotto grande come una tenda. Lo molla accanto alla banca e ci si siede sopra, e per un po' è l'anima più felice della valle.",
	},
	["org.muse.w17.strength.012"] = {
		"Ogni volta che passo il portale ed entro nella valle, qualcosa nelle mie spalle si scioglie. Non è proprio sicurezza. È qualcosa di più vicino all'appartenenza.",
		"Oltre il portale principale, e il frastuono della valle mi si chiude intorno come una porta che lascia fuori la strada. È tutto nostro, chiasso compreso.",
	},
	["org.muse.w17.strength.013"] = {
		"Alla banca il guerriero più ricco della città e il peone più povero aspettano allo stesso bancone. L'impiegato li tratta tutti e due con lo stesso educato disprezzo.",
		"La banca è l'unico posto di Orgrimmar dove un nome famoso non riceve inchini. Un rame è un rame, dice la faccia dell'impiegato, chiunque lo posi.",
		"Eroi, peoni, mercanti goblin: gli impiegati della banca li guardano tutti allo stesso modo, come una colonna di cifre che per caso parla.",
	},
	["org.muse.w17.strength.014"] = {
		"Ogni volta che fuori passa qualcosa di pesante, dal soffitto scende una polvere rossa sottile. Anche al chiuso, la città non si lascia dimenticare.",
		"Sotto questo tetto la strada è solo un brontolio, ma ogni carro che passa fa cadere dall'alto un po' di terriccio rosso.",
	},
	["org.muse.w17.strength.015"] = {
		"Offerta, rilancio, sospiro. La casa d'aste è solo un duello più lento.",
		"Qualcuno mi ha superato all'asta per un solo rame. Mi piacerebbe conoscerlo. Per poco.",
		"Battuto all'asta per un rame. Chiunque tu sia, spero che arrugginisca.",
	},
	["org.muse.w17.strength.016"] = {
		"La strada dal portale alla banca è consumata, liscia e chiara, lucidata da tutti gli stivali entrati in città per affari. Le abitudini di una città si vedono prima di tutto nella sua pietra.",
		"Fra il portale e la banca la roccia è scavata in un solco poco profondo. Nessuno ha tracciato quel sentiero: l'hanno fatto diecimila commissioni.",
	},
	["org.muse.w17.strength.017"] = {
		"Qui le notizie corrono più in fretta di chi le porta. Al portale qualcuno accenna a una scaramuccia nei Barrens, e quando arriva alla banca la scaramuccia è raddoppiata.",
		"Una voce, in questa valle, entra con le carovane e cresce di una taglia a ogni bancarella che passa. Arrivata alla porta della locanda, ci passa a malapena.",
		"Ogni carovana che entra dal portale porta una voce, e la valle la ingrassa. Quello che a Ratchet era un asse rotto, alla locanda arriva come una flotta affondata.",
	},
	["org.muse.w17.strength.018"] = {
		"Gli orchi sono usciti dai campi d'internamento con addosso soltanto stracci. Adesso accanto al loro portale c'è una banca piena di monete. Certe vittorie non fanno rumore.",
		"Fino a poco fa gli orchi non avevano niente che valesse la pena chiudere a chiave. Adesso questa città ha una banca. È una vittoria più silenziosa di qualunque battaglia, e forse più grande.",
	},
	["org.muse.w17.strength.019"] = {
		"Lupi, carri, viaggiatori e un peone con un rotolo di tela, tutti diretti alla stessa porta. In questa valle nessuno sta fermo a lungo.",
		"Fermati qui un attimo e qualcuno ti appoggerà addosso una cassa.",
		"Bisogna muoversi, in questa valle. L'ultimo che si è fermato a pensare si è ritrovato un lupo seduto sui piedi.",
	},
	["org.muse.w17.strength.020"] = {
		"In un angolo della locanda c'è una partita agli aliossi che dura da così tanto che nessuno ricorda chi stia vincendo, solo chi deve da bere a chi.",
		"C'è un angolo della locanda dove gli stessi quattro vecchi grunt tirano gli ossi e litigano, e non li ho mai visti né cominciare né smettere. Forse fanno parte dei muri.",
	},
	["org.muse.w17.strength.021"] = {
		"Un tetto e quattro muri fra me e gli imbonitori. La mia borsa e io possiamo riposare un momento.",
		"Fuori dal mercato, finalmente. Qui dentro nessuno cerca di vendermi niente, e continuo ad aspettare la fregatura.",
	},
	["org.muse.w17.strength.022"] = {
		"si lascia portare dalla lenta marea di viaggiatori fra la banca e la locanda, salutando con un cenno nessuno in particolare.",
		"attraversa la valle dalla banca verso la locanda, schivando un lupo, due peoni e una lite senza rallentare il passo.",
	},
	["org.muse.w17.strength.023"] = {
		"guarda un corriere goblin schizzare fuori dalla banca con una borsa stretta al petto e sparire nella folla prima che qualcuno possa chiedergli qualcosa.",
		"nota un fattorino uscire di corsa dalla casa d'aste, con un atto di vendita arrotolato tenuto alto come uno stendardo.",
	},
	["org.muse.w17.trade.001"] = {
		"Un sarto del Drag pagherebbe in monete sonanti gli scampoli di lino con cui mi pulisco gli stivali. Dovrei guardare più spesso nelle mie borse.",
		"Tutto quello che butto via qui ha un prezzo. Il lino strappato, la zanna spaiata, la pelle conciata a metà: a Orgrimmar qualcuno vuole tutto.",
	},
	["org.muse.w17.trade.002"] = {
		"Paga a un mercante orco il primo prezzo che dice e ti guarderà come se gli avessi rifiutato la mano. Qui contrattare non è avidità: è buona educazione.",
		"A Orgrimmar un affare concluso senza discutere è un piccolo insulto per chi vende. Si litiga per rispetto della merce.",
		"Una volta ho pagato il prezzo chiesto, senza una parola. Il mercante ci è rimasto male. Gli avevo rubato la parte migliore della giornata.",
	},
	["org.muse.w17.trade.003"] = {
		"I mercanti goblin vendono a tutti e non combattono per nessuno. In una città fatta per la guerra, sono gli unici che guardano la pace e ci vedono un mercato.",
		"Un mercante goblin mi ha spiegato che il cartello di Steamwheedle non ha nemici, solo clienti che non hanno ancora pagato. Credo volesse essere gentile.",
	},
	["org.muse.w17.trade.004"] = {
		"Quindici rame? A quel prezzo dovrebbe arrivare a casa con le sue gambe.",
		"Così tanto? Per quello? Deve come minimo cantarmi una canzone e fare l'inchino.",
		"Quanto vuoi? Ho comprato lupi interi per meno. Piccoli, d'accordo.",
	},
	["org.muse.w17.trade.005"] = {
		"rigira un ninnolo fra le mani, dice un prezzo e guarda il mercante ridere come a una bella battuta, prima di dirne un altro.",
		"fa un'offerta per una fibbia e riceve in risposta un'occhiata scandalizzata, un lungo sospiro e, finalmente, una controproposta.",
		"rimette giù qualcosa sul telo di un mercante, a malincuore, e si sente chiamare indietro prima del terzo passo.",
	},
	["org.muse.w17.trade.006"] = {
		"I mercanti qui comprano qualunque cosa abbia ancora un briciolo d'uso: una zanna scheggiata, una pelle strappata, uno stivale spaiato. Ci sarà pure un guerriero con una gamba sola che ringrazia per quello stivale.",
		"Ho venduto a un mercante uno stivale, uno solo, e ha pagato senza battere ciglio. Per ogni cosa c'è un compratore, in qualche angolo di Kalimdor.",
		"Un mercante si è preso il mio stivale spaiato senza domande e me l'ha pagato due rame. Ho smesso di chiedermi chi compri queste cose. Le vendo e basta.",
	},
	["org.muse.w17.trade.007"] = {
		"Il rame delle colline di Durotar entra in città a ceste ed esce in forma di fibbie, rivetti e chiodi. Lungo la strada fra le due cose diventa dieci volte più caro.",
		"Il minerale in quelle ceste è stato scavato qualche giorno fa nelle colline rosse. Quando diventa la fibbia sulla cintura di un grunt costa dieci volte tanto, e ha imparato a luccicare.",
	},
	["org.muse.w17.trade.008"] = {
		"Non ci sono due bilance d'accordo su niente, in questa città. Ogni mercante giura che la sua è quella onesta, e che le altre sbagliano di un pollice.",
		"Ho pesato lo stesso pugno d'argento a tre bancarelle e ho avuto tre risposte. Ogni mercante sembrava molto dispiaciuto per gli altri due.",
	},
	["org.muse.w17.trade.009"] = {
		"Ti do la metà. No? Allora la metà, più un complimento per la bancarella.",
		"Metà prezzo, e a tutta la locanda racconto che qui si tratta bene. No? Valeva la pena provarci.",
	},
	["org.muse.w17.trade.010"] = {
		"Sul telo di un mercante: cuoio tauren, perline troll, le polveri tappate di uno speziale dei Reietti, ferro orco. Su tutto il resto litighiamo, ma su un prezzo giusto andiamo d'accordo.",
		"Pelli di Mulgore, amuleti delle Echo Isles, ferro di Durotar e qualcosa di tappato che viene da Tirisfal, tutto su un solo banco. I nostri popoli si sono divisi un mercato prima di dividersi quasi ogni altra cosa.",
	},
	["org.muse.w17.trade.011"] = {
		"Un vecchio orco tiene una bancarella di semplici tazze d'argilla. Nei campi non aveva niente da vendere, nemmeno il lavoro delle sue mani. Dispone ogni tazza come se fosse la prova di qualcosa.",
		"C'è una bancarella di vasaio dove un vecchio orco allinea le tazze ben dritte. Mi hanno detto che ha passato metà della vita in un campo d'internamento. Adesso tutto quello che c'è su quel telo è suo.",
		"Tazze semplici, ciotole semplici, e un vecchio orco che le tocca una per una prima di venderle. Dietro i recinti, mi dicono, niente di quello che faceva restava suo.",
	},
	["org.muse.w17.trade.012"] = {
		"Ho venduto un anello a un mercante per un pugno d'argento. Adesso è sul suo telo al doppio, e lì fa più figura di quanta ne abbia mai fatta al mio dito.",
		"Il bracciale che ho venduto un'ora fa è già sul banco del mercante, a prezzo doppio. Ho quasi voglia di ricomprarlo, solo per vedere che faccia fa.",
	},
	["org.muse.w17.trade.013"] = {
		"Un goblin mi ha offerto credito. Condizioni facili, ha detto, e ha srotolato un contratto più lungo del mio braccio. Ho affrontato ogre che mi facevano meno paura.",
		"Credito facile, ha detto il goblin, battendo il dito su una pagina di scrittura minuscola. Ho letto tre righe e mi sono tremate le ginocchia. Pago in contanti, grazie.",
		"Mai farsi prestare soldi da un goblin, dicono i grunt. Gli ho chiesto le condizioni giusto per curiosità. Il contratto aveva una clausola sui miei nipoti.",
	},
	["org.muse.w17.trade.014"] = {
		"Qui non tutto si paga in monete. Un troll ha appena pagato una cinghia rammendata con due pesci e una storia, e al conciatore sembrava piacere soprattutto la storia.",
		"Ho visto una cinghia cambiare mano per un paio di pesci e un lungo racconto su uno squalo grande come una barca. Il conciatore ha detto che il racconto valeva più dei pesci.",
	},
	["org.muse.w17.trade.015"] = {
		"Comprare è facile. Vendere è un'arte. In tutte e due me la cavo male, ma di buon umore.",
		"Per comprare basta poco. Vendere bene è un mestiere, e io ci sto ancora facendo l'apprendistato.",
	},
	["org.muse.w17.trade.016"] = {
		"morde una moneta ricevuta di resto, come fanno i peoni, e cerca di avere l'aria di chi ha capito qualcosa.",
		"saggia un pezzo d'argento fra i denti, come in questo mercato sembrano fare tutti, senza la minima idea di che sapore dovrebbe avere.",
	},
	["org.muse.w17.trade.017"] = {
		"fa un conto veloce sulle dita, aggrotta la fronte al risultato e lo rifà da capo, nella speranza che sia cambiato.",
		"conta quel che deve e quel che resta, muovendo le labbra in silenzio, e arriva a una cifra che nessuno vorrebbe.",
		"ripassa gli acquisti fatti contandoli su una mano, finisce le dita e decide di non cominciare con l'altra.",
	},
	["org.muse.w17.trade.018"] = {
		"Metà di quello che si vende in questa città riparte dentro le casse: chiodi per Splintertree Post, sale per Crossroads, cuoio per chiunque abbia una guerra in corso. Le monete di Orgrimmar viaggiano più lontano di tanti grunt.",
		"I mercanti qui non vendono solo alla città. Le loro casse partono in groppa ai kodo verso Crossroads e oltre, dovunque ci sia un avamposto da tenere e un muro da riparare.",
	},
	["org.muse.w17.trade.019"] = {
		"Le monete sono monete, anche qui. Il goblin della bancarella mi ha servito senza battere ciglio, più di quanto avrebbero fatto i grunt alle mie spalle.",
		"Il mio argento, un mercante l'ha preso senza guardarmi due volte in faccia. In questa città i mercanti sono gli unici a cui non importa da che parte sto.",
	},
	["org.muse.w17.trade.020"] = {
		"Un tempo gli orchi non avevano altro da scambiare che la prossima guerra. Adesso la mia gente discute sul prezzo dei chiodi come qualunque popolo del mondo, e potrei starla a sentire tutto il giorno.",
		"Per una generazione il mio popolo ha commerciato in sangue. A sentire un fabbro orco che tira sul prezzo di due cardini, penso che fosse l'abitudine più dura da perdere, e l'abbiamo persa.",
	},
	["org.muse.w17.trade.021"] = {
		"Con la sabbia nell'aria gli imbonitori smettono di gridare e cominciano a indicare. Il mercato diventa quasi silenzioso, ed è la cosa più inquietante che abbia sentito in questa città.",
		"Sabbia nell'aria, e ogni mercante tira un telo sulla merce e una sciarpa sulla bocca. Trattare a colpi di sopracciglia è più lento, ma funziona.",
	},
	["org.muse.w17.trade.022"] = {
		"Sotto un tetto le grida degli imbonitori arrivano dalla porta a pezzi: fresco, metà prezzo, per te, amico. Anche attutite, stanno vendendo.",
		"Qui dentro il mercato mi arriva solo a brandelli, gridato attraverso la porta. In questa città nemmeno un muro riesce a tenere zitto un buon affare.",
	},
	["org.muse.w17.trade.023"] = {
		"soppesa due cinture quasi identiche, una per mano, mentre il venditore aspetta con la pazienza di un gatto a caccia.",
		"alza un paio di guanti verso la luce, poi un altro paio, poi di nuovo il primo, mentre il sorriso del mercante si assottiglia.",
	},
	["org.muse.w17.walls.001"] = {
		"Le travi grosse delle mura della città vengono da Ashenvale, dicono i grunt. Gli elfi lassù a nord non hanno perdonato nemmeno un'asse.",
		"Mezzo portale grande sta in piedi su legname di Ashenvale, mi ha detto un grunt tutto fiero. In quella foresta i kaldorei stanno ancora contando i ceppi.",
		"Ogni trave del portale grande è cresciuta in una foresta che la rivuole indietro, si dice al portale, e i grunt la trovano una cosa molto divertente.",
	},
	["org.muse.w17.walls.002"] = {
		"si ferma a guardare un peon in cima a una scala che lima la punta di uno spuntone delle mura, colpi lenti, serissimo.",
		"piega la testa verso un peon in alto sulle mura che raddrizza a martellate uno spuntone storto, poi ne prova la punta col pollice e fa una smorfia.",
		"alza gli occhi su un peon appollaiato sulle mura con una cote, intento ad affilare uno spuntone con la cura che di solito si riserva a un'ascia.",
	},
	["org.muse.w17.walls.003"] = {
		"Il portale grande non l'ho mai visto chiuso. Non so se qualcuno si ricorda ancora come si fa.",
		"Il portale resta spalancato, come se chiuderlo fosse un'offesa per i grunt che ci stanno davanti. Forse lo sarebbe.",
		"Un portale così, e nessuno si prende la briga di chiuderlo. La serratura sono i grunt.",
	},
	["org.muse.w17.walls.004"] = {
		"Da ogni fascia di ferro delle mura scende la ruggine a lunghe strisce, e ormai non si capisce dove finisce la roccia e comincia il ferro.",
		"Il ferro delle mura piange ruggine nella pietra rossa. Ancora qualche anno e la città sarà tutta di un colore solo.",
	},
	["org.muse.w17.walls.005"] = {
		"Su un palo del portale grande qualcuno ha inciso una lunga fila di tacche, una per ogni turno di guardia, immagino. Nessuno ne ha mai cancellata una.",
		"Al portale grande c'è un palo segnato da centinaia di taccheline. Turni di guardia, mi ha detto un grunt. Non ha detto quanti fossero suoi.",
		"Qualcuno tiene il conto dei turni sul legno del portale, una tacca per volta, e alle tacche ormai sta finendo il palo.",
	},
	["org.muse.w17.walls.006"] = {
		"Dalla strada, le mura dicono: state fuori. Da dentro dicono l'altra metà: qui non è entrato nessuno.",
		"Viste da Durotar, le mura sono una minaccia. Viste da dentro, una promessa. La pietra è la stessa.",
		"Chi viene da fuori legge le mura come un avvertimento. Chi ci vive dietro legge la stessa pietra come un tetto.",
	},
	["org.muse.w17.walls.007"] = {
		"Chi ha costruito il portale grande l'ha pensato per i giganti, e poi ci ha messo di guardia degli orchi.",
		"Dal portale grande passerebbe un kodo col cappello in testa. Chi aspettavano, di preciso?",
	},
	["org.muse.w17.walls.008"] = {
		"In cima alle torri delle mura, piccole come pali di uno steccato, le vedette guardano Durotar perché il resto della città non debba farlo.",
		"Sulle torri delle mura ci sono delle sentinelle, scure contro il cielo. Me ne accorgo solo quando una sposta il peso, cioè quasi mai.",
		"Su quelle torri c'è qualcuno a ogni ora, a fissare un gran mucchio di niente. La città dorme più tranquilla per questo.",
	},
	["org.muse.w17.walls.009"] = {
		"Passando sotto il portale grande tutti chinano un po' la testa, perfino i goblin che ci passerebbero dieci volte. L'ho fatto anch'io, e non saprei dire perché.",
		"Strana cosa, il portale grande: la gente abbassa la testa quando ci passa sotto, e lì potrebbe entrare un tauren sulle spalle di un altro tauren.",
	},
	["org.muse.w17.walls.010"] = {
		"Una toppa d'argilla fresca su un muro vecchio, più chiara del resto. Qualcuno sta ancora finendo Orgrimmar.",
		"Qua e là sulle mura si vede malta nuova, pallida contro il rosso. La città non ha finito di farsi, e non finge il contrario.",
		"Peon con secchi d'argilla bagnata vanno da una crepa all'altra lungo le mura. Orgrimmar si ricuce come si ricuce un guerriero: spesso, e senza storie.",
	},
	["org.muse.w17.walls.011"] = {
		"Un uccellaccio da carogne si è preso lo spuntone più alto delle mura e se ne sta lì, come se la città intera fosse un pasto che vale la pena aspettare.",
		"In cima a uno spuntone delle mura c'è un grosso uccello spelacchiato che ci guarda tutti con interesse professionale.",
		"Ogni spuntone di quelle mura è fatto per tenere lontani i nemici, e un solo uccello arruffato ha trasformato il più alto in un posatoio.",
	},
	["org.muse.w17.walls.012"] = {
		"Belle mura. Non vorrei mai doverle scalare.",
		"Guarda che mura. Chi attacca Orgrimmar ci arriva in salita, contro il ferro.",
		"Bel lavoro di pietra. Ogni palmo dice di no.",
	},
	["org.muse.w17.walls.013"] = {
		"Chi ha costruito non ha fatto la guerra al canyon. Dove la roccia era alta l'ha lasciata stare, e dove calava ha riempito il buco di legno e ferro.",
		"Metà delle mura della città è solo canyon, così com'era. Gli orchi hanno rattoppato i punti in cui la roccia si era scordata di fare da muro.",
	},
	["org.muse.w17.walls.014"] = {
		"Là fuori nelle Barrens sono solo un viandante come tanti. Dietro queste mura sono Orda, e sembra saperlo perfino la pietra.",
		"C'è una calma tutta particolare nel camminare sotto mura che stanno dalla tua parte. Non sapevo che mi mancasse finché non l'ho sentita.",
	},
	["org.muse.w17.walls.015"] = {
		"piega la testa all'indietro per seguire il muro fino agli spuntoni, e deve continuare a piegarla più a lungo del previsto.",
		"misura a occhio l'altezza delle mura, rinuncia a metà e si accontenta di un fischio sommesso.",
	},
	["org.muse.w17.walls.016"] = {
		"Perfino le capanne sono fatte come piccoli fortini: pelli su travi pesanti, spuntoni lungo il colmo, una porta da tenere chiusa con una spalla.",
		"Qui le case sono mura in miniatura. Pali grossi, pelli tese, ferro agli angoli. A Orgrimmar nessuno costruisce niente che non regga un colpo.",
		"Guarda una capanna abbastanza a lungo e ci ritrovi le mura della città: lo stesso legname, gli stessi spuntoni, la stessa forma semplice e testarda.",
	},
	["org.muse.w17.walls.017"] = {
		"Ehi, lassù sulle mura! Arriva qualcosa? No? Bene. Continua ad annoiarti.",
		"Bella salita per una vedetta. Spero che la zuppa gliela mandino su con una corda.",
	},
	["org.muse.w17.walls.018"] = {
		"passa una mano lungo un grosso palo d'angolo, levigato all'altezza delle spalle da tutti i carichi che ci sono strisciati contro.",
		"si ferma accanto a un palo fasciato di ferro dove il passaggio svolta, col legno sbiancato da mille spalle di passaggio.",
	},
	["org.muse.w17.walls.019"] = {
		"Qui nessuno ha alzato una mano contro di me. Eppure ogni grunt che incrocio mi guarda un attimo più a lungo del troll che mi sta accanto, e non posso dargli torto.",
		"Le mura sono belle, in un modo brutale. Le ammirerei di più se non stessi dalla parte sbagliata della guerra che le ha fatte costruire.",
	},
	["org.muse.w17.wisdom.001"] = {
		"Un vecchio tauren siede accanto al sentiero della Valley of Wisdom senza fare assolutamente niente, e lo fa meglio di chiunque altro a Orgrimmar.",
		"Un tauren anziano, nella Valley of Wisdom, siede sulla stessa pietra da che si ricordi. Non aspetta. È lì e basta, come il canyon.",
		"Lungo il sentiero per la sala del Capoguerra, un anziano tauren non si è mosso da quando l'ho notato. Un lupo gli si è acciambellato contro, come se fosse una roccia.",
	},
	["org.muse.w17.wisdom.002"] = {
		"I Kor'kron sono la guardia personale di Thrall, scelti uno per uno. Un grunt mi ha detto che li prendono non tanto per la forza, quanto per quello che non fanno quando nessuno li guarda.",
		"Non tutti i grunt possono stare fra i Kor'kron. Quelli a cui l'ho chiesto dicono che il Capoguerra cerca una testa fredda prima di un braccio forte. Quelli scartati la raccontano diversamente.",
		"Un grunt pronuncia la parola Kor'kron come altri dicono il nome di una montagna: un po' più piano, un po' più lento.",
	},
	["org.muse.w17.wisdom.003"] = {
		"Dal fondo della Valley of Wisdom, Grommash Hold sembra meno un palazzo che un accampamento di guerra che ha deciso di mettere radici.",
		"Non è fatto per essere ammirato, Grommash Hold. Se ne sta in cima alla sua valle come un capo seduto su un tronco, e ti sfida a chiamarlo modesto.",
	},
	["org.muse.w17.wisdom.004"] = {
		"Hanno dedicato una valle alla saggezza e ci hanno messo la sala del Capoguerra. Saggio da parte loro.",
		"Valley of Wisdom. Bel nome. Peccato che non regalino un assaggio.",
	},
	["org.muse.w17.wisdom.005"] = {
		"Thrall e i suoi orchi attraversarono il mare senza niente; i tauren di Cairne erano braccati per le pianure dai centauri da più tempo di quanto si potesse contare. Ognuno sapeva cosa vuol dire aver bisogno di un posto dove stare.",
		"Gli orchi aiutarono i tauren a spezzare la morsa dei centauri, e i tauren hanno buona memoria per l'aiuto ricevuto. Si vede nella Valley of Wisdom, da come un vecchio toro saluta col capo un grunt alto la metà di lui.",
		"Grunt e tauren si incrociano sul sentiero verso la sala del Capoguerra con un cenno che contiene i debiti saldati di un'intera guerra.",
	},
	["org.muse.w17.wisdom.006"] = {
		"guarda una tauren piantare dritto un piccolo totem accanto al sentiero e raddrizzarlo due volte, come si sistema il colletto a un amico.",
		"rallenta per guardare una tauren che s'inginocchia sul sentiero, affonda nella polvere un totem intagliato e poi si siede sui talloni a giudicarlo.",
		"passa con cura attorno a un piccolo totem piantato accanto al sentiero, come i tauren della valle sembrano aspettarsi.",
	},
	["org.muse.w17.wisdom.007"] = {
		"aspetta mentre un kodo sdraiato nella polvere della Valley of Wisdom valuta se spostarsi, e decide di no.",
		"aggira un kodo che si è sdraiato in mezzo alla Valley of Wisdom, come fa tutto il resto del traffico, come un ruscello aggira un macigno.",
		"scambia una lunga occhiata con un kodo che rumina nella polvere vicino alla sala del Capoguerra; vince il kodo.",
	},
	["org.muse.w17.wisdom.008"] = {
		"I tauren parlano della Madre Terra come se ascoltasse appena sotto il selciato. In una città scavata nella roccia rossa, non è difficile immaginare che abbia orecchie.",
		"Un'anziana tauren tocca terra prima di parlare, ogni volta. Per la Madre Terra, mi dicono. Anche su una pietra lavorata dagli orchi, a quanto pare, vale lo stesso.",
		"Perfino gli orchi della Valley of Wisdom camminano più leggeri vicino ai totem dei tauren. Nessuno vuole essere quello che ha svegliato la Madre Terra.",
	},
	["org.muse.w17.wisdom.009"] = {
		"Rallenta, mi ha detto un tauren. A Orgrimmar. Ho riso, poi ci ho provato, e nessuno mi è venuto addosso. Strano.",
		"I tauren continuano a dirmi di prendermela con calma. In questa città? E dove la metto, la calma?",
		"Fai con calma, dice il tauren. Facile per lui: tutti gli fanno strada.",
	},
	["org.muse.w17.wisdom.010"] = {
		"Prima sciamano, poi Capoguerra: così gli anziani della Valley of Wisdom descrivono Thrall. Forse è per questo che il terreno intorno alla sua sala sembra avere meno fretta del resto.",
		"Thrall ascolta gli spiriti della terra, dicono gli sciamani, come un buon capo ascolta i suoi esploratori. La valle intorno alla sua sala pare averne preso l'abitudine.",
		"Thrall parla con gli elementi prima che con i suoi capi, sostengono gli sciamani. Mi piacerebbe sapere chi dei due discute di più.",
	},
	["org.muse.w17.wisdom.011"] = {
		"Qui nella Valley of Wisdom la folla si dirada e le voci si abbassano. Perfino i lupi sembrano camminare più piano, come se qualcuno glielo avesse chiesto con garbo.",
		"Il chiasso della città arriva nella Valley of Wisdom stanco e dimezzato, e mi sorprendo a rallentare per non essere la cosa più rumorosa che c'è.",
		"La Valley of Wisdom ha un passo suo, e non è quello di Orgrimmar. Perfino i miei stivali sembrano essersene accorti.",
	},
	["org.muse.w17.wisdom.012"] = {
		"Qui il terreno è spazzato. Nel resto di Orgrimmar la polvere fa come le pare; nella Valley of Wisdom qualcuno le dice dove posarsi.",
		"Qualcuno spazza questa valle: si vedono i segni della scopa. In una città di polvere rossa, è quanto di più vicino ci sia a una dichiarazione di rispetto.",
		"Niente sterco, niente mucchi di rottami: la Valley of Wisdom è l'angolo più ordinato di Orgrimmar, e i tauren ne sembrano compiaciuti, in silenzio.",
	},
	["org.muse.w17.wisdom.013"] = {
		"rallenta senza volerlo sulla salita verso la sala del Capoguerra, come pare faccia quasi chiunque, e sistema una cinghia che non era storta.",
		"si accorge che il passo si accorcia risalendo la Valley of Wisdom, e lo lascia fare.",
	},
	["org.muse.w17.wisdom.014"] = {
		"Un vecchio tauren mi ha detto che la terra è paziente perché ha visto finire ogni fretta. Credo che lo dicesse con gentilezza. Ci sto ancora rimuginando.",
		"Gli anziani della Valley of Wisdom dicono che ciò che ha radici profonde non ha bisogno di gridare. A Orgrimmar suona quasi come una sfida.",
		"Vedendomi passare di fretta, un anziano tauren ha detto soltanto: la pietra sarà ancora lì. Ho rallentato. Non so bene perché.",
	},
	["org.muse.w17.wisdom.015"] = {
		"Forza a te, Kor'kron. No? Neanche un grugnito? Va bene così.",
		"Salute, Kor'kron. Prendo quel silenzio per un caloroso benvenuto.",
	},
	["org.muse.w17.wisdom.016"] = {
		"Qualcuno mi ha giurato che i Kor'kron sbattono le palpebre a turno, così la porta del Capoguerra non resta mai senza sguardi. Li sto osservando. Ci credo.",
		"Ho provato a cogliere un Kor'kron mentre sbatte le palpebre. Ho perso. Pare che facciano a turno.",
	},
	["org.muse.w17.wisdom.017"] = {
		"La sabbia scende soffiando per la Valley of Wisdom e i tauren chiudono gli occhi e aspettano che passi, come macigni. Io ho metà della loro pazienza e il doppio della sabbia fra i denti.",
		"La sabbia attraversa la valle sibilando, e i tauren le voltano senza una parola le loro larghe schiene. Io mi accuccio dietro al più vicino e la chiamo saggezza.",
	},
	["org.muse.w17.wisdom.018"] = {
		"Thunder Bluff è lontana, oltre le Barrens, ma i tauren della Valley of Wisdom se ne portano dietro un pezzetto: un campanello d'osso, un sacchetto d'erba delle pianure, un modo più lento di stare in piedi.",
		"I tauren della valle del Capoguerra camminano come se le pianure di Mulgore continuassero sotto la pietra. Forse, per loro, è così.",
		"Una tauren della Valley of Wisdom ha piantato un ciuffo d'erba delle pianure in un vaso crepato accanto alla porta. In questa polvere è la cosa più verde nel raggio di un miglio.",
	},
	["org.muse.w17.wisdom.019"] = {
		"osserva un vecchio orco e un vecchio tauren che dividono una panca nella Valley of Wisdom, senza dirsi niente così a lungo che diventa una conversazione.",
		"passa accanto a due anziani seduti insieme vicino alla sala del Capoguerra, un orco e un tauren, entrambi muti, che ogni tanto annuiscono nello stesso istante.",
	},
	["org.muse.w17.wisdom.020"] = {
		"Dalla Valley of Wisdom vedo la sala del nostro Capoguerra sopra le teste della folla. Ovunque mi porti la strada, mi piace sapere esattamente dove si trova.",
		"La sala del nostro Capoguerra sta in cima alla sua valle, semplice e salda. Qualunque cosa succeda là fuori nel mondo, c'è un tetto che tutta l'Orda può indicare.",
		"Per quanto lontano io vada, l'Orda ha una sala con un fuoco acceso e un Capoguerra che ascolta. Dalla Valley of Wisdom ne vedo il tetto.",
	},
	["org.muse.w17.wry.001"] = {
		"Ho chiesto la strada a un grunt. Ha indicato con l'ascia, e io ho seguito l'ascia, di buon passo.",
		"Le indicazioni, a Orgrimmar, arrivano con un'arma attaccata. Chiedi, un grunt indica con l'ascia, e smetti di chiedere.",
	},
	["org.muse.w17.wry.002"] = {
		"Si dice che a Orgrimmar ci sia un angolo tranquillo, da qualche parte. Ogni grunt a cui lo chiedo mi guarda come se gli avessi chiesto dove tengono il mare.",
		"Sto cercando un posto tranquillo in questa città. Un peon mi ha detto che ce n'è uno, ma al momento è occupato.",
	},
	["org.muse.w17.wry.003"] = {
		"Adesso ho peli di lupo su tutto quello che possiedo. Non ho toccato nemmeno un lupo. È la città che ti perde il pelo addosso.",
		"Posso spazzolare il mantello quanto voglio, resta mezzo lupo. A Orgrimmar è praticamente un'uniforme.",
	},
	["org.muse.w17.wry.004"] = {
		"Ancora non distinguo la chiamata alle armi da quella per la cena. A giudicare da quanto corre la folla, non ci riesce nessuno.",
		"Un tamburo ha appena attaccato, chissà dove. Battaglia o stufato? In questa città la folla corre nella stessa direzione per entrambi.",
		"Ogni rullo di tamburo in questa città può voler dire guerra, festa o un tamburino con troppo tempo libero. Ho smesso di indovinare.",
	},
	["org.muse.w17.wry.005"] = {
		"Un orco mi ha appena ringraziato con un pugno sulla spalla. Credo che adesso siamo amici. La spalla non ne è convinta.",
		"Quella era una pacca amichevole, eh? Allora non voglio conoscere l'altro tipo.",
	},
	["org.muse.w17.wry.006"] = {
		"si blocca insieme a mezza strada quando un grunt starnutisce; tre mani vanno a tre cinture, e poi ridono tutti un po' troppo forte.",
		"sussulta quando qualcuno lì vicino fa cadere una pentola, e vede mezza folla mettere mano alle armi prima ancora che la pentola smetta di rotolare.",
	},
	["org.muse.w17.wry.007"] = {
		"Ho provato a fischiettare camminando. Mi ha risposto un lupo, poi un grunt, e a nessuno dei due piaceva il motivo.",
		"Fischiettare a Orgrimmar è un errore. Ogni lupo a portata d'orecchio la prende come una cosa personale.",
		"Promemoria: niente fischi vicino ai recinti dei lupi. Né vicino ai grunt. Né da nessuna parte, a dirla tutta.",
	},
	["org.muse.w17.wry.008"] = {
		"Non trovi qualcosa a Orgrimmar? Fermati in mezzo. Prima o poi qualcuno ti viene addosso, e a quel punto chiedi a lui la strada.",
		"Il modo migliore per trovare qualcosa in questa città: fermarsi in mezzo alla strada e aspettare che qualcuno ti spinga nella direzione giusta.",
	},
	["org.muse.w17.wry.009"] = {
		"Ho il forte sospetto che i grunt del portale li scelgano in base alla larghezza. Non ce n'è uno che si possa aggirare in meno di tre passi.",
		"Di guardia al portale ci mettono grunt fatti come il portale. Immagino sia quella tutta la prova.",
	},
	["org.muse.w17.wry.010"] = {
		"risponde al cenno di un grunt con un cenno della stessa identica profondità, come se lo scambio avesse delle regole e le conoscessero entrambi.",
		"scambia un cenno secco con un grunt di passaggio, misurato al dito, poi ha l'aria vagamente soddisfatta del risultato.",
	},
	["org.muse.w17.wry.011"] = {
		"A Orgrimmar una richiesta educata è qualsiasi cosa detta senza mostrare le zanne. Su questa misura, la mia cortesia è stata impeccabile.",
		"Ho imparato le buone maniere del posto: per favore lo dici con la voce, non coi denti, e stai un passo più indietro di quanto sembri necessario.",
	},
	["org.muse.w17.wry.012"] = {
		"Come? No, dicevo... lascia stare. Te lo scrivo dopo.",
		"Ripetilo più forte. No, più forte. Va bene, faccio di sì con la testa.",
	},
	["org.muse.w17.wry.013"] = {
		"Ogni peon di questa città ha un piano per vincere la prossima guerra. Nessuno gliel'ha chiesto, e tutti l'hanno sentito.",
		"Ascolta i peon abbastanza a lungo e imparerai come si manda avanti l'Orda come si deve. Quasi sempre con meno tronchi da portare.",
	},
	["org.muse.w17.wry.014"] = {
		"si mette al passo con un grunt che brontola dei suoi stivali e annuisce come fossero vecchi compagni d'armi; il grunt non si volta neanche una volta.",
		"si ritrova a camminare accanto a un grunt che borbotta per mezza strada, dandogli ragione con garbo su tutto: i lupi, la polvere, il prezzo dei chiodi.",
	},
	["org.muse.w17.wry.015"] = {
		"Il grunt più feroce che abbia visto in questa città ha appena perso una gara di sguardi con un bambino di quattro anni. L'ha presa bene. Ha sbattuto le palpebre per primo e se n'è andato.",
		"Un piccolo orco fissa un grunt da un bel po'. Il grunt lo fissa a sua volta. Nessuno dei due cede, e la strada comincia a fare il tifo.",
	},
	["org.muse.w17.wry.016"] = {
		"Perfino i muri qui sembrano volermi dire due parole.",
		"Giuro che quel muro mi ha appena guardato storto. A Orgrimmar ha il muso lungo tutto, perfino la muratura.",
	},
	["org.muse.w17.wry.017"] = {
		"Nessuno ha mai disegnato una mappa di Orgrimmar. La città la impari facendoti spingere in giro finché gli spintoni non cominciano ad avere un senso.",
		"Chiedi una mappa della città e un grunt si batte un dito sulla fronte. A quanto pare la tengono lì.",
	},
	["org.journey.w18.land.001"] = {
		"scende in una lenta spirale sopra il canyon, e ogni giro avvicina la città: prima le mura, poi i tetti, poi le facce.",
		"cala a spirale nel canyon, e a ogni giro la città si fa più nitida: le mura, poi i tetti, poi il colore delle tende, poi la gente.",
	},
	["org.journey.w18.land.002"] = {
		"scende gli ultimi palmi mentre le ali si spalancano, e un anello di polvere salta via dalla piattaforma e rotola oltre il bordo.",
		"si posa con un sussulto quando la bestia frena con entrambe le ali, spazzando la paglia dalle assi giù sulla strada.",
	},
	["org.journey.w18.land.003"] = {
		"A terra. Le ginocchia si sono prese quasi tutto il colpo e vorrebbero che fosse messo agli atti.",
		"La bestia atterra come un sacco lasciato cadere e i denti mi sbattono. Eleganza, come sempre.",
		"Giù, con un tonfo che mi è salito dritto per la schiena e ancora cerca l'uscita.",
	},
	["org.journey.w18.land.004"] = {
		"scende sotto l'orlo del canyon, e le pareti si alzano ai lati finché il cielo aperto non diventa solo il coperchio della città.",
		"cala sotto la linea dell'orlo, e il rumore della città si richiude sul volo come l'acqua su un sasso.",
	},
	["org.journey.w18.land.005"] = {
		"Ultima virata sopra la Valley of Strength, e ho già misurato la fila alla banca. Corta. Un buon presagio, per quanto valgono i presagi in questa città.",
		"Prima ancora che gli artigli tocchino la torre ho scelto il percorso: banca, poi locanda, poi quel che viene.",
	},
	["org.journey.w18.land.006"] = {
		"aspetta sulla piattaforma mentre l'addestratore controlla zampe e ali della bestia, una per una, prima di degnare il passeggero di uno sguardo.",
		"viene del tutto {g:ignorato|ignorata} mentre l'addestratore passa le mani sulle ali della bestia in cerca di danni. I passeggeri, a quanto pare, si arrangiano da sé.",
	},
	["org.journey.w18.land.007"] = {
		"La prima cosa che Orgrimmar ti regala all'atterraggio è l'odore dei recinti delle bestie. La seconda è la cucina della locanda, e ripaga ampiamente la prima.",
		"Giù, dentro l'odore della città: lupo, ferro caldo, fuochi di cucina e, proprio sotto il naso, l'ultimo pasto delle bestie volanti.",
	},
	["org.journey.w18.land.008"] = {
		"lotta con le cinghie della sella con le dita rigide, e l'ultima fibbia non cede finché l'addestratore non allunga una mano e la apre con uno scatto.",
		"armeggia con una fibbia che l'aria alta sembra aver bloccato, mentre la bestia sposta il peso, impaziente di mangiare.",
	},
	["org.journey.w18.land.009"] = {
		"Dov'è la cosa più vicina che non si muove? Vorrei appoggiarmici.",
		"C'è un muro da queste parti che stia al suo posto? Lo chiedo per le mie ginocchia.",
		"Qualcuno mi tenga su. Non tu, bestia.",
	},
	["org.journey.w18.land.010"] = {
		"Dopo tutta quell'aria aperta, le pareti del canyon mi si chiudono intorno come un mantello pesante rimesso sulle spalle. Forse troppo caldo, ma è della mia misura.",
		"Il cielo alle spalle, muri rossi da ogni lato. Dovrebbe sembrare stretto. Invece è come chiudersi una porta dietro.",
	},
	["org.journey.w18.land.011"] = {
		"atterra su una piattaforma resa viscida dalla pioggia, con gli artigli della bestia che slittano sulle assi bagnate prima di trovare presa.",
		"scende attraverso la pioggia in una città diventata scura e lucida, con ogni muro rosso che gronda.",
	},
	["org.journey.w18.land.012"] = {
		"atterra sotto un brontolio di tuono, e l'addestratore tira dentro la bestia per le redini prima che il lampo successivo la spaventi.",
		"piomba dalla tempesta sulla torre a gran velocità, con le ali della bestia che tremano a ogni schianto di tuono sopra il canyon.",
	},
	["org.journey.w18.land.013"] = {
		"Arrivando al tramonto, guardo la città accendersi una lanterna dopo l'altra sotto i miei stivali, come se avesse aspettato che la vedessi.",
		"Le lanterne di Orgrimmar si accendono sotto le ali mentre scendiamo nel crepuscolo. Laggiù qualcuno è molto svelto con lo stoppino.",
	},
	["org.journey.w18.land.014"] = {
		"scende su assi arroventate dalla giornata, e sente il calore salire da entrambe le suole insieme.",
		"atterra nel pieno caldo del giorno, dove l'unica ombra della piattaforma spetta, di diritto, alle bestie.",
	},
	["org.journey.w18.land.015"] = {
		"scende dalla prima luce sopra l'orlo giù nel canyon, dove le strade sono ancora immerse nell'ombra e le lanterne ancora accese.",
		"lascia l'alba lassù sull'orlo e atterra nella penombra azzurra di sotto, dove la città comincia appena a muoversi.",
	},
	["org.journey.w18.land.016"] = {
		"scende nella notte seguendo le torce della città, con la bestia che trova la torre tra i tetti illuminati come se avesse la mappa di ogni lanterna.",
		"atterra nella notte con un tonfo che sveglia le bestie sul trespolo, e per un momento tutta la torre protesta.",
	},
	["org.journey.w18.land.017"] = {
		"Dopo il silenzio di lassù, la città torna nell'ordine sbagliato: una risata, un martello, un lupo, qualcuno che impreca contro un goblin. Ai piedi della torre si è già rimessa in fila.",
		"Il rumore non arriva tutto insieme. Prima una voce sola, poi una dozzina, poi l'intera Valley of Strength, come se qualcuno continuasse ad aggiungere legna al fuoco.",
	},
	["org.journey.w18.land.018"] = {
		"incrocia un peone che sale di corsa con un secchio di avanzi, e che ha occhi solo per la bestia: del passeggero non sembra accorgersi affatto.",
		"si fa da parte per un peone che porta il pasto alla bestia; la bestia, dal canto suo, si scorda del passeggero appena sente l'odore del secchio.",
	},
	["org.journey.w18.land.019"] = {
		"Ogni volo finisce allo stesso modo: un animale che potrebbe mangiarmi mi posa giù con delicatezza, e poi un goblin cerca di vendermi qualcosa.",
		"La bestia avrebbe potuto inghiottirmi in un boccone e non l'ha fatto. Il primo goblin ai piedi della torre sta già rimediando.",
	},
	["org.journey.w18.land.020"] = {
		"aspetta che la bestia scelga il suo posto sulla piattaforma affollata, infilandosi tra due compagne che soffiano e poi, di malavoglia, fanno spazio.",
		"percorre gli ultimi metri a passo d'uomo mentre la bestia si incunea tra quelle già appollaiate, che protestano tutte contro l'ultima arrivata.",
	},
	["org.journey.w18.land.021"] = {
		"Durante la discesa il mare compare per un attimo oltre le creste a oriente. I veterani della locanda ricordano vele di Kul Tiras laggiù, nei primi anni della città. Adesso non c'è niente.",
		"Uno scorcio d'acqua aperta oltre le creste mentre la bestia vira per entrare. I vecchi orchi dicono che un tempo su quel mare c'erano navi nemiche, a guardare le mura che salivano.",
	},
	["org.journey.w18.land.022"] = {
		"Vi comunico che il cielo è ancora al suo posto. Non c'è di che.",
		"A terra. Il cielo vi manda i suoi saluti.",
		"Scendo dal cielo, e non mi ha dato neanche un ricordino.",
	},
	["org.journey.w18.land.023"] = {
		"si ferma ai piedi della torre per svuotare uno stivale, e ne esce un mucchietto di qualche altro posto, che finisce sulla pietra.",
		"si ferma accanto alla torre a scuotere uno stivale, e tutta la sabbia raccolta in cielo si unisce in silenzio a quella della città.",
	},
	["org.journey.w18.land.024"] = {
		"Lassù mi ero {g:dimenticato|dimenticata} di quanta gente ci stia in questo canyon. La folla ai piedi della torre me lo ricorda con una spinta sola.",
		"Cento spalle tra me e la locanda. Dopo il cielo, Orgrimmar sembra una pentola piena col coperchio sopra.",
	},
	["org.journey.w18.land.025"] = {
		"atterra mentre un corno suona da qualche parte verso il portale, e la bestia getta indietro la testa e risponde.",
		"scende mentre un corno suona dalle mura, e la bestia, prendendolo forse per un benvenuto, risponde con uno strillo.",
	},
	["org.journey.w18.land.026"] = {
		"Scendendo cerco per primo il fumo del camino della locanda. Vuol dire che qualcuno sta cucinando, e per una volta quel qualcuno non sono io.",
		"La prima cosa che individuo dall'alto è il fumo sopra la locanda. Non Grommash Hold, non le mura. Una scodella di stufato batte il Capoguerra, per un momento.",
	},
	["org.journey.w18.land.027"] = {
		"entra basso sopra la Valley of Spirits nell'avvicinamento, e il fumo di qualche erba che brucia fuori da una capanna sale incontro alle ali.",
		"sfiora le capanne della Valley of Spirits nell'ultima virata, abbastanza vicino da vedere un troll alzare gli occhi da una pentola e agitare un mestolo nel fumo.",
	},
	["org.journey.w18.land.028"] = {
		"Scendo. Con grazia. Più o meno.",
		"Le gambe sono arrivate. Il resto di me le raggiunge tra poco.",
		"Piedi, vi presento la torre. Torre, sii gentile con i piedi.",
	},
	["org.journey.w18.land.029"] = {
		"lascia la viverna all'addestratore e al suo pasto, e la bestia sta già sbranando un cosciotto prima che chi l'ha cavalcata arrivi alla discesa.",
		"consegna le redini della viverna, e la bestia si fa largo a spallate verso la mangiatoia con le maniere di un grunt a fine turno.",
	},
	["org.journey.w18.land.030"] = {
		"Orgrimmar sotto le ali, e ogni stendardo sulle sue mura è uno sotto cui starei. È bello scendere tra i miei.",
		"Gli stendardi dell'Orda sulle mura, poi sulle torri, poi proprio accanto all'atterraggio. Dopo tanta strada, è bello posarsi in mezzo a loro.",
	},
	["org.journey.w18.land.031"] = {
		"Attenti là sotto! Arriva la bestia.",
		"Liberate la piattaforma! Non ci fermeremo con dolcezza.",
		"Occhio là sotto! Passano le ali.",
	},
	["org.journey.w18.land.032"] = {
		"È l'atterraggio più morbido che mi sia mai capitato in questa città.",
		"Atterraggio delicato. Più gentile dell'accoglienza che di solito trovo laggiù.",
	},
	["org.journey.w18.land.033"] = {
		"Tutte le ossa al loro posto? Tutte le ossa al loro posto.",
		"Braccia, due. Gambe, due. Bel volo.",
	},
	["org.journey.w18.perch.001"] = {
		"mette piede su assi consumate e sbiancate da più stivali di quanti se ne possano contare, e la piattaforma scricchiola appena sotto il peso.",
		"posa il piede sul pianerottolo della torre, dove le assi hanno preso una lucentezza opaca sotto ogni viaggiatore che la città abbia mai mandato da qualche parte.",
	},
	["org.journey.w18.perch.002"] = {
		"Ogni bestia sul trespolo gira la testa quando atterriamo, come una fila di vecchi orchi in locanda che squadrano chi è appena entrato.",
		"Una dozzina di grosse teste si girano a esaminarmi mentre scendo. Giudizio rapido: niente di interessante, e già si sono scordate di me. Giusto così.",
	},
	["org.journey.w18.perch.003"] = {
		"scende dalla torre dentro il rumore, che cresce a ogni passo, come calarsi in una pentola che sta per bollire.",
		"prende la lunga discesa dal pianerottolo, e ogni curva lascia entrare un altro strato di città: le voci, poi i martelli, poi l'odore della locanda.",
	},
	["org.journey.w18.perch.004"] = {
		"Borsa, zaino, tutti e due gli stivali, tutte le dita. Stavolta il cielo non si è preso niente. Ricontrollo in fondo.",
		"Un inventario veloce prima di scendere: tutto quello che avevo in volo ce l'ho ancora addosso. Un punto per la bestia.",
	},
	["org.journey.w18.perch.005"] = {
		"Datele da mangiare bene, a quella bestia. Se l'è meritato.",
		"Brava bestia. Qualunque cosa le diate da mangiare, continuate così.",
		"Dite alla bestia che ha volato bene. Non le importerà, ma diteglielo.",
	},
	["org.journey.w18.perch.006"] = {
		"raddrizza un mantello tutto attorcigliato e liscia quello che l'aria alta ha combinato al resto, con l'aria di chi ha fatto un volo dignitosissimo.",
		"rimette a posto i vestiti in cima alla discesa, poi rinuncia al resto: l'aria alta vince sempre.",
	},
	["org.journey.w18.perch.007"] = {
		"La prima cosa che Orgrimmar mi dice dopo il cielo è di togliermi di mezzo. Giusto. Ero proprio in mezzo.",
		"Due passi giù dalla piattaforma e qualcuno mi sta già dicendo di levarmi di torno. È il benvenuto della città, ed è tutto lì.",
		"Dieci passi dalla piattaforma e ho già preso due gomitate e mi hanno offerto un pesce. Orgrimmar si è accorta di me, dopotutto.",
	},
	["org.journey.w18.perch.008"] = {
		"osserva l'addestratore contare le bestie sul trespolo con un dito che si sposta, come un mercante conta le monete dopo il passaggio della folla.",
		"vede l'addestratore segnare le bestie con un pezzo di carbone su un palo, un tratto per ciascuna, e aggiungerne un altro.",
	},
	["org.journey.w18.perch.009"] = {
		"Atterrare a Orgrimmar è entrare nel mezzo di una discussione cominciata prima che si alzassero le mura e che andrà avanti molto dopo che me ne sarò {g:andato|andata}.",
		"Scendere in questa città è come aprire la porta su un litigio. Nessuno si ferma. Nessuno spiega. Ti trovi un posto e basta.",
	},
	["org.journey.w18.perch.010"] = {
		"trova la via dalla torre sbarrata da un kodo che si riposa, e il padrone alza le spalle come se la bestia fosse il tempo che fa.",
		"deve girare intorno a un kodo sdraiato di traverso sul sentiero sotto la torre, che rumina piano, per nulla impressionato da chi arriva dal cielo.",
	},
	["org.journey.w18.perch.011"] = {
		"L'aria quaggiù è così densa che si potrebbe masticare: fumo, polvere, cipolle, il lupo di qualcuno. Dopo l'aria alta, è come ricevere una scodella piena.",
		"Lassù l'aria non sapeva di niente. Quaggiù sa di una dozzina di cose, e quasi tutte stanno cuocendo.",
	},
	["org.journey.w18.perch.012"] = {
		"si concede un momento sul bordo del pianerottolo, finché le assi sotto gli stivali non smettono di salire e scendere al ritmo di ali che non ci sono più.",
		"indugia sulla piattaforma un attimo più del necessario, il corpo ancora sulla cadenza di un volo che la bestia ha già finito.",
	},
	["org.journey.w18.perch.013"] = {
		"Giù. Qualcuno avvisi la città che ci sono anch'io: non se ne sarà accorta.",
		"Fuori dal cielo e dentro gli spintoni. Dev'essere Orgrimmar.",
		"Eccolo, il baccano. Adesso so che siamo a terra.",
	},
	["org.journey.w18.perch.014"] = {
		"si ferma a un barile d'acqua ai piedi della torre e beve un mestolo intero, come se il cielo fosse stato un deserto.",
		"si sciacqua via dalla bocca la sabbia del volo a un abbeveratoio vicino alla torre, poi la sputa in strada, dove si trova perfettamente a casa.",
	},
	["org.journey.w18.perch.015"] = {
		"Per qualche passo ogni voce della strada sembra rivolta a me. Poi la città si rimette in ordine e torno a essere un paio di stivali tra tanti.",
		"In mezzo alla gente, e per un attimo ogni grido sembra personale. Passa. Nessuno qui sta gridando a me. Probabilmente.",
	},
	["org.journey.w18.perch.016"] = {
		"Un lupo ai piedi della torre mi annusa una volta e ringhia. A quanto pare odoro di bestia volante. La prendo come un complimento.",
		"Dopo un volo i lupi della strada mi stanno alla larga per un po'. Qualcosa nell'odore della bestia. Utile, in mezzo alla folla.",
	},
	["org.journey.w18.perch.017"] = {
		"Non fate caso a me. Sono solo {g:caduto|caduta} dal cielo apposta.",
		"Permesso. Largo a chi arriva dal cielo.",
	},
	["org.journey.w18.perch.018"] = {
		"Sulla piattaforma c'è già la fila per la bestia che ho appena lasciato: un tauren con uno zaino pesante, un goblin con uno ancora più pesante. Auguro buona fortuna alla bestia.",
		"Qualcuno aspetta già la mia bestia, un tauren grosso come un corpo di guardia. Mi faccio da parte e le mando le mie scuse in silenzio.",
	},
	["org.journey.w18.perch.019"] = {
		"alza lo sguardo dal pianerottolo verso le pareti del canyon che un momento fa stavano sotto la pancia della bestia, e le ritrova altissime.",
		"rovescia la testa all'indietro sulla piattaforma: l'orlo del canyon, così facile da superare un attimo fa, si è ripreso tutta la sua altezza.",
	},
	["org.journey.w18.perch.020"] = {
		"Stendardi dell'Orda, chiasso dell'Orda, cucina dell'Orda. È bello essere giù.",
		"Terra dell'Orda sotto i piedi. E adesso, dov'è la locanda?",
	},
	["org.journey.w18.perch.021"] = {
		"lascia la viverna al suo posto sul trespolo, dove ripiega le ali e rivolge alla città di sotto una lunga occhiata da padrona.",
		"lancia un'ultima occhiata alla viverna prima della discesa; si è già voltata, ali ripiegate, a sorvegliare la sua città.",
	},
	["org.journey.w18.perch.022"] = {
		"Un pavimento che non sbatte le ali. Che meraviglia.",
		"Assi che stanno ferme! Le bacerei una per una.",
	},
	["org.journey.w18.perch.023"] = {
		"Laggiù sta friggendo qualcosa che mi chiama per nome. Scusate.",
		"Quell'odore è la locanda, ed è il miglior saluto che questa città sappia fare.",
	},
	["org.journey.w18.rise.001"] = {
		"segue il Drag dall'alto mentre la bestia sale, e finalmente vede dove voleva andare a parare quella strada storta.",
		"guarda il Drag mentre il volo prende quota: da lassù le sue curve disegnano un anello lungo e paziente, roba che può piacere solo a un uccello.",
	},
	["org.journey.w18.rise.002"] = {
		"Ogni punta di ferro su ogni tetto di Orgrimmar adesso mira dritta a me. Decido di non prenderla sul personale.",
		"Viste da sotto, le punte sembravano un ornamento. Viste da sopra, sembrano un progetto.",
		"Orgrimmar si arruffa contro il cielo come un porcospino spaventato. Nessuno le ha detto che sto solo passando sopra.",
	},
	["org.journey.w18.rise.003"] = {
		"A Orgrimmar nessuno guarda in alto: sono tutti troppo occupati a guardarsi tra loro. Per qualche colpo d'ala la città intera è lì solo per i miei occhi.",
		"Migliaia di persone là sotto, e nemmeno un viso rivolto in su. Una città così indaffarata non controlla mai il cielo, e così non vede mai partire nessuno.",
	},
	["org.journey.w18.rise.004"] = {
		"passa all'altezza del bordo del canyon, abbastanza vicino da vedere nella pietra i segni dei picconi, dove un tempo qualcuno fece posto a una strada.",
		"risale lungo la parete del canyon e vede, a un'ala di distanza, le vecchie cicatrici di picconi e scalpelli nella pietra rossa.",
	},
	["org.journey.w18.rise.005"] = {
		"vede rimpicciolire là sotto il cortile di addestramento della Valley of Honor, e il cozzo di ogni colpo arriva alla sella un istante dopo il colpo stesso.",
		"scorge due figurine che si scambiano colpi nel cortile della Valley of Honor, e sente il fragore arrivare in ritardo, come se il suono dovesse salire a piedi.",
	},
	["org.journey.w18.rise.006"] = {
		"Da quassù i Kor'kron davanti a Grommash Hold sembrano pioli piantati in terra e poi dimenticati. Pioli molto feroci.",
		"Grommash Hold vista dall'alto: un grande tetto tondo, e alla porta due puntini che mi fermerebbero anche se gli atterrassi in testa.",
		"Anche a quest'altezza Grommash Hold riesce a sembrare accigliata nei miei confronti.",
	},
	["org.journey.w18.rise.007"] = {
		"guarda la banca dall'alto mentre la bestia si stacca dalla torre: la fila alla porta avanza di una testa, e da quassù sembra un bruco.",
		"vede dall'alto la fila davanti alla banca, un lungo verme scuro di viaggiatori che non pare essersi mosso dal decollo.",
	},
	["org.journey.w18.rise.008"] = {
		"Laggiù qualcuno si è appena aggiudicato un'asta. Da quassù sembra proprio un grido di guerra. A Orgrimmar potrebbe anche esserlo.",
		"Un ruggito sale dalla casa d'aste mentre la bestia prende quota. O qualcuno ha fatto un affare, o qualcuno le ha prese. Facile che siano vere tutte e due.",
	},
	["org.journey.w18.rise.009"] = {
		"lancia uno sguardo alla Valley of Spirits mentre il volo vira: la pozza giace scura e immobile tra le capanne, l'unica cosa piatta in tutta quella roccia.",
		"scorge la pozza della Valley of Spirits durante la virata, un occhio tondo e scuro tra le capanne che non batte ciglio mentre la città le corre intorno.",
	},
	["org.journey.w18.rise.010"] = {
		"I fuochi di cucina di un'intera città, ognuno un filo grigio, e quassù tutti piegati dalla stessa parte. Dalla strada non diresti mai che vadano d'accordo su qualcosa.",
		"Cento fumi di cucina salgono dalle valli e in cima si piegano insieme, come una folla che per una volta ha trovato un accordo.",
	},
	["org.journey.w18.rise.011"] = {
		"per un colpo d'ala si trova all'altezza di una vedetta sulle mura; l'orco ne incrocia gli occhi senza girare la testa, e poi le mura scivolano via in basso.",
		"passa davanti a una sentinella in cima alle mura, all'altezza degli occhi, e si prende la stessa occhiata piatta che lei riserva a tutto ciò che sale da Durotar.",
	},
	["org.journey.w18.rise.012"] = {
		"I veterani parlano dei campi, mura costruite per tenere dentro gli orchi. Da quassù le mura di Orgrimmar guardano dall'altra parte, verso fuori, ed è tutta lì la differenza.",
		"I vecchi grunt della locanda raccontano che un tempo gli orchi conoscevano solo mura che li tenevano chiusi. Queste le hanno alzate le stesse mani, rivolte all'esterno. Dall'aria si vede subito.",
	},
	["org.journey.w18.rise.013"] = {
		"sorvola un tetto dove due peoni rattoppano le travi; uno agita il martello verso la bestia, l'altro si abbassa senza alcun motivo.",
		"supera un tetto dove un peone sta aggiustando una trave: alza gli occhi, giudica la bestia un problema di qualcun altro, e torna al lavoro.",
	},
	["org.journey.w18.rise.014"] = {
		"supera l'orlo, e oltre le mura la terra si apre: letti di fiumi in secca che si ramificano come le vene sul dorso di una mano, sterpaglie spinose in nodi color ruggine.",
		"sale finché la terra fuori dalle mura si legge come una pelle tesa sul telaio, dove ogni greto secco e ogni cresta sono una piega.",
		"scavalca il canyon, e sotto si srotola tutta Durotar, terra rossa che sfuma nel bruno ai margini, segnata dai letti di fiumi che non ci sono più.",
	},
	["org.journey.w18.rise.015"] = {
		"Occhio alle punte, salendo. Per il bene di tutti e due.",
		"Sopra le mura, non dentro. Grazie.",
		"Su e oltre. Piano. Ho appena mangiato.",
	},
	["org.journey.w18.rise.016"] = {
		"Nessuno a salutarmi, e nessuno alla torre si ricorderà la mia faccia al prossimo pasto. Mi piace una città che ti lascia andare così facilmente.",
		"Andarsene da Orgrimmar è facile: nessuno chiede dove, nessuno chiede perché. L'addestratore mi ha chiesto solo se avevo pagato.",
		"Nessun addio alla torre. L'addestratore ha controllato le cinghie, ha grugnito, e questa è stata tutta la cerimonia.",
	},
	["org.journey.w18.rise.017"] = {
		"sale oltre una coppia di avvoltoi che volteggiano sopra il canyon, e per una volta li guarda dall'alto.",
		"sale più in alto delle poiane che girano sul canyon, e per una volta ne vede il dorso, spelacchiato e polveroso, mentre aspettano gli avanzi della città.",
	},
	["org.journey.w18.rise.018"] = {
		"Dall'alto la città ha quattro colori: la pietra rossa, il ferro nero, il bruno delle pelli sui tetti, e qua e là il verde di un'aiuola di erbe di cui qualcuno va molto fiero.",
		"Pietra rossa, ferro scuro, cuoio conciato, e in un angolo una macchia verde. Vista dall'alto, Orgrimmar è la tavolozza di un guerriero con dentro un solo giardiniere.",
	},
	["org.journey.w18.rise.019"] = {
		"passa sopra la Cleft of Shadow, una fenditura buia nel suolo della città, così profonda che nemmeno dal volo se ne vede la fine.",
		"guarda dritto in basso nella Cleft of Shadow mentre la bestia la attraversa, e vede solo un buio più fitto sotto il buio.",
	},
	["org.journey.w18.rise.020"] = {
		"Guardali tutti, là sotto, a correre di qua e di là. E io che credevo di avere da fare.",
		"Ecco com'è la città quando non mi urla nelle orecchie. Niente male.",
		"Tutti di fretta. Da qui sembrano formiche con l'ascia.",
	},
	["org.journey.w18.rise.021"] = {
		"A questa città hanno dato il nome di Doomhammer, e i veterani dicono che fosse duro, schietto e impossibile da smuovere. Dall'aria il posto è all'altezza del nome.",
		"Una città che porta il nome di un capoguerra caduto. Da quassù somiglia a come lo descrivono i vecchi orchi: tutta spigoli, e piantata dov'è.",
	},
	["org.journey.w18.rise.022"] = {
		"guarda l'ombra della bestia correre sui tetti del Drag, e vede un goblin là sotto abbassarsi senza sapere perché.",
		"vede l'ombra delle ali scivolare sulla Valley of Strength e su per la parete del canyon, più veloce di qualunque cosa cammini laggiù.",
	},
	["org.journey.w18.rise.023"] = {
		"si alza mentre il canyon si riempie d'ombra dal fondo in su, con le strade già fioche e l'orlo ancora acceso di rosso.",
		"esce dal crepuscolo che si raccoglie nel canyon e sale nell'ultima luce sopra l'orlo, come passando da un'ora all'altra.",
	},
	["org.journey.w18.rise.024"] = {
		"La pioggia su Orgrimmar, chi l'avrebbe mai detto. Dall'alto ogni strada è diventata rosso scuro, e la città intera deve puzzare di lupo bagnato.",
		"Vista da quassù, la città sembra appena ridipinta: la pioggia ha reso la pietra rossa color vino vecchio, e la polvere, per una volta, se ne sta ferma.",
	},
	["org.journey.w18.rise.025"] = {
		"sale in un cielo limpido sopra il canyon, e dalla cima della salita ogni tetto della città spicca netto, fino all'ultima punta.",
		"si alza in un'aria così limpida che il confine lontano di Durotar sembra raggiungibile prima del prossimo pasto, sotto un cielo vuoto.",
	},
	["org.journey.w18.rise.026"] = {
		"decolla sotto un cielo color livido, con le ali della bestia che sussultano a ogni lampo lungo l'orlo del canyon.",
		"sale nella tempesta alla massima velocità della bestia, mentre il grido dell'addestratore si perde dietro un tuono sopra le mura.",
	},
	["org.journey.w18.rise.027"] = {
		"Dall'aria riconosco la Valley of Wisdom solo dal passo. Ovunque i puntini corrono; lì passeggiano.",
		"L'angolo più lento della città, visto dall'aria, è la Valley of Wisdom. Persino la polvere lì sembra posarsi con più garbo.",
	},
	["org.journey.w18.rise.028"] = {
		"scorge un cavaliere su lupo che si allontana lungo la strada, un puntino che si trascina dietro una lunga coda di polvere, e presto lo supera senza sforzo.",
		"guarda dall'alto qualcuno che lascia la città lungo la strada, tutta quella polvere e tutta quella fatica, e la bestia gli passa sopra in pochi colpi d'ala.",
	},
	["org.journey.w18.rise.029"] = {
		"Salendo se ne vanno prima le voci, poi i lupi, poi gli strilli ai banchi. L'ultima cosa a lasciarmi andare è un martello solo, che batte da qualche parte lungo il Drag.",
		"A uscire da Orgrimmar in volo, i suoni se ne vanno in ordine di grandezza: la folla, le forge, un'incudine testarda. Poi solo le ali.",
	},
	["org.journey.w18.rise.030"] = {
		"Sui tetti c'è una seconda Orgrimmar dove non cammina nessuno: pelli stese ad asciugare, uno stivale dimenticato, un goblin addormentato, tre pentole rotte.",
		"I tetti custodiscono i segreti della città: pelli fissate a conciare, uno stivale perso, un goblin che dorme tra le casse, dove nessuno gli chiederà di pagare niente.",
	},
	["org.journey.w18.rise.031"] = {
		"alza un pugno verso Grommash Hold mentre la viverna le passa accanto, anche se dentro nessuno lo saprà mai.",
		"stacca una mano dal collo della viverna mentre il volo sorvola Grommash Hold, un piccolo saluto alla sala del Capoguerra che nessuno, là sotto, vedrà.",
	},
	["org.journey.w18.rise.032"] = {
		"La città di Thrall vista dall'aria. Ognuno di noi dovrebbe vederla così almeno una volta: tutta nostra, e nemmeno un muro che sia una gabbia.",
		"Dall'alto Orgrimmar ha la misura di una promessa mantenuta. L'hanno costruita orchi liberi, e ora ci cammina tutta l'Orda.",
	},
	["org.journey.w18.rise.033"] = {
		"Un giro sopra la città prima di andare. Voglio vederla tutta in una volta.",
		"Fammi fare un giro sopra le valli. La città è più bella quando non può sentirmelo dire.",
	},
	["org.journey.w18.rise.034"] = {
		"Sì, ti vedo, laggiù. No, non torno indietro a prenderlo.",
		"Qualunque cosa tu stia gridando, non la sento. Addio!",
		"Sbraccia quanto vuoi, là sotto. La bestia non fa rimborsi.",
	},
	["org.journey.w18.wing.001"] = {
		"sobbalza in avanti quando la bestia mette una zampa nel vuoto, e per un lungo istante cadono e basta, finché le ali non mordono l'aria.",
		"scavalca il bordo della piattaforma insieme alla bestia, un attimo vuoto e senza peso prima che le ali si aprano e la caduta diventi volo.",
	},
	["org.journey.w18.wing.002"] = {
		"Questa sella l'ha allacciata qualcuno che non conosco. Affido tutto il mio peso al nodo di uno sconosciuto, e non so nemmeno come si chiama.",
		"Le cinghie le hanno legate due mani che non rivedrò mai. Strana cosa su cui scommettere tutto, il nodo di un estraneo.",
		"Chi ha controllato queste fibbie farà meglio a conoscere il mestiere. Lo scopriremo insieme, io e la bestia.",
	},
	["org.journey.w18.wing.003"] = {
		"ascolta le ali aprirsi di colpo sopra la torre, come una tenda di pelle che si tende di scatto in una burrasca.",
		"sente ogni spinta delle ali attraverso la sella, le grandi ali che rimbombano come una tela bagnata scossa nel vento.",
	},
	["org.journey.w18.wing.004"] = {
		"Siamo onesti su chi sta volando. La bestia conosce la rotta; io sono il bagaglio che parla.",
		"Tengo le redini per far scena. Sappiamo tutti e due, io e la bestia, chi sceglie la strada.",
		"Quassù non sono un passeggero, sono un carico con delle opinioni.",
	},
	["org.journey.w18.wing.005"] = {
		"incrocia l'occhio della bestia, che a metà salita gira la testa a guardare chi porta, con un'occhiata difficile da leggere e facile da temere.",
		"vede la testa della bestia voltarsi durante la salita per studiare il passeggero, poi tornare avanti, con il suo giudizio tenuto per sé.",
	},
	["org.journey.w18.wing.006"] = {
		"L'hai già fatto, vero? Bene. Almeno uno di noi due è tranquillo.",
		"Piano con le virate. La sella tiene me, e tu tieni la sella.",
		"Niente acrobazie sopra la città, bestia. Là sotto c'è troppa gente su cui cadere.",
	},
	["org.journey.w18.wing.007"] = {
		"Tre colpi d'ala oltre l'orlo e l'aria si fa sottile e fresca, come uscire da una fucina per entrare in una cantina.",
		"L'aria quassù non ha niente dentro: niente fumo, niente polvere, niente voci. Quasi maleducata, dopo la città.",
	},
	["org.journey.w18.wing.008"] = {
		"stringe le ginocchia mentre la bestia si inclina nella corrente che sale dall'orlo e si lascia portare su in una spirale pigra.",
		"si piega nella virata mentre la bestia prende la spinta della parete del canyon e sale senza battere le ali.",
	},
	["org.journey.w18.wing.009"] = {
		"Per un po' non appartengo a nessuna strada e a nessuna fila. Solo la sella, le ali, e quello che c'è in fondo.",
		"Tra la torre e il prossimo atterraggio non sono la commissione di nessuno. L'unica voce che pretende qualcosa è lo stomaco della bestia.",
	},
	["org.journey.w18.wing.010"] = {
		"sente il fischio dell'addestratore dalla torre mentre la bestia si solleva, una nota lunga a cui sembra obbedire anche in volo.",
		"è ancora a portata del fischio dell'addestratore quando la bestia si stabilizza, e le sue orecchie scattano all'indietro come a dire che ha sentito.",
	},
	["org.journey.w18.wing.011"] = {
		"Da vicino la bestia sa di carne cruda e di cuoio vecchio. Ancora qualche colpo d'ala e l'aria alta se lo porterà via.",
		"Nessuno ti avverte dell'odore della bestia: carne cruda, muschio e coperta da sella umida. L'altezza, alla lunga, aiuta.",
		"Da vicino la bestia sa di selvatico e del suo ultimo pasto. Il cielo aperto sarà un sollievo.",
	},
	["org.journey.w18.wing.012"] = {
		"Più in alto delle mura, più in basso delle nuvole. Non chiedo altro.",
		"Fuori le ali, bestia. La città non sentirà la mancanza di nessuno dei due.",
		"Portaci su, bestia. Anche piano è una velocità.",
	},
	["org.journey.w18.wing.013"] = {
		"socchiude gli occhi nel getto d'aria mentre il volo si stabilizza, finché la città laggiù non perde i contorni.",
		"stringe gli occhi contro l'aria fredda della salita, e le valli là sotto si confondono in un'unica macchia rossa.",
	},
	["org.journey.w18.wing.014"] = {
		"Il mastro di volo ha preso le mie monete con la faccia di chi non ha mai perso un passeggero. Spero sia esperienza e non fortuna.",
		"Pagato tutto, cinghie strette, e già a metà sopra le mura. Troppo tardi per chiedere se rimborsano le monete a chi cade.",
	},
	["org.journey.w18.wing.015"] = {
		"osserva la coda uncinata della bestia oscillare dietro come un timone mentre si inclina sopra la valle, e tiene le gambe ben lontane.",
		"tiene d'occhio il pungiglione della bestia, che li guida fuori sopra la città ondeggiando un po' troppo vicino alla sella.",
	},
	["org.journey.w18.wing.016"] = {
		"Una viverna sale come se ce l'avesse con la terra. Ho conosciuto orchi così. Quasi tutti mi andavano a genio.",
		"La viverna strappa l'aria come se il cielo le dovesse dei soldi. In una bestia l'ho sempre ammirato.",
	},
	["org.journey.w18.wing.017"] = {
		"gratta la viverna dietro un orecchio quando si stabilizza, e ne ricava un brontolio basso che potrebbe essere un grazie o un avvertimento.",
		"si sistema in sella alla viverna a salita finita, una mano posata sulla pelle calda del suo collo.",
	},
	["org.journey.w18.wing.018"] = {
		"Vola dritta, viverna. L'Orda ha del lavoro per me là fuori.",
		"Ali forti, viverna. Fai vedere alla città come si fa.",
	},
	["org.journey.w18.wing.019"] = {
		"Uscire da Orgrimmar a piedi vuol dire il portale, le guardie, la strada e la polvere. Uscirne in volo vuol dire un sobbalzo, e poi più niente tra me e qualunque posto.",
		"A piedi questa città ti lascia andare piano, oltre ogni guardia e ogni banco. L'aria ti porta via in un colpo solo.",
	},
	["org.journey.w18.wing.020"] = {
		"assume un'espressione tranquilla a beneficio di chi guarda dalla torre, e la mantiene finché le mura non spariscono alla vista.",
		"tiene la schiena ben dritta in sella mentre la bestia supera le mura, come se volare fosse cosa di tutti i giorni e non meritasse un pensiero.",
	},
	["org.journey.w18.wing.021"] = {
		"Alla bestia non importa cosa lascio in città, né cosa mi aspetta dall'altra parte. Le importa solo il prossimo colpo d'ala. Avrei da imparare.",
		"Ali, aria, il colpo dopo e quello dopo ancora. La bestia non tiene conti. Per un po', nemmeno io.",
	},
	["org.journey.w18.wing.022"] = {
		"Quelle punte sulle mura sono più vicine di quanto mi piaccia. Su, bestia, su.",
		"Il muro. Il muro! Bene. Grazie.",
		"Quello era il muro. Ci ho visto le crepe. Più in alto, per favore.",
	},
	["org.journey.w18.wing.023"] = {
		"Stai ferma un attimo, devo ritrovare lo stomaco. È rimasto sulla piattaforma.",
		"Il mio stomaco è ancora sulla torre. Vola più piano, sta cercando di raggiungerci.",
	},
	["org.muse.w18.anvil.001"] = {
		"I fabbri di qui non misurano il calore del ferro coi numeri. Gli danno nomi di cose: color ruggine, color lingua di lupo, color fico d'India maturo. Un apprendista impara l'elenco a memoria prima di toccare un martello.",
		"Domanda a un fabbro orco se il ferro è pronto: strizza gli occhi e risponde che è appena a lingua di lupo. Lui lo aspetta color paglia.",
		"Ruggine, lingua di lupo, paglia, osso: i fabbri di questa città leggono il ferro rovente come i pastori leggono il cielo prima che il tempo cambi.",
	},
	["org.muse.w18.anvil.002"] = {
		"guarda il garzone di un fabbro azionare il mantice finché gli tremano le braccia, mentre il fabbro, gli occhi sulle braci, non dice mai basta.",
		"si ferma accanto a una forgia dove un ragazzo pompa il mantice con un ritmo regolare, la mascella serrata, in attesa di una parola del maestro che non arriva.",
	},
	["org.muse.w18.anvil.003"] = {
		"I minatori portano il minerale in città con un segno di gesso su ogni sacco, ciascuno il suo. I fabbri sanno quali segni vogliono dire rame onesto e quali mezzo sacco di sassi.",
		"Ogni sacco di minerale che scende dalle colline ha uno scarabocchio di gesso. Un fabbro mi ha detto che li legge come nomi: questo non imbroglia mai, quello ti vende ghiaia con una mano di rame sopra.",
		"Un segno di gesso su un sacco di minerale è tutta la reputazione di un minatore. Se si sbava, i fabbri pesano il sacco due volte.",
	},
	["org.muse.w18.anvil.004"] = {
		"Tutti i fabbri della città chiedono stagno a gran voce, e ogni minatore giura che le colline di Durotar sono fatte di rame e nient'altro.",
		"Senza stagno niente bronzo. Qualcuno vada a dirlo alle colline.",
		"Rame dappertutto, stagno da nessuna parte. Un fabbro mi ha appena offerto un pasto caldo per una sola barra.",
	},
	["org.muse.w18.anvil.005"] = {
		"Le mani di un minatore non tornano mai pulite. La polvere gli vive nelle crepe delle nocche, e lui soppesa un pezzo di minerale sul palmo e distingue il rame dallo stagno prima ancora di guardarlo.",
		"Ho stretto la mano a un minatore vicino alle fucine. Era come stringere un sasso a cui qualcuno avesse insegnato le buone maniere.",
		"I minatori passano le giornate sulle colline e spendono le monete nelle fucine. Li riconosci dalle nocche, scorticate e richiuse più spesse, una volta dopo l'altra.",
	},
	["org.muse.w18.anvil.006"] = {
		"Nei campi gli umani tenevano ogni chiave e ogni chiodo. Ora un'orchessa batte sull'incudine un cardine per la sua porta, la appende e la chiude quando vuole. Per il mio popolo è ancora una piccola meraviglia.",
		"Dietro i recinti il mio popolo non possedeva ferro, neanche un cucchiaio. Ogni cardine e ogni chiavistello di questa città l'hanno fatto mani d'orco per porte d'orco, e non passo mai davanti a una fucina senza pensarci.",
	},
	["org.muse.w18.anvil.007"] = {
		"ascolta due incudini del Drag che per una dozzina di colpi battono allo stesso tempo, poi si separano, e ogni fabbro torna al proprio ritmo.",
		"rallenta al suono di due martelli su due incudini che battono a turno, come due vecchi amici che camminano al passo, finché uno dei due si ferma a girare il pezzo.",
	},
	["org.muse.w18.anvil.008"] = {
		"Tre fabbri, tre opinioni sulla tempra. Uno giura sull'acqua salata, uno sull'olio, e il terzo tiene un barile in cui non lascia guardare nessuno.",
		"I fabbri di Orgrimmar dividono volentieri un boccale, una panca e un nemico. Cosa ci sia nel barile della tempra, mai.",
		"Prova a chiedere a un fabbro cosa tiene nel barile della tempra: avrai una lunga risposta sul tempo, sul prezzo dello stagno e sul suo ginocchio malandato.",
	},
	["org.muse.w18.anvil.009"] = {
		"Dopo una campagna i grunt fanno la fila alle fucine con le asce sbreccate, e il fabbro passa il pollice sul filo come se leggesse una lettera. Questa ha incontrato un'armatura. Questa un osso. Questa qualcosa che lui non nomina.",
		"Un buon fabbro capisce dalle tacche dove è stata un'ascia. Ne ho visto uno ammutolire davanti al filo di un grunt, limarlo senza una parola e fargli pagare metà.",
		"Il banco delle riparazioni racconta la guerra meglio dei veterani. Ogni tacca limata via da un'ascia è una frase che nessuno dirà ad alta voce.",
	},
	["org.muse.w18.anvil.010"] = {
		"Non toccare il ferro scuro sull'incudine. Scuro non vuol dire freddo.",
		"Ferro nero, ferro rovente. Chiedilo a chiunque nelle fucine abbia una cicatrice sul palmo.",
		"Il ferro si scurisce molto prima di raffreddarsi. I fabbri lasciano che tu lo impari una volta sola.",
	},
	["org.muse.w18.anvil.011"] = {
		"Di notte le fucine coprono le braci con la cenere invece di lasciarle morire, e il bagliore filtra dalle fessure delle porte chiuse lungo tutta la strada, come occhi socchiusi.",
		"Le fucine sono chiuse per la notte, ma non fredde. Da ogni spiraglio di ogni porta di bottega trapela una sottile riga rossa di brace, che veglia in attesa dei martelli del giorno dopo.",
	},
	["org.muse.w18.anvil.012"] = {
		"A Orgrimmar non si butta mai niente di ferro. Un elmo crepato torna come chiodi, i chiodi come un cardine, e il cardine, un giorno, come la fibbia della cintura di qualcuno. Qui il ferro ha più vite di un gatto.",
		"I mucchi di rottami dietro le fucine sono il mercato più onesto della città: una pentola rotta, una catena spezzata, mezza staffa, tutto in paziente attesa di diventare qualcos'altro.",
		"Un fabbro ha raccolto un chiodo storto dalla polvere, l'ha raddrizzato con due colpetti e se l'è messo nel grembiule. In questa città il ferro non ha mai finito di servire.",
	},
	["org.muse.w18.anvil.013"] = {
		"sussulta quando un fabbro immerge qualcosa di incandescente in un barile e una nuvola di vapore sibilante rotola attraverso la strada, poi aspetta che si diradi.",
		"si scosta da un barile della tempra con un attimo di ritardo, e prosegue attraverso uno sbuffo di vapore che sa di ferro caldo e di acqua vecchia.",
		"si ritrova per un momento dentro il vapore della tempra di un fabbro, e ne esce sbattendo le palpebre, con gran divertimento del fabbro.",
	},
	["org.muse.w18.anvil.014"] = {
		"Ogni ascia sulle mura è passata su un'incudine di questa città prima di passare su un campo di battaglia. Quando l'Orda marcia, marcia sulle spalle indolenzite di un fabbro.",
		"Ai nostri grunt vanno le canzoni. Ai fabbri le scottature, la schiena a pezzi e il primo sguardo su ogni ammaccatura che la guerra rimanda a casa.",
		"Per ogni grunt che torna con una storia da raccontare, c'è un fabbro che conosce quella vera. È scritta nelle ammaccature.",
	},
	["org.muse.w18.anvil.015"] = {
		"Un'orchessa che lavora il ferro giura che la sua incudine ha attraversato il mare nella stiva di una nave rubata, avvolta nelle pelli come un bambino addormentato, e che è stata la prima cosa portata a riva. Lo racconta ogni volta che qualcuno ci si appoggia.",
		"Un vecchio fabbro racconta a chiunque lo ascolti che la sua incudine è arrivata dall'altra parte del mare con le prime navi, legata al ponte. Non dice quanti orchi ci siano voluti per sollevarla, perché il numero cresce di continuo.",
	},
	["org.muse.w18.anvil.016"] = {
		"La prima lezione dell'istruttore di miniera riguarda l'ascolto. Batti la roccia col piccone e senti se risuona o se fa un tonfo: il minerale canta un po' più acuto della pietra.",
		"I minatori imparano a sentire una vena prima di vederla, dice l'istruttore. La roccia buona suona sotto il piccone. Quella cattiva tiene il broncio.",
		"Una minatrice mi ha insegnato a bussare a una parete di roccia come a una porta e ad aspettare la risposta. Il rame, dice, risponde più squillante.",
	},
	["org.muse.w18.anvil.017"] = {
		"Quel fabbro batte la stessa striscia da un'eternità. O è un capolavoro, o l'ha offeso.",
		"O quel ferro deve dei soldi al fabbro, o verrà fuori bellissimo.",
	},
	["org.muse.w18.beast.001"] = {
		"Un lupo sellato passa al trotto senza cavaliere e svolta agli angoli senza un attimo di dubbio. Conosce la strada per i recinti meglio di quanto io conosca quella per la banca.",
		"Niente cavaliere, sella ancora addosso, e il lupo prende ogni svolta della città con sicurezza. Rimandato a casa da solo, immagino, come una lettera ben addestrata.",
		"Ecco un lupo senza cavaliere, la sella che sbatte, che si fa strada tra la folla come un cliente abituale. Qualcuno è rimasto alla locanda; il lupo aveva di meglio da fare.",
	},
	["org.muse.w18.beast.002"] = {
		"passa accanto a un raptor legato sulla porta di una bottega, che batte un lungo artiglio sulla pietra con la pazienza di un creditore.",
		"si scosta da un raptor legato davanti a una bottega; la lunga testa si volta a seguire ogni passo, lenta e interessata, per tutta la strada.",
	},
	["org.muse.w18.beast.003"] = {
		"vede un cavaliere scendere da un lupo, e il lupo afflosciarsi sulla pietra nello stesso istante, come un mantello lasciato cadere.",
		"nota un lupo che si stende a terra nel momento esatto in cui il cavaliere smonta, con un mugolio che dice che tutta la giornata è stata un favore personale.",
		"sorride a un lupo che si accascia appena gli stivali del cavaliere toccano la pietra, e resta lì, rifiutando qualunque altro incarico.",
	},
	["org.muse.w18.beast.004"] = {
		"Un kodo ha strusciato il muro passando e ci ha lasciato una lunga striscia pulita nella polvere. Il muro sembra quasi in imbarazzo.",
		"Sono i kodo a lucidare i muri delle strade strette. Ogni angolo che girano a fatica ha una fascia liscia all'altezza dei fianchi, opaca come cuoio vecchio.",
	},
	["org.muse.w18.beast.005"] = {
		"Due lupi si sono trovati muso a muso in mezzo alla strada, e i cavalieri hanno dovuto aspettare in sella che finissero i saluti. Le buone maniere di un lupo non hanno fretta.",
		"Due cavalieri bloccati in strada, a guardarsi storto, mentre i loro lupi si annusano con calma e a fondo. A Orgrimmar le presentazioni le fanno le bestie.",
		"Il traffico si è fermato per un bel po', poco fa: due lupi si erano incontrati e avevano un mucchio di cose da dire al naso dell'altro. I cavalieri potevano solo aspettare.",
	},
	["org.muse.w18.beast.006"] = {
		"Bravo lupo. Bel lupo. Smettila di sbadigliarmi in faccia, per favore.",
		"Bei denti. Davvero. Puoi metterli via, adesso.",
	},
	["org.muse.w18.beast.007"] = {
		"nota ogni lupo della strada alzare la testa nello stesso momento, quando la porta di un macellaio si spalanca, una dozzina di nasi che ruotano insieme.",
		"segue lo sguardo dei lupi mentre un macellaio rovescia un secchio di avanzi dietro la bottega, e li vede arrivare da tre direzioni, come chiamati per nome.",
	},
	["org.muse.w18.beast.008"] = {
		"Kodo per strada, che ondeggiano come ondeggiano nelle pianure. Un po' di Mulgore che cammina sulla pietra, e non sembra soffrirne.",
		"Quando passa un kodo sento il suo passo lento prima di vederlo, e per un attimo la pietra sotto di me sembra erba.",
	},
	["org.muse.w18.beast.009"] = {
		"I vecchi dicono che nei campi non c'erano lupi. Adesso trottano liberi per le nostre strade, e alcuni anziani si fermano ancora a guardarli, come per assicurarsi che siano veri.",
		"Lupi liberi in una città degli orchi. I miei anziani sono rimasti anni senza vederne uno, dietro i recinti degli umani. Alcuni allungano ancora la mano per toccare ogni lupo che passa.",
	},
	["org.muse.w18.beast.010"] = {
		"fa largo a un kodo che porta sul dorso quella che sembra una casa intera, pentole che sbatacchiano, e in cima al mucchio un piccolo tauren addormentato.",
		"si ferma per far passare un kodo carico fino all'inverosimile, tappeti, pali e pentole legati in alto, con un vitello tauren che sonnecchia sulla cima.",
	},
	["org.muse.w18.beast.011"] = {
		"Un raptor mi segue con un occhio giallo, la testa piegata. Quello sguardo l'ho già visto ai mercanti goblin: sta calcolando quanto valgo.",
		"I raptor ti guardano di traverso, un occhio alla volta, soppesando. Giurerei che uno mi abbia appena dato un prezzo al chilo.",
	},
	["org.muse.w18.beast.012"] = {
		"si fa da parte per un peone con pala e secchio, che segue i cavalieri dei lupi per tutta la città con la rassegnazione di una lunga carriera.",
		"lascia passare un peone che va dietro a un branco di lupi con una pala, pulendo dove passano senza mai alzare gli occhi.",
	},
	["org.muse.w18.beast.013"] = {
		"Quasi ogni lupo di questa città ha un orecchio strappato o una vecchia cicatrice sul muso. Un addestratore mi ha detto che un lupo senza né l'una né l'altra non ha finito la scuola.",
		"Orecchie intaccate, nasi segnati: i lupi di Orgrimmar portano le loro liti in faccia. Gli addestratori dicono che è così che il branco decide chi mangia per primo.",
		"Guarda bene i lupi di qui e ognuno porta il segno di qualche vecchio battibecco. Agli addestratori va bene così: un lupo, dicono, impara il suo posto con i denti.",
	},
	["org.muse.w18.beast.014"] = {
		"vede un Reietto arrivare in sella a un cavallo scheletrico, e ogni lupo lungo la strada alzare appena un labbro, per poi ripensarci.",
		"coglie i lupi lungo la strada che si irrigidiscono mentre un cavallo d'ossa passa ticchettando sotto il suo cavaliere Reietto; nessuno ringhia, e nessuno distoglie lo sguardo.",
	},
	["org.muse.w18.beast.015"] = {
		"Ogni palo vicino ai recinti dei lupi è rosicchiato all'altezza di una mascella di lupo. I peoni li sostituiscono; i lupi prendono ogni palo nuovo come un regalo.",
		"I pali accanto ai recinti portano un anello di morsi all'altezza delle fauci. Ogni tanto si mette legno nuovo, e i lupi lo accolgono come un giocattolo.",
	},
	["org.muse.w18.beast.016"] = {
		"Arriva un kodo. Lo senti prima di vederlo: fieno, fango e tappeto vecchio.",
		"Bestia magnifica, il kodo. Sa di tenda bagnata reduce da una guerra.",
		"Fate largo al kodo. E al suo odore, che è arrivato prima.",
	},
	["org.muse.w18.beast.017"] = {
		"Di chi è questo lupo? Ha deciso che sono il suo nuovo cuscino.",
		"No, non ho carne. Smettila di frugarmi nelle tasche.",
	},
	["org.muse.w18.camps.001"] = {
		"Nei discorsi dei vecchi orchi l'apatia dei campi torna come una malattia senza nome: guerrieri che un tempo sfondavano le file nemiche, seduti tutto il giorno vicino allo steccato, troppo stanchi per desiderare l'altra parte.",
		"Quello che facevano i campi non erano le botte, mi ha detto un anziano. Era una quiete grigia e lenta che si posava su tutti, finché anche i più forti smettevano di guardare il cancello.",
	},
	["org.muse.w18.camps.002"] = {
		"segue il pasto lento di un vecchio orco che mangia con un braccio stretto attorno alla ciotola, un'abitudine su cui nessuno al tavolo dice niente.",
		"si accorge di un anziano che, accanto a un fuoco di cucina, ripara la ciotola con l'avambraccio mentre mangia, anche se nessuno vicino a lui allunga la mano.",
	},
	["org.muse.w18.camps.003"] = {
		"Un grunt dai capelli grigi, alla locanda, conta i presenti ogni volta che si siede. Un'abitudine dei campi, dice: una faccia mancante all'appello voleva dire guai per tutti quelli rimasti.",
		"C'è un anziano che non riesce a sedersi da nessuna parte senza prima contare le teste. Nei campi, spiega senza che nessuno glielo chieda, sapevi sempre quanti eravate.",
	},
	["org.muse.w18.camps.004"] = {
		"Le guardie dei campi erano per lo più contadini in cotte di maglia prestate, annoiati e un po' spaventati: così le ricorda un vecchio orco. In qualche modo era peggio che se fossero stati crudeli.",
		"Nei campi nessuno ci odiava granché, disse una volta un anziano. Si erano solo dimenticati che eravamo gente. Lo dice senza inflessione, e poi cambia discorso.",
		"C'era una guardia che passava di nascosto ai prigionieri un po' di pane in più e non li guardava mai in faccia, ricorda un anziano. Ancora non sa cosa pensare di quell'uomo.",
	},
	["org.muse.w18.camps.005"] = {
		"Di steccati, in città, quasi non se ne vedono. Spuntoni sì. Recinti per tenere dentro la gente, mai. Non credo sia un caso.",
		"A Orgrimmar le mura servono a tenere fuori. Non ne ho ancora vista una fatta per tenere dentro qualcuno.",
		"Mura a volontà, in questa città. Nessuno di questi muri è rivolto verso l'interno.",
	},
	["org.muse.w18.camps.006"] = {
		"Ogni porta di questa città si sbarra da dentro. Me l'ha fatto notare un vecchio orco, come se fosse il più bell'intaglio di tutto Kalimdor.",
		"I chiavistelli stanno tutti dalla parte interna delle porte. Una volta un anziano me ne ha fatto provare uno, avanti e indietro, finché non ho capito perché sorrideva.",
	},
	["org.muse.w18.camps.007"] = {
		"Un veterano che ho conosciuto combatteva nell'arena di un nobile umano per le scommesse degli altri. Adesso fa a botte volentieri con chiunque nella Valley of Honor, ma se su un incontro passa di mano una moneta, se ne va.",
		"In città ci sono orchi che sono stati schiavi da combattimento prima di essere qualunque altra cosa. Uno mi ha detto che ancora non sopporta di sentire una folla applaudire una ferita.",
	},
	["org.muse.w18.camps.008"] = {
		"Un vecchio peon sala tutto, perfino il pane. Anni di sbobba nei campi, dice, hanno insegnato alla lingua a mendicare, e lui non ha mai smesso di darle da mangiare.",
		"Ai fuochi di cucina c'è un anziano che svuota mezzo sacchetto di pepe in ogni ciotola. Dopo la brodaglia dei campi, dice, si è fatto una promessa sul sapore.",
	},
	["org.muse.w18.camps.009"] = {
		"nota un vecchio orco che, passando, batte le nocche sullo stipite di una porta aperta, leggero come un saluto, come sembrano fare sempre alcuni anziani.",
		"guarda un anziano fermarsi su una soglia, appoggiare un attimo il palmo sulla porta aperta e passare oltre senza una parola.",
	},
	["org.muse.w18.camps.010"] = {
		"Chi racconta non lo nasconde: quando i cancelli dei campi furono sfondati, alcuni orchi non uscirono. Bisognò convincerli, o portarli fuori a braccia.",
		"La libertà non arrivò tutta insieme, dicono gli anziani. I cancelli caddero in un'ora; far rialzare certi prigionieri richiese una stagione intera.",
		"Il cancello più duro da aprire, dice un vecchio sciamano, era quello dentro ogni prigioniero. Thrall ruppe quelli di legno; gli altri ci misero di più, e qualcuno è chiuso tuttora.",
	},
	["org.muse.w18.camps.011"] = {
		"Quando un anziano del mio popolo parla dei campi, taccio. Il minimo che gli devo è ascoltare, senza rispiegargli la sua stessa storia.",
		"I vecchi raccontano i campi a pezzi, un poco qua e un poco là, mai in ordine. Ho imparato a non chiedere il resto. Arriva quando arriva.",
	},
	["org.muse.w18.camps.012"] = {
		"I campi erano in Lordaeron. Adesso Lordaeron è un regno morto, i Reietti camminano dove camminavano i carcerieri, e i prigionieri hanno una capitale. Nessuno ci ride sopra. Non ce n'è bisogno.",
		"Le colline che ricorda da dietro lo steccato ora sono terra dei Reietti, mi ha detto un vecchio orco. L'ha detto senza trionfo, come si nota che un fiume ha cambiato letto.",
		"Lordaeron costruì i campi perché durassero. Non è durata lei, non sono durati loro, e gli orchi sì. Un anziano lo conta su tre dita, e la lezione è tutta lì.",
	},
	["org.muse.w18.camps.013"] = {
		"indugia accanto a un vecchio orco e a un Reietto che hanno scoperto di conoscere le stesse colline di Lordaeron, uno da dietro lo steccato di un campo e l'altro da prima della tomba, e nessuno dei due sa bene cosa pensare dell'altro.",
		"sente per caso un anziano orco e uno speziale reietto scoprire di aver vissuto, in Lordaeron, a un giorno di cammino l'uno dall'altro, ai due lati di uno steccato; il discorso si ferma lì e poi, con cautela, riprende.",
	},
	["org.muse.w18.camps.014"] = {
		"Sulla soglia di una casa vicino al Drag, un elmo umano ammaccato fa da vaso a un po' di erbe. Il padrone l'ha preso a un carceriere il giorno in cui caddero i cancelli, e giura che non è mai stato così utile.",
		"C'è chi tiene i cucchiai in un elmo da carceriere col pennacchio strappato. L'ha preso a una guardia dei campi, dice il vecchio orco, e da allora ha portato cose migliori.",
	},
	["org.muse.w18.camps.015"] = {
		"Che ogni cancello di questa città resti aperto, e ogni serratura stia dalla parte di dentro.",
		"Cancelli aperti e chiavistelli dalla parte di dentro. A una città non serve altro.",
	},
	["org.muse.w18.camps.016"] = {
		"Negli archivi di Lordaeron dovevano esserci registri di questi orchi: numerati, sfamati, contati. Passando loro accanto, nella loro città, ringrazio di non aver mai letto quelle pagine.",
		"La mia parte ha tenuto questa gente nei recinti e l'ha chiamata misericordia, perché l'alternativa era la scure. Adesso i loro nipoti mi vendono il pane. Pago senza contrattare.",
	},
	["org.muse.w18.camps.017"] = {
		"Piove su Orgrimmar, e un vecchio orco resta lì sotto con la faccia scura. Nei campi di Lordaeron pioveva sempre, racconta a chiunque gli stia vicino, e lui ha attraversato un mare per liberarsene.",
		"Un anziano maledice la pioggia che scende nel canyon. Nei campi non smetteva mai, borbotta, e lui pensava che Durotar avesse più giudizio.",
	},
	["org.muse.w18.camps.018"] = {
		"Gli anziani del mio popolo si portano dietro i campi in piccole cose: un sussulto a un fischio, una crosta di pane tenuta in tasca. Qualunque cosa io ne porti, loro ne hanno portata di più.",
		"Ogni vecchio orco che conosco mette da parte il fondo del pane. Nessuno dice perché. Fra noi non serve.",
	},
	["org.muse.w18.camps.019"] = {
		"nota un vecchio orco fermarsi di colpo al tintinnio di un mazzo di chiavi alla cintura di un goblin che passa, poi scuotere la testa per conto suo e riprendere a camminare.",
		"vede un anziano voltarsi di scatto a un tintinnio di chiavi tra la folla, restare immobile un istante e poi lasciar perdere con un grugnito.",
	},
	["org.muse.w18.camps.020"] = {
		"Gli anziani non parlano molto dei campi. Quando lo fanno, appoggio il boccale.",
		"Quando un vecchio comincia a parlare dei campi, tutto il tavolo tace. Perfino il goblin.",
	},
	["org.muse.w18.caravan.001"] = {
		"si fa da parte mentre una carovana di kodo dalle Barrens entra ondeggiando dal portale, con un mandriano tauren che cammina alla testa della prima bestia e le mormora qualcosa come a una vecchia amica.",
		"aspetta che passi una lunga fila di kodo, le casse legate in alto su ogni groppa e davanti un mandriano tauren che non alza mai la voce.",
		"lascia sfilare una carovana di kodo, bestie così cariche che ogni passo sembra una decisione.",
	},
	["org.muse.w18.caravan.002"] = {
		"Le carovane si portano dentro le Barrens: erba gialla impigliata nei finimenti, lappole nelle pieghe della pelle dei kodo, una spina che qualcuno sta ancora cercando di togliersi da uno stivale.",
		"Dopo il passaggio di una carovana la strada è sparsa di steli gialli e secchi scrollati dai kodo. Per qualche passo il canyon sa di savana aperta.",
		"Ogni kodo che arriva da ovest si lascia dietro un po' di Barrens, semi d'erba e polvere chiara, e i peoni la spazzano via senza sapere cosa stanno spazzando.",
	},
	["org.muse.w18.caravan.003"] = {
		"Questa carovana è entrata con una cassa scheggiata, un kodo che zoppica su una zampa fasciata e, a giudicare dalla sella vuota, una guardia in meno di quando è partita. Chi scarica non dice una parola sulle Barrens.",
		"Su una fiancata di un carro della carovana ci sono solchi freschi, e i conducenti scaricano in silenzio. Centauri, borbotta qualcuno al portale, e nessuno chiede altro.",
	},
	["org.muse.w18.caravan.004"] = {
		"È appena arrivata una carovana. Dagli un'ora e ogni prezzo del Drag scende di un rame. Posso aspettare.",
		"Mai comprare pelli il giorno che arriva una carovana. Si comprano il giorno dopo, quando i mercanti sono stufi di guardare il mucchio.",
		"Kodo al portale, casse per terra. Tenetevi stretti i soldi, amici: fra poco varranno di più.",
	},
	["org.muse.w18.caravan.005"] = {
		"guarda un capocarovana spuntare le casse su una lista, aggrottare la fronte, ricominciare e ottenere un numero diverso, mentre i kodo assistono senza la minima compassione.",
		"si attarda accanto a un capocarovana che conta per la terza volta le casse scaricate, con un totale che resta ostinatamente lontano di una da quello che pretende la lista.",
	},
	["org.muse.w18.caravan.006"] = {
		"Alcune delle casse che salgono dalle Barrens hanno cominciato il viaggio a Ratchet, dalle navi dei goblin. Si sente quando si sollevano i coperchi: sale, catrame, e un posto molto più lontano.",
		"La merce di Ratchet arriva a Orgrimmar a dorso di kodo, con il sale ancora nella paglia. Una pezza di stoffa straniera, un vaso di qualcosa sotto aceto, un odore di porto in fondo a un canyon.",
		"Le casse di Ratchet si riconoscono subito: lettere goblin dipinte a stampo, imballaggio di alghe, e ogni mercante a portata di mano che le apre con la smania di un bambino a una festa.",
	},
	["org.muse.w18.caravan.007"] = {
		"Ogni carovana che vedo qui arriva con la sua lite incorporata: il goblin padrone della merce, l'orco che l'ha scortata e il tauren che i kodo li ha guidati davvero, ognuno convinto che il viaggio sia merito suo.",
		"Il goblin conta i soldi, gli orchi contano i pericoli e il mandriano tauren conta i kodo. Poi discutono su quale conto valga di più.",
		"Dietro ogni carovana ci sono un goblin col registro, un orco con le cicatrici e un tauren con la pazienza, e ognuno racconta il viaggio come una storia su di sé.",
	},
	["org.muse.w18.caravan.008"] = {
		"si ferma accanto a un mandriano tauren che strofina con uno straccio le enormi zampe anteriori di un kodo, piano, mentre la bestia emette un lungo brontolio di sollievo.",
		"rallenta per guardare un mandriano inginocchiarsi a controllare le zampe di ogni kodo della fila, uno per uno, prima che qualcuno possa scaricare anche una sola cassa.",
		"sosta vicino a un kodo che si è accucciato in mezzo alla strada, mentre il suo mandriano siede appoggiato al suo fianco e divide con lui un otre, un sorso a testa.",
	},
	["org.muse.w18.caravan.009"] = {
		"Quando una carovana scarica qui nella Valley of Strength, tutta la valle diventa un gioco a scavalcare casse. La banca c'è ancora, da qualche parte, dietro un muro di sacchi di sale.",
		"Una carovana si è fermata in mezzo alla valle a scaricare, e adesso la strada per la banca passa sopra le casse, sotto le corde e fra due kodo che non si sopportano.",
	},
	["org.muse.w18.caravan.010"] = {
		"Guardie della carovana, appena pagate. Guardale: prima la locanda, forse un bagno, il sonno mai.",
		"Ecco che passano le guardie della carovana con la paga in tasca. Alla locanda sta per cominciare una settimana d'oro.",
		"Ma guarda come puntano alla locanda, quelli della carovana. Settimane di polvere, e ogni granello vuole un boccale.",
	},
	["org.muse.w18.caravan.011"] = {
		"I mandriani non contano in miglia la strada per Crossroads. La contano in acqua: tanti otri, tante pozze, tanti giorni di kodo che brontolano.",
		"Chiedi a un mandriano quanto dista Crossroads e ti risponde in pozze d'acqua, non in leghe. Nelle Barrens è l'unica distanza che conti.",
		"Tre pozzi e una buca fangosa, mi ha detto un mandriano quando gli ho chiesto la strada verso ovest. Ci ho messo un po' a capire che mi aveva dato la distanza.",
	},
	["org.muse.w18.caravan.012"] = {
		"guarda una carovana mettersi in fila nella prima luce grigia, i kodo che muggiscono quando le corde si tendono e un mandriano che percorre la fila con una lanterna, controllando ogni nodo.",
		"resta a vedere caricare una fila di kodo nel fresco del primo mattino, cassa dopo cassa, con i mandriani che si muovono piano per non svegliare la metà della valle che ancora dorme.",
	},
	["org.muse.w18.caravan.013"] = {
		"Quando passa una carovana di kodo al completo, le tazze sulle bancarelle tintinnano e la polvere salta su ogni sporgenza. Orgrimmar ha i suoi piccoli terremoti, e sanno tutti di kodo.",
		"Passa una fila di kodo e tutta la strada vibra: le pentole battono i denti sugli scaffali, uno spuntone allentato ticchetta contro il suo palo. Nessuno alza nemmeno lo sguardo.",
	},
	["org.muse.w18.caravan.014"] = {
		"Ogni carovana che risale dalle Barrens è una piccola battaglia vinta: centauri, quilboar e sete, battuti senza un solo tamburo. Nessuno ci canta sopra, e qualcuno dovrebbe.",
		"Una carovana che arriva intera al nostro portale vale per l'Orda più di metà delle vanterie della locanda. Qualcuno ha portato quei kodo oltre tutti i predoni delle Barrens per arrivare fin qui.",
	},
	["org.muse.w18.caravan.015"] = {
		"Quel kodo trasporta più di quanto possiedo io, e ne sembra più contento di me.",
		"Ma che carico ha quel kodo. Tutto quello che ho starebbe in una sola delle sue bisacce, e avanzerebbe posto per il pranzo.",
	},
	["org.muse.w18.courier.001"] = {
		"nota un corriere che cammina, invece di correre, verso la Valley of Wisdom, e vede chi se ne accorge ammutolire uno dopo l'altro.",
		"segue con gli occhi un messaggero che attraversa la valle con passo lento e regolare; intorno alla borsa la folla si zittisce, perché un corriere smette di avere fretta per un solo genere di notizie.",
	},
	["org.muse.w18.courier.002"] = {
		"Un corriere su un lupo coperto di schiuma è appena entrato dal portale e per poco non è caduto di sella consegnando la borsa. Due grunt l'hanno preso al volo, e qualcuno si è portato via il lupo prima che si stendesse in mezzo alla strada.",
		"Il corriere arrivato poco fa stava a malapena in piedi appena la borsa gli è uscita dalle mani. Hanno dato il messaggio a un fattorino e il cavaliere a una panca.",
		"Il dispaccio di qualcuno è appena arrivato al galoppo, e chi l'ha portato siede per terra accanto al palo del portale, con lo sguardo nel vuoto, mentre un grunt gli regge una tazza alla bocca.",
	},
	["org.muse.w18.courier.003"] = {
		"Un goblin vicino alla banca porta lettere in tutta Kalimdor e si fa pagare a parola. Ha fatto miracoli per la prosa dei grunt: 'Vivo. Mandate stivali.'",
		"Lettere recapitate, tanto a parola, dice la tavoletta del corriere goblin. Metà dei biglietti che vedo consegnare sono lunghi tre parole, e una è sempre 'soldi'.",
	},
	["org.muse.w18.courier.004"] = {
		"viene {g:fermato|fermata} da un giovane corriere che chiede, a voce bassissima, da che parte sia la Valley of Honor, e poi scatta via come se la domanda non fosse mai stata fatta.",
		"si sente chiedere la strada da un corriere di gran fretta e di imbarazzo ancora più grande, e vede la borsa sparire nella folla prima che la risposta sia finita.",
	},
	["org.muse.w18.courier.005"] = {
		"Nessun corriere è mai arrivato di corsa con il mio nome su una borsa. A guardarli sfrecciare, non so decidere se sia libertà o l'altra cosa.",
		"Ogni corriere di questa città porta le notizie di qualcuno. Nessuna è per me, e certi giorni è un sollievo, e certi giorni no.",
		"Le borse passano piene delle vite degli altri. Le guardo scorrere come barche su un fiume dove non pescherò mai.",
	},
	["org.muse.w18.courier.006"] = {
		"Alla locanda i corrieri bevono gratis. Pagano in notizie, e la locandiera soppesa ogni voce come una moneta prima di versare.",
		"Un corriere non paga mai un boccale alla locanda. Una scaramuccia ad Ashenvale ne vale uno, uno scandalo a Crossroads ne vale due, e la locandiera tiene il conto a memoria.",
		"I corrieri sono i clienti migliori della locanda e i peggiori pagatori. Ogni boccale finisce sul conto della notizia che hanno portato.",
	},
	["org.muse.w18.courier.007"] = {
		"si tiene in disparte mentre un corriere smonta al portale, si scola un otre intero restando in piedi e salta su un lupo fresco senza mai mollare la borsa.",
		"vede un messaggero cambiare il lupo sfinito con uno fresco in meno tempo di quanto serva ad allacciarsi uno stivale, la borsa sempre a tracolla.",
		"fa largo al portale per il cambio di cavalcatura di un corriere: un lupo portato via zoppicante e fumante, un altro già girato verso la strada prima che il cavaliere si sia sistemato.",
	},
	["org.muse.w18.courier.008"] = {
		"I corrieri portano ordini che non leggeranno mai e notizie di cui non sapranno mai la fine. Metà degli affari di Orgrimmar passano per mani che non sanno cosa stringono.",
		"Un corriere non legge quello che ha nella borsa. Tutto il mestiere è lì, me l'ha detto uno di loro: correre svelto, non chiedere niente, e scordarsi la faccia di chi la riceve.",
		"Borsa sigillata, bocca cucita, piedi svelti. Chiedi a un corriere cosa c'è dentro e ti guarda come un grunt guarda un borseggiatore.",
	},
	["org.muse.w18.courier.009"] = {
		"Largo al corriere! No, non io. Lui. Quello che corre.",
		"Attenti al fattorino! Troppo tardi. Sopravvivranno tutti e due, lui e il carretto.",
		"Passa un corriere, gente. Appiattitevi contro qualcosa.",
	},
	["org.muse.w18.courier.010"] = {
		"La guerra si legge in faccia ai corrieri. Le notizie da Ashenvale arrivano cupe e veloci, quelle dalle Barrens impolverate e annoiate, e chi viene dalla costa chiede sempre dello stesso ufficiale.",
		"A chi passa nessuno racconta come vanno i combattimenti là fuori. Ma guarda i corrieri entrare dal portale, quanto corrono e quanto sono sfiniti, e indovini abbastanza.",
		"Della guerra ho imparato più dagli stivali dei corrieri che da tutte le chiacchiere della locanda: fango vuol dire Ashenvale, cenere guai a sud, e sangue vuol dire che nessuno parla.",
	},
	["org.muse.w18.courier.011"] = {
		"passa piano accanto a un corriere addormentato su una panca contro il muro, con gli stivali ai piedi, la borsa sotto la testa e una mano stretta sulla cinghia.",
		"abbassa la voce passando accanto a un corriere che si è addormentato seduto in un angolo, la borsa dei dispacci stretta al petto come un bambino.",
	},
	["org.muse.w18.courier.012"] = {
		"Ogni corriere che mi passa accanto mi fa chiedere cosa ci sia nella borsa. Ordini, lettere, o la descrizione di qualcuno che qui non dovrebbe esserci.",
		"Guardo i corrieri con più attenzione di chiunque altro in questa città. Una di quelle borse sigillate, un giorno, potrebbe portare la mia faccia, messa per iscritto.",
	},
	["org.muse.w18.courier.013"] = {
		"Corri bene, corriere. Che la prossima borsa pesi meno.",
		"Vai, fattorino. Buone notizie, spero, per chi le aspetta.",
	},
	["org.muse.w18.courier.014"] = {
		"I corrieri corrono in un'Orgrimmar diversa da quella in cui cammino io: cornicioni, scale sul retro, un varco fra due capanne largo appena una spalla. Hanno già attraversato la città quando io ho finito la prima rampa.",
		"Segui un corriere con lo sguardo e scopri che questa città è piena di scorciatoie, su per i muri e attraverso porte che a nessun altro sembrano porte.",
	},
	["org.muse.w18.crossing.001"] = {
		"Sopra una porta vicino al Drag l'architrave è curvo come la costola di uno scafo, nero di vecchio catrame. Legno di nave, dice il padrone, della traversata. Quando esce ci bussa sopra per fortuna.",
		"In una vecchia capanna c'è una trave che ha ancora la curva di una chiglia e una fila di buchi di chiodi arrugginiti. È arrivata con gli orchi, dice un grunt, e si è rifiutata di finire nel fuoco.",
	},
	["org.muse.w18.crossing.002"] = {
		"Gli orchi non si fidano del mare, mi ha detto un grunt, e l'hanno attraversato lo stesso, tutti, col mal di mare fino all'ultimo. In questa frase, dice, c'è tutta la storia della sua gente.",
		"I veterani odiano qualunque acqua più profonda di un abbeveratoio. Eppure hanno attraversato un oceano, ha detto uno di loro, perché l'altra sponda era l'unico posto dove nessuno aveva uno steccato già pronto.",
	},
	["org.muse.w18.crossing.003"] = {
		"guarda un vecchio veterano in posizione di riposo che ondeggia appena, regolare, come se il terreno fosse un ponte di nave; i grunt accanto a lui giurano che la traversata non gli è mai uscita dalle ginocchia.",
		"coglie un anziano che, anche fermo, si dondola un poco dal tallone alla punta, come fanno i marinai, mentre i compagni fingono di non vederlo.",
	},
	["org.muse.w18.crossing.004"] = {
		"I veterani litigano ancora sullo straniero che disse a Thrall di salpare verso ovest. Un uomo col mantello, dice uno; un grande uccello nero, dice un altro; un pazzo, dice un terzo. Su una cosa sola sono d'accordo: aveva ragione.",
		"Qualcuno avvertì Thrall di portare la sua gente al di là del mare prima che arrivasse la pestilenza, dicono i vecchi orchi. Chi fosse, non riescono a stabilirlo, e hanno smesso di provarci. Bastava l'avvertimento.",
	},
	["org.muse.w18.crossing.005"] = {
		"I Darkspear raccontano la traversata con un altro eroe: non Thrall, ma il mare, che scaraventò gli orchi sulla loro isola proprio quando ai troll serviva qualcuno da tirare addosso ai nemici.",
		"Nel racconto dei troll le navi degli orchi non approdarono alle isole per caso. Le mandarono i loa, mi ha spiegato un Darkspear, e ai loa farebbe piacere che lo si ricordasse.",
	},
	["org.muse.w18.crossing.006"] = {
		"Un popolo intero di orchi sulle navi. Avrei pagato bene per vedere il primo che provava a salire su una scala di corda.",
		"Orchi per mare. C'è un gabbiano, là fuori, che ancora ci ripensa e rabbrividisce.",
		"Immagina una nave piena di orchi col mare grosso. Ora immagina chi ha dovuto pulirla.",
	},
	["org.muse.w18.crossing.007"] = {
		"Un grunt del portale ricorda come vide Kalimdor dal parapetto: una costa rossa, niente mura, nessuno stendardo piantato sopra. Dice che sembrava una mano tesa.",
		"Le vedette gridarono terra, ricorda un vecchio orco, ed eccola lì: una lunga fascia di roccia rossa, vuota, in attesa. Nessuno esultò. Rimasero tutti a fissarla, come se qualcuno potesse riprendersela.",
	},
	["org.muse.w18.crossing.008"] = {
		"rimane a guardare una banda di bambini che gioca alla traversata: un'asse su due casse per nave, un piccolo orco che urla ordini e un piccolo troll che finge il mal di mare con grande convinzione.",
		"gira intorno a un gioco di bambini in mezzo alla strada, dove una fila di cuccioli seduti su una panca rema nel vuoto mentre il più piccolo, in piedi su un barile, grida terra.",
	},
	["org.muse.w18.crossing.009"] = {
		"Un bottaio della città sigilla ancora le botti con il catrame da nave, e gli anziani che passano rallentano all'odore. La traversata, mi ha detto uno, puzzava proprio così, più la paura.",
		"Vicino alla bottega di un bottaio l'aria sa di pece calda, e il vecchio orco che cammina davanti a me si blocca, poi ride di sé. Le navi, dice. Ogni asse ne puzzava.",
	},
	["org.muse.w18.crossing.010"] = {
		"La flotta che portò gli orchi a Kalimdor fu presa in prestito dai porti di Lordaeron, raccontano i veterani sogghignando. Nessuno si è mai offerto di restituirla.",
		"Lordaeron prestò una flotta agli orchi, come ama dire un vecchio grunt. Non sapeva di prestarla e le navi non le ha mai riavute, ma è stata molto generosa lo stesso.",
		"Da dove venivano le navi? Un regalo, ti dirà un veterano. Di chi? Lordaeron non aveva protestato, risponderà. Non ad alta voce, almeno.",
	},
	["org.muse.w18.crossing.011"] = {
		"Non tutte le navi della traversata toccarono la costa, dicono gli anziani, e i dispersi non li nominano davanti a tutti. Alcuni nomi sono rimasti in mare, ed è là che li tengono.",
		"Chiedi quanti salparono e quanti sbarcarono, e i vecchi orchi ti danno due numeri, poi guardano altrove. La differenza è ancora là fuori, in mare aperto.",
	},
	["org.muse.w18.crossing.012"] = {
		"Siamo arrivati dal mare su scafi presi in prestito, orchi e troll stipati insieme, senza sapere niente dell'altra sponda. Ogni volta che percorro queste strade, percorro l'ultimo tratto di quel viaggio.",
		"La traversata non è finita, mi ha detto un vecchio sciamano. Ogni orco che cammina per Orgrimmar sta ancora scendendo da quelle navi. Ci penso in banca, figurarsi.",
	},
	["org.muse.w18.crossing.013"] = {
		"Quando i tauren videro arrivare nelle pianure gli orchi di Thrall, raccontano gli anziani della Valley of Wisdom, li presero per naufraghi. In un certo senso, ha aggiunto un tauren, non sbagliavano.",
		"Magri, chiassosi, il sale ancora nei capelli, che chiedevano la strada per nessun posto in particolare: così un vecchio tauren ricorda l'arrivo degli orchi nell'entroterra. Alle mandrie piacquero, dice, prima che agli anziani.",
	},
	["org.muse.w18.crossing.014"] = {
		"Sulle scogliere verso la costa, dicono i grunt, ci sono ancora vedette che scrutano il mare in cerca di vele. Kul Tiras è venuta una volta con una flotta; la seconda non vogliono farsi trovare impreparati.",
		"Ogni grunt che ha fatto la guardia sopra la costa conosce la sagoma di una vela di gabbia di Kul Tiras. Gliel'hanno insegnata, dice un veterano, come ai bambini si insegna la forma della coda di uno scorpide.",
	},
	["org.muse.w18.crossing.015"] = {
		"A chi teneva a galla quelle navi rubate. Nessuno racconta mai storie su quelli che svuotavano la sentina.",
		"In ogni racconto della traversata c'è un capitano. Mi piacerebbe sentirne uno sull'orco col secchio.",
	},
	["org.muse.w18.crossing.016"] = {
		"fa scorrere un dito lungo una fila di minuscoli scafi intagliati in un vecchio palo vicino alla locanda, una decina o poco più, gli ultimi segnati di traverso da tagli profondi e decisi.",
		"nota una piccola flotta di barche intagliate in una trave, lucida a un'estremità, dove sembra che le mani di chi passa la tocchino.",
	},
	["org.muse.w18.crossing.017"] = {
		"Un oceano, navi rubate e quasi nessun marinaio a bordo. Non è coraggio. È un popolo intero che si rifiuta di annegare.",
		"Attraversare un mare senza nessuno che sapesse andare a vela. Lo chiamerei follia, se non avesse funzionato.",
	},
	["org.muse.w18.depths.001"] = {
		"Vicino alla discesa verso Ragefire Chasm si radunano piccole compagnie a controllare cinghie e a contarsi, come fa chi sta per entrare apposta in un incendio.",
		"C'è sempre un capannello di gente armata vicino alla discesa in Ragefire Chasm: si stringono le fibbie, si litiga su chi va per primo, si finge di non guardare giù.",
	},
	["org.muse.w18.depths.002"] = {
		"I trogg sono saliti dalla roccia profonda sotto la città, dicono i veterani della Cleft, da qualche posto che nessuno ha mai segnato su una mappa. Un trogg conosce una sola direzione, ed è quella in cui nessun altro vuole andare.",
		"Nessuno sa da dove vengano i trogg che stanno sotto Orgrimmar. Da sotto, risponde chiunque abbia chiesto, come se fosse una risposta. Forse, per un trogg, lo è.",
	},
	["org.muse.w18.depths.003"] = {
		"La cosa peggiore della Burning Blade non è il fuoco. È che sotto quei cappucci ci sono facce di orchi, e alcuni hanno cugini che vendono pane un piano più su.",
		"Sotto la Cleft i cultisti hanno le stesse zanne dei grunt sulle mura. Qualunque cosa adori la Burning Blade, trova i suoi adepti nelle stesse strade di tutti gli altri.",
	},
	["org.muse.w18.depths.004"] = {
		"guarda una compagnia annerita e bruciacchiata risalire da Ragefire Chasm nella Cleft, sbattendo le palpebre davanti alle torce fioche come se abbagliassero.",
		"si scosta per lasciar passare un gruppo che risale da Ragefire Chasm, con addosso odore di fumo e di peli bruciati, chi sorridente, chi zoppicante, chi tutte e due le cose.",
	},
	["org.muse.w18.depths.005"] = {
		"Ragefire Chasm. Il nome è un avvertimento, e l'odore è il secondo.",
		"Chi ha battezzato quell'abisso non ha sprecato parole in cortesie. Bene. Nemmeno io: no.",
	},
	["org.muse.w18.depths.006"] = {
		"L'abisso bruciava molto prima che qualcuno posasse una pietra in questo canyon. Orgrimmar ci sta seduta sopra come una pentola su una brace: comoda, finché qualcuno non si scorda di mescolare.",
		"Prima delle mura, prima della porta, il fuoco era già laggiù. La città ci è stata costruita sopra come un coperchio, e i coperchi sbatacchiano.",
	},
	["org.muse.w18.depths.007"] = {
		"Ogni grande città tiene qualcosa in cantina. Quasi tutte si accontentano dei topi. Orgrimmar ha trogg, cultisti e un fiume di fuoco, e si lamenta lo stesso dei topi.",
		"Topi in cantina, dicono le altre capitali, come se fosse un guaio. La cantina di Orgrimmar ha cultisti e roccia fusa, e i grunt la chiamano il seminterrato.",
		"Le altre capitali si preoccupano dell'umidità in cantina. Quella di Orgrimmar ha il problema opposto, e un culto che ci abita.",
	},
	["org.muse.w18.depths.008"] = {
		"Di notte la Cleft è l'angolo più caldo di Orgrimmar, merito di quello che brucia là sotto. Nessuno si ferma a goderselo.",
		"Col buio il canyon si raffredda in fretta, tranne giù verso la Cleft, dove la roccia resta tiepida tutta la notte per il fuoco che c'è sotto. Nessuno ci dorme per scelta.",
	},
	["org.muse.w18.depths.009"] = {
		"Un tempo la Burning Blade era un clan, dicono gli anziani, con uno stendardo e un focolare come tutti gli altri. Adesso è l'unico nome di clan che a Orgrimmar nessuno pronuncia più forte di un borbottio.",
		"Chiedi a un vecchio orco della Burning Blade e ti dirà che era un clan prima di essere un culto. Poi cambierà discorso, in fretta, come chi scende da una pietra rovente.",
	},
	["org.muse.w18.depths.010"] = {
		"Il Capoguerra potrebbe mandare i suoi grunt giù nell'abisso. Invece, dicono i grunt, lascia tentare la sorte a chiunque abbia un'arma e un motivo. Costa meno, e le mura restano presidiate.",
		"Ripulire Ragefire Chasm, a quanto pare, tocca ai volontari. I grunt la chiamano una prova di fegato. I volontari, quando risalgono, la chiamano in altri modi.",
	},
	["org.muse.w18.depths.011"] = {
		"Scendi laggiù? Porta acqua. Il doppio di quella che pensi.",
		"Ragefire? Porta acqua, un mantello di ricambio, e qualcuno che sappia correre.",
		"Giù nell'abisso? Lascia il mantello pesante. Porta qualcuno a cui non dispiaccia caricarti in spalla.",
	},
	["org.muse.w18.depths.012"] = {
		"Un filo di fumo sottile esce da una crepa nel pavimento della Cleft, con odore di zolfo. Qualcuno l'ha tappata con degli stracci. Fumano anche gli stracci.",
		"Da una spaccatura nella roccia della Cleft sale un ricciolo di fumo giallastro. Ci hanno ficcato dentro uno straccio, sullo straccio una pietra, intorno alla pietra un altro straccio, e continua a filtrare.",
	},
	["org.muse.w18.depths.013"] = {
		"sente un lungo brontolio sordo salire attraverso la roccia da qualche punto profondo sotto la Cleft, e vede la gente intorno continuare a chiacchierare come se la città si fosse solo schiarita la gola.",
		"si ferma a un borbottio cupo che sale dalle pietre sotto i piedi; gli altri, nella Cleft, lo lasciano passare con la pazienza di una lunga abitudine.",
	},
	["org.muse.w18.depths.014"] = {
		"Giù nell'abisso ci sono orchi che si inginocchiano ancora al fuoco che abbiamo sputato via. Ognuno di loro ricorda che la maledizione del sangue non ci è stata solo inflitta. Alcuni di noi la coppa l'hanno porta.",
		"Sotto le nostre stesse strade la Burning Blade tiene vivo il vecchio patto. Vorrei pensare che siano estranei. Non lo sono. Sono noi, come eravamo.",
	},
	["org.muse.w18.depths.015"] = {
		"spinge col piede un sasso oltre il bordo della discesa verso Ragefire Chasm e lo ascolta rotolare via per un tempo lunghissimo.",
		"lascia cadere un sassolino lungo il pendio verso Ragefire Chasm e aspetta l'ultimo ticchettio, che arriva più tardi di quanto sembri ragionevole.",
	},
	["org.muse.w18.depths.016"] = {
		"La pioggia si fa strada nella Cleft e sfrigola dove incontra la roccia tiepida vicino alla discesa. Dalla pietra sale vapore in piccoli fantasmi, e la gente incappucciata ci sta in mezzo come in un bagno caldo.",
		"Con la pioggia la Cleft fuma. La roccia vicino a Ragefire Chasm è troppo calda per restare bagnata, e ogni goccia risale in un filo bianco sottile.",
	},
	["org.muse.w18.depths.017"] = {
		"studia la fuliggine che risale la roccia sopra la discesa verso Ragefire Chasm in lunghe lingue nere, come se il fuoco là sotto avesse provato più di una volta a uscire.",
		"nota la pietra sopra la discesa verso Ragefire Chasm annerita a strisce, come i segni di dita che si sono allungate verso l'alto senza farcela.",
	},
	["org.muse.w18.drill.001"] = {
		"Le asce da esercitazione della Valley of Honor sono di legno, cerchiate di ferro perché pesino come quelle vere. Non tagliano. Insegnano e basta, dicono gli istruttori, nella lingua dei lividi.",
		"Asce di legno, cerchiate di ferro per il peso: il modo della Valley of Honor di far sentire ogni errore a un allievo senza che ci rimetta una mano.",
		"Sulle rastrelliere d'esercitazione della Valley of Honor non c'è niente di affilato. Il livido è un maestro economico, dicono gli istruttori, il taglio uno costoso.",
	},
	["org.muse.w18.drill.002"] = {
		"Gli istruttori della Valley of Honor fanno tenere a un allievo la stessa posizione accovacciata finché le gambe tremano, senza un colpo e senza una parola. Quando alla fine crolla, la lezione è quella: restare in piedi è quasi tutto il combattere.",
		"Prima di imparare a colpire, nel cortile si impara a stare in piedi, mi ha detto un istruttore: finché stare in piedi non fa più male di qualsiasi colpo.",
		"Metà di ogni lezione, nel cortile d'addestramento, si passa senza muoversi. Gli allievi la odiano. I vecchi guerrieri che guardano dal bordo annuiscono come se fosse musica.",
	},
	["org.muse.w18.drill.003"] = {
		"In fondo alla Valley of Honor, dalla parte dei cacciatori, c'è un bersaglio di paglia colpito così tante volte che ormai è quasi tutto buco. I cacciatori continuano a mirare all'ultimo ciuffo di paglia, per rispetto.",
		"Uno dei bersagli nel cortile dei cacciatori è più vuoto che paglia. Nessuno lo cambia. Colpire quel che ne resta, mi ha detto un cacciatore, è la vera prova.",
		"Il bersaglio più vecchio dei cacciatori ha perso la paglia una manciata dopo l'altra, e ormai sta in piedi solo per la sua fama.",
	},
	["org.muse.w18.drill.004"] = {
		"guarda un istruttore correggere la presa di un allievo senza dire niente: due dita spostate di un soffio, un colpetto sul polso, e l'istruttore se ne sta già andando.",
		"vede un istruttore allungare la mano e spostare appena quella di un allievo sul manico, poi fare un passo indietro; il colpo dopo arriva con il doppio della forza.",
	},
	["org.muse.w18.drill.005"] = {
		"fa una smorfia al colpo secco di un'ascia di legno contro un giubbetto di cuoio, un suono che arriva fino in fondo al cortile, e all'applauso che lo segue.",
		"trasale a uno schiocco di legno su cuoio indurito dal cortile d'addestramento, e poi di nuovo, un attimo dopo, al guaito dell'allievo.",
	},
	["org.muse.w18.drill.006"] = {
		"Un allievo lascia il terreno di lotta della Valley of Honor col naso sanguinante e un sorriso largo così. L'istruttore gli ha concesso un cenno del capo. A giudicare dalla faccia, darebbe una borsa piena per averne un altro.",
		"Nel cortile d'addestramento un solo cenno di un istruttore è la paga più alta che ci sia. Ho visto grunt prendersi un labbro spaccato per averlo, e chiamarlo un affare.",
	},
	["org.muse.w18.drill.007"] = {
		"Gli istruttori dei cacciatori trascinano un brandello di pelle nella polvere del cortile e fanno seguire la traccia agli allievi solo con gli occhi. Poi la cancellano coi piedi e gliela fanno rifare a memoria.",
		"Nella Valley of Honor a seguire le tracce si impara con una pelle trascinata e un sacco di urla. Seguila, dice l'istruttore. Adesso senza guardare. Gli allievi sbuffano in diverse lingue.",
	},
	["org.muse.w18.drill.008"] = {
		"L'istruttore più vecchio del cortile insegna prima di tutto a cadere. Gli allievi finiscono nella polvere cento volte al giorno. Un guerriero che non sa cadere bene, dice, cade male una volta sola.",
		"Imparate a cadere, dicono gli istruttori della Valley of Honor agli allievi, e poi li buttano a terra, una volta dopo l'altra, finché toccare il suolo diventa soltanto un altro modo di rialzarsi.",
	},
	["org.muse.w18.drill.009"] = {
		"All'alba, prima che arrivino gli allievi, gli istruttori della Valley of Honor percorrono il cortile e tolgono ogni sasso smosso. È la cosa più gentile che faranno in tutta la giornata, e badano bene che nessuno li veda.",
		"Alle prime luci il cortile è vuoto, a parte gli istruttori chini a togliere i sassolini perché nessuno prenda una storta. Un'ora dopo urlano già, e di quella gentilezza nessuno parla.",
	},
	["org.muse.w18.drill.010"] = {
		"Quel grunt picchia sullo stesso palo da un'eternità. O il palo gli deve dei soldi, o ha intenzione di sposarlo.",
		"Qualcuno dica a quel grunt che il palo si è arreso da un pezzo.",
	},
	["org.muse.w18.drill.011"] = {
		"La pioggia sulla Valley of Honor trasforma il cortile in una pasta rossa. Gli istruttori la chiamano un dono e ci tengono dentro tutti finché gli allievi non hanno il colore del canyon.",
		"Qualunque altro istruttore sospenderebbe l'esercitazione sotto la pioggia. A Orgrimmar la festeggiano: il fango, dicono, insegna ai piedi quello che la polvere non insegnerà mai.",
	},
	["org.muse.w18.drill.012"] = {
		"Gli istruttori dei guerrieri e quelli dei cacciatori della Valley of Honor hanno una sola discussione, e la portano avanti da quando la città è stata costruita: da vicino o da lontano. Nessuno dei due ha ceduto di un passo, e i guerrieri la contano come una vittoria.",
		"Accorcia la distanza, dicono gli istruttori dei guerrieri. Resta indietro, dicono quelli dei cacciatori. Dividono una valle e quell'unica lite, e sembra che ci si divertano più di quanto ammetterebbero.",
		"Stringere o tenersi a distanza: è la lite più vecchia della Valley of Honor, e nessuno si aspetta che finisca finché ci saranno due razze di istruttori a tenerla viva.",
	},
	["org.muse.w18.drill.013"] = {
		"tiene d'occhio una troll ai margini del cortile mentre fascia le nocche spaccate di un allievo, schioccando la lingua, e lo rispedisce dritto nella polvere.",
		"nota una guaritrice troll seduta accanto al cortile con un cesto di bende, che rattoppa ogni grunt che arriva zoppicando e lo restituisce agli istruttori come un attrezzo prestato.",
	},
	["org.muse.w18.drill.014"] = {
		"Ogni allievo di quel cortile un giorno starà da qualche parte per tutti noi: un avamposto nelle Barrens, un muro in Ashenvale. Li guardo finire nella polvere e gli sono già riconoscente.",
		"La Valley of Honor addestra chi terrà aperte le nostre strade. Ogni livido preso in quel cortile è uno che l'Orda non prenderà in un posto peggiore.",
	},
	["org.muse.w18.drill.015"] = {
		"Prima i piedi, poi le mani, poi la bocca, dicono gli istruttori. Mezzo cortile fa il contrario.",
		"Prima il gioco di gambe, urlano in quel cortile. Io mi accontenterei di camminare senza inciampare.",
	},
	["org.muse.w18.drill.016"] = {
		"Da qualche strada più in là, quel cortile d'addestramento sembra una cucina che perde una battaglia con le padelle.",
		"Senti la Valley of Honor? Fracasso, tonfo, schianto, risate. Qualcuno ha rovesciato la zuppa un'altra volta.",
	},
	["org.muse.w18.drill.017"] = {
		"si raddrizza per riflesso al muggito di un istruttore che arriva da qualche parte della città, poi si ricorda che era per qualcun altro e lascia ricadere le spalle, un po' in imbarazzo.",
		"sobbalza a un lontano ruggito di «Ancora una volta!» da qualche cortile d'addestramento, e si ritrova con i piedi già piantati come per un combattimento.",
	},
	["org.muse.w18.drill.018"] = {
		"I lividi passano, le lezioni restano, dicono gli istruttori. Di solito appena prima di distribuire il livido.",
		"Il credo del cortile, per quel che ho capito: colpisci, cadi, rialzati, prenditi le urla, ricomincia.",
	},
	["org.muse.w18.edict.001"] = {
		"si ferma con il resto della valle quando un araldo sale su una cassa vicino alla banca e proclama la parola del Capoguerra; appena scende, una dozzina di contrattazioni riprende esattamente da dove si era interrotta.",
		"ascolta la voce di un araldo che attraversa la valle con le notizie da Grommash Hold, e sorride al mercante lì accanto, rimasto per tutto il tempo con lo stesso prezzo a mezz'aria, a metà.",
	},
	["org.muse.w18.edict.002"] = {
		"Il Capoguerra dà un ordine e per strada ne arrivano tre. Ogni grunt lo porta a modo suo, e in qualche modo hanno ragione tutti e tre.",
		"La parola di Thrall scende da Grommash Hold semplice e breve. Quando arriva al portale, ogni grunt ci ha aggiunto qualcosa di suo, di solito un cipiglio.",
		"Un ordine esce da Grommash Hold. Alla banca è un ordine e un avvertimento; al portale è un ordine, un avvertimento e la storia dell'ultimo sciocco che non gli ha dato retta.",
	},
	["org.muse.w18.edict.003"] = {
		"Un anziano alla locanda si lamentava che una volta una lite finiva con un'ascia e una sepoltura, e adesso finisce con un grunt e una multa. I giovani al suo tavolo non vedevano il problema.",
		"Ai tempi degli anziani, dicono, due orchi con un rancore si trovavano in un cerchio e ne usciva uno solo. Adesso si trovano davanti a un grunt e ne escono tutti e due, più poveri. Gli anziani lo chiamano mollezza. Nessuno più giovane ribatte.",
	},
	["org.muse.w18.edict.004"] = {
		"Il Capoguerra ha parlato. Questo chiude la faccenda, qualunque fosse.",
		"Parola di Thrall, eh? Allora non resta niente da discutere. Peccato.",
		"Ordini da Grommash Hold. Ecco sistemati i miei brontolii della settimana.",
	},
	["org.muse.w18.edict.005"] = {
		"Gli ordini del Capoguerra sono sempre brevi. Un capo che spiega a lungo chiede che lo si contraddica; Thrall lo dice e basta, e la città si muove.",
		"Niente discorsi lunghi da Grommash Hold. Una frase o due portate fino alle strade, e ognuno sa dove sta. Le parole corte sono quelle che pesano di più.",
		"Thrall non discute con la città. Dice una cosa una volta, in poche parole, e lascia che sia la città a discutere da sola.",
	},
	["org.muse.w18.edict.006"] = {
		"La parola del Capoguerra sul Burning Blade, mi ha detto un grunt, non ha mai avuto bisogno di essere ripetuta: trovarli e stanarli. È l'unico ordine su cui nessuno brontola.",
		"Di tutti gli ordini del Capoguerra, dicono i grunt, quello sul Burning Blade è l'unico che nessuno gli ha mai chiesto di spiegare. Il fuoco che servono l'ha spiegato tanto tempo fa.",
	},
	["org.muse.w18.edict.007"] = {
		"Mai scavalcare un'ascia posata a terra, mi ha avvertito un grunt: bisogna girarci intorno. Legge o buona creanza? Non lo sapeva nemmeno lui. Lo sapeva e basta.",
		"Nessuno ricorda chi abbia stabilito la regola sulle armi lasciate a terra, dicono i grunt: si gira intorno, mai sopra. Tutti la rispettano.",
	},
	["org.muse.w18.edict.008"] = {
		"si ferma accanto a uno scrivano che legge ad alta voce un nuovo ordine del Capoguerra a un cerchio di peoni; a ogni domanda risponde rileggendo la stessa riga, più forte.",
		"resta ad ascoltare un impiegato che legge l'ultima parola del Capoguerra a un gruppetto di manovali, che continuano a discuterne il senso a lungo dopo che lui ha arrotolato il foglio e se n'è andato.",
		"indugia ai margini di un capannello intorno a uno scrivano con un ordine fresco, dove ogni ascoltatore pare averne sentito uno diverso.",
	},
	["org.muse.w18.edict.009"] = {
		"Il Capoguerra chiede tre cose all'Orda, per quel che capisco: tenere la pace nella sua città, pagare quel che dobbiamo e venire quando chiama. L'ultima è l'unica che mi toglie il sonno.",
		"La nostra legge è abbastanza corta da portarsela ovunque: niente faide dentro le mura, niente debiti lasciati indietro, e una risposta quando il Capoguerra chiama. Le prime due le rispetto senza nemmeno pensarci.",
	},
	["org.muse.w18.edict.010"] = {
		"Ogni clan aveva una volta la sua legge, e quasi tutti erano d'accordo su una cosa sola: gli altri clan sbagliavano. La legge di Thrall è la prima che hanno dovuto dividere. Si sentono i vecchi recalcitrare, e rispettarla.",
		"Gli anziani borbottano ancora delle usanze di clan: come si faceva nel loro, come sbagliava quello della valle accanto. Poi un grunt fa valere la via del Capoguerra, e loro tacciono e obbediscono. Le vecchie abitudini brontolano; non comandano.",
	},
	["org.muse.w18.edict.011"] = {
		"Un goblin mi ha spiegato a lungo le leggi del commercio di questa città. Per quel che ho capito, si riducono a questo: il Capoguerra prende la sua parte, e il goblin quella di tutti gli altri.",
		"Le regole del commercio a Orgrimmar, come le racconta un goblin: paga quel che spetta al Capoguerra, tieni la bilancia onesta dovunque un grunt possa vederla, e tutto il resto si può discutere.",
		"I goblin qui rispettano la legge del Capoguerra alla lettera, mi ha detto un grunt con amarezza, e hanno studiato ogni lettera per trovare gli spazi in mezzo.",
	},
	["org.muse.w18.edict.012"] = {
		"aspetta in fondo alla sala mentre dal trono viene data una sentenza in poche parole a voce bassa, e guarda entrambe le parti inchinarsi, una delle due a denti stretti.",
		"sta fra i presenti mentre dal trono viene pronunciato un giudizio, così piano che tutta la sala si sporge per sentirlo.",
		"vede una sentenza posarsi su due postulanti in lite come la polvere dopo un carro, finché a nessuno dei due resta niente da dire.",
	},
	["org.muse.w18.edict.013"] = {
		"Nuovi ordini da Grommash Hold? Leggimeli piano. Voglio sapere di cosa sto per lamentarmi.",
		"Una nuova parola del Capoguerra? Comincio a obbedire appena qualcuno mi dice cosa c'è scritto.",
		"Ordini, eh? Splendido. Cosa non si può più fare, stavolta?",
	},
	["org.muse.w18.edict.014"] = {
		"Un anziano mi ha detto la legge orchesca più antica che conosca: chi ha mangiato al tuo fuoco è al sicuro sotto il tuo tetto. La pace del Capoguerra, dice lui, è solo quella legge con un tetto molto più grande.",
		"I vecchi clan avevano una regola che rispettavano tutti, mi ha raccontato un orco brizzolato: l'ospite al fuoco non si tocca. Orgrimmar, secondo lui, è quello stesso fuoco, fatto abbastanza grande per tutti i popoli insieme.",
	},
	["org.muse.w18.edict.015"] = {
		"A Orgrimmar un ladro non finisce impiccato, mi ha detto un grunt. Porta pietre per le mura finché non ha ripagato, e anche qualcosa in più. Metà delle mura, dice, l'ha costruita gente che si era pentita di qualcosa.",
		"I ladri presi finiscono sulle mura, dicono i grunt, a portare argilla e legname finché il debito non è saldato. Ogni rattoppo di malta fresca potrebbe essere le scuse di qualcuno.",
		"Ruba qui e finirai a costruire la città, amano dire i grunt. Si racconta che alcuni dei tratti di mura più solidi siano confessioni.",
	},
	["org.muse.w18.elder.001"] = {
		"Un anziano tauren si accovaccia accanto al sentiero e studia la polvere come un sapiente studia una pagina. Due kodo, un goblin di fretta e un grunt che zoppica, dice al vitello che gli sta vicino. Il vitello ha l'aria di credere a ogni parola.",
		"Nella Valley of Wisdom un vecchio tauren insegna a un vitello a leggere il sentiero: lo zoccolo, lo stivale, il solco lungo di un carro. In una città così affollata, a quella lezione l'inchiostro non manca mai.",
	},
	["org.muse.w18.elder.002"] = {
		"si ferma a guardare un vecchio tauren che ricava un kodo minuscolo da un pezzo d'osso, mentre un piccolo orco ai suoi piedi aspetta con tutte e due le mani già tese.",
		"indugia vicino a un anziano tauren che intaglia nell'osso un kodo grande come un pollice; al piccolo orco accanto a lui hanno detto due volte di avere pazienza, e lui non ce la fa, con grande dignità.",
		"sorprende un tauren a porgere un kodo d'osso a un bambino orco, che lo esamina serio come un mercante prima di scappare via di corsa.",
	},
	["org.muse.w18.elder.003"] = {
		"I tauren della Valley of Wisdom vivono sotto le pelli, anche se gli orchi avrebbero scavato per loro delle stanze nella roccia. Una tenda si piega e si porta via, mi ha detto una di loro. Al suo popolo è servito più di una volta.",
		"Pietra dappertutto, e i tauren piantano ancora tende di pelle dipinta. Sono già stati cacciati dai loro pascoli, mi ha spiegato un tauren senza amarezza, e una casa che si carica su un kodo nessuno te la può portare via.",
		"Ogni tenda tauren della Valley of Wisdom si potrebbe smontare e caricare prima che un grunt finisca la sua zuppa. Nessuno pensa che servirà. Ma nessuno toglie i pali dal terreno per sempre.",
	},
	["org.muse.w18.elder.004"] = {
		"Un anziano della Valley of Wisdom fuma una pipa lunga quanto il mio braccio. Un giovane guerriero mi ha detto che il suo umore si legge nel fumo: dritto verso l'alto vuol dire che pensa, ad anelli vuol dire che ha già deciso e se la gode.",
		"Guarda abbastanza a lungo il fumo della pipa di un vecchio tauren e impari a conoscerlo, dicono i giovani. Un filo sottile e dritto: sta soppesando qualcosa. Anelli: ha già soppesato, e hai perso tu.",
		"Gli anziani tauren parlano con la pipa quanto con la bocca. Una boccata lunga e un pennacchio lento vogliono dire no. Uno sbuffo breve vuol dire richiedi più tardi. Il segno per il sì non l'ho ancora visto.",
	},
	["org.muse.w18.elder.005"] = {
		"Ho chiesto la strada a un anziano tauren. Tre storie dopo so dove riposa il kodo di suo nonno, ma la strada no.",
		"Mai chiedere la strada a un anziano tauren se hai fretta. Ci arrivi, alla fine: con molta saggezza in più e molto ritardo.",
	},
	["org.muse.w18.elder.006"] = {
		"Di' a un anziano tauren che torni presto e ti chiede, serissimo, in quale stagione. Nella Valley of Wisdom, presto è una parola lunga.",
		"Un orco ha promesso a un tauren che il lavoro sarebbe stato pronto a momenti. Il tauren ha annuito e si è seduto ad aspettare, come se a momenti volesse dire una migrazione delle mandrie.",
	},
	["org.muse.w18.elder.007"] = {
		"gira al largo da un cerchio di tauren seduti sulle pelli, che si passano una ciotola di legno di mano in mano; i discorsi tacciono, per cortesia, il tempo del suo passaggio.",
		"aggira un cerchio di tauren seduti che dividono un'unica ciotola, e si accorge che la conversazione aspetta che passi oltre, come una porta tenuta aperta.",
	},
	["org.muse.w18.elder.008"] = {
		"I tauren salutano con la mano aperta sul petto, gli orchi col pugno. Nella Valley of Wisdom i due gesti si sono venuti incontro, e certi grunt ormai si posano sul cuore un pugno allentato, senza sapere bene dove l'abbiano imparato.",
		"A metà strada fra il palmo aperto dei tauren e il pugno chiuso degli orchi, la Valley of Wisdom si è fatta un saluto tutto suo: una mano socchiusa posata sul petto. Nessuno l'ha insegnato. Tutti lo usano.",
		"Una volta ho visto un grunt posarsi il pugno sul petto davanti a un anziano tauren, e l'anziano aprirgli le dita, con delicatezza, una per una. Nessuno ha spiegato niente. Adesso molti grunt salutano così.",
	},
	["org.muse.w18.elder.009"] = {
		"Una vecchia sciamana orca della Valley of Wisdom porta un cordino di perline, una per ogni clan che ha conosciuto. Alcuni di quei clan non esistono più. Quelle perline non le ha tolte: dice che contano ancora.",
		"Alcune perline sul cordino di una vecchia sciamana appartengono a clan sotto cui nessuno combatte più. Lei le tiene lo stesso, lisciate dal pollice, come si tiene in bocca un nome perché non ammutolisca.",
	},
	["org.muse.w18.elder.010"] = {
		"Qui una tauren si appoggia a un bastone intaccato da cima a fondo. Una tacca per ogni volta che le mandrie hanno dovuto spostarsi, mi ha detto. In fondo non c'è rimasto molto spazio, e lei sembra contenta così.",
		"Il bastone di un vecchio tauren di questa valle è segnato per tutta la lunghezza: ogni tacca una migrazione, un campo smontato, una strada presa. L'ultima è quella di Orgrimmar, ed è ben lontana dalla penultima.",
		"Ogni anziano, qui, porta un bastone, e ogni bastone è una mappa di strade incisa a tacche. Le più recenti sono le più profonde. Le vecchie la mano le ha quasi cancellate.",
	},
	["org.muse.w18.elder.011"] = {
		"Di notte, chiuse le bancarelle, gli anziani tauren della Valley of Wisdom tengono acceso un fuoco basso e parlano. Arriva qualche orco, poi un troll o due, e si siedono appena fuori dalla luce, come se non fossero venuti ad ascoltare.",
		"Notte nella Valley of Wisdom: un fuocherello, tre vecchi tauren e una storia che sembra non finire mai. Al margine della luce c'è sempre qualche grunt fuori servizio, che finge di scaldarsi le mani.",
	},
	["org.muse.w18.elder.012"] = {
		"guarda i tauren della Valley of Wisdom tirare fuori tutte le ciotole e le pentole che hanno appena comincia la pioggia, e poi sedersi in mezzo ad ascoltarle riempirsi.",
		"si ferma accanto a una fila di pentole e ciotole tauren lasciate sotto la pioggia, ognuna con la sua nota, mentre i padroni siedono lì vicino a occhi socchiusi, in ascolto.",
	},
	["org.muse.w18.elder.013"] = {
		"Posso sedermi, anziano? ...Prendo il silenzio per un sì. Mi dicono che di solito lo è.",
		"Posso dividere la panca con te, anziano? Nessuna risposta. In tauren, credo, è un benvenuto caloroso.",
	},
	["org.muse.w18.elder.014"] = {
		"Un anziano tauren sta rimproverando un giovane guerriero con una voce così bassa che mezza valle si è fermata a tendere l'orecchio. A Orgrimmar, dove tutti urlano, è la sgridata più spaventosa che abbia mai sentito.",
		"Nella Valley of Wisdom nessuno alza la voce per rimproverare. Un vecchio tauren ha mormorato tre parole a un vitello sbadato, e il vitello sembrava che gli si fosse aperta la terra sotto gli zoccoli.",
		"Le voci più basse di Orgrimmar sono quelle degli anziani tauren, e sono le uniche con cui nessuno osa discutere.",
	},
	["org.muse.w18.elder.015"] = {
		"Le pelli delle tende tauren sono dipinte di cacce e di mandrie. Un vecchio tauren ritocca un kodo sbiadito con un dito intinto nell'ocra, con tanta cura che il kodo potrebbe sentirlo.",
		"Una delle tende della Valley of Wisdom è dipinta da cima a fondo di bestie in corsa. Nella polvere del canyon il colore sbiadisce presto, così un anziano fa il giro con un vasetto d'ocra e restituisce le zampe a ogni animale.",
	},
	["org.muse.w18.elder.016"] = {
		"Roccia rossa, sagomata da mani d'orco e battuta da stivali d'orco. La Madre Terra è là sotto lo stesso. Non le importa chi la lastrica.",
		"I miei zoccoli lo sanno, che questa terra è sua, spuntoni di ferro o no. Anche nella città più rumorosa di Kalimdor, la Madre Terra è a una spanna di profondità.",
	},
	["org.muse.w18.elder.017"] = {
		"china appena il capo davanti a un vecchio tauren che passa, imitando l'abitudine dei grunt, e riceve in cambio un cenno lento e grave, come se si fosse stabilito qualcosa.",
		"ricambia il cenno senza fretta di un anziano tauren, e si ritrova a camminare un po' più piano per un buon tratto.",
	},
	["org.muse.w18.elder.018"] = {
		"deve trattenere un sorriso mentre un vitello tauren segue per una decina di passi un grunt tutto spavalderia, imitandone l'andatura alla perfezione, finché la madre non lo riacciuffa per un orecchio.",
		"si lascia scappare un sorriso davanti a un giovane tauren che si pavoneggia dietro a un orco, spalle rotonde e mento in fuori, finché una parola sommessa di un anziano non lo rimette al suo posto di vitello.",
	},
	["org.muse.w18.elder.019"] = {
		"Abbassa la voce vicino agli anziani tauren. Sentono tutto e te lo ripetono anni dopo, parola per parola.",
		"Occhio a quel che dici vicino a un vecchio tauren. Te lo ritrovi trasformato in proverbio.",
	},
	["org.muse.w18.errand.001"] = {
		"Una lettera mi ha raggiunto finalmente alla cassetta della posta, il sigillo incrinato e un pizzico di terriccio nella piega. Ha viaggiato peggio di me.",
		"La posta mi ha {g:trovato|trovata}, alla fine: un foglio solo, piegato due volte, gli angoli consumati. Chi l'ha portato si è guadagnato l'affrancatura.",
	},
	["org.muse.w18.errand.002"] = {
		"La cassetta della posta mi consegna un biglietto della casa d'aste: offerta superata. Si sono presi il disturbo di scrivere solo per dirmi questo.",
		"L'unica lettera che ho è della casa d'aste, che mi informa con grande cortesia che qualcun altro lo voleva di più.",
		"Una lettera! Della casa d'aste. Qualcuno, chissà dove, ha pagato un po' più di me, e ci tenevano a farmelo sapere per iscritto.",
	},
	["org.muse.w18.errand.003"] = {
		"Una mia cosa è stata venduta alla casa d'aste, e il denaro è arrivato per posta con la parte della casa già trattenuta. Anche le buone notizie, qui, arrivano un po' più leggere.",
		"La casa d'aste mi ha pagato per lettera, meno la sua quota. Il morso lo danno prima ancora che tu rompa il sigillo.",
		"Monete per posta dalla casa d'aste: meno del prezzo che avevo fissato, più di quanto temessi. La casa non si scorda mai la sua parte.",
	},
	["org.muse.w18.errand.004"] = {
		"Ormai ho un mio percorso in questa città: banca, cassetta della posta, una scodella da qualche parte, l'addestratore. I piedi lo fanno senza chiedermi niente.",
		"Portale, banca, posta, cibo. Non lo decido più: gli stivali conoscono l'ordine, e io li seguo.",
		"Le mie commissioni hanno scavato un solco in Orgrimmar, e io ci scivolo dentro appena arrivo. Certe volte vorrei vedere dove portano le altre strade.",
	},
	["org.muse.w18.errand.005"] = {
		"controlla una breve lista graffiata su un pezzo di pelle, cancella una riga con l'unghia del pollice e ne aggiunge altre due sotto.",
		"consulta una lista tutta stropicciata, la guarda storto e ci graffia in fondo una voce nuova con l'unghia.",
	},
	["org.muse.w18.errand.006"] = {
		"aspetta in fila alla banca dietro un goblin che deposita una fortuna una moneta per volta, contandole tutte ad alta voce, e due volte.",
		"si dondola da un piede all'altro al banco della banca, mentre il goblin davanti deposita il guadagno moneta per moneta, chiamandole per nome.",
	},
	["org.muse.w18.errand.007"] = {
		"Ho lavato il mantello in un secchio dietro la locanda e l'ho steso ad asciugare. L'ho ripreso rosso come prima. A Orgrimmar il pulito dura poco.",
		"Fare il bucato in questa città è un'arte disperata. Lavi una camicia, la stendi, e la polvere l'ha già ritinta prima ancora che si asciughi.",
		"Tre secchi d'acqua per pulire il mantello, e il canyon se l'è ripreso nel tempo che ci ha messo ad asciugare. Ho deciso che la polvere fa parte della trama.",
	},
	["org.muse.w18.errand.008"] = {
		"Fatto tutto. No, aspetta. Tutto tranne la cosa per cui ero {g:venuto|venuta}.",
		"Finito. Tutto quanto. Tranne l'unica cosa per cui sono {g:entrato|entrata} in città, che mi torna in mente solo adesso.",
	},
	["org.muse.w18.errand.009"] = {
		"La banca è la stanza più fresca della città. Mi sono {g:sorpreso|sorpresa} a indugiare al banco molto più a lungo di quanto serva a qualsiasi deposito.",
		"Muri spessi, luce fioca, pietra fresca: la banca tiene fuori il caldo con la stessa cura con cui tiene dentro le monete. In banca le mie faccende durano sempre più del dovuto.",
	},
	["org.muse.w18.errand.010"] = {
		"Il mio zaino si è scucito in mezzo al Drag e ha seminato metà delle mie cose tra la folla. Tre sconosciuti me le hanno restituite. Un quarto ha provato a vendermene una.",
		"La borsa ha ceduto nel momento peggiore e la mia roba è finita dappertutto. Orgrimmar me l'ha resa quasi tutta, e mi ha offerto una borsa nuova prima ancora che mi rialzassi.",
		"Tutto quello che avevo, sparso per la strada da una cucitura sola. La folla ci ha girato intorno, l'ha raccolto, me l'ha reso, e un goblin mi ha fatto il prezzo di uno zaino più robusto.",
	},
	["org.muse.w18.errand.011"] = {
		"Ho scoperto una scorciatoia che fa risparmiare un'intera curva della strada. Tre peoni e un lupo la conoscevano già, e nessuno di loro aveva intenzione di dirlo.",
		"Ogni città ha le sue vie traverse. A Orgrimmar ne ho trovata una sola, e a giudicare da quanta gente ci passa, lo sapevano tutti prima di me.",
	},
	["org.muse.w18.errand.012"] = {
		"Se qualcuno mi cerca, sono in banca a litigare con i miei risparmi.",
		"Prima la banca. Le mie monete, qui fuori, sono nervose.",
	},
	["org.muse.w18.errand.013"] = {
		"comincia una lettera accanto alla cassetta della posta, arriva alla seconda riga e la ripiega senza spedirla, per più tardi.",
		"si appoggia alla cassetta della posta per scrivere qualche riga, si ferma, le rilegge e rimette il foglio in tasca.",
	},
	["org.muse.w18.errand.014"] = {
		"Qui nella Valley of Strength tutto ciò che serve a un viaggiatore sta a un tiro di sasso: banca, posta, locanda, casa d'aste. Chi l'ha progettata doveva aver camminato tanto, una volta, e giurato mai più.",
		"Banca, cassetta della posta, locanda e casa d'aste, tutte a portata di voce l'una dall'altra, qui. Una valle disegnata da qualcuno a cui facevano male i piedi.",
		"Posso sbrigare ogni commissione senza uscire da questa valle, e intendo farlo. I miei piedi hanno votato.",
	},
	["org.muse.w18.errand.015"] = {
		"Fare provviste prima della strada è un piccolo rito: pane avvolto in un panno, la borraccia piena, un rotolo di corda nuova. La città ci sta in uno zaino, se scegli i pezzi giusti.",
		"Riempio la borsa per il viaggio sempre allo stesso modo, pane, acqua, corda, un po' di sale, e ogni volta mi sembra di mettere via un pezzetto di Orgrimmar da portare con me.",
	},
	["org.muse.w18.errand.016"] = {
		"Tre lettere, tutte di mercanti. In questa città anche la posta mercanteggia.",
		"Posta! Ah. È un goblin che mi offre un prezzo migliore per una cosa che non ho mai comprato.",
	},
	["org.muse.w18.errand.017"] = {
		"Aspetto ancora quella lettera. Da un giorno all'altro. Da un anno all'altro.",
		"La cassetta è ancora vuota? Paziente, quella cassetta. Paziente quanto me.",
	},
	["org.muse.w18.fallen.001"] = {
		"I grunt raccontano la fine di Doomhammer in poche parole: cadde nella battaglia per liberare un campo, e prima di morire diede la sua armatura a Thrall. La raccontano ogni volta uguale, parola per parola, come se un cambiamento potesse svegliarlo.",
		"Chiedi come morì Orgrim e la risposta arriva corta e fissa, come il rapporto di un soldato: un campo, una lancia, l'armatura nera passata di mano. Nessuno aggiunge mai niente.",
	},
	["org.muse.w18.fallen.002"] = {
		"I vecchi Warsong della città non litigano mai sulla fine di Grom. Litigano su tutto quello che venne prima, a lungo e a gran voce, e poi tacciono insieme.",
		"L'ultimo combattimento di Grom è l'unica cosa su cui i suoi vecchi guerrieri sono d'accordo. Chiedi del primo, o del suo caratteraccio, o di quanto beveva, e faresti meglio a non avere altri impegni.",
	},
	["org.muse.w18.fallen.003"] = {
		"osserva un vecchio grunt che, passando sotto Grommash Hold, bussa una volta su un palo con le nocche, senza rallentare né alzare gli occhi, come sembrano fare alcuni vecchi Warsong.",
		"intravede un anziano che, passando davanti alla sala del Capoguerra, sfiora con due dita il legno di un palo e poi la propria fronte, e prosegue come se niente fosse.",
	},
	["org.muse.w18.fallen.004"] = {
		"Durotan fu ucciso per aver rifiutato un patto che riteneva marcio, raccontano i Frostwolf. Così tutta la terra rossa fuori dalle mura, mi ha detto un anziano, porta il nome di un no.",
		"Dire di no alle persone sbagliate costò la vita a Durotan, nel racconto dei vecchi Frostwolf. Gli piace che la terra porti il suo nome. È una terra testarda; gli si addice.",
	},
	["org.muse.w18.fallen.005"] = {
		"Nessuno ha alzato una sala per gli orchi morti nei campi. Stanno nelle mura, mi ha detto un vecchio muratore: una pietra per ciascuno, messa a mano. Quali siano, non lo dice.",
		"In ogni muro della città ci sono alcune pietre posate per i morti dei campi, senza segni, apposta: così racconta un anziano. Ti ci appoggi di continuo, dice. È proprio quello lo scopo.",
	},
	["org.muse.w18.fallen.006"] = {
		"I grunt non esultano sull'ammiraglio di Kul Tiras venuto a bruciare Durotar. Aveva perso un figlio nelle vecchie guerre, dicono, ed era venuto per quello, e trovò ad attenderlo orchi di un'altra specie.",
		"Anche i veterani che respinsero lo sbarco di Kul Tiras parlano dell'ammiraglio senza troppo livore. Un padre in lutto con una flotta, ha detto uno. Pericoloso, triste, e morto.",
	},
	["org.muse.w18.fallen.007"] = {
		"osserva un grunt che versa qualche goccia dal boccale per terra prima del primo sorso, senza dire niente, come fanno alcuni vecchi soldati.",
		"vede un vecchio orco rovesciare un filo della sua bevanda nella polvere ai suoi piedi, fare un cenno a nessuno in particolare, e solo allora bere.",
	},
	["org.muse.w18.fallen.008"] = {
		"Gli sciamani della città custodiscono i nomi dei morti più a lungo di qualunque pietra, mi ha detto un troll. Li pronunciano ad alta voce davanti al fuoco, uno dopo l'altro, e l'elenco non si accorcia mai.",
		"Ogni stagione una sciamana dai capelli grigi pronuncia nel fuoco i nomi di chi si perse durante la traversata. Il fuoco non dimentica niente, dice, e qualcuno deve pur essere quello che ricorda.",
	},
	["org.muse.w18.fallen.009"] = {
		"Non tutti gli orchi sono usciti dalle vecchie guerre. Il Burning Blade serve ancora i padroni da cui tutti gli altri se ne sono andati, e la città ne parla come una famiglia parla di un figlio finito male.",
		"Fra gli anziani nessuno dice Burning Blade ad alta voce. Lo dicono come si nomina un cugino che ha preso la strada sbagliata: in fretta, guardando per terra.",
		"Quando qualcuno tra la folla guarda verso il Cleft of Shadow e sputa, i vecchi orchi sanno benissimo a chi si riferisce. In questa città il Burning Blade quasi non ha bisogno di essere nominato.",
	},
	["org.muse.w18.fallen.010"] = {
		"Lontano, a oriente, dentro Blackrock Mountain, ci sono orchi che marciano ancora sotto gli stendardi delle vecchie guerre e chiamano Capoguerra qualcun altro. Dillo ad alta voce a Orgrimmar e guarda le facce chiudersi.",
		"I grunt hanno una parola per gli orchi Blackrock che non hanno mai lasciato le vecchie usanze, e non è una che ripeterei. Ognuno di loro, dicono, è un fratello che i demoni si sono tenuti.",
	},
	["org.muse.w18.fallen.011"] = {
		"Grom fu il primo capo a bere il sangue del demone, dicono gli anziani, e l'ultimo orco a esserne liberato. In mezzo fece più danni di quasi tutti, e alla fine più bene di chiunque.",
		"Il primo a bere e l'ultimo a guarire: così i vecchi riassumono Hellscream. Lasciano la frase lì, sospesa. Non c'è bisogno di spiegarla a nessuno.",
		"Tutta la vita di Hellscream sta fra una coppa e un'ascia, dice un grunt dei Warsong: la coppa che bevve prima di chiunque, e l'ascia con cui la ripagò.",
	},
	["org.muse.w18.fallen.012"] = {
		"A chi è caduto prima che si alzassero le mura. Le mura gli sarebbero piaciute.",
		"Forza a chi non è arrivato fin qui. Noi altri terremo alto il chiasso.",
		"Per chi è rimasto in mare e per chi è rimasto nella terra dei campi. Qualcuno, qui, si ricorda di voi.",
	},
	["org.muse.w18.fallen.013"] = {
		"Grom cadde nel profondo di Ashenvale, in una terra che gli elfi della notte sorvegliano con ogni albero. I suoi vecchi guerrieri non possono sedersi accanto a quel posto senza un esercito al seguito, così vengono a sedersi nella sua sala.",
		"Il punto dove cadde Hellscream è troppo addentro ai boschi degli elfi per le ginocchia di un vecchio orco, o per l'accoglienza che riceverebbe, dicono i suoi vecchi soldati. La sala col suo nome dovrà bastare. Basta.",
	},
	["org.muse.w18.fallen.014"] = {
		"Qui dentro Grommash Hold il nome sopra la porta pesa su tutta la sala. Le voci si abbassano senza che nessuno lo chieda, come se Grom potesse ancora stare in ascolto di una rissa.",
		"Dentro la sala che porta il suo nome mi aspetto sempre che una voce grossa e ruvida riempia l'ambiente. Non arriva mai. Arriva invece quella più pacata del Capoguerra, e la sala sembra averla scelta.",
	},
	["org.muse.w18.fallen.015"] = {
		"rallenta accanto a un vecchio orco che ripara una cinghia borbottando una fila di nomi mentre lavora, uno per punto, e si ferma quando la cinghia è finita.",
		"indugia vicino a un anziano che intaglia un pezzo di legno mormorando nomi, uno per ogni ricciolo che cade, e non sembra mai restare senza né gli uni né gli altri.",
	},
	["org.muse.w18.fallen.016"] = {
		"nota un vecchio guerriero che posa una tazza d'argilla piena d'acqua in un angolo del cortile prima che comincino gli esercizi; le coppie che si allenano ci girano intorno tutto il tempo, e nessuno la rovescia.",
		"vede un veterano pieno di cicatrici posare una tazza piena al bordo del cortile e lasciarla lì, intatta, mentre gli istruttori fanno lavorare gli allievi tutt'intorno come fosse un palo.",
	},
	["org.muse.w18.fallen.017"] = {
		"Grom, se puoi sentirlo: il tuo nome lo tengono ben alto. Tu l'avresti voluto ancora più forte.",
		"Hellscream. Lo dicono ancora con l'urlo dentro. Bene.",
	},
	["org.muse.w18.founding.001"] = {
		"Quando gli orchi scesero in questo canyon, all'inizio, racconta un vecchio costruttore, era pieno di nidi di arpie, e il primo lavoro della città fu convincerle ad andarsene. Come, non lo dice. Non serve.",
		"Prima che si alzasse un solo muro, il canyon era delle arpie, che strillavano a ogni colpo di martello. Un peon lo racconta sorridendo: la discussione l'hanno persa loro.",
	},
	["org.muse.w18.founding.002"] = {
		"sosta davanti a un tratto di muro dove le pietre sono più piccole e messe più storte delle altre, e passa il pollice sulla vecchia malta irregolare.",
		"indugia accanto a un tratto basso del muro più vecchio, ruvido e rattoppato, tirato su da costruttori che avevano chiaramente più fretta di quelli venuti dopo.",
	},
	["org.muse.w18.founding.003"] = {
		"Qualcuno ha portato quaggiù ogni singola pietra. Spero che l'abbiano pagato in stufato.",
		"Tutta questa roccia, trascinata a braccia. C'è un peon, chissà dove, che ci ha lasciato mezza schiena.",
		"Ogni pietra di queste mura è scesa da quel pendio sulle spalle di qualcuno. Due parole a chi l'ha progettata, gliele direi.",
	},
	["org.muse.w18.founding.004"] = {
		"Un mercante goblin giura che il suo cartello vendette a Thrall la prima gru del canyon, a un prezzo di favore. Tutti i goblin della città raccontano questa storia, e ognuno dice un prezzo diverso.",
		"A sentire i goblin, la città sarebbe ancora un mucchio di sassi senza le carrucole che vendettero agli orchi, per poche monete e per pura bontà d'animo. Le ricevute non le ha mai viste nessuno.",
	},
	["org.muse.w18.founding.005"] = {
		"Nessuno sa dire il giorno in cui la città fu fondata. Non c'è stato, mi ha detto un anziano: c'è stato solo un giorno in cui nessuno si è preso la briga di ripiegare le tende.",
		"Chiedi quando è nata Orgrimmar e i vecchi orchi alzano le spalle. Niente cerimonie, dicono. Le tende sono rimaste dov'erano, e poco dopo qualcuno ci ha appeso una porta.",
		"Non ci fu nessuna festa di fondazione, dice un grunt dai capelli grigi. La città è cominciata come comincia un'abitudine: non andandosene.",
	},
	["org.muse.w18.founding.006"] = {
		"Le mura salirono al doppio della velocità appena le vele di Kul Tiras comparvero al largo, dicono i grunt. Niente insegna il mestiere del muratore come una flotta.",
		"A dar retta ai veterani, la città era fatta soprattutto di tende e di buone intenzioni, finché Kul Tiras non venne a bussare dal mare. Da quel momento tutti impararono a posare pietre.",
		"Un peon che a quei tempi trascinava pietre dice che le navi di Kul Tiras furono i migliori capomastri che la città abbia mai avuto: con le vele in vista, nessuno batteva la fiacca.",
	},
	["org.muse.w18.founding.007"] = {
		"I tauren della città amano ricordare agli orchi, con garbo, che buona parte di queste pietre l'hanno trascinata i kodo. Gli orchi se lo ricordano in un altro modo, e a voce alta.",
		"I kodo della sua mandria trascinarono tronchi giù nel canyon quando le mura erano giovani, racconta un vecchio tauren, e nessuno li ringraziò mai. Lui lo fa ancora, aggiunge, ogni tanto.",
	},
	["org.muse.w18.founding.008"] = {
		"scorge un vecchio palo, spaccato e sbiancato dagli anni, ancora piantato in un angolo tra travi più nuove, come se nessuno avesse avuto cuore di toglierlo.",
		"fa una pausa accanto a un palo consumato, piantato di sbieco, più vecchio di tutto quello che ha intorno, con un pezzo di corda ancora annodato in cima.",
	},
	["org.muse.w18.founding.009"] = {
		"Gli orchi che alzarono i primi muri adesso sono vecchi. Siedono con la schiena contro le pietre che hanno posato, e i giovani passano senza sapere di chi è il lavoro a cui si appoggiano.",
		"Alcuni degli anziani seduti sulle panche lungo le mura quelle mura le hanno costruite. Non lo dicono mai. Lo scopri solo quando uno allunga la mano all'indietro e dà una pacca alla pietra, come a un vecchio lupo.",
	},
	["org.muse.w18.founding.010"] = {
		"Dalle tende a una banca in una vita sola. C'è gente che ci mette tre generazioni per avere un tetto decente.",
		"Da un fossato e quattro pali a una casa d'aste. Qualcuno aveva fretta.",
		"Poco tempo fa erano solo sassi. Adesso c'è la fila in banca.",
	},
	["org.muse.w18.founding.011"] = {
		"Chiedi dov'è la prima pietra di Orgrimmar e ti ritrovi in una visita guidata. Tre visite, diverse e sicurissime.",
		"Chiunque abbia l'età giusta sa dove fu posata la prima pietra. Ognuno indica un posto diverso.",
	},
	["org.muse.w18.founding.012"] = {
		"I primi picconi che morsero questo canyon furono battuti dalle catene dei campi, dice un vecchio fabbro. Lo racconta come una questione di ferro, non di poesia: non c'era nient'altro da fondere.",
		"I ceppi, dice un anziano alla sua forgia, diventarono i primi attrezzi di Orgrimmar. Vede la mia faccia e alza le spalle. Il ferro buono è buono, chiunque l'abbia lavorato per primo e per farne cosa.",
	},
	["org.muse.w18.founding.013"] = {
		"Mentre il crepuscolo cala nel canyon, un vecchio costruttore indica i primi muri: quelli che si scuriscono per primi, dice, perché furono messi più in basso, da orchi che delle alture ancora non si fidavano.",
		"Al crepuscolo l'ombra risale le mura nell'ordine in cui furono costruite, giura un anziano, le più vecchie per prime. Le guarda sparire con l'orgoglio del costruttore.",
	},
	["org.muse.w18.founding.014"] = {
		"C'è una capanna storta, messa di traverso rispetto a tutto quello che ha intorno. Il padrone dice che fu il primo tetto del canyon, alzato prima che qualcuno decidesse dove sarebbero passate le strade, e così le strade ci sono girate intorno.",
		"Esiste una capanna girata dalla parte sbagliata rispetto alla sua via. C'era prima lei, ringhia il vecchio proprietario, e la via può pure chiedere scusa.",
	},
	["org.muse.w18.founding.015"] = {
		"si accovaccia accanto a uno dei muri più vecchi, dove una fila di impronte di mani è premuta nell'argilla, quasi spianata dal tempo, e accosta la propria mano a una senza toccarla del tutto.",
		"resta un momento davanti a un tratto di vecchio muro d'argilla segnato in basso da decine di impronte di mani, grandi e piccole, consumate fin quasi a sparire: l'unica parte del muro che nessuno ha rattoppato.",
	},
	["org.muse.w18.founding.016"] = {
		"Muri vecchi tirati su in fretta, muri nuovi fatti per durare. Questa città si legge come un diario.",
		"Le pietre vecchie dicono: svelti, prima che tornino. Quelle nuove dicono: che vengano pure.",
	},
	["org.muse.w18.founding.017"] = {
		"Qui nella Valley of Strength, dice un vecchio grunt, le prime carovane scaricavano direttamente nella polvere, quando ancora non c'erano una banca per custodire le monete né una locanda per perderle.",
		"Questa valle un tempo era solo un cortile calpestato, raccontano gli anziani: casse, lupi, urla e un'unica tenda dove uno scrivano teneva il conto. Non è cambiato granché, aggiungono, a parte la tenda.",
	},
	["org.muse.w18.founding.018"] = {
		"osserva due vecchi peon che litigano su un tratto storto di muro che a quanto pare hanno costruito insieme, ognuno dando la colpa alla parte dell'altro.",
		"indugia vicino a una coppia di peon anziani che indicano la stessa fila di pietre sbilenca, uno chiamandola il lavoro migliore della città e l'altro la colpa del socio.",
	},
	["org.muse.w18.founding.019"] = {
		"Qualcuno aveva un piano per questa città. Si capisce, perché nessuno l'ha seguito.",
		"Disegnata da un capoguerra, costruita da una dozzina di clan con le loro idee. Si vede.",
		"Ogni rampa di questo posto è stata la bella idea di qualcuno. Di parecchi qualcuno, che litigavano.",
	},
	["org.muse.w18.gate.001"] = {
		"I grunt del portale sostengono di capire da dove arriva un viaggiatore guardandogli la polvere sugli stivali: rossa per Durotar, giallo pallido per le Barrens, fango nero per posti di cui preferiscono non chiedere.",
		"Una volta una guardia del portale mi ha letto gli stivali come un'indovina: terra delle Barrens sul tacco, rosso di Durotar sulla punta. Non ha sbagliato, e non si è fatta pagare.",
		"La polvere degli stivali è una mappa, dicono i grunt del portale. Guardano in basso prima che in faccia, e sulla strada che hai fatto sbagliano di rado.",
	},
	["org.muse.w18.gate.002"] = {
		"guarda un viaggiatore fermarsi a un passo dal portale, tastare una per una ogni cinghia e ogni tasca, e poi uscire sulla strada senza voltarsi.",
		"nota che chi parte si ferma sempre nello stesso punto, sotto il portale, controlla lo zaino un'ultima volta, e solo allora se ne va.",
		"vede una troll in partenza bloccarsi sulla soglia del portale, contare con un dito i nodi del suo fagotto, annuire fra sé e andarsene a lunghe falcate.",
	},
	["org.muse.w18.gate.003"] = {
		"Guarda il portale abbastanza a lungo e te ne accorgi: chi arriva strascica i piedi, chi parte cammina troppo svelto. Alla banca, quasi tutti si sono scambiati il passo.",
		"Si entra dal portale piano e se ne esce in fretta. Chiedi il perché agli uni e agli altri e ti risponderanno uguale: sono stanchi del posto da cui vengono.",
	},
	["org.muse.w18.gate.004"] = {
		"vede un grunt al portale contare una pattuglia che rientra, muovendo le labbra, e fermarsi a uno di meno; né lui né la pattuglia ne parlano.",
		"guarda una squadra entrare dalla strada e la guardia del portale contarli a occhio, una volta, poi due, come se il secondo conto potesse venire più gentile.",
		"si attarda mentre una pattuglia sfila sotto il portale, e coglie l'istante in cui il grunt di guardia nota il posto vuoto nella fila.",
	},
	["org.muse.w18.gate.005"] = {
		"Corde, otri e cappelli a prezzo doppio, proprio al portale. Chi vende lì sa benissimo come la gente si dimentica le cose.",
		"Ultima occasione per la corda prima della strada, grida l'ambulante al portale. Ultima a quel prezzo, spero.",
		"Quella bancarella al portale vende solo quello che la gente si scorda di mettere nello zaino. A giudicare dai prezzi, se ne scorda parecchio.",
	},
	["org.muse.w18.gate.006"] = {
		"La venditrice d'acqua appena dentro il portale fa gli affari migliori con chi arriva. Nessuno tratta sul primo sorso dopo la strada di Durotar.",
		"Subito dentro il portale qualcuno vende tazze d'acqua da un barile, e chi arriva non discute il prezzo. L'ha già fissato la strada là fuori.",
		"Un mestolo, un barile e uno sgabello accanto al palo del portale: la bottega più semplice di Orgrimmar, e nessuno che arrivi dalla strada le tira dritto davanti.",
	},
	["org.muse.w18.gate.007"] = {
		"I grunt del portale tengono un mucchio di cose perse da chi partiva: uno stivale, un cappello, un coperchio, una bambola di paglia. Uno di loro mi ha detto che nessuno è mai venuto a reclamarne una.",
		"Accanto al palo del portale c'è un mucchio di tutto quello che la strada ha scosso di dosso ai viaggiatori: un guanto spaiato, un mestolo, un cappello bucato. Nessuno reclama mai niente.",
	},
	["org.muse.w18.gate.008"] = {
		"Dal portale la strada per Razor Hill corre chiara e dritta per un tratto, poi se la prende una collina rossa, e da lì in avanti devi fidarti che ci sia ancora.",
		"Oltre il portale la strada si fa vedere per qualche centinaio di passi e poi si infila dietro le colline di Durotar, come una guida timida che cammina avanti.",
	},
	["org.muse.w18.gate.009"] = {
		"aggira un viaggiatore seduto appena dentro il portale con gli stivali sfilati, che da ognuno versa una collinetta di Durotar.",
		"osserva qualcuno saltellare su un piede accanto al palo del portale, rovesciare uno stivale e fissare con vero rancore quanta strada ne viene fuori.",
		"deve aspettare che un nuovo arrivato tutto impolverato sbatta il mantello proprio sotto il portale, sollevando una nuvola che fa girare la faccia a tre grunt in una volta.",
	},
	["org.muse.w18.gate.010"] = {
		"I lupi tirano le redini quando escono dal portale e i kodo affrettano il passo quando entrano. Ogni bestia sa dove preferirebbe stare, e nessuna l'ha chiesto a chi la cavalca.",
		"Al portale si capisce cosa pensano le bestie: i lupi tirano verso la strada aperta, i kodo verso la stalla e la biada. Chi sta in sella si limita a tenersi forte.",
		"Esci su un lupo e il portale lo attraversi trainato; entri su un kodo e finisci dritto alla mangiatoia, qualunque fossero i tuoi piani.",
	},
	["org.muse.w18.gate.011"] = {
		"Il portale è da quella parte. Anche tutto il resto, prima o poi.",
		"Fuori da quel portale, gira dove vuoi. Di guai ce n'è in ogni direzione, mi dicono.",
		"Scegli una strada, una qualunque. Partono tutte dallo stesso portale.",
	},
	["org.muse.w18.gate.012"] = {
		"Con questa sabbia chi entra dal portale è impolverato dello stesso rosso pallido. Orco, troll, tauren: per qualche passo non distingui un popolo dall'altro.",
		"I viaggiatori arrivano al portale incrostati di sabbia dal cappuccio ai talloni, come statue che qualcuno ha scordato di dipingere. I grunt li fanno passare dalla sagoma.",
	},
	["org.muse.w18.gate.013"] = {
		"Ogni strada che esce da quel portale passa accanto a qualcuno dei nostri di guardia: un avamposto nelle Barrens, una torre ad Ashenvale, un campo nella giungla. Prima o poi li incontro tutti, e saluto.",
		"Le strade che lasciano Orgrimmar sono strade solo perché lungo ognuna c'è qualcuno dell'Orda in piedi. Non esco mai dal portale senza ricordarmelo.",
	},
	["org.muse.w18.gate.014"] = {
		"vede due amici separarsi al portale con una pacca secca sulla spalla per ciascuno; quello che resta guarda la strada a lungo, anche dopo che non c'è più niente da guardare.",
		"assiste a un saluto al portale fatto all'uso degli orchi, una spinta e nessuna parola, e chi rimane indietro resta lì molto dopo che la polvere si è posata.",
	},
	["org.muse.w18.gate.015"] = {
		"C'è un punto subito oltre il portale dove il baccano della città cala tutto insieme, come quando esci da una tenda. Dieci passi ancora e Orgrimmar è solo una diceria alle mie spalle.",
		"Il frastuono della città non sfuma piano, al portale. Si interrompe, come se qualcuno gli avesse chiuso una porta in faccia, e la strada fuori è di colpo così quieta che sento i miei stivali.",
		"Di qua dal portale, mille voci. Venti passi fuori, i miei stivali, uno scarabeo e le colline. Il cambio mi coglie sempre di sorpresa.",
	},
	["org.muse.w18.gate.016"] = {
		"Acqua, corda, pane. Quello che ho dimenticato me lo farà notare la strada.",
		"Zaino fatto, conti pagati, pancia piena. Cosa ho scordato lo scoprirò un miglio oltre il portale.",
	},
	["org.muse.w18.goblins.001"] = {
		"Un mercante goblin saluta un orco in orchesco, un troll in lingua troll e un Reietto nella lingua dei Reietti, tutto senza fermarsi, e dice lo stesso prezzo in ciascuna.",
		"Ho contato quattro lingue uscite da un solo goblin nel tempo che mi ci è voluto per scegliere una cintura. Il prezzo era l'unica parola che non cambiava mai.",
	},
	["org.muse.w18.goblins.002"] = {
		"Un goblin gira per la strada tra due orchi enormi che paga a ore. Tiene una clessidra appesa alla cintura e la controlla ogni volta che rallentano.",
		"Due orchi a pagamento seguono ovunque un mercante goblin, un passo dietro ciascuna spalla. Quando si ferma a chiacchierare, getta un'occhiata a una clessidrina, sospira e taglia corto. Anche fermi, costano.",
	},
	["org.muse.w18.goblins.003"] = {
		"Non ho mai visto un goblin di Orgrimmar sedersi. Si appoggiano, si appollaiano, saltano su una cassa. Stare seduti, sospetto, conta come tempo che nessuno paga.",
		"I goblin non si siedono. Ne ho visto uno mangiare un pasto intero in piedi su un barile, per tenere d'occhio due bancarelle contemporaneamente.",
		"Stare seduto, mi ha detto uno di loro, è il modo in cui un goblin perde soldi.",
	},
	["org.muse.w18.goblins.004"] = {
		"fa spazio a un goblin che arriva a una bancarella alta con la sua cassetta, la posa, ci sale sopra e comincia a contrattare all'altezza degli occhi.",
		"si scosta per un goblin che apre con uno scatto uno sgabellino davanti a un bancone alto, e tratta i suoi affari da un'altezza dignitosa.",
	},
	["org.muse.w18.goblins.005"] = {
		"Con tutta sincerità, un goblin ha chiesto a un grunt quanto costa l'onore al chilo. Il grunt sta cercando di rispondere da un bel po', e il goblin prende appunti.",
		"Mi è capitato di sentire un goblin chiedere a un orco di spiegargli l'onore in parole semplici: chi paga, chi riscuote, qual è l'interesse. La risposta dell'orco è stata lunga, rumorosa e, credo, molto commovente. Il goblin non ne ha annotato una parola.",
	},
	["org.muse.w18.goblins.006"] = {
		"Vicino alla banca c'è un goblin che vende notizie a frase. La prima è gratis. Finisce sempre un attimo prima della parte interessante.",
		"Per i goblin le notizie sono un commercio come un altro. Uno mi ha appena offerto le novità di Ratchet: due rami per il titolo, cinque per sapere chi è stato.",
		"Notizie a frase, da un goblin: ogni frase si interrompe sul più bello.",
	},
	["org.muse.w18.goblins.007"] = {
		"schiva un goblin che fa a gara con la tempesta lungo la strada, gettando teli cerati su un carretto pieno di congegni che ticchettano e imprecando a ogni tuono come se gli dovesse dei soldi.",
		"ridacchia davanti a un mercante goblin che tira un telone sulla merce al primo schianto di tuono, ci si siede sopra, poi ci ripensa, visto che è metallo sotto un temporale, e scende in fretta.",
	},
	["org.muse.w18.goblins.008"] = {
		"Nel libretto di un goblin finiscono i favori oltre che i debiti: chi gli ha tenuto una porta, chi l'ha aiutato a sollevare una cassa. Mi ha mostrato la mia riga. A quanto pare mi spetta un rame.",
		"Coi goblin anche la gentilezza finisce nel libro dei conti. Uno mi ha ringraziato per avergli raccolto il cappello, ha scritto qualcosa e mi ha detto che il conto era aperto.",
	},
	["org.muse.w18.goblins.009"] = {
		"Per la strada un goblin spinge un carretto con un cartello dipinto che dice, in quattro lingue, NON URTARE. La folla, che urta qualunque cosa, gli lascia spazio da entrambi i lati senza una parola.",
		"A Orgrimmar nessuno si scansa per nessuno, tranne che per un certo carretto goblin. Ronza piano, e ha un teschio dipinto sul fianco.",
	},
	["org.muse.w18.goblins.010"] = {
		"Qui nel Drag un goblin aggiustatore ripara qualunque cosa abbia un ingranaggio. Ripara anche quelle che non ce l'hanno: gliene mette uno.",
		"La bancarella di un goblin lungo questa strada aggiusta tutto quello che porti. La mia fibbia è tornata funzionante, e ticchettante, e il ticchettio non l'avevo chiesto.",
	},
	["org.muse.w18.goblins.011"] = {
		"osserva un goblin che si porta una moneta all'occhio attraverso una piccola lente, la gira due volte, l'annusa, e solo allora la lascia cadere nella cassetta.",
		"aspetta mentre un goblin esamina una moneta d'argento sotto una lente d'ottone, con l'aria di un guaritore che studia uno sfogo.",
	},
	["org.muse.w18.goblins.012"] = {
		"Proprio ora un goblin mi ha augurato una giornata redditizia. Credo sia la cosa più calorosa che un goblin sappia dire.",
		"Che i tuoi margini siano ampi, dice il goblin. Immagino sia una benedizione, dalle sue parti.",
		"Il profitto sia con te, dice il goblin, e s'inchina come un sacerdote.",
	},
	["org.muse.w18.goblins.013"] = {
		"I goblin della nostra capitale non sono dell'Orda, e lo ricordano spesso, allegramente, di solito poco prima di un prezzo. Ospiti, si definiscono. Ospiti pagati molto bene.",
		"I nostri goblin non lasciano mai dimenticare che sono neutrali. Il Cartello vende a noi e all'Alleanza allo stesso modo, mi ha detto uno, e sorrideva come se dovesse consolarmi.",
	},
	["org.muse.w18.goblins.014"] = {
		"Sotto un parasole di pelle oliata un goblin attraversa la valle al riparo dal sole, e chi ride di lui strizza gli occhi.",
		"Con questo riverbero un goblin ha avuto l'idea giusta: un parasolino di pelle, inclinato verso il sole come un coperchio su una pentola. Gli orchi lo prendono in giro. Gli orchi, intanto, strizzano gli occhi.",
	},
	["org.muse.w18.goblins.015"] = {
		"Ho chiesto la strada a un goblin. Me l'ha indicata, gentilissimo, e poi mi ha dato il conto.",
		"Indicazioni e ricevuta, dallo stesso goblin. Entrambe molto ordinate.",
		"Indicazioni gratis, ha detto il goblin, e poi mi ha fatto pagare il foglio su cui le aveva disegnate.",
	},
	["org.muse.w18.hearth.001"] = {
		"Metà del cibo di questa città si vende infilato su uno spiedo, così mangi con una mano e tieni libera l'altra. Libera per cosa, nessuno lo dice mai.",
		"Carne allo spiedo, pane avvolto intorno alla carne, carne avvolta intorno ad altra carne: Orgrimmar mangia con una mano sola e tiene l'altra per gli affari.",
		"In questa città non ho ancora visto una forchetta. Un bastoncino, una piega di pane, cinque dita: ecco le posate, e del resto non sente la mancanza nessuno.",
	},
	["org.muse.w18.hearth.002"] = {
		"Qui non si butta via niente. Un osso passa dal piatto a un lupo, dal lupo a un intagliatore, e torna al mercato sotto forma di ago.",
		"Dopo cena, in questa città, un osso ha ancora una lunga vita: prima se lo prendono i lupi, poi un intagliatore, e alla fine qualcuno nel Drag ci cuce.",
		"Ho lasciato una costola nel piatto, alla locanda. Il tempo di alzarmi e un lupo l'aveva già presa, con un peone in attesa di quello che il lupo avrebbe lasciato.",
	},
	["org.muse.w18.hearth.003"] = {
		"accetta una focaccia piegata intorno a qualcosa di bollente, se la passa da una mano all'altra per un po', e la mangia lo stesso.",
		"compra una focaccia appena tolta dalla pietra rovente e la sposta da un palmo all'altro, con troppa fame per aspettare che si raffreddi.",
	},
	["org.muse.w18.hearth.004"] = {
		"I boccali della locanda sono di coccio, spessi come un muro e pesanti come una cote. Ho il sospetto che siano fatti per sopravvivere a un lancio.",
		"Alla locanda per bere servono due mani: una per il boccale, l'altra per aiutare il braccio che lo regge. Queste tazze sono fatte per durare più di chi ci beve.",
		"Ho visto un boccale della locanda rimbalzare su una testa e atterrare senza una scheggiatura. La testa se l'è cavata peggio. La locandiera ha scelto bene le sue stoviglie.",
	},
	["org.muse.w18.hearth.005"] = {
		"La locandiera non lascia mai spegnere il focolare. Nelle ore morte seppellisce le braci sotto la cenere, come un contadino copre i semi, e le dissotterra con l'attizzatoio.",
		"C'è un fuoco, alla locanda, che nessuno ricorda di aver acceso. Quando la sala si svuota lo coprono di cenere, quando si riempie lo svegliano con un bastone.",
		"Quel focolare della locanda è sopravvissuto a parecchi clienti, scommetto. Cenere sulle braci quando c'è calma, una rimestata e un ciocco quando non c'è, e mai una volta freddo.",
	},
	["org.muse.w18.hearth.006"] = {
		"si ferma a un barile d'acqua vicino alla banca, beve dal mestolo legato all'orlo con una catena e lo riappende dove il prossimo assetato lo troverà.",
		"fa il suo turno al barile accanto alla banca, dove un mestolo pende da una corta catena perché nessuno se lo porti via, e beve senza fretta.",
	},
	["org.muse.w18.hearth.007"] = {
		"Due scodelle di quella roba lì. No, non dirmi cos'è.",
		"Quello che c'è nel pentolone grande. Ho deciso di non chiedere.",
	},
	["org.muse.w18.hearth.008"] = {
		"Ho comprato una striscia di kodo essiccato vicino alla banca e la sto ancora masticando. Potrebbe durare più della strada.",
		"Kodo essiccato: si vende a strisce, si mastica a ore. La mia mascella non mi rivolge più la parola.",
	},
	["org.muse.w18.hearth.009"] = {
		"Alla locanda c'è sempre qualcuno che rammenda qualcosa accanto al fuoco: uno stivale, una cinghia, uno zaino strappato. Mezza sala è un'officina con la birra.",
		"Nessuno, alla locanda, sta solo seduto. Chi cuce una manica, chi unge una fibbia, chi intaglia un picchetto per la tenda. In questa città anche il riposo tiene le mani occupate.",
		"Perfino la locanda lavora. Guardati intorno, vicino al fuoco: ogni paio di mani sta aggiustando qualcosa, un tacco, un anello di maglia, una scodella crepata legata col fil di ferro.",
	},
	["org.muse.w18.hearth.010"] = {
		"Una troll a un banco sbuccia fichi di cactus col pollice guantato, le spine che volano, e mi porge la polpa rossa con un sorriso che mi sfida a lamentarmi.",
		"Frutti di cactus sbucciati al momento: le spine per terra, la parte dolce e rossa a te. Occhio a dove metti i piedi.",
	},
	["org.muse.w18.hearth.011"] = {
		"Un giaciglio di pelli, una coperta che sa di lupo e, oltre la parete, qualcuno che russa come una frana senza fretta. Le stanze della locanda promettono riposo, e quasi sempre mantengono.",
		"I letti della locanda sono pelli sopra la paglia, e le pareti sono sottili. Di là qualcuno russa a ondate lunghe e lente. Dormirò lo stesso: la città mi ha insegnato come.",
	},
	["org.muse.w18.hearth.012"] = {
		"Il cuoco della locanda assaggia lo stufato, aggrotta la fronte e ci butta il sale. Poi assaggia di nuovo, annuisce, e ci butta altro sale. È un'abitudine, non una ricetta.",
		"Ho visto il cuoco della locanda assaggiare, fare una smorfia e salare la pentola tre volte. Alla terza, credo, lo stufato non c'entrava più.",
	},
	["org.muse.w18.hearth.013"] = {
		"Pane, sale e un posto accanto al fuoco: la locanda dà lo stesso a ogni popolo dell'Orda, e a tutti fa pagare lo stesso. È una giustizia di cui mi fido.",
		"Orco, troll, tauren o Reietto, alla locanda ci tocca la stessa scodella e la stessa occhiataccia. Tutti uguali davanti al mestolo.",
	},
	["org.muse.w18.hearth.014"] = {
		"scuote una borraccia accanto all'orecchio, non sente niente e parte alla ricerca del barile più vicino con l'aria di chi ha una missione.",
		"rovescia una borraccia sopra la bocca aperta, ne cava due gocce e va in cerca di acqua con una determinazione cupa.",
	},
	["org.muse.w18.hearth.015"] = {
		"Ai banchi dello stufato paghi anche la scodella, e riprendi la moneta quando la riporti. Nessuno ruba una scodella a Orgrimmar: nessuno vuole quella conversazione con la cuoca.",
		"I venditori di stufato chiedono un rame per la scodella e lo restituiscono con un cenno quando la scodella torna a casa. Non ne ho mai vista sparire una. Le cuoche, invece, le ho viste.",
	},
	["org.muse.w18.hearth.016"] = {
		"Qualcuno ha fame? Ho comprato troppo, e i lupi mi guardano già pieni di speranza.",
		"Chi ne vuole metà? I miei occhi hanno ordinato per due.",
	},
	["org.muse.w18.hearth.017"] = {
		"I vecchi orchi mangiano piano e non lasciano niente, nemmeno una crosta. Nei campi, raccontano, ogni pasto lo contava qualcun altro. Qui se li contano da soli, e ancora non lasciano niente.",
		"Guarda un vecchio orco alla locanda pulire la scodella con l'ultimo pezzo di pane. Gliel'hanno insegnato i campi, mi dicono, e la libertà non è bastata a fargli perdere l'abitudine.",
	},
	["org.muse.w18.hearth.018"] = {
		"Prima l'acqua, poi le domande. Dov'è il barile?",
		"Qualcuno ha visto una borraccia piena? La mia è vuota dal portale.",
	},
	["org.muse.w18.hide.001"] = {
		"Uno scuoiatore ti presta monete, un pasto, perfino un lupo per un giorno. Il coltello da scuoiare mai. Chiederlo è come chiedergli in prestito i denti.",
		"Gli scuoiatori tengono i coltelli in involti unti e ci dormono accanto. Ho chiesto di prenderne uno in prestito e ho ricevuto un'occhiata a cui sto ancora pensando.",
		"Ogni scuoiatore che ho conosciuto porta il coltello come altri portano la borsa: vicino, con una mano mai troppo lontana.",
	},
	["org.muse.w18.hide.002"] = {
		"osserva un pellettiere che chiude una cucitura con due aghi alla volta, passandoli in ogni foro dai due lati opposti e stringendo la coppia con un piccolo strattone.",
		"segue le mani di una pellettiera che cuce una costura pesante, due aghi che si incrociano in ogni foro, rapidi e regolari come le bacchette di un tamburino.",
	},
	["org.muse.w18.hide.003"] = {
		"Una conciatrice pizzica una pelle fra pollice e indice e ne dice il grado, leggera, media o pesante, prima ancora che io l'abbia vista guardarla.",
		"I cacciatori portano le pelli ai conciatori arrotolate e salate, e i conciatori le giudicano con un pizzico, un'annusata e un sospiro deluso. Nessuna pelle è mai buona quanto crede chi l'ha portata.",
		"I conciatori sanno giudicare una pelle anche al buio. Un pizzico per lo spessore, una strofinata per la grana, un'annusata per capire quanto è rimasta nello zaino di qualcuno.",
	},
	["org.muse.w18.hide.004"] = {
		"Qui nessuno compra cuoio senza prima annusarlo. Sto imparando a farlo senza fare smorfie.",
		"Annusa, aggrotta la fronte, annuisci, paga. A quanto pare in questa città una cintura si compra così.",
		"Il cuoio buono sa di corteccia e di pazienza. Quello cattivo puzza e basta.",
	},
	["org.muse.w18.hide.005"] = {
		"Scaglie di scorpide cucite sul cuoio: un'armatura fatta proprio della bestia che punge i viandanti fuori dalle mura. Durotar non spreca niente, nemmeno i rancori.",
		"I pellettieri comprano gusci di scorpide a sacchi e li cuciono in file sovrapposte. Alla fine indossi la risposta della bestia stessa a chi la colpisce.",
		"Il primo che ha cucito scaglie di scorpide su un farsetto ne aveva prese troppe, di punture, e ha deciso di tenersi l'armatura per sé.",
	},
	["org.muse.w18.hide.006"] = {
		"Certi pellettieri anziani incidono ancora il disegno del loro clan su una cintura, all'interno, contro la pelle, dove solo chi la porta sa che c'è.",
		"Gira una cintura di uno dei vecchi conciatori e può darsi che trovi un segno di clan impresso sul rovescio. Quello non è in vendita. Viene insieme alla cintura, senza sovrapprezzo.",
		"Un vecchio conciatore imprime un disegno sul lato nascosto di ogni cintura che fa. Se gli chiedi cosa significa, dice soltanto che è una faccenda fra lui e la cintura.",
	},
	["org.muse.w18.hide.007"] = {
		"scavalca un rivolo scuro che esce dalla porta di una conceria e scende lungo il pendio del Drag, e decide di non chiedersi cosa contenga.",
		"alza lo stivale appena in tempo per evitare un filo d'acqua bruna di conceria che si snoda giù per il Drag verso la soglia di qualcun altro.",
	},
	["org.muse.w18.hide.008"] = {
		"Una pellettiera tauren dice qualche parola sottovoce su ogni pelle di kodo prima di tagliarla. L'orco al banco accanto brontolava per l'attesa. Ora aspetta che abbia finito, col coltello abbassato.",
		"Prima che il coltello entri in una pelle di kodo, la tauren del banco del cuoio ci posa sopra una mano aperta per un momento. Intorno a lei nessuno prende un attrezzo finché non la solleva.",
	},
	["org.muse.w18.hide.009"] = {
		"Un consiglio: qui nel Drag non chiedere mai a un conciatore cos'è la macchia sul grembiule.",
		"Nel Drag fate come volete, ma non chiedete dei grembiuli dei conciatori. Io l'ho fatto, e me ne pento.",
	},
	["org.muse.w18.hide.010"] = {
		"Di una pelle non si spreca niente. La parte buona diventa stivali, gli scarti diventano lacci, gli avanzi dei lacci diventano stringhe, e gli ultimi ritagli finiscono nella pentola della colla, che puzza più di tutto il resto messo insieme.",
		"I pellettieri fanno bollire gli ultimi ritagli per ricavarne colla. La pentola della colla la trovi senza che nessuno te la indichi; la troveresti anche dalla banca.",
		"Domanda a una pellettiera che fine fanno i ritagli e ti indica un pentolone che gorgoglia in un angolo. Poi ti indica la porta, per il tuo bene.",
	},
	["org.muse.w18.hide.011"] = {
		"resta in disparte mentre un pellettiere trascina sotto la gronda le pelli conciate a metà alle prime gocce, maledicendo la pioggia a ogni bracciata.",
		"si fa da parte mentre un conciatore e due apprendisti fanno a gara con la pioggia per portare al riparo i telai di essiccazione, e perdono per una manciata di pelli.",
	},
	["org.muse.w18.hide.012"] = {
		"Quando il canyon è al massimo del caldo la colla non fa presa e il cuoio diventa molle come formaggio. I pellettieri posano semplicemente gli attrezzi e si siedono nell'ombra che il muro concede.",
		"Mezzogiorno, e tutti i banchi del cuoio lungo la strada sono vuoti. Le pelli si afflosciano sui telai, e i padroni stanno all'ombra lì accanto, altrettanto flosci.",
		"Sotto questo sole nessun conciatore lavora. Dicono che le pelli hanno bisogno di riposo, e nessuno è così sciocco da chiedere se ne abbiano bisogno anche loro.",
	},
	["org.muse.w18.hide.013"] = {
		"Una pellettiera strofina il bordo di una cinghia con una scheggia d'osso liscia, in tondo, finché non luccica come pietra bagnata. Un'ora di lavoro che nessuno noterà mai, tranne lei.",
		"Sono i bordi a distinguere una buona cintura da una da poco, mi ha detto una conciatrice, e mi ha mostrato l'osso con cui li lucida, consumato come un ciottolo di fiume.",
		"Brunitura, la chiamano i conciatori: un bordo strofinato con l'osso finché non brilla. I clienti non la chiedono mai. Però tornano.",
	},
	["org.muse.w18.hide.014"] = {
		"Il pellettiere mi ha preso la misura del polso per un bracciale senza una parola e senza un sorriso. Se ha capito chi sono, me l'ha fatto pagare. Se no, fa pagare così a tutti.",
		"Una tauren mi ha preso le misure per un paio di guanti, tenendo la mia mano nella sua con la calma di chi maneggia una pelle sul banco. Era come finire sulla bilancia, e qui nessuno sa nemmeno il mio nome.",
	},
	["org.muse.w18.hide.015"] = {
		"Gli stivali di un calzolaio orco sono fatti per sopravvivere a chi li porta. Per domarli ci vuole più o meno altrettanto.",
		"Questi stivali cammineranno ancora quando io non ci sarò più, mi ha promesso il calzolaio. Per ora stanno vincendo loro.",
		"Io e i miei stivali nuovi stiamo ancora trattando. Finora hanno vinto ogni discussione, e io le ho lasciate tutte zoppicando.",
	},
	["org.muse.w18.hide.016"] = {
		"Vuoi una buona cintura? Guarda le mani del conciatore, non la sua bocca.",
		"Lascia perdere le chiacchiere. Sono le mani del conciatore a dirti quanto vale il cuoio.",
	},
	["org.muse.w18.hollow.001"] = {
		"Gli allievi ladri della Cleft si esercitano l'uno sull'altro. Alla fine della lezione nessuno sa più di chi sia una borsa, e questa, dice il maestro, è proprio la lezione.",
		"I ladri in addestramento si borseggiano a vicenda per tutta la Cleft of Shadow. Le borse girano e rigirano, e ogni tanto una torna più leggera di com'era partita.",
	},
	["org.muse.w18.hollow.002"] = {
		"vede un allievo incappucciato lasciarsi cadere da una sporgenza della Cleft senza un rumore, e poi beccarsi uno scappellotto dal maestro per essere atterrato su un sassolino.",
		"nota una figura che scivola giù da uno sperone della Cleft, morbida come un gatto, e il rimprovero borbottato che segue: un sassolino che rotola, abbastanza per svegliare un accampamento.",
	},
	["org.muse.w18.hollow.003"] = {
		"Un imp fa commissioni per tutta la Cleft: una candela a una porta, un rotolo a quella dopo, imprecando a ogni passo e sbrigando ogni lavoro.",
		"L'imp di qualcuno è il corriere più indaffarato della Cleft. Porta cera, inchiostro e messaggi, insulta chiunque li riceva, e non arriva mai in ritardo.",
	},
	["org.muse.w18.hollow.004"] = {
		"Nella Cleft i libri degli stregoni sono incatenati ai leggii. Non per via dei ladri, mi dicono.",
		"Ogni tomo nelle stanze degli stregoni è appeso a una catena. A un ladro basterebbe una lima. Qualunque cosa trattengano quelle catene, non sono ladri.",
		"Le catene sui libri degli stregoni pesano più dei libri. Qualcuno l'ha fatto apposta.",
	},
	["org.muse.w18.hollow.005"] = {
		"Occhio a quel cerchio per terra. No, non ci mettere il piede. No, nemmeno in quello.",
		"Occhio a dove si mettono i piedi, quaggiù. Metà di questi segni di gesso sono stati tracciati per qualcosa, e non ci tengo a conoscerlo.",
	},
	["org.muse.w18.hollow.006"] = {
		"coglie un odore dolciastro e sbagliato che esce da una porta della Cleft, e si porta una manica sul viso finché non passa.",
		"storce il naso per un odore che esce da una soglia della Cleft, dolce e marcio insieme, come fiori dimenticati troppo a lungo in un vaso.",
	},
	["org.muse.w18.hollow.007"] = {
		"I fabbricanti di veleni della Cleft non hanno mai fretta, non starnutiscono mai e non si grattano mai il naso. Non sapevo che si potesse riconoscere un mestiere da quello che la gente non fa.",
		"Guarda i velenai all'opera: mani lente, nessun gesto brusco, nemmeno un raffreddore. Chi starnutiva, in quel mestiere, non c'è più.",
	},
	["org.muse.w18.hollow.008"] = {
		"Ogni serratura della Cleft ha la toppa circondata di graffi sottili. Esercizio, mi dicono. Nessuno dice per quali porte ci si eserciti.",
		"Le toppe della Cleft sono tutte rigate sui bordi, come l'orlo di una tazza molto usata. I maestri dei ladri lo chiamano compito a casa.",
	},
	["org.muse.w18.hollow.009"] = {
		"Le mani bene in vista? Giù nella Cleft è praticamente un saluto.",
		"Mostra le mani, mostra i denti, e nient'altro. Galateo della Cleft.",
		"Mani ferme e domande brevi. Tutta la cortesia della Cleft sta lì.",
	},
	["org.muse.w18.hollow.010"] = {
		"Gli allievi stregoni della Cleft hanno le facce più serie di Orgrimmar. Qualunque cosa imparino laggiù, nessuno la impara per divertimento.",
		"Non ho mai sentito ridere un allievo stregone. I loro maestri, qualche volta. Ed è peggio.",
	},
	["org.muse.w18.hollow.011"] = {
		"Nella roccia della Cleft of Shadow gocciola dell'acqua, da una fessura che nessuno ha mai trovato. A Durotar una goccia dovrebbe essere una buona notizia. Laggiù sembra solo qualcuno che conta.",
		"Nella Cleft c'è una goccia che non smette mai e non riempie mai niente. I ladri, mi dicono, imparano a camminare fra una goccia e l'altra.",
	},
	["org.muse.w18.hollow.012"] = {
		"Fuori da una bottega della Cleft un voidwalker e un imp aspettano i padroni come cavalcature legate alla sbarra. L'imp insulta il voidwalker da un pezzo. Il voidwalker non se n'è accorto.",
		"Due demoni lasciati ad aspettare davanti a una porta della Cleft: un imp che sbraita insulti, e un voidwalker che non risponde niente. Ho visto vecchie coppie di sposi fare lo stesso.",
	},
	["org.muse.w18.hollow.013"] = {
		"Nemmeno una forgia nella Cleft of Shadow. In una città che batte tutto a caldo, quello che si fa laggiù si fa a freddo, a mano, e in silenzio.",
		"L'unico angolo di Orgrimmar senza un'incudine è la Cleft. I suoi mestieri si fanno con aghi, fiale e pazienza, e nessuno risuona.",
	},
	["org.muse.w18.hollow.014"] = {
		"Fresco e tranquillo, quaggiù. Sospettosamente.",
		"La miglior ombra di Orgrimmar, e nessuno la fa pagare. Non mi fido.",
	},
	["org.muse.w18.hollow.015"] = {
		"I grunt pattugliano la Cleft come qualunque altra strada, e i ladri li salutano uno per uno per nome. Nessun grunt ha mai detto il suo.",
		"I ladri della Cleft conoscono per nome ogni grunt di pattuglia, e lo fanno sapere, allegramente. Anche i grunt conoscono i loro nomi, e non dicono proprio niente.",
	},
	["org.muse.w18.hollow.016"] = {
		"Basta dare agli occhi un momento, qui nella Cleft, e le ombre si riempiono di gente: uno su quella soglia, due sulla sporgenza, uno così vicino che avrei potuto toccargli il cappuccio.",
		"Più resto nella Cleft of Shadow, più scopro che è abitata. Ogni angolo buio è una persona arrivata prima di me.",
	},
	["org.muse.w18.hollow.017"] = {
		"osserva uno stregone incappucciato che compra candele a un banco della Cleft, soppesandole una per una sul palmo e scartandone due per motivi che nessuno spiega.",
		"indugia accanto a un venditore di candele della Cleft mentre uno stregone fruga fra la merce con dita lunghe, annusando ogni stoppino.",
	},
	["org.muse.w18.hollow.018"] = {
		"segue due ladri incappucciati lungo il passaggio stretto della Cleft e li perde alla prima curva, senza mai vedere dove siano finiti.",
		"tiene d'occhio due figure ammantate giù per la Cleft per una dozzina di passi esatti; poi c'è una curva, e poi non c'è più nessuno.",
	},
	["org.muse.w18.hollow.019"] = {
		"Sono {g:entrato|entrata} nella Cleft con tre tasche. All'uscita le controllo tutte e tre.",
		"Gente deliziosa, quella della Cleft. Ricordatemi di contare le monete appena ne esco.",
	},
	["org.muse.w18.hours.001"] = {
		"All'alba il canyon è tagliato in due: un lato ancora nell'ombra fredda e azzurra, l'altro già tiepido. I peoni portano i loro carichi lungo la linea in mezzo, indecisi.",
		"La prima luce arriva solo a mezza città. Da un lato della strada la pietra è fredda, dall'altro comincia a scaldarsi, e i lupi si sono già spostati a sdraiarcisi sopra.",
		"La luce del primo mattino scavalca un bordo e non l'altro, e per un'ora Orgrimmar è due città: una che si sveglia al caldo, una ancora rannicchiata nell'ombra.",
	},
	["org.muse.w18.hours.002"] = {
		"vede il primo fuoco della locanda mandare un grosso ricciolo di fumo dall'apertura sbagliata, e sente la locandiera maledirlo come un vecchio amico.",
		"si scosta mentre il fumo esce a sbuffi dalla porta della locanda all'alba, il fuoco che non vuole tirare, e una voce dentro che gli promette una lezione.",
	},
	["org.muse.w18.hours.003"] = {
		"Prima del primo martello, il primo suono della giornata a Orgrimmar è un lupo che sbadiglia: un lungo guaito stridulo, e poi un'altra dozzina, per tutta la strada.",
		"All'alba i lupi si svegliano prima dei fabbri, e si svegliano rumorosamente: sbadigli, stiracchiamenti, una scrollata che fa tintinnare ogni collare del recinto.",
	},
	["org.muse.w18.hours.004"] = {
		"In piedi prima dei venditori. Riesco quasi a sentire i miei pensieri. Mi mette a disagio.",
		"Strade tranquille, a quest'ora. Qualcuno svegli la città: mi mette ansia.",
	},
	["org.muse.w18.hours.005"] = {
		"Nel pieno caldo del giorno i lupi stanno sdraiati in qualunque ombra gettino i muri, e i cavalieri seduti accanto, altrettanto spiaccicati e il doppio più imbronciati.",
		"Il sole di mezzogiorno ha battuto ogni lupo della città: stanno distesi nelle strisce d'ombra con la lingua fuori, e nessuno osa chiedergli di lavorare.",
		"A quest'ora l'ombra è dei lupi. Ci sono arrivati prima, sono più grossi di me, e lo sanno.",
	},
	["org.muse.w18.hours.006"] = {
		"A quest'ora il ferro delle mura scotta troppo per toccarlo. Ho visto un peone scoprirlo nel modo più onesto, e tutta la strada ha imparato qualche parola nuova.",
		"A mezzogiorno ogni fascia e ogni punta di ferro della città diventa una piastra. Appoggiati al palo sbagliato e ti ritrovi {g:marchiato|marchiata} con la ferramenta della città.",
	},
	["org.muse.w18.hours.007"] = {
		"Nella luce dura del giorno si vede ogni crepa delle pareti del canyon, ogni vecchia frana, ogni toppa di malta. Di giorno la città mostra la sua vera età; sono le torce a lusingarla.",
		"Il sole pieno mostra il canyon senza pietà: le giunture, le cicatrici, i punti rattoppati dai peoni. Al chiaro del fuoco Orgrimmar sembra più giovane.",
	},
	["org.muse.w18.hours.008"] = {
		"Troppo caldo per litigare. Litigo dopo, quando rinfresca. Ricordamelo.",
		"Qualcuno sposti quel muro un po' a sinistra. L'ombra è nel posto sbagliato.",
	},
	["org.muse.w18.hours.009"] = {
		"Al tramonto le incudini si fermano una dopo l'altra, e puoi seguirlo attraverso la città: qui un martello tace, poi uno più lontano, come candele spente tra le dita.",
		"Ascolta mentre la luce cala e puoi contare le forge che smettono, un martello dopo l'altro che esce dal rumore.",
		"L'ultima ora di luce si porta via i martelli uno alla volta. Alla fine resta un solo fabbro testardo, chissà dove, a battere da solo.",
	},
	["org.muse.w18.hours.010"] = {
		"Mentre la luce se ne va, le pareti del canyon cambiano colore di minuto in minuto: rosso, poi ruggine, poi il viola spento di un vecchio livido, e alla fine nessun colore.",
		"Il crepuscolo fa cose strane alla pietra rossa. La scurisce, la incupisce, le dà il colore del vino secco, e poi la spegne e basta.",
	},
	["org.muse.w18.hours.011"] = {
		"si unisce alla lenta marea che scivola verso la locanda mentre la luce cala, e trova mezza valle che già si infila dalla stessa porta.",
		"si lascia portare verso la locanda con tutti gli altri mentre scende il crepuscolo, e aspetta il proprio turno davanti a una porta che sembra essersi ristretta.",
	},
	["org.muse.w18.hours.012"] = {
		"Già accese le lampade? Allora la fila in banca era più lunga di quanto credessi. O ci ho messo di più io.",
		"Accendono le torce lungo le mura. È il segnale per smettere di far finta che combinerò qualcos'altro.",
	},
	["org.muse.w18.hours.013"] = {
		"coglie due occhi che brillano all'altezza del ginocchio in un portone buio, e poi il resto del lupo, addormentato con un occhio sulla strada.",
		"nota scintille verdi nell'ombra di un vicolo al passare della luce delle torce: un lupo che guarda dal buio senza prendersi il disturbo di alzarsi.",
	},
	["org.muse.w18.hours.014"] = {
		"Di notte senti i piccoli suoni che il giorno affoga: una sbarra che cade al suo posto dietro una porta, un lupo che si gratta, un bollitore chissà dove, due voci che ridono piano.",
		"Quando la folla rientra, escono i piccoli rumori della città: lo sbattere di un'imposta, gli artigli di un lupo sulla pietra, qualcuno che canticchia dietro un muro.",
		"La notte riduce Orgrimmar a una manciata di suoni, ognuno da solo: un colpo di tosse, una catena, un lupo che si gira nel sonno. Adesso li so distinguere.",
	},
	["org.muse.w18.hours.015"] = {
		"La luna supera tardi il bordo del canyon, e per un po' ogni punta delle mura ha due ombre, una delle torce e una del cielo, che puntano in direzioni diverse.",
		"Quando la luna scavalca finalmente il bordo, le mura ricevono una seconda serie di ombre, pallide e lunghe, che incrociano quelle rosse delle torce.",
	},
	["org.muse.w18.hours.016"] = {
		"aggira in silenzio un grunt fuori servizio addormentato seduto contro un muro, il mento sul petto, l'ascia sulle ginocchia come una coperta.",
		"passa piano accanto a un grunt che sonnecchia dritto su una panca, ancora mezzo in armatura, russando con grande dignità.",
	},
	["org.muse.w18.hours.017"] = {
		"Di notte la città mi si chiude intorno come una mano intorno a un tizzone. Le nostre mura, le nostre torce, i nostri grunt sulle torri: qui dormo meglio che in qualunque altro posto sotto il cielo.",
		"Notte dentro le nostre mura. Là fuori tengo un occhio aperto; qui lo tiene aperto l'Orda per me.",
	},
	["org.muse.w18.korkron.001"] = {
		"Ho visto un Kor'kron comprare del pane. Ha pagato il primo prezzo che gli hanno detto, contato fino al rame, e se n'è andato. La fornaia aveva l'aria di chi è stata derubata di qualcosa.",
		"L'unico cliente di Orgrimmar che non contratta mai porta l'armatura dei Kor'kron. Paga quel che gli chiedono, e il mercante resta lì con in mano la discussione che si era preparato.",
		"Anche un Kor'kron deve mangiare. Ne ho visto uno pagare una pagnotta senza mercanteggiare, e la fornaia gli è rimasta a guardare dietro come una sposa piantata all'altare.",
	},
	["org.muse.w18.korkron.002"] = {
		"si ritrova a camminare al passo lento e regolare di un Kor'kron davanti, e se ne accorge solo quando quello svolta e i piedi tengono il ritmo ancora per qualche passo.",
		"scopre di avere accordato il passo a quello cadenzato di un Kor'kron poco più avanti, e smette con una scrollata di testa un po' imbarazzata.",
		"si accorge, una dozzina di passi più avanti, di aver camminato al passo di un Kor'kron per tutta la strada, e ne esce con un colpo di tosse.",
	},
	["org.muse.w18.korkron.003"] = {
		"Avete visto? Un goblin ha appena perso una vendita con un Kor'kron che non l'ha guardato nemmeno una volta.",
		"Un goblin battuto a parole da uno che non ha mai aperto bocca. Questa me la segno.",
		"Tiritera completa, prezzo in discesa, cinghia in omaggio, e il Kor'kron non ha nemmeno abbassato gli occhi. Povero goblin.",
	},
	["org.muse.w18.korkron.004"] = {
		"Ogni superficie di Orgrimmar porta uno strato di polvere rossa, tranne i Kor'kron. Qualcuno spazzola quelle armature ogni ora, oppure la polvere non osa.",
		"Non ho mai visto un granello sull'armatura di un Kor'kron. In questa città ci vuole un lavoro continuo, o qualche accordo segreto con la polvere.",
		"L'armatura di un Kor'kron è la cosa più pulita di Orgrimmar, monete della banca comprese. Mi piacerebbe conoscere chi la lucida, e chiedergli come fa.",
	},
	["org.muse.w18.korkron.005"] = {
		"si attarda davanti a un gioco di piccoli orchi e troll che fanno i Kor'kron: due stanno rigidi accanto a una porta con dei bastoni, e un terzo fa il Capoguerra, male, dando ordini che nessuno esegue.",
		"guarda tre bambini che fanno a turno i Kor'kron davanti a una porta, gioco che sembra consistere soprattutto nello stare dritti e nel non ridere. Nessuno resiste a lungo.",
		"rallenta accanto a una soglia sorvegliata da due Kor'kron piccolissimi armati di manici di scopa, che fanno un cipiglio magnifico finché uno dei due non starnutisce.",
	},
	["org.muse.w18.korkron.006"] = {
		"Un grunt sbraitava sul prezzo dei chiodi finché non è passato un Kor'kron. Ha finito la frase a metà volume e con un terzo della convinzione.",
		"A Orgrimmar niente abbassa una voce come un Kor'kron che passa. Ho visto un'intera lite scendere a un borbottio e risalire appena lui ha girato l'angolo.",
		"Quando passa un Kor'kron il mercato cala di una tacca, come una pentola tolta dal fuoco, e risale piano alle sue spalle.",
	},
	["org.muse.w18.korkron.007"] = {
		"Un Kor'kron non prende ordini da nessun capotribù, per quanto antico sia il clan. Una sola voce li muove, e parla da Grommash Hold. I clan hanno dovuto farci l'abitudine.",
		"Capi di clan antichi e orgogliosi fanno la fila come tutti, e i Kor'kron non si scostano per nessuno di loro. È tutta l'idea di Orda del Capoguerra, ritta lì in armatura.",
		"Il capotribù più vecchio della città e il peone più sbarbato ricevono dai Kor'kron di Grommash Hold lo stesso sguardo: misurato, breve, per niente colpito. I clan brontolano. Thrall no.",
	},
	["org.muse.w18.korkron.008"] = {
		"Il loro mestiere non lo vorrei. Stare fermi tutto il giorno mentre l'Orda intera ti parla addosso.",
		"Il servizio da Kor'kron: stare lì, non dire niente, spaventare tutti. Due su tre li saprei fare.",
		"Lavoro duro, fare il Kor'kron. Tutto quel restare immobili.",
	},
	["org.muse.w18.korkron.009"] = {
		"nota un Kor'kron accanto al trono spostarsi di mezzo passo perché un piccolo goblin in udienza possa vedere il Capoguerra, poi tornare al suo posto come se nulla si fosse mosso.",
		"vede uno dei Kor'kron fare spazio, di una spanna, a un vecchio troll curvo che non riusciva a vedere oltre; nessuno dei due guarda l'altro.",
		"sorprende un Kor'kron a sporgersi appena, perché un vitellino tauren in fila con la madre possa intravedere il Capoguerra oltre la sua spalla.",
	},
	["org.muse.w18.korkron.010"] = {
		"Gli orchi hanno passato anni sotto gli occhi delle guardie umane, nei campi. Adesso le guardie migliori della città sono orchi, e sorvegliano una porta che resta sempre aperta. Qualcuno ci ha pensato bene.",
		"Fino a poco fa, per un orco, ogni guardia era un carceriere. I Kor'kron stanno davanti a una porta aperta con la faccia rivolta alla città: lo stesso mestiere, girato dalla parte giusta.",
		"I campi hanno insegnato agli orchi a cosa serve una guardia: a tenere dentro la gente. I Kor'kron sono la risposta del Capoguerra, guardie che tengono aperta una porta e sfidano chiunque a chiuderla.",
	},
	["org.muse.w18.korkron.011"] = {
		"Un tuono oltre il bordo del canyon e la strada corre al riparo. Lassù a Grommash Hold, ci scommetto, i Kor'kron non hanno inclinato nemmeno l'elmo. Probabilmente è la tempesta a passare l'ispezione.",
		"Scoppia la tempesta e tutti si buttano sotto una tettoia. Su per la Valley of Wisdom, ci giocherei gli stivali, una fila di Kor'kron ci sta in piedi sotto e fissa la pioggia come se si fosse presentata senza appuntamento.",
	},
	["org.muse.w18.korkron.012"] = {
		"Vicino a Grommash Hold ho visto un Kor'kron anziano spostare di un dito il gomito di uno più giovane, con due dita, e tornare al suo posto senza una parola. Era tutta lì la lezione, pare, ed è bastata.",
		"Un Kor'kron dalle zanne grigie ha corretto con un solo colpetto la presa di uno più giovane sull'asta. Nessuno ha parlato. Quel giovane non avrà bisogno che glielo si ripeta.",
		"I Kor'kron non insegnano a parole, da quel che vedo. Un colpetto al gomito, un'occhiata ai piedi, e il più giovane sta in piedi un po' più come l'anziano.",
	},
	["org.muse.w18.korkron.013"] = {
		"I Kor'kron stanno dove l'Orda tiene il suo cuore. Ogni volta che passo loro accanto mi viene voglia, un poco, di meritarmi la loro guardia.",
		"Qualcuno deve stare fra il nostro Capoguerra e ogni coltello del mondo. Mi fa piacere che siano loro, e un po' mi vergogno di non esserci io.",
		"Proteggono un orco solo, e attraverso di lui ognuno di noi. Faccio un cenno passando davanti ai Kor'kron, non me lo restituiscono mai, e mi sembra giusto così.",
	},
	["org.muse.w18.korkron.014"] = {
		"Bella armatura, Kor'kron. Niente paura, guardo soltanto.",
		"Allora passo di qui nel modo più normale possibile. Niente da vedere. Continuate pure a incombere.",
		"Bell'elmo. No, non lo tocco. Ci tengo alle mie dita.",
	},
	["org.muse.w18.korkron.015"] = {
		"Qualcuno ha mai visto un Kor'kron sedersi? I peoni dicono di no. Comincio a crederci.",
		"Pagherei un argento per vedere un Kor'kron seduto. Una volta sola, su uno sgabello, come una persona qualunque.",
		"I Kor'kron si siedono? Domanda seria. Non ne ho mai colto uno sul fatto.",
	},
	["org.muse.w18.legend.001"] = {
		"I grunt alla porta della Hall of Legends non li scelgono per la stazza, mi ha detto un veterano, ma per la memoria. Conoscono ogni faccia che si è guadagnata l'ingresso, e non hanno mai bisogno di chiedere due volte.",
		"Alla Hall of Legends nessuno mostra documenti. Le guardie sanno e basta chi ha il grado e chi no, e finora non hanno mai sbagliato davanti a qualcuno.",
		"Una volta una guardia della Hall of Legends ha respinto un capo e fatto entrare un grunt zoppicante nello stesso istante, amano raccontare gli ufficiali. Quella porta legge il grado, non la fama.",
	},
	["org.muse.w18.legend.002"] = {
		"guarda un'ufficiale della Hall of Legends attraversare la folla con un'armatura troppo bella per delle commissioni, e un piccolo orco trotterellarle dietro a rispettosa distanza, imitandone il passo.",
		"si fa da parte al passaggio di un guerriero carico di onori, di quelli che hanno un posto nella Hall of Legends, e nota come la folla si zittisca per un passo o due e poi faccia finta di niente.",
	},
	["org.muse.w18.legend.003"] = {
		"Ogni onore della Hall of Legends è stato pagato lontano da Orgrimmar, in qualche valle dove l'Alleanza aspettava. La sala è silenziosa. Il pagamento no.",
		"Nessun edificio della Valley of Honor è più silenzioso della Hall of Legends, e nessuno ha un conto più salato. Tutto quello che c'è dentro è stato comprato con battaglie combattute molto lontano.",
	},
	["org.muse.w18.legend.004"] = {
		"Ho visto un ufficiale della Hall of Legends contrattare una pagnotta e perdere. Mi ha reso più simpatica tutta la sala.",
		"Leggenda è una parola grossa, per qualcuno che discute ancora sul prezzo del pane.",
	},
	["org.muse.w18.legend.005"] = {
		"Un vecchio veterano siede quasi ogni giorno su un gradino vicino alla Hall of Legends e non entra mai, anche se la gente dice che potrebbe. Le leggende, racconta a chiunque lo ascolti, sono soltanto quelli che non sono morti nel momento sbagliato.",
		"C'è un vecchio orco pieno di cicatrici che sorveglia la Hall of Legends dall'altra parte del sentiero. Il grado ce l'ha, dice la gente, e nessuna voglia di usarlo. Quelli che lo meritavano più di lui, dice, non sono qui per entrare.",
	},
	["org.muse.w18.legend.006"] = {
		"Hall of Legends. Nome altisonante. Io mi accontenterei di una sala della paga onesta.",
		"Se mai costruiranno una sala per le quasi leggende, tenetemi una panca vicino alla porta.",
	},
	["org.muse.w18.legend.007"] = {
		"Perfino i furieri della Hall of Legends parlano sottovoce. Prendono denaro come qualsiasi mercante della città, ma solo dopo una lunga occhiata che chiede che cosa hai fatto per stare qui.",
		"Qui dentro i mercanti guardano il tuo grado prima della borsa. È l'unica bottega di Orgrimmar dove il denaro viene dopo.",
	},
	["org.muse.w18.legend.008"] = {
		"Attraverso i muri della Hall of Legends il fracasso del cortile d'addestramento arriva debole e lontano, come qualcosa che la sala ricorda.",
		"Qui dentro il baccano della Valley of Honor si riduce a un tintinnio lontano. Ogni ufficiale nella sala ha cominciato in quel rumore, e nessuno sembra aver fretta di tornarci.",
	},
	["org.muse.w18.legend.009"] = {
		"I giovani grunt si sfidano a toccare la porta della Hall of Legends. Uno lo fa sempre, la guardia ruggisce sempre, e scappano via ridendo tutti e due, il più audace un po' più alto di prima.",
		"Toccare la porta della Hall of Legends è una sfida fra i ragazzi della città. Le guardie lo sanno e ruggiscono a comando, e sospetto che sia la parte del turno che preferiscono.",
		"Ogni ragazzino di Orgrimmar ha toccato almeno una volta la porta della Hall of Legends, mi ha detto una guardia sospirando. Sembra che li abbia presi tutti come un fatto personale.",
	},
	["org.muse.w18.legend.010"] = {
		"La Hall of Legends sta nella stessa valle del cortile d'addestramento, e non credo sia un caso. Ogni allievo che finisce nella polvere ne vede la porta da dove è caduto.",
		"Metti la Hall of Legends accanto al cortile e non servono discorsi. Gli allievi cadono, alzano gli occhi, vedono quella porta e si rimettono in piedi.",
	},
	["org.muse.w18.legend.011"] = {
		"Quello è una leggenda, mi hanno detto. Aveva l'aria di aver bisogno di un sonnellino e di un pasto caldo, come me.",
		"Ho conosciuto una leggenda alla locanda. Russava. In modo leggendario.",
	},
	["org.muse.w18.legend.012"] = {
		"Forse un giorno la Hall of Legends conoscerà la mia faccia. Forse no. L'Orda ha bisogno di leggende, ma di molti più di noi che continuano semplicemente a presentarsi.",
		"Non tutti hanno un posto nella Hall of Legends. Qualcuno deve tenere le porte e portare l'acqua mentre le leggende si fanno. Quasi sempre non mi dispiace essere quel qualcuno.",
	},
	["org.muse.w18.legend.013"] = {
		"In questa città c'è una sala per chi ha fatto più male alla mia parte. Mi accorgo di passare davanti alla Valley of Honor un po' più in fretta che altrove.",
		"Orgrimmar tiene un'intera sala per onorare i migliori dell'Orda contro gente come me. Strano, ammirare il legname di un monumento eretto contro la mia stessa parte.",
	},
	["org.muse.w18.legend.014"] = {
		"Gli onori della Hall of Legends continuano ad aumentare. Qualcuno l'ha detto con orgoglio e qualcun altro con un sospiro, e credo avessero ragione entrambi.",
		"La Hall of Legends cresce un po' a ogni stagione di guerra. Se sia un buon segno dipende da chi lo chiedi, e da che cosa ha perso.",
	},
	["org.muse.w18.legend.015"] = {
		"nota il grado da ufficiale di un guerriero che passa e, senza volerlo davvero, si raddrizza un poco finché quello non è andato oltre.",
		"nota i grunt vicini portarsi il pugno al petto al passaggio di un ufficiale decorato, e si ritrova la mano già a metà strada per fare lo stesso.",
	},
	["org.muse.w18.legend.016"] = {
		"Forza a quelli della Hall of Legends. Lasciate un po' di gloria in giro anche per noialtri.",
		"Alle leggende: ben fatto. Adesso smettetela di far sembrare noialtri dei fannulloni.",
	},
	["org.muse.w18.lore.001"] = {
		"Una vecchia sciamana mi ha detto che la Valley of Honor e la Valley of Wisdom sono state messe una accanto all'altra apposta. Servono tutte e due, ha detto, e in quest'ordine, o al contrario, a seconda di chi paga per l'errore.",
		"Chiedi a un grunt perché onore e saggezza in questa città sono vicini di casa, e ti dirà prima l'onore. Chiedilo a una tauren, e sorriderà senza dire niente, che è la risposta.",
	},
	["org.muse.w18.lore.002"] = {
		"Un veterano dei Warsong giura che il grido di guerra di Grom si sentiva sopra un'intera battaglia, tamburi compresi, e che il nemico lo sentiva sempre per primo. Lo racconta come un fatto ovvio, come dire che l'acqua bagna.",
		"I vecchi grunt dei Warsong discutono ancora sulla voce di Grom: se si sentisse sopra i tamburi, o se fossero i tamburi a fermarsi per lasciarla passare. Nessuna delle due parti ha mai vinto.",
		"La voce di Grom è l'unica cosa di lui che i veterani dei Warsong non esagerano mai, a sentir loro. Non ce n'era bisogno.",
	},
	["org.muse.w18.lore.003"] = {
		"Ho chiesto a tre grunt che cosa vuol dire Kor'kron. Tre risposte e una rissa. La prossima volta chiedo a un tauren.",
		"Che cosa vuol dire Kor'kron? A quanto pare: non chiederlo ai Kor'kron.",
	},
	["org.muse.w18.lore.004"] = {
		"Thrall ha imparato le vie dello sciamano fra le montagne dell'Alterac, presso i Frostwolf, dicono gli sciamani della Valley of Wisdom. Per questo gli spiriti sono di casa nella sua valle: li conosceva prima ancora di guidare qualcuno.",
		"Prima di essere Capoguerra è stato un allievo, ricordano ai giovani gli anziani della Valley of Wisdom: uno schiavo liberato, seduto al freddo con i vecchi sciamani dei Frostwolf, a imparare ad ascoltare.",
	},
	["org.muse.w18.lore.005"] = {
		"I grunt dicono che la sala del Capoguerra sta in fondo alla città, lontano dalla porta principale, apposta: un nemico che voglia arrivare a Thrall deve prima attraversare tutte le valli di Orgrimmar, e ogni valle ha qualcosa da dire.",
		"Chi ha scelto la Valley of Wisdom per Grommash Hold ragionava da soldato, mi ha detto un vecchio grunt. Metti il capo in fondo e fai di tutta la città il muro davanti a lui.",
	},
	["org.muse.w18.lore.006"] = {
		"si ferma un momento dove un grunt racconta a un gruppetto di bambini l'ultima battaglia di Grom; quando arriva al grido di guerra, ogni bambino lo urla al posto suo.",
		"coglie la fine di una storia su Grommash raccontata a qualche piccolo orco, che urla il grido di guerra al momento giusto e poi litiga su chi l'ha urlato meglio.",
	},
	["org.muse.w18.lore.007"] = {
		"Un'istruttrice della Valley of Honor obbliga ogni allievo ad aiutare lo sconfitto a rialzarsi prima di dire una parola. È più antico dei campi, dice, più antico del Portale. I giovani alzano gli occhi al cielo e lo fanno lo stesso.",
		"Nel cortile d'addestramento nessuno canta vittoria su un compagno a terra finché una mano non l'ha rimesso in piedi. Gli istruttori la chiamano la vecchia usanza, e nessuno osa chiedere quanto vecchia.",
	},
	["org.muse.w18.lore.008"] = {
		"Nell'angolo dei cacciatori della Valley of Honor gli orchi giurano sui lupi e i tauren sulla pazienza. I troll imprecano contro tutti e due, e i loro raptor mordono chi perde la discussione.",
		"Chiedi a un cacciatore orco qual è la bestia migliore e ti risponderà lupo prima che tu abbia finito. Chiedilo a un tauren e vorrà sapere che cosa cacci, e quanto sai aspettare.",
	},
	["org.muse.w18.lore.009"] = {
		"Thrall ha imparato a combattere in un'arena umana, davanti a un pubblico che pagava per vederlo sanguinare. Gli istruttori della Valley of Honor non l'hanno dimenticato. Nel loro cortile nessuno combatte per farsi guardare.",
		"Il Capoguerra è stato un gladiatore, un tempo, per denaro umano. Nella Valley of Honor ti diranno che è per questo che il cortile ha spettatori e non gradinate: lì un combattimento è una lezione, mai uno spettacolo.",
	},
	["org.muse.w18.lore.010"] = {
		"Grom fu il primo di noi a bere il sangue del demone, e alla fine fu lui a versare quello del demone. La sala porta il suo nome perché era tutte e due le cose, e lo eravamo anche noi.",
		"L'orco che ha trascinato il mio popolo nel patto col demone è lo stesso che l'ha spezzato. Ogni volta che guardo verso Grommash Hold ricordo che possiamo essere l'una o l'altra cosa, e che tocca a noi scegliere.",
	},
	["org.muse.w18.lore.011"] = {
		"Prima che ci fosse Grommash Hold, racconta un vecchio grunt, c'era un fuoco all'aperto e i capi ci sedevano attorno accovacciati. Thrall ha tenuto il fuoco e ci ha costruito sopra un tetto.",
		"I primi consigli di questa città, sostengono i vecchi peon, si tenevano nella polvere attorno a un solo fuoco, senza nessuna sala. Grommash Hold, dicono, è soltanto quel fuoco con dei muri intorno.",
		"Certi grunt fra i più vecchi chiamano ancora un'udienza a Grommash Hold «sedersi al fuoco», anche se là dentro tutti stanno in piedi sotto un tetto, con i Kor'kron che guardano.",
	},
	["org.muse.w18.lore.012"] = {
		"Hanno messo il nome di Grom sull'unica sala dove tutti abbassano la voce. Lui l'avrebbe trovato divertentissimo.",
		"Grommash Hold, dove non si può gridare. Chissà dove, Hellscream se la ride.",
	},
	["org.muse.w18.lore.013"] = {
		"C'è un nome che i vecchi orchi della Valley of Wisdom non pronunciano mai: lo stregone che vendette i clan ai demoni. Lo chiamano quello là, sputano nella polvere e cambiano discorso.",
		"Nomina a un anziano il vecchio capo stregone degli orchi e ricevi un'occhiata, uno sputo e silenzio. Certi nomi, dicono gli anziani, restano vivi solo perché qualcuno li pronuncia.",
	},
	["org.muse.w18.lore.014"] = {
		"L'onore, come lo intende l'Orda, non è il luccichio sull'armatura di un ufficiale. È essere la persona su cui gli altri possono contare quando la guerra si fa vicina. La valle prende il nome dalla seconda cosa, e cerco di ricordarmelo.",
		"La nostra Valley of Honor addestra guerrieri, ammaestra bestie e nel cortile non appende medaglie. L'onore è quello che sei in una brutta giornata, dicono gli istruttori, non quello che indossi in una bella.",
	},
	["org.muse.w18.lore.015"] = {
		"Strength, Spirits, Wisdom, Honor: Orgrimmar ha dato alle sue valli il nome di quello che voleva essere. A nessuno è venuto in mente di chiamarne una Pazienza, anche se alla fila davanti a Grommash Hold avrebbe fatto comodo.",
		"Ogni valle di questa città porta una virtù nel nome. Wisdom e Honor stanno in fondo, oltre tutti i commerci, come se la strada fino a loro andasse guadagnata.",
	},
	["org.muse.w18.lore.016"] = {
		"indugia accanto a due vecchi orchi che litigano su quale clan avesse i tamburi migliori prima dei campi, ognuno a battere il ritmo di un tempo su un coperchio di barile per dimostrarlo.",
		"sente per caso una coppia di veterani risolvere una vecchia lite fra clan suonandola sulle ginocchia, senza che nessuno dei due ammetta che l'altro tenesse meglio il tempo.",
	},
	["org.muse.w18.lore.017"] = {
		"ascolta un orco e un tauren raccontare a due voci come si incontrarono i loro popoli; i dettagli cambiano a ogni interruzione, il finale mai.",
		"segue una lite amichevole fra un tauren e un grunt su chi salvò chi dai centauri, che a quanto pare hanno vinto entrambi più di una volta.",
	},
	["org.muse.w18.mingle.001"] = {
		"assiste all'occhiataccia di un cuoco orco a un cliente troll che versa una salsa rossa piccante sul suo stufato, e poi lo vede, appena il troll se n'è andato, assaggiarla con cautela dal vasetto.",
		"vede un troll versare una zucchetta di salsa infuocata nello stufato di un orco; il cuoco la prende come un'offesa, il troll come una gentilezza, e alla fine la mangiano tutti e due.",
	},
	["org.muse.w18.mingle.002"] = {
		"Un goblin ha assunto un tauren per reggere l'angolo della tenda mentre si cambia un palo. Il tauren sta lì col braccio alzato, paziente come un paletto da tenda, ed è stato pagato in anticipo.",
		"Un tauren, un goblin, una tenda che si affloscia: il tauren la regge, il goblin sovrintende dal basso, e non si capisce quale dei due creda di comandare.",
	},
	["org.muse.w18.mingle.003"] = {
		"Ormai la strada ha una lingua tutta sua. I peoni orchi chiamano i piatti con le parole dei troll, contano in orchesco e imprecano in quello che capita, e tutti capiscono.",
		"Ascolta a un angolo qualsiasi e i discorsi sono uno stufato: ossa orchesche, condimento troll, qua e là una parola tauren per cose che gli orchi non avevano mai saputo nominare.",
	},
	["org.muse.w18.mingle.004"] = {
		"si ferma a un angolo dove un orco, un troll, un tauren e un goblin giocano a dadi, ognuno chiaramente con regole proprie, e vincono tutti e quattro.",
		"resta abbastanza da vedere una partita a dadi fra quattro popoli finire in una lite su cosa valga un doppio sei, che risulta valere quattro cose diverse.",
		"passa accanto a una partita a dadi dove quattro giocatori discutono le regole in quattro lingue, e nessuno tira da un pezzo.",
	},
	["org.muse.w18.mingle.005"] = {
		"Su un gradino rovente un tauren ha offerto una tazza d'acqua a un Reietto. Il Reietto l'ha presa con entrambe le mani, l'ha ringraziato e l'ha tenuta finché l'altro non se n'è andato. Certe gentilezze riguardano chi dà.",
		"Ho visto un tauren dividere il suo otre d'acqua con una Reietta che probabilmente non sapeva che farsene. Lei ha accettato con un piccolo inchino. Nessuno dei due sembrava trovarlo strano.",
	},
	["org.muse.w18.mingle.006"] = {
		"All'abbeveratoio un lupo, un raptor e un kodo non sono d'accordo sui turni. I padroni se ne stanno ben lontani, ognuno fingendo che la bestia sia di qualcun altro.",
		"Un raptor ha morso un lupo, il lupo ha azzannato un kodo, il kodo si è seduto. Il troll, l'orco e il tauren che li possiedono hanno trovato qualcosa di molto interessante da studiare sul muro.",
	},
	["org.muse.w18.mingle.007"] = {
		"Un grunt di guardia e un Reietto in attesa accanto al suo posto non avevano niente da dirsi finché non è passato un goblin. Ora si danno ragione, a lungo, sugli zeppelin.",
		"Niente unisce due popoli come una lamentela in comune. L'orco e il Reietto vicino al palo hanno scoperto di detestare tutti e due lo zeppelin, e da allora sono amici.",
	},
	["org.muse.w18.mingle.008"] = {
		"L'impiegato della banca saluta ogni cliente in una lingua diversa: orchesco per l'orco, una parola troll per il troll, una lenta frase in taur-ahe per il tauren. Per me, un cenno. Un cenno molto premuroso.",
		"In banca qualcuno ha imparato un saluto in ogni lingua che passa dalla porta. Si capisce chi è il prossimo in fila da quale parola sta dicendo l'impiegato.",
	},
	["org.muse.w18.mingle.009"] = {
		"Abbiamo imparato gli insulti gli uni degli altri molto prima dei nomi: orchi, troll, tauren, Reietti. Ho sentito dire che è così che cominciano quasi tutte le famiglie.",
		"I nostri popoli si prendono ancora in giro a ogni angolo di questa città, corna, zanne, cuciture e tutto. A nessuno fuori dalle mura però è permesso farlo. È questa la parte che conta.",
	},
	["org.muse.w18.mingle.010"] = {
		"osserva un orco e un tauren che portano insieme una lunga trave su per una rampa, la trave inclinata ripidamente dal lato dell'orco, e nessuno dei due disposto a farlo notare per primo.",
		"si scansa per una trave portata da un tauren a un capo e da un goblin all'altro, che risale la strada con un'inclinazione da cui si deduce una grande fiducia da parte del goblin.",
	},
	["org.muse.w18.mingle.011"] = {
		"Mi avevano detto che l'Orda era un branco di bruti tenuti insieme dalla paura. Guardando un troll e un tauren che discutono educatamente per una panca in comune, mi chiedo chi me l'abbia detto, e perché.",
		"Dalle mie parti si dice che i popoli di Orgrimmar si sopportano a stento. Ho visto un orco andare a prendere l'acqua per un Reietto e un goblin aiutare un troll a fare i conti. Questo lo tengo per me.",
	},
	["org.muse.w18.mingle.012"] = {
		"In locanda ogni popolo trova il suo modo di sedersi: gli orchi ai tavoli lunghi, i tauren negli angoli dove le travi sono più alte, i troll sui davanzali, e un goblin sul bancone stesso finché la locandiera non lo scaccia.",
		"La locanda ha delle sedie, in teoria. In pratica i tauren si prendono gli angoli sotto le travi alte, i troll i davanzali, e i goblin qualunque cosa sia più vicina al banco.",
	},
	["org.muse.w18.mingle.013"] = {
		"osserva una banda di bambini che gioca al Capoguerra e alle guardie: un bambino orco su una cassa rovesciata, due troll come Kor'kron severissimi, e un vitellino tauren, all'unanimità, nel ruolo della sala.",
		"si sofferma su un gioco di corte nella polvere, con un piccolo goblin come Capoguerra, un orco e un troll di guardia, e un paziente vitellino tauren a fare da mura.",
	},
	["org.muse.w18.mingle.014"] = {
		"Darsi appuntamento con qualcuno in questa città è un rompicapo. Il troll dice dopo il terzo tamburo, l'orco dopo cena, il tauren quando l'ombra arriva alla banca, e il goblin fissa un'ora e una multa per i ritardi.",
		"Quattro popoli, quattro modi di dire più tardi, e nessuno indica la stessa ora. Ho imparato a portarmi qualcosa da mangiare mentre aspetto.",
	},
	["org.muse.w18.mingle.015"] = {
		"Il troll che mi prende in giro per l'accento, il tauren che cammina troppo piano, l'orco che mi spintona, il Reietto che mi mette a disagio: se un guaio arrivasse oltre le mura, li vorrei tutti dalla nostra parte. Ci sono già.",
		"Ci diamo sui nervi tutto il giorno in queste strade. Fate comparire un vero nemico al cancello, e vedrete con che rapidità smettiamo.",
	},
	["org.muse.w18.mingle.016"] = {
		"si attarda vicino a un goblin che fa da interprete fra un orco e un tauren, una parola a ciascuno e un rame da ciascuno, e nota che la conversazione sta durando molto più del necessario.",
		"origlia un orco e un tauren che trattano tramite un interprete goblin, il quale sembra aggiungere qualche frase di suo in entrambe le direzioni.",
	},
	["org.muse.w18.mingle.017"] = {
		"Orco, troll, tauren e Reietto allo stesso tavolo, e nessuno ha ancora lanciato una tazza. Qualcuno segni la data.",
		"Guardate quel tavolo. Quattro popoli, una brocca, nessuno spargimento di sangue. Voglio esserci quando va storto.",
		"Quattro popoli e una brocca sola. Qualcuno chiami un pittore.",
	},
	["org.muse.w18.mingle.018"] = {
		"Su una panca vicino alla pozza un vecchio troll e un vecchio tauren hanno messo a confronto le loro credenze per un'ora: i loa, la Madre Terra, gli spiriti della terra. Hanno concluso, con reciproca soddisfazione, che tutti gli interessati probabilmente si conoscono.",
		"Da un bel pezzo un anziano troll e un'anziana tauren si scambiano storie dei loa e della Madre Terra, annuendo ai passaggi migliori dell'altro come due artigiani.",
	},
	["org.muse.w18.mingle.019"] = {
		"Chi ha insegnato a quel vitellino tauren a imprecare in orchesco? Qualcuno si prenderà una bella lavata di capo dalla madre.",
		"Quel piccolo tauren ha appena usato una parola orchesca che non direi mai davanti a un anziano. I bambini orchi sono fierissimi.",
		"Ascoltate quel vitellino. Gergo orchesco da strada, puro. La madre ha abbassato le orecchie.",
	},
	["org.muse.w18.names.001"] = {
		"Strength, Spirits, Wisdom, Honor: alle valli sono toccate delle virtù, e solo la città e la sala hanno avuto dei nomi. Un anziano mi ha detto che bastano due parole, a portare il peso dei morti.",
		"Gli orchi hanno dato alla città il nome di un eroe morto e alla sala quello di un altro, poi si sono fermati. Alle valli sono toccate semplici virtù, dice un grunt, perché nessuno voleva dare indicazioni passando per una tomba.",
		"Nessuna valle, da queste parti, porta il nome di una persona. La teoria di un grunt: il nome di un morto su una città è orgoglio, il nome di un morto su ogni strada sarebbe un cimitero.",
	},
	["org.muse.w18.names.002"] = {
		"I troll dicono Durotar con una cantilena, come fosse una canzone. Gli orchi lo dicono come un pugno chiuso. I tauren lo dicono piano, come se mettere fretta al nome di un capo morto fosse scortese.",
		"Ascolta abbastanza a lungo e capisci chi parla da come dice Durotar: arrotato da un troll, abbaiato da un orco, posato con delicatezza da un tauren, come uno zaino pesante.",
	},
	["org.muse.w18.names.003"] = {
		"Sulla sala c'è Grommash, il nome intero. Alla locanda è solo Grom. I vecchi Warsong dicono che vanno bene tutti e due: uno per quello che fece alla fine, l'altro per chi era prima.",
		"Nessuno lo chiama Grommash davanti a un boccale. Grom, dicono, e alzano un poco il boccale. Grommash è per la sala, e per i momenti in cui si sta dritti.",
	},
	["org.muse.w18.names.004"] = {
		"I Darkspear hanno dato al loro villaggio sulla costa il nome di Sen'jin, il padre di Vol'jin, che a Kalimdor non arrivò mai. A Orgrimmar i troll pronunciano il suo nome piano, come gli orchi pronunciano quello di Durotan.",
		"Sen'jin Village porta il nome di un troll morto sulle vecchie isole prima che la traversata finisse, mi ha detto un Darkspear. Ogni popolo di questa città sembra aver costruito sulla tomba di un padre.",
	},
	["org.muse.w18.names.005"] = {
		"Grida 'Grom!' in questa strada e conta le teste che si girano. A me ne sono venute quattro. Due erano lupi.",
		"Metà dei cuccioli nati qui ha preso il nome dei morti, dicono le madri. Chiama Grom e avrai da fare tutto il giorno.",
	},
	["org.muse.w18.names.006"] = {
		"si ferma a una bancarella di statuine intagliate, tra cui Thrall, Grom e Orgrim; gli eroi morti si vendono meglio, ammette l'intagliatore, perché non possono lamentarsi dei nasi.",
		"rigira un piccolo Doomhammer di legno, con tanto di armatura dipinta di nero, mentre l'intagliatore spiega che il Capoguerra vivo si vende peggio: tutti sanno com'è fatto.",
	},
	["org.muse.w18.names.007"] = {
		"Il Burning Blade un tempo era il nome di un clan, dicono gli anziani, prima di diventare quello di una setta. Certi nomi si guastano e non c'è modo di ripulirli, e in città nessuno risponde più a quello.",
		"Prima di voler dire settari nell'abisso, dice un vecchio grunt, Burning Blade era un clan famoso per i suoi maestri di spada. Lo dice con rabbia vera, come chi parla di un buon attrezzo rovinato da degli sciocchi.",
	},
	["org.muse.w18.names.008"] = {
		"alza gli occhi verso un'insegna di clan sbiadita, dipinta sopra una vecchia porta, una testa di lupo mezza consumata, e incrocia lo sguardo dell'anziano seduto lì sotto, che si raddrizza un poco.",
		"si ferma sotto una porta dove sono dipinti, uno accanto all'altro, tre vecchi segni di clan, uno dei quali grattato via con cura, e i graffi sono più recenti della vernice.",
	},
	["org.muse.w18.names.009"] = {
		"Fra le guardie, mi ha detto un grunt, 'uno di Kul Tiras' è diventato il modo di chiamare chiunque si presenti senza invito e con troppe cose da dire. A un goblin al portale l'hanno detto una volta, e l'ha preso per un complimento.",
		"Se in questa città chiami qualcuno 'uno di Kul Tiras', dicono i veterani, intendi un ospite venuto a stare senza chiedere permesso. Adesso lo dicono sorridendo. Per il sorriso ci è voluto un po'.",
	},
	["org.muse.w18.names.010"] = {
		"I vecchi orchi dicono Capoguerra in due modi. Di Thrall, semplicemente. Di quelli venuti prima di Doomhammer, con una pausa davanti, come se la parola andasse prima pulita.",
		"Capoguerra è una parola vecchia, più vecchia di questa città e più sporca, mi ha detto un anziano. Orgrim l'ha strigliata, Thrall la porta pulita, e gli anziani ci cercano ancora le macchie.",
	},
	["org.muse.w18.names.011"] = {
		"Doomhammer, Hellscream, Durotan. In questa città ogni nome importante appartiene a qualcuno che non l'ha mai vista.",
		"La terra di Durotan, la città di Orgrim, la sala di Grom. Almeno i morti sono alloggiati bene.",
		"Tre orchi morti hanno i titoli di proprietà di questo posto. Noi altri siamo inquilini, e pure rumorosi.",
	},
	["org.muse.w18.names.012"] = {
		"Nelle taverne dell'Alleanza dicono Orgrimmar come il nome di una malattia. Standoci dentro, scopro che è soprattutto il nome di un mucchio di gente che fa compere.",
		"Dalle mie parti Orgrimmar è una parola per cui si abbassa la voce. Qui la gridano i venditori cento volte all'ora, ed è difficile continuare a temere una parola che vende rape.",
	},
	["org.muse.w18.names.013"] = {
		"Quando dico Orgrimmar lontano da qui, nessuno ci sente più dentro il nome di un Capoguerra morto. Ci sentono un portale, una banca, una sala che ascolta. Orgrim lo chiamerebbe uno scambio onesto, credo.",
		"In giro per il mondo il nome della nostra capitale ha smesso di voler dire un vecchio orco e ha cominciato a voler dire tutti noi. Non gli sarebbe dispiaciuto. Gli sarebbero dispiaciuti i discorsi.",
	},
	["org.muse.w18.names.014"] = {
		"Doomhammer è un martello e un Capoguerra morto, tutti e due insieme. Un grunt mi ha raccontato di aver giurato una volta di morire per il Doomhammer, e due persone gli hanno chiesto quale.",
		"Di' Doomhammer a Orgrimmar e potresti voler dire il vecchio Capoguerra o il martello al fianco di Thrall, e i veterani dicono che importa poco: sono ancora al lavoro tutti e due.",
	},
	["org.muse.w18.names.015"] = {
		"sente un mercante goblin storpiare il nome Grommash e tre orchi correggerlo all'istante, da tre direzioni diverse, con lo stesso identico cipiglio.",
		"osserva un goblin provare a dire Hellscream con il ringhio giusto, fallire, e farsi guidare passo passo da un grunt che sembra divertirsi parecchio.",
	},
	["org.muse.w18.names.016"] = {
		"sente una troll richiamare dalla strada un bambino col nome di Vol'jin, e vede il piccolo arrivare di corsa, come se il nome fosse un ordine.",
		"si volta a un grido di Thrall da una porta e scopre che stanno chiamando a cena un orchetto minuscolo, già imbronciato per il peso di quel nome.",
	},
	["org.muse.w18.names.017"] = {
		"Orgrimmar. Dillo come si deve: deve suonare come un portone che sbatte.",
		"Quel nome, Orgrimmar, non si può sussurrare. Ci ho provato.",
	},
	["org.muse.w18.noise.001"] = {
		"Dalla porta della banca esce un rumore di ghiaia scossa in una padella: monete versate e contate, senza sosta, a tutte le ore.",
		"Mettiti vicino alla banca e senti il denaro della città al lavoro, un tintinnio secco di monete sul legno che sale e scende ma non finisce mai.",
		"C'è un suono nella Valley of Strength che dura più di tutti gli altri: monete sul banco della banca, che tintinnano come un ruscello che scorre d'argento.",
	},
	["org.muse.w18.noise.002"] = {
		"L'asse di un carro cigola da un capo all'altro della strada, e ogni grunt a portata d'orecchio pensa in silenzio la stessa cosa violenta.",
		"Quell'asse ha bisogno di grasso, e lo sa tutta la strada. Il peone che spinge il carro è l'unico in Orgrimmar che sembra non sentirlo.",
		"Di tutto il baccano della città, l'unico che non sopporto è una ruota secca. Passa strillando, e una dozzina di facce fanno la stessa smorfia.",
	},
	["org.muse.w18.noise.003"] = {
		"sente una pattuglia prima di vederla: il tintinnio della maglia, lo scricchiolio del cuoio, il colpo sordo di un manico d'ascia contro uno spallaccio.",
		"si volta a un rumore che arriva da dietro l'angolo, maglia, cuoio e stivali pesanti al passo, un attimo prima che compaiano i grunt.",
	},
	["org.muse.w18.noise.004"] = {
		"Qualcosa di fabbricazione goblin esplode con un botto in una bottega più avanti, e nessuno si volta nemmeno. A quanto pare succede più o meno ogni ora.",
		"Un botto dall'officina di un goblin, poi un breve silenzio, poi il goblin che ride. La strada va avanti come se niente fosse, perché per lei niente è successo.",
	},
	["org.muse.w18.noise.005"] = {
		"Metà delle porte di questa città sono pelli appese a un palo, e ognuna si richiude sbattendo dietro chi passa, uno schiocco morbido che ti segue per ogni strada.",
		"Porte di cuoio dappertutto, e ognuna si chiude con un colpo dietro qualcuno. Gira la città abbastanza a lungo e lo senti come un applauso lento.",
	},
	["org.muse.w18.noise.006"] = {
		"Il sigaro di un goblin lascia tra la folla una scia che potresti seguire a occhi chiusi. So esattamente da che parte è andato, e preferirei non saperlo.",
		"Quell'odore di sigaro da quattro soldi che taglia quello dello stufato e della conceria: è passato un goblin, e da poco.",
		"I mercanti goblin si possono seguire tra la folla col solo naso: un filo di fumo di sigaro, un sentore d'olio, e in fondo, ad aspettarti, una proposta d'affari.",
	},
	["org.muse.w18.noise.007"] = {
		"Cos'è quest'odore? No. Non dirmelo. Preferisco continuare a indovinare.",
		"Qui c'è qualcosa che puzza di stivale morto. Nessun altro se n'è accorto. Questo mi preoccupa di più.",
	},
	["org.muse.w18.noise.008"] = {
		"Il raschio di una sega poco lontano dalla strada, e un odore di legno fresco che taglia il fumo. Sta venendo su la capanna di qualcuno, e i vicini si lamentano già delle martellate.",
		"In certi angoli Orgrimmar sa ancora di segatura. Pali nuovi, travi nuove, un peone che canticchia su un incastro appena fatto. La città non smette mai di aggiungere stanze.",
	},
	["org.muse.w18.noise.009"] = {
		"Sotto tutte le grida c'è un suono che non smette mai: una cote sull'acciaio, da qualche parte vicino, sempre. Questa città cura i suoi fili come altre città curano i giardini.",
		"Ascolta oltre la folla e lo trovi: lo strisciare paziente di una cote. Su ogni panca e ogni soglia di Orgrimmar c'è qualcuno che affila qualcosa.",
		"Altre città risuonano di campane o di fontane. Il suono sommesso di Orgrimmar è la cote, colpo dopo colpo, da cento porte insieme.",
	},
	["org.muse.w18.noise.010"] = {
		"Ogni suono di questa città mi fa sobbalzare: un grido, un tamburo, una porta che sbatte. Quasi sempre si scopre che è qualcuno che vende pesce.",
		"Salto a ogni voce alzata, qui. Finora ognuna era un venditore, un litigio o uno scherzo. Continuo a saltare lo stesso.",
	},
	["org.muse.w18.noise.011"] = {
		"segue un odore di pane appena sfornato per tre svolte della strada, lo perde davanti a una conceria e resta lì, {g:tradito|tradita}.",
		"coglie un profumo di qualcosa nel forno, si gira per seguirlo e va a sbattere invece contro l'odore della conceria, che vince.",
	},
	["org.muse.w18.noise.012"] = {
		"Dalla locanda arriva una canzone di cui nessuno sa tutte le parole, così la sala canticchia i buchi. Viene meglio così.",
		"Qualcuno, alla locanda, ha attaccato una canzone, e alla seconda strofa mezza sala ne sta cantando un'altra. A nessuno sembra importare.",
	},
	["org.muse.w18.noise.013"] = {
		"Dopo un po', a Orgrimmar, il naso si dimette e basta. Non sento più la conceria, il che è una grazia oppure un avvertimento.",
		"Il mio naso si è arreso a questa città. Conceria, recinti dei lupi, grasso bruciato: non segnala più niente. Non so se voglio sapere che odore ho io.",
		"A un certo punto il mio naso ha smesso di protestare contro questa città. Non so decidere se mi ci sono {g:abituato|abituata} io, o se lei mi è entrata dentro.",
	},
	["org.muse.w18.noise.014"] = {
		"Potreste abbassare tutti la voce per un momento solo? No? Allora continuate pure.",
		"Solo un po' di silenzio, non chiedo altro. ...Scherzavo. Continuate.",
	},
	["org.muse.w18.noise.015"] = {
		"A volte, in mezzo al frastuono, sento il canyon stesso: uno scricchiolio della vecchia roccia che si assesta, un filo di terriccio che scivola. La città è rumorosa, ma anche la pietra ha una voce, più vecchia e più lenta.",
		"Sotto tutto il rumore della gente, la roccia fa i suoi piccoli suoni: un ticchettio, un assestamento, un fruscio di terriccio. Parlava già molto prima che arrivassero gli orchi, e non ha smesso.",
	},
	["org.muse.w18.noise.016"] = {
		"Chi sta picchiando su quella pentola? Non è un tamburo, e chi la suona non è un tamburino.",
		"In quel baccano un ritmo c'è, nascosto da qualche parte. Prima o poi lo trovo.",
	},
	["org.muse.w18.orcs.001"] = {
		"osserva una vecchia orchessa che insegna a un bambino il nodo di una bardatura, e lo scioglie con uno strattone ogni volta che viene storto.",
		"si attarda accanto a una soglia dove un'orchessa dai capelli grigi guida due manine sullo stesso nodo di cinghia, più e più volte, senza una parola di lode finché non tiene.",
	},
	["org.muse.w18.orcs.002"] = {
		"Un orco all'abbeveratoio sta raccontando al suo lupo l'intera giornata, con frasi lunghe e pazienti. Quando un peone gli chiede la strada, risponde con una parola e un pollice.",
		"Certi orchi tengono la voce più gentile per il lupo. Quello vicino all'abbeveratoio spiega qualcosa al suo da un pezzo; a me ha concesso un grugnito.",
		"Parecchi orchi di questa città riservano le frasi lunghe ai loro lupi. Agli altri tocca la versione breve.",
	},
	["org.muse.w18.orcs.003"] = {
		"In banca un vecchio orco ha sussultato quando un impiegato ha girato la chiave in una serratura. Poi ha riso di sé, troppo forte, e ha posato le monete.",
		"Il rumore di una serratura che si chiude fa ancora voltare alcuni degli orchi più anziani. Solo per un attimo. Poi le mani trovano qualcosa da fare.",
		"Certi vecchi si voltano ancora allo scatto di una serratura. Non a lungo.",
	},
	["org.muse.w18.orcs.004"] = {
		"si ferma al suono di una piccola orchessa che prova un grido di guerra dietro una capanna; la voce le si spezza sulla nota più alta, e due grunt di passaggio le fanno un cenno serissimo.",
		"si volta a un piccolo urlo feroce da un vicolo, dove un bambino orco prova un grido di guerra contro un muro, e il muro, a quanto pare, sta perdendo.",
	},
	["org.muse.w18.orcs.005"] = {
		"I vecchi soldati della locanda vogliono tutti la stessa panca: schiena al muro, occhi sulla porta. Se la danno a turno senza essersi mai messi d'accordo.",
		"Guarda i veterani quando entrano in locanda. Ognuno cerca prima un muro a cui appoggiare la schiena, e solo dopo da bere.",
		"Nessun veterano della locanda si siede con una porta alle spalle. Nessuno.",
	},
	["org.muse.w18.orcs.006"] = {
		"nota un'orchessa che si ripassa la pittura lungo la mascella, con un pezzo di ferro lucidato per specchio e un polpastrello per pennello.",
		"sorprende un grunt a rinnovare i vecchi segni sul viso con un vasetto d'argilla, inclinando una fibbia lucente per controllare il lavoro.",
	},
	["org.muse.w18.orcs.007"] = {
		"Gli orchi danno spesso il nome di un genitore insieme al proprio, come se un nome venisse in due metà. Una volta ho dato il mio da solo e ho ricevuto uno sguardo di autentica pietà.",
		"Presentati a un vecchio orco e lui aspetta un attimo il resto: chi ti ha messo al mondo. Un nome da solo, mi ha spiegato un grunt, è come una giacca senza maniche.",
	},
	["org.muse.w18.orcs.008"] = {
		"Un orco ha appena detto che il mio lavoro non è male. Mi dicono che in città è il complimento più alto.",
		"Non male, dice. Detto da un orco, è quasi una serenata.",
		"Non male, detto da un orco. Mi serve un momento.",
	},
	["org.muse.w18.orcs.009"] = {
		"Un vecchio orco vicino al barile dell'acqua versa a terra il primo goccio di ogni tazza prima di bere. Per gli spiriti della terra, dice, che qui avevano sete da prima.",
		"Alcuni degli orchi più anziani lasciano cadere un po' d'acqua nella polvere prima di bere. Un'abitudine da sciamani dei vecchi tempi, mi ha detto uno di loro, e in Durotar costa qualcosa.",
	},
	["org.muse.w18.orcs.010"] = {
		"guarda un cuoco orco che assaggia lo stufato dalla punta di un coltello, aggrotta la fronte, aggiunge sale, riassaggia e aggrotta la fronte in un modo appena diverso.",
		"rallenta per vedere un cuoco orco che giudica una pentola dal solo odore, il naso sul vapore e gli occhi chiusi, come un fabbro che ascolta il ferro.",
	},
	["org.muse.w18.orcs.011"] = {
		"Un vecchio orco a cui le mani tremano troppo per il martello ora divide i chiodi per misura in tanti vasetti, tutto il giorno. Starsene con le mani in mano, mi ha detto, l'ha fatto abbastanza dietro gli steccati.",
		"C'è un orco troppo vecchio per la forgia che smista i chiodi del fabbro, piano, un vasetto per ogni misura. L'ozio, dice, era il lavoro dei campi, e lui non lo fa gratis.",
	},
	["org.muse.w18.orcs.012"] = {
		"Ho appena visto un orco chiedere scusa a un troll. Gli è servita una lunga rincorsa e l'ha detto quasi tutto ai propri stivali, ma valeva.",
		"Pochi spettacoli valgono un orco che chiede scusa. Questo si è schiarito la gola tre volte, ha studiato il terreno e se l'è cavata in quattro parole. Il troll le ha accettate con gran cerimonia.",
	},
	["org.muse.w18.orcs.013"] = {
		"I giovani del mio popolo chiedono agli anziani com'era il fuoco del demone nel sangue. Gli anziani cambiano discorso e parlano del prezzo del ferro, ogni volta, e credo sia la risposta giusta.",
		"I nostri giovani non hanno mai provato l'antica furia, e gli anziani intendono lasciarli così. Chiedine in locanda e c'è sempre qualcuno che ordina un altro giro.",
	},
	["org.muse.w18.orcs.014"] = {
		"Qualcuno dica a quel grunt che il suo lupo gli sta mangiando il pranzo. No, aspettate. Vediamo come finisce.",
		"Lo avvertiamo, del lupo e della salsiccia? No. Certe lezioni un orco deve impararle da solo.",
		"Che nessuno avverta il grunt del lupo. Voglio vedergli la faccia.",
	},
	["org.muse.w18.orcs.015"] = {
		"Un orco dal viso sfregiato intaglia lupetti di legno su un gradino e li vende per un rame. I bambini che non possono pagare ne ricevono uno lo stesso, con l'ordine severo di non dirlo a nessuno.",
		"Su un gradino vicino alla banca un vecchio orco malconcio intaglia lupi giocattolo per i bambini della città. Fa la faccia brusca a ogni pezzo che consegna, e nessuno ci crede.",
		"Il vecchio orco che intaglia lupetti ne regala più di quanti ne venda, e minaccia chiunque lo dica.",
	},
	["org.muse.w18.orcs.016"] = {
		"vede un'orchessa legare un panno sul viso del figlio contro la sabbia che soffia, prima di coprire il proprio.",
		"cammina dietro a un padre orco che si tira il piccolo sotto il mantello mentre la sabbia scende per la strada, e prosegue mezzo cieco senza lamentarsi.",
	},
	["org.muse.w18.orcs.017"] = {
		"Quell'orco mi ha stretto l'avambraccio così forte che credo abbiano firmato l'accordo anche le mie ossa.",
		"Bella stretta. Prima o poi il braccio lo rivorrei indietro.",
		"La prossima volta che un orco mi porge l'avambraccio, mi preparo prima.",
	},
	["org.muse.w18.orcs.018"] = {
		"Lascia, porto io. No, insisto. Sì, lo so che ai tuoi tempi portavi di peggio.",
		"Qua, dammi il sacco. Una passeggiata a mani vuote te la sei meritata.",
	},
	["org.muse.w18.patrol.001"] = {
		"Una cuoca davanti a un fuoco vicino al Drag toglie le focacce dalle pietre ogni volta che ripassa la pattuglia. Dice che i grunt tengono il tempo meglio di qualunque tamburo.",
		"C'è una cuoca che regola il pane sulla pattuglia: quando gli stivali spuntano dall'angolo, le pagnotte escono dal fuoco. Giura di non averne mai bruciata una.",
		"La donna del pane vicino al Drag non ha bisogno di clessidre. Passa la pattuglia, lei gira le pagnotte; ripassa, e le toglie dal fuoco.",
	},
	["org.muse.w18.patrol.002"] = {
		"s'infila dietro a una pattuglia che passa e ne sfrutta la scia attraverso il punto più fitto della folla, poi si sfila prima che a qualcuno venga in mente di protestare.",
		"si accoda a due grunt di ronda, lasciando che la folla si apra per loro e si richiuda solo dopo il suo passaggio.",
		"si mette un passo dietro a una pattuglia, prende in prestito il varco che la folla le apre, e scivola via per una traversa con l'aria più innocente del mondo.",
	},
	["org.muse.w18.patrol.003"] = {
		"s'imbatte in una pattuglia china su un orco che russa lungo disteso su dei gradini; un grunt lo gira su un fianco con lo stivale, l'altro gli infila la borsa dentro la camicia, e ripartono.",
		"vede due grunt di ronda trovare uno che dorme accasciato su una soglia, spostarlo con garbo fuori dal passaggio e lasciarlo con la testa sul suo stesso zaino.",
		"nota due grunt di pattuglia sollevare un ubriaco dal mezzo della strada e appoggiarlo a un muro, che lui ringrazia calorosamente prima di riaddormentarsi.",
	},
	["org.muse.w18.patrol.004"] = {
		"indugia vicino a un barile d'acqua mentre una pattuglia si ferma a prendere un mestolo a testa in un ordine preciso, dal più anziano in giù; il più giovane beve per ultimo ed è lui a rimettere il coperchio.",
		"vede due grunt di ronda dividersi un mestolo a un barile, prima l'anziano senza una parola, poi il giovane, e infine il coperchio rimesso esattamente com'era.",
	},
	["org.muse.w18.patrol.005"] = {
		"rallenta mentre un grunt di ronda rimette a posto col palmo una pietra smossa nel muro, e riparte come se riparare facesse parte della guardia.",
		"sorprende un grunt di passaggio a raddrizzare con un calcio un palo caduto e a pestare la terra intorno, senza mai interrompere il giro.",
	},
	["org.muse.w18.patrol.006"] = {
		"Una pattuglia la senti prima di vederla: due paia di stivali senza fretta e una piccola pozza di silenzio che si muove con loro, dove i pettegolezzi si fermano e ripartono alle spalle.",
		"Le pattuglie si portano dietro il loro silenzio. Le chiacchiere muoiono qualche passo davanti ai grunt e rinascono qualche passo dopo, come l'erba che si rialza dietro un carro.",
		"Passa la pattuglia e la strada abbassa la voce per sei passi esatti. Li ho contati.",
	},
	["org.muse.w18.patrol.007"] = {
		"Le pattuglie notturne portano torce su e giù per le rampe, e da sotto sembrano poche scintille lente che salgono nel buio, si fermano, tornano indietro.",
		"Col buio la ronda si segue dalle torce: una fiamma sulla rampa alta, due vicino alla banca, una che scende verso il Cleft of Shadow, nessuna che abbia fretta.",
	},
	["org.muse.w18.patrol.008"] = {
		"strizza gli occhi nella sabbia che soffia verso una pattuglia che passa in fila indiana, ogni grunt con una mano sulla spalla di quello davanti, saldi come una fila di kodo carichi.",
		"guarda due grunt fare il loro giro nella sabbia senza curarsene, a testa bassa, il pugno del secondo agganciato alla cintura del primo.",
	},
	["org.muse.w18.patrol.009"] = {
		"Novità, grunt? ...Niente. La risposta migliore della settimana.",
		"Ho chiesto a una pattuglia cosa succede. 'Niente.' La notizia più bella che ci sia.",
		"Niente da segnalare, dice. Detto da un grunt, è quasi una canzone.",
	},
	["org.muse.w18.patrol.010"] = {
		"tiene d'occhio un grunt di pattuglia che saggia col palmo le imposte di una bottega chiusa, una dopo l'altra lungo la fila, come un capraio che conta le capre al tatto.",
		"segue con gli occhi una pattuglia lungo una fila di bancarelle chiuse, dove un grunt dà una bella spinta a ogni porta e l'altro aspetta il colpo sordo della sbarra che tiene.",
		"accompagna con lo sguardo una pattuglia lungo una fila di botteghe chiuse, dove un grunt scuote un chiavistello dopo l'altro e si ferma, la testa inclinata, davanti a quello che balla troppo.",
	},
	["org.muse.w18.patrol.011"] = {
		"Un lupo era scappato dal recinto e si stava facendo il giro delle bancarelle. La pattuglia l'ha preso per la collottola, l'ha sgridato come un nipote, e l'ha riaccompagnato senza perdere il passo.",
		"I grunt di ronda acchiappano più lupi scappati che ladri. Ne ho visto uno riportato al recinto per la collottola, imbronciato, mentre chi l'aveva preso gli diceva esattamente cosa pensava di lui.",
		"Metà di quel che una pattuglia insegue, mi ha detto un grunt lamentandosi, ha quattro zampe e una faccia colpevole. L'altra metà ne ha due, e la stessa faccia.",
	},
	["org.muse.w18.patrol.012"] = {
		"Stesso angolo, stessi grunt, stesso cipiglio. Ci si potrebbe regolare l'orologio, se qualcuno qui ne avesse uno.",
		"Ecco la pattuglia. Puntuale, ovunque si tenga il tempo in questa città.",
		"Eccoli che ripassano, regolari come l'affitto. Giurerei che scavano un solco nella strada.",
	},
	["org.muse.w18.patrol.013"] = {
		"Su nelle valli i grunt fanno la ronda in coppia. Qui nel Cleft of Shadow arrivano in tre, e il terzo cammina all'indietro per buona parte del tragitto.",
		"Le pattuglie del Cleft of Shadow hanno un grunt in più che altrove, e non chiacchierano. Uno di loro guarda sempre la strada appena fatta.",
		"Nel Cleft of Shadow le pattuglie camminano più piano e più vicine, e quaggiù nessuno se ne offende.",
	},
	["org.muse.w18.patrol.014"] = {
		"guarda un grunt finire il suo giro con un piccolo troll smarrito a cavalcioni sulle spalle, chiamando i genitori con una voce che svuota mezza strada.",
		"nota una pattuglia che passa con un passeggero inatteso: un piccolo tauren in lacrime appollaiato sulle spalle di un grunt, che scruta la folla in cerca della madre.",
		"sorride a un grunt che si porta dietro per tutto il giro un bambino smarrito, tenuto in alto come una lanterna, perché chi l'ha perso lo trovi alzando gli occhi.",
	},
	["org.muse.w18.patrol.015"] = {
		"I grunt di pattuglia sanno tutto quello che sa la strada: quale birraio annacqua la birra, quale goblin tiene due serie di pesi. Non dicono niente finché parlare non vale la fatica.",
		"Un grunt di ronda conosce questa città meglio dei suoi mercanti. Conosce la bilancia truccata e la botte annacquata, e lascia correre, fino al giorno in cui smette.",
		"Chi vende scarso e chi vende acido, le pattuglie lo sanno. Sapere e dire sono due mestieri diversi, e i grunt quasi sempre praticano solo il primo.",
	},
	["org.muse.w18.patrol.016"] = {
		"Niente sul vostro tratto, grunt? Allora la paga ve la siete guadagnata.",
		"Quanti giri sono? Non dirmelo. Lo sanno già i tuoi piedi.",
		"Giro tranquillo, grunt? Bene. Che possa annoiarti a lungo.",
	},
	["org.muse.w18.pool.001"] = {
		"Guarda giù nella pozza dei troll e le pareti del canyon continuano sotto quanto salgono sopra. Una seconda Orgrimmar, capovolta, e l'unica silenziosa.",
		"La pozza della Valley of Spirits contiene un intero canyon rosso, appeso al contrario. Lì dentro nessuno urla.",
		"Nell'acqua ferma della valle dei troll l'intero canyon pende a testa in giù, punte comprese, e nemmeno un martello ci arriva.",
	},
	["org.muse.w18.pool.002"] = {
		"immerge due dita nella pozza e le ritira fresche, la cosa più fresca che si possa trovare in tutta Orgrimmar.",
		"lascia scorrere una mano sul bordo della pozza dei troll e ce la tiene un momento più del dovuto.",
	},
	["org.muse.w18.pool.003"] = {
		"Da dove venga l'acqua della pozza dei troll dipende da chi lo chiedi. Una sorgente sotto la roccia, dice uno sciamano. Un debito che qualche loa sta ancora pagando, dice uno stregone vudù. Secchi, dice un peon con le spalle molto stanche.",
		"Una sorgente, dicono gli sciamani. Un dono, dicono gli stregoni vudù. Il peon che giurava fossero secchi non ha voluto dire di chi, e se n'è andato zoppicando.",
	},
	["org.muse.w18.pool.004"] = {
		"Quella pozza implora un paio di piedi stanchi. I miei, possibilmente. I troll non sono d'accordo.",
		"Un dito del piede in quell'acqua. Uno solo. No? Lo sguardo di quel troll dice di no.",
		"Piedi doloranti, acqua fresca, e un troll che la sorveglia con un'occhiata. La vita è crudele.",
	},
	["org.muse.w18.pool.005"] = {
		"Nessuno beve dalla pozza dei troll, nessuno ci si lava, nessuno ci pesca. A Durotar l'acqua che nessuno usa è la cosa più preziosa che ci sia.",
		"In una terra che conta ogni secchio, i Darkspear tengono un'intera pozza d'acqua che nessuno tocca. Non è uno spreco. È rispetto, pagato nella moneta più dura che hanno.",
		"Una pozza da cui nessuno beve, in un paese dove ci si azzuffa per un pozzo. I troll non lo spiegano mai, e si spiega da sé.",
	},
	["org.muse.w18.pool.006"] = {
		"osserva un piccolo troll che mette a galla una foglia sulla pozza, e un anziano che la ripesca con un bastoncino prima che arrivi in mezzo.",
		"segue con gli occhi una barchetta di foglia sulla pozza dei troll, finché un vecchio la ripesca, con delicatezza, e la restituisce al suo capitano imbronciato.",
	},
	["org.muse.w18.pool.007"] = {
		"Sopra la pozza dei troll il suono fa scherzi: un mormorio dalla riva opposta arriva limpido come una campana, e tutto il frastuono del Drag non arriva affatto.",
		"L'acqua porta un sussurro e annega un grido. Attraverso la pozza della Valley of Spirits, due troll che parlano piano sembrano più vicini delle martellate a una strada di distanza.",
	},
	["org.muse.w18.pool.008"] = {
		"Nella pozza dei troll vive una rana. Come sia arrivata in mezzo a Durotar nessuno sa dirlo, e i troll la trattano come un ospite di riguardo.",
		"Una rana, grassa e imperturbabile, è la padrona della pozza dei troll. I Darkspear le girano intorno. Ho il sospetto che qualcuno le abbia detto che è importante.",
		"Nella pozza dei troll abita una rana, una sola, l'unica di Orgrimmar, e gracida ai tamburi come se volesse correggerli.",
	},
	["org.muse.w18.pool.009"] = {
		"Una Darkspear mi ha detto che la pozza è il mare, fatto abbastanza piccolo da portarselo nell'entroterra. Ho riso. Lei no.",
		"Il mare, ripiegato in piccolo e portato nel deserto: ecco cos'è la pozza dei troll, secondo una vecchia pescatrice della valle. L'ha detto senza sorridere.",
	},
	["org.muse.w18.pool.010"] = {
		"si accovaccia accanto alla pozza dei troll per guardare piccoli insetti pattinare sulla superficie, lasciando cerchi che si chiudono appena aperti.",
		"si attarda sulla riva, seguendo un insetto che pattina da una sponda all'altra come un ago che cuce.",
	},
	["org.muse.w18.pool.011"] = {
		"La sabbia si è posata sulla pozza dei troll come una pelle chiara, e una vecchia troll la toglie con un panno, piano, come si pulisce il viso a un bambino.",
		"La sabbia che soffia spegne la pozza fino al colore del canyon. Due troll sono già sul bordo con un setaccio, e la tolgono una manciata dopo l'altra.",
	},
	["org.muse.w18.pool.012"] = {
		"Di notte la pozza dei troll tiene ogni torcia della valle due volte, e la seconda fila arde senza fumo.",
		"Col buio, ogni torcia della Valley of Spirits ha un gemello nella pozza. I gemelli tremano meno, e nessuno deve mai accudirli.",
	},
	["org.muse.w18.pool.013"] = {
		"Sul fondo della pozza dei troll ci sono una perlina, un dente, qualche moneta di rame. Nessuno li ripesca. Proprio in questa città, già questo è un piccolo prodigio.",
		"Sul fondo della pozza della Valley of Spirits luccica del rame, e a Orgrimmar, dove una moneta caduta di rado tocca terra, nessuno allunga la mano.",
	},
	["org.muse.w18.pool.014"] = {
		"Rame nella pozza e nemmeno un goblin che ci entri a prenderlo. Qualcuno controlli che i goblin stiano bene.",
		"C'è del rame in quell'acqua e nessuno lo pesca. In questa valle state tutti bene?",
	},
	["org.muse.w18.pool.015"] = {
		"Qui accanto alla pozza l'aria è un filo più fresca, e la pietra sotto la mano, per una volta, non scotta. Potrei restare finché qualcuno non mi chiede di spostarmi. Nessuno lo fa.",
		"Vicino all'acqua l'aria è di qualche passo più gentile che nel resto di Orgrimmar. Ho trovato un sasso sul bordo e ho intenzione di tenermelo.",
	},
	["org.muse.w18.pool.016"] = {
		"osserva un vecchio troll calare una zucca nella pozza della Valley of Spirits, sollevarla piena e riversarla, lentamente, per tre volte, prima di andarsene con la zucca vuota.",
		"vede un anziano Darkspear riempire una zucca alla pozza dei troll e rovesciarla nell'acqua in un filo sottile e lucente, poi allontanarsi a mani vuote, a quanto pare soddisfatto.",
	},
	["org.muse.w18.pot.001"] = {
		"Il cinghiale di Durotar è tutto nervi e rancore. I cuochi di qui lo stufano finché non si arrende, e poi ancora un po', per dispetto.",
		"Un cuoco mi ha spiegato che col cinghiale delle colline il segreto è la pazienza: ha combattuto per tutta la vita, e combatterà anche in pentola, per un po'.",
	},
	["org.muse.w18.pot.002"] = {
		"guarda una cuoca assaggiare dal mestolo, aggrottare la fronte, buttare un pizzico di qualcosa di rosso, assaggiare di nuovo e fare un solo cenno a nessuno in particolare.",
		"si ferma accanto a un calderone mentre chi lo cura soffia su una cucchiaiata, assaggia, fa una smorfia, aggiunge sale dal palmo a coppa e riassaggia, con l'aria finalmente contenta.",
	},
	["org.muse.w18.pot.003"] = {
		"Il pesce sale dalla costa in ceste bagnate appese a pertiche, già in lite col caldo. Quando arriva ai banchi va mangiato subito, e lo fa sapere a tutti.",
		"Il pesce venduto a Orgrimmar ha fatto una lunga strada dal mare. I pescivendoli gridano il doppio di chiunque altro, e hanno le loro ragioni.",
	},
	["org.muse.w18.pot.004"] = {
		"abbassa la testa mentre un pescatore si fa strada nella folla con una lunga canna in spalla, l'amo che dondola all'altezza delle orecchie senza prendere nessuno, chissà come.",
		"segue con lo sguardo un pescatore che fa passare per la via affollata una canna lunga quanto il balzo di un lupo, la lenza che penzola, e tutta la folla che si piega attorno come erba.",
	},
	["org.muse.w18.pot.005"] = {
		"Qualcosa sta bruciando. In questa città, il che restringe il campo a tutto.",
		"Odore di cena bruciata. O di capanna. Qui è difficile dirlo.",
	},
	["org.muse.w18.pot.006"] = {
		"Prima che faccia giorno i cuochi stanno già sventrando il pesce alla luce delle lanterne, e i lupi della strada si sono radunati in un educato semicerchio, in attesa delle teste.",
		"I fuochi delle cucine si svegliano prima di qualsiasi altra cosa in città: l'acqua portata su, il pesce aperto nella penombra, e nessuno dice una parola che non riguardi il sale.",
	},
	["org.muse.w18.pot.007"] = {
		"Sotto un tetto l'odore del calderone si posa in ogni angolo, nelle travi e nel mio mantello, dove aspetterà di farmi venire fame in qualche posto lontano da qui.",
		"Al chiuso l'odore dello stufato è così denso che ci si potrebbe appoggiare. Me lo porterò fuori sui vestiti, e qualche sconosciuto per strada si volterà ad annusare.",
	},
	["org.muse.w18.pot.008"] = {
		"Un pizzico di pepe goblin costa più dello stufato in cui finisce. I cuochi lo comprano lo stesso. Senza, mi ha detto uno di loro, lo stufato è solo acqua calda con delle ambizioni.",
		"La venditrice di spezie è una goblin, ovviamente, e pesa il pepe su bilance grandi come una moneta. I cuochi la pagano come fosse polvere d'oro, e brontolano come fosse ghiaia.",
	},
	["org.muse.w18.pot.009"] = {
		"sosta accanto a un cuoco che pulisce il pesce con tre colpi rapidi ciascuno, lanciando gli scarti a un lupo in attesa senza mai abbassare gli occhi.",
		"indugia a guardare una pescivendola che apre e pulisce un'intera cesta nel tempo che ci vuole a contrattare un pesce solo, mentre il lupo ai suoi piedi acchiappa al volo ogni scarto.",
	},
	["org.muse.w18.pot.010"] = {
		"Chiedi una ricetta a una cuoca di qui e ti dirà tutto, con gentilezza e con calma, tranne l'unica parte che conta.",
		"A Orgrimmar le ricette non si scrivono. Passano da un cuoco all'altro a bassa voce, e in qualche modo il pezzo migliore manca sempre dalla versione che tocca agli estranei.",
	},
	["org.muse.w18.pot.011"] = {
		"Chi ha insegnato a cucinare a quel troll? Voglio stringergli la mano, e poi mangiargli la cena.",
		"Quella roba sul braciere, ne prendo due. Non dirmi cos'era.",
	},
	["org.muse.w18.pot.012"] = {
		"Nei campi il cibo arrivava in una sola ciotola grigia, uguale ogni giorno. Ora il mio popolo cucina a voce alta: troppo pepe, troppo grasso, ogni pentola discussa. E tutto nostro.",
		"Gli anziani dicono che la brodaglia dei campi non sapeva di niente, ed era quella la cosa peggiore. Forse è per questo che ogni cuoco orco della città sala come il mare.",
	},
	["org.muse.w18.pot.013"] = {
		"I pescatori sono la gente più silenziosa di Orgrimmar. Una vita passata a non spaventare i pesci li ha resi incapaci di spaventare chiunque.",
		"In questa città rumorosa un pescatore lo riconosci subito: è l'unico che aspetta qualcosa senza battere il piede.",
		"I pescatori che risalgono dalla costa si portano dietro una calma che la città non riesce a scrollargli di dosso, almeno fino alla prima contrattazione.",
	},
	["org.muse.w18.pot.014"] = {
		"L'istruttrice di cucina fa mangiare agli apprendisti i loro stessi fallimenti. Tutti, fino all'ultima cucchiaiata. È una scuola rapida.",
		"C'è una cuoca che insegna con una sola regola: quello che bruci, lo mangi. I suoi allievi imparano presto, e qualcuno ha la faccia un po' grigia.",
	},
	["org.muse.w18.pot.015"] = {
		"compra a un braciere uno spiedino di qualcosa di abbrustolito, lo morde, mastica con aria pensosa e torna a prenderne un altro prima di aver finito il primo.",
		"accetta un assaggio di stufato dal mestolo di un cuoco, si scotta la lingua, annuisce con gli occhi lucidi e paga una ciotola.",
	},
	["org.muse.w18.pot.016"] = {
		"Imparerei a cucinare, se questa città smettesse mai di cucinare per me.",
		"Perché imparare a cucinare? Orgrimmar ha una pentola a ogni angolo e qualcuno felice di mescolarla.",
		"Ogni angolo di questa città ha la sua pentola. Ho smesso di portarmi dietro da mangiare.",
	},
	["org.muse.w18.quarrel.001"] = {
		"Due goblin si stavano saltando alla gola per un contratto, finché un grunt ha ordinato loro di leggerglielo ad alta voce, tutto quanto. Se n'era già andato prima della seconda pagina. Stanno ancora leggendo.",
		"Un grunt ha risolto una lite fra goblin ordinando a entrambi di leggere il contratto a voce alta, piano, dall'inizio. Se n'è andato alla prima clausola. Sospetto che fosse quella, la sentenza.",
	},
	["org.muse.w18.quarrel.002"] = {
		"sente una lite urlata fra due mercanti spegnersi di colpo quando una pattuglia sbuca dall'angolo; tutti e due sfoderano lo stesso largo sorriso e ammirano la merce dell'altro finché i grunt non sono passati.",
		"vede due facchini che litigano accorgersi dei grunt nello stesso istante e passare, a metà spintone, a una calorosa pacca sulla schiena.",
		"coglie il momento esatto in cui una scazzottata che sta per nascere diventa una chiacchierata amichevole, cioè il momento in cui un grunt si volta a guardare.",
	},
	["org.muse.w18.quarrel.003"] = {
		"Due orchi si contendevano un cucciolo di lupo, e il grunt che hanno chiamato l'ha posato a terra fra loro ed è indietreggiato. Il cucciolo è passato dritto davanti a entrambi ed è andato al banco del macellaio. Il caso è ancora aperto.",
		"La proprietà di un cucciolo randagio è stata decisa lasciando scegliere il cucciolo, idea di un grunt. Non ha scelto nessuno dei due ed è andato a dormire sul suo stivale. Lui pare aver accettato il verdetto.",
		"Un cucciolo randagio, due orchi che lo reclamano, e un grunt che lascia decidere al cucciolo. Ha deciso per il macellaio.",
	},
	["org.muse.w18.quarrel.004"] = {
		"Certe liti in questa città sono più vecchie delle sue mura. Due orchi canuti che si guardano in cagnesco da una parte all'altra della strada per qualcosa successo nei campi: chi parlò, chi no. Nessun grunt ha una sentenza per quello.",
		"Ho visto due vecchi orchi incrociarsi senza una parola, rigidi come pali. Un rancore dei campi d'internamento, ha borbottato qualcuno. La pace del Capoguerra tiene ferme le loro mani. Più in là non arriva.",
	},
	["org.muse.w18.quarrel.005"] = {
		"Andate a finirla fuori dal portale, voi due. I grunt hanno già abbastanza da fare.",
		"Sistematela a parole, o sistematela coi grunt. So io quale conviene.",
		"Urlate più piano, tutti e due. C'è una pattuglia due bancarelle più in là.",
	},
	["org.muse.w18.quarrel.006"] = {
		"Qui nel Drag due bottegai hanno risolto una lite per una spanna di facciata alla maniera degli orchi: braccio di ferro su un barile, con un grunt che teneva i gomiti in squadra. Chi ha perso ha spostato la tettoia senza una parola.",
		"Come si decide, nel Drag, a chi tocca la spanna in più di bancarella? Sopra un barile, polso contro polso, con un grunt a fare da arbitro. Chi ha perso ha spostato i pali e ha offerto da bere al vincitore.",
	},
	["org.muse.w18.quarrel.007"] = {
		"guarda un grunt ascoltare per un lungo momento due vicini che litigano, poi incrociare le braccia e aspettare in silenzio finché loro, impacciati, non se la sono sbrigata da soli.",
		"assiste a un grunt che si rifiuta di dare ragione a uno dei due vicini in lite; si pianta fra loro e resta lì, finché trovano un accordo solo per levarselo di torno.",
	},
	["org.muse.w18.quarrel.008"] = {
		"Un troll e un tauren litigavano senza una lingua in comune, così un goblin si è offerto di tradurre, a un rame la frase. Alla fine erano furiosi tutti e due col goblin, e la lite era dimenticata.",
		"Niente chiude una lite fra due popoli più in fretta di un interprete goblin. Fa pagare entrambe le parti un tanto a insulto, e presto si ritrovano alleate contro di lui.",
		"Un goblin che faceva da interprete fra un troll e un tauren ha peggiorato la loro lite apposta, un rame a insulto, finché entrambi non gli si sono rivoltati contro. Pace, in un certo senso, a un prezzo onesto.",
	},
	["org.muse.w18.quarrel.009"] = {
		"Due orchi dalle zanne bianche discutono su quale dei loro clan tenne la linea in una battaglia combattuta prima che nascesse il grunt che li ascolta. Lui non ha idea di chi abbia ragione, e la saggezza di ammetterlo.",
		"Una lite su una guerra più vecchia della città: il clan di chi cedette, quello di chi resse. Il giovane grunt mandato a calmarli si appoggia al muro e ascolta, come uno studente all'ultimo banco.",
	},
	["org.muse.w18.quarrel.010"] = {
		"Due mercanti erano a metà di una lite come si deve quando è venuta giù la pioggia, e sono finiti sotto la stessa tettoia, spalla a spalla, troppo sbalorditi dal tempo per ricordarsi cosa si stessero urlando.",
		"La pioggia a Orgrimmar ferma tutto, perfino una faida. I due bancarellai che un attimo fa si saltavano alla gola adesso dividono una tettoia e guardano il cielo a bocca aperta.",
	},
	["org.muse.w18.quarrel.011"] = {
		"All'asta c'è una lite senza parole: due offerenti che rilanciano di un rame per volta, ognuno fingendo di non sapere chi sia l'altro. I grunt questa non la possono sistemare. L'impiegato sorride e basta.",
		"La lite più silenziosa di Orgrimmar si combatte all'asta: un rame, poi un altro, fra due persone che non si incontreranno mai. Nessun grunt ha mai dovuto separarle.",
		"Una gara di rilanci all'asta è l'unica faida della città combattuta solo a colpi di rame e di silenzio.",
	},
	["org.muse.w18.quarrel.012"] = {
		"Non mi schiero. Faccio un passo indietro.",
		"Nessuno me l'ha chiesto, ma avete torto tutti e due. Buona giornata.",
		"Non guardate me. Non ho visto niente, e me ne sto andando.",
	},
	["org.muse.w18.quarrel.013"] = {
		"Qui nella Valley of Spirits un'anziana Darkspear ascolta le liti seduta, e fa sedere anche le due parti. È difficile urlare dalla polvere, mi ha detto. Ha ragione; ci ho provato.",
		"Le liti dei troll, in questa valle, si ascoltano per terra. La vecchia che le risolve non dà retta a nessuno che stia in piedi, ed è notevole quanto si rimpicciolisca una rabbia a quell'altezza.",
	},
	["org.muse.w18.quarrel.014"] = {
		"Un'ora fa quei due erano naso contro naso. Adesso si portano un tronco in due, ancora a beccarsi, e nessuno ha mollato la sua estremità. Qui nessuno chiede scusa; qualcuno ha bisogno di una mano.",
		"Due che prima litigavano adesso portano insieme una trave, scambiandosi insulti, senza mai perdere il passo. Orgrimmar non fa scuse. Fa la prossima cosa pesante.",
		"Poco fa erano pronti a fare a botte. Adesso uno regge la scala all'altro e gli critica dove mette i piedi. In queste strade, vale come fare pace.",
	},
	["org.muse.w18.quarrel.015"] = {
		"aggira una coppia di orchi che chiude una lite come qui evidentemente si usa: un lungo sguardo, una spinta a testa, e poi tutti e due si voltano soddisfatti, come se la faccenda fosse firmata e sigillata.",
		"guarda due orchi chiudere un disaccordo in tre mosse: uno sguardo, una spinta ciascuno e un cenno del capo. Qualunque fosse la questione, è chiaramente archiviata.",
	},
	["org.muse.w18.quarrel.016"] = {
		"A pochi passi due orchi si urlano addosso. Mi allontano prima che arrivino i grunt: quando arrivano guardano tutti quelli intorno, e la mia è la faccia su cui si fermerebbero.",
		"Scoppia una lite vicino a me e sparisco prima della prima spinta. Qualunque grunt mandato a risolverla comincerebbe da me.",
	},
	["org.muse.w18.shaman.001"] = {
		"Una sciamana si accovaccia in mezzo alla strada e posa il palmo sulla pietra, come chi ascolta qualcuno parlare attraverso un pavimento. Qualunque cosa le dica, annuisce, si alza e se ne va.",
		"Ho visto uno sciamano inginocchiarsi e premere una mano a terra fra due bancarelle, la testa inclinata, il tempo di sentire una risposta breve. Poi è ripartito, soddisfatto.",
	},
	["org.muse.w18.shaman.002"] = {
		"si fa da parte per una sciamana che porta quattro totem intagliati appesi a una sola cinghia, che sbattono fra loro a ogni passo come le pentole di un venditore ambulante.",
		"fa spazio a uno sciamano i cui totem gli sbatacchiano sulla schiena, tanto che lo si sente arrivare dal fondo della strada.",
	},
	["org.muse.w18.shaman.003"] = {
		"Gli sciamani ringraziano l'acqua prima di berla. I peon non ringraziano nessuno e bevono più in fretta. Sopravvivono gli uni e gli altri.",
		"Prima di ogni sorso, una sciamana mormora una parola sull'otre. Il grunt accanto a lei il suo lo vuota e basta. L'acqua, per quanto posso vedere, non fa preferenze.",
		"Gli sciamani accolgono la loro acqua come un ospite sulla porta. I grunt la trattano come una razione. Gli otri tornano vuoti lo stesso.",
	},
	["org.muse.w18.shaman.004"] = {
		"I vecchi orchi raccontano che gli spiriti smisero di rispondere quando sorsero gli stregoni, e tacquero per una generazione. Ogni sciamano che cammina per queste strade fa parte della risposta, arrivata tardi e a caro prezzo.",
		"Un tempo gli elementi voltarono le spalle agli orchi, raccontano gli anziani, e agli sciamani non restò più niente da ascoltare. A vederli adesso a ogni angolo, è facile dimenticare quanto sia durato quel silenzio.",
	},
	["org.muse.w18.shaman.005"] = {
		"Una sciamana mi ha detto che tiene un sassolino di ogni posto in cui ha camminato, così la pietra di Orgrimmar non si sente sola fra estranei. Il suo sacchetto pesa più o meno quanto una piccola incudine.",
		"Sassolini da ogni strada percorsa, uno per strada: ecco cosa riempie il sacchetto di una certa sciamana, per fare compagnia alla terra. Mi ha chiesto se ne avevo uno da darle. Le ho dato un pezzetto di Durotar dallo stivale.",
	},
	["org.muse.w18.shaman.006"] = {
		"Gli sciamani dicono che la roccia di questo canyon è ancora inquieta, che si sta ancora assestando dopo quello che l'ha spaccata. Io sotto i piedi non sento niente. Quando lo dico mi guardano con gentilezza, come si guarda uno un po' duro d'orecchi.",
		"Chiedi a una sciamana del canyon e ti dirà che la pietra non ha finito di muoversi. Lentamente, dice, più lentamente di quanto viva chiunque. Io, passando, controllo comunque le pareti.",
	},
	["org.muse.w18.shaman.007"] = {
		"Se gli spiriti accettano richieste: un po' d'ombra, grazie. No? Valeva la pena chiedere.",
		"Spiriti dell'aria, se mi sentite: un filo di brezza. Qualsiasi cosa. Non sono {g:schizzinoso|schizzinosa}.",
		"Terra, fuoco, acqua, aria. Qualcuno di voi mi vende qualcosa di fresco da bere?",
	},
	["org.muse.w18.shaman.008"] = {
		"Gli spiriti un tempo ci voltarono la faccia, e ce lo meritavamo. Adesso a un angolo della nostra città c'è una sciamana che parla piano alla terra, come a una vecchia amica che ha deciso di perdonare.",
		"Nel vecchio mondo, per la nostra follia, avevamo perso l'ascolto degli spiriti. Sentendo uno sciamano mormorare alle pietre di Orgrimmar penso: sono tornati. Non erano tenuti a farlo.",
	},
	["org.muse.w18.shaman.009"] = {
		"nota una sciamana che si ferma di colpo in mezzo alla strada, gira la testa verso l'aria vuota sopra i tetti e aspetta, poi riparte come se qualcuno l'avesse chiamata per nome e solo lei l'avesse sentito.",
		"vede una sciamana di passaggio fermarsi, la testa piegata verso il nulla, e fare un cenno a nessuno prima di tornare alle sue faccende.",
	},
	["org.muse.w18.shaman.010"] = {
		"Uno sciamano orco, uno tauren e uno troll dividono una panca e discutono su quale elemento sia il più testardo. Ognuno nomina quello con cui lavora, e ognuno sembra andarne fiero.",
		"Tre sciamani di tre popoli su una sola panca, a discutere di quale elemento sia il più difficile da trattare. Il fuoco, dice uno. La terra, dice l'altro. Il troll indica un otre d'acqua e ride.",
	},
	["org.muse.w18.shaman.011"] = {
		"Gli spiriti dell'acqua di Durotar, mi ha spiegato una sciamana, sono pochi e permalosi, come tutto ciò che deve vivere qui. Lei ci parla con grande cortesia, e non chiede mai due volte.",
		"In una terra così secca, dicono gli sciamani, gli spiriti dell'acqua sono rari e si offendono facilmente. Si sente da come si rivolgono a loro: con la voce che si userebbe con una zia ricca e suscettibile.",
	},
	["org.muse.w18.shaman.012"] = {
		"Di chi è quel totem? Mi fissa da un pezzo.",
		"Qualcuno ha lasciato un totem contro questo muro, e giurerei che la faccia intagliata si è mossa.",
		"La faccia intagliata di quel totem non ha battuto ciglio una volta. Comincio a prenderla sul personale.",
	},
	["org.muse.w18.shaman.013"] = {
		"Un fiume non lo si adora, mi ha corretto uno degli sciamani. Si impara dove straripa, lo si ringrazia quando ti sfama, e non ci si costruisce mai troppo vicino.",
		"L'adorazione, ha detto uno sciamano, è per le cose che non rispondono. Gli elementi rispondono, a volte male. Li tratti come tratteresti un vicino potente e lunatico.",
	},
	["org.muse.w18.shaman.014"] = {
		"osserva uno sciamano che calma un lupo spaventato in mezzo alla folla, un palmo sul collo e una sola parola bassa, finché l'animale non sta tranquillo come un cane accanto al focolare.",
		"vede un lupo scartare per un rumore e una sciamana di passaggio posargli una mano addosso senza fermarsi; la bestia si calma subito, come se le avessero ricordato qualcosa.",
	},
	["org.muse.w18.shaman.015"] = {
		"Uno sciamano, in mezzo alla folla, scivola nella forma di un lupo pallido e spettrale e se ne va di buon passo verso la porta. Nessuno, per strada, gira nemmeno la testa.",
		"Qualcuno si è appena trasformato in un lupo spirito accanto alla banca e se n'è andato trotterellando, e la fila ha semplicemente chiuso il buco. Orgrimmar ha già visto tutto due volte.",
		"Un attimo prima una sciamana, quello dopo un lupo grigio fatto di bruma, sparito fra due carretti. Il goblin con cui contrattava finisce di dire il prezzo all'aria.",
	},
	["org.muse.w18.shaman.016"] = {
		"aggira una sciamana seduta a gambe incrociate in mezzo a una strada affollata, a occhi chiusi, mentre la folla le si apre intorno senza una sola lamentela.",
		"passa accanto a una sciamana seduta nel pieno del traffico, gli occhi chiusi e le mani aperte sulle ginocchia, l'unico punto fermo in una strada piena di gomiti.",
	},
	["org.muse.w18.shaman.017"] = {
		"Fai una domanda veloce a uno sciamano e avrai una risposta dalla terra. Prima o poi.",
		"Una domanda semplice, ho detto. Lo sciamano è andato a consultare un sasso. Aspetto.",
	},
	["org.muse.w18.skies.001"] = {
		"Piove, e in un attimo ogni pentola, secchio ed elmo rovesciato della città è fuori in strada. A Durotar nessuno lascia scappare nella polvere un regalo del genere.",
		"Cadono le prime gocce e i peoni arrivano di corsa con ogni recipiente che hanno. Quando smette, metà dei barili della città sono pieni e per gli altri si litiga.",
		"Piove, e Orgrimmar ha messo fuori ogni recipiente che possiede, come tante ciotole da mendicante. Nemmeno una goccia caduta in una pentola andrà sprecata.",
	},
	["org.muse.w18.skies.002"] = {
		"Quando piove, qui, ogni lupo della città sa di lupo bagnato. È il profumo più forte di tutto Kalimdor.",
		"Due gocce di pioggia e tutta la città sa di lupo bagnato. I lupi sembrano offesi quanto me.",
		"I lupi si scrollano per strada uno dopo l'altro, e chiunque sia a tiro si prende la pioggia una seconda volta.",
	},
	["org.muse.w18.skies.003"] = {
		"guarda un peone spingere su con un palo una tenda di pelle insaccata per far colare la pioggia, e inzuppare il grunt che sta proprio lì accanto.",
		"nota un tendone gonfio d'acqua piovana, un palo che lo colpisce da sotto, e un grunt dall'altra parte che si prende tutto senza dire una parola.",
	},
	["org.muse.w18.skies.004"] = {
		"Pioggia! Presto, qualcuno mi venda un secchio prima che ci pensino i goblin.",
		"Acqua che cade gratis dal cielo, e nemmeno un mercante che la fa pagare. Godetevela finché dura.",
	},
	["org.muse.w18.skies.005"] = {
		"Con la tempesta di sabbia anche lo stufato scricchiola. Ho smesso di chiedermi se sia sabbia o l'idea di consistenza del cuoco.",
		"Sabbia nell'aria vuol dire sabbia nella scodella. Ogni boccone ai banchi arriva con un po' di Durotar dentro, senza sovrapprezzo.",
		"La sabbia entra dappertutto, e il cibo non fa eccezione. Ho appena morso il pane e il pane mi ha morso a sua volta.",
	},
	["org.muse.w18.skies.006"] = {
		"La sabbia si ammucchia contro ogni porta sul lato esposto della strada, e i peoni la spalano con la pazienza di chi sa che tornerà prima di cena.",
		"Le porte rivolte alle raffiche sono già mezze sepolte. Un peone ne libera una con la pala, ci si appoggia e guarda la sabbia che ricomincia a riempirla.",
		"Ogni soglia che dà verso l'aperto ha ormai la sua piccola duna. I peoni le sgombrano a turno, senza fretta, come un lavoro per cui sono nati.",
	},
	["org.muse.w18.skies.007"] = {
		"scuote uno stivale e ne versa in strada una piccola duna rossa, poi prende l'altro stivale con rassegnazione.",
		"si vuota una manciata di sabbia dal colletto, poi da una manica, poi rinuncia e la accetta come parte del vestito.",
	},
	["org.muse.w18.skies.008"] = {
		"Con la sabbia alzata, il sole sopra il canyon si riduce a una moneta di rame opaca, e puoi guardarlo dritto. Tutta la città prende il colore di un vecchio bollitore.",
		"La sabbia trasforma il cielo sopra il canyon in una stoffa bruna e spessa con una moneta pallida cucita in mezzo. Nessuno alza gli occhi a lungo.",
	},
	["org.muse.w18.skies.009"] = {
		"Una tempesta sul canyon, e ogni tetto di Orgrimmar è diventato una sala comune. Sconosciuti che dividono le panche, qualcuno che divide una pentola, e ogni schianto là fuori accolto con un applauso.",
		"Fuori tuona, e al chiuso ognuno è diventato vicino di tutti. Niente rende una folla educata come non avere un altro posto dove andare.",
	},
	["org.muse.w18.skies.010"] = {
		"sente un peone sotto una tenda contare ad alta voce tra ogni lampo e il suo tuono, e la gente intorno zittirsi per seguire il conto.",
		"si ripara in un portone con un capannello di sconosciuti, mentre un peone conta i colpi tra fulmine e tuono; al quattro, gemono tutti.",
	},
	["org.muse.w18.skies.011"] = {
		"La tempesta si è infilata sotto le pelli di ogni tetto, e tutta la città sbatte come uno stormo che prova a decollare. Qualche capanna sembra vicina a riuscirci.",
		"Ogni pelle allentata su ogni tetto batte nella tempesta. Per un momento Orgrimmar sembra voler volare, e non so se la fermerei.",
		"Pelli dei tetti che schioccano come vele, pali che gemono, una capanna intera piegata contro le raffiche. Se un giorno la città decolla, voglio un posto a bordo.",
	},
	["org.muse.w18.skies.012"] = {
		"Aria limpida, per una volta, e ogni contorno della città è netto: le punte, le travi, le sporgenze lontane. Orgrimmar sembra appena dipinta.",
		"In una giornata così limpida la parete di fronte sembra a portata di mano, e le ombre della città stanno a terra nette come cuoio tagliato.",
	},
	["org.muse.w18.skies.013"] = {
		"stende una camicia lavata su una roccia al sole e la ritrova asciutta, rigida e calda prima ancora di aver aggiustato una sola cinghia.",
		"posa un mantello umido su una sporgenza cotta dal sole, si volta per una piccola faccenda e quando si rigira lo trova secco come un biscotto.",
	},
	["org.muse.w18.skies.014"] = {
		"Nemmeno un granello di sabbia nell'aria. Qualcuno segni la data.",
		"Aria pulita, cielo sereno. Godetevelo tutti. Durotar si sta solo riposando.",
	},
	["org.muse.w18.stable.001"] = {
		"Il maestro di stalla tiene un registro di ogni bestia che gli viene affidata, diviso per quello che mangia e per se morde. La maggior parte delle pagine, mi ha detto un garzone, dice carne e sì.",
		"Da qualche parte nella stalla c'è un libro con una colonna per il cibo e una per i denti. Un cacciatore mi ha mostrato la sua pagina: sotto denti, qualcuno aveva scritto, e sottolineato, attenzione.",
	},
	["org.muse.w18.stable.002"] = {
		"Uno dei felini della stalla sta col mento sulle zampe, rivolto verso l'uscita. Non dorme. Aspetta un preciso paio di stivali, e ignora tutti gli altri che passano.",
		"Nella stalla della città c'è una bestia che non fa che guardare l'ingresso. I garzoni dicono che il suo cacciatore è partito per una strada lunga. Mangia, dorme, e a ogni passo alza la testa.",
		"Fra un pasto e l'altro le bestie della stalla fanno tutte la stessa cosa: guardano la porta. Qualunque cosa dimentichi, l'animale di un cacciatore non dimentica mai da che parte è andato il suo padrone.",
	},
	["org.muse.w18.stable.003"] = {
		"La stalla della città sa di carne, paglia, pelo bagnato e palude. Qualcuno ci ha lasciato un crocolisco, e sta vincendo lui.",
		"A chi ha lasciato un crocolisco nella stalla di Orgrimmar: tutta la stalla vorrebbe due parole. Da lontano.",
	},
	["org.muse.w18.stable.004"] = {
		"guarda una cacciatrice riprendersi una bestia rimasta a lungo nella stalla; quella le volta la schiena con un broncio evidente, resiste esattamente fino alla prima striscia di carne secca, e poi non la lascia più.",
		"vede un cacciatore accovacciato davanti a un recinto chiedere scusa a lungo a un cinghiale che si rifiuta di guardarlo, finché un pezzo di carne non chiude la questione.",
	},
	["org.muse.w18.stable.005"] = {
		"Mai offrire del pane al felino di un cacciatore. Lo sguardo che ti restituisce è una lezione intera.",
		"I cinghiali mangiano di tutto. Gli scorpidi mangiano quello che stavi per mangiare tu. I felini mangiano quel che vogliono, quando vogliono.",
	},
	["org.muse.w18.stable.006"] = {
		"I cacciatori dicono che una bestia lasciata affamata e scontenta troppo a lungo un giorno se ne va e basta, senza voltarsi. Per questo nella Valley of Honor li vedi sfamare prima gli animali e poi mangiare il proprio cibo freddo.",
		"Una bestia domata non è tua, mi ha detto un cacciatore. Resta perché lo sceglie, e quella scelta va pagata ogni giorno in carne e pazienza.",
		"Guarda un cacciatore che arriva dalla strada: la bestia mangia per prima, beve per prima, si fa togliere le spine per prima. Il cacciatore si siede per ultimo, e non si lamenta.",
	},
	["org.muse.w18.stable.007"] = {
		"Ogni volta che un cacciatore fa insegnare un nuovo ringhio al suo lupo dall'addestratore di bestie, il lupo passa l'ora seguente a provarlo su tutti: grunt, peon, pali, la propria coda.",
		"Una bestia appena addestrata è un flagello per un giorno o giù di lì. Il cinghiale di un cacciatore ha imparato un trucco nuovo nella Valley of Honor e lo sta sfoggiando a tutta la strada.",
	},
	["org.muse.w18.stable.008"] = {
		"si fa da parte con il resto della strada mentre un cacciatore passa di fretta con un felino ferito disteso sulle braccia, e nessuno dice una parola finché non si è allontanato.",
		"fa largo a una cacciatrice che porta verso la Valley of Honor un cinghiale floscio che guaisce, e si accorge che la folla si è già aperta senza bisogno di chiederlo.",
	},
	["org.muse.w18.stable.009"] = {
		"I lupi sono il meno, nella stalla: c'è un serpente del vento arrotolato in un recinto, che crepita appena qualcuno gli passa accanto, e un ragno che nessuno vuole nutrire a mano.",
		"Non tutte le bestie della stalla hanno il pelo. C'è un serpente alato arrotolato che ronza come una pentola sul punto di bollire, e un ragno che i garzoni nutrono con un bastone lunghissimo.",
	},
	["org.muse.w18.stable.010"] = {
		"Al tramonto i cacciatori portano la carne alle bestie, e per un po' la stalla è solo uno sgranocchiare, un ringhiare, e un raptor che cerca di rubare da due parti insieme.",
		"L'ora del pasto, al crepuscolo: la Valley of Honor si zittisce, a parte i denti sulle ossa, e i cacciatori stanno lì a guardare le loro bestie mangiare con l'aria di cuochi orgogliosi.",
		"Il crepuscolo è l'ora più rumorosa della stalla: tutte le bestie mangiano insieme, e ognuna è convinta che alla vicina sia toccata la porzione più grossa.",
	},
	["org.muse.w18.stable.011"] = {
		"Quel cinghiale mi fissa gli stivali da un pezzo. Qualcuno gli dica che non sono nel menù.",
		"Di chi è questo cinghiale? Mi annusa lo zaino come se ne avesse pagato il contenuto.",
	},
	["org.muse.w18.stable.012"] = {
		"si volta a seguire un cacciatore che passa con un granchio alle calcagna, che lo segue di sbieco in una linea perfettamente dritta, cosa che per un granchio deve richiedere una concentrazione enorme.",
		"si scansa al passaggio di un granchio addomesticato che zampetta di lato dietro al suo cacciatore, e si meraviglia che non lo perda mai nella folla.",
	},
	["org.muse.w18.stable.013"] = {
		"guarda i garzoni della stalla gettare pelli sopra i recinti delle bestie quando comincia a soffiare la sabbia, mentre sotto qualcosa ringhia al buio che gli hanno dato.",
		"sente gli animali della stalla agitarsi mentre la sabbia sibila giù per la valle, e vede i custodi passare da un recinto all'altro con teli e parole basse e calme.",
	},
	["org.muse.w18.stable.014"] = {
		"I garzoni dicono che nella stalla c'è un lupo il cui cacciatore non è mai venuto a riprenderlo. Da allora lo nutrono ogni giorno. Nessuno ha cuore di darlo via, e nessun altro riuscirebbe a portarlo fuori.",
		"Certe bestie della stalla aspettano qualcuno che non verrà più. I custodi sanno quali. Le nutrono per prime, e parlano con loro un po' più a lungo.",
	},
	["org.muse.w18.stable.015"] = {
		"Attraversare la stalla è come attraversare mezzo Kalimdor: un raptor delle Barrens, un felino di Ashenvale, uno scorpide preso appena fuori dalla porta, tutti nutriti dallo stesso secchio.",
		"La stalla è una mappa che si annusa. Raptor delle Barrens, felino di Ashenvale, scorpide di Durotar, ognuno nel suo recinto e tutti a protestare nella stessa direzione.",
	},
	["org.muse.w18.stable.016"] = {
		"tende una mano, palmo in giù, al lupo di un cacciatore che aspetta accanto a una porta, e il lupo annusa, valuta e liquida il tutto con uno sbuffo annoiato.",
		"si accovaccia per lasciare che il felino di un cacciatore ispezioni la mano tesa; il felino ci riflette a lungo e poi si siede sul suo stivale, il che pare voglia dire sì.",
	},
	["org.muse.w18.stable.017"] = {
		"Lasci un raptor nella stalla? Avvisa i garzoni. Poi avvisali più forte.",
		"Il raptor di qualcuno ha mangiato il guanto di un garzone. Solo il guanto, giura il garzone.",
	},
	["org.muse.w18.still.001"] = {
		"Si capisce da quanto tempo un apprendista alchimista sta al banco dalle sopracciglia. Se non ne ha più, è almeno un anno, e una promozione in arrivo.",
		"Un apprendista alchimista con tutte e due le sopracciglia o è molto prudente o è al banco da poco. I maestri si fidano di più di quelli bruciacchiati.",
	},
	["org.muse.w18.still.002"] = {
		"guarda un erborista dividere un mucchio di foglie in tre pile a occhi chiusi, portando ogni rametto al naso prima di gettarlo a sinistra, a destra o nel mezzo.",
		"si accosta a un'erborista che sceglie il raccolto solo dall'odore, a occhi chiusi, calma come chi conta monete di cui si fida.",
	},
	["org.muse.w18.still.003"] = {
		"Gli erboristi scendono dalle colline con sacchi di radici ancora incrostate di terra rossa, e gli alchimisti pretendono di togliere un rame per la terra. Gli erboristi ribattono che la terra è metà della medicina.",
		"Le radici arrivano in città con un bel pezzo di Durotar ancora attaccato. Ogni vendita comincia con una lite su quanta parte del peso sia radice.",
	},
	["org.muse.w18.still.004"] = {
		"Se fa le bolle, non lo bevo. Se non fa le bolle, mi preoccupo.",
		"Le bolle sono un brutto segno. Niente bolle, peggio. L'alchimia, per come la capisco io.",
		"Odora di medicina. Sa di sfida.",
	},
	["org.muse.w18.still.005"] = {
		"In questa città le fiale vuote valgono soldi. Riporta una fiala col tappo all'alchimista e lei ti toglie un rame dalla prossima, dopo aver controllato il tappo.",
		"A Durotar il vetro costa caro, e le botteghe di pozioni ricomprano le loro boccette vuote. Ho visto un goblin raccoglierle per strada come briciole.",
		"Un'alchimista ha rimesso nella cassa le mie fiale vuote una per una, alzandole controluce per cercare le crepe, con la delicatezza che si riserva alle uova.",
	},
	["org.muse.w18.still.006"] = {
		"Uno speziale dei Reietti e un alchimista troll si scambiano appunti a bassa voce, e ognuno finge di non scrivere neanche una parola di quello che dice l'altro.",
		"Due alchimisti di popoli molto diversi dividono un banco, uno morto da un pezzo e uno con zanne vistose, e tutti e due sbirciano di nascosto gli appunti dell'altro.",
	},
	["org.muse.w18.still.007"] = {
		"Uno schianto di tuono sopra l'orlo del canyon, e ogni scaffale di ogni bottega di pozioni trema insieme. Da qualche parte un alchimista ne puntella uno con tutte e due le braccia e maledice il tempo.",
		"Un colpo di tuono, e da ogni porta dei venditori di pozioni arriva lo stesso suono: vetro che tintinna, poi un lungo silenzio prudente.",
	},
	["org.muse.w18.still.008"] = {
		"entra nell'aria chiusa di una bottega di pozioni, dove qualcosa di dolce e qualcosa di marcio si contendono lo stesso naso, e nessuno dei due vince.",
		"si china sotto l'architrave basso della bottega di un alchimista, dentro un tanfo caldo di vapore e odori strani, e resta lì a sbattere le palpebre finché gli occhi smettono di lacrimare.",
	},
	["org.muse.w18.still.009"] = {
		"Nessun erborista ti dice mai dove ha raccolto. Prova a chiederlo, e una collina su cui sale ogni settimana gli scivola di colpo dalla memoria.",
		"Il miglior cespuglio di erbe argentate per leghe intorno è il segreto di un'erborista di questa città, che piuttosto venderebbe i propri stivali.",
	},
	["org.muse.w18.still.010"] = {
		"Chiunque stia distillando in questo tratto del Drag, vorrei scambiarci due parole sull'odore.",
		"Qualcosa da queste parti del Drag sa di stivale bollito nel miele. Spero sia una medicina. Spero non sia per me.",
	},
	["org.muse.w18.still.011"] = {
		"Una vecchia troll se ne sta davanti al banco di un alchimista, legge le etichette e schiocca la lingua. I Darkspear distillavano da queste radici molto prima che qualcuno mettesse le ricette per iscritto, e lei non lo nasconde a nessuno.",
		"L'alchimista ha scritto il nome dell'erba sul vaso. La troll accanto a me ne ha un altro, più antico, e tre usi di cui l'alchimista non ha mai sentito parlare.",
		"Un anziano troll ha comprato un vaso da un alchimista, l'ha annusato, e gliene ha restituito metà con le istruzioni.",
	},
	["org.muse.w18.still.012"] = {
		"Un'alchimista mi ha detto che vende di tutto tranne le pozioni che brillano di verde. La generazione di sua nonna ha bevuto una volta qualcosa di verde, dice, e l'ha pagato un popolo intero.",
		"Niente di verde sugli scaffali di un alchimista orco. Non è una legge; non c'è stato bisogno di farla. I vecchi ricordano quanto è costata l'ultima bevanda verde.",
	},
	["org.muse.w18.still.013"] = {
		"gira intorno a un apprendista che pesta qualcosa in un mortaio di pietra con tanta foga che il pestello cigola, finché il maestro, senza alzare gli occhi, gli ringhia di fare piano.",
		"indugia accanto a un banco dove un apprendista pesta foglie secche nel mortaio come se gli dovessero dei soldi, finché una parola secca dal retro della bottega non rallenta il pestello.",
	},
	["org.muse.w18.still.014"] = {
		"Un alchimista lo riconosci in mezzo alla folla anche a occhi chiusi. L'odore gli cammina un passo avanti, come un araldo.",
		"Gli alchimisti portano addosso il loro lavoro come i conciatori, nell'aria che li circonda. Uno mi è appena passato accanto lasciando una scia di zolfo, anice e qualcosa di bruciacchiato.",
	},
	["org.muse.w18.still.015"] = {
		"Ogni grunt sulle mura porta con sé una boccetta rossa di una di queste botteghe. L'Orda va avanti a stufato, ferro e vetro tappato.",
		"I nostri grunt partono con le pozioni curative che tintinnano alla cintura, ognuna preparata da qualcuno di questa città che non vedrà mai la battaglia a cui serve.",
	},
	["org.muse.w18.still.016"] = {
		"Gli erboristi misurano le stagioni da quello che entra dalla porta: una grassa per i fiori, una magra per le radici. Parlano di erbacce come altrove i contadini parlano di grano.",
		"Domanda a un'erborista come va l'anno e ti risponde in foglie: tante erbe comuni, nemmeno un rametto di quelle che valgono.",
	},
	["org.muse.w18.still.017"] = {
		"È medicina, se ha un sapore così cattivo? L'alchimista dice che è proprio così che si capisce.",
		"La cosa più cattiva che abbia mai assaggiato. L'alchimista sembrava felicissima.",
	},
	["org.muse.w18.stranger.001"] = {
		"I grunt al portale guardano gli stivali prima della faccia. Polvere rossa vuol dire Durotar, gialla le Barrens, fango vuol dire un posto di cui vorrebbero sentir parlare.",
		"Dagli stivali in su: è così che un grunt mi ha detto di leggere i viaggiatori. Il colore della polvere, il consumo del tacco, quel che s'è incrostato nelle cuciture. La faccia, dice, è l'ultima cosa a dire la verità.",
	},
	["org.muse.w18.stranger.002"] = {
		"Fai troppe domande in questa città e ti ritrovi un compagno: un grunt, qualche passo indietro, interessato a ogni risposta che ricevi.",
		"Ho visto un viaggiatore fare una domanda di troppo alla banca. Quando è uscito, è uscito anche un grunt, a distanza educata, ammirando le stesse bancarelle.",
		"A Orgrimmar la curiosità è gratis, ma quando è troppa arriva con la scorta.",
	},
	["org.muse.w18.stranger.003"] = {
		"A sentire i grunt del portale, una volta hanno trovato uno gnomo in una cassa scaricata dallo zeppelin, imballato nella paglia, con un quaderno pieno di disegni delle mura. Ogni versione finisce con lo gnomo che rivuole il suo quaderno.",
		"C'è una storia che tutti i grunt adorano: uno gnomo infilato di contrabbando fra le merci, sorpreso a disegnare il portale principale. In certe versioni lo rispediscono a casa nella stessa cassa. In altre chiede ancora dei suoi disegni.",
	},
	["org.muse.w18.stranger.004"] = {
		"Dietro di me un grunt ha smesso di camminare. Sento il silenzio dove prima c'erano i suoi stivali, e non mi volto.",
		"Un paio di stivali alle mie spalle si è zittito. Un grunt, fermo, che guarda. Tengo il passo esattamente com'era, e mi costa tutto quello che ho.",
		"I passi dietro di me si fermano. Non mi volto. È voltandosi che ci si fa giudicare.",
	},
	["org.muse.w18.stranger.005"] = {
		"nota gli occhi di un grunt seguire un viaggiatore incappucciato attraverso la strada, e un secondo grunt prenderlo in consegna esattamente dove il primo lo lascia, come un pacco passato di mano in mano.",
		"segue con lo sguardo uno straniero dal cappuccio calato che attraversa la folla sotto una staffetta di sguardi, ogni grunt che passa la sorveglianza al successivo senza una parola né un gesto.",
	},
	["org.muse.w18.stranger.006"] = {
		"Ogni cappuccio a Orgrimmar si guadagna una seconda occhiata dai grunt, il che dev'essere sfiancante per i Reietti, che hanno ottime ragioni per tenerlo alzato.",
		"Chiunque porti un cappuccio viene squadrato come una possibile spia. Metà dei Reietti in città ne porta uno, e così metà dei Reietti passa la visita a essere sospettata con educazione.",
	},
	["org.muse.w18.stranger.007"] = {
		"Ogni grunt di Orgrimmar si porta in testa un elenco mai scritto: le facce fuori posto, le domande che nessuno dovrebbe fare. Mi chiedo su che pagina sto io.",
		"Una capitale in guerra tiene un registro che nessuno può rubare, perché sta dietro gli occhi dei grunt: chi è entrato, chi ha chiesto cosa, chi si è fermato troppo a lungo vicino alle mura.",
		"In questa città nessuno annota chi va e chi viene. Ai grunt non serve: si ricordano, e confrontano le facce al cambio della guardia.",
	},
	["org.muse.w18.stranger.008"] = {
		"nota una piccola banda di bambini che segue a distanza prudente uno straniero incappucciato, poi corre a riferire a un grunt ogni svolta che fa; il grunt annuisce serio a ogni rapporto.",
		"guarda tre piccoli orchi pedinare un viaggiatore sconosciuto in mezzo alla folla, nascondendosi dietro i barili, e fare rapporto solenne al grunt più vicino, che li ringrazia come fossero esploratori.",
		"nota due piccoli troll che sorvegliano un viaggiatore sconosciuto a distanza di sicurezza, e il grunt lì vicino che ne riceve con gravità i rapporti sussurrati.",
	},
	["org.muse.w18.stranger.009"] = {
		"Nessun grunt mi ferma. Si limitano a ricordarsi di me: lo vedo succedere, una faccia archiviata da qualche parte dietro gli occhi, da tirare fuori più tardi se servirà.",
		"Neanche un grunt mi ha messo le mani addosso. Peggio: ognuno guarda una volta, con cura, come un mercante che s'imprime nella memoria una moneta che sospetta falsa.",
	},
	["org.muse.w18.stranger.010"] = {
		"Sto solo curiosando, grunt. In tutta innocenza. Puoi guardare qualcun altro, adesso.",
		"Qualunque cosa sembri che io stia facendo, non la sto facendo. Promesso.",
		"Ammiro le bancarelle e basta, grunt. Pura ammirazione. Non serve ricambiare.",
	},
	["org.muse.w18.stranger.011"] = {
		"Una spia dell'Alleanza fra la folla, a qualunque ora: i grunt lo danno per scontato. Non mettono sottosopra la città per cercarla. Che conti pure le asce, mi ha detto uno, e porti il numero a casa.",
		"Una spia dell'Alleanza a Orgrimmar? Certo, dice il grunt di guardia, e più di una. Non sembra preoccupato. Qualunque cosa riferiscano su queste mura, può solo aiutare a tenere gli umani a casa loro.",
	},
	["org.muse.w18.stranger.012"] = {
		"sente per caso un grunt vicino alla banca fare a un viaggiatore sconosciuto una domanda semplice in orchesco, e ascoltare la risposta meno dell'accento.",
		"sente un grunt vicino alla banca rivolgere a uno straniero una domanda oziosa, qualcosa sulla strada da Razor Hill, e lo vede soppesare l'accento della risposta molto più delle parole.",
	},
	["org.muse.w18.stranger.013"] = {
		"Orgrimmar tiene due guardie: una sulle mura, rivolta a Durotar, e una nelle strade, rivolta a tutti gli altri. La seconda è più silenziosa e, sospetto, molto più numerosa.",
		"Le mura sorvegliano la terra rossa là fuori. I grunt per le strade sorvegliano chiunque stia dentro. Delle due, sono le mura le più facili da ingannare.",
		"Il vero muro di Orgrimmar va in giro con gli stivali e si ricorda le facce.",
	},
	["org.muse.w18.stranger.014"] = {
		"Prima regola a Orgrimmar: avere l'aria di sapere dove si va. I grunt tengono d'occhio solo chi si è perso.",
		"Per non farsi notare qui, mai chiedere la strada. Cammina come se l'avessi costruita tu.",
		"Fai la faccia di chi si è perso e avrai un grunt per compagnia. Fai quella di chi ha da fare e avrai pace.",
	},
	["org.muse.w18.tauren.001"] = {
		"resta un po' a guardare un tauren che intreccia una fila di perline nella criniera di un amico su una panca, le grandi dita lente e precise, mentre l'altro sonnecchia.",
		"resta accanto a due tauren su un muretto, uno che intreccia la criniera dell'altro con perline di legno, senza che nessuno dei due dica nulla per un bel pezzo.",
	},
	["org.muse.w18.tauren.002"] = {
		"Un tauren seduto su un gradino si spalma un unguento su uno zoccolo screpolato. L'erba di Mulgore è morbida sotto i piedi; la pietra di questo canyon no, e la gente delle praterie ne sente ogni rampa.",
		"La pietra di Orgrimmar è dura per gli zoccoli, mi ha detto un mercante tauren, e mi ha mostrato le scheggiature per provarlo. Attraversa la città come chi guada un fiume su sassi traballanti.",
	},
	["org.muse.w18.tauren.003"] = {
		"La battuta di quel tauren era così sottovoce e così asciutta che l'orco accanto a lui l'ha capita solo a metà strada. Ho sentito la risata dalla banca.",
		"Quel tauren vicino alla bancarella ha detto qualcosa con la faccia più seria del mondo, e al goblin ci è voluto un minuto buono per scoppiare a ridere.",
		"Le battute dei tauren arrivano piano e non si scordano più.",
	},
	["org.muse.w18.tauren.004"] = {
		"Ciuffi di pelo di tauren vagano per la strada come lanugine di cardo. Con questo caldo secco fanno la muta, mi ha detto un tauren un po' imbarazzato, e io non ho detto nulla della chiazza sul mio mantello.",
		"Col caldo i tauren perdono il pelo, un po' alla volta, e i canali di scolo lo raccolgono in morbidi mucchi bruni. Di sicuro un goblin starà cercando di venderlo.",
	},
	["org.muse.w18.tauren.005"] = {
		"nota le orecchie di un tauren che si girano a ogni grido delle bancarelle, a sinistra, a destra, poi dall'altra parte, finché in fondo alla strada ricadono sfinite.",
		"segue le orecchie di un tauren di passaggio che scattano verso ogni nuovo rumore del mercato, come due sentinelle che non riescono a mettersi d'accordo sul pericolo.",
		"vede le orecchie di un tauren appiattirsi quando lì vicino attacca un tamburo.",
	},
	["org.muse.w18.tauren.006"] = {
		"Le panche di Orgrimmar sono fatte per gli orchi. I tauren si siedono semplicemente per terra lì accanto, e guardano comunque dall'alto chi si è preso la panca.",
		"Non ho visto un solo tauren fidarsi di una panca degli orchi con tutto il suo peso. Si sistemano per terra, e in qualche modo è la terra a sembrare onorata.",
		"I tauren siedono per terra e in qualche modo hanno comunque il posto migliore.",
	},
	["org.muse.w18.tauren.007"] = {
		"Quando una tauren saluta qualcuno più basso, abbassa la testa con gran cura, badando alle corna. Con quell'angolo, un cenno educato potrebbe causare un malinteso.",
		"C'è un'arte nell'inchino di un tauren in una strada affollata: abbastanza profondo da essere cortese, non tanto da far volare con le corna il cappello a qualcuno.",
	},
	["org.muse.w18.tauren.008"] = {
		"alza gli occhi verso un vitellino tauren in alto sulle spalle del padre, un corno in ciascun pugno come redini, che lo guida verso ogni bancarella che profuma di zucchero.",
		"si scansa per un tauren con un piccolo appollaiato in cima, le due manine strette alle corna e i due talloncini che tamburellano.",
	},
	["org.muse.w18.tauren.009"] = {
		"Pentole di ferro a pile, dirette a Mulgore: un tauren le compra e le prova una per una battendo una nocca sul bordo e ascoltando, l'orecchio chino, come se la pentola potesse confessare.",
		"Sulle praterie il ferro scarseggia, mi ha detto una tauren, così quando viene a Orgrimmar compra per mezzo villaggio. Ogni pentola viene bussata e ascoltata prima di finire sul kodo.",
	},
	["org.muse.w18.tauren.010"] = {
		"Qui nella Valley of Wisdom una tauren insegna a due bambini orchi un gioco di sassolini messi in file tracciate nella polvere. Li lascia vincere il primo giro, e solo il primo.",
		"Sassolini in file graffiate, una vecchia tauren e tre piccoli orchi chini sopra: un gioco delle praterie, portato attraverso le Barrens e posato in questa valle. I bambini perdono a gran voce.",
	},
	["org.muse.w18.tauren.011"] = {
		"Prego. No, dopo di te. Dopo di te, insisto. Tanto occupi tutta la strada.",
		"Passa pure, ti aspetto. Non c'è posto per tutti e due più il kodo che ti porti dietro.",
		"Dopo di te. Non mi metto a discutere con un muro che ha le corna.",
	},
	["org.muse.w18.tauren.012"] = {
		"Un tauren seduto contro un muro suona una melodia lunga e bassa su un flauto di legno. È un'aria delle praterie, lenta come una mandria che attraversa, e i grunt che passano ci si mettono al passo senza accorgersene.",
		"Sotto il fracasso suona un flauto tauren, tutto note lunghe e niente fretta. La melodia non appartiene a questo canyon, e il canyon la ascolta lo stesso.",
	},
	["org.muse.w18.tauren.013"] = {
		"tiene d'occhio un tauren a una bancarella che solleva un boccale che in mano a un orco sarebbe un secchio, lo vuota in tre lunghi sorsi e lo posa per farselo riempire.",
		"nota che le tazze vendute lungo la strada esistono in due misure, normale e da tauren, e che la seconda va sempre a ruba.",
	},
	["org.muse.w18.tauren.014"] = {
		"Piove, e i tauren in strada si fermano dove sono e alzano il viso. Per un momento tutto il canyon odora di pelo bagnato, e di Mulgore.",
		"La pioggia manda gli orchi sotto le tende e ne tira fuori i tauren. Un grosso toro vicino alla banca ci sta in mezzo a occhi chiusi, le orecchie che gocciolano, perfettamente contento.",
	},
	["org.muse.w18.tauren.015"] = {
		"Lentamente e con grande correttezza, un mercante tauren parla l'orchesco, come chi porta una ciotola piena da una parte all'altra di una stanza. Poi un grunt risponde in gergo di strada, e la ciotola si rovescia dappertutto.",
		"I tauren del mercato parlano l'orchesco con cura, ogni parola posata intera. Gli orchi rispondono a grugniti e mezze parole, e i tauren annuiscono, pazienti, traducendo a mente.",
	},
	["org.muse.w18.tauren.016"] = {
		"Mi ha appena chiesto il permesso di passare, quel tauren. Chiesto! Non sapevo che in questa città quelle parole funzionassero ancora.",
		"Posso passare, chiede il tauren. A Orgrimmar non me l'aveva mai chiesto nessuno.",
		"Qualcuno ha appena detto permesso e ha aspettato la risposta. Un tauren, naturalmente.",
	},
	["org.muse.w18.thread.001"] = {
		"Metà del lino di questa città arriva dalle spalle di banditi e coboldi, passando per le borse di qualche viandante. Una sarta mi ha detto che non chiede mai dove sia stata la stoffa. La lava due volte, ecco tutto.",
		"Chiedi a una sarta da dove viene il suo lino e ti guarderà le borse. Ogni viandante di Orgrimmar fa il mercante di stoffa senza saperlo.",
		"I sarti comprano il lino dai viandanti a bracciate, senza fare domande. Le domande rovinerebbero soltanto la camicia.",
	},
	["org.muse.w18.thread.002"] = {
		"guarda una sarta finire una cucitura e spezzare il filo coi denti invece di allungare la mano verso il coltello lì accanto.",
		"nota che il sarto non usa mai le forbici per l'ultimo filo: un rapido colpo di denti, e la camicia è piegata e venduta.",
	},
	["org.muse.w18.thread.003"] = {
		"I sarti più anziani tengono ancora aghi d'osso intagliati da loro. Quelli di ferro sono migliori, lo ammettono, e poi continuano a usare quelli d'osso.",
		"Una sarta mi ha mostrato un ago d'osso ingiallito, la cruna forata a mano. In un cassetto ha quelli di ferro. Ma le sue dita vanno sempre a quello d'osso.",
		"Chiedi a una vecchia sarta del suo ago d'osso e ti dirà da quale bestia viene, e cosa quella bestia fece un tempo a suo zio.",
	},
	["org.muse.w18.thread.004"] = {
		"Il rosso è la tintura più economica di Orgrimmar. Nessuno sa dirmi perché, ma tutti quelli a cui lo chiedo lanciano un'occhiata alle mura.",
		"Una tintora mi ha detto che qui il rosso non le costa quasi niente. Il nero, il blu, un verde decente: quelli li paga. Il rosso, dice, nella tinozza ci finisce che lei voglia o no.",
		"Tutto quello che si tinge in questa città alla fine tende al rosso. I tintori la chiamano la parte del canyon.",
	},
	["org.muse.w18.thread.005"] = {
		"Rattoppalo, ha detto la sarta. Poi me l'ha fatto pagare come nuovo.",
		"Quella sarta ha guardato il mio mantello e mi ha fatto le condoglianze.",
		"Rammendarlo o seppellirlo? La sarta ci sta ancora pensando.",
	},
	["org.muse.w18.thread.006"] = {
		"Sulla parete di fondo di una sarta pendono i cartamodelli, ritagliati in vecchia pelle e consumati ai bordi: la larga spalla tauren, la manica lunga dei troll, la giubba stretta dei Reietti, e un taglio goblin che sembra fatto soprattutto di tasche.",
		"Un sarto di questa città ha bisogno di un modello per ogni corpo che entra dalla porta. I suoi stanno appesi ai pioli per misura, da quello del goblin a quello del tauren, che da solo occupa una parete.",
	},
	["org.muse.w18.thread.007"] = {
		"indugia accanto a una porta del Drag dove una filatrice torce la lana in filo, il fuso che scende quasi fino alla polvere e risale lungo il filato, senza fermarsi mai.",
		"contempla un fuso che scende girando dalle dita di una filatrice, appeso al filo che si allunga, e quasi tocca la strada del Drag prima che lei lo riavvolga.",
	},
	["org.muse.w18.thread.008"] = {
		"Certa stoffa sui banchi dei sarti vibra appena sotto i polpastrelli. Tessuta dai maghi, dice il sarto, e mi sposta la mano prima che possa toccarla una seconda volta.",
		"Sullo scaffale di una sarta c'è una pezza di tessuto magico che sembra luccicare quando nessuno la guarda dritta. Scommetto che quello lo fa pagare a parte.",
		"Una sarta giura che la stoffa tessuta dai maghi sul suo scaffale si tiene calda da sola e non si strappa mai. La seconda parte l'ha detta fissandomi le maniche.",
	},
	["org.muse.w18.thread.009"] = {
		"Con la sabbia nell'aria i sarti coprono ogni pezza e lavorano a tatto sotto le tende. Un granello cucito in una costura farà sfregare qualcuno per un mese, e sanno bene a chi daranno la colpa.",
		"Sabbia nel vento, e i sarti ripiegano la stoffa veloci come un mercante che nasconde le monete. La sabbia nel lino è l'unica cosa che nessun ago sa rammendare.",
	},
	["org.muse.w18.thread.010"] = {
		"La seta di ragno arriva dai cacciatori in matasse grigie e sudicie. I sarti ci tolgono le mosche morte, poi la prezzano come se l'avesse filata una regina.",
		"Un cacciatore ha venduto a una sarta un groviglio di seta di ragno con dentro ancora mezzo scarabeo. Lei l'ha pagato una miseria, l'ha ripulito e l'ha messo sul banco a dieci volte tanto.",
		"La seta di ragno è l'unica merce di Orgrimmar che si vende con una garanzia: il ragno non è più attaccato.",
	},
	["org.muse.w18.thread.011"] = {
		"Il lino troppo lacero per i sarti va a chi arrotola bende. In questa città nessun filo smette mai di servire: camicia, poi straccio, poi la cosa che tiene in piedi un grunt.",
		"I sarti vendono i ritagli peggiori ai guaritori a sacchi. Una camicia fallita come camicia può ancora tenere insieme qualcuno.",
	},
	["org.muse.w18.thread.012"] = {
		"La sarta mi ha chiesto se lo volevo elegante o resistente. A Orgrimmar, a quanto pare, le due cose non vanno insieme.",
		"Elegante o resistente, chiede il sarto. Gli ho chiesto quale dei due ferma un'ascia. Ha sospirato.",
		"La moda, a Orgrimmar, vuol dire spuntoni abbinati.",
	},
	["org.muse.w18.thread.013"] = {
		"si vede tagliare un filo penzolante dal mantello da un garzone di sarto sbucato da una porta, che borbotta qualcosa sulla cattiva pubblicità e torna dentro di corsa.",
		"si ritrova accanto un apprendista sarto che, al passaggio, afferra un filo sciolto della manica: un colpo di forbici, un'occhiata di disapprovazione, e il ragazzo è già sparito.",
	},
	["org.muse.w18.thread.014"] = {
		"Ogni stendardo su queste mura l'ha orlato qualcuno strizzando gli occhi sopra un ago. I nostri colori sono fatti soprattutto di pazienza.",
		"Le casacche dell'Orda non si cuciono da sole. In qualche bottega di questa città una sarta con gli occhi stanchi le ha fatte tutte, e nessuno l'ha mai acclamata.",
	},
	["org.muse.w18.thread.015"] = {
		"Fra tutti i mestieri di questa città rumorosa, quello del sarto è il più silenzioso: il fruscio del filo tirato nella stoffa, il ticchettio di un ditale, un'imprecazione ogni tanto quando l'ago trova un dito.",
		"Affacciati alla porta di un sarto e la città cala di mezzo tono. Lì dentro niente sbatte. Il filo sibila, le forbici bisbigliano, e qualcuno canticchia sopra il lavoro.",
	},
	["org.muse.w18.thread.016"] = {
		"Nel Drag una camicia costa due rame e un po' di simpatia. È la simpatia che mi manca.",
		"Qui nel Drag anche i sarti contrattano come fabbri. Ho offerto un prezzo giusto e mi sono preso una lezione sul lino.",
	},
	["org.muse.w18.throne.001"] = {
		"I messaggeri escono da Grommash Hold a ogni andatura possibile, e i grunt li leggono come il cielo. Al passo, è commercio. Al trotto, guai su qualche strada. Di corsa sfrenata, e nella valle tutti i grunt si zittiscono.",
		"Le notizie si capiscono dal messaggero. Esce da Grommash Hold passeggiando: faccenda di sale e chiodi. Esce di volata: qualcuno, chissà dove, sta per passare una brutta stagione.",
		"Guarda abbastanza a lungo la porta della sala del Capoguerra e impari a leggere i piedi dei messaggeri. Più in fretta escono, meno voglia ha chiunque di chiedere perché.",
	},
	["org.muse.w18.throne.002"] = {
		"passa accanto a un messo reietto che aspetta fuori da Grommash Hold con una lettera sigillata, immobile; di tutta la fila, è quello che i Kor'kron tengono d'occhio più a lungo.",
		"nota un Reietto incappucciato fermo ai gradini della sala del Capoguerra, una lettera stretta fra le mani grigie, così immobile che una mosca gli si è posata sul sigillo.",
	},
	["org.muse.w18.throne.003"] = {
		"Ho visto un goblin entrare nella sala del Capoguerra con un contratto più lungo della fila. Thrall ha tutta la mia comprensione.",
		"Il rotolo di quel goblin si stava ancora srotolando giù per i gradini di Grommash Hold quando lui era già in cima. Qualunque cosa voglia, la vuole tutta.",
	},
	["org.muse.w18.throne.004"] = {
		"Dalla porta aperta di Grommash Hold esce un brontolio di molte voci, poi una voce sola, poi più niente. Chiunque abbia parlato per ultimo, là dentro ci stanno pensando tutti.",
		"Da Grommash Hold arriva un mormorio, si interrompe, e una voce profonda riempie il vuoto. Quando tace, il silenzio che segue è la cosa più rumorosa di questa valle.",
		"Ogni tanto il rumore dentro Grommash Hold cala di colpo, come se qualcuno avesse alzato una mano. Fuori, nella valle, anche la gente si zittisce, senza sapere perché.",
	},
	["org.muse.w18.throne.005"] = {
		"Un peon della Valley of Wisdom giura che il suo unico lavoro è spazzolare la polvere dalle spalle dei Kor'kron. Non lo ringraziano mai. Ma non si muovono nemmeno, e lui dice che così è un lavoro facile.",
		"I Kor'kron stanno così fermi che la polvere ci si posa sopra come su un mobile, mi ha detto un peon, e qualcuno deve passare con la spazzola. Sembrava fiero di essere lui quel qualcuno.",
	},
	["org.muse.w18.throne.006"] = {
		"passa accanto a una fila di lupi sellati, accucciati fuori dalla sala del Capoguerra, ognuno col muso rivolto alla porta, in attesa del proprio cavaliere.",
		"cammina oltre i lupi lasciati ai piedi di Grommash Hold da chi è dentro; nessuno dorme, e a ogni passo sulla soglia tutte le orecchie si girano.",
		"si muove con cautela fra i lupi che aspettano alla porta di Grommash Hold, seguito da una dozzina di occhi gialli che stabiliscono presto che non è il padrone di nessuno.",
	},
	["org.muse.w18.throne.007"] = {
		"Un grunt sulla porta mi ha detto che questa sala fu costruita perché una voce dal trono arrivasse fino alla soglia senza alzarla. Ci credo. Perfino i colpi di tosse, quaggiù in fondo, sembrano rivolti a me.",
		"La sala fu fatta, sostiene una guardia, in modo che il Capoguerra non debba mai gridare. Da qui in fondo sento l'armatura di un Kor'kron assestarsi accanto al trono, e faccio attenzione a quello che borbotto.",
	},
	["org.muse.w18.throne.008"] = {
		"Ogni volta che passo davanti a Grommash Hold c'è qualcuno sui gradini che ripete una supplica fra sé. Alla decima volta è più corta. Alla ventesima è educata. Quando lo chiamano, di solito è buona.",
		"Sui gradini della sala del Capoguerra c'è sempre qualcuno che prova ad alta voce la sua lagnanza. La prima versione contiene di solito tre insulti. Quella con cui entra non ne ha nessuno, ed è migliore.",
	},
	["org.muse.w18.throne.009"] = {
		"Un grunt che ha fatto la guardia là dentro giura che il Capoguerra ride, ogni tanto, quando se n'è andato l'ultimo postulante. Da fuori nessuno lo indovinerebbe, e il grunt dice che è voluto.",
		"Thrall ride, mi dicono. Non spesso, e mai davanti alla fila che aspetta alla porta. Fa piacere sapere che in quella sala, almeno lì, succede.",
		"Qualcuno ha sentito ridere il Capoguerra, una volta, giurano i grunt, alla supplica di un goblin. Il goblin, aggiungono, ha provato a fargliela pagare.",
	},
	["org.muse.w18.throne.010"] = {
		"Se al Capoguerra dovessero mai finire le opinioni, io ne ho in abbondanza. Strano, nessuno è venuto a chiedermele.",
		"A Thrall servirebbe un consigliere senza esperienza e con idee molto ferme. Io ho quasi sempre tempo.",
		"Qualcuno dica a Grommash Hold che do consigli. A buon prezzo. Forse sbagliati.",
	},
	["org.muse.w18.throne.011"] = {
		"guarda i postulanti allontanarsi dal trono uno dopo l'altro e li legge al passaggio: uno sollevato, uno furioso, uno che conta qualcosa sulle dita fino alla porta.",
		"si scosta per lasciar passare chi torna dal trono, e scopre che ogni faccia racconta com'è andata prima di qualsiasi parola: un mento alto, una mascella serrata, un mezzo sorriso stordito.",
	},
	["org.muse.w18.throne.012"] = {
		"La porta del Capoguerra è aperta a chiunque di noi. Un giorno vorrei attraversarla con qualcosa che valga il suo tempo, e non solo un mal di schiena e una domanda.",
		"Chiunque nell'Orda può salire a quella sala e farsi ascoltare. Mi fa venire voglia di avere qualcosa che valga la pena dire, quando toccherà a me bussare a quella porta.",
	},
	["org.muse.w18.throne.013"] = {
		"In fondo a questa città il Capoguerra dell'Orda siede sul suo trono, e io giro per le sue strade a comprare pane. Nessuno di quelli che conosco ci crederebbe.",
		"Il Capoguerra dell'Orda tiene corte a qualche valle da qui. I suoi soldati mi vedrebbero sparire volentieri, i suoi mercanti prendono volentieri il mio denaro. Il mondo è più strano di quanto la guerra lasci credere.",
	},
	["org.muse.w18.throne.014"] = {
		"Di notte, molto dopo che il Drag ha chiuso bottega, in Grommash Hold arde ancora una luce. Là dentro qualcuno viene ancora ascoltato, o sta ancora ascoltando.",
		"Notte sul canyon, quasi tutti i fuochi coperti, e la sala del Capoguerra ancora illuminata in cima alla sua valle. Qualche lagnanza era troppo lunga per la luce del giorno.",
	},
	["org.muse.w18.throne.015"] = {
		"Spalle indietro, mento alto, e qualunque cosa succeda, non inciampare sulla strada del trono.",
		"Lunga camminata fino a quel trono. Tutti i Kor'kron mi guardano i piedi. Splendido.",
	},
	["org.muse.w18.throne.016"] = {
		"Dalla porta, il trono in fondo a Grommash Hold sembra piccolo. Chissà come appare la porta vista dal trono: un riquadro luminoso che non smette mai di far entrare guai.",
		"Vista dalla soglia, la sedia del Capoguerra è lontana e nemmeno tanto grande. Dalla sedia, sospetto, la porta è la cosa più grande del mondo.",
	},
	["org.muse.w18.throne.017"] = {
		"fa largo a due tauren che portano verso Grommash Hold un lungo fagotto di pelle dipinta, tenuto fra loro con la cura che si riserva a un vitello addormentato.",
		"si fa da parte mentre due tauren salgono il pendio verso la sala del Capoguerra con una pelle arrotolata, piano e al passo, come se pesasse più di quel che sembra.",
	},
	["org.muse.w18.throne.018"] = {
		"resta immobile mentre lo sguardo di un Kor'kron attraversa la sala, si posa un istante e passa oltre, e solo allora si accorge di aver smesso del tutto di muoversi.",
		"sente lo sguardo del Kor'kron più vicino posarsi e risollevarsi come una mano sulla spalla, e solo dopo si concede di abbassare le spalle.",
	},
	["org.muse.w18.throne.019"] = {
		"Porti una supplica a Grommash Hold? Falla breve. I Kor'kron contano ogni parola, e i numeri grandi non gli piacciono.",
		"Vai dal Capoguerra? Prova prima con me. Farò la faccia da Kor'kron.",
	},
	["org.muse.w18.tools.001"] = {
		"Qualcosa ha fatto bum nell'officina di un ingegnere. Il goblin è uscito in una nuvola di fumo, si è contato le dita, ne ha trovate dieci, ed è tornato dentro di filato.",
		"Un tonfo sordo dal banco di qualcuno, uno sbuffo di fumo nero dalla porta, e poi una voce di goblin che grida che doveva andare così.",
	},
	["org.muse.w18.tools.002"] = {
		"guarda un apprendista spazzare il pavimento di una bottega mentre il maestro fa la predica a un cliente, e le labbra del ragazzo formano ogni parola con un attimo d'anticipo.",
		"nota l'apprendista di un artigiano che ripete in silenzio la parlantina del maestro, parola per parola, senza mai fermare la scopa.",
	},
	["org.muse.w18.tools.003"] = {
		"Un apprendista in questa città passa il primo anno a portare pesi, il secondo a fare commissioni, e solo al terzo gli si affida qualcosa di costoso da rompere.",
		"Ogni artigiano a cui l'ho chiesto racconta la stessa scala: portare, andare a prendere, spazzare, guardare, e solo dopo toccare. Quando un apprendista impugna il martello, ha già le braccia di un fabbro.",
	},
	["org.muse.w18.tools.004"] = {
		"Ingegneri. Se fischia, funziona. Se smette di fischiare, scappa.",
		"Regola per passare davanti al banco di un ingegnere: se fischia, va bene. Se tace, giù la testa.",
		"Se il goblin sorride ancora, non c'è pericolo. Credo.",
	},
	["org.muse.w18.tools.005"] = {
		"Prendi in prestito un attrezzo da un artigiano di qui e te lo richiederanno prima che tu abbia capito da che parte si impugna.",
		"Gli artigiani prestano gli attrezzi come i lupi prestano le ossa: con un lungo sguardo, e tutta l'intenzione di riaverli prima che tu abbia fatto due passi.",
	},
	["org.muse.w18.tools.006"] = {
		"Su più di una parete di bottega pende un primo lavoro storto: una fibbia sbilenca, uno stivale che non ha mai somigliato al suo gemello. Il primo non si vende. Resta lì a tenere umile il maestro.",
		"Una pellettiera mi ha mostrato la prima cinghia che abbia mai tagliato, inchiodata sopra il banco, irregolare come un sentiero di capre. Dice che la guarda ogni volta che un cliente la chiama la migliore.",
		"Gli artigiani di questa città tengono tutti il loro lavoro peggiore in bella vista: il primo, quello brutto. Contro la superbia funziona meglio di qualsiasi istruttore.",
	},
	["org.muse.w18.tools.007"] = {
		"si schiaccia contro un muro del Drag mentre un carretto di assi, lingotti e pelli arrotolate arranca in salita, un peon che tira alle stanghe e un goblin appollaiato in cima a dare indicazioni.",
		"fa spazio a un carro carico di barre di rame e cuoio in fasci che risale il Drag a passo di lumaca, tirato da un peon che borbotta e guidato da un goblin che non fa nient'altro.",
	},
	["org.muse.w18.tools.008"] = {
		"Gli ingegneri portano gli occhialoni alzati sulla fronte, un secondo paio d'occhi che sembrano sempre sorpresi.",
		"Un ingegnere lo riconosci dagli occhialoni: alzati sulla fronte quando parla, abbassati sugli occhi quando sta per succedere qualcosa, e a metà quando nessuno ne è sicuro.",
	},
	["org.muse.w18.tools.009"] = {
		"La polvere da mina si vende a sacchetti, da dietro un bancone, e mai a chi ha la pipa in bocca.",
		"L'ingegnere che vende la polvere da mina mi ha fatto spegnere la torcia prima ancora di dirmi il prezzo. Poi si è acceso un sigaro.",
		"C'è un goblin che vende polvere da mina sotto un cartellino dipinto: niente fuoco, niente fumo, niente rimborsi.",
	},
	["org.muse.w18.tools.010"] = {
		"Alza gli occhi alle cenge e c'è una seconda città al lavoro: stoffa stesa a sbiancare, pelli fissate coi picchetti a indurire, file di vasi messi fuori a cuocere.",
		"Ogni cengia che si vede è il banco da lavoro di qualcuno. Cuoio che si indurisce, stoffa che si sbianca, argilla che si secca, e un peon che ci cammina in mezzo come un contadino fra i filari.",
	},
	["org.muse.w18.tools.011"] = {
		"L'ingegneria goblin, mi ha spiegato un goblin con autentico orgoglio, è l'arte di far andare una cosa più veloce del dovuto e poi venderne i pezzi.",
		"I goblin hanno un detto sulla loro ingegneria, o almeno così me l'ha raccontato uno di loro: se non è esploso, non ce ne hai messo abbastanza.",
	},
	["org.muse.w18.tools.012"] = {
		"sorprende un istruttore che prende un lavoro storto dalle mani di un apprendista, lo rigira una volta e lo restituisce senza una parola; l'apprendista torna dritto al banco.",
		"vede un maestro prendere il lavoro di un apprendista, batterlo due volte contro il banco, ascoltare e posarlo sul mucchio degli scarti, mentre il ragazzo si limita ad annuire.",
	},
	["org.muse.w18.tools.013"] = {
		"In questa città qualcuno fabbrica gli attrezzi che fabbricano gli attrezzi. Vorrei conoscerlo e stringergli una mano piena di calli.",
		"Martelli per fare tenaglie, tenaglie per tenere martelli. Chi ha fatto il primo? Qui nessuno lo dice.",
	},
	["org.muse.w18.tools.014"] = {
		"Gli artigiani tengono un'economia silenziosa di favori che nessuna moneta tocca mai. Il fabbro aggiusta i coltelli del conciatore, il conciatore fa il grembiule al fabbro, e il sarto rattoppa le maniche a tutti e due e dice che sono pari.",
		"Una conciatrice mi ha detto che non paga un fabbro da anni. Lei gli fornisce i grembiuli, lui le tiene affilati i coltelli. Nessuno dei due l'ha mai messo per iscritto.",
	},
	["org.muse.w18.tools.015"] = {
		"Un istruttore di qui ti vende la ricetta per qualche moneta d'argento. Il tocco non è in vendita: quello lo rubi con gli occhi, dall'altro lato della bottega, mese dopo mese.",
		"Tutti gli artigiani dicono la stessa cosa: l'istruttore insegna i passaggi, e le mani imparano il resto rubando a chi è più bravo.",
	},
	["org.muse.w18.tools.016"] = {
		"si ferma al bancone di un'officina dove un piccolo congegno pieno di ingranaggi ticchetta, e fa un passo indietro di scatto quando il ticchettio accelera.",
		"si sporge a guardare un marchingegno di molle e tubi di rame sul tavolo di un goblin, e si sente consigliare allegramente di badare alle dita.",
	},
	["org.muse.w18.tools.017"] = {
		"Occhio al banco. Tutto quello che c'è sopra o taglia, o scotta, o è un anno di lavoro di qualcuno.",
		"Giù le mani dal banco. Affilato, rovente o prezioso: non lo indovini finché non è troppo tardi.",
	},
	["org.muse.w18.tower.001"] = {
		"alza gli occhi verso una lite sulla torre di volo, due viverne che soffiano per lo stesso trespolo finché un addetto non ci infila in mezzo un bastone e il posto se lo prende una terza bestia.",
		"segue una zuffa rumorosa fra le bestie in cima alla torre, ali mezze aperte e code alzate, risolta alla fine da un addetto con un lungo bastone e poca pazienza.",
	},
	["org.muse.w18.tower.002"] = {
		"Sotto la torre delle viverne c'è un pezzo di terra dove la gente del posto non si ferma mai. Le bestie lassù non hanno educazione, ma hanno un'ottima mira.",
		"Chi conosce Orgrimmar gira intorno ai piedi della torre di volo, mai dritto lì sotto. Le viverne in cima non vanno per il sottile su quello che lasciano cadere.",
		"Si capisce chi ha passato del tempo in questa valle dal giro che fa intorno alla torre: una curva larga, occhi in alto, e nessuno che si fermi sotto i trespoli.",
	},
	["org.muse.w18.tower.003"] = {
		"Le viverne sulla torre tengono la coda arcuata in alto come quella di uno scorpione, e noto che gli addetti non voltano mai le spalle al pungiglione.",
		"Corpo di leone, ali di cuoio e un pungiglione in fondo alla coda: una viverna sembra tre cacce cucite in una sola bestia, e gli addetti rispettano ogni pezzo per conto suo.",
	},
	["org.muse.w18.tower.004"] = {
		"nota un viaggiatore che scende dalla torre di volo camminando come un peone dopo un doppio turno, gambe arcuate e una mano premuta sul fondo della schiena.",
		"si scansa per un viaggiatore appena sceso da una viverna, che barcolla giù dalla torre con la dignità di chi finge che il terreno non si muova.",
		"nota che chiunque scenda dalla torre fa lo stesso balletto: una stiracchiata, una smorfia, un primo passo prudente, come per controllare che la valle regga.",
	},
	["org.muse.w18.tower.005"] = {
		"Quando la folla mi fa girare la testa, cerco la torre di volo. Sta sopra la Valley of Strength come il palo di una tenda, e tutto il resto della valle ci sta appeso.",
		"Ti perdi nella calca? Cerca la torre con le bestie in cima. Da lì la banca, la locanda e il portale tornano al loro posto.",
		"La torre di volo è l'unica cosa della valle che non perdi mai di vista. Mi oriento su di lei come i marinai su un promontorio.",
	},
	["org.muse.w18.tower.006"] = {
		"Una viverna è appena passata bassa sopra le bancarelle, e un intero tavolo di pesce secco adesso porta un mantello di polvere. Il pescivendolo agita il pugno verso il cielo con autentico trasporto.",
		"Ogni atterraggio alla torre manda una folata giù sulle bancarelle più vicine. Un mercante si è arreso e ormai vende tutto già impolverato.",
		"I bancarellai vicino alla torre coprono la merce ogni volta che sentono battere ali vicine. Hanno imparato a loro spese cosa fa un atterraggio a un banco di spezie.",
	},
	["org.muse.w18.tower.007"] = {
		"piega la testa all'indietro per guardare un addetto sulla torre che spinge verso il bordo una viverna riluttante con un cosciotto di carne e una sfilza di insulti; la bestia si prende la carne e resta dov'è.",
		"strizza gli occhi verso la torre di volo, dove una viverna ha piantato le quattro zampe e si rifiuta di partire, mentre l'addetto supplica e il passeggero in attesa studia il cielo.",
		"osserva una bestia testarda sulla torre voltare le spalle all'addetto, al passeggero e a tutto il cielo aperto, e accucciarsi invece per un sonnellino.",
	},
	["org.muse.w18.tower.008"] = {
		"Vicino alla torre di volo l'aria sa di muschio animale e di carne vecchia. Le viverne sono magnifiche da lontano, e la lontananza fa parte del fascino.",
		"La torre di volo ha un odore tutto suo: bestia, avanzi, e qualcosa di aspro sotto. Gli addetti non ci fanno più caso da tempo, e sono gli unici.",
	},
	["org.muse.w18.tower.009"] = {
		"Sei viverne su quella torre, e ognuna mi guarda come uno spuntino.",
		"Giuro che le bestie della torre di volo seguono con gli occhi chiunque passi. Con appetito.",
		"Smettetela di fissarmi, voi lassù. Sono tutto nervi e cartilagine.",
	},
	["org.muse.w18.tower.010"] = {
		"Tieni d'occhio l'orlo del canyon e prima o poi ne spunta una viverna, bassa e regolare, con colpi d'ala più lenti di quando è partita. Da qualche parte alle sue spalle c'è tutta la larghezza delle Barrens.",
		"Le viverne che arrivano scavalcando il bordo del canyon volano più basse di quelle che partono, ali pesanti, dritte alla torre come un viaggiatore stanco alla locanda.",
	},
	["org.muse.w18.tower.011"] = {
		"Con questa tempesta le viverne sulla torre stanno rannicchiate, le ali serrate sopra la testa, e partono solo quando gli addetti le trascinano fino al bordo.",
		"Le bestie della torre di volo odiano questa tempesta. Si stringono fra loro come tende bagnate, e ognuna che decolla lo fa con un urlo di protesta.",
	},
	["org.muse.w18.tower.012"] = {
		"alza lo sguardo alla torre di volo col buio, dove le torce ardono lungo i trespoli e gli occhi delle bestie a riposo catturano la luce, una fila di braci che sorvegliano la valle.",
		"si ferma a guardare una viverna piombare dal buio nella luce delle torce della torre, tutta d'un colpo, come se la notte l'avesse lasciata andare.",
	},
	["org.muse.w18.tower.013"] = {
		"Ogni bestia che si alza dalla torre è un messaggio a qualche nostro avamposto: Crossroads, Thunder Bluff, Splintertree. A guardarle partire, mi sembra quasi di vedere accendersi tutta la mappa dell'Orda.",
		"Il nostro cielo è affollato. Viverne verso Crossroads, verso Thunder Bluff, verso gli avamposti di Ashenvale, e poi di nuovo qui con notizie e passeggeri indolenziti. Da terra, guardarle è un conforto.",
	},
	["org.muse.w18.tower.014"] = {
		"sosta accanto a un gruppetto di piccoli orchi e troll che contano le viverne in cerchio sopra la torre, ogni conto più forte del precedente e nessuno uguale all'altro.",
		"sente una frotta di ragazzini gridare a una a una le viverne che passano in alto, e perdere il conto con un ululato quando due si incrociano.",
	},
	["org.muse.w18.tower.015"] = {
		"Non guardarmi così, bestia. Non sono la tua cena e non sono il tuo passeggero.",
		"Calma, lassù. Passo e basta. Nessuno ti fa volare da nessuna parte.",
	},
	["org.muse.w18.tower.016"] = {
		"Chi parte in viverna non ha mai un vero saluto. Un momento prima sta urlando l'ultima cosa che si era scordato di dire, quello dopo è un puntino sopra la parete del canyon.",
		"Salutarsi alla torre di volo è una faccenda frettolosa: due parole, un cenno, e poi il resto della frase si perde da qualche parte sopra le mura.",
		"Ai piedi della torre qualcuno sta ancora salutando con la mano un puntino nel cielo, molto dopo che il puntino ha smesso di essere qualcuno in particolare.",
	},
	["org.muse.w18.trolls.001"] = {
		"Un troll riesce a stare accovacciato sui talloni un'ora intera mentre chiacchiera, le ginocchia all'altezza delle orecchie, comodo come un gatto. L'orco accanto a lui sulla panca si è già mosso sei volte.",
		"Ai Darkspear le panche non servono. Si piegano sui talloni ovunque la chiacchiera si fermi, e ci restano più a lungo di quanto chiunque altro resti da qualsiasi parte.",
		"Accovacciata sui talloni, una troll resiste più di qualunque panca della città.",
	},
	["org.muse.w18.trolls.002"] = {
		"si ferma a guardare una troll che rammenda una rete da pesca su una soglia, tenendone un capo teso con le dita dei piedi e lavorando i nodi con entrambe le mani.",
		"si attarda accanto a un pescatore troll seduto su un gradino, una rete strappata sulle ginocchia, le lunghe dita che chiudono ogni buco più in fretta di quanto l'occhio riesca a seguire.",
	},
	["org.muse.w18.trolls.003"] = {
		"I troll hanno il dono di finire più in alto di tutti: su una sporgenza, una pila di casse, una trave del tetto, le gambe lunghe a penzoloni. Ormai non mi stupisco più quando una voce arriva dall'alto.",
		"Alza gli occhi in qualunque punto della città e c'è una troll appollaiata su qualcosa che nessuno ha costruito per sedersi, a guardare la strada come uno spettacolo allestito apposta per lei.",
		"Da qualche parte sopra di me c'è sempre un troll. Ho smesso di alzare gli occhi per controllare.",
	},
	["org.muse.w18.trolls.004"] = {
		"nota un troll che si lucida le zanne con uno straccio e un pizzico di cenere, lentamente e con cura, come un fabbro che si occupa di un buon filo.",
		"passa accanto a un troll che infila un anello intagliato nuovo su una zanna, girandolo di pochissimo per volta finché non sta come deve.",
	},
	["org.muse.w18.trolls.005"] = {
		"Un troll si è squarciato una mano caricando un carro e ha mandato via il guaritore con un sorriso. Al mio secondo passaggio il taglio era quasi chiuso, e lui lo mostrava a un goblin che voleva saperne il prezzo.",
		"Le ferite dei Darkspear guariscono in fretta, dicono i grunt, e i troll non fanno nulla per smentire la voce. Uno ha appena guardato un taglio fresco sul braccio, ha alzato le spalle ed è tornato a scaricare casse.",
	},
	["org.muse.w18.trolls.006"] = {
		"Un vecchio Darkspear mi ha parlato degli imperi troll di un tempo, delle città di pietra e del sangue su cui si reggevano. Pareva fiero delle pietre e contento di essersi liberato del resto.",
		"Gli anziani della valle dei troll parlano dei vecchi imperi come si parla di uno zio ricco che ha fatto cose terribili. Grandiosi, ammettono. Meglio lasciarli nella giungla.",
	},
	["org.muse.w18.trolls.007"] = {
		"osserva un troll grattare un raptor sotto la mascella finché la bestia socchiude gli occhi e un artiglio posteriore comincia a battere nella polvere.",
		"indugia accanto a una troll che litiga con il suo raptor per una striscia di carne secca, e non saprebbe dire con certezza chi dei due abbia vinto.",
	},
	["org.muse.w18.trolls.008"] = {
		"Dei piccoli troll si esercitano nel lancio contro una zucca legata a un palo. La zucca ha perso ogni round, e il palo non se la passa molto meglio.",
		"Una fila di giovani troll si dà il turno a scagliare bastoncini contro una zucca dipinta, mentre un anziano tiene il conto con tacche nella polvere. La zucca è in pezzi.",
		"Quella zucca sul palo non ha mai avuto speranze contro i giovani troll.",
	},
	["org.muse.w18.trolls.009"] = {
		"Qualcuno ha teso un'amaca tra due pali di una capanna, e dentro c'è un troll che ha portato su dalla costa due ceste di pesce, un piede che penzola, a dondolarsi piano mentre tutta la città gli passa accanto di corsa.",
		"Un troll su un'amaca fra due pali, che oscilla a occhi chiusi, le ceste del pesce vuote impilate sotto. In una città che non si ferma mai, ha trovato l'unico movimento che valga la pena tenersi.",
	},
	["org.muse.w18.trolls.010"] = {
		"Qui nella Valley of Spirits, fili di conchiglie pendono sulle porte delle capanne e sbattono tra loro ogni volta che passa qualcuno. È l'unico suono del mare in una città di pietra.",
		"Conchiglie portate fin quassù dalla costa tintinnano sulle soglie di questa valle. I Darkspear le sfiorano entrando, come altri toccano uno stipite.",
	},
	["org.muse.w18.trolls.011"] = {
		"Quel troll usa la mia spalla come bracciolo. Ho deciso di prenderlo come un complimento.",
		"Scusa tanto. Quella è una spalla, non una ringhiera. Anche se a quanto pare puoi servirtene.",
		"E appoggiati pure. Sono solo una persona.",
	},
	["org.muse.w18.trolls.012"] = {
		"nota una troll che immerge le punte dei capelli in una ciotola di tintura rossa sulla soglia, mentre un'amica regge la ciotola e dispensa pareri.",
		"sosta accanto a due troll su un gradino, uno che pettina un colore nuovo e vivace nella cresta dell'altro con gran concentrazione e moltissimi consigli.",
	},
	["org.muse.w18.trolls.013"] = {
		"Un Darkspear che racconta una storia ha bisogno di tutte e due le mani e di buona parte della strada. Questo mi ha appena mostrato una tartaruga grande come una capanna, e tre passanti hanno dovuto girarci intorno.",
		"Quando i troll parlano, le mani fanno metà del lavoro. Quello vicino alla banca sta descrivendo una lotta con un coccodrillo, e giurerei di vedere l'acqua schizzare.",
	},
	["org.muse.w18.trolls.014"] = {
		"Molto dopo che le forge si sono abbassate per la notte, i troll sono ancora svegli nella loro valle, a parlare piano intorno alle braci. Sembra che la città piaccia loro di più quando finalmente sta zitta.",
		"Quasi tutti gli orchi vanno a dormire presto. I Darkspear no: di notte la loro valle mormora e ride sottovoce, e un solo tamburo tiene compagnia al buio.",
	},
	["org.muse.w18.trolls.015"] = {
		"Ho provato una parola di troll con quella pescatrice. Ha riso così tanto che ha dovuto sedersi. A quanto pare le ho chiesto la mano.",
		"Una sola parola in lingua troll, e tutta la bancarella è piegata dalle risate. Mi dicono che ho detto qualcosa sulla madre di una rana.",
		"Il mio troll va migliorato. La pescivendola si sta ancora asciugando gli occhi.",
	},
	["org.muse.w18.trolls.016"] = {
		"Rallenta! Non tutti hanno le gambe così lunghe.",
		"Camminare accanto a un troll è come inseguire un carro in discesa. Mi arrendo.",
		"Due dei miei passi per uno dei suoi, e dice che me la prendo comoda.",
	},
	["org.muse.w18.truce.001"] = {
		"Quando un orco e un troll non riescono a mettersi d'accordo, mi dicono, a volte chiedono a un tauren di giudicare. Non perché i tauren siano più saggi, dice un grunt, ma perché ci mettono talmente tanto che le parti si calmano aspettando.",
		"Per una lite fra orco e troll il giudice preferito è un tauren, dicono i grunt. Ascolta, annuisce, riflette, riflette ancora, e al momento del verdetto la rabbia l'hanno dimenticata tutti.",
	},
	["org.muse.w18.truce.002"] = {
		"Ogni nostro popolo ha rinunciato a qualcosa per dividere questa città: i troll alle loro isole, i tauren a un cielo largo, gli orchi all'abitudine di fidarsi solo degli orchi. Cerco di tenerlo a mente quando la folla mi dà sui nervi.",
		"Nessuno nella nostra Orda è arrivato qui intero. I Darkspear hanno lasciato le loro isole, i tauren le pianure aperte, gli orchi un mondo intero. Dividere una strada è la cosa più piccola che ci chiediamo a vicenda.",
	},
	["org.muse.w18.truce.003"] = {
		"si sofferma presso un venditore troll che offre a un grunt un assaggio di qualcosa di rosso e lucido; il grunt lo mangia senza batter ciglio, diventa di un verde più scuro, e per puro orgoglio ne compra altri due.",
		"vede un troll porgere a un orco uno spiedino di qualcosa di infuocato; l'orco lo accetta come una sfida fra popoli, e perde con grande dignità.",
		"osserva un orco accettare da un troll qualcosa di infuocato su uno stecco, masticare e combattere tutta la faccenda in silenzio, con gli occhi che lacrimano.",
	},
	["org.muse.w18.truce.004"] = {
		"Orchi e troll sono alleati da abbastanza tempo da insultarsi liberamente. Coi tauren sono ancora educati. A Orgrimmar l'educazione vuol dire un'amicizia che non si è ancora assestata.",
		"Un orco darà a un troll tutti i nomi più rozzi che conosce e poi dividerà la cena con lui. A un tauren dice per favore. Ancora qualche anno, sospetto, e il per favore sparirà.",
	},
	["org.muse.w18.truce.005"] = {
		"Chiedi a un anziano da quanto i popoli di questa città vivono fianco a fianco e lui conta sulle dita, e non gli servono due mani. Una pace così giovane va nutrita ogni giorno.",
		"Gli anziani trattano la pace fra i popoli come un cucciolo appena nato: con orgoglio, e mai del tutto tranquilli, nel caso morda o si ammali.",
		"Gli anziani parlano della pace fra i popoli come i contadini parlano del primo raccolto: con cautela, e non troppo forte, nel caso qualcosa ascolti.",
	},
	["org.muse.w18.truce.006"] = {
		"Tregua con Theramore, guerra in Ashenvale. I grunt sostengono le due cose insieme e non ci vedono problemi.",
		"Pace su un confine, asce sull'altro. Orgrimmar non ci trova niente di strano, e allora perché io sì?",
		"Pace con Theramore, guerra in Ashenvale. Ha il suo daffare, il Capoguerra.",
	},
	["org.muse.w18.truce.007"] = {
		"Tre porte in fila sulla stessa strada: una famiglia troll, un fabbro orco, un Reietto che sta per conto suo. Dividono un barile d'acqua e un comune rancore per il goblin che affitta a tutti e tre. È un trattato, a suo modo.",
		"I vicini, qui, non hanno bisogno di apprezzare le usanze o la cucina gli uni degli altri. Devono mettersi d'accordo su a chi tocca riempire il barile, e su quanto detestano tutti il padrone di casa.",
	},
	["org.muse.w18.truce.008"] = {
		"Guardate: un troll che tiene la porta a un Reietto. Qualcuno se lo segni.",
		"Un tauren ha appena chiesto scusa a un goblin. Il Capoguerra dovrebbe saperlo.",
		"Un orco e un troll d'accordo su un prezzo. Chiamate un araldo.",
	},
	["org.muse.w18.truce.009"] = {
		"Un pescatore Darkspear ripara le reti ogni giorno ai piedi del posto di un grunt. Il troll parla tutto il tempo; il grunt non dice una parola da un'ora. Si vede che sono grandi amici.",
		"Il posto di guardia di un certo grunt ha un troll in dotazione: un vecchio rammendatore di reti che gli chiacchiera su per tutto il turno. Il grunt non risponde mai. Gli mancherebbe moltissimo, se smettesse.",
	},
	["org.muse.w18.truce.010"] = {
		"si ferma per lasciar passare un piccolo corteo: un anziano tauren accanto a un capo orco, diretti alla Valley of Wisdom, senza fretta, mentre i grunt lungo la strada si raddrizzano un poco.",
		"fa largo a un anziano tauren e a un guaritore Darkspear che camminano insieme verso la sala del Capoguerra, immersi nei loro discorsi, mentre la strada si apre intorno a loro senza che nessuno lo chieda.",
	},
	["org.muse.w18.truce.011"] = {
		"I goblin giurano di non appartenere a nessuna parte, e i grunt sorvegliano comunque le loro bancarelle. Neutrale o no, un goblin derubato a Orgrimmar è un problema del Capoguerra.",
		"I goblin si dicono neutrali, e la città li prende in parola fino a un certo punto: le loro bancarelle hanno gli stessi grunt di tutti gli altri. Anche una borsa neutrale ha bisogno di un muro intorno.",
		"La bancarella di un goblin a Orgrimmar ha all'angolo lo stesso grunt di quella di un orco. La neutralità, a quanto pare, gradisce comunque una guardia.",
	},
	["org.muse.w18.truce.012"] = {
		"Nella Valley of Spirits una volta ho visto uno sciamano orco, uno troll e uno tauren seduti allo stesso fuoco, ognuno che chiamava gli spiriti con un nome diverso e annuiva agli altri come se avessero detto tutti la stessa cosa.",
		"Tre sciamani di tre popoli allo stesso fuoco, ognuno con le sue parole per gli spiriti, ognuno ad ascoltare quelle degli altri con pazienza perfetta. Se l'Orda ha un consiglio che non litiga mai, è quello.",
	},
	["org.muse.w18.truce.013"] = {
		"Quattro popoli, un Capoguerra. Difficile da credere, più difficile da spezzare.",
		"Zanne diverse, corna diverse, una sola bandiera. Ecco l'Orda.",
		"Zanne, corna, cappucci, un Capoguerra. In qualche modo regge.",
	},
	["org.muse.w18.truce.014"] = {
		"nota un grunt che interviene, con garbo, quando la folla comincia a stringersi intorno a un Reietto solo; una parola, uno sguardo, e il cerchio si allenta e si disperde.",
		"vede un grunt di passaggio sciogliere il cerchio di occhiate che si stringeva attorno a un Reietto incappucciato davanti a una bancarella: gli si mette semplicemente accanto, finché i curiosi non trovano un altro posto dove stare.",
	},
	["org.muse.w18.undying.001"] = {
		"nota un Reietto seduto su una cassa che si ricuce una giuntura aperta dell'avambraccio con un ago sottile, mentre un bambino troll segue rapito ogni tirata del filo.",
		"passa accanto a una Reietta che si rammenda uno strappo del polso con ago e filo cerato, tranquilla come chi rattoppa una calza, davanti a un pubblico di due piccoli orchi affascinati.",
	},
	["org.muse.w18.undying.002"] = {
		"Un Reietto in locanda ordina un boccale di birra e non lo beve mai. Lo tiene in mano, lo gira ogni tanto, e quando è sgasato lascia una moneta. La compagnia ha un prezzo dappertutto.",
		"C'è una Reietta che viene in locanda, compra una birra e se la tiene davanti, come un biglietto. Nessuno le chiede di andarsene, e nessuno le chiede perché resti.",
	},
	["org.muse.w18.undying.003"] = {
		"Durotar le va molto più a genio di Tirisfal, ha detto una Reietta a un grunt. Aria secca, ha detto. Qui niente diventa molle. Il grunt ha riso, poi ha smesso, poi ha riso un'altra volta, meno convinto.",
		"I Reietti del mercato dicono che il caldo secco fa bene a loro. Nell'umido di Tirisfal, mi ha spiegato uno di loro, si passa metà dell'esistenza a combattere la muffa. Dell'altra metà non ho chiesto.",
	},
	["org.muse.w18.undying.004"] = {
		"sente un lupo ringhiare, il pelo ritto, al passaggio di un Reietto, e vede il Reietto fermarsi, inchinarsi al lupo con grave cortesia e proseguire.",
		"nota come una Reietta si ferma davanti a un lupo che mostra i denti, china il capo come si farebbe con un funzionario minore, e gli gira intorno.",
	},
	["org.muse.w18.undying.005"] = {
		"La speziale reietta della bancarella porta un sacchettino di fiori secchi al colletto. Per cortesia, mi ha detto, verso i vivi. È la cosa più gentile che qualcuno abbia detto al mio naso da molto tempo.",
		"Alcuni dei Reietti che commerciano a Orgrimmar tengono sacchetti di erbe e fiori infilati nel colletto. Una cortesia verso la folla, ha detto uno di loro, con un sorriso che si muoveva poco.",
	},
	["org.muse.w18.undying.006"] = {
		"aspetta dietro un Reietto a una bancarella che conta le monete con dita rigide, una per una, senza fretta, mentre il mercante impara la pazienza.",
		"segue il lavoro lento di una Reietta che pesca i rami dal borsello con dita che non si piegano più del tutto, e li allinea in fila ordinata sul banco.",
	},
	["org.muse.w18.undying.007"] = {
		"Alcuni tauren, dicono i grunt, credono che un giorno i Reietti potranno essere guariti, e parlano con loro come se la cura fosse già in viaggio. I Reietti ascoltano con educazione. È difficile capire cosa ne pensino.",
		"Sul gradino della locanda un guaritore tauren si è seduto accanto a una Reietta e le ha parlato a lungo, con dolcezza. Ho sentito una volta la parola cura. La Reietta non ha risposto, ma non si è nemmeno alzata.",
	},
	["org.muse.w18.undying.008"] = {
		"Guarda l'emissario reietto che percorre la strada con modi impeccabili: un cenno a ogni grunt, una parola a ogni mercante, mai un passo fuori posto. La cortesia, indossata come un'armatura che non cigola.",
		"Di un'educazione quasi dolorosa, i Reietti di passaggio: ogni saluto ricambiato, ogni affare ringraziato. Sembra il loro modo di tenere la folla a una distanza comoda.",
	},
	["org.muse.w18.undying.009"] = {
		"nota che mentre tutta la strada corre al riparo dalla pioggia, un Reietto solitario continua a camminarci in mezzo senza fretta, con l'aria di chi finalmente ritrova un tempo familiare.",
		"vede una Reietta fermarsi sotto la pioggia, alzare il viso per un momento e stringersi nelle spalle, come se Tirisfal le avesse mandato una lettera senza novità.",
	},
	["org.muse.w18.undying.010"] = {
		"Un Reietto si è fermato a guardare dei bambini orchi che si contendono un bastone. Resta lì più a lungo di quanto il gioco meriti, e il suo viso non lascia trasparire nulla.",
		"Ho visto una Reietta guardare una famiglia che mangiava insieme sulla soglia di casa, uno sguardo lungo, senza invidia per quanto ho potuto vedere e senza andarsene. Qualunque cosa ricordasse, l'ha tenuta per sé.",
	},
	["org.muse.w18.undying.011"] = {
		"Quel Reietto mi ha appena detto che ho l'aria stanca. Detto da lui, non so bene come prenderla.",
		"Abbi più cura di te, mi ha detto una Reietta. Credo fosse una battuta. Credo.",
		"Persino i Reietti pensano che abbia bisogno di riposo. Brutto segno.",
	},
	["org.muse.w18.undying.012"] = {
		"A notte fonda la locanda si svuota fino a restare con qualche grunt che russa e una Reietta a un tavolo d'angolo, che legge alla luce di una sola candela. Lei non dorme, mi ha detto qualcuno, e allora legge.",
		"Di notte, quando la città finalmente sonnecchia, i Reietti sono ancora in giro: una figura su un gradino, un'altra all'ultimo tavolo della locanda, a tenere le ore che nessun altro vuole.",
	},
	["org.muse.w18.undying.013"] = {
		"La voce dei Reietti è una cosa secca e sommessa. Quando uno di loro parla a una bancarella, l'orco dietro il banco deve sporgersi, e per una volta in questa città qualcuno abbassa il tono per farsi sentire.",
		"Non ho mai sentito un Reietto gridare. Così i mercanti che trattano con loro imparano ad avvicinarsi e ad ascoltare, ed è forse l'abilità più insolita di Orgrimmar.",
	},
	["org.muse.w18.undying.014"] = {
		"Una Reietta ha comprato un tozzo di pane a una bancarella, l'ha spezzato e ha detto al fornaio che non sapeva di niente. Poi ne ha comprato un altro. Abitudine, ha detto, di quando sapeva di qualcosa.",
		"C'è un Reietto che compra una pagnotta dallo stesso fornaio ogni volta che passa. Non pare che gli piaccia. Il fornaio gliene mette da parte una lo stesso, ancora calda di forno.",
	},
	["org.muse.w18.undying.015"] = {
		"Mai una lite per un tavolo in locanda, se sei un Reietto. Certi vantaggi valgono la morte. Quasi.",
		"Il posto migliore della locanda, e nessuno glielo contende. Ricordatemi come si diventa Reietti? No, lasciate stare.",
		"Nessuno affolla mai il tavolo di un Reietto. Quasi quasi li invidio.",
	},
	["org.muse.w18.undying.016"] = {
		"La Reietta di quella bancarella mi ha consigliato un unguento per le articolazioni rigide. Se qualcuno se ne intende, è lei.",
		"Il miglior consiglio sui dolori che abbia avuto da tempo me l'ha dato un Reietto. A pensarci, ha senso.",
		"Ho preso consigli sulle giunture da un Reietto. Chi meglio di lui?",
	},
	["org.muse.w18.veteran.001"] = {
		"Alcuni vecchi soldati della città marciarono nella guerra che diede fuoco ai raccolti di Lordaeron. Quelle storie non le raccontano. Raccontano quelle dopo, i campi di prigionia e la traversata, come se la loro vita fosse cominciata dietro uno steccato.",
		"Quando parlano, i veterani saltano una guerra intera. Dopo un po' ci fai caso, al buco: i campi, la traversata, le mura, e prima di quello niente che dicano ad alta voce.",
	},
	["org.muse.w18.veteran.002"] = {
		"si ferma a guardare un vecchio orco che insegna un nodo da marinaio a due cuccioli, facendolo piano, e poi rifacendolo a occhi chiusi per dimostrare che si può.",
		"osserva le dita grosse di un anziano trasformare un pezzo di corda in un nodo che nessuna gente di terra conoscerebbe, mentre un cerchio di bambini prova a copiarlo e finisce per legarsi insieme.",
	},
	["org.muse.w18.veteran.003"] = {
		"Ogni vecchio grunt di questa città ha liberato un campo da solo. Dovevano essercene un'infinità, di campi.",
		"Ho conosciuto sei orchi che hanno sfondato di persona lo stesso cancello. Doveva essere un cancello enorme.",
		"Se ogni veterano della locanda ha davvero portato lo stendardo di Doomhammer, a ciascuno sarà toccato un tratto brevissimo.",
	},
	["org.muse.w18.veteran.004"] = {
		"Due vecchi orchi della locanda litigano da anni su chi abbia portato in spalla chi fuori dal campo. Ognuno giura che a portare era lui. Nessuno dei due ha mai proposto che camminassero entrambi.",
		"C'è una coppia di anziani che non riesce a mettersi d'accordo su chi salvò la vita a chi durante la marcia. Quasi ogni giorno la chiudono offrendosi da bere a vicenda, che forse era lo scopo fin dall'inizio.",
	},
	["org.muse.w18.veteran.005"] = {
		"Da lontano, dice un vecchio orco della locanda, sa ancora riconoscere il destriero di un cavaliere dal suono dei ferri. A Orgrimmar i cavalli ferrati si vedono di rado. Lui ascolta lo stesso.",
		"Un anziano trasale a un tintinnio di ferro sulla pietra, poi ride di sé. Ferri di cavallo, spiega. I cavalli dei cavalieri. È solo un peon a cui è caduta una padella.",
	},
	["org.muse.w18.veteran.006"] = {
		"Un grunt con un'ustione lungo tutto un braccio dice di essersela presa da una pentola incendiaria di Kul Tiras, sulla costa di Durotar. La storia si allunga un po' a ogni boccale, e la pentola si ingrandisce.",
		"Un veterano ha una cicatrice chiara da ustione che attribuisce allo sbarco di Kul Tiras. Al terzo bicchiere la flotta che gliel'ha fatta è raddoppiata, e anche la sua parte nel rimandarla a casa.",
	},
	["org.muse.w18.veteran.007"] = {
		"nota che i vecchi soldati nella sala si sono seduti tutti con la schiena al muro e gli occhi sulla porta, senza che nessuno l'abbia stabilito.",
		"si guarda intorno e vede ogni testa grigia sistemata in modo da tenere d'occhio la porta, come se i posti fossero stati decisi molto tempo fa, in un altro luogo.",
	},
	["org.muse.w18.veteran.008"] = {
		"Un vecchio Frostwolf della città dorme sotto tre coperte in un posto caldo come questo. Alterac non gli è mai uscita dalle ossa, dice, e ha smesso di discuterci.",
		"C'è un anziano dei Frostwolf che porta un mantello di pelliccia proprio a Orgrimmar. Le montagne di Alterac gli hanno insegnato il freddo, dice, ed è troppo vecchio per disimparare una lezione così ben fatta.",
	},
	["org.muse.w18.veteran.009"] = {
		"Un anziano Darkspear e un vecchio orco dividono una panca quasi ogni giorno e ripassano la traversata in due lingue, ognuno annuendo alle parti che non capisce. Sembrano d'accordo su tutto.",
		"Su una panca un vecchio troll e un vecchio orco si scambiano ricordi dello stesso viaggio, senza capirsi del tutto. Ogni tanto ridono insieme, e la questione sembra chiusa.",
	},
	["org.muse.w18.veteran.010"] = {
		"In ogni racconto della fondazione c'è un Capoguerra e nessun peon. Un vecchio peon sui gradini della banca rimette le cose a posto con chiunque si fermi: qualcuno doveva pur scavare, e le sue mani ne portano ancora i segni.",
		"Le canzoni ricordano i capi. Un peon curvo ricorda i fossati, e ti mostra i calli sui palmi delle mani per farti vedere chi ha fatto il lavoro.",
	},
	["org.muse.w18.veteran.011"] = {
		"ascolta un giovane grunt descrivere a un capannello lo sbarco di Kul Tiras, e il vecchio accanto a lui che corregge sottovoce un dettaglio ogni tre.",
		"segue un racconto di guerra fatto a gran voce da un giovane orco e, sotto, il commento basso e continuo di un anziano che c'era davvero.",
	},
	["org.muse.w18.veteran.012"] = {
		"Ogni pochi giorni gli stessi tre vecchi orchi si trovano vicino alla banca e per un'ora non dicono quasi niente. Sopravvissuti dello stesso campo, mi ha detto un grunt. Non hanno bisogno di parlare. Controllano solo che ci siano tutti.",
		"Un piccolo gruppo di anziani si ritrova sempre nello stesso angolo, fa un cenno, si siede e se ne va senza dire granché. Stesso campo, stessa traversata, mi dicono. Ancora tre. Ancora abbastanza.",
	},
	["org.muse.w18.veteran.013"] = {
		"A notte fonda i vecchi lo raccontano meglio: i campi, la traversata, i primi muri, a voce bassa davanti al fuoco, a chiunque sia ancora sveglio. Di giorno ne smentirebbero metà.",
		"Vicino alle braci, di notte, la voce di un vecchio grunt si abbassa e la traversata gli esce tutta intera, comprese le parti che di giorno salta. Resto fino alla fine.",
	},
	["org.muse.w18.veteran.014"] = {
		"si ripara il viso dalla sabbia che vola accanto a un vecchio grunt che non socchiude nemmeno gli occhi; ha passato di peggio sul ponte di una nave, borbotta, e con meno appigli.",
		"china la testa contro il vento carico di sabbia, mentre un anziano lì vicino ci resta piantato in mezzo, brontolando che gli spruzzi salati della traversata pungevano molto di più.",
	},
	["org.muse.w18.veteran.015"] = {
		"I primi lupi di Orgrimmar scesero da soli dalle colline, racconta un vecchio addestratore, attirati dai fuochi di cucina, e gli orchi che ricordavano ancora le vecchie usanze andarono loro incontro a mani vuote.",
		"Nei campi gli orchi persero i loro lupi, mi ha detto un anziano, e qui li ritrovarono. O furono i lupi a ritrovare loro: non ne è mai stato sicuro, e non crede che importi.",
	},
	["org.muse.w18.veteran.016"] = {
		"Su, racconta un'altra volta la traversata. Quella col serpente marino.",
		"Siediti, il prossimo boccale lo offro io. Basta che la flotta di Kul Tiras resti grande come l'altra volta.",
	},
	["org.muse.w18.veteran.017"] = {
		"si scosta per lasciar passare un vecchio orco che cammina dritto dritto con una stampella, e vede ogni grunt sul suo percorso fargli lo stesso breve cenno.",
		"fa spazio a un anziano con una gamba sola che avanza a grandi slanci sulla stampella; le guardie davanti a cui passa si raddrizzano un poco, e lui fa finta di non accorgersene.",
	},
	["org.muse.w18.veteran.018"] = {
		"Mai discutere con un vecchio grunt sulla traversata. Perdi, e poi te la risenti tutta dal principio.",
		"Ho fatto una domanda sola a un veterano su Kul Tiras. Due boccali dopo eravamo ancora alla prima nave.",
		"Regola della locanda: non correggere la guerra di un vecchio soldato. La ricombatte da capo, più piano.",
	},
	["org.muse.w18.voodoo.001"] = {
		"Un guaritore troll rimette a posto il dito rotto di un grunt, lo fascia, e poi continua a canticchiarci sopra per un bel pezzo, anche a nodo stretto. Il grunt aspetta. Nessuno pianta in asso un Darkspear a metà di una melodia.",
		"Ai guaritori Darkspear basta un attimo per sistemare un dito, poi ci canticchiano sopra molto più a lungo. Il paziente si sorbisce tutta la melodia: andarsene prima, dicono i grunt, manda all'aria il lavoro.",
		"Stecca, impiastro, nodo, e poi il canto, che è la parte lunga. Il grunt sullo sgabello del guaritore ha l'aria di chi preferirebbe farsi rompere di nuovo il dito.",
	},
	["org.muse.w18.voodoo.002"] = {
		"osserva una stregona vudù che pesta qualcosa di secco in una ciotola di pietra, aggiungendo pizzichi senza guardare, come se dosasse a orecchio, dal suono del pestello.",
		"si sofferma accanto a un troll chino su un mortaio, che aggiunge un pizzico di questo e di quello a orecchio, ascoltando la macinatura come un cuoco ascolta una pentola.",
	},
	["org.muse.w18.voodoo.003"] = {
		"Ogni rimedio troll che mi hanno offerto ha un sapore peggiore del male che doveva curare. Le guaritrici dicono che è così che capisci che funziona.",
		"La medicina dei troll ha una sola regola, per quanto ho capito: se non ti fa storcere la bocca, non è abbastanza forte.",
		"Ho chiesto a una guaritrice Darkspear perché tutte le sue cure sappiano di palude. Mi ha risposto che la malattia deve aver voglia di andarsene.",
	},
	["org.muse.w18.voodoo.004"] = {
		"No, grazie, il mal di testa me lo tengo. Ho visto cosa ci va dentro, nella cura.",
		"Molto gentile. Credo che resterò {g:malato|malata} ancora un po', se per te è uguale.",
		"In quella cura c'è una zampa. Guarisco da {g:solo|sola}, grazie.",
	},
	["org.muse.w18.voodoo.005"] = {
		"Il fumo sopra le capanne dei troll non è un fumo solo. Qualcosa di dolce da una soglia, qualcosa di amaro dalla seguente, e da una terza una foschia che mi punge gli occhi e manda i pensieri a spasso senza di me.",
		"Ogni capanna della Valley of Spirits brucia le sue erbe, e i fumi non si mescolano mai del tutto: dolce, poi aspro, poi qualcosa che fa pendere un po' la strada.",
	},
	["org.muse.w18.voodoo.006"] = {
		"Una guaritrice troll interroga il suo apprendista facendogli annusare una foglia. Se sbaglia, la deve masticare. Sta migliorando a vista d'occhio.",
		"Le lezioni nelle capanne dei guaritori sono brevi: la maestra porge una foglia secca, l'allievo la nomina, e chi sbaglia se la mangia. Imparano in fretta.",
	},
	["org.muse.w18.voodoo.007"] = {
		"Metà delle erbe che un guaritore Darkspear ha imparato a usare cresce su isole che i troll non tengono più. Al loro posto hanno imparato le spine e le radici secche di Durotar, e ci brontolano sopra come un cuoco in una cucina presa in prestito.",
		"I guaritori troll curano con quello che passa Durotar: spine, cactus, radici amare. Quello che vorrebbero davvero cresce sulle Echo Isles, e lo dicono, ogni volta che una cura riesce più debole del dovuto.",
	},
	["org.muse.w18.voodoo.008"] = {
		"Una troll a una bancarella di amuleti mi ha chiesto, con molta dolcezza, un capello solo, per un amuleto. Ho detto di no. Lei è sembrata soddisfatta, come se avessi superato una prova.",
		"Un capello, ha detto la vecchia troll, uno solo, per l'amuleto. Non gliel'ho dato. Lei ha riso: nella sua valle, ha detto, avrei vissuto a lungo.",
	},
	["org.muse.w18.voodoo.009"] = {
		"I guaritori troll portano al collo tutto quello che sanno: denti, perline, sacchetti, qualcosa di essiccato. Una cura per ciascuno, mi hanno detto. I più vecchi riescono a malapena ad alzare la testa.",
		"Conta gli amuleti al collo di una guaritrice Darkspear e saprai quante cure si porta dietro. Le più anziane tintinnano quando camminano, come uno scaffale di barattoli.",
		"Ai guaritori troll più giovani bastano uno o due ninnoli su un cordino. I più anziani, un piccolo museo che sbatacchia, e ogni pezzo una volta ha tenuto in vita qualcuno.",
	},
	["org.muse.w18.voodoo.010"] = {
		"Se un troll ti offre un infuso, chiedi cosa c'è dentro. Poi bevilo comunque. Rifiutare è l'unica cosa peggiore.",
		"Regola della valle dei troll: chiedi cosa c'è nella tazza, annuisci alla risposta, e bevi.",
	},
	["org.muse.w18.voodoo.011"] = {
		"guarda una guaritrice troll legare un filo al polso di un grunt e poi dargli una bella pacca sul polso, che a quanto pare è la parte importante.",
		"vede una Darkspear annodare un cordino al braccio di un grunt, borbottarci sopra e chiudere con uno schiaffetto secco; il grunt annuisce come se così fosse tutto a posto.",
	},
	["org.muse.w18.voodoo.012"] = {
		"Sa come se qualcuno ci avesse bollito dentro una giungla intera. Speriamo sia una medicina.",
		"Quello che c'è in quella pentola una volta era mezza giungla. Auguri al paziente.",
		"In quel fumo ci sono più foglie che in tutta Ashenvale. Qualcuno lo stanno curando, o insaporendo.",
	},
	["org.muse.w18.voodoo.013"] = {
		"Fuochi Darkspear in una città di orchi. Le erbe sono sbagliate, erbe di Durotar, ma il fumo sale nel modo giusto, e per un momento potrei essere sulle isole.",
		"Erbe sbagliate, fumo giusto. Chi brucia quella roba nella Valley of Spirits conosce il modo antico, anche con le povere foglie di Durotar.",
	},
	["org.muse.w18.voodoo.014"] = {
		"Di notte le capanne della Valley of Spirits risplendono da dentro, e ogni faccia dipinta sui pali sembra avere qualcuno in piedi dietro.",
		"Col buio la valle dei troll è tutta fuocherelli e sagome che si muovono, e le maschere sui pali sembrano molto più sveglie che di giorno.",
	},
	["org.muse.w18.voodoo.015"] = {
		"allunga una mano verso un mazzo di foglie a seccare e si becca un colpo di mestolo sulle nocche da una vecchia troll che non alza nemmeno gli occhi.",
		"si china ad annusare una rastrelliera di erbe a seccare e viene {g:scacciato|scacciata} da una guaritrice troll con un gesto della mano e una parola che non ha bisogno di traduzione.",
	},
	["org.muse.w18.voodoo.016"] = {
		"Nessuno fa la cresta a uno stregone vudù. Perfino i goblin pagano quei banchi per intero, puntuali, e con un sorriso nervoso.",
		"Gli stregoni vudù sono gli unici mercanti di Orgrimmar che non contrattano mai. Non ne hanno bisogno. Nessuno osa cominciare.",
	},
	["org.muse.w18.voodoo.017"] = {
		"I Darkspear mi fissano più per curiosità che per odio. Le loro liti più vecchie sono con altri troll. Per loro sono solo una stranezza in più che gli orchi hanno lasciato entrare.",
		"I troll della Valley of Spirits mi osservano come si osserva un uccello strano: con interesse, un po' divertiti. Sono i grunt alle loro spalle che tengo d'occhio.",
	},
	["org.muse.w18.voodoo.018"] = {
		"osserva una guaritrice troll annusare il braccio fasciato di un grunt, storcere il naso e sfasciare tutto per ricominciare da capo, sorda a ogni protesta.",
		"vede una vecchia Darkspear sollevare la medicazione di un grunt, annusarla e schioccare la lingua così forte che il grunt comincia a chiedere scusa al proprio braccio.",
	},
	["org.muse.w18.voodoo.019"] = {
		"Ci sono {g:entrato|entrata} con un taglio. Ne sono {g:uscito|uscita} con una cura, un amuleto e una predica. Il taglio bruciava meno.",
		"Guaritori troll: ti chiudono la ferita e poi ti spiegano, per filo e per segno, come ti farai la prossima.",
	},
	["org.muse.w18.wander.001"] = {
		"Quasi nessuno nella Valley of Strength è dove vuole arrivare. Sono tutti in mezzo: fra la strada e la banca, fra la banca e l'istruttore, fra l'istruttore e la prossima strada.",
		"Gran parte della gente che incrocio è a metà strada verso altro. Orgrimmar è il posto dove stai mentre decidi dove andare, ed è sempre piena.",
	},
	["org.muse.w18.wander.002"] = {
		"scavalca un viaggiatore profondamente addormentato su un mucchio di zaini accanto alla banca, che russa in mezzo al frastuono come se la strada lo cullasse ancora.",
		"lancia un'occhiata a un viaggiatore che dorme seduto contro un muro, braccia conserte sullo zaino, gli stivali ancora incrostati di qualche strada lontana.",
		"passa in punta di piedi, quasi senza volerlo, accanto a un girovago che si è addormentato su una cassa in mezzo al traffico, bocca aperta e cappello su un occhio.",
	},
	["org.muse.w18.wander.003"] = {
		"Gli zaini escono da Orgrimmar pieni zeppi e rientrano piatti. La città li riempie, la strada li svuota, e un intero mercato vive della differenza.",
		"Escono tutti dal portale gonfi come otri e rientrano più tardi con una coperta arrotolata e una storia. Orgrimmar vende il gonfiore.",
	},
	["org.muse.w18.wander.004"] = {
		"Di tutte le facce che ho incrociato nell'ultima ora, probabilmente non ne rivedrò nessuna. La folla resta della stessa grandezza e cambia ogni faccia che contiene.",
		"In una città dove tutti arrivano o partono, smetti di aspettarti di incontrare due volte lo stesso sconosciuto. Ogni cenno di saluto diventa un piccolo addio.",
		"Ogni sconosciuto che mi sfiora va verso una strada che non prenderò. Prima che arrivi alla banca, la folla sarà cambiata tutta.",
	},
	["org.muse.w18.wander.005"] = {
		"Metà di questa valle è appena arrivata e l'altra metà sta partendo. Mi sa che qui non si ferma nessuno tranne me.",
		"Chi arriva, chi parte. Qualcuno dovrebbe stare qui a salutare. Va bene, lo faccio io.",
	},
	["org.muse.w18.wander.006"] = {
		"si ferma davanti al carretto di un ambulante colmo degli avanzi di una dozzina di strade: una conchiglia, una perlina spezzata di centauro, un vasetto di miele di Ashenvale, un calzino spaiato.",
		"fruga nel vassoio di cianfrusaglie di un girovago, stese su una coperta a bordo strada; raccolte, dice il venditore, su tutte le strade fra il canyon e il mare.",
	},
	["org.muse.w18.wander.007"] = {
		"Qui nella Valley of Strength l'andirivieni ha i suoi rumori: ruote al portale, ali sulla torre, la porta della banca che non smette mai del tutto di dondolare.",
		"Chiudo gli occhi in questa valle e capisco lo stesso chi parte e chi arriva: ruote e zoccoli verso il portale, colpi d'ala in alto, stivali sui gradini della banca.",
		"Questa valle è il gradino d'ingresso della città, e non smette mai di scricchiolare: carri, kodo, ali, porte, e cento voci che chiedono la strada.",
	},
	["org.muse.w18.wander.008"] = {
		"Una città non è solo la gente che ci sta dentro. È anche chi ne è partito, sparso per Kalimdor. Orgrimmar è molto più grande delle sue mura, e quasi tutta è fuori, per strada.",
		"Conta quelli partiti da qui che sono ancora là fuori, negli avamposti, nei campi, ai guadi, e Orgrimmar è la città più grande del mondo. Solo che quasi tutta si trova altrove.",
	},
	["org.muse.w18.wander.009"] = {
		"aggira un capannello di viaggiatori che litigano su una mappa stesa su una cassa, quattro dita puntate verso quattro uscite diverse della città.",
		"ascolta per un momento un gruppetto di avventurieri che discute a gran voce su quale strada prendere, e se ne va prima che scelgano la peggiore.",
		"coglie un pezzo di una lite accesa fra due girovaghi sulla via più breve per Crossroads; hanno torto tutti e due, e tutti e due ne sono sicuri.",
	},
	["org.muse.w18.wander.010"] = {
		"I tauren arrivano a piedi da Thunder Bluff, attraverso tutte le Barrens, e sembrano più tranquilli di chi ha cavalcato. Mi piacerebbe sapere il trucco.",
		"È appena arrivato un tauren da Mulgore, a giudicare dalla polvere, ed è il viaggiatore meno stanco della valle. Non hanno fretta, e la strada pare portargli rispetto.",
		"I tauren che vengono qui a piedi da Mulgore arrivano come sono partiti, lenti e imperturbabili, mentre chi ha avuto fretta sulla strada entra zoppicando dopo di loro.",
	},
	["org.muse.w18.wander.011"] = {
		"Nessuno si accorgerà di quando lascio la città, così come io non mi accorgo dei cento altri che partono con me. C'è uno strano conforto nell'essere parte della marea.",
		"Quando me ne andrò, la folla si richiuderà sul punto dove stavo come se non ci fossi mai {g:stato|stata}. Scopro che mi piace. Rende facile partire.",
	},
	["org.muse.w18.wander.012"] = {
		"Se parto adesso arrivo a Razor Hill per cena. Se parto dopo cena arrivo alla locanda. So già da che parte pendo.",
		"Strada subito, o prima lo stufato? Lo stufato è più vicino, e non ha mai teso un agguato a nessuno.",
		"La strada può aspettare. Lo stufato no. Semplice aritmetica.",
	},
	["org.muse.w18.wander.013"] = {
		"Anche di notte c'è sempre qualcuno che arriva dalla strada: una torcia che sale ondeggiando dal buio di Durotar, un richiamo stanco verso il portale, e la risposta dei grunt.",
		"I viaggiatori continuano ad arrivare col buio, piccole luci che salgono la strada una dopo l'altra. La città li accoglie senza storie, come se aspettasse proprio ognuno di loro.",
	},
	["org.muse.w18.wander.014"] = {
		"vede un viaggiatore segnato dalla strada che viene notato dai gradini della banca da qualcuno che aspettava da un pezzo; si incontrano in mezzo alla valle con un abbraccio che solleva uno dei due da terra.",
		"rallenta davanti a un incontro in mezzo alla folla: due viaggiatori arrivati da strade diverse che si riconoscono a metà passo e bloccano tutto il traffico della valle per darsi pacche sulle spalle.",
	},
	["org.muse.w18.wander.015"] = {
		"Nei campi nessuno andava o veniva. Adesso guardo la mia gente entrare e uscire da questo portale come le pare, e ogni viaggiatore distratto è una piccola vittoria che nessuno si ricorda di festeggiare.",
		"La mia gente ha passato anni dietro i recinti, dove l'unica strada portava a un cortile di lavoro. Qui il portale è aperto e gli orchi se ne vanno per strada per capriccio. Non credo che i giovani sappiano che regalo sia.",
	},
	["org.muse.w18.wander.016"] = {
		"Ogni strada che prendo comincia da questo portale e, con un po' di fortuna, ci finisce. Tenetemelo, grunt.",
		"Io vado. Tenete aperto il portale e caldo lo stufato. Mi serviranno tutti e due.",
	},
	["org.muse.w18.whisper.001"] = {
		"Orgrimmar mostra al mondo la sua porta e tiene la scala di servizio nella Cleft. Una città con la sola porta d'ingresso sarebbe una città molto onesta, e per poco tempo.",
		"Ogni fortezza ha una porta per gli ospiti e una scala per tutto il resto. Gli ospiti di Orgrimmar vedono il portone. Il resto scende nella Cleft e non chiede di essere visto.",
		"I visitatori ricordano la porta, la banca, la grande sala. Alla città va benissimo così. Quello che non mostra, lo tiene un piano più sotto.",
	},
	["org.muse.w18.whisper.002"] = {
		"Un goblin, nella Cleft, vende notizie un tanto a parola. I pettegolezzi costano poco, i nomi si pagano a parte, e quello che ha sentito su di te non te lo vende a nessun prezzo.",
		"Le voci, nella Cleft, hanno un prezzo corrente: un rame per quello che sanno tutti, argento per quello che sanno in pochi, e per quello che più vorresti sentire una cortese scrollata di testa.",
	},
	["org.muse.w18.whisper.003"] = {
		"Ci sono angoli di questa città davanti ai quali le pattuglie allungano un po' il passo. Nessuno ha dato l'ordine. Lo sanno tutti.",
		"Osserva abbastanza a lungo i grunt nei loro giri e vedrai dove il passo si fa più lungo: una soglia qua, un vicolo là. Orgrimmar ha posti che sceglie di non guardare.",
		"Ogni pattuglia ha un percorso, e ogni percorso ha un buco. A Orgrimmar i buchi sono vecchi quanto i percorsi.",
	},
	["org.muse.w18.whisper.004"] = {
		"sorprende un biglietto piegato che passa di mano in mano su una soglia, svelto come un gioco di prestigio, e trova qualcos'altro da guardare, come tutti lì intorno.",
		"intravede un pezzetto di carta scivolare da una manica all'altra mentre due sconosciuti si incrociano, e scopre un improvviso interesse per il muro più vicino.",
	},
	["org.muse.w18.whisper.005"] = {
		"Qualcuno, a Orgrimmar, fa i lavori che un Capoguerra non può farsi vedere ordinare. I grunt non dicono chi, e stanno molto attenti a non dirlo.",
		"Ogni sovrano ha bisogno di qualche mano che non stringe mai la sua in pubblico. Nella Cleft si mormora che Orgrimmar ne abbia. Il mormorio si ferma lì.",
	},
	["org.muse.w18.whisper.006"] = {
		"I grunt borbottano che la Burning Blade ha orecchie anche in superficie, al mercato e forse più vicino al Capoguerra di quanto piaccia a chiunque. Nessuno lo dice ad alta voce. È così che capisci che ci credono.",
		"Nemici dentro le mura, così si dice: amici della Burning Blade che vendono pane e lucidano armature fra la gente onesta. Da quando l'ho sentito, ogni faccia amica mi chiede un momento in più per essere letta.",
	},
	["org.muse.w18.whisper.007"] = {
		"Non ho visto niente. Sono {g:bravissimo|bravissima} a non vedere le cose.",
		"Visto cosa? Stavo ammirando la roccia. Bella roccia.",
		"Qualunque cosa fosse, io non c'ero. Non c'era nessuno.",
	},
	["org.muse.w18.whisper.008"] = {
		"Certe porte della Cleft si aprono su stanze così profonde che la luce delle torce si arrende prima della parete di fondo. Non ho mai visto uscire nessuno da una di quelle. E nemmeno entrare.",
		"Nella roccia della Cleft ci sono stanze scavate che vanno più indietro di quanto arrivi qualunque torcia. Le porte restano aperte, come a dire: vieni a vedere. Nessuno ci va.",
	},
	["org.muse.w18.whisper.009"] = {
		"I Darkspear tengono i loro segreti sotto gli occhi di tutti: detti ad alta voce, in mezzo alla strada, in una lingua che quasi nessun altro capisce. L'aperto è il miglior nascondiglio della città.",
		"Due troll nella Valley of Spirits discutono di qualcosa di chiaramente privato a voce altissima, nella loro lingua, con un grunt piantato lì accanto. Nessuno ha mai avuto meno bisogno di una cantina.",
	},
	["org.muse.w18.whisper.010"] = {
		"Qualunque cosa tu venda, preferisco non sapere a cosa serve.",
		"Che bella boccetta. No, non dirmelo. Dormo meglio senza saperlo.",
	},
	["org.muse.w18.whisper.011"] = {
		"Niente, nella Cleft, ha il prezzo attaccato. Chiedi, il venditore ti squadra, e il prezzo dipende da quello che vede.",
		"Ogni affare, nella Cleft, ha un prezzo fatto a occhio: gli stivali, la borsa, la faccia che fai. Ho imparato ad avere l'aria annoiata.",
	},
	["org.muse.w18.whisper.012"] = {
		"si volta con la sensazione di essere {g:osservato|osservata} e trova soltanto una soglia vuota, e dentro una porta che si chiude piano, senza un rumore.",
		"si guarda alle spalle senza un motivo preciso, giusto in tempo per vedere una tenda posarsi su una soglia che un attimo prima era immobile.",
	},
	["org.muse.w18.whisper.013"] = {
		"Anche una città così rumorosa custodisce qualche silenzio. La Cleft è uno. La pozza dei troll è un altro. Fra i due, Orgrimmar pensa.",
		"Orgrimmar ha due posti tranquilli, e non potrebbero somigliarsi meno: l'acqua ferma della Valley of Spirits e il buio della Cleft. Uno custodisce la calma. L'altro i segreti.",
	},
	["org.muse.w18.whisper.014"] = {
		"La Cleft accoglie chiunque il resto della città preferisca non guardare: il velenaio, chi evoca demoni, l'orco con un passato di cui nessuno parla. Non chiede niente. È una specie di misericordia anche questa.",
		"Su per le strade ti giudicano dal clan, dalle cicatrici, dalla compagnia. Giù nella Cleft nessuno chiede. Per qualcuno è l'unico benvenuto che Orgrimmar abbia.",
	},
	["org.muse.w18.whisper.015"] = {
		"A una stregona vudù è sfuggito che alcune pietre dipinte della Valley of Spirits non segnano niente di sacro. Segnano cose sepolte lì che devono restare dove sono. Poi ha riso, e non ha voluto dire se scherzasse.",
		"Certi segnali dei troll nella Valley of Spirits, lasciano intendere i Darkspear, stanno sopra cose che è meglio lasciare sotto terra. Non dicono quali. Però ci girano intorno.",
	},
	["org.muse.w18.whisper.016"] = {
		"Perché sussurrano tutti? Ah. Quaggiù si parla così.",
		"Ho salutato a voce normale e tre cappucci si sono girati. Lezione imparata.",
	},
	["org.muse.w18.whisper.017"] = {
		"Gli incappucciati della Cleft non mi preoccupano granché. È il tipo allegro vicino al banco delle candele, quello che non ha niente da nascondere, che mi fa controllare la borsa.",
		"Laggiù sembrano tutti sinistri, tranne un vecchio orco sorridente che rammenda un sacco. È lui quello a cui gli altri girano alla larga.",
	},
	["org.muse.w18.whisper.018"] = {
		"si vede offrire, sottovoce, qualcosa avvolto in un panno da uno sconosciuto della Cleft, che sparisce in una soglia prima che si possa dare una risposta.",
		"sente un tocco leggero al gomito, nella Cleft, si gira e trova un incappucciato che porge un piccolo fagotto, e che si dilegua al primo cipiglio.",
	},
	["org.muse.w18.whisper.019"] = {
		"Se qualcuno lo chiede, nella Cleft non ci sono mai {g:stato|stata}. Nessuno lo chiederà. È questo il bello.",
		"Dove sono {g:stato|stata}? In giro. Da qualche parte con poche torce. Prossima domanda.",
	},
	["org.muse.w18.zeppelin.001"] = {
		"I goblin fanno salire chiunque sui loro dirigibili senza chiedere un soldo. Di tutta la faccenda degli zeppelin, è la cosa che mi preoccupa di più.",
		"Un aggeggio goblin su cui si viaggia gratis. Li conosco, i goblin. Niente di quello che fanno è gratis, a meno che il prezzo non sia nascosto dove non ho ancora guardato.",
		"Passaggio gratuito su uno zeppelin goblin. In quella frase c'è un trucco nascosto, e vorrei scovarlo prima che i miei piedi si stacchino da terra.",
	},
	["org.muse.w18.zeppelin.002"] = {
		"fa spazio a un viaggiatore che arriva dal lato dei dirigibili un po' verdognolo, si siede sul primo gradino libero e si rifiuta di parlarne.",
		"guarda due viaggiatori appena scesi da uno zeppelin entrare dal portale con i passi cauti di chi non si fida ancora del terreno.",
		"si scansa per qualcuno appena sceso da un dirigibile, che si ferma in mezzo alla strada, pianta bene i piedi e aspetta che il mondo stia fermo.",
	},
	["org.muse.w18.zeppelin.003"] = {
		"I Reietti che scendono dal dirigibile di Undercity entrano a Orgrimmar strizzando gli occhi, il cappuccio tirato avanti, come se tutto questo rosso fosse un po' troppo chiassoso da guardare.",
		"Si capisce subito chi arriva da Tirisfal: cappucci alzati, teste basse, una smorfia davanti a tanto rosso. L'umido di Lordaeron gli resta ancora attaccato ai mantelli.",
		"Due Reietti sono appena entrati dal lato dei dirigibili, hanno alzato gli occhi alle pareti del canyon e si sono calati il cappuccio sul viso nello stesso istante.",
	},
	["org.muse.w18.zeppelin.004"] = {
		"Ho perso il dirigibile per una lunghezza di corda. Quindi: più tempo per il pane, e per lamentarmi.",
		"Lo zeppelin è partito mentre ero ancora sulle scale. Il goblin mi ha salutato con la mano. Credo si sia divertito.",
		"Partito, e io con un piede sull'ultimo gradino. Sarà per il prossimo. Qualcuno mi venda una torta.",
	},
	["org.muse.w18.zeppelin.005"] = {
		"Un peone del portale, ormai brizzolato, giura che non metterà mai piede sul dirigibile dei goblin: una cosa che sta su con aria calda e promesse, dice, viene giù appena finisce l'una o le altre.",
		"Chiedi agli orchi del portale cosa tiene in aria uno zeppelin e avrai due risposte: l'ingegno dei goblin, o le loro vanterie. In tutti e due i casi, convengono, è soprattutto aria fritta.",
	},
	["org.muse.w18.zeppelin.006"] = {
		"I grunt di stanza a Grom'gol rientrano dal portale più magri, più scuri e più nervosi, con storie di giungla che crescono a ogni tavolo della locanda.",
		"Chi scende dal dirigibile di Grom'gol si porta dietro Stranglethorn: una storia di tigri, una di febbri, e nelle cuciture degli stivali un fango che non è rosso.",
		"Quelli appena arrivati da Grom'gol si riconoscono da come continuano a darsi schiaffi sulla nuca, anche se a Durotar non c'è niente che punga come nella giungla.",
	},
	["org.muse.w18.zeppelin.007"] = {
		"sente un goblin che puzza di grasso da motore contrattare un sacco di bulloni, poi maledire la lunga camminata fino alla torre del dirigibile.",
		"aggira un goblin unto d'olio fino ai gomiti, che compra corda a matasse e si lamenta che questa città l'ha costruita chiaramente gente che non ha mai dovuto portare niente fino a uno zeppelin.",
		"cammina dietro a un goblin della torre dei dirigibili che esce barcollando dal Drag con una matassa di corda per spalla, maledicendo per nome ogni rampa della città.",
	},
	["org.muse.w18.zeppelin.008"] = {
		"Oltre il portale i dirigibili vanno in due direzioni: a nord, verso i campi grigi e umidi di Tirisfal; a sud, verso il verde fumante di Stranglethorn. Dal canyon sembrano voci su altri mondi.",
		"Uno zeppelin per la terra dei morti, uno per la giungla. Qualunque prendi, promettono i goblin, prima di atterrare avrai nostalgia della roccia rossa.",
	},
	["org.muse.w18.zeppelin.009"] = {
		"Il goblin del dirigibile mi ha detto che in questa stagione non è caduto neanche una volta. Della stagione scorsa non ho chiesto.",
		"Neanche uno schianto da mesi, ha detto il goblin, fierissimo. È il genere di primato che preferirei non sentirmi spiegare.",
	},
	["org.muse.w18.zeppelin.010"] = {
		"Buona parte di questa folla è solo di passaggio, diretta ai dirigibili. Prima che il mio pane diventi raffermo, qualcuna di queste facce camminerà per Lordaeron.",
		"Un viaggiatore su due nella Valley of Strength ha lo zaino legato per lo zeppelin. Per loro Orgrimmar è una tappa: un pasto, un salto in banca, e via oltre il mare.",
	},
	["org.muse.w18.zeppelin.011"] = {
		"sente un goblin gridare dal portale che il dirigibile per la giungla non aspetta nessuno, e guarda tre viaggiatori mettersi a correre, ancora con la torta in mano.",
		"segue divertito con lo sguardo un ritardatario con uno stivale mezzo slacciato che corre verso il portale, mentre si sparge la voce che lo zeppelin sta per partire.",
	},
	["org.muse.w18.zeppelin.012"] = {
		"Le vedette sulle mura dicono di riuscire a seguire il dirigibile diretto a nord fin sopra l'acqua, finché diventa un seme, poi un puntino, poi un'ipotesi.",
		"Un grunt che fa la guardia sulle mura mi ha detto che i dirigibili, quando partono, sembrano scarafaggi grassi, e una volta sul mare non sembrano più niente.",
	},
	["org.muse.w18.zeppelin.013"] = {
		"Il dirigibile per la giungla è arrivato? No? Allora c'è tempo per un'altra scodella.",
		"Qualcuno mi avvisi quando attracca lo zeppelin. Fino ad allora, mangio.",
		"Ancora niente zeppelin? Bene. Questo stufato merita tutta la mia attenzione.",
	},
	["org.muse.w18.zeppelin.014"] = {
		"Un goblin dei dirigibili ha passato un bel po' a spiegarmi come funziona il motore. Ho capito 'pressione', 'bum' e 'di solito', e l'ordine non mi è piaciuto.",
		"Ho chiesto a un goblin dello zeppelin come fa quell'affare a stare su. La risposta era piena di numeri e finiva con 'quasi sempre'. Ho smesso di chiedere.",
		"L'ingegneria goblin spiegata da un goblin: tre parti d'orgoglio, due di numeri, e una parte piccola che gli fa abbassare la voce.",
	},
	["org.muse.w18.zeppelin.015"] = {
		"Un dirigibile per Undercity, uno per Grom'gol. L'Orda è sparsa su due continenti e un mare, e sono i motori dei goblin a ricucirla.",
		"I nostri alleati a Lordaeron stanno al di là del mare, e a tenerci vicini è un pallone goblin che va e viene. Strane cuciture per l'Orda, ma tengono.",
	},
	["org.quest_complete.w18.after.001"] = {
		"aggancia i pollici alla cintura e resta lì un momento, con le mani che non hanno più niente da reggere.",
		"lascia penzolare le mani lungo i fianchi, come se anche loro avessero finito il turno.",
		"infila le mani vuote nella cintura per un momento, come se anche loro si fossero meritate una pausa.",
	},
	["org.quest_complete.w18.after.002"] = {
		"I passi subito dopo aver consegnato un lavoro sembrano sempre presi in prestito. Nessuno mi aspetta da nessuna parte, e i piedi non ci credono del tutto.",
		"Per un po' non devo niente e nessuno mi chiede niente. I piedi, però, continuano a cercarsi una commissione.",
		"Nessuno mi aspetta. Le gambe ci mettono più della testa a capirlo.",
	},
	["org.quest_complete.w18.after.003"] = {
		"Dunque. Cosa si fa in questa città con le mani libere?",
		"Mani vuote. Avevo perso l'abitudine.",
		"Niente da reggere. Qualcuno mi dia qualcosa, svelto, prima che mi metta a fare il giocoliere.",
	},
	["org.quest_complete.w18.after.004"] = {
		"si rimette a posto la cinghia sulla spalla e lascia che il frastuono della città riempia il posto rimasto vuoto.",
		"si sistema lo zaino più in alto sulla schiena, ora che dentro c'è soltanto roba sua.",
		"dà allo zaino un colpetto e una pacca, come si fa con una bestia che si è comportata bene.",
	},
	["org.quest_complete.w18.after.005"] = {
		"Appena il lavoro mi esce dalle mani, ogni dolore che avevo ignorato alza la mano per parlare.",
		"Adesso che è finita, le ginocchia hanno deciso di presentare i loro reclami. In ordine. A voce alta.",
		"Buffo come le spalle aspettino la fine di un lavoro per cominciare a fare male. Molto premurose.",
	},
	["org.quest_complete.w18.after.006"] = {
		"si siede sul primo gradino di pietra che trova, senza altra ragione che questa: per una volta nessuno aspetta.",
		"si lascia andare su una bassa sporgenza di roccia e guarda la città che va avanti senza bisogno di aiuto.",
		"trova una pietra su cui sedersi e ci si siede, il che a Orgrimmar è quasi un atto di ribellione.",
	},
	["org.quest_complete.w18.after.007"] = {
		"Qualcuno mi indichi del cibo. Qualunque cosa che non sia secca e non si muova.",
		"Prima qualcosa di caldo da mettere sotto i denti. Poi sono a disposizione di chiunque.",
		"C'è un cuoco in questa città che mi dia da mangiare senza un discorso? Mi sono {g:guadagnato|guadagnata} silenzio e una scodella.",
	},
	["org.quest_complete.w18.after.008"] = {
		"Dopo un lavoro controllo sempre le tasche, come se il lavoro potesse essersi portato via qualcosa uscendo.",
		"Borsa, cintura, zaino, stivali. Dopo ogni incarico chiuso conto le mie cose, come un mercante che chiude bottega.",
		"Tutto ancora al suo posto? Bene. Il lavoro non ruba mai, ma controllo ogni volta.",
	},
	["org.quest_complete.w18.after.009"] = {
		"apre e chiude le mani un paio di volte, sciogliendo una stretta tenuta più a lungo del necessario.",
		"scuote una mano, poi l'altra, come per scrollarsi dalle dita gli ultimi resti del compito.",
		"si sfrega piano i palmi, come fa la gente quando il lavoro finalmente la lascia andare.",
	},
	["org.quest_complete.w18.after.010"] = {
		"Strano quanto in fretta si raffredda una cosa finita. Un attimo fa era tutta la mia attenzione; adesso è solo una cosa successa.",
		"Finché toccava a me, era la cosa più importante di Orgrimmar. Adesso è una storia che nessuno ha chiesto.",
		"Mi bruciava in testa finché durava. È già cenere, e la città la sta spazzando via.",
	},
	["org.quest_complete.w18.after.011"] = {
		"Una cosa in meno. Me la prendo volentieri.",
		"Un nodo in meno nella corda. Bene così.",
		"Tolto dalla lista. Mi piace proprio, depennare.",
	},
	["org.quest_complete.w18.after.012"] = {
		"si allontana dalla faccenda lungo una via che era nuda roccia prima che qualcuno le desse un nome, e lo resterà molto dopo.",
		"si lascia la faccenda alle spalle su una pietra sopravvissuta a ogni accordo stretto lì sopra, e che sopravviverà anche a questo.",
		"se ne va su una roccia che ha visto il canyon vuoto e l'ha visto pieno, e non si è commossa per nessuno dei due.",
	},
	["org.quest_complete.w18.after.013"] = {
		"Mi piace il silenzio che viene dopo una promessa mantenuta. La città è chiassosa come sempre, ma quel silenzio è mio.",
		"Parola mantenuta. Non fa rumore, ma sotto tutto questo baccano si sta bene.",
		"Una promessa mantenuta non pesa niente. Lo so perché ho portato anche l'altro tipo.",
	},
	["org.quest_complete.w18.after.014"] = {
		"Festeggerei, ma qui non sento nemmeno i miei pensieri. Più tardi, allora.",
		"Qualcuno faccia un applauso. Piano. No? Pazienza.",
		"Questo merita una festa. Piccola. Dentro la mia testa, dove c'è meno chiasso.",
	},
	["org.quest_complete.w18.after.015"] = {
		"L'appetito è stato zitto per tutto il tempo che avevo da fare. Ora vuole essere pagato, proprio come me.",
		"Buffo come la fame aspetti che il lavoro sia finito per dire mezza parola.",
		"Non mi ero {g:accorto|accorta} di avere fame finché non ho finito. Adesso non mi accorgo d'altro.",
	},
	["org.quest_complete.w18.after.016"] = {
		"allenta una fibbia di un buco, come se fosse stato il lavoro a tenerla chiusa.",
		"allenta una cinghia che mordeva una spalla, e la spalla ringrazia nessuno in particolare.",
		"allarga il colletto di un dito e fa ruotare il collo finché dentro qualcosa scatta con un piccolo clic soddisfatto.",
	},
	["org.quest_complete.w18.after.017"] = {
		"Niente da fare. Proprio niente. Datemi il tempo di contare fino a dieci e andrò a cercarmi guai.",
		"Questa è la parte in cui non si fa niente. Non mi è mai riuscita bene.",
		"Libertà. Totale. Qualcuno mi trovi un problema prima che me ne inventi uno.",
	},
	["org.quest_complete.w18.after.018"] = {
		"Finito, e le strade si sono ridotte a torce e ronde. Quello che viene dopo può aspettare che la città si svegli.",
		"È abbastanza tardi che le bancarelle sono chiuse. Meglio: nessuno che mi venda qualcosa sulla strada per un letto.",
	},
	["org.quest_complete.w18.after.019"] = {
		"Ecco. La città può tornare a ignorarmi.",
		"Finito. Orgrimmar può riprendere a non accorgersi di me.",
		"Tutto finito. La città non ha battuto ciglio, e fa bene.",
	},
	["org.quest_complete.w18.after.020"] = {
		"si porta due dita alla fronte verso nessuno in particolare: una piccola chiusura privata per un piccolo compito privato.",
		"fa un breve cenno col capo a nessuno, il cenno di chi chiude un registro che tiene soltanto in testa.",
		"resta un momento a mento basso, segnando la fine della faccenda come certi segnano la fine di un pasto.",
	},
	["org.quest_complete.w18.after.021"] = {
		"si accoda per qualche passo a un kodo lento, al passo comodo della bestia.",
		"segue per un tratto di via un kodo che arranca, adeguandosi passo per passo alla sua andatura pesante.",
		"finisce dietro il largo posteriore di un kodo lungo la via: la bestia non ha fretta, e per una volta nemmeno chi le cammina dietro.",
	},
	["org.quest_complete.w18.after.022"] = {
		"È andata meglio di quanto chiunque potesse sperare.",
		"Piccola cosa, fatta bene. Fa piacere.",
		"Niente male. Proprio niente male. Qualcuno si ricordi che l'ho detto.",
	},
	["org.quest_complete.w18.after.023"] = {
		"La mano continua a cercare la tasca dove stava il lavoro. Le abitudini ci mettono di più a essere consegnate.",
		"Finito, e una parte di me è ancora al lavoro, a controllare una cosa che non tocca più a me controllare.",
		"Il compito non c'è più e alle mani nessuno l'ha detto. Continuano a tastare la borsa, come un cane che cerca l'osso che ha sepolto.",
	},
	["org.quest_complete.w18.boast.001"] = {
		"Parla di me al Capoguerra. A voce alta, che arrivi fino in cima a Grommash Hold.",
		"Se il Capoguerra chiede chi è stato, indica me. Indica due volte.",
		"Se la cosa arriva all'orecchio del Capoguerra, fa' che ci sia attaccato il mio nome. Scritto giusto.",
	},
	["org.quest_complete.w18.boast.002"] = {
		"Niente male, eh? Dai, puoi dirlo. Non ascolta nessuno.",
		"Si vede che ti ho fatto effetto. Resta tra noi, promesso.",
		"Ammettilo, è stato un lavoro pulito. Farò finta di non averti sentito.",
	},
	["org.quest_complete.w18.boast.003"] = {
		"Prima o poi qualcuno lo racconterà alla locanda, coi dettagli sbagliati e il mio nome peggio. Mi sta bene comunque.",
		"Nella Hall of Legends non ci finirà. A un tavolo della locanda forse sì, se qualcuno ha bevuto abbastanza birra.",
	},
	["org.quest_complete.w18.boast.004"] = {
		"Questa va incisa da qualche parte. Su qualcosa di grosso, vicino alla porta, dove la gente la veda.",
		"Questa si merita una tacca su un palo. Profonda.",
		"Qualcuno la scolpisca su una pietra. Aspetto. Anzi no, non aspetto. Ma qualcuno dovrebbe.",
	},
	["org.quest_complete.w18.boast.005"] = {
		"Niente di rotto, niente di perso, nessuno che mi urla dietro. Sto diventando {g:bravo|brava} con questa città.",
		"Pulito, ordinato, silenzioso. Se Orgrimmar desse titoli per le commissioni, me ne spetterebbe uno.",
	},
	["org.quest_complete.w18.boast.006"] = {
		"Tutto qui? Ho avuto discussioni più difficili con un venditore del Drag.",
		"Sinceramente, contrattare una cintura nel Drag mi ha dato più filo da torcere.",
		"Finito così? Ho visto prezzi da goblin che opponevano più resistenza.",
	},
	["org.quest_complete.w18.boast.007"] = {
		"Uno dei grunt mi ha appena fatto un cenno. Non alla folla: a me. Diventerò insopportabile.",
		"Un cenno da un grunt, senza che glielo chiedessi. Me lo racconterò per un bel po'.",
	},
	["org.quest_complete.w18.boast.008"] = {
		"Guardami bene, Orgrimmar. Questa faccia la rivedrai spesso.",
		"Ricordatevi questa faccia. Fa le cose, e ne vuole altre.",
		"Fai l'abitudine a me, città. Non vado da nessuna parte dove non mi troveresti.",
	},
	["org.quest_complete.w18.boast.009"] = {
		"Non mi sono {g:perso|persa} nemmeno una volta. Be', una. Per poco. Il Drag fa le curve, non è colpa mia.",
		"Nessuna svolta sbagliata. Una. Piccola, e ha cominciato il Drag.",
	},
	["org.quest_complete.w18.boast.010"] = {
		"Un cliente soddisfatto. Comincio a farne collezione.",
		"Facce contente dappertutto. Contente per Orgrimmar, s'intende: nessuno ringhia.",
		"Una persona in più, in questa città, che non mi guarda storto. La lista si allunga.",
	},
	["org.quest_complete.w18.boast.011"] = {
		"Il Capoguerra ha tirato su questa città dalla roccia rossa. Io ci ho fatto un piccolo lavoro, come si deve. Misure diverse, stessa idea.",
		"Qualcuno ha costruito Orgrimmar dal nulla. Io ne ho tenuto in ordine un angolo. Non è lo stesso, ma non è nemmeno niente.",
		"Thrall ha costruito una città; io ne ho curato un pezzetto. A pensarci, le città sono fatte quasi solo di pezzetti.",
	},
	["org.quest_complete.w18.boast.012"] = {
		"ripone la ricompensa con un filo più di cerimonia del necessario, nel caso qualcuno guardi. Non guarda nessuno.",
		"fa un certo spettacolo nel mettere via la ricompensa, mento alto, davanti a un pubblico composto da un lupo annoiato.",
		"batte due volte sulla tasca dove è finita la ricompensa, come si fa con un buon cane, e si guarda intorno in cerca di testimoni.",
	},
	["org.quest_complete.w18.boast.013"] = {
		"lascia l'affare con un'andatura spavalda che il lavoro forse non giustifica del tutto, e la porta con stile, meritata o no.",
		"fa qualche passo impettito in mezzo alla strada, poi si ricorda della salita e ripiega su un passo dignitoso.",
		"se ne va con l'incedere ondeggiante di un eroe di guerra, che dura esattamente fino alla prima rampa.",
	},
	["org.quest_complete.w18.boast.014"] = {
		"A Grommash Hold non ne sapranno mai niente. Peggio per loro, sinceramente.",
		"Questa notizia non salirà fino a Grommash Hold. Peccato per Grommash Hold.",
	},
	["org.quest_complete.w18.boast.015"] = {
		"L'Orda ne esce più forte. Di poco. Ma conta.",
		"Mettetelo nel conto della forza dell'Orda. Una briciola. Conta anche quella.",
	},
	["org.quest_complete.w18.boast.016"] = {
		"Sono {g:bravo|brava} in questo. È una cosa piccola in cui riuscire, ma intendo godermela fino in fondo.",
		"Talento modesto, questo: fare quel che una città chiede, e farlo bene. Però è mio. Me lo tengo.",
		"Non tutte le abilità si guadagnano una canzone. Questa si guadagna un cenno e una borsa, e ne vado {g:fiero|fiera} comunque.",
	},
	["org.quest_complete.w18.boast.017"] = {
		"Qualcun altro ha bisogno di una cosa fatta bene? Sono qui, e costo poco. Abbastanza poco.",
		"Il prossimo! Qualcuno in questa città avrà pure un problema che non so risolvere.",
	},
	["org.quest_complete.w18.boast.018"] = {
		"Un goblin dall'altra parte mi ha visto prendere la paga e sembrava colpito. O stava stimando i miei stivali. Coi goblin è difficile capirlo.",
		"Qualcuno ha ammirato la cosa, ne sono {g:sicuro|sicura}. Un goblin, credo, anche se forse ammirava solo la borsa.",
	},
	["org.quest_complete.w18.boast.019"] = {
		"si raddrizza a cose fatte e lancia alla guardia più vicina uno sguardo da professionista a professionista. La guardia non lo ricambia.",
		"raddrizza le spalle al passaggio di una pattuglia, da collega a colleghi. La pattuglia tira dritto.",
		"ricambia il cenno di un grunt di passaggio con uno molto più solenne, che il grunt non resta a vedere.",
	},
	["org.quest_complete.w18.boast.020"] = {
		"Niente sfilata? Va bene. Però avrei salutato. Avevo pure il gesto pronto.",
		"Se qualcuno organizza una sfilata, ho libero il resto dell'ora. Il tamburo posso portarlo io.",
	},
	["org.quest_complete.w18.boast.021"] = {
		"Il guaio di farlo bene è che nessuno lo saprà mai. Fatto male, a quest'ora tutta Orgrimmar conoscerebbe il mio nome.",
		"Fai un lavoro come si deve in questa città e svanisce senza rumore. Sbaglialo, e alla porta ne parleranno per un mese.",
	},
	["org.quest_complete.w18.boast.022"] = {
		"si gonfia un poco all'elogio, poi vede passare un grunt pieno di cicatrici largo il doppio, e torna a una misura ragionevole.",
		"si raddrizza un po' alle parole di ringraziamento, finché passa un tauren e chiude la gara senza nemmeno accorgersene.",
	},
	["org.quest_complete.w18.boast.023"] = {
		"Che resti agli atti: le lamentele le ho tenute per me.",
		"Nemmeno una lamentela ad alta voce. Vorrei che qualcuno lo scrivesse.",
		"Ogni brontolio tenuto dietro i denti. Qualcuno dovrebbe darmi una medaglia per questo.",
	},
	["org.quest_complete.w18.burden.001"] = {
		"La città è identica a prima che cominciassi. O il lavoro conta in un modo che non vedo, o non conta. Scelgo la prima e non guardo troppo da vicino.",
		"Stesse strade, stesso baccano, stesse facce. Se quello che ho appena finito ha cambiato qualcosa, l'ha cambiato dove non si vede.",
		"Non una pietra di Orgrimmar si è spostata per merito mio. Mi piace pensare che qualcosa si sia mosso, solo non qualcosa da indicare col dito.",
	},
	["org.quest_complete.w18.burden.002"] = {
		"si siede su un gradino basso a faccenda chiusa, gli avambracci sulle ginocchia, e studia per un po' il terreno fra gli stivali.",
		"si appoggia a un palo dopo la consegna, lo sguardo su niente in particolare e la ricompensa dimenticata in una mano.",
	},
	["org.quest_complete.w18.burden.003"] = {
		"Più pesante di quanto sembrasse. E non parlo del carico.",
		"Fatto. Pesava più del dovuto, e non sulle spalle.",
		"Finito. Certi lavori pesano sulla testa invece che sulla schiena.",
	},
	["org.quest_complete.w18.burden.004"] = {
		"Ogni lavoro fatto per una parte di una lite è un lavoro fatto contro l'altra. Cerco di non pensare a chi sta dall'altro capo di questo.",
		"Qualcuno, chissà dove, sta peggio per quello che ho appena finito. Vale per quasi ogni lavoro in tempo di guerra, e quasi sempre riesco a non rimuginarci.",
	},
	["org.quest_complete.w18.burden.005"] = {
		"Ogni lavoro fatto bene rende più difficile rifiutare il prossimo. Anche la fiducia è un carico, e non fa che pesare di più.",
		"Chiederanno ancora, ora che sanno che consegno. Essere la persona su cui si conta è uno zaino come un altro.",
		"Fai un buon lavoro a Orgrimmar e la città impara il tuo nome per le ragioni sbagliate: diventi la risposta al suo prossimo guaio.",
	},
	["org.quest_complete.w18.burden.006"] = {
		"Spero che serva. Qualcuno l'ha pagato, in un modo o nell'altro.",
		"Prendo le monete. Spero che la cosa valesse quello che è costata.",
		"Ecco. Spero che chi ne paga il prezzo vero ne riceva qualcosa in cambio.",
	},
	["org.quest_complete.w18.burden.007"] = {
		"preme il pollice su un punto dolente alla base del collo e lo tiene lì, gli occhi socchiusi, mentre la strada scorre oltre.",
		"apre e chiude le mani un paio di volte, come per ricordare loro che il lavoro le ha lasciate andare.",
	},
	["org.quest_complete.w18.burden.008"] = {
		"A volte mi chiedo se qualcuno, in questa città, conosca il mio nome, o soltanto la sagoma di chi porta a termine le cose.",
		"Qui servo, questo è certo. Servire non vuol dire essere conosciuti. Quasi sempre mi va bene così.",
		"Il mio lavoro lo riconoscono a colpo d'occhio. Se riconoscerebbero la mia faccia senza, non saprei dirlo.",
	},
	["org.quest_complete.w18.burden.009"] = {
		"Finito. Se qualcuno mi cerca, vado a sedermi da qualche parte a non pensare a niente.",
		"Chiuso. Vado a cercare un angolo tranquillo, se Orgrimmar ne possiede uno.",
		"E questa è fatta. Qualcuno mi indichi un muro a cui appoggiarmi.",
	},
	["org.quest_complete.w18.burden.010"] = {
		"Non tutti quelli che prendono un lavoro a Orgrimmar arrivano a consegnarlo. Qui, con le monete in mano, cerco di ricordarmelo.",
		"Oltre le mura c'è chi ha preso un lavoro come questo e non verrà a ritirare la paga. Le monete pesano di più, a pensarci.",
		"Per ogni consegna come questa c'è un lavoro, chissà dove, di cui nessuno farà mai rapporto. Lo tengo nella stessa borsa.",
	},
	["org.quest_complete.w18.burden.011"] = {
		"conta le monete una volta, poi le fissa a lungo con la fronte aggrottata, anche se la somma è giusta senza alcun dubbio.",
		"guarda la ricompensa a lungo, come se fosse la risposta a un'altra domanda.",
	},
	["org.quest_complete.w18.burden.012"] = {
		"Del perché di questo lavoro ho solo la loro parola. In una città così indaffarata, dovrà bastarmi.",
		"Chi l'ha chiesto sa il perché. Io so soltanto il cosa. In quello spazio vive il dubbio, e non ha intenzione di andarsene.",
		"Il perché è rimasto dietro il banco. Io me ne vado col cosa e una borsa, e dovrà bastare.",
	},
	["org.quest_complete.w18.burden.013"] = {
		"Speriamo fosse la cosa giusta. Di sicuro era quella che mi avevano chiesto.",
		"Giusto o no, è fatto. Sul resto ci dormo sopra.",
		"È quello che mi è stato chiesto. Se fosse quello che serviva, non so dirlo.",
	},
	["org.quest_complete.w18.burden.014"] = {
		"Ogni capitale poggia su schiene stanche. La mia ha fatto la sua parte, per ora, e gradirebbe una panca.",
		"Kor'kron, porte, mura: niente di tutto questo regge a lungo senza qualcuno che faccia le parti noiose. Sono {g:stanco|stanca}, e quel qualcuno sono io.",
		"Qualcuno deve stancarsi perché la città non si stanchi. In questo momento tocca a me.",
	},
	["org.quest_complete.w18.burden.015"] = {
		"tiene gli occhi socchiusi contro la sabbia che attraversa il canyon anche a faccenda chiusa, senza nessuna fretta di ripararsi.",
		"lascia che la sabbia portata dal vento punga per un po' prima di tirarsi su il cappuccio, come se fosse un debito da saldare.",
	},
	["org.quest_complete.w18.burden.016"] = {
		"Una parte di me si aspettava una risata e la mano vuota. Invece paga piena. I miei dubbi sono pessimi indovini.",
		"Tutte quelle preoccupazioni, ed è andata esattamente come promesso. Dovrei far pagare ai miei dubbi il tempo che mi hanno fatto perdere.",
		"Mi aspettavo qualche tranello alla consegna. Niente. Adesso devo trovare un altro posto dove mettere tutto quel sospetto.",
	},
	["org.quest_complete.w18.burden.017"] = {
		"L'Orda chiede moltissimo. Certi giorni mi domando cosa resti di me dopo averglielo dato.",
		"Tutto per l'Orda. Vorrei solo sapere, ogni tanto, quanto costerà quel tutto.",
	},
	["org.quest_complete.w18.burden.018"] = {
		"si trattiene sotto il tetto basso per un attimo dopo i ringraziamenti, nella foschia calda delle lampade e del fumo, prima di affrontare di nuovo la strada.",
		"resta ancora un po' nella penombra della stanza, la ricompensa al sicuro, come se la strada là fuori potesse aspettare.",
	},
	["org.quest_complete.w18.burden.019"] = {
		"Certi lavori danno orgoglio, altri si finiscono e basta. Questo era del secondo tipo, e anche quelli tengono accese le lampade.",
		"Non ogni lavoro merita orgoglio. Questo meritava di essere finito, e l'ha avuto.",
	},
	["org.quest_complete.w18.burden.020"] = {
		"Non chiedermi com'è andata. È andata. Questa è la buona notizia.",
		"È fatto. Il resto della storia non vale la pena di raccontarlo.",
		"Com'è stato? Concluso. Fermiamoci a concluso.",
	},
	["org.quest_complete.w18.burden.021"] = {
		"Lealtà all'Orda e qualche dubbio silenzioso: li porto entrambi a ogni lavoro. Credo che l'Orda sia servita meglio dalle due cose insieme che da una sola.",
		"La mia lealtà appartiene all'Orda. Anche le mie domande, e mi piace pensare che un'Orda con posto per entrambe sia quella che Thrall voleva costruire.",
	},
	["org.quest_complete.w18.burden.022"] = {
		"dà un'occhiata agli stivali consumati, poi alla strada che si allunga davanti, e la affronta senza una parola.",
		"stringe una cinghia allentata da chissà quanto, ora che c'è un momento per farlo.",
		"sposta il peso dello zaino da una spalla all'altra, non trova sistemazione migliore e si tiene quella di prima.",
	},
	["org.quest_complete.w18.burden.023"] = {
		"Finché durava il lavoro non c'era spazio per pensare. Adesso lo spazio c'è, e i pensieri entrano uno alla volta, come clienti in banca.",
		"Il lavoro è un buon nascondiglio dalla propria testa. Il nascondiglio ha appena chiuso.",
		"Il lavoro teneva fuori le domande. Consegnato quello, la porta è aperta, e stanno entrando tutte.",
	},
	["org.quest_complete.w18.burden.024"] = {
		"Fatto. Non mi pento di averlo fatto. Neanche mi rallegra, e va bene così.",
		"Finito. Chiedimi più avanti se ne vado {g:fiero|fiera}.",
	},
	["org.quest_complete.w18.burden.025"] = {
		"Gli orchi hanno fatto cose terribili col sangue del demone nelle vene, e il mondo se lo ricorda. Ogni lavoro onesto che finisco è un sassolino tolto da un mucchio enorme.",
		"Qualcuno deve ripagare quello che ha fatto la vecchia Orda. Non è giusto che tocchi a me, ma tocca a tutti noi, e questo era il mio pezzo.",
	},
	["org.quest_complete.w18.grin.001"] = {
		"In una capitale di guerra anche i ringraziamenti escono come ordini. Quasi mi aspettavo che mi dicessero di mettermi in riga.",
		"Mi hanno pagato come se mi assegnassero un turno di guardia. A Orgrimmar il calore suona così.",
		"Il grazie è stato abbaiato. Non con cattiveria: è solo l'unico volume che questa città conosce.",
	},
	["org.quest_complete.w18.grin.002"] = {
		"sta ancora contando le monete quando {g:gli|le} viene affidato il prossimo compito, e perde il conto da qualche parte a metà.",
		"arriva a metà della conta della ricompensa prima che qualcuno cominci a spiegare il prossimo lavoro, e i numeri se ne vanno per conto loro.",
		"conta fino a sette, più o meno, poi parte una nuova commissione e le monete vanno ricontate da capo.",
	},
	["org.quest_complete.w18.grin.003"] = {
		"Fammi mettere via le monete prima di passarmi il prossimo. Ho solo due mani.",
		"Una cosa per mano, per favore. Prima la borsa, poi il guaio.",
	},
	["org.quest_complete.w18.grin.004"] = {
		"A Orgrimmar un giorno di riposo è un lavoro che per caso è in discesa.",
		"Riposo, in questa città, vuol dire che la prossima commissione è nella stessa strada.",
		"Una vacanza, a Orgrimmar: portare qualcosa di leggero.",
	},
	["org.quest_complete.w18.grin.005"] = {
		"Qui 'ben fatto' e 'ora vai' sono un'unica frase, detta tutta d'un pezzo.",
		"Il grazie e il congedo sono arrivati insieme, legati con lo stesso spago. Molto Orgrimmar.",
	},
	["org.quest_complete.w18.grin.006"] = {
		"C'è un solo lavoro a Orgrimmar che non cominci con qualcuno che urla? Così, per sapere.",
		"Ogni incarico, in questa città, arriva con un urlo allegato. Comincio a trovarlo rilassante.",
	},
	["org.quest_complete.w18.grin.007"] = {
		"Un grunt di guardia ha visto tutto lo scambio senza muovere un muscolo. Approvazione, credo. O indigestione.",
		"La guardia più vicina mi ha visto prendere la paga e non ha fatto assolutamente niente con la faccia. Lo conto come un complimento.",
		"La guardia vicino al muro mi ha dato la stessa occhiata che dà a tutto. Ho deciso che quell'occhiata vuol dire 'magnifico'.",
	},
	["org.quest_complete.w18.grin.008"] = {
		"si lascia scappare una risata breve, per niente in particolare, mentre la ricompensa passa di mano: la risata di chi si aspettava di peggio.",
		"ridacchia sotto il chiasso della strada, ricompensa in mano, per una battuta che nessun altro ha sentito.",
		"sorride un attimo alla ricompensa, poi alla strada, come se tutte e due avessero raccontato la stessa barzelletta.",
	},
	["org.quest_complete.w18.grin.009"] = {
		"Sabbia che soffia di traverso lungo la strada, e sono riusciti lo stesso a trovarmi per pagarmi. E per darmi il prossimo lavoro, si capisce.",
		"Sabbia tra i denti, sabbia nella borsa. A Orgrimmar anche la paga arriva condita.",
	},
	["org.quest_complete.w18.grin.010"] = {
		"Me ne vado prima che ti ricordi che avevi un secondo lavoro per me.",
		"Presto, prima che ti venga in mente qualcos'altro. Arrivederci!",
		"E questo è il mio segnale per sparire, prima che qualcuno dica 'un'ultima cosa'.",
	},
	["org.quest_complete.w18.grin.011"] = {
		"Chi distribuisce lavoro a Orgrimmar ha un talento comune: ti affida il compito successivo senza alzare gli occhi.",
		"È un'arte, il modo in cui chi comanda in questa città ti passa un nuovo incarico senza mai guardarti in faccia.",
	},
	["org.quest_complete.w18.grin.012"] = {
		"La paga sembra più bella se non la conto. Quindi non la conto. Non in strada, almeno.",
		"Meglio non contarla allo scoperto. Contata è poca. Non contata, è una fortuna.",
	},
	["org.quest_complete.w18.grin.013"] = {
		"ha appena chiuso la mano sulla ricompensa quando un goblin di passaggio {g:gli|le} propone qualcosa a un prezzo quasi identico.",
		"riceve la paga, e dopo una dozzina di passi un venditore ha già detto un prezzo sospettosamente vicino.",
		"non ha fatto tre passi con la ricompensa che un venditore goblin strilla un'offerta che costa, per una notevole coincidenza, più o meno tutta la somma.",
	},
	["org.quest_complete.w18.grin.014"] = {
		"Mezzo mondo è in guerra con l'Orda, e io ho appena trionfato su una commissione. Qualcuno deve pur vincere quelle piccole.",
		"Gli eserciti escono da questa città e io la attraverso. Anche le guerre piccole qualcuno deve vincerle.",
	},
	["org.quest_complete.w18.grin.015"] = {
		"Finalmente al chiuso, lontano dal baccano, e la prima cosa che mi danno è un buon motivo per rituffarmici.",
		"Quattro mura, un tetto, un attimo di quiete, e già una nuova commissione mi indica la porta.",
	},
	["org.quest_complete.w18.grin.016"] = {
		"Grazie. Hai reso un'anima stanca un po' meno povera.",
		"Ti ringrazio. Adesso al verde lo sono un po' meno.",
	},
	["org.quest_complete.w18.grin.017"] = {
		"Il momento che preferisco è lo spiraglio tra la fine di un lavoro e l'arrivo del prossimo. È brevissimo. Me lo tengo stretto.",
		"In questa città tra un lavoro e l'altro c'è uno spicchio di libertà, largo quanto il bordo di una moneta. Ci sto in piedi sopra.",
	},
	["org.quest_complete.w18.grin.018"] = {
		"aspetta che passi un cavaliere di lupi, poi un kodo carico, poi un carretto con una ruota storta, prima che nella strada si apra un varco abbastanza largo per infilarcisi.",
		"rischia di farsi travolgere da un peon di corsa mentre si allontana dall'affare, e già che c'è cede il passo anche a un lupo.",
	},
	["org.quest_complete.w18.grin.019"] = {
		"I grunt sorvegliano la porta, i Kor'kron vegliano su Grommash Hold, e chi corre avanti e indietro tra loro sorveglia solo una borsa. Cioè io.",
		"Tutti, a Orgrimmar, fanno la guardia a qualcosa. Io faccio la guardia solo a questa borsetta appena guadagnata, e la prendo sul serio.",
	},
	["org.quest_complete.w18.grin.020"] = {
		"Nessuno, a Orgrimmar, finge che una commissione sia stata nobile. Andava fatta, è stata fatta, ecco le monete, occhio al lupo.",
		"Niente belle parole, niente cerimonie. Lavoro, monete, un cenno del mento verso la strada. Quasi mi piace.",
	},
	["org.quest_complete.w18.grin.021"] = {
		"Sempre felice di servire l'Orda. Ancora più felice quando l'Orda paga.",
		"Servizio all'Orda: fatto. Pagamento dall'Orda: fatto anche questo. Un ottimo accordo.",
	},
	["org.quest_complete.w18.grin.022"] = {
		"Notte nel canyon, torce accese lungo tutta la strada, e il prossimo incarico aspettava lo stesso. Questa città non ha orari, che io sappia.",
		"Anche col buio c'è qualcuno con un compito per me. Ho il sospetto che Orgrimmar distribuisca lavoro pure nel sonno.",
		"Buio sul canyon, e qualcuno mi ha trovato comunque un lavoro. Le commissioni di Orgrimmar non sanno cosa sia l'ora di dormire.",
	},
	["org.quest_complete.w18.grin.023"] = {
		"canticchia un pezzo di motivo mentre ripone la ricompensa, stonando, e un troll di passaggio lo riprende per qualche passo, stonando ancora di più.",
		"fischietta qualcosa senza melodia mentre l'affare si chiude, e un vecchio orco a una bancarella lo guarda storto per principio.",
		"batte un piccolo ritmo sulla borsa della ricompensa, e un goblin lì vicino alza un sopracciglio al suono delle monete che tengono il tempo.",
	},
	["org.quest_complete.w18.grin.024"] = {
		"annuisce ai ringraziamenti col corpo già mezzo girato verso la strada, dove qualcuno chiede di chiunque abbia le mani libere.",
		"ascolta i ringraziamenti fino in fondo, e alle spalle una voce sta già chiedendo se qualcuno è libero. Un tempismo inquietante.",
		"ha appena sentito l'ultima parola di ringraziamento quando una nuova voce, più in là, comincia a chiedere aiuto, come a comando.",
	},
	["org.quest_complete.w18.grin.025"] = {
		"accetta la stretta di mano offerta e poi passa qualche passo a flettere le dita, in silenzio, per rimetterle in funzione.",
		"sopravvive a una stretta di mano alla maniera di Orgrimmar con una faccia educata, e scuote la mano solo dopo aver girato l'angolo.",
		"si fa stritolare la mano in segno di gratitudine e sorride per tutto il tempo, il sorriso di chi conta le dita.",
	},
	["org.quest_complete.w18.grin.026"] = {
		"È filato tutto liscio. Non mi fido.",
		"Niente urla, niente sorprese, e per giunta a Orgrimmar. C'è qualcosa che non va.",
		"Troppo facile. In questa città c'è un tranello che mi aspetta, ci scommetterei la borsa.",
	},
	["org.quest_complete.w18.grin.027"] = {
		"Tutto questo baccano. Qualcuno ha annunciato che ho finito?",
		"Senti che fracasso. Pare che tutta la città abbia saputo che ho finito.",
		"Tutti i martelli del Drag in coro. Per me? Non dovevate.",
	},
	["org.quest_complete.w18.grin.028"] = {
		"Bene. Qualcuno a Orgrimmar ha un lavoro che si fa da seduti?",
		"Ci sono incarichi con una sedia inclusa? Lo chiedo per le mie ginocchia.",
	},
	["org.quest_complete.w18.ledger.001"] = {
		"Il mio conto personale ha tre colonne: quello che mi hanno chiesto, quello che ho fatto, quello che mi hanno pagato. Di rado vanno d'accordo, e la terza è sempre la più corta.",
		"Chiesto, fatto, pagato. Le tengo affiancate in testa, e i conti non tornano mai del tutto. Nessuno a Orgrimmar li ha mai corretti a mio favore.",
	},
	["org.quest_complete.w18.ledger.002"] = {
		"In questa città i debiti sopravvivono a chi li ha fatti. Meglio stare dalla parte di chi riscuote, e riscuotere da parecchi.",
		"Un debito, a Orgrimmar, si tramanda come un'ascia. Preferisco stare dalla parte del manico.",
	},
	["org.quest_complete.w18.ledger.003"] = {
		"Fate un segno accanto al mio nome. Bello netto, che si legga.",
		"Depennatelo. Con decisione, per favore, così nessuno mi chiede di rifarlo.",
		"Il mio nome è scritto giusto? Controllate. Due volte.",
	},
	["org.quest_complete.w18.ledger.004"] = {
		"L'Orda non dimentica un debito, né in un senso né nell'altro. Per una volta sto dalla parte di chi è in credito.",
		"In credito con l'Orda, anche se di poco. È il posto più sicuro dove tenere un favore: l'Orda ricorda bene e ha le mura per custodire i ricordi.",
	},
	["org.quest_complete.w18.ledger.005"] = {
		"I mercanti del Drag dicono che ogni goblin tiene due registri, uno per l'esattore e uno per la verità. Darei una moneta di questa paga per sapere in quale sono {g:scritto|scritta}.",
		"Due registri per ogni goblin, giurano i bottegai: uno onesto e uno di facciata. Se il mio nome è in uno dei due, spero sia quello onesto, anche se dubito che sia più gentile.",
	},
	["org.quest_complete.w18.ledger.006"] = {
		"conta qualcosa sulle dita, aggrotta la fronte e ricomincia, come se il conto del lavoro e il conto della paga fossero due somme ben diverse.",
		"fa il conto su tre dita, poi su quattro, e alla fine rinuncia e lascia che la somma sia quella che ha deciso la città.",
	},
	["org.quest_complete.w18.ledger.007"] = {
		"Il buon nome è un registro che nessuno ti lascia leggere. Il mio si è appena allungato di una riga, e la pagina non la vedrò mai.",
		"Di me c'è un resoconto tenuto in cento teste sparse per la città. Una ha appena aggiunto una riga; mi piace pensare che sia benevola.",
		"Il mio nome vale un po' di più, in questa città, di un momento fa. Nessuno lo scriverà; lo sapranno tutti.",
	},
	["org.quest_complete.w18.ledger.008"] = {
		"Siamo pari. Ricordatelo la prossima volta che vengo a chiedere.",
		"Adesso i conti sono in pari. Occhio, però: tornerò a sbilanciarli.",
		"Pari. Incidetelo nel muro, se volete; ve lo ricorderò.",
	},
	["org.quest_complete.w18.ledger.009"] = {
		"Non dovere niente a nessuno a Orgrimmar. È una sensazione rara e piacevole, come un angolo tranquillo nel Drag. Non durerà, perciò ci resto dentro un momento.",
		"In questo momento nessuno in città può reclamare un favore da me. Me lo godo finché dura; non dura mai.",
		"Debiti pagati, favori resi, niente in sospeso. In una città di registri, una pagina pulita è una piccola festa.",
	},
	["org.quest_complete.w18.ledger.010"] = {
		"La paga ha saldato il conto. Lo sguardo che l'accompagnava ne ha aperto un altro, e ancora non so da che parte sto.",
		"La moneta chiude un conto; uno sguardo lungo come quello ne apre un altro. Orgrimmar non lascia mai un registro chiuso a lungo.",
	},
	["org.quest_complete.w18.ledger.011"] = {
		"Un vecchio grunt alla porta racconta che nei campi gli orchi contavano ogni giorno di prigionia, incidendolo su qualunque cosa prendesse un segno. Adesso i loro giovani contano favori e monete. Una cosa migliore da contare, dice lui.",
		"Nei campi, dicono i veterani, si contavano i giorni perduti. In questa città si contano i lavori fatti e pagati. Lo raccontano come se in questo stesse tutta la differenza tra allora e adesso.",
	},
	["org.quest_complete.w18.ledger.012"] = {
		"Sistemato. Cancellatemi dalla lista dei problemi e scrivetemi in quella delle persone utili.",
		"Fuori dalla vostra lista, dentro quella buona. Funziona così, no?",
	},
	["org.quest_complete.w18.ledger.013"] = {
		"Niente inchiostro, niente sigillo. Qui un'impresa si scrive nella memoria di chi l'ha chiesta, e in una città così dura tiene meglio della carta.",
		"Nessuno ha firmato niente. A Orgrimmar il registro di un lavoro sta nella memoria di qualcuno, non su una pagina, e i ricordi di questa città sono notoriamente difficili da bruciare.",
	},
	["org.quest_complete.w18.ledger.014"] = {
		"Alla maniera goblin si farebbero pagare gli interessi sulla gratitudine. Sono {g:tentato|tentata}. Un rame alla settimana su ogni «ben fatto» e a fine stagione sarei {g:ricco|ricca}.",
		"Fossi un goblin, a quest'ora starei già chiedendo gli interessi su quel grazie. Forse è meglio di no; in città non mi resterebbe un amico.",
		"La gratitudine dovrebbe fruttare interessi. Ne parlerei con un goblin, ma so già che il tasso favorirebbe lui.",
	},
	["org.quest_complete.w18.ledger.015"] = {
		"Il debito è la corda più vecchia di questa città. Tirala piano e tutta la folla si sposta; tirala forte e ti si spezza in mano.",
		"I favori dovuti tengono insieme Orgrimmar più stretta di qualunque spuntone di ferro. Ho appena stretto un po' di più uno dei suoi nodi.",
	},
	["org.quest_complete.w18.ledger.016"] = {
		"Un nome in più nella lista di chi mi deve qualcosa. Lista corta. In crescita.",
		"Numero di persone in questa città in debito con me: piccolo, ma in salita. Tranquilli, non riscuoto mai.",
		"Aggiungetevi alla lista dei miei debitori. È una lista amichevole, quasi sempre.",
	},
	["org.quest_complete.w18.ledger.017"] = {
		"guarda un segno che va giù accanto alla faccenda conclusa, e segue il tratto con un interesse attento e senza fretta.",
		"nota il graffio di un conto che viene segnato lì vicino, e pare lasciargli volentieri l'ultima parola sulla questione.",
	},
	["org.quest_complete.w18.ledger.018"] = {
		"Conto chiuso. Non apritene un altro a mio nome senza chiedermelo prima.",
		"Ecco, i libri tornano. Lasciateli così finché non mi sono {g:seduto|seduta} un momento.",
	},
	["org.quest_complete.w18.ledger.019"] = {
		"A Orgrimmar non si cancella niente. Le buone azioni stanno accanto a quelle cattive nella memoria di qualcuno, e ogni nuova sposta l'equilibrio di un capello.",
		"Questa città non cancella. Continua solo ad aggiungere, e spera che il totale torni. Il mio è venuto un po' meglio di com'era.",
	},
	["org.quest_complete.w18.ledger.020"] = {
		"chiude la faccenda mentre le pareti del canyon passano dal rosso allo scuro, l'ultimo conto della giornata saldato insieme alla giornata.",
		"salda il conto mentre l'ombra risale le pareti del canyon, e lungo la strada le torce si accendono una dopo l'altra.",
	},
	["org.quest_complete.w18.ledger.021"] = {
		"Ogni lavoro chiuso è una riga nel lungo libro della città. Io sto da qualche parte ai margini, a lettere piccole, e va bene così. È ai margini che si lavora.",
		"I grandi nomi hanno pagine intere nella storia di Orgrimmar. A me tocca una nota a margine. Buona parte di questa città l'hanno costruita le note a margine.",
	},
	["org.quest_complete.w18.ledger.022"] = {
		"Queste mura le hanno alzate quelli che sono venuti prima. Ogni lavoro fatto per l'Orda ne restituisce una scheggia. Non si estinguerà mai, ed è giusto così.",
		"A chi ha costruito Orgrimmar si deve più di quanto ognuno di noi potrà mai restituire. Un lavoro come questo è una moneta lasciata cadere in quel pozzo profondissimo.",
	},
	["org.quest_complete.w18.ledger.023"] = {
		"La mia parte del patto, rispettata. È stato un piacere fare affari.",
		"Patto rispettato, da tutte e due le parti. È più raro di quanto dovrebbe.",
	},
	["org.quest_complete.w18.ledger.024"] = {
		"Quanti nomi ci sono nei conti di Orgrimmar, tra quelli che hanno portato a termine qualcosa? Più delle statue, meno delle tombe. Il mio sta nel mezzo, onestamente.",
		"Statue per pochi, tombe per troppi, e un conto inciso alla buona per tutti quelli che stanno in mezzo. A me basta il conto.",
	},
	["org.quest_complete.w18.ledger.025"] = {
		"si ferma dopo la faccenda con lo sguardo rivolto all'interno, la faccia di chi fa quadrare un conto che esiste solo nella testa.",
		"rimane un momento a calcolare qualcosa, le labbra che si muovono appena, come un mercante che fa una somma che nessun altro vede.",
	},
	["org.quest_complete.w18.ledger.026"] = {
		"Contatelo come un favore. Io di sicuro lo farò.",
		"Segnatelo come una gentilezza. Più avanti passerò a riscuotere le gentilezze.",
	},
	["org.quest_complete.w18.ledger.027"] = {
		"Assicuratevi di segnare il mio nome, non quello di chi è passato prima di me.",
		"Se c'è un registro, la mia riga la voglio a inchiostro, non a gesso.",
	},
	["org.quest_complete.w18.next.001"] = {
		"Prima la banca, prima che il Drag mi metta gli occhi addosso. È l'unica regola che abbia mai rispettato in questa città.",
		"Se passo dal Drag prima della banca, alla banca arrivo senza niente da metterci. Prima la banca.",
		"La banca, poi i negozi. Al contrario, la visita in banca diventa brevissima.",
	},
	["org.quest_complete.w18.next.002"] = {
		"Chi mi indica la strada più corta per il mio maestro? La più corta, eh, non la più bella.",
		"Adesso dal maestro. Se devo sentirmi dire che sbaglio tutto, tanto vale subito.",
		"Vado a farmi insegnare qualcosa. Posso permettermi una lezione, forse due.",
	},
	["org.quest_complete.w18.next.003"] = {
		"soppesa la banca e la locanda con un'occhiata ciascuna, e una terza occhiata alle borse troppo piene.",
		"passa lo sguardo dalle borse rigonfie alla banca, il conto scritto chiaro in faccia.",
		"dà un colpetto a una borsa gonfia, poi a un'altra, e rivolge uno sguardo lento al mercante più vicino.",
	},
	["org.quest_complete.w18.next.004"] = {
		"Passo dalla casa d'aste solo per vedere quanto pensano gli altri che valga la mia roba. Di solito meno di quanto penso io.",
		"Allora casa d'aste. Metterò in vendita tre cose, ne comprerò una e uscirò con meno di prima. È tradizione.",
		"Nella casa d'aste c'è uno sconosciuto che aspetta di superarmi di un rame. Non posso farlo aspettare.",
	},
	["org.quest_complete.w18.next.005"] = {
		"Se qualcuno mi cerca, sono alla locanda a fingere di non esserci.",
		"Locanda. Sgabello. Silenzio. Mi accontento di due su tre.",
		"La locanda è da quella parte, vero? Non rispondete. I piedi lo sanno già.",
	},
	["org.quest_complete.w18.next.006"] = {
		"Dovrei scrivere una lettera a qualcuno. Non lo farò, ma starò un po' davanti alla cassetta della posta a pensarci.",
		"Adesso la cassetta della posta. Non ci sarà niente. Controllo lo stesso, come si fruga in una tasca che si sa vuota.",
		"Darò un'occhiata alla cassetta della posta passando. Le lettere sono rare, ma sperare non costa niente.",
	},
	["org.quest_complete.w18.next.007"] = {
		"si avvia verso i fabbri contando sulle dita di una mano le cose da far riparare, e poi su quelle dell'altra.",
		"punta all'incudine più vicina con una lista di piccoli danni, spuntandoli dito per dito.",
		"va verso il rumore dei martelli, tenendo davanti agli occhi una cinghia sfilacciata e guardandola storto lungo la strada.",
	},
	["org.quest_complete.w18.next.008"] = {
		"Per una volta non ho un prossimo lavoro scritto in testa. Camminerò finché qualcosa in città non mi chiama.",
		"Nessuna commissione dopo questa. Seguirò la via più affollata e scoprirò perché è così affollata.",
		"Niente in programma. Capita così di rado che intendo sprecarlo come si deve.",
	},
	["org.quest_complete.w18.next.009"] = {
		"Zaino pieno, tasche leggere. In questa città qualcuno compra cianfrusaglie, e intendo trovarlo.",
		"Prima un mercante che compri di tutto. Poi uno che venda qualcosa di buono.",
		"Chi compra? Avanzi, ritagli, un po' di tutto. Soprattutto ritagli.",
	},
	["org.quest_complete.w18.next.010"] = {
		"C'è un maestro di mestiere nel Drag che mi insegnerà la prossima cosa appena potrò pagarla. Vediamo se posso.",
		"Lungo il Drag c'è un maestro di qualche arte che aspetta le mie monete e le mie mani goffe. Sono pronte tutte e due.",
		"Il mio mestiere avrebbe bisogno di un'altra lezione, e la mia borsa può a malapena permettersene una.",
	},
	["org.quest_complete.w18.next.011"] = {
		"si avvia verso la banca a passo deciso, arriva tre bancarelle più in là e si ferma a guardare una cintura.",
		"punta alla banca in linea retta, che a Orgrimmar dura fino al primo fuoco da cucina.",
		"parte verso la banca, devia verso un banco di fibbie, corregge la rotta e devia ancora, stavolta verso un banco di coltelli.",
	},
	["org.quest_complete.w18.next.012"] = {
		"Oltre il portale principale le strade aspettano. Possono aspettare ancora un po': alla locanda c'è uno sgabello che ha imparato la mia forma.",
		"Le strade oltre il portale ci saranno ancora dopo una scodella di qualcosa di caldo. Le strade sono pazienti, in questo.",
		"Sento già il portale che mi tira. Aspetta, strada. Prima fammi sedere.",
	},
	["org.quest_complete.w18.next.013"] = {
		"Mangiare. Poi la banca. Poi mangiare un'altra volta, se la banca è stata gentile.",
		"Prima la pancia, poi i conti. È l'ordine naturale delle cose.",
		"Provviste, un pasto, un po' di sonno. Nell'ordine in cui la città me li concede.",
	},
	["org.quest_complete.w18.next.014"] = {
		"È subito dopo un lavoro che le torri degli zeppelin fuori dal portale chiamano più forte. Ovunque tranne qui, dicono. Di solito vado in banca.",
		"Un compito finito fa sempre sembrare invitanti gli zeppelin. Poi mi ricordo del goblin che vende il passaggio, e la voglia si calma.",
		"Dal portale potrei salire su uno zeppelin prima di averci ripensato. Proprio per questo vado alla locanda.",
	},
	["org.quest_complete.w18.next.015"] = {
		"si ferma dove la via si divide in tre e resta lì un momento, come un lupo che cerca da che parte arriva l'odore di un fuoco da cucina.",
		"si ferma a un bivio della strada, voltando la testa da una parte e dall'altra, finché è la folla a decidere, a spinte.",
		"si arresta dove due strade si incontrano e lascia passare tre persone per lato, prima di prendere quella che ne ha meno.",
	},
	["org.quest_complete.w18.next.016"] = {
		"Dovrei legare la pietra del ritorno alla locanda, già che sono in città. Lo dico ogni volta, e poi mi sveglio da un'altra parte.",
		"Pietra del ritorno. Locanda. Due minuti di lavoro. Me ne dimenticherò, è ovvio, e mi maledirò in qualche campo lontano.",
		"Prima la pietra del ritorno. L'ultima volta che me ne sono {g:dimenticato|dimenticata} l'ho rimpianto per una camminata lunghissima.",
	},
	["org.quest_complete.w18.next.017"] = {
		"È ora di una lezione. Il mio maestro troverà qualcosa che non va. Lo trovano sempre.",
		"Dal mio maestro, a pagare buon argento per cattive notizie.",
		"Dal maestro, allora. Qualcuno dovrà pur dirmi che sbaglio con i gomiti.",
	},
	["org.quest_complete.w18.next.018"] = {
		"Nessuna fretta per la prossima cosa. La prossima cosa non ha mai mancato di trovarmi.",
		"Non andrò a cercare lavoro. A Orgrimmar è il lavoro che viene a cercarti, di solito urlando.",
		"Il prossimo incarico arriverà come arrivano tutti, nel momento peggiore. Fino ad allora, niente.",
	},
	["org.quest_complete.w18.next.019"] = {
		"prende la strada lunga verso la locanda, quella che per caso passa accanto a ogni fuoco da cucina della via.",
		"segue lungo la via un filo di fumo da cucina, prima il naso, poi la borsa.",
		"si lascia guidare dall'odore di fumo e di grasso, con la faccia di chi si fa guidare molto volentieri.",
	},
	["org.quest_complete.w18.next.020"] = {
		"Riparazioni. Ogni lavoro finito si conclude davanti a un fabbro, a porgere qualcosa di ammaccato con l'aria innocente.",
		"Il fabbro vorrà sapere come ho ridotto così la mia roba. Dirò che l'ho trovata già così.",
		"In fondo al Drag c'è un fabbro che sta per sospirarmi addosso. Meglio togliersi il pensiero.",
	},
	["org.quest_complete.w18.next.021"] = {
		"Qualcuno va verso il portale? Faccio la strada con voi fino alla banca.",
		"Fate la mia strada? Io vado in banca, e poi dove la banca mi lascia andare.",
		"Qualcuno mi fa compagnia sulla strada per la locanda? Non parlerò molto. Più che altro mi lamenterò.",
	},
	["org.quest_complete.w18.next.022"] = {
		"Il maestro, la banca, la locanda: le stesse tre porte dopo ogni lavoro, e mi fanno piacere. Un'abitudine è una specie di tetto.",
		"La porta della banca, quella della locanda, quella del maestro. Potrei fare il giro a occhi chiusi. Consola, sapere dove sono le porte.",
	},
	["org.quest_complete.w18.next.023"] = {
		"si avvia verso la locanda mentre lungo la via si accendono le torce, insieme a tutti quelli che hanno avuto lo stesso pensiero.",
		"punta alla locanda mentre qualcuno risale la via accendendo le torce, un fuoco che si apprende dopo l'altro.",
	},
	["org.quest_complete.w18.next.024"] = {
		"In questa città c'è sempre un altro lavoro. C'è anche sempre una panca. Prima la panca.",
		"Prima o poi ogni via di Orgrimmar porta a un altro lavoro. Prendo quella con un posto dove sedersi.",
		"Il lavoro dopo. Adesso sedersi. La città capirà, o non capirà, e io resterò a sedere in ogni caso.",
	},
	["org.quest_complete.w18.next.025"] = {
		"Il mastro di volo può aspettare. Per una volta le gambe vogliono vedere la città da terra.",
		"Niente voli per adesso. Vorrei camminare per questa città un po' senza che qualcuno mi mandi da qualche parte.",
		"La torre non va da nessuna parte. Nemmeno io, per un po'.",
	},
	["org.quest_complete.w18.nod.001"] = {
		"riceve un solo cenno del capo, lento e deliberato, di quelli che prendono le misure a una persona prima di lasciarla andare.",
		"si vede rivolgere un lungo cenno, senza fretta, e resta immobile sotto di esso come sotto l'occhio di un perito.",
	},
	["org.quest_complete.w18.nod.002"] = {
		"Quel cenno. Niente parole, solo il mento abbassato una volta, e so esattamente a che punto sto in questa città.",
		"Un colpo di mento all'ingiù. Ha detto più della borsa.",
		"Appena un movimento della testa, eppure è la parte che ricorderò più a lungo.",
	},
	["org.quest_complete.w18.nod.003"] = {
		"Orgrimmar ha un'intera lingua di cenni. Profondo vuol dire rispetto, rapido vuol dire circolare, e quello lento con gli occhi socchiusi vuol dire che ti ricorderanno. Io ho avuto quello lento.",
		"Sto imparando i cenni della città come una lingua: quello breve congeda, quello profondo onora, quello lento ti mette da parte per dopo. Questo era lento.",
	},
	["org.quest_complete.w18.nod.004"] = {
		"Prendo il cenno per un sì e il grugnito per un applauso.",
		"Un cenno e un grugnito. In questa città è un'ovazione in piedi.",
		"Cenno, grugnito, fatto. Ho avuto accoglienze più calde, ma mai così rapide.",
	},
	["org.quest_complete.w18.nod.005"] = {
		"ricambia il cenno esattamente profondo quanto è stato dato, non un dito di più, e il calcolo pare soddisfare tutti.",
		"rende il cenno alla stessa profondità, né più né meno, come si fanno tutti gli affari in questa città.",
		"ricambia il cenno con cura precisa, come se un cenno più profondo potesse sembrare un debito.",
	},
	["org.quest_complete.w18.nod.006"] = {
		"A Orgrimmar ho imparato a leggere gli occhi più delle bocche. Questi dicevano: fatto bene, e senza storie.",
		"La bocca non ha detto quasi niente. Il resto l'hanno detto gli occhi, ed era un buon resto.",
	},
	["org.quest_complete.w18.nod.007"] = {
		"si vede congedare con un gesto della mano e se ne va senza storie, come se anche quel gesto fosse un modo di ringraziare.",
		"ottiene un breve gesto verso la strada, il modo di Orgrimmar per dire che la questione è chiusa, e lo accoglie.",
	},
	["org.quest_complete.w18.nod.008"] = {
		"Un grunt alla postazione più vicina ha incrociato il mio sguardo mentre la faccenda si chiudeva e mi ha fatto mezzo cenno, come se anche lui tenesse il conto.",
		"Persino la guardia lì vicino ha abbassato la testa di un soffio quando è finita. Nessuno in questa città ammette di guardare, e guardano tutti.",
	},
	["org.quest_complete.w18.nod.009"] = {
		"Un cenno! Lo faccio incorniciare e lo appendo sopra il letto.",
		"Ma guarda, un cenno. Questa la racconterò in giro.",
		"Qualcuno si segni la data. Ho ricevuto un cenno.",
	},
	["org.quest_complete.w18.nod.010"] = {
		"Nessuno si inchina, a Orgrimmar. Un cenno tra pari, il capo chino davanti al Capoguerra, e la cerimonia finisce lì. La preferisco così.",
		"Niente inchini e salamelecchi in questa città. Le teste si abbassano per il Capoguerra e per i morti; per tutti gli altri basta un cenno.",
	},
	["org.quest_complete.w18.nod.011"] = {
		"sostiene lo sguardo dell'altro un istante più del necessario, finché non arriva il cenno, poi si volta verso la strada.",
		"aspetta, con gli occhi all'altezza giusta, il piccolo cenno che chiude la faccenda, e solo allora torna tra la folla.",
	},
	["org.quest_complete.w18.nod.012"] = {
		"Hai fatto cenno prima che finissi. Era così buono, o così noioso?",
		"A metà del resoconto ed ecco già il cenno. Voglio credere che sia una lode.",
	},
	["org.quest_complete.w18.nod.013"] = {
		"Ho avuto il cenno, e insieme una strana voglia di ricambiarlo a tutta la città. Non se ne accorgerebbe. Non si ferma mai abbastanza da ricevere un cenno.",
		"Vorrei restituire quel cenno a Orgrimmar stessa, a ogni muro, ogni lupo, ogni bancarella che urla. La città non se ne accorgerebbe. Non è il tipo.",
	},
	["org.quest_complete.w18.nod.014"] = {
		"E un cenno in risposta. Ecco. Ci capiamo alla perfezione.",
		"Cenno per cenno. Non serve dire altro, vero?",
	},
	["org.quest_complete.w18.nod.015"] = {
		"Un grazie senza parole è il più difficile da contestare. Non posso nemmeno fingere di aver capito male.",
		"Non è stato detto niente, eppure non resta spazio per i dubbi. Una lode detta si può ritirare; un cenno no.",
	},
	["org.quest_complete.w18.nod.016"] = {
		"coglie da qualche parte della strada un ghigno pieno di zanne e risponde con un sorriso piccolo, a labbra chiuse.",
		"scambia un ghigno storto con uno sconosciuto dalle zanne, dall'altra parte della strada, senza spiegazioni da nessuna delle due parti.",
	},
	["org.quest_complete.w18.nod.017"] = {
		"Qui il rispetto ha la forma dell'essere {g:ignorato|ignorata} dalle persone giuste. Le guardie lungo la strada mi lasciano passare senza un secondo sguardo. È questo il cenno che conta.",
		"Il complimento migliore di questa città è un grunt di guardia che non si prende la briga di sorvegliarti. Fiducia è essere ignorati da chi è pagato per notare.",
	},
	["org.quest_complete.w18.nod.018"] = {
		"riceve il cenno alla luce delle torce, un rapido abbassarsi di una testa mezza in ombra, e se ne va nella strada buia a faccenda chiusa.",
		"ottiene un cenno appena visibile nel buio tra due torce, e lo prende sulla fiducia.",
	},
	["org.quest_complete.w18.nod.019"] = {
		"I Kor'kron di Grommash Hold non fanno cenni a nessuno. Io continuo a sperarci. Un giorno, forse. A guardarli, no.",
		"In questa città prima o poi fanno tutti un cenno, tranne i Kor'kron. Ho deciso di prenderla come una sfida.",
	},
	["org.quest_complete.w18.nod.020"] = {
		"Non servono parole. Parlo il cenno correntemente.",
		"Capito. Le parole puoi risparmiartele; ormai i cenni li leggo come una lingua mia.",
	},
	["org.quest_complete.w18.nod.021"] = {
		"rimane immobile un momento a faccenda chiusa, come in attesa di qualcos'altro, poi fa un breve cenno a nessuno in particolare.",
		"indugia, poi fa un solo cenno alla strada in generale, un punto fermo tutto suo.",
	},
	["org.quest_complete.w18.nod.022"] = {
		"Una pacca sulla spalla è solo un cenno per chi preferisce usare le mani. Orgrimmar è piena di gente così.",
		"Quel colpo sul braccio era un cenno, consegnato a pugno. Il dolore farà da ricevuta.",
	},
	["org.quest_complete.w18.nod.023"] = {
		"Questo è uno sguardo alla pari. Meglio alla pari che caloroso, sempre.",
		"Non proprio amichevole. Uno sguardo da pari a pari. Lo prendo.",
	},
	["org.quest_complete.w18.nod.024"] = {
		"Throm-ka. Alla prossima.",
		"Stessa città, altri guai la prossima volta. Throm-ka.",
	},
	["org.quest_complete.w18.nod.025"] = {
		"riceve il cenno attraverso un velo di sabbia che soffia, occhi socchiusi da entrambe le parti, e la faccenda si chiude senza una parola che qualcuno potesse sentire.",
		"ottiene un cenno mezzo perso nella sabbia che sibila giù per la strada, e risponde con gli occhi ridotti a fessure.",
	},
	["org.quest_complete.w18.nod.026"] = {
		"Altrettanto. Cenno ricevuto, cenno restituito.",
		"E lo stesso a te, con gli interessi.",
	},
	["org.quest_complete.w18.oath.001"] = {
		"Avevo detto che l'avrei portato a termine, ed è fatto. Nessuno controlla una promessa così piccola: proprio per questo vale la pena mantenerla.",
		"Una promessa da poco, rispettata fino in fondo. Se l'avessi lasciata cadere non se ne sarebbe accorto nessuno. Io sì.",
	},
	["org.quest_complete.w18.oath.002"] = {
		"La parola data è parola mantenuta. Non mi serve altra cerimonia.",
		"Chiesto, promesso, fatto. Segnatelo come si segnano queste cose.",
		"Avevo dato la mia parola. La trovi dove l'ho lasciata: mantenuta.",
	},
	["org.quest_complete.w18.oath.003"] = {
		"porta per un attimo il pugno chiuso al petto mentre il lavoro viene dichiarato concluso: un gesto semplice che non chiede risposta.",
		"si batte le nocche sul petto una volta sola, come fanno i grunt alla porta quando un turno di guardia passa da una mano all'altra.",
		"posa la mano aperta sul petto per la durata di un cenno, poi la lascia ricadere e torna verso la strada.",
	},
	["org.quest_complete.w18.oath.004"] = {
		"L'onore, a Orgrimmar, fa rumore: stendardi, giuramenti, nomi gridati da una parte all'altra della Valley of Honor. Il mio è più sommesso. Somiglia a un lavoro finito quando nessuno guardava.",
		"Alla Valley of Honor vanno gli istruttori e le urla. L'onore silenzioso si fa in commissioni come questa, e nessuno ne tiene il conto.",
		"Stendardi a volontà, in città, per l'onore che si nota. Nessuno per questo, e va bene così. Non l'ho mai fatto per uno stendardo.",
	},
	["org.quest_complete.w18.oath.005"] = {
		"Tieni i ringraziamenti per qualcosa che non avevo promesso.",
		"Non serve ringraziare. Avevo detto di sì: ecco com'è fatto un sì.",
		"I grazie sono per i favori. Questa era una promessa.",
	},
	["org.quest_complete.w18.oath.006"] = {
		"I grunt alla porta raccontano che nei campi di internamento la parola era l'unica cosa che un orco possedesse ancora, e doveva valere. L'abitudine è sopravvissuta ai campi. Capisco perché.",
		"Un vecchio grunt della Valley of Strength lo racconta chiaro e tondo: dietro i recinti degli umani, una promessa era l'unica merce rimasta. Orgrimmar commercia ancora in quella moneta, e io ho appena pagato con quella.",
	},
	["org.quest_complete.w18.oath.007"] = {
		"aspetta un istante dopo i ringraziamenti, come per accertarsi che non sia rimasto nulla a metà, poi annuisce e lascia andare la faccenda.",
		"si trattiene quanto basta per sentirsi dire che è tutto in ordine, e solo allora si volta.",
		"fa una sola domanda breve per avere la certezza che il lavoro sia completo, sente che lo è, e sembra posare qualcosa.",
	},
	["org.quest_complete.w18.oath.008"] = {
		"L'Orda ha chiesto. L'Orda ha avuto. Tutto qui.",
		"Quello che l'Orda ha bisogno di portare, lo porto io. Scrivete il mio nome.",
		"Volentieri, per la città del Capoguerra. Chi è il prossimo?",
	},
	["org.quest_complete.w18.oath.009"] = {
		"Ho promesso a uno sconosciuto di fare una cosa, l'ho fatta, e ancora non so perché contasse tanto. Una parola mantenuta alla cieca resta una parola mantenuta.",
		"Non ho mai chiesto a cosa servisse. Ho solo detto che l'avrei fatto. Forse è la promessa più onesta che esista. O la più sciocca.",
	},
	["org.quest_complete.w18.oath.010"] = {
		"chiude la faccenda con un breve cenno e uno sguardo che dura un istante più del necessario: lo sguardo di un debito chiuso da entrambe le parti.",
		"incrocia gli occhi di chi ha affidato il lavoro e li regge quanto basta a chiarire che i conti tornano.",
	},
	["org.quest_complete.w18.oath.011"] = {
		"A Orgrimmar l'onore costa poco: ce l'hanno tutti, ne parlano tutti. Raro è chi si presenta quando ha detto che l'avrebbe fatto.",
		"Mezza Orgrimmar ti parlerà d'onore. Meno sono quelli che finiscono il lavoro che hanno preso. Preferisco stare tra quei pochi.",
		"Per queste strade parlare d'onore non costa nulla, e se ne sente parecchio. Il lavoro finito è la moneta più rara.",
	},
	["org.quest_complete.w18.oath.012"] = {
		"Mi hai dato fiducia. Vale più della paga, e non lo dirò una seconda volta.",
		"Hai preso la mia parola senza guardarla due volte. Una fiducia così non la dimentico.",
		"La parte pesante era la tua fiducia. Il resto era solo lavoro.",
	},
	["org.quest_complete.w18.oath.013"] = {
		"Servire l'Orda, quasi sempre, è esattamente questo: un incarico, un resoconto, un cenno. Le canzoni lo tralasciano.",
		"Nessuno giura fedeltà all'Orda per le commissioni. Poi si scopre che le commissioni sono quasi tutto, e la parola tiene lo stesso.",
		"L'Orda si regge su giuramenti fatti a gran voce e mantenuti in silenzio. Questa era una delle parti silenziose.",
	},
	["org.quest_complete.w18.oath.014"] = {
		"riceve in risposta un saluto rigido e formale, come se la commissione fosse stata un affare di stato, e lo ricambia con la stessa rigidità.",
		"accoglie i ringraziamenti con la schiena ben dritta, e un grunt lì vicino raddrizza la propria senza sapere bene perché.",
	},
	["org.quest_complete.w18.oath.015"] = {
		"La parola è mantenuta. Se valesse la pena darla, lo scoprirò più avanti, se mai lo scoprirò.",
		"Ho fatto esattamente quello che avevo promesso. Se dovevo prometterlo è una domanda da posto più tranquillo.",
		"Mantenuta, fino all'ultimo. Mantenere una promessa è semplice. Sapere che era quella giusta da fare non lo è mai.",
	},
	["org.quest_complete.w18.oath.016"] = {
		"Promesso, consegnato. Ci giurerei sopra, ma la parte difficile l'ho già fatta.",
		"Ecco. Una promessa mantenuta, a Orgrimmar, senza che nessuno gridasse. Segnatevi la data.",
		"Giuramento adempiuto. Lo vorrei inciso, ma mi basta un cenno.",
	},
	["org.quest_complete.w18.oath.017"] = {
		"Gli sciamani nella Valley of Spirits dicono che la terra ricorda ogni passo che la calpesta. Se tiene il conto anche delle promesse, ne ha una mantenuta in più.",
		"Un troll nella Valley of Spirits giura che i loa sentono ogni promessa detta a voce alta. Questa l'avranno sentita finire bene.",
	},
	["org.quest_complete.w18.oath.018"] = {
		"tira fuori da una sacca un pezzo di carta spiegazzato, cancella una riga e lo rimette via.",
		"depenna una voce da un elenco breve e piegato mille volte, e guarda quello che resta con una certa cupezza.",
		"spiega un elenco consumato, trova la riga giusta e la barra con cura con un mozzicone di carboncino.",
	},
	["org.quest_complete.w18.oath.019"] = {
		"Lavoro piccolo, onore uguale. A pesarlo sono solo io.",
		"Una cosa piccola, fatta per bene. È lì che sta l'onore, quasi sempre.",
		"L'onore non guarda prima quanto è grande il lavoro.",
	},
	["org.quest_complete.w18.oath.020"] = {
		"Thrall ha spalancato i campi e ha chiesto soltanto che gli orchi restassero uniti, da popolo libero. È con lavori come questo che faccio la mia parte.",
		"C'è stato un tempo in cui gli orchi lavoravano perché un umano con la frusta lo ordinava. Ora lavoro perché ho dato la mia parola. Da fuori sembra uguale. Non lo è per niente.",
	},
	["org.quest_complete.w18.oath.021"] = {
		"Fra noi, i conti sono pari. Se cambia qualcosa, il mio nome lo conosci.",
		"Ora nessuno deve niente a nessuno. È così che mi piace lasciare una porta.",
		"Conti chiusi, da tutte e due le parti. Mi piace ripartire da zero.",
	},
	["org.quest_complete.w18.oath.022"] = {
		"Nessuno mi ha chiesto com'è andata, solo se era fatto. L'onore risponde alla seconda domanda. La prima la tengo per me.",
		"Volevano sentirsi dire che era fatto. Il come resta a me da portare, e lo rifarei uguale.",
		"Volevano il risultato. Il modo non era nemmeno in discussione, ed è proprio quella la parte su cui metterei la firma.",
	},
	["org.quest_complete.w18.oath.023"] = {
		"chiude la faccenda mentre la luce abbandona le pareti del canyon, e resta un po' in quel rosso che si scurisce, come chi sta alla fine di una veglia.",
		"conclude l'affare mentre l'ultima luce risale le pareti del canyon, e non si muove finché non è sparita.",
	},
	["org.quest_complete.w18.oath.024"] = {
		"Le cose a metà non le faccio. Chiedi a chiunque mi abbia dato lavoro.",
		"Un lavoro a metà è una promessa rotta con le buone maniere. Questo è intero.",
		"Intero, dall'inizio alla fine. Le mezzene le lascio ai macellai del Drag.",
	},
	["org.quest_complete.w18.oath.025"] = {
		"La paga finirà presto. Resta il fatto che ho fatto quello che avevo detto. Quello non si spende.",
		"Le monete finiscono. Una parola mantenuta no: resta lì, ed è vera.",
		"Fra una settimana la borsa sarà vuota. La promessa mantenuta lo resterà molto più a lungo.",
	},
	["org.quest_complete.w18.purse.001"] = {
		"Rame annerito, argento dei goblin e una moneta con un conio che nessuno in questa città saprebbe leggere. Le bancarelle li prendono tutti allo stesso modo.",
		"Monete mischiate, come sempre a Orgrimmar: rame consumato, argento lucido e un pezzo strano arrivato chissà da dove. Ogni bancarella accetta ogni tipo.",
		"Rame bucato nel mezzo, argento limato sul bordo, una moneta consumata fino a diventare liscia. La paga, in questa città, arriva con una storia tutta sua.",
	},
	["org.quest_complete.w18.purse.002"] = {
		"saggia tra i denti una moneta della paga, per pura abitudine, e si guadagna un'occhiata afflitta da un goblin di passaggio, che evidentemente lo considera un mestiere suo.",
		"morde una moneta della ricompensa per controllarla, e un goblin lì vicino fa una smorfia, come se avessero morso lui.",
		"stringe una moneta della paga tra i molari, poi esamina l'ammaccatura con l'aria dell'intenditore.",
	},
	["org.quest_complete.w18.purse.003"] = {
		"Conto la paga al tatto, con gli occhi sulla strada: ruvido e sottile è rame, liscio e più pesante è argento. Le dita lo sanno prima di me.",
		"Contate senza uno sguardo. La mano distingue il rame dall'argento dal bordo soltanto, e lascia gli occhi liberi per la folla.",
		"Non serve guardare in basso. Il pollice smista le monete dentro la borsa mentre io tengo d'occhio chi tiene d'occhio me.",
	},
	["org.quest_complete.w18.purse.004"] = {
		"Uno, due... mh. No, c'è tutto. È che non so contare con un tamburo che batte.",
		"Aspetta, ne manca una. No, sbaglio io. Contare in mezzo a questo baccano non è roba per me.",
		"Un attimo, fatemi contare. Qualcuno fermi quel martello per un momento.",
	},
	["org.quest_complete.w18.purse.005"] = {
		"Pagato davanti a tutti, contato a voce alta, schiacciato nel palmo. Questa città nasconde parecchio, ma il prezzo mai.",
		"Niente buste, niente sussurri: le monete escono sotto gli occhi di tutti e mi atterrano in mano con uno schiocco. Orgrimmar paga come litiga, ad alta voce.",
		"Nessuno in questa città ti passa i soldi sotto il mantello. Si contano dove tutti possono vedere, e a me sta bene.",
	},
	["org.quest_complete.w18.purse.006"] = {
		"lascia scivolare le monete dal palmo alla borsa una dopo l'altra, ascoltandole cadere, e solo allora tira stretto il laccio.",
		"versa la paga nella borsa piano, perché si senta il tintinnio di ogni pezzo, e la chiude con uno strattone.",
		"fa cadere la ricompensa nella borsa pezzo per pezzo, dando a ogni moneta il suo piccolo momento, poi stringe il laccio.",
	},
	["org.quest_complete.w18.purse.007"] = {
		"Già spesi, nella mia testa: suole nuove agli stivali, un pasto caldo, una cinghia rammendata. Alle monete nessuno l'ha detto.",
		"La borsa non è ancora chiusa e i soldi, nella mia testa, sono già finiti a un calzolaio, a un cuoco e a un conciatore del Drag. Le monete vere arriveranno dopo.",
		"Questa paga ha tre lavori davanti: stivali, una ciotola di qualcosa, una fibbia. Nessuno l'ha avvertita.",
	},
	["org.quest_complete.w18.purse.008"] = {
		"Forse la prima moneta di questa paga dovrebbe andare a qualcuno che ha meno. A Orgrimmar quel qualcuno non è mai lontano più di qualche passo.",
		"C'è sempre un peone con la ciotola vuota a portata di vista, in questa città. Una moneta della paga potrebbe arrivare fin lì.",
		"Una sola moneta di questa paga sfamerebbe un peone per un bel po'. Mi sto chiedendo quale.",
	},
	["org.quest_complete.w18.purse.009"] = {
		"sposta la borsa dalla cintura a dentro la camicia, dove una strada affollata dovrà faticare parecchio per arrivarci.",
		"infila la ricompensa in una tasca interna con un movimento rapido, di quelli che si imparano tra la folla, e ci tiene sopra la mano un istante di più.",
		"fa scorrere la borsa sul davanti della cintura, dove si vede e, soprattutto, si sente.",
	},
	["org.quest_complete.w18.purse.010"] = {
		"La paga pesa più di quanto dovrebbe pesare il metallo. Una parte è fiducia, ed è la moneta più pesante da portare.",
		"La borsa pende più di quanto spieghino le monete dentro. In parte è la città che decide che su di me si può contare.",
		"Una moneta è una moneta. Queste però hanno dentro, ripiegata, un po' della fiducia della città in me, e quella parte è più difficile da spendere.",
	},
	["org.quest_complete.w18.purse.011"] = {
		"La casa d'aste si prende la sua parte di tutto quello che vendo, la locanda la sua di tutto quello che bevo. La paga è l'unica moneta di Orgrimmar che mi arriva senza la mano di qualcuno già dentro.",
		"Quasi tutti i soldi di questa città mi arrivano assottigliati: una percentuale qui, una tariffa là. La paga di un lavoro onesto è l'unica che arriva intera.",
	},
	["org.quest_complete.w18.purse.012"] = {
		"L'Orda paga il giusto e mai due volte. Il giusto basta e avanza. Due volte mi farebbe chiedere che altro vuole.",
		"Né generosa né avara: l'Orda paga quanto valeva il lavoro e non un rame di più. Rispetto chi conosce i propri prezzi.",
		"Niente premi, niente trattative, niente favori infilati tra le monete. L'Orda paga il prezzo che ha detto, ed è tutta lì la sua gentilezza.",
	},
	["org.quest_complete.w18.purse.013"] = {
		"rovescia la ricompensa nel palmo per un'occhiata veloce, poi la rimette via prima che qualcuno in strada possa darle un prezzo.",
		"apre la borsa di un dito, sbircia dentro e la richiude appena la testa di un ambulante si gira da questa parte.",
		"dà un'occhiata dentro la borsa come un giocatore dà un'occhiata alle carte, e non lascia trasparire nulla.",
	},
	["org.quest_complete.w18.purse.014"] = {
		"Ho smesso di contare la paga davanti a chi me la consegna. Qui sembra un insulto. Tre passi più in là, in strada, sembra buon senso.",
		"Conta i soldi sotto il naso di chi te li dà e hai dato del truffatore a qualcuno. Contali fuori in strada e sei soltanto prudente. Le buone maniere di Orgrimmar sono questione di pochi passi.",
		"Mai contarla mentre chi paga ti guarda; sempre contarla prima dell'angolo successivo. Due regole di questa città, e non ne ho infranta nessuna.",
	},
	["org.quest_complete.w18.purse.015"] = {
		"scuote la borsa accanto all'orecchio, ascoltando come un goblin ascolta un motore, e annuisce a quello che il tintinnio ha da dire.",
		"fa tintinnare la borsa vicino all'orecchio, la testa inclinata, come un meccanico che giudica un ingranaggio dal rumore.",
		"fa saltare la borsa due volte su due dita, come un cuoco che giudica un melone, con un'espressione che dice che può andare.",
	},
	["org.quest_complete.w18.purse.016"] = {
		"Vediamo. Mh. Bene. E adesso guardatemi fare la faccia di chi non si stupisce: aiuta, dopo, a trattare.",
		"Me la intasco con la faccia seria. In questa città sembrare contenti fa solo salire i prezzi.",
		"Niente sorrisi, visto? Sorridi alla tua paga a Orgrimmar e tutte le bancarelle lo vengono a sapere prima dell'angolo dopo.",
	},
	["org.quest_complete.w18.purse.017"] = {
		"Senti? Moneta guadagnata. Suona diversa da quella trovata, ci giuro.",
		"Ascoltala. La moneta guadagnata col lavoro ha un suono migliore di quella raccolta per terra.",
	},
	["org.quest_complete.w18.purse.018"] = {
		"Con questo il mio buon nome è a posto per un po'.",
		"Ecco. L'affitto del mio buon nome è coperto per un altro tratto.",
		"Bene. La mia reputazione in città ha appena fatto il pieno.",
	},
	["org.quest_complete.w18.purse.019"] = {
		"Per quanto piccola sia la paga, la conto. Anche una moneta piccola è la città che dice che qualcuno se n'è accorto.",
		"Grande o piccola, in una capitale così indaffarata la paga vuol dire una cosa sola: qualcuno si è fermato abbastanza a lungo da guardare.",
		"Non storco mai il naso davanti alla cifra. In una città con tutte queste mani, essere pagati è già essere visti.",
	},
	["org.quest_complete.w18.purse.020"] = {
		"conta la paga al fuoco di un braciere, le monete che si fanno rosse una dopo l'altra nel palmo.",
		"rigira le monete della ricompensa accanto a un braciere, ognuna che si accende di rosso quando prende il fuoco, mentre il buio resta lì attorno.",
	},
	["org.quest_complete.w18.purse.021"] = {
		"Nei campi il lavoro di un orco si pagava con una brodaglia acquosa e il bastone del sorvegliante. Qui la moneta finisce nella mia mano. Non è cosa da poco, qualunque sia la cifra.",
		"Un tempo, raccontano i vecchi, gli orchi faticavano dietro i recinti degli umani per niente. Ora un orco viene pagato in una città di orchi. Moneta piccola, differenza grande.",
		"Niente catene, niente sorveglianti, niente recinti: solo lavoro, e la sua paga, messa dall'Orda in mano a un orco. Gli anziani direbbero che il senso è tutto qui.",
	},
	["org.quest_complete.w18.purse.022"] = {
		"La borsa si è appena chiusa e un mercante goblin, due bancarelle più in là, ha già sistemato la merce. Non so come, ma lo sanno sempre.",
		"Ho appena messo via la paga e un mercante a portata d'orecchio si schiarisce la gola e alza il prezzo di tutto. In questa città le monete hanno un odore.",
		"Ogni ambulante a portata d'orecchio ha appena trovato qualcosa che è proprio della mia misura. Buffo come la paga cambi la strada.",
	},
	["org.quest_complete.w18.purse.023"] = {
		"Saldato fino all'ultimo rame. Mi piace trattare con gente che sa contare.",
		"Non manca una moneta. Chi tiene la borsa da queste parti sa fare il suo mestiere.",
		"Conti giusti. Qualcuno in questa città tiene i libri in modo onesto.",
	},
	["org.quest_complete.w18.purse.024"] = {
		"Questa moneta è passata per cento mani: quelle di un fabbro, di un grunt, di qualche goblin. Adesso le mie, per un poco. A Orgrimmar non sta ferma nemmeno la moneta.",
		"Consumata liscia da altri palmi, questa paga. Ogni pezzo ha attraversato la città più volte di me, e mi lascerà prima di quanto vorrei.",
	},
	["org.quest_complete.w18.purse.025"] = {
		"Tenetene una moneta per le casse di guerra. Io mi arrangio col resto.",
		"Metà delle monete dell'Orda finisce comunque nelle mura. La mia la prendo solo in prestito, per un po'.",
	},
	["org.quest_complete.w18.purse.026"] = {
		"Il peso è giusto in mano, il suono è giusto nella borsa. Bene.",
		"Peso giusto, suono giusto. Da me nessuna lamentela.",
	},
	["org.quest_complete.w18.purse.027"] = {
		"chiude la borsa con un doppio nodo, di quelli che irritano i proprietari onesti e sconfiggono le dita svelte, e le dà un colpetto.",
		"annoda due volte la borsa e infila sotto il capo libero: una piccola fortificazione per una piccola fortuna.",
	},
	["org.quest_complete.w18.quip.001"] = {
		"Prima che tu lo dica: sì, lo so che c'è dell'altro. C'è sempre dell'altro.",
		"Fammi indovinare. Il prossimo lavoro è in fila proprio dietro a questo.",
		"Non dirmelo. Qualcun altro ha bisogno di qualcosa, e ne ha bisogno da me.",
	},
	["org.quest_complete.w18.quip.002"] = {
		"Posso almeno contarle? No? Va bene. Qual è il prossimo?",
		"Mi passi il prossimo incarico con la stessa mano che mi ha pagato. Efficienza pura.",
		"Chiederei un momento per godermela, ma vedo già il prossimo lavoro che ti si forma sulle labbra.",
	},
	["org.quest_complete.w18.quip.003"] = {
		"Se qualcun altro mi cerca, ditegli che adesso vivo a Razor Hill. Per sempre.",
		"Se c'è altro lavoro, di' che sono introvabile. Orgrimmar è grande, ci crederanno.",
		"Se qualcuno chiede, ho lasciato la città di gran fretta. Verso le Barrens, diciamo. Molto dentro le Barrens.",
	},
	["org.quest_complete.w18.quip.004"] = {
		"Era un sorriso, quello? Occhio: se lo vedono i grunt, cominciano a fare domande.",
		"Piano con la gratitudine. In questa città la gente mormora per molto meno.",
	},
	["org.quest_complete.w18.quip.005"] = {
		"Qualunque cosa ci sia dopo, arriva dopo una sedia. Queste sono le mie condizioni.",
		"Il prossimo lavoro è benvenuto, appena trovo una panca. Non un attimo prima.",
		"Felice di dare ancora una mano. Ma prima mi siedo, per un po'.",
	},
	["org.quest_complete.w18.quip.006"] = {
		"Ti sembra che abbia bisogno di camminare ancora? Non rispondere.",
		"Altra strada? I miei stivali hanno presentato reclamo.",
	},
	["org.quest_complete.w18.quip.007"] = {
		"Il piacere è mio. Be', il piacere sta nella borsa, ma è mio.",
		"Sempre bello lavorare con te. Specie il momento della paga.",
		"Bella collaborazione. Il pezzo che preferisco è la fine, dove ci sono le monete.",
	},
	["org.quest_complete.w18.quip.008"] = {
		"Lascia stare il discorso. Indicami la banca prima che qualcuno mi rifili un altro lavoro.",
		"Grazie, sì. Ora, da che parte è la banca, prima che mi trovi altro lavoro?",
	},
	["org.quest_complete.w18.quip.009"] = {
		"Ho deciso che quel grugnito era un grazie.",
		"Quel verso che hai fatto lo archivio alla voce gratitudine.",
		"Era una parola o un ringhio? In tutti e due i casi, prego.",
	},
	["org.quest_complete.w18.quip.010"] = {
		"Se quello era uno dei facili, i difficili tienili per qualcun altro.",
		"Quello era il lavoretto semplice? Allora i complicati li lascio volentieri.",
	},
	["org.quest_complete.w18.quip.011"] = {
		"Tre parole di ringraziamento. A Orgrimmar è praticamente un'orazione.",
		"È il grazie più lungo che abbia sentito in questa città. Quattro parole, mi pare.",
	},
	["org.quest_complete.w18.quip.012"] = {
		"Ora scusami, vado a rendermi utile da qualche altra parte. Pare sia il mio mestiere, adesso.",
		"Scusa, ma in questa città qualcuno ha bisogno che porti qualcosa, e me lo sento.",
	},
	["org.quest_complete.w18.quip.013"] = {
		"Ricordati la faccia. E già che ci sei, anche il prezzo.",
		"La prossima volta che mi vedi, la tariffa è salita. Te lo dico prima.",
		"Benissimo. Comunque la mia tariffa sale con ogni salita che faccio.",
	},
	["org.quest_complete.w18.quip.014"] = {
		"C'è un extra per ogni grunt che mi ha urlato dietro lungo la strada? Dovrebbe esserci.",
		"Mi hanno detto di spostarmi più di una volta, solo per arrivare fin qui. Qualcuno dovrebbe pagarmi anche quello.",
	},
	["org.quest_complete.w18.quip.015"] = {
		"Abbassa la voce quando paghi. I goblin sentono le monete anche attraverso la pietra.",
		"Piano con le monete. Qui vicino, un goblin ha appena drizzato le orecchie.",
		"Con discrezione, per favore. Fai tintinnare una borsa a Orgrimmar e tre venditori si girano.",
	},
	["org.quest_complete.w18.quip.016"] = {
		"Dimmi che il prossimo è qui vicino. Anche se è una bugia.",
		"Il prossimo lavoro è vicino? Di' di sì. Non m'importa se è vero.",
	},
	["org.quest_complete.w18.quip.017"] = {
		"Dai, indicami dove andare. Vedo che hai già il dito alzato.",
		"Dove adesso? Hai quella faccia. La faccia di chi sta per indicare.",
		"La conosco, quella faccia. È la faccia di chi sta per dire 'e già che ci sei'.",
	},
	["org.quest_complete.w18.quip.018"] = {
		"Un piacere. Adesso dimentica il mio nome finché non hai qualcosa che paghi meglio.",
		"Felice di aver aiutato. Non ricordarti di me troppo presto.",
	},
	["org.quest_complete.w18.quip.019"] = {
		"Questo mi vale uno sconto alla locanda? No? Valeva la pena chiedere.",
		"Immagino che finire quel lavoro non mi dia diritto a un pasto gratis da nessuna parte. No. Continuerò a domandare.",
		"Magari il locandiere viene a saperlo e mi fa un prezzo? Glielo dico io, nel dubbio.",
	},
	["org.quest_complete.w18.quip.020"] = {
		"Stessa ora, la settimana prossima? Era una battuta. Credo.",
		"Che faccio, passo ogni settimana? Scherzo solo a metà.",
	},
	["org.quest_complete.w18.quip.021"] = {
		"Niente fanfara? Meglio. Mi sarebbe toccato restare lì senza muovermi ad ascoltarla.",
		"Niente tamburi per me? Tanto meglio. Le gambe vogliono muoversi prima di cambiare idea.",
	},
	["org.quest_complete.w18.quip.022"] = {
		"Di' al prossimo che deve aspettare che mi sieda un po'. E poi può aspettare ancora un pochino.",
		"C'è la fila per me, adesso? Splendido. Si metta in coda alla mia fila per una sedia.",
	},
	["org.quest_complete.w18.thanks.001"] = {
		"A Orgrimmar i ringraziamenti arrivano senza sorriso, e la stretta di mano mette alla prova la presa. Credo di aver superato l'esame.",
		"Nessun sorriso col grazie, solo una mano che ha stretto abbastanza forte da vedere se la mia avrebbe ricambiato. L'ha fatto. Pare che questo abbia chiuso la questione.",
	},
	["org.quest_complete.w18.thanks.002"] = {
		"In questa città nessuno dice grazie come suona altrove. Dicono «bene», oppure «e questa è fatta», e il resto lo lasciano agli occhi.",
		"«Bene.» Tutto qui, una parola, e il resto l'hanno detto gli occhi. Orgrimmar ti insegna a sentire il grazie in frasi cortissime.",
		"Qui mi hanno ringraziato con un grugnito, con uno scatto del mento e una volta con la parola «accettabile». Quella era quasi una canzone.",
	},
	["org.quest_complete.w18.thanks.003"] = {
		"Era un grazie, quello? Io lo conto come tale.",
		"Prendo quel grugnito per gratitudine. Non correggetemi.",
		"Mh. Altrove quel verso sarebbe un colpo di tosse. Qui credo fosse un grazie.",
	},
	["org.quest_complete.w18.thanks.004"] = {
		"si sente ringraziare con una parola sola, da una voce più abituata a dare ordini, e sembra trovarla più che sufficiente.",
		"riceve un grazie di una sillaba da una voce fatta per abbaiare ordini, e se lo tiene stretto tutto quanto.",
		"si vede porgere un grazie come questa città porge ogni cosa: in fretta, con fermezza e senza incarto.",
	},
	["org.quest_complete.w18.thanks.005"] = {
		"Qui i ringraziamenti sono brevi perché nessuno ha tempo per quelli lunghi. Un grazie lungo vorrebbe dire che qualcuno aveva un momento libero, e Orgrimmar non lo ammetterebbe mai.",
		"La città tiene corta la gratitudine, come tutto il resto. Una capitale che si fermasse a ringraziarti come si deve smetterebbe di essere indaffarata, e non lo sopporterebbe.",
		"La gratitudine, a Orgrimmar, ha la forma delle sue strade: stretta, in salita, e finita prima che te ne accorga.",
	},
	["org.quest_complete.w18.thanks.006"] = {
		"I Darkspear della Valley of Spirits dicono che un grazie conta due volte: quando lo si dice e quando ci si ricorda della faccia. Spero che il mio abbia anche la seconda metà.",
		"Dalle parti della Valley of Spirits dicono che il grazie si paga in due monete, la parola e il ricordo. La parola l'ho avuta. L'altra arriva dopo, se arriva.",
		"Un detto dei Darkspear, come lo raccontano i troll: la parola è il primo pagamento, il ricordo il secondo. Il primo l'ho avuto.",
	},
	["org.quest_complete.w18.thanks.007"] = {
		"Il grazie dei tauren arriva lento, con la Madre Terra dentro da qualche parte. Quello degli orchi arriva in fretta, con una pacca sulla schiena che lascia il segno. Questa città può darti tutti e due prima che tu abbia fatto mezzo giro.",
		"C'è chi ringrazia con un brontolio lento e uno sguardo lungo, chi con una botta sulla spalla, chi con un mormorio secco da Reietto. Orgrimmar ha ogni tipo di grazie, e nessuno delicato.",
	},
	["org.quest_complete.w18.thanks.008"] = {
		"risponde al grazie burbero con un cenno altrettanto burbero; per gli standard di Orgrimmar è appena avvenuta una lunga conversazione.",
		"scambia una parola secca con un'altra, e la faccenda si chiude con tutto il calore che questa città riserva agli amici.",
		"restituisce grugnito per grugnito, e lo scambio è completo; in questa città non serve altro, né lo si vuole.",
	},
	["org.quest_complete.w18.thanks.009"] = {
		"Il grazie più vero di questa città non è una parola. È il lavoro successivo, offerto senza che nessuno mi chieda se ho tempo.",
		"Le parole, a Orgrimmar, costano poco e nessuno le spende. La fiducia costa cara, e arriva sotto forma di altro lavoro. La prendo per il complimento che è.",
		"Qui la gratitudine non si dice, si assegna. Se si fidano di te, c'è sempre un altro compito che aspetta, già della tua misura.",
	},
	["org.quest_complete.w18.thanks.010"] = {
		"Prego. Potresti provarle, un giorno, quelle parole: non mordono.",
		"Il piacere è mio. La prossima volta un grazie è concesso. Anche a voce alta.",
		"Non serve quella faccia sofferente. È solo un grazie; non ti ammazza.",
	},
	["org.quest_complete.w18.thanks.011"] = {
		"Qui la gratitudine non si dice, si paga. La moneta è il modo in cui Orgrimmar si schiarisce la gola prima di non dire niente.",
		"Una città di poche parole ti ringrazia con la borsa. Ho sentito discorsi peggiori.",
		"Da queste parti parla la borsa e la bocca resta chiusa. Ho imparato ad ascoltare la borsa.",
	},
	["org.quest_complete.w18.thanks.012"] = {
		"Un pugno battuto una volta sul petto, e due parole: forza, onore. L'Orda non conosce un grazie più caldo di questo, e non le serve.",
		"«Forza e onore.» Breve, come piace all'Orda. Me lo porto in strada come una seconda borsa.",
		"Nessun discorso, solo il vecchio saluto dell'Orda, il pugno sul petto. È arrivato più a fondo di qualsiasi discorso.",
	},
	["org.quest_complete.w18.thanks.013"] = {
		"si sente dire «buon lavoro» una volta sola e senza fronzoli, e sembra riporre quelle parole in un posto sicuro.",
		"ascolta dire che il lavoro era buono, chiaramente, una volta, e resta un attimo lì come per lasciar posare le parole prima di muoversi.",
		"rimane immobile mentre vengono dette due semplici parole di lode, poi china il capo come chi riceve qualcosa di piccolo e solido.",
	},
	["org.quest_complete.w18.thanks.014"] = {
		"Mi ero {g:preparato|preparata} a una predica su come andava fatto. Non è arrivata. In questa città una predica risparmiata è la lode più gentile.",
		"Nessuna correzione, nessun «la prossima volta fallo così». Da Orgrimmar, quel silenzio è quasi un abbraccio.",
	},
	["org.quest_complete.w18.thanks.015"] = {
		"Basta una volta. L'hai detto abbastanza forte da farlo sentire a tutta la strada.",
		"Dillo un'altra volta e le guardie cominceranno a pensare che tra noi ci sia dell'amicizia.",
	},
	["org.quest_complete.w18.thanks.016"] = {
		"Una parola di grazie dura più o meno quanto la sua eco contro le pareti del canyon. Poi le pareti tornano agli affari loro.",
		"Il grazie è rimbalzato una volta sulle mura rosse e si è perso nel frastuono della città. Io lo terrò un po' più a lungo della roccia.",
	},
	["org.quest_complete.w18.thanks.017"] = {
		"Quando uno dei vecchi orchi brizzolati di questa città ti dice che hai fatto bene, tienitelo stretto. Non spendono parole che poi dovrebbero rimangiarsi.",
		"La lode di un vecchio orco di Orgrimmar è rara e mai di facciata. Se uno di loro dice che il lavoro era buono, lo era.",
	},
	["org.quest_complete.w18.thanks.018"] = {
		"accetta il grazie nella penombra di una stanza scavata nella roccia, dove la strada arriva solo come un brontolio sordo attraverso i muri.",
		"prende il suo grazie nel fresco di una stanza ricavata nella roccia, col clamore della città ridotto a un ronzio oltre la soglia.",
	},
	["org.quest_complete.w18.thanks.019"] = {
		"Lok'tar. Quando l'Orda avrà ancora bisogno di braccia, sai dove trovare le mie.",
		"Lok'tar ogar. La prossima volta manda a chiamarmi; verrò.",
	},
	["org.quest_complete.w18.thanks.020"] = {
		"si prende il suo grazie, e poi un altro da un passante che con la faccenda non c'entrava nulla ma ne ha apprezzato l'aria.",
		"incassa il grazie che si aspettava e uno inatteso da un grunt di passaggio, che a quanto pare riteneva che il momento meritasse un testimone.",
	},
	["org.quest_complete.w18.thanks.021"] = {
		"Nessuno ha detto per favore quando mi hanno affidato il lavoro, quindi non mi aspettavo un grazie alla fine. Ne ho avuto uno lo stesso. Orgrimmar continua a stupirmi nelle piccole cose.",
		"Niente per favore all'inizio, così non contavo su un grazie alla fine. Questa città ha il vizio di pagarti nella moneta che non avevi chiesto.",
	},
	["org.quest_complete.w18.thanks.022"] = {
		"Ringraziamento accettato. Lo spendo da qualche parte prima che si raffreddi.",
		"Gratitudine ricevuta e intascata. Spero che si conservi meglio del pane.",
	},
	["org.quest_complete.w18.thanks.023"] = {
		"I ringraziamenti sotto la pioggia sono rapidi, e a nessuno dispiace. Chi vive in Durotar non spreca un acquazzone a chiacchierare.",
		"È stato un grazie breve, e mentre veniva detto gli occhi erano tutti per la pioggia. In una terra secca il cielo ha la precedenza.",
	},
	["org.quest_complete.w18.thanks.024"] = {
		"Un grazie detto senza che gli occhi dell'altro si staccassero dal lavoro che aveva davanti. A Orgrimmar non è maleducazione: chi distribuisce incarichi qui ne ha sempre altri tre in attesa.",
		"Neanche uno sguardo alzato dal compito seguente mentre arrivava il grazie. In questa città le mani occupate non si fermano per la cortesia, e non gliene faccio una colpa.",
	},
	["org.quest_complete.w18.thanks.025"] = {
		"Quando vuoi. Be', quasi sempre. Chiedi con gentilezza e quando vuoi.",
		"Volentieri. La prossima volta ci aggiungi un sorriso, se la città può permetterselo.",
		"Felice di essere utile. Non spargere la voce, o vorranno tutti il loro turno.",
	},
	["org.quest_complete.w18.thanks.026"] = {
		"Non c'è di che. Davvero, non dirlo in giro, o cominceranno ad aspettarselo da me.",
		"Non serve ringraziare. Una buona parola alle orecchie giuste, però, non guasterebbe.",
	},
	["org.quest_complete.w18.thanks.027"] = {
		"È il grugnito più caloroso che mi abbiano mai fatto in questa città. Mi commuove.",
		"Attenzione, questo è suonato quasi amichevole. La gente chiacchiererà.",
	},
	["org.quest_complete.w18.thanks.028"] = {
		"sente il grazie tagliato a metà da un tuono che rimbalza tra le pareti del canyon, e annuisce alla metà che è arrivata.",
		"accetta la ricompensa mentre il tuono rotola da una parete all'altra sopra la città, e il grazie resta da indovinare.",
	},
	["org.quest_complete.w18.throng.001"] = {
		"Un lavoro finito, e non si gira una testa. Un grunt sbadiglia, un goblin conta, un tauren scavalca il lupo di qualcuno. Proprio come deve essere.",
		"Nessuno si volta. I peoni trascinano, i venditori sbraitano, da qualche parte un troll ride di tutt'altro. Bene.",
		"Il verdetto della città sul mio lavoro: uno sbadiglio di un grunt e un singhiozzo di un kodo. Me lo faccio bastare.",
	},
	["org.quest_complete.w18.throng.002"] = {
		"rientra nella folla e se ne lascia portare per qualche passo, una spalla in più fra centinaia, senza che nessuno ci faccia caso.",
		"si confonde nella calca della strada, dove un compito finito ha lo stesso aspetto di uno ancora da finire.",
		"scivola nella folla in movimento e ci sparisce dentro, senza lasciare più traccia di un sasso caduto in un torrente.",
	},
	["org.quest_complete.w18.throng.003"] = {
		"Altrove un bardo ne farebbe una canzone. Qui un peone mi ha appena pestato un piede e non ha chiesto scusa.",
		"Qualcuno dovrebbe applaudire. Invece un kodo mi ha appena starnutito addosso.",
		"In una storia adesso ci sarebbe una folla in festa. A Orgrimmar la folla c'è, e fa il tifo per una zuffa di cani due vie più in là.",
	},
	["org.quest_complete.w18.throng.004"] = {
		"Mi piace non essere nessuno in particolare in una folla così. Il lavoro è fatto, e la città lo custodisce come custodisce tutto: senza guardare.",
		"Centinaia di persone, e nessuna sa cosa ho appena finito. È come una moneta nascosta in uno stivale.",
		"Senza nome in mezzo alla gente, e mi va bene. Un compito finito è un segreto migliore di tanti altri.",
	},
	["org.quest_complete.w18.throng.005"] = {
		"si prende una gomitata da un goblin di fretta, che borbotta qualcosa sul tempo che è denaro e non si volta mai.",
		"si guadagna un lungo sguardo poco colpito da un lupo sdraiato di traverso sulla via, che poi torna a dormire.",
		"si fa superare da un troll con una cassa su ogni spalla, che canticchia per tutto il tragitto e non vede altro che la strada davanti.",
	},
	["org.quest_complete.w18.throng.006"] = {
		"Non applaudite tutti insieme.",
		"Calma, gente. Cercate di contenervi.",
		"No, no, vi prego. Tenetevi gli applausi. Tutti quanti.",
	},
	["org.quest_complete.w18.throng.007"] = {
		"Tutti in questa via portano addosso qualcosa di finito o di non finito, e da fuori nessuno capisce quale. Sono in buona compagnia.",
		"Scommetto che metà della folla ha appena finito qualcosa anche lei. Nessuno lo annuncia. Forse è l'usanza.",
		"Quanti di questi hanno appena fatto una piccola cosa per la città e se ne sono andati senza un grazie? Quasi tutti, a giudicare dalle spalle.",
	},
	["org.quest_complete.w18.throng.008"] = {
		"guarda due grunt di ronda passare dritti senza un'occhiata, il che, in questa città, è quasi un complimento.",
		"sente addosso per un istante lo sguardo di una ronda di passaggio, che decide che qui non ci sono guai e passa oltre.",
		"si sente misurare in fretta da un grunt di guardia, dagli stivali alla fronte, e poi il grunt trova qualcosa di più interessante da fissare.",
	},
	["org.quest_complete.w18.throng.009"] = {
		"Un vecchio orco vicino al muro ha incrociato il mio sguardo e ha annuito, come se sapesse esattamente cosa avevo fatto. Non lo sapeva. È stato gentile comunque.",
		"Di tutta la folla se n'è accorto solo un trollino, e solo per chiedermi se avevo qualcosa da mangiare.",
		"Un tauren carico d'acqua mi ha rivolto un'occhiata lenta e il più piccolo dei cenni. In tutta la città, l'unico testimone.",
	},
	["org.quest_complete.w18.throng.010"] = {
		"Si torna nella calca, allora. Fate spazio, sono solo io.",
		"Fatti in là, Orgrimmar. C'è ancora qualcuno che deve passare.",
		"Attenti ai gomiti, gente. Arrivano i miei.",
	},
	["org.quest_complete.w18.throng.011"] = {
		"La strada inghiotte il momento intero e continua a masticare.",
		"Tre passi nella folla e la cosa che ho finito è già piccola quanto me.",
		"Una curva della via e la faccenda si perde fra mille altre, come un rame solo rovesciato nella cassa di un goblin.",
	},
	["org.quest_complete.w18.throng.012"] = {
		"per poco non finisce sotto la carriola di minerale di un peone, che ha un compito tutto suo e nessuna pazienza per quelli altrui.",
		"si immette nel traffico della via e diventa, in un attimo, un ostacolo per una dozzina di persone con le loro commissioni.",
	},
	["org.quest_complete.w18.throng.013"] = {
		"Nessuna fanfara. L'Orda non si ferma per il suo piccolo lavoro, e non vorrei che lo facesse: meglio essere una delle tante mani che quella che tutti fissano.",
		"L'Orda passa accanto a quello che ho fatto senza guardarlo, come un corpo che non bada a una mano che fa il suo dovere. È così che so di farne parte.",
	},
	["org.quest_complete.w18.throng.014"] = {
		"passa accanto a un capannello di mercanti che urlano di prezzi; nessuno di loro alza nemmeno gli occhi.",
		"si fa strada oltre un cerchio di curiosi che guardano due orchi fare a braccio di ferro su un barile; tutti gli occhi sono sul barile, nessuno su chi passa.",
		"aggira un gruppo di tauren immersi in una conversazione lenta, che si scostano senza interromperla.",
	},
	["org.quest_complete.w18.throng.015"] = {
		"Potrei raccontarvi cosa ho appena fatto. Annuireste e tornereste a martellare.",
		"Nessuno di voi mi ha chiesto com'è andata. Quasi quasi ve lo racconto lo stesso.",
		"Chiedetemi com'è andata. Chiunque. No? Va bene, lo racconterò a un lupo.",
	},
	["org.quest_complete.w18.throng.016"] = {
		"Permesso. Ho finito i miei affari, e adesso intralcio quelli di tutti gli altri.",
		"Scusate. Uscire da una commissione e finire dritto contro il vostro gomito.",
		"Permesso, di passaggio. Niente da vedere, lo giuro.",
	},
	["org.quest_complete.w18.throng.017"] = {
		"Nella folla qualcuno racconta di un suo lavoro, più forte e meglio di quanto farei io. Glielo lascio.",
		"Due orchi accanto a me si vantano di una loro commissione. Cresce un po' a ogni racconto. La mia può restare della sua misura.",
	},
	["org.quest_complete.w18.throng.018"] = {
		"riceve una spinta da dietro, poi una di lato, e le prende come l'unica cerimonia che la città abbia da offrire.",
		"si prende una gomitata nelle costole da un tauren di passaggio, e poi uno scusa brontolato da molto più in alto.",
	},
	["org.quest_complete.w18.throng.019"] = {
		"Gli unici ad accorgersene sono stati i goblin. Non di me, sia chiaro: delle mie monete.",
		"Se qualcuno nella folla se n'è accorto, è stato un goblin, e ha notato le monete, non chi le porta.",
		"Non ha alzato gli occhi nessuno, tranne un goblin, che ha guardato la mia borsa con autentico affetto.",
	},
	["org.quest_complete.w18.throng.020"] = {
		"Non guardate. È fatta, tutto qui.",
		"Niente da vedere. Circolate, come me.",
		"Pensate ai vostri affari. Io ho finito i miei.",
	},
	["org.quest_complete.w18.throng.021"] = {
		"Sotto un tetto, i discorsi vanno avanti senza fermarsi per me. Ogni angolo ha le sue faccende, e nessuna è la mia.",
		"Qui dentro le voci non si abbassano nemmeno. Ognuno è preso dai suoi affari, e nessuno bada a me.",
	},
	["org.quest_complete.w18.throng.022"] = {
		"esce tra la gente stretta sotto le tende, tutti a guardare la pioggia rara e nessuno a guardare chi passa.",
		"trova tutta la via raccolta sotto le gronde a fissare la pioggia, e le scivola alle spalle senza che nessuno si volti.",
	},
	["org.quest_complete.w18.throng.023"] = {
		"Se cadessi adesso, tre di voi mi scavalcherebbero e uno proverebbe a vendermi una benda.",
		"L'unico modo per farsi notare in questa città è piantarsi in mezzo a una porta. Che tentazione.",
	},
	["org.quest_complete.w18.trudge.001"] = {
		"Chi ha progettato Orgrimmar ha messo chi ha un lavoro da dare in un capo e chi lo aspetta nell'altro. Sempre.",
		"Dev'esserci una regola, in questa città: chi affida il lavoro e chi lo aspetta non devono mai abitare nella stessa valle.",
		"Ogni commissione a Orgrimmar sembra disegnata da qualcuno che odiava le passeggiate brevi.",
	},
	["org.quest_complete.w18.trudge.002"] = {
		"Le mie ginocchia conoscono ogni rampa della città, e su ognuna hanno qualcosa da ridire.",
		"Non c'è pendio a Orgrimmar di cui le ginocchia non si siano lamentate. Sono meticolose.",
		"Io e le mie ginocchia non ci parliamo più. Ci si sono messe in mezzo le salite di Orgrimmar.",
	},
	["org.quest_complete.w18.trudge.003"] = {
		"si appoggia al palo più vicino appena l'affare è chiuso, e guarda la lunga strada con la faccia di chi conta i passi.",
		"pianta una spalla contro una trave non appena i conti tornano, e fissa la salita come se {g:gli|le} avesse mancato di rispetto.",
		"trova un muro a cui appoggiarsi prima ancora che finiscano i ringraziamenti, e ci resta un po' più a lungo di loro.",
	},
	["org.quest_complete.w18.trudge.004"] = {
		"La moneta non è ancora nella borsa e so già dove mi vogliono dopo. All'altro capo della città, ovvio.",
		"Non avevo ancora chiuso la borsa che qualcuno mi ha accennato il prossimo incarico. Dall'altra parte di Orgrimmar, si capisce.",
	},
	["org.quest_complete.w18.trudge.005"] = {
		"Orgrimmar ormai la conosco, ma non come la raccontano le cronache: le scorciatoie, i gradini che ballano, le bancarelle che non si spostano mai.",
		"Di questa città non conosco la storia. Conosco i vicoli che fanno risparmiare cento passi, e quelli che fingono soltanto.",
		"Chiedimi della fondazione di Orgrimmar e alzo le spalle. Chiedimi quale pietra balla sulla via della banca e te la disegno.",
	},
	["org.quest_complete.w18.trudge.006"] = {
		"flette un piede nello stivale, poi l'altro: il piccolo inventario di chi gira Orgrimmar per mestiere.",
		"ruota una caviglia e poi l'altra, una volta consegnata la ricompensa, piano, come per controllare che obbediscano tutte e due.",
		"muove le dita dei piedi negli stivali, una volta riposta la ricompensa: un controllo silenzioso che laggiù rispondano tutti all'appello.",
	},
	["org.quest_complete.w18.trudge.007"] = {
		"C'è un gradino, sulla strada per la Valley of Honor, su cui inciampo ogni volta. Ormai lo considero un collega.",
		"In questa città c'è una pietra smossa che ormai conosce il mio stivale. Ci salutiamo sempre allo stesso modo.",
	},
	["org.quest_complete.w18.trudge.008"] = {
		"Il lavoro non mi pesa. È il camminare nel mezzo, e Orgrimmar è quasi tutta nel mezzo.",
		"I lavori sono brevi. La città è lunga. Mi pagano per i primi e vivo nella seconda.",
		"Nessuno paga la strada tra un compito e l'altro, e in questa città la strada è quasi tutto.",
	},
	["org.quest_complete.w18.trudge.009"] = {
		"si lascia cadere su una cassa rovesciata con la ricompensa ancora in mano, e per un momento non sembra avere fretta di andare da nessuna parte.",
		"si concede la cassa più vicina, la ricompensa in grembo, mentre la città continua a correre senza di {g:lui|lei}.",
		"trova il bordo di un gradino di pietra su cui sedersi, la ricompensa su un ginocchio, e per un momento lascia che la strada {g:gli|le} scorra intorno.",
	},
	["org.quest_complete.w18.trudge.010"] = {
		"A Orgrimmar nessuno cammina piano. Provaci, e un goblin con un carretto ti spiega il perché.",
		"Passeggiare, in questa città, non si usa. Tutti vanno come se un sergente li guardasse, e qualcuno ha ragione a pensarlo.",
	},
	["org.quest_complete.w18.trudge.011"] = {
		"Le spalle sanno che il lavoro è finito. Le gambe hanno sentito che c'è altra città da attraversare.",
		"Le mani hanno finito. I piedi hanno dei sospetti.",
		"Metà di me ha staccato. Purtroppo è la metà che non cammina.",
	},
	["org.quest_complete.w18.trudge.012"] = {
		"Qualcun altro ha notato che ogni commissione a Orgrimmar finisce in salita? Tutte.",
		"In salita. Finisce sempre in salita. Perché finisce sempre in salita?",
	},
	["org.quest_complete.w18.trudge.013"] = {
		"Dalla banca giù fino al Cleft of Shadow e poi di nuovo su: potrei farlo dormendo. Ho il sospetto che a volte succeda.",
		"La strada tra la Valley of Strength e la Valley of Wisdom la conosco così bene che i piedi la prendono senza consultarmi.",
	},
	["org.quest_complete.w18.trudge.014"] = {
		"intasca la ricompensa e, prima che qualcuno nomini un'altra commissione, si interessa moltissimo a una crepa nel muro.",
		"mette via la ricompensa e studia con grande cura il fondo della strada, come chi spera di non sentirsi chiedere niente.",
		"nasconde la ricompensa e scopre un improvviso interesse per un kodo di passaggio, con lo sguardo accuratamente altrove.",
	},
	["org.quest_complete.w18.trudge.015"] = {
		"Metà del lavoro a Orgrimmar è portare parole da una valle all'altra. La città è un'unica lunga conversazione, e io ne sono le gambe.",
		"Qualcuno nella Valley of Spirits vuole dire una cosa a qualcuno nella Valley of Honor, e nessuno dei due si muove. Lì entra in scena gente come me.",
	},
	["org.quest_complete.w18.trudge.016"] = {
		"guarda la lunga salita davanti, poi quella alle spalle, e non sembra riuscire a decidere quale delle due ce l'abbia di più con {g:lui|lei}.",
		"guarda da un capo all'altro della strada, concluso l'affare, con l'aria di chi conosce fin troppo bene tutti e due.",
		"considera la strada in entrambe le direzioni, e nessuna delle due risulta in discesa.",
	},
	["org.quest_complete.w18.trudge.017"] = {
		"Borsa leggera, città larga, e qualcuno chissà dove che già mi aspetta. È l'aritmetica di Orgrimmar.",
		"Paga piccola, strade lunghe, e una fila di gente con qualcosa da far portare. I conti, in questa città, non cambiano mai.",
	},
	["org.quest_complete.w18.trudge.018"] = {
		"Il dolore alle gambe ha la forma di questa città: lunga, ripida, e piena di curve improvvise.",
		"Potrei tracciare la mappa di Orgrimmar seguendo i punti dove mi fanno male le gambe. Il tratto lungo è il Drag.",
		"I polpacci hanno una loro mappa della città, disegnata a fitte, ed è più precisa di quella vera.",
	},
	["org.quest_complete.w18.trudge.019"] = {
		"Esiste un solo punto di Orgrimmar che non sia a una lunga camminata da tutto il resto?",
		"Ogni angolo di questa città è l'angolo più lontano. Com'è possibile, poi?",
	},
	["org.quest_complete.w18.trudge.020"] = {
		"chiude l'affare mentre le pareti del canyon si fanno di un rosso cupo e stanco, e guarda la lunga strada fino alla locanda con rassegnazione.",
		"prende la ricompensa mentre l'ultima luce scivola giù dal bordo del canyon, e la salita fino alla locanda pare di colpo lunga il doppio.",
	},
	["org.quest_complete.w18.trudge.021"] = {
		"Pioggia, proprio a Orgrimmar, e le rampe diventano fango rosso. Il prossimo lavoro è in cima a una di loro, è chiaro.",
		"La pioggia ha reso la città scivolosa, e ho finito da un attimo appena quando qualcuno mi indica la strada più ripida.",
	},
	["org.quest_complete.w18.trudge.022"] = {
		"Attraversare questa città non lascia spazio ai pensieri. Tra una valle e l'altra c'è sempre un cavaliere di lupi da schivare, un venditore da respingere, un grunt con un'opinione.",
		"A Orgrimmar non riesco a rimuginare nemmeno quando voglio. C'è sempre qualcosa su quattro zampe o su due da schivare, e i lupi non aspettano.",
	},
	["org.quest_complete.w18.trudge.023"] = {
		"riceve la paga e, quasi nello stesso gesto, un'indicazione verso qualche altro angolo della città: arrivano insieme.",
		"prende la ricompensa con una mano, mentre un dito grosso indica già il fondo di Orgrimmar.",
	},
	["org.quest_complete.w18.trudge.024"] = {
		"Non chiedo più dov'è il prossimo lavoro. Lo do per scontato: il punto più lontano, la strada più ripida, l'angolo più rumoroso.",
		"Dove sarà il prossimo? Lo so senza chiedere. Il più lontano possibile da qui, quanto lo permettono le mura.",
		"La prossima commissione, ovunque sia, starà dall'altra parte di qualcosa. A Orgrimmar è sempre così.",
	},
	["org.quest_complete.w18.trudge.025"] = {
		"guarda gli stivali rossi fino alla caviglia per la polvere della città, e li batte una volta l'uno contro l'altro, senza troppa speranza.",
		"scrolla la polvere rossa da uno stivale contro un palo, poi dall'altro, anche se bastano venti passi per rifare tutto.",
	},
	["org.quest_complete.w18.trudge.026"] = {
		"si massaggia le reni a cose fatte e borbotta qualcosa di poco gentile sui canyon.",
		"preme un pugno contro la schiena indolenzita e dice qualche parola a mezza voce su chi ha deciso di costruire una città in pendenza.",
		"si stiracchia finché nella schiena qualcosa fa un clic sonoro, e per un attimo ha l'aria di chi ha ottenuto qualcosa.",
	},
	["org.quest_complete.w18.trudge.027"] = {
		"sposta il peso da una gamba all'altra mentre i ringraziamenti vanno avanti, con l'ondeggiare paziente di chi ha imparato le file di questa città.",
		"resta in piedi durante i conti con una leggera inclinazione, a favore della gamba che si è lamentata meno lungo la strada.",
	},
	["org.quest_complete.w18.trudge.028"] = {
		"si fa da parte per un messaggero che corre su per la strada, chiaramente mandato anche lui da un capo all'altro della città, e i due si scambiano uno sguardo da compagni di sventura.",
		"scambia un'occhiata stanca con un peon che arranca sotto un carico: due dello stesso stampo, in una città che ha sempre bisogno di far portare qualcosa.",
	},
	["org.quest_complete.w18.trudge.029"] = {
		"si allontana dall'affare zoppicando con grande dignità, poi si scorda di zoppicare all'altezza della bancarella dopo.",
		"fa gran sfoggio di una gamba dolorante per un tratto, e quando la strada curva cammina già normalmente.",
	},
	["org.quest_complete.w18.trudge.030"] = {
		"Nessuno dice mai quanta parte di questo lavoro sia solo stare sulla soglia, aspettando che qualcuno alzi gli occhi.",
		"Metà di ogni commissione è camminare. L'altra metà è aspettare che qualcuno si accorga di te. La paga non copre né l'una né l'altra.",
	},
	["org.quest_complete.w18.turn.001"] = {
		"gira sui tacchi ed è già a tre passi nella via prima che il ringraziamento sia del tutto finito.",
		"si sta già voltando con l'ultima parola di ringraziamento ancora sospesa, e la fretta non sembra offendere nessuno.",
		"fa dietrofront con la faccenda appena chiusa, come se la strada avesse chiamato un nome.",
	},
	["org.quest_complete.w18.turn.002"] = {
		"C'è un momento, quando mi volto, in cui il compito è alle spalle e la città non mi sta ancora davanti. Mi piace farlo durare.",
		"Tra il voltarmi dal lavoro e il mettere piede in strada c'è uno spazio largo quanto una soglia. Ci resto più che posso.",
		"Sulla soglia tra il lavoro e la strada mi fermo un momento, senza appartenere a nessuno dei due.",
	},
	["org.quest_complete.w18.turn.003"] = {
		"Allora io vado. Alla prossima.",
		"Vi lascio al vostro. Di cose da fare ce n'è per tutti e due.",
		"Bene. Vi tolgo l'ingombro.",
	},
	["org.quest_complete.w18.turn.004"] = {
		"Mi volto e la città mi porge una dozzina di piccole scelte tutte insieme: destra o sinistra, mangiare o dormire, spendere o risparmiare. Spendere, suggerisce la città.",
		"Appena mi giro, Orgrimmar comincia a fare offerte. Cibo a sinistra, un letto davanti, un affare dappertutto.",
		"Volta le spalle a un lavoro, qui, e tre venditori si contendono quel che resta della tua attenzione.",
	},
	["org.quest_complete.w18.turn.005"] = {
		"si volta dalla faccenda verso la città, che in questo canyon finisce e comincia cose da quando si sono alzate le sue prime mura.",
		"torna a guardare le strade, dove niente ha aspettato e niente ne aveva bisogno.",
	},
	["org.quest_complete.w18.turn.006"] = {
		"Mi volto troppo in fretta e vado a sbattere dritto contro un tauren. Lui non si sposta. Io sì.",
		"Appunto per dopo: prima di voltarsi, in questa città, controllare se ci sono corna.",
		"Una giravolta, un petto di tauren duro come roccia, un rimbalzo. Lui ha chiesto scusa. Non ho ancora capito a chi.",
	},
	["org.quest_complete.w18.turn.007"] = {
		"State bene. L'Orda avrà altro lavoro per me, non ne dubito.",
		"Alla prossima. All'Orda il lavoro non manca mai.",
		"Fatto per l'Orda, e volentieri. Mandate a chiamarmi quando ne avrà bisogno.",
	},
	["org.quest_complete.w18.turn.008"] = {
		"si guarda indietro una volta sola, come fa chiunque, poi concede alla via tutta la sua attenzione.",
		"si ferma a metà del giro per un'ultima occhiata al punto dove il lavoro è finito, poi lo lascia andare.",
		"lancia uno sguardo alle spalle, uno solo, come si controlla una porta che si sa già chiusa.",
	},
	["org.quest_complete.w18.turn.009"] = {
		"Andarsene è la parte che nessuno insegna. Finisci, ti ringraziano, e poi devi semplicemente voltarti e diventare qualcuno senza un compito.",
		"Il passo più difficile è il primo che ti porta via. Dopo, a camminare ci pensa la città.",
	},
	["org.quest_complete.w18.turn.010"] = {
		"Bene. E adesso, da che parte sono {g:entrato|entrata}?",
		"Perfetto. Da che parte si esce?",
		"D'accordo. Qualcuno mi indichi la strada, l'ho persa di vista.",
	},
	["org.quest_complete.w18.turn.011"] = {
		"Per abitudine mi volto verso la parete del canyon, per orientarmi. La roccia non si sposta mai, ed è più di quanto si possa dire di qualunque altra cosa qui.",
		"Quando in questa città perdo l'orientamento, cerco la parete del canyon e riparto da lì. Non mi ha mai {g:portato|portata} fuori strada.",
	},
	["org.quest_complete.w18.turn.012"] = {
		"si gira e, per qualche passo, cammina con l'andatura sciolta di chi sta tra una commissione e l'altra.",
		"ruota verso la via con un passo più sciolto di prima, le spalle non più tese per il lavoro.",
	},
	["org.quest_complete.w18.turn.013"] = {
		"Voltare le spalle a un compito finito mi toglie sempre un po' d'importanza e mi dà un po' d'aria. Non ho mai deciso quale delle due conti di più.",
		"Mi volto, e non appartengo più alla commissione di nessuno. Una piccola perdita e una piccola libertà, e insieme fanno qualcosa che somiglia alla pace.",
	},
	["org.quest_complete.w18.turn.014"] = {
		"Consegnato. Dietrofront. A piede libero.",
		"E con questo è chiusa. Il resto della città può prendersi me.",
	},
	["org.quest_complete.w18.turn.015"] = {
		"accenna un mezzo giro come per chiedere qualcosa, poi lascia perdere con un gesto e continua a camminare.",
		"fa per andarsene, si ferma, alza un dito, lo riabbassa, e stavolta se ne va davvero.",
	},
	["org.quest_complete.w18.turn.016"] = {
		"Appena volto le spalle a un lavoro, la preoccupazione successiva viene a prenderne il posto. Stavolta sono gli stivali.",
		"Volti le spalle a un pensiero e ne trovi un altro. In questo momento è capire se quell'odore di stufato viene da destra o da sinistra.",
	},
	["org.quest_complete.w18.turn.017"] = {
		"si volta dal compito finito e raddrizza le spalle davanti alla città, che risponde raddrizzando le sue, di ferro.",
		"affronta la via con la schiena più dritta di prima, mentre stendardi e punte di ferro tutt'intorno sembrano stare sull'attenti.",
	},
	["org.quest_complete.w18.turn.018"] = {
		"C'è chi dopo un lavoro si guarda un'ultima volta indietro. Io guardo un'ultima volta le uscite. Vecchia abitudine.",
		"Prima di voltarmi conto sempre le vie d'uscita. Nessuno in questa città mi ha mai dato motivo di farlo. Le conto ugualmente.",
	},
	["org.quest_complete.w18.turn.019"] = {
		"Abbiate cura di voi. E di questa città, già che ci siete.",
		"State bene. Se vi servo, sarò da qualche parte dove c'è chiasso.",
		"Badate alle cose, qui. Non andrò lontano, anche se non starò in silenzio.",
	},
	["org.quest_complete.w18.turn.020"] = {
		"Finito così presto che i fuochi da cucina stanno appena prendendo. Mi volto e sarò {g:il primo|la prima} in fila per qualunque cosa ci finisca sopra.",
		"I primi martelli stanno appena svegliando il canyon. Buona ora per voltarsi da un lavoro finito: niente ancora aperto, niente di dovuto.",
	},
	["org.quest_complete.w18.turn.021"] = {
		"si volta dalla faccenda dritto contro una folata di sabbia, e si rigira subito per finire di voltarsi più tardi.",
		"si gira verso la via, incontra un muro di sabbia sollevata e arretra subito al riparo della soglia, gli occhi strizzati.",
	},
	["org.quest_complete.w18.turn.022"] = {
		"Torno a guardare le strade pensando a chi le ha tirate fuori dalla nuda roccia. Un piccolo lavoro fatto bene è il minimo che possa deporre ai loro piedi.",
		"Qualcuno ha scavato queste rampe nel canyon con mani stanche e nessuna promessa. Voltandomi da un compito finito, le percorro con un po' più di cura.",
	},
	["org.quest_complete.w18.turn.023"] = {
		"Non guardatemi andar via. Non è quel genere di addio.",
		"Non serve accompagnarmi. Conosco la strada. Più o meno.",
		"Esco da {g:solo|sola}. Nella folla, voglio dire. La folla non vede nessuno.",
	},
	["org.quest_complete.w18.war.001"] = {
		"Mentre io qui vengo {g:pagato|pagata}, qualcuno ad Ashenvale sta fra gli alberi con l'ascia in mano e un occhio alle ombre. La quiete di questa città ha un prezzo, e si paga laggiù.",
		"Ogni moneta di Orgrimmar ha addosso un po' della resina di Ashenvale, dicono i grunt. Il legname che tiene in piedi questo posto si compra caro.",
	},
	["org.quest_complete.w18.war.002"] = {
		"Qui ho finito. Ora indicatemi cosa dà fastidio all'Orda oltre la porta.",
		"Questa è sistemata. L'Orda ha battaglie più grosse che aspettano, e vorrei esserci.",
		"Commissione finita. Se l'Orda ha un lavoro più duro da qualche parte oltre le mura, sono qui ad ascoltare.",
	},
	["org.quest_complete.w18.war.003"] = {
		"si volta dalla faccenda conclusa mentre una fila di grunt marcia verso la porta, zaini in spalla, e la segue con gli occhi finché l'ultimo non è sparito.",
		"tace mentre passa una colonna di grunt in armatura diretta alla strada d'uscita, e resta in silenzio finché il rumore degli stivali non si spegne.",
		"si fa da parte per una squadra che parte in pieno assetto, e la segue con un lungo sguardo che con la ricompensa non c'entra niente.",
	},
	["org.quest_complete.w18.war.004"] = {
		"Per strada si parla delle Barrens: razzie dei centauri, una carovana che non è mai arrivata alla Crossroads. Il mio lavoro sembra poca cosa, accanto. Forse è proprio il poco che tiene insieme il resto.",
		"Alle mie spalle qualcuno riferisce notizie dalla Crossroads, con la voce piatta che si usa per le brutte notizie. Intasco la paga e ascolto, e non mi piace quello che sento.",
	},
	["org.quest_complete.w18.war.005"] = {
		"Bene. Oltre la porta c'è qualcuno che tiene una linea. Spero che questo lo aiuti, anche poco.",
		"Se qualcosa di tutto questo arriva a chi combatte, valeva più della paga.",
		"Che arrivi a chi ne ha più bisogno, ovunque si stia combattendo.",
	},
	["org.quest_complete.w18.war.006"] = {
		"Al largo di Durotar si vedono ancora vele di Kul Tiras, dicono le guardie. Una città che sa di essere osservata fa i suoi piccoli lavori più in fretta e controlla due volte le serrature.",
		"Giù lungo la costa di Durotar c'è una fortezza piena di soldati di Kul Tiras, abbastanza vicina che i grunt alla porta ne parlano a bassa voce. Dentro le mura, le commissioni vanno avanti lo stesso. È questa, credo, la risposta.",
	},
	["org.quest_complete.w18.war.007"] = {
		"cede il passo a un grunt col braccio al collo e una cicatrice fresca, e il grunt ricambia col cenno di chi arriva da un posto peggiore.",
		"incrocia gli occhi di un guerriero fasciato che zoppica verso la locanda, e per un attimo la faccenda appena chiusa sembra ben piccola cosa.",
		"fa spazio sulla strada a una barella portata di corsa, e la ricompensa resta dimenticata in una mano finché non è passata.",
	},
	["org.quest_complete.w18.war.008"] = {
		"I bardi diranno che la guerra si è vinta con le asce. I furieri sanno che si vince con stivali, pane, corda e qualcuno che corre a fare commissioni. Io sto nella seconda storia.",
		"Le asce vincono le battaglie. Le commissioni vincono le guerre, come ti spiegherà a lungo qualunque furiere. Adesso mi sento nelle grazie di un furiere.",
	},
	["org.quest_complete.w18.war.009"] = {
		"La mia parte è fatta. Spero che quelli al fronte se la passino meglio di quanto dicono le ultime notizie.",
		"Fatto. E da Ashenvale, che notizie ci sono? Qualcuno sa niente?",
		"Qui ho chiuso. Novità dalle Barrens, nel frattempo?",
	},
	["org.quest_complete.w18.war.010"] = {
		"Con ogni probabilità, mentre ero {g:occupato|occupata} con questo, l'Orda ha perso qualcuno ad Ashenvale. Va sempre così: il lavoro qui continua sopra il lutto di laggiù.",
		"L'Orda conta i suoi caduti lontano da queste mura, e nessuno di loro è stato ringraziato a un banco come questo. Me lo ricordo quando prendo le monete.",
	},
	["org.quest_complete.w18.war.011"] = {
		"si scosta dalla faccenda conclusa mentre passa sferragliando un carro carico di aste di lancia e bende arrotolate, diretto alla porta.",
		"guarda due goblin litigare su una cassa marchiata per una guarnigione nelle Barrens, mentre la ricompensa viene contata.",
		"lascia passare una fila di portatori piegati sotto casse di carne salata e olio da lampada, tutto diretto alla strada d'uscita.",
	},
	["org.quest_complete.w18.war.012"] = {
		"In questa città tutti hanno un'opinione sulla guerra, forte e sicura. La mia certezza si ferma al lavoro che ho appena finito, e non sono {g:sicuro|sicura} che sia un brutto posto dove fermarsi.",
		"Per strada si discute della guerra come altrove si discute del raccolto. Io non ne so abbastanza per discutere. So che questo lavoro è fatto.",
	},
	["org.quest_complete.w18.war.013"] = {
		"Qualunque cosa arrivi da oltre quelle colline, ora la città è un po' più pronta.",
		"Fatto. Che la guerra trovi questo posto preparato.",
		"Una cosa in più al suo posto. Se i guai vengono a bussare, troveranno meno fili scoperti.",
	},
	["org.quest_complete.w18.war.014"] = {
		"Il mio popolo una volta è stato trasformato in un'arma, da un patto con un demone. Ora combattiamo solo quando serve, e il resto del tempo facciamo questo: lavori piccoli, nella nostra città.",
		"Gli orchi conoscono fin troppo la guerra: ce l'hanno versata nel sangue. Ogni commissione tranquilla a Orgrimmar è un voto per l'altra cosa che possiamo essere.",
	},
	["org.quest_complete.w18.war.015"] = {
		"si ferma con la ricompensa mezza riposta mentre lì vicino qualcuno legge un dispaccio ad alta voce a un gruppetto di grunt, e la strada intorno si fa sensibilmente più quieta.",
		"coglie qualche parola di una notizia che passa da un grunt all'altro, nomi di luoghi delle Barrens e un numero, e per un momento si fa immobile.",
	},
	["org.quest_complete.w18.war.016"] = {
		"La guerra non sta solo oltre la porta. Sotto la Cleft of Shadow il Burning Blade si nasconde in Ragefire Chasm, e la città sbriga le sue faccende proprio sopra le loro teste. Ogni lavoro finito quassù è un affronto silenzioso.",
		"Cultisti nelle profondità sotto la città, nemici su ogni strada oltre le mura. Orgrimmar continua a lavorare fra le due cose, e io con lei.",
	},
	["org.quest_complete.w18.war.017"] = {
		"Fatto. La guerra può riprendere.",
		"Potete dire ad Ashenvale che può andare avanti. La mia parte è finita.",
		"Ecco. Qualcuno dica ai generali che possono smettere di aspettarmi.",
	},
	["org.quest_complete.w18.war.018"] = {
		"Il grunt accanto a me ha l'aria di chi ha seppellito un amico da poco. Tengo per me la soddisfazione. È solo una commissione, e sono solo monete.",
		"Non tutti, in questa strada, se la passano bene. Metà delle facce si porta dietro qualcuno perso in guerra. Un lavoro finito non è un motivo per fare chiasso.",
	},
	["org.quest_complete.w18.war.019"] = {
		"si volta verso la Valley of Wisdom, dove il Capoguerra tiene la sua sala, e fa un breve saluto solenne prima di andarsene.",
		"rivolge per un momento il viso verso Grommash Hold, riposta la ricompensa, e alza il pugno come fanno i grunt prima di partire in marcia.",
	},
	["org.quest_complete.w18.war.020"] = {
		"Oltre il mare il Flagello riempie l'antico regno di Lordaeron, e le notizie che arrivano in città sono cupe. E io sono qui a finire una commissione, e ne sono {g:contento|contenta}. È concesso.",
		"I morti marciano su Lordaeron, ad Ashenvale non si smette mai davvero di combattere, e a Orgrimmar un lavoretto si fa e si paga. Non è follia. È quello che impedisce a una città di spezzarsi.",
	},
	["org.quest_complete.w18.war.021"] = {
		"Qualcuno mandi a dire al fronte che le retrovie reggono benissimo.",
		"Qui dietro è tutto in ordine. Qualcuno lo faccia sapere a chi combatte.",
		"Rapporto dalle retrovie: le commissioni sono sotto controllo.",
	},
	["org.quest_complete.w18.war.022"] = {
		"Le guerre si perdono nelle città alle spalle prima che sul campo: si ferma il pane, si fermano gli stivali, si ferma la parola. Qui no. Non finché lavori come questo continuano a essere fatti.",
		"Un fronte vale quanto la città che ha alle spalle. Ogni piccolo lavoro finito a Orgrimmar è una pietra di quelle spalle.",
	},
	["org.quest_complete.w18.war.023"] = {
		"chiude la faccenda mentre il tuono rotola sul canyon, e si volta per un momento verso la porta, come in ascolto di qualcosa di più lontano della tempesta.",
		"intasca la ricompensa mentre i fulmini corrono lungo l'orlo del canyon, e li osserva con gli occhi socchiusi di chi misura la distanza da una battaglia.",
	},
	["org.quest_complete.w18.war.024"] = {
		"Non ogni fronte ha un muro davanti. Questo era il mio, e ha tenuto.",
		"C'è chi combatte al fronte e chi lo tiene sfamato. A me va bene l'uno e l'altro, purché si faccia.",
		"Questo era il mio pezzo di guerra. Più piccolo di tanti, ma è fatto.",
	},
	["org.quest_complete.w18.war.025"] = {
		"Se la guerra si mette male, nessuno ricorderà chi ha finito quale commissione a Orgrimmar. Io comunque preferisco averla finita.",
		"Le commissioni non decidono le guerre. Ma una città dove nessuno le porta a termine ne ha già persa una, in silenzio.",
	},
	["org.quest_complete.w18.war.026"] = {
		"prende la ricompensa mentre da un angolo della stanza arriva un parlottare sommesso sulle Barrens, e se ne porta fuori qualche parola.",
		"chiude il conto mentre due grunt vicino alla parete discutono a mezza voce su una mappa, e uscendo le dà un'occhiata.",
	},
	["org.quest_complete.w18.worth.001"] = {
		"Si crede che una capitale siano le mura e il trono. Per lo più sono faccende: qualcuno che aggiusta, porta, va a prendere, mette in ordine. Quel qualcuno, poco fa, ero io.",
		"Una città così grande non va avanti coi discorsi del Capoguerra. Va avanti a commissioni, e le commissioni vanno avanti con gente come me.",
		"Togli gli stendardi e Orgrimmar è un lungo elenco di piccoli bisogni. Uno l'ho appena depennato.",
	},
	["org.quest_complete.w18.worth.002"] = {
		"Lavoro piccolo. Qualcosa, in questa città, regge un po' meglio grazie a lui. Mi basta.",
		"Niente gloria, solo necessità. A me la necessità va benissimo.",
		"Nessuno si accorgerà che è stato fatto. È così che capisci che serviva.",
	},
	["org.quest_complete.w18.worth.003"] = {
		"osserva la strada affollata dopo la consegna, le bancarelle, i carretti, le grida, con l'aria di chi controlla che un pezzo montato sia ancora al suo posto.",
		"si volta dalla faccenda conclusa a guardare la città al lavoro, e rivolge a tutta quella macchina sferragliante un piccolo cenno di approvazione.",
		"osserva per un momento la ressa di carri e portatori, come un fabbro guarderebbe una catena per vedere che ogni anello sia chiuso.",
	},
	["org.quest_complete.w18.worth.004"] = {
		"Un po' d'orgoglio me lo concedo. Poco. Fino al prossimo angolo, poi torno a essere chiunque.",
		"Un orgoglio piccolo e privato, grande come una moneta. Lo tengo nella stessa tasca.",
		"Orgoglio, un pizzico, non di più. Quanto basta per arrivare in fondo alla strada un po' più alto.",
	},
	["org.quest_complete.w18.worth.005"] = {
		"Ecco, la città regge. Vorrei un po' di merito almeno per un mattone.",
		"Non c'è di che. Anzi, parlatene. Con qualcuno che conta.",
		"Se le mura restano in piedi ancora un po', ricordatevi chi ringraziare. In parte.",
	},
	["org.quest_complete.w18.worth.006"] = {
		"Nessuno ricorda i nomi dei peon che hanno impilato queste mura. Le mura però sono ancora lì. È così che si ricorda il lavoro, se è fatto bene.",
		"Le mura non dicono chi le ha costruite. Stanno in piedi e basta. Mi accontenterei che il mio lavoro facesse lo stesso.",
	},
	["org.quest_complete.w18.worth.007"] = {
		"incrocia lo sguardo di un grunt di pattuglia e riceve in cambio il cenno asciutto che un lavoratore rivolge a un altro.",
		"si scambia un'occhiata con un portatore troll che posa una cassa: lo sguardo breve di chi sa bene quanto pesa il lavoro.",
	},
	["org.quest_complete.w18.worth.008"] = {
		"La paga era giusta per quello che ho fatto. Quanto valesse per loro è tutto un altro numero, e nessuno me lo dirà.",
		"Monete giuste per il lavoro. Ma a sentire che era fatto, un viso è cambiato, e quella somma non c'è borsa che la contenga.",
	},
	["org.quest_complete.w18.worth.009"] = {
		"Un buon lavoro è un buon lavoro, che sia per un generale o per un cuoco.",
		"Grande o piccolo, il compito riceve le stesse mani. Meno male che è fatto.",
		"Visto da dentro, ogni lavoro ha la stessa misura. Questo è finito.",
	},
	["org.quest_complete.w18.worth.010"] = {
		"Qualcuno in questa città mangerà, aggiusterà, dormirà o venderà un po' meglio grazie a questo. Io non lo vedrò. Non serve.",
		"Più avanti, uno sconosciuto starà un po' meglio senza sapere chi ringraziare. È il lavoro migliore che ci sia.",
		"Nessuna delle persone che ne trarranno aiuto conoscerà mai la mia faccia. Meglio. L'aiuto viaggia più leggero senza un nome sopra.",
	},
	["org.quest_complete.w18.worth.011"] = {
		"appoggia per un momento il palmo sul muro più vicino, a faccenda chiusa, come per sentire se la città regge ancora.",
		"posa la mano aperta sulla pietra rossa e ruvida di un muro, passando, solo un istante, come chi saluta un altro che sta lavorando.",
	},
	["org.quest_complete.w18.worth.012"] = {
		"Non molto tempo fa l'Orda era un sogno nei campi di prigionia. Ora è una città che distribuisce lavoro e lo paga il giusto. Sono {g:fiero|fiera} di essere nei suoi registri.",
		"Qualunque cosa fosse prima, ora l'Orda è questo: una città dove il lavoro si chiede, si fa e si paga. Del mio pezzetto vado {g:fiero|fiera}.",
		"Un'Orda che paga il lavoro onesto invece di prenderlo con la forza. L'ha costruita Thrall, e io l'ho appena vista funzionare dall'interno.",
	},
	["org.quest_complete.w18.worth.013"] = {
		"Fatto bene, dall'inizio alla fine. Mi concedo un po' d'orgoglio mentre esco.",
		"Lavoro pulito. Non lo dico spesso, quindi lo penso davvero.",
		"È stato fatto come si deve. Mi prendo il cenno e lascio le canzoni a chi ha più voce.",
	},
	["org.quest_complete.w18.worth.014"] = {
		"A volte mi chiedo se servo solo a questo: i piccoli guai degli altri, nella città di qualcun altro. Poi mi ricordo che i piccoli guai sono quasi tutto quello che c'è.",
		"Commissioni per sconosciuti. È una vita, questa? La maggior parte delle vite è fatta di meno.",
	},
	["org.quest_complete.w18.worth.015"] = {
		"si scosta per lasciar passare una fila di carri carichi che stridono, e li segue con uno sguardo nuovo, come calcolando quanto valga ciascuno.",
		"guarda un peon e un tauren issare una trave su un'impalcatura lì vicino, e non distoglie gli occhi finché non è al suo posto.",
	},
	["org.quest_complete.w18.worth.016"] = {
		"Thrall non saprà mai di quello che ho appena fatto. Meglio così. Il Capoguerra ha già abbastanza sul tavolo senza le mie commissioni.",
		"A Grommash Hold di questo non arriverà una parola. Non serve: Grommash Hold regge su un mucchio di cose di cui non sente mai parlare.",
	},
	["org.quest_complete.w18.worth.017"] = {
		"Una preoccupazione in meno per Orgrimmar. Gliene restano parecchie, ma una in meno.",
		"Un nodo sciolto. La città ne è piena, ma questo non c'è più.",
		"Al mondo ci sono meno guai di un momento fa. Uno solo, ma lo conto.",
	},
	["org.quest_complete.w18.worth.018"] = {
		"In questo momento, in tutta Orgrimmar, altri consegnano lavori come il mio: una cassa qui, un messaggio là. È una strana compagnia di cui fare parte, e buona.",
		"In centinaia facciamo questo, in tutta la città, e quasi nessuno si incontrerà mai. Sembra comunque compagnia.",
	},
	["org.quest_complete.w18.worth.019"] = {
		"alza gli occhi verso uno stendardo dell'Orda appeso sopra la strada, a lavoro consegnato, e sotto di esso si raddrizza appena.",
		"passa sotto uno stendardo dell'Orda uscendo e gli porta due dita alla fronte, senza fretta.",
	},
	["org.quest_complete.w18.worth.020"] = {
		"Che serva a chi ne ha bisogno. Non gli chiedo altro.",
		"Che faccia un po' di bene. Allora sarà valsa la fatica.",
		"Va' pure, lavoretto. Fa' la tua parte là fuori.",
	},
	["org.quest_complete.w18.worth.021"] = {
		"Nessuno canta i chiodi. Eppure un fabbro del Drag se li fa pagare uno per uno, perché senza di loro le porte cadono. Mi sento un po' chiodo.",
		"Qui sono un chiodo: piccolo, semplice, e reggo qualcosa. Si può essere di peggio.",
	},
	["org.quest_complete.w18.worth.022"] = {
		"nota un piccolo messaggero che sfreccia tra la folla stringendo un messaggio sigillato, e segue quella figurina con uno sguardo di quieto riconoscimento.",
		"guarda un giovane orco trascinare attraverso la strada un secchio grande il doppio di lui, rovesciandone mezzo, e quasi sorride.",
	},
	["org.quest_complete.w18.worth.023"] = {
		"Gli anziani dicono che Thrall ha innalzato Orgrimmar per dimostrare che gli orchi sanno costruire oltre che combattere. Ogni commissione portata a termine qui dentro è una prova in più.",
		"Chiedi a un grunt dai capelli grigi perché esiste questa città e la risposta arriva netta: per mostrare al mondo che gli orchi sanno fare qualcosa che dura. Il lavoro piccolo tiene viva la discussione.",
	},
	["org.quest_complete.w18.worth.024"] = {
		"Per qualcuno contava. L'ho visto in faccia. È quella la mia vera paga.",
		"Metà dei ringraziamenti puoi tenerteli. Il resto me l'ha già detto la tua faccia.",
		"Vedere quel sollievo è stata la parte migliore dell'accordo.",
	},
	["org.quest_complete.w18.worth.025"] = {
		"Le torce lungo il canyon sono accese e la città lavora ancora, carri e martelli e voci nel buio. Ho appena aggiunto la mia piccola parte al turno di notte.",
		"Lanterne su ogni soglia, e Orgrimmar che non dorme. Da qualche parte in tutto quel chiarore c'è quel poco che ho appena finito.",
	},
]==])
