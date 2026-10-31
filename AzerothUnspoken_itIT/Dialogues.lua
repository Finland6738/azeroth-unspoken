-- Testi in italiano dei dialoghi ambientali (step S8). Le regole stanno in Data/RegistryDialogues.lua, la struttura dei
-- nodi e delle risposte in Data/Dialogues.lua. Sono battute in prima persona dell'NPC, in registro quotidiano: la
-- finestra le etichetta «dialogo ambientale dell'addon» e non vanno mai in chat. Ogni sigla ha il suo carattere
-- (neutra, di chi conosce o no il giocatore, burbera, gioviale, calorosa, formale, laconica, di un NPC specifico);
-- le neutre reggono ogni temperamento. Niente prezzi, quest, fatti di cronaca o promesse che il gioco non mantiene.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- LOCANDIERE
	---------------------------------------------------------------------------
	["npcd.innkeeper.open.n1"] = {
		"{g:Benvenuto|Benvenuta}, viandante. C'è posto vicino al fuoco, se la strada ti ha stancato.",
		"Entra pure. Il camino è acceso e nessuno ti chiederà da dove vieni.",
	},
	["npcd.innkeeper.open.n2"] = {
		"Accomodati. Cerchi un tavolo, un letto o solo un po' di silenzio?",
		"Eccoti. Qui il vento resta fuori e le chiacchiere entrano. Che cosa ti serve?",
	},
	["npcd.innkeeper.open.n3"] = {
		"Un'altra giornata di strada, a giudicare dagli stivali. Siediti, respira.",
		"Sei {g:arrivato|arrivata} al posto giusto per smettere di camminare. Per un po', almeno.",
	},
	["npcd.innkeeper.open.known1"] = {
		"Ancora tu! Il tavolo vicino al camino è come lo hai lasciato.",
		"Ti vedo spesso da queste parti. Fa piacere una faccia che torna.",
		"Ben {g:ritrovato|ritrovata}. Il solito angolo è libero, se ti va.",
	},
	["npcd.innkeeper.open.stranger1"] = {
		"Non ti conosco ancora. Ma il fuoco scalda tutti allo stesso modo.",
		"{g:Nuovo|Nuova} da queste parti? Allora presentiamoci con un boccale.",
	},
	["npcd.innkeeper.open.again1"] = {
		"Sei {g:tornato|tornata} a chiedere notizie? Ne ho di fresche, o quasi.",
		"L'altra volta ti ho raccontato cosa correva sulla strada. Oggi corre qualcos'altro.",
	},
	["npcd.innkeeper.open.gruff1"] = {
		"Stanza, tavolo o niente. Non resto qui a indovinare.",
		"Il camino scalda, il boccale costa. Siediti o togliti di mezzo.",
	},
	["npcd.innkeeper.open.gruff2"] = {
		"Pulisciti gli stivali. Poi parlami.",
		"Se cerchi conforto hai sbagliato porta. Se cerchi una panca, eccola.",
	},
	["npcd.innkeeper.open.jovial1"] = {
		"Ah, un cliente! Cioè, un ospite! Cioè, un amico che non ha ancora pagato!",
		"Dentro, dentro! Qui le storie sono gratis e la zuppa quasi.",
	},
	["npcd.innkeeper.open.jovial2"] = {
		"Che bella giornata per sedersi! Qualunque giornata lo è, qui dentro.",
		"Hai l'aria di chi ha una storia da raccontare. Io ho il boccale, tu la storia: affare fatto.",
	},
	["npcd.innkeeper.open.warm1"] = {
		"Si vede che hai camminato tanto. Siediti, qui non ha fretta nessuno.",
		"Che bello vederti arrivare {g:sano e salvo|sana e salva}. Vieni, vicino al fuoco c'è sempre posto.",
	},
	["npcd.innkeeper.open.warm2"] = {
		"Qualunque cosa ti porti qui, tira fuori la sedia. Il resto si aggiusta.",
		"Hai fame, hai sonno o hai solo bisogno di sentire una voce? Qui va bene tutto.",
	},
	["npcd.innkeeper.open.farley1"] = {
		"Il mestiere dell'oste è semplice: più sono felici, più ordinano. Quindi sii felice, e ordina!",
		"Questa locanda ha visto passare più avventurieri di quanti ne ricordi. E quasi tutti hanno pagato.",
	},
	["npcd.innkeeper.open.farley2"] = {
		"Se cerchi lavoro, sappi che qui si parla di lavoro solo a stomaco pieno.",
		"Un buon boccale è come un buon consiglio: meglio prenderlo seduti.",
	},
	["npcd.innkeeper.open.firebrew1"] = {
		"Un boccale pieno è il miglior consiglio che conosca, e anche il più economico!",
		"Ogni storia è migliore con qualcosa da bere accanto. Ti verso la tua?",
	},
	["npcd.innkeeper.open.gryshka1"] = {
		"Parla. Ho poco tempo, e lo vendo caro.",
		"Se vuoi un letto, dillo. Se vuoi una chiacchierata, dimmi quanto paghi.",
	},
	["npcd.innkeeper.news.n1"] = {
		"Si dice che la strada sia tranquilla. Io mi fido dei clienti che tornano, non delle voci.",
		"Un mercante parlava di cavalli nervosi, ieri. Può essere il vento, può essere altro.",
	},
	["npcd.innkeeper.news.n2"] = {
		"Notizie? Le solite: prezzi che salgono, stivali che si consumano, qualcuno che parte e qualcuno che torna.",
		"Pare che sul sentiero qualcuno abbia lasciato un fuoco acceso e se ne sia andato senza voltarsi.",
	},
	["npcd.innkeeper.news.n3"] = {
		"Dipende da chi chiedi. Ai carovanieri il mondo va a rotoli; ai bambini è appena cominciato.",
		"Una cosa so: chi viaggia in compagnia arriva più spesso. È poco, ma è vero.",
	},
	["npcd.innkeeper.news.gruff1"] = {
		"Notizie? Costano come il vino. Prima ordina, poi forse.",
		"Chiacchiere non ne vendo. Se ne hai bisogno, il tavolo in fondo ne è pieno.",
	},
	["npcd.innkeeper.news.jovial1"] = {
		"Ah, le notizie! La migliore: il brodo oggi è buono! La seconda: ieri non lo era.",
		"Si dice che un gallo abbia svegliato mezzo villaggio alle due di notte. Colpevole mai trovato.",
	},
	["npcd.innkeeper.news.warm1"] = {
		"Cose belle, per lo più: un matrimonio poco lontano, un raccolto che si fa bene. Le brutte le tengo per dopo cena.",
		"Ho sentito che sulla strada si è visto di nuovo qualche viaggiatore sorridere. Fa bene al cuore.",
	},
	["npcd.innkeeper.news.known1"] = {
		"A te lo dico: la gente è nervosa e non sa perché. Tieni gli occhi aperti, ma niente di più.",
		"Con te posso parlare chiaro: le voci cambiano, ma una resta. Chi si fida troppo paga. Chi non si fida mai paga di più.",
	},
	["npcd.innkeeper.news.farley1"] = {
		"Da qui passa mezzo mondo, e ognuno lascia una voce sul tavolo insieme alle monete. Io raccolgo entrambe.",
		"Le notizie migliori le porta chi ha fame. Una zuppa, e ne escono tre.",
	},
	["npcd.innkeeper.more.n1"] = {
		"Più di così non so, e quello che non so non lo invento.",
		"Il resto lo racconta chi lo ha visto. Io sento da lontano, e da lontano tutto sembra più grande.",
	},
	["npcd.innkeeper.more.n2"] = {
		"Se vuoi sapere altro, cammina e chiedi in giro. Le storie vere hanno gambe.",
		"Una voce non vale una moneta, ma tre voci uguali cominciano a somigliare alla verità.",
	},
	["npcd.innkeeper.more.gruff1"] = {
		"Basta così. Il resto ti costa un boccale.",
		"Non sono un banditore. Siediti o vai.",
	},
	["npcd.innkeeper.more.jovial1"] = {
		"Il resto? Il resto è così assurdo che dovrei farti pagare il biglietto!",
		"Ho finito le voci, ma domani me ne arrivano di nuove. Il mestiere dell'oste è aspettare le chiacchiere.",
	},
	["npcd.innkeeper.more.known1"] = {
		"Fidandomi di te: la gente parla di qualcosa sulla strada, ma credo sia solo la sera che arriva presto.",
		"A uno che torna non si mente: non so altro.",
	},
	["npcd.innkeeper.more.stranger1"] = {
		"Non ti conosco abbastanza per dirti il resto. Torna quando ti avrò visto un paio di volte.",
		"Il resto lo racconto a chi ho già servito. Non è sfiducia, è mestiere.",
	},
	["npcd.innkeeper.rest.n1"] = {
		"Letti ce ne sono, e le lenzuola cambiano più spesso di quanto si dica.",
		"Una stanza, un fuoco, una porta che si chiude: è tutto quello che serve a dormire in pace.",
	},
	["npcd.innkeeper.rest.n2"] = {
		"Siediti dove vuoi, riposa quanto vuoi. Il fuoco non si offende se ci metti ore.",
		"Il riposo è la cosa più economica che vendo, e la più cara a chi non la prende.",
	},
	["npcd.innkeeper.rest.n3"] = {
		"Ai viaggiatori consiglio di dormire prima di decidere, non dopo. Le decisioni, la mattina, sono più gentili.",
		"La stanza in fondo è silenziosa. La finestra dà sul cortile: nessuna vista, nessun rumore.",
	},
	["npcd.innkeeper.rest.gruff1"] = {
		"Il letto è duro, la porta chiude. Non ti serve altro per dormire.",
		"Russare è gratis. Svegliare gli altri no.",
	},
	["npcd.innkeeper.rest.jovial1"] = {
		"Il materasso è così morbido che qualcuno ci ha dimenticato un sogno. Se lo trovi, è tuo!",
		"Dormi pure: ti sveglio solo se brucia la casa, e anche allora con gentilezza!",
	},
	["npcd.innkeeper.rest.warm1"] = {
		"Riposati, davvero. Il mondo ti aspetta e può aspettare ancora una notte.",
		"Una coperta in più, se vuoi. Il freddo, qui, non lo lascio entrare.",
	},
	["npcd.innkeeper.rest.known1"] = {
		"La stanza che preferisci è libera. Te l'ho tenuta d'occhio.",
		"Per te c'è sempre un angolo tranquillo. Lo sai.",
	},
	["npcd.innkeeper.rest.gryshka1"] = {
		"Letto, tetto, porta. Il resto è un lusso.",
		"Dormi. Se c'è un problema, lo vedrai al mattino.",
	},
	["npcd.innkeeper.rest.firebrew1"] = {
		"Il riposo migliore? Dopo un buon boccale e una bella canzone!",
		"Il letto è comodo, ma il vero segreto è il fuoco: ti culla senza che te ne accorga.",
	},
	["npcd.innkeeper.sit.n1"] = {
		"Bene. Fermati finché il fuoco non ti ha ridato le forze. Poi la strada tornerà a chiamare.",
		"Respira. Qui il tempo scorre più piano, e nessuno ti farà notare che passa.",
	},
	["npcd.innkeeper.sit.n2"] = {
		"Ecco, così si fa. Un po' di sosta vale più di cento passi.",
		"Fatti spazio sulla panca. Se qualcuno parla troppo, fai finta di ascoltare.",
	},
	["npcd.innkeeper.sit.gruff1"] = {
		"Siediti, allora. E non toccare il mio sgabello.",
		"Ti fermi? Bene. Ti fermi, ma {g:zitto|zitta}.",
	},
	["npcd.innkeeper.sit.jovial1"] = {
		"Ah, un cliente che resta! Accenderò una candela in tuo onore!",
		"Il fuoco ti saluta, la panca ti abbraccia, il boccale ti aspetta!",
	},
	["npcd.innkeeper.thanks.n1"] = {
		"Di niente. Tornerai, se la strada vuole.",
		"Figurati. Un grazie sincero scalda più del vino.",
	},
	["npcd.innkeeper.thanks.n2"] = {
		"Non c'è di che. Qui un grazie vale un posto a sedere.",
		"Prego. Le cose gentili costano poco e rendono tanto.",
	},
	["npcd.innkeeper.thanks.gruff1"] = {
		"Sì, sì. Vai, che il fuoco non si accende da solo.",
		"Mh. Se proprio devi ringraziare, ordina qualcosa.",
	},
	["npcd.innkeeper.thanks.jovial1"] = {
		"Il grazie lo accetto in monete o in sorrisi! Il sorriso ormai l'ho avuto.",
		"Grazie a te per aver ascoltato! Gli osti vivono di orecchie attente.",
	},
	["npcd.innkeeper.bye.n1"] = {
		"Buona strada. E se la strada sbaglia, la porta qui è sempre quella.",
		"Che il vento ti sia amico. Passa, se ti va.",
	},
	["npcd.innkeeper.bye.n2"] = {
		"Arrivederci. Il fuoco resta acceso, di solito.",
		"A presto, viandante. Mangia, dormi, cammina: in quest'ordine, se puoi.",
	},
	["npcd.innkeeper.bye.gruff1"] = {
		"Vai. Non sbattere la porta.",
		"Arrivederci. La porta ha sofferto abbastanza.",
	},
	["npcd.innkeeper.bye.jovial1"] = {
		"Arrivederci! E ricorda: se perdi la strada, io ho sempre un letto!",
		"Torna presto, e porta qualche storia! Le mie sono finite da un pezzo!",
	},
	["npcd.innkeeper.bye.warm1"] = {
		"Torna presto, e riguardati. Il mondo è grande, ma la mia porta è piccola e ti riconosce.",
		"Vai con calma, senza dimenticare di mangiare. Qui ti aspettiamo.",
	},
	["npcd.innkeeper.bye.known1"] = {
		"Alla prossima, {g:amico mio|amica mia}: il solito posto ti aspetta.",
		"Torna quando vuoi. A casa si torna sempre, anche se è solo per un boccale.",
	},
	["npcd.innkeeper.bye.farley1"] = {
		"Arrivederci! Se la strada ti tratta bene, parlane bene anche di questa locanda!",
		"Buon viaggio! E se arrivi a un'altra locanda, ricordati: la nostra zuppa era migliore.",
	},

	---------------------------------------------------------------------------
	-- MERCANTE
	---------------------------------------------------------------------------
	["npcd.merchant.open.n1"] = {
		"Guarda pure. Se non vedi ciò che cerchi, chiedi: la merce migliore sta sul retro.",
		"{g:Benvenuto|Benvenuta}! Roba onesta a prezzi onesti, o almeno quelli che passano per tali.",
	},
	["npcd.merchant.open.n2"] = {
		"Oggi i carri sono arrivati in orario. Un evento raro: approfittane.",
		"Chi compra con calma compra meglio. Chi compra di fretta compra me.",
	},
	["npcd.merchant.open.n3"] = {
		"Prendi in mano, controlla, rigira. Le cose buone non hanno paura dell'esame.",
		"Una moneta ben spesa vale più di due spese male. Vediamo cosa ti serve.",
	},
	["npcd.merchant.open.known1"] = {
		"Il mio cliente preferito! Cioè, uno dei pochi che torna.",
		"{g:Bentornato|Bentornata}. Il banco è lo stesso, ma la merce cambia più spesso di quanto sembri.",
	},
	["npcd.merchant.open.stranger1"] = {
		"{g:Nuovo|Nuova} da queste parti? Un consiglio: il banco è onesto, il prezzo meno. Scherzo. Più o meno.",
		"Non ti ho mai visto: bene, i clienti nuovi hanno ancora le monete tutte.",
	},
	["npcd.merchant.open.again1"] = {
		"Sei {g:tornato|tornata} a guardare ancora? Il banco non è cambiato, ma la fretta è tua.",
		"Di nuovo qui con la domanda sulla merce? Ormai potresti vendere tu.",
	},
	["npcd.merchant.open.gruff1"] = {
		"Compri o guardi? Qui si fa una cosa sola alla volta.",
		"Un prezzo è un prezzo. Se non ti piace, c'è sempre la strada.",
	},
	["npcd.merchant.open.gruff2"] = {
		"Toccare è gratis, rompere si paga.",
		"Parla chiaro: che cosa vuoi? Non ho tutto il giorno.",
	},
	["npcd.merchant.open.jovial1"] = {
		"Ah, un cliente! Il mio giorno migliore comincia ora!",
		"Prego, prego! Ogni acquisto ha un sorriso incluso, a costo zero!",
	},
	["npcd.merchant.open.jovial2"] = {
		"Se qualcosa ti piace, dillo ad alta voce: la merce si commuove e il prezzo, forse, anche.",
		"Oggi il mio sconto è la mia simpatia. Sul cartellino però non cambia niente!",
	},
	["npcd.merchant.open.warm1"] = {
		"Prenditi il tempo che ti serve. Compri o no, hai portato buona compagnia.",
		"Se cerchi un consiglio, chiedi: preferisco vendere una cosa giusta che dieci sbagliate.",
	},
	["npcd.merchant.wares.n1"] = {
		"C'è di tutto un po': ciò che serve per il viaggio, ciò che serve dopo, e qualcosa che non serve a nessuno ma piace.",
		"La merce parla da sola. Io mi limito a non disturbarla.",
	},
	["npcd.merchant.wares.n2"] = {
		"Guarda sullo scaffale in alto, quasi nessuno ci arriva: lì le cose migliori stanno in pace.",
		"Tutto ciò che vedi è passato per più mani di quante crederesti. Ed è ancora tutto qui.",
	},
	["npcd.merchant.wares.n3"] = {
		"Dipende da cosa cerchi: sopravvivenza, comodità o vanità. Per la prima basta poco, per le altre non basta mai.",
		"Non ti dico cosa comprare. Ti dico che le cose ben fatte si riconoscono: durano e non si vantano.",
	},
	["npcd.merchant.wares.gruff1"] = {
		"La merce è lì. Guardala, non fissarla.",
		"Più di quello che vedi non ho. E non mi scuso.",
	},
	["npcd.merchant.wares.jovial1"] = {
		"Tutto è in vendita! Tranne il mio buonumore: quello è un'esclusiva!",
		"Ho di tutto, e se non ho il tutto, ho un amico che ce l'ha!",
	},
	["npcd.merchant.wares.known1"] = {
		"Conosci il banco meglio di me. Fai pure, ti lascio in pace.",
		"Da cliente che torna a cliente che torna: le cose migliori finiscono presto.",
	},
	["npcd.merchant.haggle.n1"] = {
		"Discutere? Posso ascoltarti, e il prezzo ascolta con me. Poi resta com'è.",
		"Una trattativa è una danza: io faccio un passo indietro, tu uno avanti, e alla fine siamo di nuovo dove eravamo.",
	},
	["npcd.merchant.haggle.n2"] = {
		"Sconti non ne faccio, ma un sorriso te lo regalo. È tutto quello che posso tagliare.",
		"Posso solo offrirti un consiglio: compra solo ciò che userai. Il miglior sconto è non spendere per niente.",
	},
	["npcd.merchant.haggle.gruff1"] = {
		"Non si tratta. Fine della discussione.",
		"Se il prezzo non va, il torto non è mio. Cerca altrove.",
	},
	["npcd.merchant.haggle.jovial1"] = {
		"Trattare con me? Coraggio! Perderò, ma con stile!",
		"Dai, proviamo: tu offri una barzelletta, io ti dico no, e ridiamo tutti!",
	},
	["npcd.merchant.haggle.known1"] = {
		"Per un cliente di vecchia data farei volentieri uno strappo. Ma i conti, purtroppo, non vedono chi sei.",
		"Con te ci capiamo. Il prezzo resta, ma il tono con cui te lo dico è più gentile.",
	},
	["npcd.merchant.haggle.stranger1"] = {
		"Con chi non conosco il prezzo è quello che è. Torna quando ci saremo visti un po', e ne riparliamo.",
		"Prima si compra, poi ci si conosce, poi forse si discute. Di solito si finisce al primo punto.",
	},
	["npcd.merchant.news.n1"] = {
		"Le notizie viaggiano coi carri: arrivano tardi, ma arrivano. L'ultima: i prezzi non scendono.",
		"Chi compra parla, chi vende ascolta. Ultimamente parlano tutti di strade lunghe e tasche corte.",
	},
	["npcd.merchant.news.n2"] = {
		"Dicono che i viaggiatori abbiano ripreso a muoversi, più del solito. Per me è un bene, per le scorte meno.",
		"Una sola notizia vera: chi vende bene non lo racconta in giro.",
	},
	["npcd.merchant.news.gruff1"] = {
		"Questo è un banco, non una locanda. Comprare o andare.",
		"Notizie non ne ho. Ho merce.",
	},
	["npcd.merchant.news.jovial1"] = {
		"La notizia migliore? Sei qui! Il resto è noia e prezzi.",
		"Ho sentito che un cliente ha trattato per tre ore e poi ha comprato la cosa che voleva dall'inizio. Capita.",
	},
	["npcd.merchant.news.known1"] = {
		"Per te una voce sola: non fidarti di chi vende alla luce delle lanterne. Poi non dire che non ti ho avvisato.",
		"Con te posso dirlo: si vive meglio se ci si fida di pochi e ci si fa vedere da molti.",
	},
	["npcd.merchant.thanks.n1"] = {
		"Prego. E se cambi idea sul prezzo, io qui ci sono.",
		"Un grazie non pesa e non si rompe. Lo tengo volentieri.",
	},
	["npcd.merchant.thanks.n2"] = {
		"Figurati. I clienti gentili sono la mia merce preferita.",
		"Non c'è di che. Torna se ti serve altro.",
	},
	["npcd.merchant.thanks.gruff1"] = {
		"Sì. Il prossimo.",
		"Mh. Prego.",
	},
	["npcd.merchant.thanks.jovial1"] = {
		"Grazie a te! Ogni grazie vale un sorriso e due monete... Scherzo. Un sorriso.",
		"Troppo gentile! Continua così e divento io il tuo cliente.",
	},
	["npcd.merchant.bye.n1"] = {
		"Buona strada, e porta con te cose utili.",
		"Arrivederci. Le buone merci aspettano i buoni acquirenti.",
	},
	["npcd.merchant.bye.n2"] = {
		"Torna quando ti serve qualcosa. O anche se non ti serve.",
		"Alla prossima. Il banco resta qui, e anch'io.",
	},
	["npcd.merchant.bye.gruff1"] = {
		"Arrivederci. La porta è da quella parte.",
		"Vai pure. Il resto è affar mio.",
	},
	["npcd.merchant.bye.jovial1"] = {
		"A presto! Il banco ti saluta, io pure, il portafoglio non so.",
		"Arrivederci! E ricorda: ogni cosa che compri è un ricordo che pesa!",
	},
	["npcd.merchant.bye.known1"] = {
		"Alla prossima, {g:amico|amica}: i bei clienti si riconoscono dal ritorno.",
		"Sempre un piacere. Il banco è tuo, quando vuoi.",
	},

	---------------------------------------------------------------------------
	-- GUARDIA
	---------------------------------------------------------------------------
	["npcd.guard.open.n1"] = {
		"Buona giornata. Tieni le mani lontane dalle armi altrui e tutto andrà bene.",
		"Strade tranquille, oggi. Facciamo in modo che restino così.",
	},
	["npcd.guard.open.n2"] = {
		"Se hai bisogno di qualcosa, chiedi. Se cerchi guai, ti avviso: qui li trovano più in fretta che altrove.",
		"Sono qui per tenere in ordine le cose. Nel limite del possibile, anche le persone.",
	},
	["npcd.guard.open.n3"] = {
		"Un altro viaggiatore. Bene: significa che la strada è ancora aperta.",
		"Parla pure, ho tempo finché nessuno urla.",
	},
	["npcd.guard.open.known1"] = {
		"Ti riconosco. Per ora non hai dato fastidio a nessuno, e mi sta bene.",
		"Tu di nuovo. Buon segno: i guai non tornano a salutare.",
	},
	["npcd.guard.open.stranger1"] = {
		"Non ti conosco. Nessun problema, finché non ne porti.",
		"{g:Nuovo|Nuova}? Allora una regola sola: sii gentile e andremo d'accordo.",
	},
	["npcd.guard.open.terse1"] = {
		"Dimmi in fretta.",
		"Avanti, parla.",
	},
	["npcd.guard.open.terse2"] = {
		"Niente armi sguainate. Niente scherzi.",
		"Rispetta la linea e vai per la tua strada.",
	},
	["npcd.guard.open.formal1"] = {
		"Salute a voi, viandante. In questa terra la pace è un impegno di tutti, e io ne custodisco una parte.",
		"Il mio incarico è semplice: vegliare. Se avete domande, la veglia può attendere un istante.",
	},
	["npcd.guard.open.formal2"] = {
		"Che il vostro cammino sia sicuro. Il mio dovere è renderlo tale, per quanto posso.",
		"Un buon giorno a voi. L'ordine è fatto di piccole cose, e voi ne siete una buona.",
	},
	["npcd.guard.open.gruff1"] = {
		"Parla. Ma se è una lamentela, scrivila: ho le orecchie stanche.",
		"Che c'è ora? Spero niente di rotto.",
	},
	["npcd.guard.open.dughan1"] = {
		"Un posto tranquillo si mantiene con poche regole e molta pazienza. Io ho le prime, e cerco di avere anche la seconda.",
		"Se vedi qualcosa che non va, dillo a me o a chi veste come me. Fare la guardia è un lavoro di orecchie, più che di spade.",
	},
	["npcd.guard.danger.n1"] = {
		"Pericoli ce ne sono sempre. Il trucco è non cercarli e non fingere che non esistano.",
		"Fuori dalle mura la strada cambia in fretta: più si va lontano, più serve compagnia.",
	},
	["npcd.guard.danger.n2"] = {
		"Le pattuglie fanno il possibile, ma coprono poco. Il resto lo fa il buonsenso.",
		"Se senti un silenzio troppo lungo, rallenta. Se senti un rumore troppo vicino, fermati.",
	},
	["npcd.guard.danger.terse1"] = {
		"Fuori, attenzione. Dentro, calma.",
		"Strada lunga, mani pronte.",
	},
	["npcd.guard.danger.formal1"] = {
		"I rischi dipendono dal cammino e da chi lo percorre. Prudenza e ordine sono le migliori armature.",
		"Non dirò che il mondo è sicuro: sarebbe menzogna. Dirò che chi viaggia con giudizio arriva più spesso.",
	},
	["npcd.guard.danger.gruff1"] = {
		"Pericoli? Dappertutto. Quelli veri sono quelli di cui non ti accorgi.",
		"Non ti dirò dove: se te lo dico, ci vai.",
	},
	["npcd.guard.danger.known1"] = {
		"A te lo dico senza giri: tieni lo sguardo alto e le spalle coperte. Ti ho visto abbastanza da sapere che sai badare a te.",
		"Con te posso parlare chiaro: non ti dico di stare {g:attento|attenta}, perché lo sei già.",
	},
	["npcd.guard.danger.dughan1"] = {
		"Guai ne arrivano sempre da qualche parte. Il mio compito è che non arrivino da qui.",
		"Chi mi chiede dei pericoli di solito li ha già incontrati. A chi non li ha incontrati, auguro di restare così.",
	},
	["npcd.guard.directions.n1"] = {
		"Segui la strada principale e leggi le insegne: ogni mestiere ha la sua, e tutte sono più chiare di me.",
		"Se ti perdi, chiedi a chi ha le mani sporche di lavoro. Sa sempre dove va.",
	},
	["npcd.guard.directions.n2"] = {
		"Il sole sorge da una parte e tramonta dall'altra: è la mappa più vecchia e la più affidabile.",
		"Guarda dove va la gente: chi ha fretta va dove serve, chi passeggia dove piace.",
	},
	["npcd.guard.directions.terse1"] = {
		"Strada principale. Insegne. Fine.",
		"Segui la gente. Qualcuno sa dove va.",
	},
	["npcd.guard.directions.formal1"] = {
		"Vi suggerisco la via maestra: è la più sicura e la meglio segnalata. Per i dettagli, rivolgetevi a chi esercita il mestiere che cercate.",
		"Chi cerca la propria via cominci dalla più larga: da lì ogni sentiero è raggiungibile.",
	},
	["npcd.guard.directions.gruff1"] = {
		"Vedi la strada? Seguila. Non è difficile.",
		"Se mi chiedi una mappa, sei dal tizio sbagliato. Io ho una lancia.",
	},
	["npcd.guard.thanks.n1"] = {
		"Dovere. Stai in pace.",
		"Non c'è di che. Tieni la strada pulita.",
	},
	["npcd.guard.thanks.n2"] = {
		"Va bene così. Buon proseguimento.",
		"Ricevuto. Anche i guardiani apprezzano un grazie, ogni tanto.",
	},
	["npcd.guard.thanks.terse1"] = {
		"Capito. Vai.",
		"Sì. Avanti.",
	},
	["npcd.guard.thanks.formal1"] = {
		"Il vostro ringraziamento è accolto. Procedete in sicurezza.",
		"È stato un dovere e un piacere. Che la strada vi sia lieve.",
	},
	["npcd.guard.bye.n1"] = {
		"Buona strada. Non fare tardi.",
		"Stai {g:attento|attenta} là fuori. Qui, di solito, è tutto sotto controllo.",
	},
	["npcd.guard.bye.n2"] = {
		"Arrivederci. E ricorda: la legge protegge chi la rispetta.",
		"Vai in pace. Io resto qui, come sempre.",
	},
	["npcd.guard.bye.terse1"] = {
		"Vai.",
		"Avanti, circola.",
	},
	["npcd.guard.bye.formal1"] = {
		"Che il vostro cammino sia agevole.",
		"Arrivederci. La pace vi accompagni, e vi attenda al ritorno.",
	},
	["npcd.guard.bye.known1"] = {
		"Stai {g:attento|attenta}, {g:amico|amica}. Ti rivedremo, spero.",
		"Alla prossima. Una faccia che non porta guai è sempre benvenuta.",
	},
	["npcd.guard.bye.dughan1"] = {
		"Va' in pace. E se incontri qualcuno in difficoltà, aiutalo: non costa quasi niente.",
		"Arrivederci. Un giorno senza incidenti è un giorno ben speso.",
	},

	---------------------------------------------------------------------------
	-- MAESTRO DI VOLO
	---------------------------------------------------------------------------
	["npcd.flightmaster.open.n1"] = {
		"Dove si vola, oggi? Ho una bestia riposata e una rotta chiara.",
		"Tieni le cinghie strette e lo stomaco calmo: il resto lo fa il vento.",
	},
	["npcd.flightmaster.open.n2"] = {
		"{g:Pronto|Pronta} a partire? La bestia lo è sempre: sei tu {g:quello|quella} che deve decidere.",
		"Un volo è il modo più onesto di arrivare: non si può fingere di essere già lì.",
	},
	["npcd.flightmaster.open.n3"] = {
		"Guardare dall'alto cambia le proporzioni. Molte cose grandi diventano piccole, e viceversa.",
		"Hai un po' di cielo davanti. Usalo bene.",
	},
	["npcd.flightmaster.open.known1"] = {
		"Ti riconosco: sei {g:quello|quella} che non guarda mai giù. O che guarda sempre, ma finge di no.",
		"{g:Bentornato|Bentornata} in alto. La bestia ti ha già annusato e non protesta.",
	},
	["npcd.flightmaster.open.jovial1"] = {
		"Su, su! Il cielo è gratis, il biglietto un po' meno!",
		"Dalle parti dove vai si arriva in volo a testa alta. Se si atterra, a testa alta pure!",
	},
	["npcd.flightmaster.open.gruff1"] = {
		"Dove? Non ho il giorno intero, né il cielo.",
		"Sali, siediti, non toccare niente.",
	},
	["npcd.flightmaster.open.terse1"] = {
		"Rotta?",
		"Di' dove.",
	},
	["npcd.flightmaster.route.n1"] = {
		"Lungo abbastanza da pentirsi di non aver mangiato, breve abbastanza da non pentirsene troppo.",
		"Il paesaggio scorre sotto di te come una storia raccontata troppo in fretta. Goditela comunque.",
	},
	["npcd.flightmaster.route.n2"] = {
		"Si sale, si scivola, si scende. Le prime volte pare che la terra si muova: è il contrario.",
		"Se il vento è contrario, la bestia lo sa e lo aggira. Non preoccuparti del vento: preoccupati del cappello.",
	},
	["npcd.flightmaster.route.n3"] = {
		"La rotta la conosciamo bene. Ci sono tratti dove il mondo si vede tutto insieme, e basta un attimo per volerlo ricordare.",
		"Dall'alto le strade sembrano fili. Se vuoi, immagina di tenerne uno in mano.",
	},
	["npcd.flightmaster.route.gruff1"] = {
		"Viaggio? Rumoroso, ventoso, breve. Fine.",
		"Se vomiti, vomita giù.",
	},
	["npcd.flightmaster.route.jovial1"] = {
		"Il viaggio è tutto un su e giù, come la mia vita! Ma con più vista!",
		"Divertente! Alcuni gridano, altri pregano, altri ridono. Tu quale sarai?",
	},
	["npcd.flightmaster.thanks.n1"] = {
		"Di niente. Il vento fa il lavoro, io solo reggo le redini.",
		"Tu sii gentile col cielo, il cielo lo sarà con te.",
	},
	["npcd.flightmaster.thanks.n2"] = {
		"Prego. Un grazie in quota vale il doppio.",
		"Figurati. Chi ringrazia di solito atterra meglio.",
	},
	["npcd.flightmaster.bye.n1"] = {
		"Cieli sereni.",
		"Che il vento ti porti dove vuoi, e ti riporti quando vuoi.",
	},
	["npcd.flightmaster.bye.n2"] = {
		"Buon volo, e se atterri male, atterra con stile.",
		"Arrivederci. Tieni i piedi per terra, quando ci sei.",
	},
	["npcd.flightmaster.bye.jovial1"] = {
		"Arrivederci! Se cadi, ricordati che è una forma di volo!",
		"A presto! Il cielo è grande, c'è posto anche per i tuoi ritorni!",
	},
	["npcd.flightmaster.bye.gruff1"] = {
		"Vai. Il vento non aspetta.",
		"Arrivederci. Non lasciare niente sulla sella.",
	},

	---------------------------------------------------------------------------
	-- ADDESTRATORE
	---------------------------------------------------------------------------
	["npcd.trainer.open.n1"] = {
		"Se sei qui per imparare, siediti. Se sei qui per mostrare, aspetta il tuo turno.",
		"Ogni mestiere ha un inizio, e nessuno lo salta. Chi ci prova se ne accorge tardi.",
	},
	["npcd.trainer.open.n2"] = {
		"La pratica vince il talento quando il talento non pratica. Cominciamo?",
		"Dimmi cosa sai, e ti dirò cosa ti manca. Di solito sono due cose diverse.",
	},
	["npcd.trainer.open.n3"] = {
		"Imparare non è accumulare: è togliere ciò che ostacola. Mostrami come ti muovi.",
		"Il maestro indica, ma sei tu a camminare. Ricordalo ogni volta che inciampi.",
	},
	["npcd.trainer.open.known1"] = {
		"Rieccoti. Hai l'aria di chi ha esercitato, o almeno di chi ci ha pensato.",
		"Hai portato i progressi o le scuse? Entrambi sono benvenuti, ma solo i primi servono.",
	},
	["npcd.trainer.open.stranger1"] = {
		"Non ti conosco: bene, vuol dire che non ho cattive abitudini da correggere. Ancora.",
		"Mostrami tutto da capo. Il maestro che crede di sapere già non insegna.",
	},
	["npcd.trainer.open.gruff1"] = {
		"Poche chiacchiere. Fammi vedere un colpo, uno solo, fatto bene.",
		"Non voglio scuse. Voglio ripetizioni.",
	},
	["npcd.trainer.open.gruff2"] = {
		"La stanchezza è la parte facile. La parte difficile è tornare domani.",
		"Se pensi di aver finito, hai appena cominciato.",
	},
	["npcd.trainer.open.warm1"] = {
		"Vieni, non c'è fretta. Chi impara con calma impara per sempre.",
		"Qui sbagliare non è una colpa: è il modo in cui si comincia.",
	},
	["npcd.trainer.open.formal1"] = {
		"{g:Benvenuto|Benvenuta} nella disciplina. La conoscenza richiede rispetto e, soprattutto, regolarità.",
		"Ogni arte ha le sue regole. Il primo passo è rispettarle; il secondo, comprenderle.",
	},
	["npcd.trainer.advice.n1"] = {
		"Il mio consiglio è noioso: ripeti. Ciò che si ripete bene diventa tuo.",
		"Non confrontarti con chi sa più di te. Confrontati con chi eri ieri.",
	},
	["npcd.trainer.advice.n2"] = {
		"Ascolta il corpo, poi la testa, poi i maestri. In quest'ordine, se vuoi durare.",
		"Chi ha fretta di vincere impara tardi a perdere. Chi impara a perdere vince meno volte, ma meglio.",
	},
	["npcd.trainer.advice.n3"] = {
		"Scegli un solo difetto e correggilo. Poi un altro. Tutti insieme sono troppi.",
		"Quando non sai cosa fare, fai bene la cosa più piccola. Spesso basta.",
	},
	["npcd.trainer.advice.gruff1"] = {
		"Il consiglio? Meno parlare, più sudare.",
		"Se ti serve un consiglio, vuol dire che non hai ancora provato abbastanza.",
	},
	["npcd.trainer.advice.warm1"] = {
		"Sii gentile con te {g:stesso|stessa}, quanto sei {g:severo|severa} con il tuo lavoro. Funziona meglio di quanto sembri.",
		"Dormi, mangia, respira. Il resto è dettaglio.",
	},
	["npcd.trainer.advice.formal1"] = {
		"La maestria è un debito che si paga ogni giorno, con piccole somme. Non esistono scorciatoie onorevoli.",
		"Rispettate il metodo e il metodo rispetterà voi.",
	},
	["npcd.trainer.practice.n1"] = {
		"Un po' ogni giorno, con attenzione. Un'ora distratta vale meno di dieci minuti presenti.",
		"Scegli un gesto, fallo mille volte. La millesima volta capirai cosa c'era di storto nella prima.",
	},
	["npcd.trainer.practice.n2"] = {
		"Esercitati dove nessuno ti guarda: lì si sbaglia meglio, e si impara di più.",
		"Alterna fatica e riposo. Il muscolo cresce nel riposo, e la mente anche.",
	},
	["npcd.trainer.practice.n3"] = {
		"Con pazienza. Prima lento e giusto, poi veloce e giusto. Mai veloce e sbagliato.",
		"Impara a fermarti prima di imparare a correre. Chi si ferma bene parte bene.",
	},
	["npcd.trainer.practice.gruff1"] = {
		"Come? Facendolo. Altro non c'è.",
		"Non ho trucchi. Ho solo ripetizioni.",
	},
	["npcd.trainer.practice.warm1"] = {
		"Con gioia, se riesci. Ciò che si fa con gioia si ricorda meglio.",
		"Chiedi aiuto quando serve. Nessuno impara da solo, davvero.",
	},
	["npcd.trainer.thanks.n1"] = {
		"Non ringraziare me: ringrazia il tuo impegno.",
		"Prego. Il merito è di chi si presenta, ogni volta.",
	},
	["npcd.trainer.thanks.n2"] = {
		"Torna quando hai qualcosa da mostrarmi.",
		"Va bene così. Ora tocca a te.",
	},
	["npcd.trainer.thanks.gruff1"] = {
		"Mh. Allenati.",
		"Sì, sì. Ora vai a sudare.",
	},
	["npcd.trainer.bye.n1"] = {
		"Va' con calma, e con costanza.",
		"Arrivederci. La fatica di oggi è la facilità di domani.",
	},
	["npcd.trainer.bye.n2"] = {
		"Alla prossima lezione. Porta domande, non scuse.",
		"Buona strada. Ogni passo conta, anche quelli piccoli.",
	},
	["npcd.trainer.bye.gruff1"] = {
		"Vai. E allenati.",
		"Arrivederci. Sudore, non lamenti.",
	},
	["npcd.trainer.bye.known1"] = {
		"A presto. Ti aspetto con qualcosa di nuovo da correggere.",
		"Torna quando vuoi: ti riconosco dal modo in cui cammini, e ormai è un buon modo.",
	},
}, "base_dialogues")
