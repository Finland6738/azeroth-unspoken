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
]==])
