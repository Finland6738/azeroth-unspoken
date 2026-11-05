-- Italian texts of the regional pack eastern_redridge (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Redridge.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("redridgemountains", "itIT", "eastern_redridge", [==[
	["rdg.attack.01"] = {
		"Giù per il pendio!",
		"Questa collina è occupata!",
		"Occhio a dove metti i piedi!",
	},
	["rdg.battle.01"] = {
		"Combattimento in salita, sassi che rotolano. Testa bassa e non scivolare.",
		"Terra rossa, terreno ripido. Lascio che sia lui a venire da me.",
		"Occhio al pendio. Un passo falso e vince la montagna.",
	},
	["rdg.battle.02"] = {
		"trova un appoggio sicuro sulla roccia rossa e si volta ad affrontare la minaccia.",
		"si mette con le spalle a un masso, il pendio che precipita da un lato.",
	},
	["rdg.battle.blackrock.01"] = {
		"Torna alla tua montagna, orco!",
		"Lakeshire non è tua. Né oggi né mai.",
		"Blackrock! Questa è l'ultima fattoria che razzii.",
	},
	["rdg.battle.gnoll.01"] = {
		"Un altro gnoll. Ma vi riproducete nei cespugli?",
		"Torna alla tana, cane. Queste colline non sono mai state tue.",
		"Abbaia quanto ti pare: io non scappo.",
	},
	["rdg.battle.shadowhide.01"] = {
		"Questi gnoll sono diversi. Pelo più scuro, passi più silenziosi. Attenzione.",
		"Shadowhide. Non quelli che abbaiano e basta. Questi ragionano.",
	},
	["rdg.battle.tarantula.01"] = {
		"si irrigidisce per mezzo battito mentre la tarantola si alza sulle zampe posteriori, poi avanza.",
		"cede un passo davanti alle zampe pelose e agli occhi lucenti, poi affronta il ragno di petto.",
	},
	["rdg.journey.arrival.01"] = {
		"Finalmente Lakeshire sotto gli stivali. Catrame, pesce e lo scricchiolio del ponte.",
		"A terra. Da lassù le creste sembravano piccole; da quaggiù non lo sembrano mai.",
	},
	["rdg.journey.start.01"] = {
		"si stacca da Lakeshire, e sotto il grifone il lago si rimpicciolisce fino a sembrare una moneta azzurra incastonata nella pietra rossa.",
		"prende quota sopra i tetti del paese, con le creste che scorrono più in basso e un fumo sottile che sale dai campi degli orchi.",
	},
	["rdg.lm.lakeshire.01"] = {
		"entra a Lakeshire, dove le reti pendono ad asciugare tra le case e un portico su due ha una lancia appoggiata accanto alla porta.",
		"percorre le stradine di Lakeshire in riva al lago, oltre le barche tirate in secca e una sentinella che scruta le creste.",
		"arriva a Lakeshire tra odore di pesce e fumo di pino, con il lago che luccica in fondo a ogni vicolo.",
	},
	["rdg.lowhp.01"] = {
		"Non qui. Non su un pendio, senza nessuno che mi porti giù.",
		"La testa gira. Il terreno continua a inclinarsi, o sono io.",
		"Troppi. Troppo ripido. Via, subito, finché le gambe obbediscono.",
	},
	["rdg.lowhp.02"] = {
		"Ci sono ancora! Vieni a finirmi, se ci riesci.",
		"Queste montagne crescono gente dura. Ne prendo un po' in prestito.",
	},
	["rdg.meet.flight.01"] = {
		"Sopra le creste, per favore, e ben più in alto delle frecce degli orchi.",
		"Un grifone, grazie al cielo. Le mie gambe ne hanno abbastanza di queste colline.",
	},
	["rdg.meet.innkeeper.01"] = {
		"Un oste in riva al lago. Zuppa di pesce sul focolare, ci scommetto, e una buona dose di storie di orchi.",
		"Una stanza calda e un pasto bollente. Con le creste che sovrastano il paese, vale quanto una fortezza.",
		"Chi tiene una locanda così vicino ai Blackrock ha nervi d'acciaio, o una cantina molto ben fornita.",
	},
	["rdg.muse.01"] = {
		"Roccia rossa ovunque, come se le montagne avessero fatto la ruggine. I pini ci crescono sopra lo stesso.",
		"Le creste sembrano sbozzate alla buona e poi lasciate lì ad arrugginire. Nessuno è più tornato a finirle.",
		"Ogni parete di roccia ha il colore del mattone vecchio. Bella, finché non ti accorgi del fumo che sale lì dietro.",
	},
	["rdg.muse.02"] = {
		"A Lakeshire si pesca con un occhio sull'acqua e uno sulle creste. Farei lo stesso.",
		"Questa gente ha gli orchi alla porta da anni, e ogni mattina rammenda ancora le reti. Rispetto.",
		"Se Stormwind non può mandare soldati a sufficienza, Lakeshire dovrà accontentarsi di gente come me.",
	},
	["rdg.muse.03"] = {
		"guarda Lake Everstill, dove le scogliere rosse si specchiano capovolte in un'acqua così ferma da sembrare dipinta.",
		"indugia sulla riva mentre un pesce rompe la superficie, e i cerchi si allargano piano verso la sponda opposta.",
		"osserva una barca da pesca che va alla deriva sul lago, i remi in riposo e le montagne a vegliarla come vecchie sentinelle.",
	},
	["rdg.muse.04"] = {
		"Gnoll sulle colline, gnoll nei campi, gnoll che cacciano i cervi di frodo. Redridge ha uno gnoll per ogni stagione.",
		"Pare che gli gnoll di qui abbiano fatto del bracconaggio un mestiere. Quasi organizzati. Ed è peggio.",
		"Dalla strada del lago in poi ho contato più gnoll che pecore. Le pecore vincono in educazione.",
	},
	["rdg.muse.05"] = {
		"Stonewatch Keep fu costruita per tenere queste colline in nome del regno. Ora dalle sue mura pendono gli stendardi dei Blackrock.",
		"Una buona rocca di pietra, finita agli orchi. Alle mura non importa chi ci sta sopra.",
	},
	["rdg.muse.06"] = {
		"Three Corners, dove si incontrano Elwynn, Duskwood e Redridge. Anche le strade sembrano indecise su dove girare.",
		"Un crocevia, tre paesi: il verde di Elwynn, il buio di Duskwood, il rosso di queste colline. A Redridge è toccato il più ripido.",
	},
	["rdg.muse.07"] = {
		"Pesce di Lake Everstill, fritto con un pizzico di sale. A Redridge potrei farci l'abitudine.",
		"Qualunque cosa tramino gli orchi, i pesci di questo lago sono grassi e tonti. Approvo.",
	},
	["rdg.muse.08"] = {
		"Torri di guardia sulle alture, metà vuote. Una torre senza sentinella è solo un mucchio di pietre con vista.",
		"Fumo da una torre in cima alla cresta. Potrebbe essere un segnale, un fuoco da campo, o la fine del turno di qualcuno.",
		"Hanno costruito torri lungo tutte queste creste per vedere arrivare gli orchi. Vederli non è mai stata la parte difficile.",
	},
	["rdg.muse.09"] = {
		"I vecchi soldati di Lakeshire dicono che l'Orda passò da questi stessi valichi nella prima guerra. La pietra rossa ricorda, anche se i giovani no.",
		"Alla locanda i vecchi barbagrigia parlano della prima guerra, quando gli orchi scesero da queste colline per la prima volta. Ne parlano sottovoce.",
	},
	["rdg.muse.10"] = {
		"Ragni grossi come cani, su queste colline. Tarantole, le chiamano qui, come se un nome le rendesse più piccole.",
		"Condor sulle correnti d'aria, tarantole nella macchia. La fauna di Redridge ha due taglie: grande e più grande.",
	},
	["rdg.muse.11"] = {
		"Quel ponte per Lakeshire ha più toppe del mio mantello. Reggono tutti e due. Più o meno.",
		"Il ponte di Lakeshire: costruito, rotto, rattoppato, discusso. L'argomento preferito del paese, dopo gli orchi.",
	},
	["rdg.muse.12"] = {
		"Di notte si possono contare i fuochi degli orchi sulle creste. Io ho smesso a dodici.",
		"Colline buie, e su ognuna un piccolo fuoco rosso. I Blackrock non si prendono più nemmeno la briga di nascondersi.",
		"La notte, quassù, è piena dei fuochi da campo di altri. Nessuno amico.",
	},
	["rdg.muse.13"] = {
		"Oltre i valichi del nord la terra brucia, e i Blackrock ne scendono come scintille da una forgia.",
		"Dietro quei picchi, a nord, c'è un paese di cenere e fuoco. Redridge è la soglia a cui continua a bussare.",
	},
	["rdg.muse.14"] = {
		"respira l'odore di resina di pino e di pietra calda, mentre il vento sibila piano tra gli aghi.",
		"si ferma sul sentiero mentre il vento pettina i pini lungo la cresta e porta su da valle il colpo lontano di un'ascia.",
	},
	["rdg.qp.01"] = {
		"Ecco l'ultimo. Giù al lago, prima che qualcos'altro mi trovi.",
		"Quassù ho finito. Adesso la lunga discesa, senza storcermi una caviglia.",
		"Preso tutto. Le colline possono riavere la loro quiete; io porto questo a chi l'ha chiesto.",
	},
	["rdg.quest.01"] = {
		"Pagato, e onestamente. A Redridge i debiti si saldano.",
		"Monete in borsa e una cena di pesce promessa. Redridge paga in tutte e due.",
		"Una ricompensa giusta da gente che non ha molto. Mi ricorderò chi me l'ha data.",
	},
	["rdg.quest.02"] = {
		"prende la ricompensa con un breve cenno e, per abitudine, lancia un'occhiata alle creste.",
		"fa scivolare le monete nella borsa, poi guarda l'acqua come se il lavoro meritasse un momento di quiete.",
	},
	["rdg.quest.03"] = {
		"Questo è per Lakeshire. Dite alla guardia che ha una cosa in meno da temere.",
		"Fatto, per l'Alleanza e per il lago. Chi è il prossimo sulla lista?",
	},
	["rdg.quest.04"] = {
		"Fatto. E sulle creste i fuochi bruciano ancora. Una commissione sola non ricaccia indietro un clan intero.",
		"Buono per Lakeshire. Però non rimanda a casa nemmeno un orco.",
		"Un altro incarico cancellato dalla lista, e lassù sulle alture i Blackrock non se ne sono neanche accorti.",
	},
	["rdg.quest.05"] = {
		"Fatto. C'è una ricompensa, o mi tocca solo la scelta del pesce migliore?",
		"Finito. Preferirei la paga in monete, se non vi dispiace: di persico ne ho già mangiato abbastanza.",
	},
	["rdg.sub.everstill.01"] = {
		"Lake Everstill. Il nome gli si addice: appena un'increspatura, e tutto il cielo disteso sopra.",
		"Il lago si apre, largo e quieto, con le scogliere rosse tutt'intorno come le pareti di una ciotola.",
	},
	["rdg.sub.threecorners.01"] = {
		"rallenta al crocevia, dove i solchi dei carri arrivati da tre direzioni hanno consumato il terreno fino a lasciarlo nudo.",
		"si ferma accanto al cartello consumato dal tempo, all'incrocio, e guarda una strada dopo l'altra.",
		"si arresta dove le strade si incontrano e studia il vecchio cartello, come se potesse aver cambiato idea.",
	},
	["rdg.victory.01"] = {
		"Un predone in meno sulle colline.",
		"Questo le torri di guardia non dovranno avvistarlo.",
		"Giù. Che ti tenga la roccia rossa.",
	},
	["rdg.victory.02"] = {
		"si appoggia a un ginocchio, col fiato corto nell'aria sottile delle colline, e alza lo sguardo alle creste.",
		"si pulisce la ghiaia dalle mani e tende l'orecchio: risponde solo il vento tra i pini.",
		"si allontana dal nemico caduto e controlla il pendio più su, in cerca del prossimo.",
	},
	["rdg.victory.03"] = {
		"Forse adesso i pescatori del lago dormiranno un po' più tranquilli.",
		"Poca cosa. Ma domani qualcuno a Lakeshire potrebbe gettare la rete senza guardarsi alle spalle.",
	},
	["rdg.victory.blackrock.01"] = {
		"Un guerriero Blackrock, coperto di cicatrici da capo a piedi. Qualcuno l'ha cresciuto solo per la guerra, e la guerra è arrivata.",
		"Forte fino all'ultimo. I Blackrock combattono come se nessuno avesse mai insegnato loro altro.",
		"Vecchie cicatrici sotto il ferro nero. Questo combatteva da molto prima di Redridge.",
	},
	["rdg.victory.gnoll.01"] = {
		"Va' a dirlo al tuo branco. Anzi, meglio di no.",
		"Uno gnoll in meno nella macchia. I cervi mi devono un favore.",
	},
	["rdg.wc.clear.01"] = {
		"Le nuvole si ritirano dalle vette e la roccia rossa torna a splendere, ogni cresta così netta da tagliare.",
		"Di nuovo sereno. Da qui vedo le torri lungo le creste e, più in là, il fumo sottile dei campi degli orchi.",
	},
]==])
