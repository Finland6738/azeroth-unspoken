-- Italian texts of the regional pack eastern_duskwood (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Duskwood.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("duskwood", "itIT", "eastern_duskwood", [==[
	["dsk.attack.01"] = {
		"Resta pure nella penombra, se vuoi. Questo ti trova anche lì.",
		"In questo bosco la luce scarseggia. La mia mira no.",
		"Hai scelto un posto buio per combattere. Peccato: ero {g:pronto|pronta} anche a questo.",
	},
	["dsk.battle.01"] = {
		"Esci dagli alberi, allora. Aspettavo qualcosa che si potesse colpire davvero.",
		"Finalmente qualcosa, in questo bosco, che non sparisce tra gli alberi.",
		"Bene, qualcosa di solido. Meglio che sobbalzare a ogni sagoma.",
	},
	["dsk.battle.02"] = {
		"Senza un suono, fuori dagli alberi. A Duskwood ogni cosa impara a muoversi così.",
		"Nessun avviso, nessun rametto spezzato. Questo bosco nasconde bene i suoi cacciatori.",
		"Dal grigio tra i tronchi, all'improvviso. Per una settimana guarderò dietro ogni albero.",
	},
	["dsk.battle.03"] = {
		"pianta i piedi tra le foglie fradice e affronta l'attacco a viso aperto.",
		"si volta mentre qualcosa erompe dal sottobosco, l'arma già alzata prima che le foglie si posino.",
	},
	["dsk.battle.04"] = {
		"Indietro, worgen! Non trascinerai nessun altro tra questi alberi.",
		"Ti ho sentito ululare per tutto il bosco. Adesso vieni a provarci con me.",
	},
	["dsk.battle.05"] = {
		"affronta la cosa che barcolla nei suoi abiti da sepoltura marciti, il nome che portava rimasto da tempo sotto terra.",
		"tiene testa ai morti che arrancano fuori dalla penombra, le ossa che schioccano sotto quel che resta della pelle.",
	},
	["dsk.battle.06"] = {
		"Otto zampe e zero educazione. Vediamo di finirla.",
		"Non tra i capelli, non sugli stivali, da nessuna parte. Indietro, ragno!",
	},
	["dsk.journey.arrival.01"] = {
		"Giù a Darkshire. Da lassù il bosco sembrava quasi tranquillo. Lassù mentivano.",
		"Piedi a terra, cupezza sopra la testa. Il grifone mi ha {g:posato|posata} ed è ripartito in gran fretta, noto.",
	},
	["dsk.journey.start.01"] = {
		"si leva da Darkshire su ali di grifone, mentre la volta nera di Duskwood si allarga là sotto come un mare che il sole non tocca mai.",
		"sale oltre le cime storte degli alberi, e le lampade di Darkshire si riducono a una manciata di scintille nel grigio.",
	},
	["dsk.landmark.cemetery.01"] = {
		"Raven Hill Cemetery. Le lapidi pendono da ogni parte, e certe fosse sono state aperte da dentro.",
		"Quante pietre quassù, metà rovesciate. Chi si occupava di questo posto ha perso la partita da un pezzo.",
	},
	["dsk.landmark.darkshire.01"] = {
		"esce dagli alberi ed entra a Darkshire, dove accanto a ogni porta brucia una lampada e la strada sa di fumo di camino.",
		"si inoltra per le strade illuminate di Darkshire, oltre sentinelle che alzano gli occhi, {g:lo|la} squadrano e tornano a sorvegliare gli alberi.",
	},
	["dsk.lowhp.01"] = {
		"Non qui. Non in un bosco dove i morti si rialzano.",
		"Se cado a Duskwood, preferirei non scoprire cosa andrà in giro coi miei stivali, dopo.",
		"Raven Hill ha già abbastanza tombe. La mia non ce la metto.",
	},
	["dsk.lowhp.02"] = {
		"Ancora in piedi! I corvi dovranno aspettare.",
		"Non ancora. Questo bosco non mi avrà così facilmente, corvi o non corvi.",
	},
	["dsk.meet.guard.01"] = {
		"Occhi arrossati, una lanterna, la mano mai lontana dall'elsa. Fare la guardia a Darkshire consuma fino all'osso.",
		"La guardia guarda oltre me, verso gli alberi, come fanno tutti qui. Parlarle sembra interrompere una veglia.",
		"Un'altra sentinella che non dorme come si deve da chissà quanto. Eppure sta dritta. Vale qualcosa.",
	},
	["dsk.meet.innkeeper.01"] = {
		"Qualcosa di caldo, per favore, e un posto di fronte alla porta.",
		"Avete un letto dietro una bella serratura robusta? Non che io sia {g:preoccupato|preoccupata}. Non molto.",
	},
	["dsk.muse.01"] = {
		"In questo bosco la luce non arriva mai fino in fondo. Si ferma lassù, sopra i rami, e resta ad aspettare.",
		"Qualunque cosa faccia il cielo sopra questi rami, quaggiù se ne sente solo parlare.",
		"Luce grigia, corteccia grigia, facce grigie a Darkshire. Pure i colori hanno fatto fagotto e se ne sono andati.",
	},
	["dsk.muse.02"] = {
		"Ogni lampada di Darkshire è qualcuno che non si arrende. La Night Watch le tiene accese per tutti noi.",
		"Pochi, stanchi, con gli occhi rossi, eppure la Night Watch non cede. Questa è la nostra gente nel suo momento migliore.",
		"Dite quel che volete di Darkshire, ma le sue lampade non si spengono mai. Ci pensa la Night Watch, per tutti quanti.",
	},
	["dsk.muse.03"] = {
		"Corvi su un ramo sì e uno no, a guardarmi passare. Di viandanti ne hanno visti entrare tanti. A giudicare dalle loro facce, ne escono meno.",
		"Qui i corvi non si spaventano. Girano la testa e tengono il conto.",
	},
	["dsk.muse.04"] = {
		"Le tombe di Raven Hill non restano chiuse. A chi ci è stato sepolto avevano promesso riposo, e la promessa si è rotta.",
		"Altrove i morti sono un dolore. A Duskwood sono anche un giro di ronda.",
		"Un tempo qualcuno scavò quelle fosse con cura. Adesso la terra continua a restituire chi ci stava dentro.",
	},
	["dsk.muse.05"] = {
		"si fa strada tra tronchi anneriti e storti, con le radici annodate sul sentiero come vecchie dita.",
		"passa sotto rami che si chiudono in alto, da cui pende un muschio grigio in lunghi fili immobili.",
		"scavalca una radice grossa come una gamba, e tutto il bosco sembra sporgersi di un palmo per guardare.",
	},
	["dsk.muse.06"] = {
		"Un ululato, a ovest. Troppo lungo, troppo basso per un lupo. I worgen sono in giro, e questo bosco lo conoscono meglio di me.",
		"Quello non era un lupo. I lupi non ululano come qualcosa che ricorda di aver avuto un'altra forma.",
	},
	["dsk.muse.07"] = {
		"Chi ha battezzato questo posto Duskwood non aveva certo terreni da vendere.",
		"Che bel bosco. Che bei corvi. Che belle tombe. Io adesso vado.",
	},
	["dsk.muse.08"] = {
		"A est la strada sale verso Deadwind Pass, e la gente di Darkshire non la segue a lungo. Laggiù si diradano perfino gli alberi, come se non ne avessero voglia.",
		"La strada a est entra in Deadwind Pass e ne esce dall'altra parte, così mi dicono. Qui nessuno sembra ansioso di controllare.",
	},
	["dsk.muse.09"] = {
		"Ogre sulle colline, morti nei campi e ragni nel mezzo. A Darkshire devono avere una pazienza infinita.",
		"Gli ogre stanno accampati a Vul'Gol. Grossi, rumorosi, e svegli quanto basta per creare guai.",
	},
	["dsk.muse.10"] = {
		"Ancora ragnatele di traverso sul sentiero, spesse come tela da vela. Chiunque le abbia tessute, preferirei conoscerne i cugini più piccoli.",
		"Un'altra ragnatela in faccia. I ragni di Duskwood devono credere che le strade le abbiano tracciate per loro.",
	},
	["dsk.muse.11"] = {
		"A Darkshire dicono che un tempo tutto il bosco era verde, come quello di Elwynn. Laggiù a Brightwood Grove quasi ci credo.",
		"Brightwood Grove ha ancora le sue foglie. I vecchi di Darkshire raccontano che il resto del bosco era così, una volta.",
	},
	["dsk.muse.12"] = {
		"Torcia alta, piedi in movimento, occhi aperti. Duskwood può fissarmi quanto vuole.",
		"Cupo, certo. Ma una buona lanterna e un passo sicuro portano lontano, anche qui.",
	},
	["dsk.muse.13"] = {
		"si ferma ad ascoltare. Tra gli alberi si spezza un ramo, poi niente, poi un corvo.",
		"resta immobile sul sentiero mentre il bosco scricchiola e si assesta intorno a {g:lui|lei}, come una casa piena di dormienti.",
		"aspetta che quel suono torni dagli alberi. Non torna, e chissà perché è peggio.",
	},
	["dsk.muse.14"] = {
		"Foglie fradice, fango nero, radici a ogni passo. I miei stivali hanno smesso di essere asciutti già da un miglio.",
		"Fango fino alle caviglie e foglie appiccicate dappertutto. Duskwood non ha un terreno: ha una lunga discussione umida.",
	},
	["dsk.qp.01"] = {
		"È tutto. Ora torno da chi aspetta, prima che il bosco decida di riprenderselo.",
		"Qui ho finito. Adesso il lungo ritorno sotto gli alberi, con gli occhi aperti per tutta la strada.",
		"Fatto. La strada del ritorno è la stessa dell'andata, e non sarà più gentile.",
	},
	["dsk.quest.01"] = {
		"Pagato e fatto. A Duskwood anche una ricompensa sembra uscire da una tasca fredda.",
		"Sistemato. Una piccola cosa rimessa a posto, in un bosco dove tante cose sono storte.",
		"Monete in mano, lavoro alle spalle. Qualcuno qui può depennare una preoccupazione da una lista lunghissima.",
	},
	["dsk.quest.02"] = {
		"prende la ricompensa con un breve cenno e la mette via, lo sguardo già tornato agli alberi.",
		"conta le monete in quella luce scarsa, poi le intasca senza una parola.",
		"accetta i ringraziamenti e la borsa, e chissà perché pesano entrambi meno del dovuto.",
	},
	["dsk.quest.03"] = {
		"Ecco. Un motivo in meno, per questo bosco, di tenere le porte sbarrate.",
		"Fatto! Ditelo agli altri: questo bosco è appena diventato un po' meno tetro.",
		"Sistemato. Non è molto, ma qui il buio cede terreno solo a piccoli passi.",
	},
	["dsk.quest.04"] = {
		"Darkshire resiste perché c'è sempre qualche forestiero che arriva e fa il lavoro. Oggi è toccato a me.",
		"La Night Watch non può essere ovunque. Oggi, per un po', sono {g:stato|stata} io dove loro non arrivavano.",
	},
	["dsk.sub.01"] = {
		"rallenta mentre gli alberi cambiano intorno a {g:lui|lei}: qui più vecchi, più fitti, e molto silenziosi.",
		"entra in un altro tratto del bosco, dove il sentiero si stringe e i tronchi premono da entrambi i lati.",
		"si ferma al margine di una nuova parte della foresta, lasciando che gli occhi trovino le sagome tra i tronchi.",
	},
	["dsk.sub.orchard.01"] = {
		"The Rotting Orchard. Anche chi l'ha battezzato non sperava in molte visite.",
		"Il nome dice tutto. Qui non c'è un albero a cui affiderei una mela decente.",
	},
	["dsk.victory.01"] = {
		"Torna la quiete. Gli alberi si richiudono sul punto come se qui non fosse successo niente.",
		"Fatto. Duskwood ingoia ogni rumore, e i corvi tornano ad aspettare.",
		"Finita. Conto i respiri, ascolto gli alberi e l'arma, per ora, non la rimetto via.",
	},
	["dsk.victory.02"] = {
		"Una cosa in meno in agguato. Duskwood ne ha ancora parecchie in magazzino.",
		"E uno. Il bosco ne manderà presto un altro, ne sono {g:sicuro|sicura}.",
		"Giù. E non rialzarti, non è quel genere di bosco. Be', lo è. Ma tu non farlo.",
	},
	["dsk.victory.03"] = {
		"abbassa l'arma e resta un po' in ascolto tra gli alberi scuri, in attesa di vedere cosa verrà dopo.",
		"pulisce l'arma con una manciata di foglie morte, senza mai smettere del tutto di tenere d'occhio la penombra.",
	},
	["dsk.victory.04"] = {
		"Qualunque cosa fossi prima che la maledizione ti prendesse, adesso puoi riposare.",
		"Un ululato in meno nel bosco. A Darkshire dormiranno un po' più tranquilli.",
	},
	["dsk.victory.05"] = {
		"Più sono grossi, più ci mettono a fermarsi. Questo ci ha messo un bel po'.",
		"Giù, finalmente. Gli ogre non cadono: rinunciano a stare in piedi, a rate.",
	},
	["dsk.weather.rain.01"] = {
		"si tira su il cappuccio mentre la pioggia comincia a ticchettare sulle foglie in alto, e tutto il bosco si scurisce di un'altra tonalità.",
		"ascolta la pioggia arrivare su Duskwood: niente acquazzone, solo un picchiettio costante sulle foglie che inzuppa ogni cosa.",
	},
]==])
