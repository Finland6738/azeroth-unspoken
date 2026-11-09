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
	["npcd.innkeeper.open.nick1"] = {
		"Ah, {nickname}! Il tuo angolo vicino al fuoco è libero, come se lo sapesse.",
		"{nickname}, di nuovo qui. Siedi, siedi: lo stufato non aspetta.",
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
	["npcd.merchant.open.nick1"] = {
		"{nickname}! Me lo sentivo che oggi saresti {g:passato|passata} di qua.",
		"Guarda chi si vede: {nickname}. Per te spolvero perfino lo scaffale buono.",
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
	["npcd.guard.open.nick1"] = {
		"{nickname}. Turno tranquillo, finora. Vediamo di tenerlo così.",
		"Salute, {nickname}. Niente da segnalare, ed è così che mi piace.",
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
	["npcd.flightmaster.open.nick1"] = {
		"{nickname}! La bestia ha alzato la testa appena hai preso il sentiero.",
		"Di nuovo in volo, {nickname}? Oggi i venti sono gentili.",
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
	["npcd.trainer.open.nick1"] = {
		"{nickname}. Vediamo se la strada ti ha insegnato qualcosa.",
		"Ecco {nickname}. Mostrami cosa hai conservato, e cosa hai perso.",
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
	-- N9 (#221): openers by the nickname, the title held in the town, a broken oath, the word of a newcomer
	["npcd.flightmaster.open.nick2"] = {
		"Il solito, {nickname}? Il cielo aspetta.",
		"{nickname}, di nuovo qui per un giro nel cielo. Di questo passo ti spunteranno le piume.",
	},
	["npcd.flightmaster.open.title1"] = {
		"Ormai mezza gente, laggiù, ti saluta quando decolli. Ricordati di rispondere.",
		"Ci lasci di nuovo? Tutto il posto mi chiederà dove sei {g:andato|andata}.",
	},
	["npcd.guard.open.nick2"] = {
		"{nickname}, eh? Passa pure. La strada è più tranquilla quando ci sei tu.",
		"Ah, {nickname}. C'è qualcosa che dovrei sapere prima del cambio della guardia?",
	},
	["npcd.guard.open.oath1"] = {
		"Tu. So cosa hai giurato, e come è andata a finire. Circola.",
		"Ricordo la tua faccia. E ricordo anche il giuramento.",
	},
	["npcd.guard.open.title1"] = {
		"Qui la gente parla bene di te. Io sto ancora decidendo, ma ascolto.",
		"A quanto pare qui hai degli amici. Non complicarmi il lavoro.",
	},
	["npcd.guard.open.word1"] = {
		"Ho sentito parlare di te. Non darmi motivo di sentirne ancora.",
		"Dunque sei tu. Ti tengo d'occhio.",
	},
	["npcd.innkeeper.open.nick2"] = {
		"Ecco {nickname}! Gli stivali vicino alla porta, e ti trovo qualcosa di caldo.",
		"{nickname}, hai l'aria di chi ha perso un'altra volta contro la strada. Vieni, siediti.",
	},
	["npcd.innkeeper.open.oath1"] = {
		"Una stanza c'è, se ti serve. Non aspettarti le chiacchiere di un tempo.",
		"Ancora tu. Siediti dove vuoi. L'accoglienza non è più quella di prima, e sai perché.",
	},
	["npcd.innkeeper.open.title1"] = {
		"Guarda chi c'è: il vanto del posto! Siediti prima che qualcuno ti chieda una storia.",
		"{g:Il nostro ospite|La nostra ospite} d'onore! Non montarti la testa: le scale scricchiolano ancora.",
	},
	["npcd.innkeeper.open.word1"] = {
		"Allora sei tu la persona di cui parlano tutti. Entra, entra: vediamo se le storie sono vere.",
		"Ho sentito parlare di te, sai. Tutto bene, finora.",
	},
	["npcd.merchant.open.nick2"] = {
		"{nickname}, il volto che preferisco da questa parte del banco. Cosa ti serve?",
		"{nickname}! Non dirlo agli altri, ma mi fa piacere quando passi.",
	},
	["npcd.merchant.open.title1"] = {
		"Qui tutti parlano di te. Un nome come il tuo fa bene agli affari. Entra.",
		"Ah, la persona di cui parlano tutti. Guarda pure quanto vuoi.",
	},
	["npcd.trainer.open.nick2"] = {
		"{nickname}. Dritta la schiena: le cattive abitudini si vedono da qui.",
		"Allora, {nickname}: cosa hai esercitato, e cosa hai evitato?",
	},
	-- N9 (#221): openers for a grudge (N1: attacked, killed, guest-right broken), a betrayal heard in the town, a return home
	["npcd.guard.open.betray1"] = {
		"Qui le voci corrono. Bada a te: ora ti teniamo d'occhio tutti.",
		"Allora è di te che parlano. Cammina con prudenza.",
	},
	["npcd.guard.open.foe1"] = {
		"Tieni le mani dove posso vederle. Ricordo l'ultima volta che si sono mosse.",
		"Tu. Di' quello che ti serve e circola.",
	},
	["npcd.innkeeper.open.home1"] = {
		"Ma guarda chi ci ha ridato la strada! Siediti, siediti. Il fuoco sentiva la tua mancanza.",
		"Eccoti. Cominciavo a pensare che avessi trovato una locanda migliore. Spero di no.",
	},
	["npcd.innkeeper.open.host1"] = {
		"Hai del fegato, a metterti sotto questo tetto. C'è un letto. Non c'è benvenuto.",
		"Tengo la porta aperta perché è il mio mestiere. Non per te.",
	},
	["npcd.merchant.open.foe1"] = {
		"Prima le monete sul banco. Poi parliamo. Poi te ne vai.",
		"Vendo a chiunque. Perfino a te. Non farmene pentire.",
	},
	["npcd.trainer.open.foe1"] = {
		"Ti insegnerò, perché ho giurato di insegnare a chiunque venga. Non perché tu lo meriti.",
		"La lezione resta. Quello che hai fatto con l'ultima, non l'ho dimenticato.",
	},
	["race.dwarf.npcd_flightmaster_bye.w08.001"] = {
		"Su e via, allora. Tornerai con i piedi sulla terra prima di accorgertene: lo so che ci conti.",
		"Tieniti forte e pensa alla pietra. Presto ne avrai di nuovo sotto i piedi.",
	},
	["race.dwarf.npcd_flightmaster_open.w08.001"] = {
		"Monta su. I Wildhammer volano per piacere, così mi dicono; gli altri nani che conosco volano per lo più a occhi chiusi.",
		"Su, in sella. Ho portato in volo un sacco di nani, e ognuno ha baciato la terra all'arrivo. Fai pure anche tu.",
	},
	["race.dwarf.npcd_flightmaster_route.w08.001"] = {
		"Abbastanza lungo da farti rimpiangere la terra, troppo breve per fartene venire paura. Tieni il peso basso in sella: hai il fisico giusto.",
		"Ventoso, alto, e finito prima di quanto ti piacerebbe ammettere. I nani stanno bene in sella; è guardare giù che non sopportano.",
	},
	["race.dwarf.npcd_guard_bye.w08.001"] = {
		"Mi raccomando: se in taverna nasce una discussione, per una volta lascia che la finisca qualcun altro.",
		"Là fuori sta' alla larga dalle liti da taverna: un nano che ne vince una paga comunque le panche.",
	},
	["race.dwarf.npcd_guard_danger.w08.001"] = {
		"Voi nani entrate nelle grotte che noi altri giriamo alla larga. Là fuori, in certe grotte c'è roba che esce a cercarti. Tienilo a mente.",
		"Un nano vuole sempre vedere cosa c'è sotto la collina. D'accordo, ma porta una luce e qualcuno con te, e torna su.",
	},
	["race.dwarf.npcd_guard_directions.w08.001"] = {
		"Tu troveresti l'uscita da una miniera con la lanterna spenta. Conta le svolte allo stesso modo e te la caverai.",
		"Fa' come i nani sottoterra: una mano sulla parete e ogni svolta a memoria. Le strade sono solo gallerie senza soffitto.",
		"Mi dicono che i nani non si perdono mai: fanno solo il giro lungo apposta. Fallo anche tu, e chiedi strada facendo.",
	},
	["race.dwarf.npcd_guard_open.w08.001"] = {
		"{g:Un nano|Una nana}. Bene. Voi non cominciate mai la rissa, anche se ve ne ho viste finire parecchie.",
		"Piedi saldi e lenti a sguainare: della tua gente non ho da lamentarmi. Che ti serve?",
		"Ah, gente di montagna. Parla pure: gli affari dei nani li ascolto più volentieri di tanti altri.",
	},
	["race.dwarf.npcd_innkeeper_bye.w08.001"] = {
		"Bada a te. Se per strada finisce la birra, sai dove stanno i barili.",
		"Torna con una storia che valga un giro: i nani ne hanno sempre una.",
		"Torna con calma: la panca si terrà l'ammaccatura che le hai lasciato.",
	},
	["race.dwarf.npcd_innkeeper_news.w08.001"] = {
		"Da chi scava arriva voce che la Explorers' League ha squadre in ogni angolo del mondo. Per la tua gente non c'è mai una settimana noiosa.",
		"I viaggiatori continuano a chiedere della Explorers' League: pare che non ci sia buca al mondo senza un nano sul fondo.",
		"Ai miei tavoli si torna a parlare della Explorers' League, che dissotterra rovine che nessun altro toccherebbe. A voi nani piace proprio una domanda sotto un sasso.",
	},
	["race.dwarf.npcd_innkeeper_open.w08.001"] = {
		"Prima la birra, immagino, e le domande dopo. Voi nani non sbagliate mai l'ordine.",
		"Siedi, siedi. Ti spillo la scura prima che tu la chieda: far chiedere un nano vuol dire farlo aspettare.",
	},
	["race.dwarf.npcd_innkeeper_open.w08.002"] = {
		"Occhio allo sgabello: l'ultimo che ho prestato a un nano mi è tornato con le gambe un dito più corte. Che ti porto?",
		"Entra e scrollati di dosso la strada. I nani se ne portano sempre dietro mezza, attaccata agli stivali.",
	},
	["race.dwarf.npcd_innkeeper_rest.w08.001"] = {
		"In fondo c'è una stanza col soffitto basso e i muri spessi. I nani ci dormono benissimo; gli altri la chiamano ripostiglio.",
		"Prendi la stanzetta col muro di pietra. Tiene il caldo e non scricchiola, e alla tua gente piace un muro che sta fermo.",
	},
	["race.dwarf.npcd_innkeeper_sit.w08.001"] = {
		"Bene, siediti. {g:Un nano|Una nana} che si riposa è una cosa che calma tutta la sala.",
		"Ecco, così va meglio. Niente zittisce una sala come qualcuno della tua gente che ha deciso di piantarsi lì.",
	},
	["race.dwarf.npcd_innkeeper_thanks.w08.001"] = {
		"Un grazie da {g:un nano|una nana}. Me lo incido sul muro: non capita spesso.",
		"Ah! Un nano non ringrazia alla leggera. Lo prendo e lo tengo vicino alla cassa.",
	},
	["race.dwarf.npcd_merchant_bye.w08.001"] = {
		"Buoni affari. La moneta dei nani suona sempre giusta sul banco.",
		"Arrivederci. Se quella fibbia cede, riportala e mi mangio il grembiule; ma non cederà, e lo sai.",
		"Attenzione al gradino. E se qualcuno chiede, di' che {g:un nano|una nana} non ha trovato niente da brontolare: vale più di un'insegna.",
	},
	["race.dwarf.npcd_merchant_news.w08.001"] = {
		"Il minerale è rincarato, a sentire i carrettieri. Tu lo saprai meglio di me: metà esce comunque dalle miniere dei nani.",
		"I prezzi del metallo salgono, mi dicono. Chiedi il perché a un nano e ti becchi un'ora di pozzi e gallerie, quindi non lo chiedo.",
	},
	["race.dwarf.npcd_merchant_open.w08.001"] = {
		"{g:Un nano|Una nana} al mio banco. Bene: guarderai le cuciture prima del prezzo, e a me un compratore così piace.",
		"Avanti, battilo, soppesalo, strizzaci gli occhi sopra. Lo so che un nano non compra niente prima di aver provato a romperlo.",
	},
	["race.dwarf.npcd_merchant_open.w08.002"] = {
		"Ah, stivali robusti e occhio fino! Entra: su questi scaffali non c'è niente che mi vergogni di mostrare {g:a un nano|a una nana}.",
		"Avanti, avanti. Quelli della montagna pagano il giusto e trattano duro, e a me va benissimo così.",
	},
	["race.dwarf.npcd_merchant_thanks.w08.001"] = {
		"Gentile da parte tua. Il grazie di un nano di solito arriva con una lamentela attaccata: oggi mi è andata bene.",
		"Senza brontolare? Allora quel grazie me lo prendo volentieri, e lo racconto in giro.",
	},
	["race.dwarf.npcd_merchant_wares.w08.001"] = {
		"Cuoio buono, acciaio onesto e borracce che non perdono. Niente che faccia storcere il naso a un nano, te lo prometto.",
		"Qui è tutto fatto per durare, che è l'unica cosa che un nano chiede. Il resto è solo colore.",
	},
	["race.dwarf.npcd_trainer_open.w08.001"] = {
		"Gente di montagna, eh? Bene: la testardaggine impara meglio dell'ingegno.",
		"Quando un nano comincia una cosa, non la molla più. Tienitelo stretto e andremo d'accordo.",
	},
	["race.human.npcd_flightmaster_bye.w08.001"] = {
		"Goditi il volo. Ti risparmia giorni di cammino, e gli umani non hanno mai giorni da buttare.",
		"Stringi la sella. Gli umani hanno sempre l'aria di chi conta le ore che ha appena risparmiato.",
	},
	["race.human.npcd_flightmaster_open.w08.001"] = {
		"Di fretta, immagino? Ogni umano che sale fin qui lo è. Monta: la bestia è più veloce di qualunque cavallo.",
		"Un posto dove andare, e presto, scommetto. Voi umani ce l'avete sempre. Su, in sella.",
	},
	["race.human.npcd_flightmaster_route.w08.001"] = {
		"Veloce, ventoso, e finito prima che tu abbia smesso di preoccupartene. Quasi tutti gli umani chiacchierano per tutto il viaggio; alla bestia non importa.",
		"Rapido, anche se un po' rumoroso. Gli umani di solito parlano dal decollo all'atterraggio: parla pure, lassù non ti sente nessuno.",
	},
	["race.human.npcd_guard_bye.w08.001"] = {
		"Vai pure. E dormi un po', da qualche parte: voi umani vi consumate.",
		"Buona strada. Riposati quando puoi: voi umani aspettate sempre di crollare.",
	},
	["race.human.npcd_guard_danger.w08.001"] = {
		"Il pericolo che vedo di più con la tua gente è la fretta. Rallenta, prima che sia la strada a fermarti per sempre.",
		"Gli umani si fanno male là fuori soprattutto per la fretta. Prenditi un'ora in più: costa meno di una tomba.",
	},
	["race.human.npcd_guard_directions.w08.001"] = {
		"Fa' come in qualunque paese umano: trova il tetto più alto e la porta più affollata, e il resto si sistema in mezzo.",
		"Cerca quel che sta più in alto e quel che profuma di pane fresco. La tua gente costruisce attorno a entrambi, e anche quasi tutti gli altri.",
		"Segna il tetto più alto che vedi, poi segui il naso fino alla cucina più vicina. Ogni strada mai tracciata dalla tua gente corre tra quei due punti.",
	},
	["race.human.npcd_guard_open.w08.001"] = {
		"Avanti, dimmi. Gli umani non fanno perdere tempo a una guardia con i convenevoli, e la cosa mi fa piacere.",
		"Parla chiaro, come fanno gli umani. Ho un turno lungo e poca pazienza, e mi sembri il tipo che capisce.",
		"Prego. Mi piace avere a che fare con gli umani: dritti al punto, e poi via.",
	},
	["race.human.npcd_innkeeper_bye.w08.001"] = {
		"Su, allora. E non spendere tutti i tuoi anni per strada: la tua gente non ne ha molti da buttare.",
		"Torna finché c'è tempo per sedersi: gli umani pensano sempre che ce ne sarà dell'altro più avanti.",
		"Vai, allora. Ma fermati ogni tanto: una vita umana passa in fretta, e la strada non ringrazia nessuno.",
	},
	["race.human.npcd_innkeeper_news.w08.001"] = {
		"Del re ancora nessuna notizia, a sentire i viaggiatori. Il reggente gli tiene caldo il trono, e ai miei tavoli si discute su chi comandi davvero.",
		"Si parla delle solite cose: il re è ancora disperso, e metà della tua gente si fida della corte mentre l'altra metà non si fida di nessuno.",
		"Chiunque passi ha un'opinione sul trono vuoto di Stormwind. Chiederei la tua, ma ne ho sentite abbastanza da riempirci un barile.",
	},
	["race.human.npcd_innkeeper_open.w08.001"] = {
		"Entra e siediti prima di crollare. Voi umani avete sempre l'aria di chi ha tre commissioni da fare e mezza giornata per farle.",
		"Siediti, mangia, poi riparti di corsa. Conosco la tua gente: non vi fermate mai a lungo, quindi facciamolo valere.",
	},
	["race.human.npcd_innkeeper_open.w08.002"] = {
		"{g:Un umano|Un'umana}. Pane e stufato, scommetto, e qualcosa da bere che non ti stenda.",
		"Fammi indovinare: qualcosa di caldo, una crosta di pane e un boccale di quella semplice. Voi umani non chiedete mai niente di più strano.",
	},
	["race.human.npcd_innkeeper_rest.w08.001"] = {
		"Un letto vero, lenzuola pulite, una porta col chiavistello. Dormi quanto ti serve, per una volta: gli umani si alzano sempre troppo presto.",
		"Prendi la stanza di sopra e non svegliarti alla prima campana. La tua gente non riposa mai quanto le servirebbe.",
	},
	["race.human.npcd_innkeeper_sit.w08.001"] = {
		"Siediti, ma siediti davvero, non stare in punta di sedia come se stessi per andartene. Gli umani lo fanno sempre.",
		"Bene. Appoggiati allo schienale, allunga le gambe. Voi umani vi sedete come se la sedia potessero richiamarla da un momento all'altro.",
	},
	["race.human.npcd_innkeeper_thanks.w08.001"] = {
		"Prego. Voi umani ringraziate tutti per tutto; ormai ci ho preso gusto.",
		"Non serve, ma lo accetto. La tua gente dice grazie come gli altri respirano.",
	},
	["race.human.npcd_merchant_bye.w08.001"] = {
		"Buoni affari. Parlane in giro: la tua gente chiacchiera più di chiunque conosca, ed è l'insegna migliore che potrei appendere.",
		"Arrivederci. Se qualcuno ti chiede dove l'hai presa, fai il mio nome a voce alta: gli umani spargono le voci più in fretta di un banditore.",
		"{g:Un umano contento|Un'umana contenta} lo racconta a dieci persone prima di cena, e io ci conto. Arrivederci!",
	},
	["race.human.npcd_merchant_news.w08.001"] = {
		"I carrettieri dicono che le strade di Westfall non sono mai state così piene di briganti. Brutte notizie per la tua gente, e per chi le vende qualcosa.",
		"La merce delle campagne umane è rincarata di nuovo: ladri mascherati sulle strade di Westfall, mi dicono. Nessuno ne è contento.",
	},
	["race.human.npcd_merchant_open.w08.001"] = {
		"Cerchi un affare, immagino. La tua gente sente l'odore di uno sconto attraverso un muro di pietra.",
		"Ah, {g:un umano|un'umana}: vorrai trattare. Avanti, ma ti avverto, con i tuoi ho fatto parecchia pratica.",
	},
	["race.human.npcd_merchant_open.w08.002"] = {
		"Hai fretta, eh? Come quasi tutti gli umani. Dimmi cosa ti serve e te lo incarto prima che cambi idea.",
		"Vai di corsa, si vede. Gli umani ci vanno sempre. Dimmi cosa vuoi e non ti trattengo.",
	},
	["race.human.npcd_merchant_thanks.w08.001"] = {
		"Grazie a te. Gli umani sono buoni clienti: decidono in fretta e tornano ancora più in fretta.",
		"E grazie a te. Il tuo popolo compra svelto, paga il giusto e ritorna: non potrei chiedere di meglio.",
	},
	["race.human.npcd_merchant_wares.w08.001"] = {
		"Un po' di tutto, che è quel che vuole la tua gente: qualcosa per la strada, qualcosa per la pentola, qualcosa per dopo.",
		"Corda, pane, filo, un coltello decente. Gli umani comprano un po' di tutto e mai proprio quel che cercavano entrando.",
	},
	["race.human.npcd_trainer_open.w08.001"] = {
		"Gli umani imparano in fretta; il difficile è non dimenticare. Facciamo in modo che questa resti.",
		"Imparerai presto, gli umani imparano sempre presto. Il mio compito è fare in modo che tu non lo perda altrettanto presto.",
	},
	["race.nightelf.npcd_flightmaster_bye.w08.001"] = {
		"Buon volo. La bestia sta tranquilla con i kaldorei: dev'essere la quiete che vi portate dietro.",
		"Via, allora. Non ho mai visto una cavalcatura agitarsi sotto un elfo della notte. Qualunque cosa facciate, continuate.",
	},
	["race.nightelf.npcd_flightmaster_open.w08.001"] = {
		"Su, nel cielo aperto. La tua gente non sembra mai così felice come quando non ha niente sopra la testa.",
		"Si sale? Ho notato che la tua gente respira meglio quando la terra si allontana.",
	},
	["race.nightelf.npcd_flightmaster_route.w08.001"] = {
		"Tranquillo, e abbastanza lungo per pensare. Gli elfi della notte di solito lo passano con gli occhi sulla terra di sotto, come se la ricordassero.",
		"Calmo, quasi sempre. Gli elfi della notte guardano il suolo scorrere per tutto il viaggio, come si rilegge una vecchia lettera.",
	},
	["race.nightelf.npcd_guard_bye.w08.001"] = {
		"Va' in pace. Che Elune vegli sulla tua strada: l'ho sentito dire dalla tua gente, e mi è sembrato un buon augurio.",
		"Lo sguardo di Elune sul tuo cammino: è l'augurio che si fa la tua gente, mi dicono. Te lo faccio anch'io.",
	},
	["race.nightelf.npcd_guard_danger.w08.001"] = {
		"Il tuo popolo è paziente, e il pericolo conta sull'impazienza. Aspetta prima di infilarti in qualcosa, e ne uscirai sulle tue gambe.",
		"I guai là fuori amano la fretta. Gli elfi della notte raramente gliela concedono, ed è già mezza battaglia: continua così.",
	},
	["race.nightelf.npcd_guard_directions.w08.001"] = {
		"Voi elfi della notte vi orientate con cose che noi altri non notiamo nemmeno. Fidati di quelle: funzioneranno meglio di qualunque svolta io possa indicarti.",
		"Potrei elencarti ogni angolo, ma ne dimenticheresti metà. Gli elfi della notte ricordano una strada percorsa una volta: percorrila, ed è tua.",
		"Fa' come la tua gente nei boschi: guarda in alto, scegli qualcosa di alto e non perderlo di vista. Tornerai al posto giusto.",
	},
	["race.nightelf.npcd_guard_open.w08.001"] = {
		"Calma, non ti ho sentito arrivare. Voi elfi dovreste portare dei campanelli, per pietà di noi di guardia. Che c'è?",
		"Mi hai quasi fatto mettere mano all'arma, da quanto poco rumore fai. Di cosa hai bisogno?",
		"Non fai un fruscio, quando cammini. Buon per te, meno per i nervi di chi sta di guardia. Parla.",
	},
	["race.nightelf.npcd_innkeeper_bye.w08.001"] = {
		"Arrivederci. Mi accorgerò che sei {g:andato|andata} via solo alzando gli occhi e trovando la sedia vuota, come sempre con gli elfi della notte.",
		"Buoni sentieri. Gli elfi della notte non se ne vanno da una stanza: ne svaniscono. Mi mancherà la quiete.",
		"Va', piano come sei {g:arrivato|arrivata}. Torna quando la strada ti peserà, e l'angolo sarà pronto.",
	},
	["race.nightelf.npcd_innkeeper_news.w08.001"] = {
		"Si dice che le Sentinelle combattano ancora i taglialegna dell'Orda ad Ashenvale. Mi spiace essere io a dirlo a {g:un elfo|un'elfa} della notte.",
		"Notizie dalla strada: ad Ashenvale ancora niente pace, scuri dell'Orda sugli alberi e Sentinelle ad aspettarle. Una notizia amara per la tua gente.",
		"Si torna a parlare di Ashenvale: boscaioli dell'Orda, frecce delle Sentinelle, e nessuno che cede. Immagino tu l'abbia già sentito.",
	},
	["race.nightelf.npcd_innkeeper_open.w08.001"] = {
		"Sei {g:entrato|entrata} così piano che per poco non versavo da bere alla sedia vuota. Siediti dove è tranquillo.",
		"Eccoti. Voi elfi della notte entrate senza un rumore e ogni volta mi fa prendere un colpo. Prendi l'angolo tranquillo.",
	},
	["race.nightelf.npcd_innkeeper_open.w08.002"] = {
		"Ti metto vicino alla finestra? Gli elfi della notte vogliono sempre vedere il cielo, ovunque siedano.",
		"Posto alla finestra, immagino. Non ho mai visto un elfo della notte sedersi con le spalle all'aria aperta.",
	},
	["race.nightelf.npcd_innkeeper_rest.w08.001"] = {
		"La stanza sotto il tetto ha una finestra che si apre tutta. Voi elfi non dormite mai bene al chiuso.",
		"Ti do la stanza con la finestra grande. Ho imparato che gli elfi della notte riposano meglio con un po' d'aria aperta.",
	},
	["race.nightelf.npcd_innkeeper_sit.w08.001"] = {
		"Resta quanto vuoi. Sarai l'ospite più immobile che ho: non ho mai visto un elfo della notte agitarsi.",
		"Bene, resta. Un elfo della notte sa star seduto per ore senza muovere un dito; gli altri ospiti avrebbero da imparare.",
	},
	["race.nightelf.npcd_innkeeper_thanks.w08.001"] = {
		"Di niente. Voi elfi ringraziate come se volesse ricordarselo per un secolo. E magari lo farai davvero.",
		"Nessun disturbo. Con un elfo della notte ho sempre l'impressione che un grazie venga scritto da qualche parte e conservato.",
	},
	["race.nightelf.npcd_merchant_bye.w08.001"] = {
		"Arrivederci. Ti durerà un bel pezzo, anche se immagino che per te un bel pezzo voglia dire un'altra cosa.",
		"È fatto per durare anni; per la tua gente, immagino, è un attimo. Buon cammino.",
		"Buoni sentieri. Ti prometterei che dura una vita, ma con un elfo della notte, la vita di chi?",
	},
	["race.nightelf.npcd_merchant_news.w08.001"] = {
		"Chi arriva dall'isola dice che le barche per il continente sono piene. La tua gente si muove, a giudicare dal mio banco.",
		"Mai visti tanti elfi della notte per le strade. Qualcosa sta tirando la tua gente fuori dalla foresta, e agli affari fa bene.",
	},
	["race.nightelf.npcd_merchant_open.w08.001"] = {
		"Fai con calma. Il tuo popolo di tempo ne ha più di tanti altri, e preferisco che guardi per bene.",
		"Nessuna fretta. So che gli elfi della notte guardano a lungo prima di decidere; i miei scaffali sanno aspettare.",
	},
	["race.nightelf.npcd_merchant_open.w08.002"] = {
		"Qualcosa di fatto bene, immagino. La tua gente guarda il lavoro scadente come se le facesse male.",
		"Ti faccio vedere prima i pezzi buoni. Un elfo della notte riconosce una cucitura fatta male dall'altra parte della stanza, e ci risparmiamo un sospiro.",
	},
	["race.nightelf.npcd_merchant_thanks.w08.001"] = {
		"Prego. Il tuo popolo è sempre così cortese che comincio a badare alle mie maniere.",
		"No, grazie a te. Ogni volta che un elfo della notte mi ringrazia mi raddrizzo un po', non ci posso fare niente.",
	},
	["race.nightelf.npcd_merchant_wares.w08.001"] = {
		"Roba leggera, roba silenziosa. Ho imparato che gli elfi della notte non comprano niente che tintinni.",
		"Cuoio morbido, stoffa buona, niente che sbatacchi. Gli elfi della notte girano al largo da tutto ciò che fa rumore, e quella roba la tengo dietro.",
	},
	["race.nightelf.npcd_trainer_open.w08.001"] = {
		"Gli elfi della notte imparano piano e non dimenticano niente. Lo preferisco al veloce e distratto.",
		"Con un elfo della notte non ho mai fretta. Una lezione entra piano, come l'acqua nelle vecchie radici, ma poi resta.",
	},
	["race.tauren.npcd_flightmaster_bye.w08.001"] = {
		"Ecco fatto. La bestia ha brontolato per il peso, ma ti porterà: ha portato di peggio.",
		"Tieniti forte e non badare ai lamenti. Sotto un tauren sbuffa sempre, poi vola dritta e sicura.",
	},
	["race.tauren.npcd_flightmaster_open.w08.001"] = {
		"Zoccoli nelle cinghie, corna basse, e piegati con la bestia. È tutto quello che serve sapere a un tauren.",
		"Sali su, piano. Tieni le corna basse al decollo: le ali non amano compagnia.",
	},
	["race.tauren.npcd_flightmaster_route.w08.001"] = {
		"Lungo e tranquillo. Di solito i tauren non dicono niente per tutto il viaggio, e scendono con l'aria di chi s'è riposato.",
		"Silenzioso, per lo più. Voi tauren guardate la terra scorrere senza una parola, e scendete più calmi di quando siete saliti.",
	},
	["race.tauren.npcd_guard_bye.w08.001"] = {
		"Cammina in pace. Se sulla tua strada ci sono guai, mi fanno pena loro.",
		"Chi cerca rissa con un tauren per strada si merita quello che trova. Buon viaggio.",
	},
	["race.tauren.npcd_guard_danger.w08.001"] = {
		"Niente di piccolo darà fastidio a chi ha la tua stazza. Le cose grosse ti noteranno per prime: tieni gli occhi alti.",
		"Le bestiole ti lasceranno passare. Quelle che non si spostano sono quelle di cui preoccuparsi: tienile d'occhio.",
	},
	["race.tauren.npcd_guard_directions.w08.001"] = {
		"Il tuo popolo ha attraversato le pianure senza strade. Leggi queste vie allo stesso modo: il terreno è consumato dove passa la gente.",
		"Seguine le tracce come faresti con una mandria. Dove la terra è battuta, la gente cammina; dove è più dura, la gente si raduna.",
		"Cerca il fumo e ascolta le voci, come quando si cerca un accampamento. Meglio indicarti questo che darti svolte che dimenticheresti.",
	},
	["race.tauren.npcd_guard_open.w08.001"] = {
		"Pace a te. Non capita spesso di dover alzare gli occhi per guardare chi interrogo.",
		"Ah, un tauren. Siete i più facili da vedere e i meno faticosi da sorvegliare. Che c'è?",
		"Salute. Con i tauren raramente devo alzare la voce. Parla, ti ascolto.",
	},
	["race.tauren.npcd_innkeeper_bye.w08.001"] = {
		"Torna quando vuoi. La panca grande ti aspetterà: tanto nessun altro ci sta.",
		"Va' piano, e torna. Pochi ospiti lasciano una stanza tranquilla come la lascia un tauren.",
		"Abbassa la testa uscendo: occhio alle corna sulla porta, e alla strada dopo.",
	},
	["race.tauren.npcd_innkeeper_news.w08.001"] = {
		"Quelli delle carovane dicono che i centauri razziano ancora le pianure. So che il tuo popolo combatte quella guerra da tanto tempo.",
		"Voci dalla strada: i centauri non hanno ancora imparato a lasciare in pace i tauren. Certe cose non cambiano, eh?",
		"Ogni mandriano che passa ha una storia di razzie dei centauri. Immagino che la tua gente le abbia sentite tutte, e qualcuna l'abbia vissuta.",
	},
	["race.tauren.npcd_innkeeper_open.w08.001"] = {
		"Entra, entra. In fondo c'è una panca fatta per la tua stazza: la tengo libera per i tauren.",
		"Accomodati. Prendi la panca grande vicino al muro: è l'unica di cui mi fiderei sotto un tauren.",
	},
	["race.tauren.npcd_innkeeper_open.w08.002"] = {
		"Un tauren alla mia porta. Tutta la sala si calma un po' quando entra qualcuno della tua gente. Siediti, e dimmi cosa ti serve.",
		"Vieni a sederti. La gente abbassa la voce quando entra un tauren; non ho mai capito perché, ma mi fa comodo.",
	},
	["race.tauren.npcd_innkeeper_rest.w08.001"] = {
		"Ti accosto due pagliericci: per un tauren uno non è mai bastato.",
		"Nella stanza grande c'è una stuoia per terra, larga quanto vuoi, e nessun letto che ti si spezzi sotto.",
	},
	["race.tauren.npcd_innkeeper_sit.w08.001"] = {
		"Siediti quanto vuoi. I tauren non hanno mai fretta, e la sala ci guadagna.",
		"Bene, sistemati. Quando un tauren si siede, gli altri ospiti si ricordano che non c'è fretta.",
	},
	["race.tauren.npcd_innkeeper_thanks.w08.001"] = {
		"Un grazie da un tauren, con quella voce. Sembra una benedizione anche quando non lo è.",
		"Il tuo grazie esce così profondo e lento che mi viene quasi voglia di inchinarmi. Su, non è niente.",
	},
	["race.tauren.npcd_merchant_bye.w08.001"] = {
		"Usalo finché non si rompe: i tauren non sprecano niente, e a me piace vendere a chi non spreca.",
		"Arrivederci. So che lo consumerai fino all'ultimo filo prima di pensare a comprarne un altro.",
		"Un tauren compra una volta e tiene la roba per anni: male per gli affari, bene per la merce. Arrivederci.",
	},
	["race.tauren.npcd_merchant_news.w08.001"] = {
		"Tutti vogliono cuoio di kodo, e nessuno ha il coraggio di chiedere a un tauren dove trovarlo. Buffo, no?",
		"Il prezzo delle pelli? In salita, come sempre. Metà dei clienti cerca cuoio di kodo, e ammutoliscono tutti appena entra un tauren.",
	},
	["race.tauren.npcd_merchant_open.w08.001"] = {
		"I tauren commerciano come cacciano: con pazienza, prendendo solo quel che serve. Lo rispetto. Guarda pure.",
		"Prenditi il tuo tempo. Ho già venduto ai tauren: guardate una cosa a lungo, poi la comprate una volta sola, e bene.",
	},
	["race.tauren.npcd_merchant_open.w08.002"] = {
		"Occhio agli scaffali quando ti giri! L'ultimo tauren entrato qui s'è dovuto pagare tutto quello che le corna avevano buttato giù.",
		"Attenzione con le corna vicino alle lanterne appese! Chi rompe paga, e a prezzo pieno.",
	},
	["race.tauren.npcd_merchant_thanks.w08.001"] = {
		"Che la Madre Terra sorrida anche a te, come direbbe la tua gente. L'ho detto bene?",
		"Grazie a te. Ti risponderei alla maniera dei tauren, se la sapessi; la Madre Terra protegga la tua strada, può andare?",
	},
	["race.tauren.npcd_merchant_wares.w08.001"] = {
		"Borse buone con cinghie larghe, corde che tengono, otri grandi abbastanza per la tua stazza. Guarda pure.",
		"Zaini robusti, corde lunghe, un otre che non si svuota prima di te. Roba fatta per la strada di un tauren, per lo più.",
	},
	["race.tauren.npcd_trainer_open.w08.001"] = {
		"Di forza ne hai in abbondanza. Io ti insegnerò dove metterla.",
		"Un tauren. Il peso c'è già; il mio lavoro è dargli una direzione. Cominciamo.",
	},
	["race.gnome.npcd_flightmaster_bye.w09.001"] = {
		"Allaccia le cinghie due volte: con quel peso piuma basta una folata a portarti via. Ecco. Si parte.",
		"Tieniti al pomo, non alle piume. L'ultimo gnomo che ho mandato su ha passato tutto il viaggio a studiare le giunture delle ali.",
	},
	["race.gnome.npcd_flightmaster_open.w09.001"] = {
		"Su, ti do una spinta. C'è più sella che gnomo, quindi siediti al centro.",
		"In sella. La bestia quasi non si accorge del peso di uno gnomo, e per te vuol dire un viaggio liscio.",
	},
	["race.gnome.npcd_flightmaster_route.w09.001"] = {
		"Non lungo. Abbastanza per contare i rivetti delle briglie, cosa che a quanto pare fanno tutti gli gnomi.",
		"Abbastanza tranquillo. Gli gnomi di solito lo passano a capire come renderlo più veloce. Dimmelo, se ci riesci.",
	},
	["race.gnome.npcd_guard_bye.w09.001"] = {
		"Va' con prudenza. Là fuori la gente piccola passa inosservata: a volte è una fortuna, a volte no.",
		"Vai pure. Se qualcosa di grosso ti viene addosso, mi dicono che gli gnomi sono bravissimi a non trovarsi dove atterra.",
	},
	["race.gnome.npcd_guard_danger.w09.001"] = {
		"I trogg. Dove c'è una grotta c'è il rischio di trovarli, e alla tua gente hanno già fatto abbastanza male.",
		"Là fuori, essere piccoli vuol dire che certe bestie ti prendono per uno spuntino. Fagli capire subito che non è così.",
	},
	["race.gnome.npcd_guard_directions.w09.001"] = {
		"Tieniti al bordo della strada, che la gente grossa non ti calpesti, e segui la via principale. Se la perdi, chiedi ancora.",
		"Ti farei una mappa, ma finiresti per migliorarla. Strada principale, poi segui il fiuto: voi gnomi fate sempre così.",
		"Te la caveresti in un labirinto a ingranaggi: qualche strada non ti darà problemi. Punta all'angolo più affollato e chiedi lì.",
	},
	["race.gnome.npcd_guard_open.w09.001"] = {
		"Eh? Ah, {g:uno gnomo|una gnoma}. Scusa, guardavo sopra la tua testa. Che c'è?",
		"La perdita di Gnomeregan è una brutta storia. Se posso fare qualcosa per qualcuno della sua gente, dimmelo.",
		"Gli gnomi: svelti, piccoli, educati. Se tutti i visitatori fossero come voi non avrei niente da fare. Parla pure.",
	},
	["race.gnome.npcd_innkeeper_bye.w09.001"] = {
		"Vai pure. Attenzione agli stivaloni per strada: non tutti guardano dove mettono i piedi.",
		"Buona strada. E quando Gnomeregan tornerà vostra, tienimi una stanza laggiù.",
		"Arrivederci! Torna con un'altra idea: l'ultimo gnomo me ne ha lasciate tre, e non ne ho ancora capita una.",
	},
	["race.gnome.npcd_innkeeper_news.w09.001"] = {
		"Da Dun Morogh dicono che i trogg continuano a sciamare dalle parti di Gnomeregan. Mi dispiace: so che preferiresti sentire qualcosa di allegro.",
		"Si dice che Mekkatorque non abbia smesso un solo giorno di progettare la riconquista della vostra città. Voi gnomi non vi arrendete mai, eh?",
		"A Ironforge si torna a parlare di Thermaplugg, ancora rintanato laggiù con le sue macchine. Un traditore in un palazzo di latta, lo chiamano.",
	},
	["race.gnome.npcd_innkeeper_open.w09.001"] = {
		"Chi è? Ah, laggiù! Entra. Tengo una cassetta accanto al bancone per gli gnomi: sali e parliamo guardandoci negli occhi.",
		"Avanti, avanti. C'è uno sgabello col gradino, fatto per la tua gente. Non lasciarlo prendere agli altri.",
	},
	["race.gnome.npcd_innkeeper_open.w09.002"] = {
		"{g:Uno gnomo|Una gnoma}! Siediti vicino al fuoco e chiacchiera: la tua gente porta sempre la conversazione migliore oltre quella porta.",
		"Entra pure. Ti taglio il pane piccolo: ho imparato che gli gnomi mangiano come passerotti e cinguettano come uno stormo intero.",
	},
	["race.gnome.npcd_innkeeper_rest.w09.001"] = {
		"Ti do la stanzetta sotto le scale. Non ridere: per uno gnomo è praticamente un salone.",
		"I letti sono tutti fatti per gente più grossa. Avrai tanto spazio da poter dormire di traverso senza arrivare al bordo.",
	},
	["race.gnome.npcd_innkeeper_sit.w09.001"] = {
		"Siediti, siediti. I piedi non arriveranno a terra, ma non importa a nessuno: metà degli gnomi che conosco li fanno dondolare apposta.",
		"Fa' come a casa tua. Gli gnomi trovano sempre l'angolo più accogliente della sala: vediamo quale sceglierai tu.",
	},
	["race.gnome.npcd_innkeeper_thanks.w09.001"] = {
		"Figurati! La tua gente dice grazie più di tutti i miei clienti, e due volte più in fretta.",
		"Nessun disturbo. Il grazie di uno gnomo arriva sempre con un consiglio sul camino. Ci penserò.",
	},
	["race.gnome.npcd_merchant_bye.w09.001"] = {
		"Buoni affari. Se lo migliori, riportamelo: magari te lo ricompro io.",
		"Arrivederci. Occhio al gradino: per qualcuno è più alto di quanto sembra.",
		"Stammi bene. Gli gnomi escono sempre dalla mia bottega con più domande che pacchi. Ci ho preso gusto.",
	},
	["race.gnome.npcd_merchant_news.w09.001"] = {
		"Rame e stagno costano cari di questi tempi: a Tinker Town gli gnomi comprano tutto quello che arriva. La tua gente fa lavorare le fonderie.",
		"Dicono che il Deeprun Tram viaggi sempre pieno. Metà dei passeggeri sono gnomi diretti a Stormwind per una commissione o l'altra.",
	},
	["race.gnome.npcd_merchant_open.w09.001"] = {
		"Vedo spuntare la cima di una testa dal banco: dev'essere uno gnomo. Cosa ti do?",
		"Monta pure sulla cassa, se vuoi. Il mio banco l'hanno fatto per gente più alta, ma i tuoi soldi valgono uguale.",
	},
	["race.gnome.npcd_merchant_open.w09.002"] = {
		"Ah, {g:uno gnomo|una gnoma}. Chiederai come funziona ogni cosa prima di chiedere quanto costa. Fai pure, le domande mi piacciono.",
		"Agli gnomi piace vedere cosa c'è dentro le cose, lo so. Guarda quanto vuoi: se lo smonti, l'hai comprato.",
	},
	["race.gnome.npcd_merchant_thanks.w09.001"] = {
		"Grazie a te! Gli gnomi sono i clienti più educati che servo, e la concorrenza è agguerrita.",
		"Prego. Torna a dirmi come ha retto: la tua gente fa sempre rapporto, e nei dettagli.",
	},
	["race.gnome.npcd_merchant_wares.w09.001"] = {
		"Le taglie piccole sono in quell'angolo: guanti e stivali su misura per gli gnomi. Li tengo perché nessun altro si prende il disturbo.",
		"Fil di ferro, molle, minuterie d'ottone e mantelli caldi per le strade di montagna. Quasi tutto lo comprano gli gnomi.",
	},
	["race.gnome.npcd_trainer_open.w09.001"] = {
		"{g:Uno gnomo|Una gnoma}. Capirai l'idea prima che io abbia finito di spiegarla: il difficile sarà la pratica.",
		"Statura piccola, mente svelta e una testa piena di domande. Bene: falle tutte, ma tra un esercizio e l'altro.",
	},
	["race.orc.npcd_flightmaster_bye.w09.001"] = {
		"Via che si va. Non è un lupo, ma corre sull'aria, e non ti morde se ti aggrappi.",
		"Tieniti e lascia lavorare la bestia. Gli orchi vogliono sempre guidare; questa si guida da sé.",
	},
	["race.orc.npcd_flightmaster_open.w09.001"] = {
		"Monta. La bestia porta volentieri gli orchi: riconosce una presa salda quando la sente.",
		"Su. E rilassa la mascella: sento digrignare quelle zanne fin da qui.",
	},
	["race.orc.npcd_flightmaster_route.w09.001"] = {
		"Lungo, ma diritto. Vedrai la terra stesa come una mappa di guerra: mi dicono che agli orchi quella parte piace.",
		"Non breve. Gli orchi ne passano gran parte a fissare la terra come se dovesse loro qualcosa. Non deve niente, ho controllato.",
	},
	["race.orc.npcd_guard_bye.w09.001"] = {
		"Vai. Se devi combattere, combatti pulito, e riportati indietro l'onore intatto.",
		"Forza al tuo braccio. Ti augurerei anche prudenza, ma gli orchi non se la portano mai dietro.",
	},
	["race.orc.npcd_guard_danger.w09.001"] = {
		"Per un orco il pericolo non è la battaglia, è quella da cui l'orgoglio non ti lascia andare via. Sceglile.",
		"Guardati da chiunque porti il segno della Burning Blade. Ti sorrideranno come fratelli, finché smettono.",
	},
	["race.orc.npcd_guard_directions.w09.001"] = {
		"Lo so, preferiresti camminare finché lo trovi piuttosto che chiedere due volte. Allora ascolta una volta sola: sempre dritto, e cerca la folla.",
		"Segui l'odore della forgia. Ogni orco che ho mandato da quella parte ci ha trovato quel che cercava.",
		"Indicazioni semplici per gente schietta: la strada principale, poi la prima porta con gente davanti. Ce la farai.",
	},
	["race.orc.npcd_guard_open.w09.001"] = {
		"{g:Un orco|Un'orchessa}. Bene: dirai cosa ti serve senza incartarlo in belle parole. Avanti.",
		"Hai l'aria di chi il Capoguerra metterebbe di guardia senza pensarci. Qual è il problema?",
		"Zanne, schiena dritta e sguardo fermo. Quando mi si avvicina un orco non mi preoccupo granché. Che c'è?",
	},
	["race.orc.npcd_innkeeper_bye.w09.001"] = {
		"Va' con onore, come dice la tua gente. E torna con la fame.",
		"Buona strada. Lascia un po' di battaglie anche agli altri: gli orchi non lo fanno mai.",
		"Vai, allora. Ti tengo calda la carne: gli orchi non stanno mai lontani a lungo da un buono spiedo.",
	},
	["race.orc.npcd_innkeeper_news.w09.001"] = {
		"Si torna a parlare della Burning Blade: cultisti nelle grotte che evocano cose da lasciare sepolte. Brutta notizia per ogni orco che si è lasciato alle spalle la vecchia maledizione.",
		"Notizie dalle montagne: quelli di Rend Blackhand a Blackrock Spire continuano a chiamarsi la vera Orda. Ai miei tavoli non ci crede nessuno.",
		"Chi arriva dall'Alterac racconta che i Frostwolf difendono ancora la loro valle contro i nani Stormpike. Gente dura, i Frostwolf.",
	},
	["race.orc.npcd_innkeeper_open.w09.001"] = {
		"Bevanda forte e risposta diretta, immagino. Gli orchi non chiedono mai altro. Siediti.",
		"Entra e scrollati di dosso la polvere della strada. C'è carne allo spiedo e uno sgabello che ha già retto degli orchi.",
	},
	["race.orc.npcd_innkeeper_open.w09.002"] = {
		"Occhio alle zanne col gancio della lanterna. Ogni orco che ho servito l'ha suonato come un gong almeno una volta.",
		"{g:Un orco|Un'orchessa} che entra senza prendere a calci la porta: mi piaci già. Siediti.",
	},
	["race.orc.npcd_innkeeper_rest.w09.001"] = {
		"Prendi la stanza col pavimento duro e la coperta pesante. Gli orchi non dormono mai bene sul morbido.",
		"C'è un giaciglio contro il muro in fondo, vicino al caldo. Tieni l'arma accanto, se ti serve: con gli orchi ci ho fatto l'abitudine.",
	},
	["race.orc.npcd_innkeeper_sit.w09.001"] = {
		"Siediti e riposa le spalle. Gli orchi ci portano sopra tutto, anche quando non c'è niente da portare.",
		"Bene. Un orco seduto vicino al focolare vuol dire una sala tranquilla: nessuno cerca guai mentre guardi tu.",
	},
	["race.orc.npcd_innkeeper_thanks.w09.001"] = {
		"Un grazie da orco: breve, ruvido, e sincero. Lo preferisco a qualsiasi discorso.",
		"Non serve. Hai pagato e non hai rotto niente: dalla tua gente è un ringraziamento più che sufficiente.",
	},
	["race.orc.npcd_merchant_bye.w09.001"] = {
		"Buoni affari. Niente trattative, niente lamentele, soldi sul banco: con gli orchi la giornata è corta e piacevole.",
		"Arrivederci. Quella roba incassa colpi e ne chiede ancora, proprio come chi se la porta dietro.",
		"Stammi bene. E se si rompe, dimmelo in faccia: so che gli orchi preferiscono così.",
	},
	["race.orc.npcd_merchant_news.w09.001"] = {
		"Ai Crossroads i commerci vanno forte, dicono i carrettieri. Ogni carovana vuole uno o due orchi di scorta.",
		"Le pelli di lupo si vendono bene. Non che un orco ne venderebbe mai una, lo so; dico e basta.",
	},
	["race.orc.npcd_merchant_open.w09.001"] = {
		"Gli orchi mi dicono cosa vogliono e pagano quel che costa. Magari facessero tutti così. Cosa ti serve?",
		"Dritti al punto, allora: la tua gente non sta a curiosare. Dimmi cosa e te lo porto.",
	},
	["race.orc.npcd_merchant_open.w09.002"] = {
		"Piano col banco, è vecchio. La tua gente si appoggia alle cose come se volesse tenersele.",
		"Guarda pure. Gli orchi vogliono sempre sentire quanto pesa una cosa: basta che la facciate roteare fuori, non tra i miei scaffali.",
	},
	["race.orc.npcd_merchant_thanks.w09.001"] = {
		"Un grazie da un orco. Più raro dell'acciaio buono, e vale quasi altrettanto.",
		"Prego. La tua gente lo dice una volta e ci crede: non ti chiederò di ripeterlo.",
	},
	["race.orc.npcd_merchant_wares.w09.001"] = {
		"Cinghie pesanti, cuoio spesso, grasso per qualunque cosa tu faccia roteare. Roba fatta per spalle da orco, soprattutto.",
		"Roba semplice che dura: cuoio robusto, corda, otri che non si crepano col caldo. A un orco non ho mai venduto niente con le nappe.",
	},
	["race.orc.npcd_trainer_open.w09.001"] = {
		"{g:Un orco|Un'orchessa}. Non dovrò insegnarti a non cedere terreno. Dovrò insegnarti quando cederne un po'.",
		"La tua gente impara facendo e prendendo colpi. Bene. Ne avremo parecchio, di tutti e due.",
	},
	["race.scourge.npcd_flightmaster_bye.w09.001"] = {
		"Tieniti forte. Almeno il freddo lassù non ti darà fastidio: i vivi arrivano che battono i denti.",
		"Si parte. E tieni ben stretta quella mascella: in quota tira aria.",
	},
	["race.scourge.npcd_flightmaster_open.w09.001"] = {
		"Sali. All'inizio le bestie non sopportavano l'odore dei Reietti. Hanno imparato. Anch'io.",
		"Su, in sella. Con te non serve calmare la bestia: tu non tremi, e lei lo sente.",
	},
	["race.scourge.npcd_flightmaster_route.w09.001"] = {
		"Lungo e freddo. Non che il freddo ti dica granché. Goditi il silenzio.",
		"Lassù è tranquillo. Quasi tutti parlano per farsi coraggio; la tua gente sta seduta a guardare la terra che scorre.",
	},
	["race.scourge.npcd_guard_bye.w09.001"] = {
		"Vai pure. E se uno della Scarlet Crusade ti chiede chi sei, non fermarti a rispondere.",
		"Circola. Cerca di tornare in un pezzo solo, là fuori: mi dicono che rifare i punti sia una seccatura.",
	},
	["race.scourge.npcd_guard_danger.w09.001"] = {
		"Certi sacerdoti della Luce non chiedono da che parte stai prima di bruciarti. Sta' alla larga dai più fanatici.",
		"Là fuori, tanta gente vede un Reietto e pensa al Flagello. Lasciagli il tempo di ripensarci prima di mettere mano alle armi.",
	},
	["race.scourge.npcd_guard_directions.w09.001"] = {
		"Tu puoi camminare quanto vuoi senza stancarti, quindi prendi il giro lungo. È quello con meno domande.",
		"Strada principale, e più avanti chiedi di nuovo. Non badare a chi ti fissa: pochi hanno incontrato un Reietto che chiede la strada con educazione.",
		"La troverai. I morti hanno pazienza per girare in tondo, così dicono; noi altri ci rimettiamo solo i piedi.",
	},
	["race.scourge.npcd_guard_open.w09.001"] = {
		"Reietti, eh. Di' cosa ti serve, e non prendertela per la lancia: la tengo così con tutti.",
		"Voi avete orari strani e compagnie ancora più strane. Però fastidi non me ne avete mai dati. Che c'è?",
		"Calma. Il Flagello l'ho visto, e tu non ne fai parte: lo capisco da come stai lì ad aspettare che parli io.",
	},
	["race.scourge.npcd_innkeeper_bye.w09.001"] = {
		"Vai, vai. Dopo arieggio la stanza: niente di personale.",
		"Abbi cura di te. Qualunque cosa ti tenga insieme, tienila all'asciutto.",
		"Arrivederci. In un mese non ho avuto un ospite più silenzioso: da te neanche un russare.",
	},
	["race.scourge.npcd_innkeeper_news.w09.001"] = {
		"Per strada raccontano che la Scarlet Crusade si fa più audace a Tirisfal. Al posto tuo eviterei le loro strade: loro non fanno domande prima.",
		"Chi torna dalle Plaguelands dice che il Flagello non ha ceduto di un passo. Immagino non ti sorprenda.",
		"Si parla della Royal Apothecary Society che torna a comprare roba strana: ossa, radici, casse intere di tutte e due. Nessuno chiede a cosa servano.",
	},
	["race.scourge.npcd_innkeeper_open.w09.001"] = {
		"Entra. Il fuoco non ti servirà, immagino, ma siediti lì vicino lo stesso: gli altri si agitano meno.",
		"Ah, i Reietti. A me vanno bene: la tua gente non rimanda mai indietro lo stufato, e non chiede mai il bis.",
	},
	["race.scourge.npcd_innkeeper_open.w09.002"] = {
		"Non badare alle occhiate dall'angolo. Si abitueranno a te. Io ci ho messo appena una settimana.",
		"Entra pure. C'è un tavolo vicino alla finestra, dove circola l'aria. Non per te: lo preferiscono gli altri clienti.",
	},
	["race.scourge.npcd_innkeeper_rest.w09.001"] = {
		"Una stanza? Te la do, anche se ho sentito che la tua gente più che dormire passa il tempo seduta. La sedia accanto al letto è comoda.",
		"Il letto è tuo, anche solo per restarci immobile un po'. Nessuno busserà, ci penso io.",
	},
	["race.scourge.npcd_innkeeper_sit.w09.001"] = {
		"Siediti, allora. Non ti porto da bere solo per vedertelo fissare: dimmelo tu, se lo vuoi.",
		"Mettiti a tuo agio. Lo so che puoi restare lì per ore senza muoverti: gli altri lo trovano inquietante, io riposante.",
	},
	["race.scourge.npcd_innkeeper_thanks.w09.001"] = {
		"Prego. Non capita spesso un grazie con una voce che sembra ghiaia: resta in testa.",
		"Nessun disturbo. Hai più educazione di metà dei miei clienti vivi, e odori solo un po' peggio.",
	},
	["race.scourge.npcd_merchant_bye.w09.001"] = {
		"Arrivederci. Torna prima del prossimo rattoppo: ho del filo che tiene.",
		"Buoni affari. Niente storie, niente chiacchiere, niente dita sul pane. Voi Reietti siete i clienti che preferisco.",
		"Stammi bene. E se qualcuno sulla porta si scansa quando passi, una volta si è scansato anche davanti a me.",
	},
	["race.scourge.npcd_merchant_news.w09.001"] = {
		"I sali da imbalsamazione scarseggiano, dicono: qualcuno li compra a carrettate. Forse conviene farne scorta finché si trovano.",
		"I commerci lungo le vecchie strade di Lordaeron sono pochi. Da un lato la Scarlet Crusade, dall'altro il Flagello, e la tua gente cammina nel mezzo.",
	},
	["race.scourge.npcd_merchant_open.w09.001"] = {
		"I soldi sono soldi, e i tuoi non puzzano. Non troppo. Che cerchi?",
		"Vendere ai Reietti è semplice: non discutete sul pane, e sapete esattamente cosa siete venuti a prendere.",
	},
	["race.scourge.npcd_merchant_open.w09.002"] = {
		"Attenzione ai punti su quella mano quando prendi qualcosa: non vorrei che un pezzo di te restasse sul mio scaffale.",
		"Fa' con calma. La tua gente guarda la merce come uno speziale guarda un campione: lentamente, e senza battere ciglio.",
	},
	["race.scourge.npcd_merchant_thanks.w09.001"] = {
		"Grazie a te. Detto da chi il peggio l'ha già passato, un grazie pesa di più.",
		"Prego. Con quella voce roca, un grazie sembra un segreto. Lo custodirò.",
	},
	["race.scourge.npcd_merchant_wares.w09.001"] = {
		"Filo, aghi, bende spesse e qualche tonico che funziona anche se non ne senti il sapore. La tua gente compra tutto quanto.",
		"Bende robuste e unguenti che fermano il marcio. Li tengo per i Reietti: quegli unguenti non li compra nessun altro.",
	},
	["race.scourge.npcd_trainer_open.w09.001"] = {
		"Bene: non ti stanchi e non batti ciglio per un livido. Possiamo andare avanti più a lungo di quanto oserei con i vivi.",
		"Dicono che ora la volontà dei Reietti sia di nuovo loro. Bene: è la prima cosa che serve a un maestro.",
	},
	["race.troll.npcd_flightmaster_bye.w09.001"] = {
		"Piega quelle ginocchia e tieniti. All'arrivo potrai sgranchirti, te lo prometto.",
		"Stringi i gomiti. La bestia ha già portato dei troll: si lamenta solo delle gambe.",
	},
	["race.troll.npcd_flightmaster_open.w09.001"] = {
		"La tua gente cavalca i raptor senza pensarci due volte. Questo è solo un raptor con le ali e modi migliori. Sali.",
		"Su, in sella. Occhio alle zanne con le briglie: l'ultimo troll che ho legato ci ha agganciato una fibbia.",
	},
	["race.troll.npcd_flightmaster_route.w09.001"] = {
		"Abbastanza lungo da annoiarsi, a meno di essere un troll: la tua gente trova sempre qualcosa da ridere, là sotto.",
		"Liscio come l'olio, se tieni ferme le gambe. Tutti i troll le lasciano penzolare comunque.",
	},
	["race.troll.npcd_guard_bye.w09.001"] = {
		"Vai pure. Qualunque cosa ti colpisca là fuori, dicono che la tua gente si rimargini prima ancora che si veda il livido.",
		"Buona strada. E tieniti quel ghigno: un troll che smette di sorridere mi preoccupa più di una lancia affilata.",
	},
	["race.troll.npcd_guard_danger.w09.001"] = {
		"I troll si fidano della loro pelle, che si rimargina da sola. D'accordo, ma al veleno non importa quanto guarisci in fretta. Porta qualcosa contro.",
		"Non tutti i troll che incontri per strada sono Darkspear. Certe tribù ti sbudellerebbero piuttosto che salutarti: guarda bene chi hai davanti.",
	},
	["race.troll.npcd_guard_directions.w09.001"] = {
		"Da lassù ti sfugge ben poco, no? Guarda sopra la folla, cerca l'insegna più alta e vai da quella parte.",
		"La tua gente trova la riva dall'odore del sale. Usa il naso allo stesso modo: la forgia sa di ferro, la locanda di stufato.",
		"Con gambe così lunghe arrivi prima che io finisca di spiegare. Sempre dritto, e alla prima svolta chiedi di nuovo.",
	},
	["race.troll.npcd_guard_open.w09.001"] = {
		"Darkspear, eh? La gente di Vol'jin mantiene la parola, da quel che ho visto. Che posso fare per te?",
		"Ho visto troll di altre tribù dalla parte sbagliata di una lancia. Tu non sei di quelli, si capisce. Parla.",
		"Te ne stai lì come se dovessi scattare da un momento all'altro. Calma, nessuno vuole litigare con un troll. Che ti serve?",
	},
	["race.troll.npcd_innkeeper_bye.w09.001"] = {
		"Vai pure. Dicono che i troll guariscano in fretta, ma non metterlo alla prova per farmi un piacere.",
		"Buona strada. E riporta qui quella tua risata: senza un troll questa sala è troppo silenziosa.",
		"Occhio allo stipite, uscendo. Ha già due ammaccature a forma di troll.",
	},
	["race.troll.npcd_innkeeper_news.w09.001"] = {
		"Le carovane da Tanaris raccontano che i Sandfury di Zul'Farrak tornano a razziare le dune. Non è la tua tribù, lo so, ma la gente te lo chiederà lo stesso.",
		"I marinai ai miei tavoli non fanno che parlare di Stranglethorn: vecchie pietre dei Gurubashi, e qualcosa che si muove a Zul'Gurub. I tuoi anziani quel nome lo conoscono meglio di me.",
		"Dalla costa arriva voce che le Echo Isles sono ancora sotto la maledizione di quello stregone pazzo. Mi dispiace: so che era terra dei Darkspear.",
	},
	["race.troll.npcd_innkeeper_open.w09.001"] = {
		"Occhio alla testa con quella trave: l'ho messa all'altezza dei nani, non dei troll. Entra e ripiegati su una panca come puoi.",
		"Abbassati, abbassati. Ogni troll che passa da quella porta dà una lezione all'architrave. Siediti dove ti entrano le ginocchia.",
	},
	["race.troll.npcd_innkeeper_open.w09.002"] = {
		"Un troll! Ho del pesce sul fuoco, se alla tua gente piace ancora bruciacchiato ai bordi. Siedi, siedi.",
		"Entra pure. Tengo una pentola di roba piccante apposta per i troll: gli altri clienti piangono appena l'assaggiano.",
	},
	["race.troll.npcd_innkeeper_rest.w09.001"] = {
		"Prendi il letto lungo in fondo. L'ho fatto fare dopo che un troll aveva dormito coi piedi fuori dalla finestra.",
		"Nel retro c'è un'amaca, se preferisci. La tua gente sembra dormire meglio quando qualcosa dondola.",
	},
	["race.troll.npcd_innkeeper_sit.w09.001"] = {
		"Allunga pure le gambe verso il fuoco, fin dove arrivano. Avviso io gli altri di scavalcarle.",
		"Bene, accomodati. La sala si fa sempre più rumorosa quando si siede un troll: le risate si attaccano.",
	},
	["race.troll.npcd_innkeeper_thanks.w09.001"] = {
		"Figurati. Ti stringerei la mano, ma per farlo come si deve me ne servirebbero tutte e due.",
		"Non serve. Il sorriso di un troll basta e avanza, e il tuo illuminerebbe la sala intera.",
	},
	["race.troll.npcd_merchant_bye.w09.001"] = {
		"Buoni affari. Di' a quelli di Sen'jin che non imbroglio: qualche cliente in più mi farebbe comodo.",
		"Arrivederci. Se quella cinghia cede su braccia così lunghe, riportala e te ne cucio una più lunga.",
		"Stammi bene. E continua con le battute quando tratti: un troll è l'unico cliente che mi fa ridere mentre mi spenna.",
	},
	["race.troll.npcd_merchant_news.w09.001"] = {
		"Il pesce costa poco lungo la costa, dicono i barcaioli. Me lo poteva dire la tua gente: sapete sempre cosa combina il mare.",
		"La pelle di raptor si vende bene, mi dicono. Se un troll volesse mai scambiarne qualcuna, sai a chi rivolgerti.",
	},
	["race.troll.npcd_merchant_open.w09.001"] = {
		"Prendi pure da te sullo scaffale in alto: con braccia come le tue, mi risparmi la scala.",
		"Avanti, guarda pure. La tua gente vede oltre tutto il banco: a un troll non si riesce a nascondere un'occasione.",
	},
	["race.troll.npcd_merchant_open.w09.002"] = {
		"Con i Darkspear ho sempre fatto buoni affari: ridete dei miei prezzi, e poi li pagate lo stesso. Dai un'occhiata.",
		"Un troll al banco, e già col sorriso. Qualunque cosa cerchi, scommetto che la trattativa comincia con una battuta.",
	},
	["race.troll.npcd_merchant_thanks.w09.001"] = {
		"Grazie a te. E raccontami di nuovo quella barzelletta mentre esci: non ho sentito la fine.",
		"Prego. I troll di solito mi ringraziano più con una risata che a parole, quindi mi tengo tutte e due.",
	},
	["race.troll.npcd_merchant_wares.w09.001"] = {
		"Roba col manico lungo, cinghie robuste e stivali di misure che nessun altro chiede. Ai troll ci penso sempre.",
		"Corda, sale, ami da pesca, un paio di buoni coltelli. Qualunque cosa un troll si porti in riva al mare, probabilmente ce l'ho.",
	},
	["race.troll.npcd_trainer_open.w09.001"] = {
		"La tua gente guarisce in fretta, quindi non ci andrò piano. Oggi lividi, e quando spariscono ti resta l'abilità.",
		"Un troll. Braccia lunghe, mani svelte e una risata quando le cose vanno storte. Bene: quest'ultima conta più di tutto.",
	},
	["faction.alliance.npcd_flightmaster_bye.w10.001"] = {
		"Su, si parte. Se sorvoli l'Orda, salutala con la mano: la confonde da morire.",
		"Buon volo. La bestia conosce a memoria ogni posatoio dell'Alleanza: fidati più di lei che della mappa.",
	},
	["faction.alliance.npcd_flightmaster_open.w10.001"] = {
		"Dove si va? Ogni posatoio dell'Alleanza è amico, e i vuoti nel mezzo non sono affar mio.",
		"Monta. Queste bestie hanno portato tutti i popoli dell'Alleanza e non si sono mai lamentate di nessuno. Dei passeggeri non posso dire lo stesso.",
	},
	["faction.alliance.npcd_flightmaster_route.w10.001"] = {
		"Abbastanza rapido. Tieniti basso in sella sopra le terre dell'Orda: i loro arcieri si annoiano e ci sperano.",
		"Non molto. Quasi tutto cielo, un po' di terre dell'Orda sotto, e un posatoio amico in fondo.",
	},
	["faction.alliance.npcd_guard_bye.w10.001"] = {
		"Vai pure. Tieni pulito il nome dell'Alleanza là fuori: coi Defias abbiamo già abbastanza guai.",
		"Buona strada. E se vedi bandiere rosse, grida.",
	},
	["faction.alliance.npcd_guard_danger.w10.001"] = {
		"Predoni dell'Orda sulle strade, i morti al nord, briganti ovunque nel mezzo. Scegli le tue battaglie, e sceglile vicino a degli amici.",
		"Pericoli? L'Alleanza ha più fronti che soldati. Dovunque tu vada, aspettati che qualcuno con una lama ci sia arrivato prima.",
	},
	["faction.alliance.npcd_guard_directions.w10.001"] = {
		"Segui le bandiere azzurre e non sbaglierai di molto. Dove i colori diventano rossi, fai dietrofront.",
		"Chiedi a chiunque porti i colori dell'Alleanza: tutti conoscono la strada per la locanda, per la banca e per i guai.",
		"Bada ai cartelli. Ogni popolo dell'Alleanza ha litigato sull'ortografia, ma indicano tutti giusto.",
	},
	["faction.alliance.npcd_guard_open.w10.001"] = {
		"Colori dell'Alleanza. Per me va bene. Che ti serve? Breve: la ronda non aspetta.",
		"Una faccia onesta sotto i colori dell'Alleanza. Dimmi che ti serve.",
		"Da qualunque popolo tu venga, da me avrai una risposta diretta. Chiedi pure.",
	},
	["faction.alliance.npcd_innkeeper_bye.w10.001"] = {
		"Buona strada. Al prossimo villaggio dell'Alleanza di' che i letti erano puliti: fa miracoli per gli affari.",
		"Vai pure. Se all'orizzonte vedi una bandiera azzurra, è amica; se è rossa, tira dritto.",
		"Abbi cura di te là fuori. L'Alleanza ha meno brava gente di quanto creda.",
	},
	["faction.alliance.npcd_innkeeper_news.w10.001"] = {
		"Ai miei tavoli ultimamente si parla solo dell'Alterac: gli Stormpike vogliono volontari e i Frostwolf li vogliono fuori dai piedi.",
		"Un corriere giurava che alle Sentinelle di Ashenvale mancano di nuovo le frecce. Alle asce dei Warsong non sembra mai mancare niente.",
		"Del re nessuno sa niente. Ogni sera qualcuno con i colori dell'Alleanza alza il boccale alla sua salute, come se servisse a riportarlo a casa.",
	},
	["faction.alliance.npcd_innkeeper_open.w10.001"] = {
		"Avanti, avanti. Da qualunque capitale tu venga, lo stufato è lo stesso e il prezzo pure.",
		"Siediti dove vuoi. L'Alleanza continua a passare dalla mia porta, e nessuno si è mai pulito gli stivali.",
	},
	["faction.alliance.npcd_innkeeper_open.w10.002"] = {
		"Un'altra anima in cammino sulle strade dell'Alleanza. Una scodella, una panca e le ultime voci: scegline due, o tutte e tre.",
		"Entra pure. Hai l'aria di chi si porta in spalla le commissioni dell'Alleanza. Posale per un po'.",
	},
	["faction.alliance.npcd_innkeeper_rest.w10.001"] = {
		"La stanza è in cima alle scale. Dormi sonni tranquilli: c'è un chiavistello sulla porta e alleati in ogni stanza intorno.",
		"Prendi il letto d'angolo. Ci hanno dormito soldati di tutti i popoli dell'Alleanza, e nessuno si è lamentato del materasso. Del russare, sì.",
	},
	["faction.alliance.npcd_innkeeper_sit.w10.001"] = {
		"Ecco. Siediti come si deve: la guerra può fare a meno di te per una scodella.",
		"Bene, riposa le gambe. L'Alleanza non cadrà mentre finisci di bere, e se cade, ti sveglio io.",
	},
	["faction.alliance.npcd_innkeeper_thanks.w10.001"] = {
		"Non serve. Dar da mangiare a chi tiene aperte le strade è il miglior affare che faccia.",
		"Di niente. Tieni l'Orda lontana dai miei carri di provviste e siamo pari.",
	},
	["faction.alliance.npcd_merchant_bye.w10.001"] = {
		"Buoni affari. Che ti tengano in vita abbastanza da venire a comprare ancora.",
		"Arrivederci. Il resto spendilo contro i nemici dell'Alleanza, non nelle sue taverne.",
		"Vai, e buona fortuna al fronte. Portami notizie: le scambio con uno sconto.",
	},
	["faction.alliance.npcd_merchant_news.w10.001"] = {
		"Le frecce sono di nuovo care: le Sentinelle di Ashenvale comprano ogni asta che trovano.",
		"Da Ironforge il minerale scende a sud a carrettate. Qualcuno nell'Alleanza si aspetta una guerra lunga.",
	},
	["faction.alliance.npcd_merchant_open.w10.001"] = {
		"Ah, moneta dell'Alleanza! Spendila qui, prima che la spenda la guerra al posto tuo.",
		"Dai un'occhiata. Provviste per ogni fronte dell'Alleanza, e qualcuna per i fronti che non ha ancora aperto.",
	},
	["faction.alliance.npcd_merchant_open.w10.002"] = {
		"Vieni dal fronte o ci stai andando? In ogni caso ti serviranno bende, e io ho bende.",
		"Chi combatte per l'Alleanza compra sempre le stesse tre cose: cibo, corda e qualcosa per aggiustare ciò che si è rotto. Oggi quale?",
	},
	["faction.alliance.npcd_merchant_thanks.w10.001"] = {
		"Grazie a te. La moneta dell'Alleanza vale uguale in ogni città, e le buone maniere pure.",
		"È un piacere. Prima o poi tutta l'Alleanza passa dal mio banco; mi fa piacere vederti per tempo.",
	},
	["faction.alliance.npcd_merchant_wares.w10.001"] = {
		"Razioni da campo, bende, corda, olio per le lanterne. Tutto quello che un soldato dell'Alleanza si dimentica fino al momento in cui gli serve.",
		"Qualcosa da ogni angolo dell'Alleanza: borracce della montagna, filo dei telai elfici, l'acciarino brevettato di uno gnomo. Scegli pure.",
	},
	["faction.alliance.npcd_trainer_open.w10.001"] = {
		"Bene. L'Alleanza ha bisogno di gente che continui a imparare: l'Orda di sicuro lo fa.",
		"Avanti. Da qualunque popolo tu venga, la lezione è la stessa: esercitati finché l'Orda non se ne pente.",
	},
	["faction.horde.npcd_flightmaster_bye.w10.001"] = {
		"Tieniti forte e fidati della bestia. Ha portato messaggi persino per il Capoguerra.",
		"Buon volo. Atterra morbido, e porta i miei saluti al maestro di volo dall'altra parte.",
	},
	["faction.horde.npcd_flightmaster_open.w10.001"] = {
		"Sali. La bestia conosce a memoria ogni posatoio dell'Orda.",
		"Su, in sella. Corriere, soldato o viandante, il cielo dell'Orda li porta tutti allo stesso modo.",
	},
	["faction.horde.npcd_flightmaster_route.w10.001"] = {
		"Rotta tranquilla, quasi tutta sopra terre dell'Orda. Se vedi i colori dell'Alleanza là sotto, saluta con la mano: lo detestano.",
		"Abbastanza lunga da appisolarsi. La bestia non atterra in nessun posto che non porti la nostra bandiera.",
	},
	["faction.horde.npcd_guard_bye.w10.001"] = {
		"Vai pure. L'Orda ha occhi su ogni strada: non sei mai {g:solo|sola} quanto sembra.",
		"Buon cammino. E se l'Alleanza ti chiede che affari hai, non sono affari suoi.",
	},
	["faction.horde.npcd_guard_danger.w10.001"] = {
		"Gli esploratori dell'Alleanza girano a due o tre per volta. Se ne vedi uno, cerca gli altri prima di mettere mano alle armi.",
		"Al Flagello non importa che bandiera porti. Se vai a nord, vai in compagnia, e brucia quello che cade.",
	},
	["faction.horde.npcd_guard_directions.w10.001"] = {
		"Segui gli stendardi dell'Orda: stanno lungo ogni strada che valga la pena, e quelle senza è meglio evitarle.",
		"Chiedi a qualunque guardia lungo il cammino. Le strade le conosciamo tutti; quasi tutti le abbiamo pattugliate.",
		"Sempre dritto, e se ti perdi cerca il fuoco dell'Orda più vicino e chiedi. Qualcuno lo sa sempre.",
	},
	["faction.horde.npcd_guard_open.w10.001"] = {
		"Colori dell'Orda. Bene. Che ti serve, soldato?",
		"Parla. Se si tratta di guai, preferisco sentirlo da uno dei nostri.",
		"Riposo. Sei in mezzo all'Orda: chiedi pure.",
	},
	["faction.horde.npcd_innkeeper_bye.w10.001"] = {
		"Strada sicura. Torna con tutti i pezzi: l'Orda non può farne a meno.",
		"Vai pure. Se incontri l'Alleanza, porta i miei saluti: quelli appuntiti.",
		"Buon cammino. Ci sarà una scodella ad aspettarti, da qualunque angolo dell'Orda tu torni.",
	},
	["faction.horde.npcd_innkeeper_news.w10.001"] = {
		"Notizie da Ashenvale: le Sentinelle hanno colpito di nuovo i campi dei taglialegna. Orgrimmar vuole il legname lo stesso.",
		"I viaggiatori dicono che le Plaguelands brulicano peggio della stagione scorsa. La gente della Dama Oscura è partita verso nord con facce cupe.",
		"I corrieri dall'Alterac raccontano che i Frostwolf si stanno trincerando. Se vai da quelle parti, porta un mantello pesante e poca pazienza.",
	},
	["faction.horde.npcd_innkeeper_open.w10.001"] = {
		"Entra, entra. Chi porta i colori dell'Orda ha la panca calda e il primo mestolo; gli altri aspettano il loro turno.",
		"Avanti. Qualunque strada tu abbia fatto per l'Orda, per un po' finisce alla mia porta.",
	},
	["faction.horde.npcd_innkeeper_open.w10.002"] = {
		"Siediti dove vuoi. Ho avuto orchi, troll, tauren e Reietti allo stesso tavolo; un posto per te si trova.",
		"Occhio al tamburo vicino alla porta. L'ha lasciato un grunt la settimana scorsa e nessuno osa spostarlo.",
	},
	["faction.horde.npcd_innkeeper_rest.w10.001"] = {
		"La stanza è tua. I muri sono sottili, ma sotto questo tetto nessuno porta la bandiera sbagliata.",
		"Riposati. Se qualcosa si muove sulla strada, le guardie dell'Orda lo sentiranno molto prima di te.",
	},
	["faction.horde.npcd_innkeeper_sit.w10.001"] = {
		"Prendi uno sgabello. Ogni soldato dell'Orda si merita di sedersi ogni tanto, checché ne dicano gli ufficiali.",
		"Siediti, siediti. Metti su i piedi: la guerra può aspettare il tempo di una tazza.",
	},
	["faction.horde.npcd_innkeeper_thanks.w10.001"] = {
		"Non serve ringraziare. Tenere l'Orda sfamata è la mia parte di guerra.",
		"Bah, figurati. Ripagami tornando con tutte le ossa al loro posto.",
	},
	["faction.horde.npcd_merchant_bye.w10.001"] = {
		"Buoni affari. Il resto spendilo in qualcosa che tenga in piedi l'Orda.",
		"Addio. Se quella cinghia si rompe in una zuffa con l'Alleanza, voglio sentire la storia.",
		"Buon cammino. Torna più {g:ricco|ricca}: ti aiuterò volentieri a rimediare.",
	},
	["faction.horde.npcd_merchant_news.w10.001"] = {
		"Il legname è rincarato di nuovo. Ogni volta che le Sentinelle assaltano i campi Warsong, i carpentieri di Orgrimmar piangono.",
		"Le carovane che attraversano le Barrens continuano a perdere casse per colpa dei centauri. Qualcuno nell'Orda dovrebbe fare qualcosa. Possibilmente qualcuno con spalle come le tue.",
	},
	["faction.horde.npcd_merchant_open.w10.001"] = {
		"Monete dell'Orda, merce dell'Orda. Dai un'occhiata: niente su questi scaffali viene da Stormwind, te lo prometto.",
		"Ah, i colori giusti. Prenditi il tuo tempo: l'Alleanza al mio banco non fa acquisti.",
	},
	["faction.horde.npcd_merchant_open.w10.002"] = {
		"Avanti. Corde, bende, otri: le cose che le canzoni dell'Orda non nominano e che servono a ogni soldato.",
		"Vieni, guarda. Se ti tiene in vita fra un avamposto e l'altro, probabilmente ce l'ho.",
	},
	["faction.horde.npcd_merchant_thanks.w10.001"] = {
		"Grazie a te. Monete dell'Orda spese nell'Orda: il commercio migliore che ci sia.",
		"Il piacere è mio. Di' alla tua banda dove l'hai preso.",
	},
	["faction.horde.npcd_merchant_wares.w10.001"] = {
		"Razioni che si conservano, bende che tengono, e una cote o due. L'Orda marcia con le cose semplici.",
		"Otri da Mulgore, corde dal Durotar, sale dalla costa. Merce da ogni angolo dell'Orda, tutta su uno scaffale.",
	},
	["faction.horde.npcd_trainer_open.w10.001"] = {
		"{g:Pronto|Pronta} a imparare? Bene. L'Orda ha bisogno di combattenti più affilati a ogni stagione, e tu ne fai parte.",
		"Mettiti lì e fammi vedere. Da qualunque popolo tu venga, l'Orda addestra tutti allo stesso modo: duro, e con onestà.",
	},
	["npcd.merchant.bye.w15.001"] = {
		"Fa' attenzione. I clienti mi piacciono interi: comprano di più.",
		"Buon cammino. Spendi con giudizio, là fuori, e torna a spendere il resto qui.",
	},
	["npcd.merchant.bye.w15.002"] = {
		"Te ne vai già? La roba buona stava proprio per uscire dal retro.",
		"Così presto? Farò finta che non mi dispiaccia.",
		"Di già? Cominciavi giusto a starmi {g:simpatico|simpatica}.",
	},
	["npcd.merchant.bye.w15.003"] = {
		"Abbi cura di te. I buoni clienti sono difficili da sostituire, e tu sei tra quelli che si fanno voler bene.",
		"Riguardati. Il banco sarà qui quando ti servirà.",
	},
	["npcd.merchant.bye.w15.004"] = {
		"Buon viaggio. E se qualcuno ti chiede dove l'hai preso, fai il mio nome con garbo.",
		"Stammi bene. Di' in giro che non mordo, almeno non dall'altra parte del banco.",
	},
	["npcd.merchant.bye.w15.005"] = {
		"Arrivederci, e ricorda: non ti ho mai {g:visto|vista} trattare così duro. Tanto nessuno ci crederebbe.",
		"Su, vai. La mia borsa ha bisogno di riposo, dopo questa.",
	},
	["npcd.merchant.news.w15.001"] = {
		"Chi passa parla molto e paga poco. Quel che ho raccolto: sono tutti stanchi, e tutti di fretta.",
		"Notizie? Più che altro lamentele sui prezzi, da gente che compra da me. Io ascolto educatamente.",
	},
	["npcd.merchant.news.w15.002"] = {
		"Una voce di corridoio è come una moneta di origine incerta: vale qualcosa finché non provi a spenderla.",
		"Sento molto e credo poco. È per questo che sono ancora in affari.",
	},
	["npcd.merchant.news.w15.003"] = {
		"L'ultima è che qualcuno ha sentito qualcosa da qualcun altro. Al banco, le notizie sono solide più o meno così.",
		"Si dice che da qualche parte si stia preparando un guaio. Lo si dice sempre. E di rado ci si sbaglia.",
	},
	["npcd.merchant.thanks.w15.001"] = {
		"Il piacere è mio. Solo chi tratta onestamente si vede tornare i clienti.",
		"Non serve. Basta che ti ricordi la strada per tornare qui.",
	},
	["npcd.merchant.thanks.w15.002"] = {
		"I ringraziamenti sono gentili. Le monete, ancora di più. Prendo entrambi, si capisce.",
		"Ma figurati. Ringraziami non comprando dalla concorrenza.",
	},
	["npcd.merchant.wares.w15.001"] = {
		"Dai un'occhiata. Quello che sta sul banco è in vendita; quello che sta sotto, chiedilo con garbo.",
		"Roba che ti manda avanti, soprattutto. Niente di elegante, niente che si rompa al primo uso.",
	},
	["npcd.merchant.wares.w15.002"] = {
		"Quello che ti manca, probabilmente ce l'ho. Quello che ti avanza, probabilmente lo compro.",
		"Cose utili a prezzi onesti, e un paio di occasioni per chi sa guardare.",
	},
	["npcd.flightmaster.bye.w16.001"] = {
		"Buon viaggio, da qualunque parte tu vada. Se un giorno ti servono delle ali, sai dove le teniamo.",
		"Arrivederci. E se vai a piedi, saluta quando uno dei miei ti passa sopra la testa.",
		"Stammi bene. Io sarò qui a contare le cavalcature e a controllare le cinghie, come ogni giorno.",
	},
	["npcd.guard.bye.w16.001"] = {
		"Vai pure, allora. Tieni la borsa vicina e la pazienza ancora più vicina.",
		"Va' pure. Se qualcuno ti dà fastidio, sai com'è fatta una guardia.",
	},
	["npcd.guard.bye.w16.002"] = {
		"Circola, e torna con lo stesso numero di pezzi. Quando nessuno si fa male, i miei rapporti sono brevi.",
		"Bada a te. Mi piacciono i turni tranquilli, e tu puoi aiutarmi ad averne uno.",
	},
	["npcd.guard.directions.w16.001"] = {
		"Scegli qualcosa che si veda quasi da ogni punto e impara dove sta. Così non ti perdi mai davvero: al massimo ti allontani.",
		"Percorrila una volta con gli occhi aperti. La seconda, ci penseranno i piedi.",
		"Chiedi alla prossima guardia che incontri. Indicare la strada è metà del nostro lavoro; l'altra metà è non muoversi.",
	},
	["npcd.guard.directions.w16.002"] = {
		"Il primo giorno si perdono tutti. Al terzo danno indicazioni agli altri, e sbagliano pure.",
		"Il trucco è avere l'aria di chi sa dove va. La gente ti segue, e magari qualcuno lo sa davvero.",
	},
	["npcd.guard.directions.w16.003"] = {
		"Chi esercita lo stesso mestiere tende a stare vicino ai suoi pari. Trovate una porta del mestiere che cercate, e la seguente di rado è lontana.",
		"Se doveste smarrire l'orientamento, tornate al punto da cui è cominciato il vostro giro e ripartite da lì. È più lento, ma non sbaglia mai.",
	},
	["npcd.guard.directions.w16.004"] = {
		"Scegli un punto di riferimento. Non perderlo di vista.",
		"Chiedi due volte. Fidati di quello su cui le risposte coincidono.",
	},
	["npcd.innkeeper.bye.w16.001"] = {
		"Vai pure. Controlla le borse prima della porta: quello che i clienti dimenticano qui finisce nella zuppa, o quasi.",
		"Fa' attenzione per strada. E se incontri qualcuno che ha bisogno di un piatto e di un tetto, mandalo da me.",
		"Buon cammino. La panca contro il muro è tua, ogni volta che passi di qui.",
	},
	["npcd.innkeeper.bye.w16.002"] = {
		"Riguardati, là fuori. Troppi bravi clienti non sono più tornati, e non vorrei aggiungerti al conto.",
		"Mangia come si deve, per strada. Quello che ti serviranno non sarà roba mia, ma mangialo lo stesso.",
	},
	["npcd.innkeeper.thanks.w16.001"] = {
		"Non ringraziarmi, sono solo chiacchiere. Metà di quello che passa da questo banco sono voci, e l'altra metà è peggio.",
		"Felice di aiutare. Le notizie sono l'unica cosa che regalo: costano meno della zuppa e vanno a male prima.",
		"Quando vuoi. Torna a raccontarmi com'è finita; io le storie non riesco mai a sentirle fino in fondo.",
	},
}, "base_dialogues")
