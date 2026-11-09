-- Testi in italiano delle parti dei monologhi (#99). Le regole stanno in Data/RegistryMonologues.lua.
-- Ogni variante di una parte va con ogni variante della parte dopo: vanno lette in tutte le combinazioni.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	-- mono.muse.road
	["mono.muse.road.1"] = {
		"Un altro miglio alle spalle. Ho smesso di contarli da un pezzo.",
		"La strada sa svuotare la testa. La lascio fare.",
	},
	["mono.muse.road.2"] = {
		"Strano, cosa ricordano i piedi: una pietra smossa, una curva, un cancello lasciato aperto.",
		"I miei stivali conoscono questo mondo meglio di qualunque mappa abbia comprato.",
	},
	["mono.muse.road.3"] = {
		"Da qualche parte, più avanti, c'è un fuoco a cui non mi sono ancora {g:seduto|seduta}.",
		"Qualunque cosa aspetti alla fine della strada, preferisco andarle incontro che aspettarla.",
	},

	-- mono.muse.scar
	["mono.muse.scar.1"] = {
		"Mi sono {g:sorpreso|sorpresa} di nuovo a seguire con il dito la vecchia cicatrice.",
		"La mano è andata alla cicatrice senza chiedermi il permesso.",
	},
	["mono.muse.scar.2"] = {
		"Ha smesso di far male da tempo. Non ha smesso di parlare.",
		"Adesso è più sottile, più pallida. Il tempo guarisce con pazienza e mente male.",
	},
	["mono.muse.scar.3"] = {
		"Ognuno di noi è la mappa dei posti in cui per poco non è rimasto.",
		"Un giorno racconterò a qualcuno come me la sono fatta. Non oggi.",
	},

	-- mono.muse.stars (ordine libero: la seconda e la terza possono scambiarsi)
	["mono.muse.stars.1"] = {
		"Sono uscite le stelle, e nessuno mi chiede niente.",
		"Finalmente notte. Il mondo è più quieto quando non può vedermi.",
	},
	["mono.muse.stars.2"] = {
		"Potrei dare un nome a qualche stella, se ci provassi. Preferisco di no.",
		"I vecchi racconti dicono che ogni stella è una sentinella. Stanotte spero che si annoino.",
	},
	["mono.muse.stars.3"] = {
		"Solo il respiro, il freddo e questo piccolo pezzo di buio che è mio.",
		"Per un'ora non appartengo a nessuno. È una strana forma di ricchezza.",
	},

	-- mono.zone.crest (la prima parte è un'emote: segue il nome del personaggio)
	["mono.zone.crest.1"] = {
		"si ferma in cima alla salita, e sotto si apre {zone}.",
		"rallenta presso le pietre di confine e abbraccia con lo sguardo {zone}.",
	},
	["mono.zone.crest.2"] = {
		"La terra corre più lontano di quanto l'occhio voglia seguirla.",
		"Ogni collina ne nasconde un'altra, e ogni sentiero si biforca prima di finire.",
	},
	["mono.zone.crest.3"] = {
		"Un uccello attraversa il cielo senza fretta, come se il posto fosse suo.",
		"In alto, un falco gira una volta sopra la strada e la lascia stare.",
	},

	-- mono.zone.dusk
	["mono.zone.dusk.1"] = {
		"si ferma a guardare la luce che si fa ambra su {zone}.",
		"si volta a ovest mentre il giorno si consuma basso su {zone}.",
	},
	["mono.zone.dusk.2"] = {
		"Le ombre si allungano sul terreno, e l'aria si raffredda di un soffio.",
		"I colori lasciano la terra uno a uno, e i rossi se ne vanno per ultimi.",
	},
	["mono.zone.dusk.3"] = {
		"Presto accenderanno le lanterne, e la strada sarà della notte.",
		"Quel che resta del giorno non verrà speso di fretta.",
	},

	-- mono.rest.hearth
	["mono.rest.hearth.1"] = {
		"Aria calda, voci forti, odore di pane. Resto sulla soglia un momento più del necessario.",
		"Un fuoco, una panca, un tetto che tiene fuori il cielo. Piccole cose, finché non ti mancano.",
	},
	["mono.rest.hearth.2"] = {
		"Qui nessuno sa cosa ho fatto oggi, e nessuno lo chiede.",
		"L'oste mi saluta con un cenno, come fa con chiunque. Qui dentro sono davvero chiunque.",
	},
	["mono.rest.hearth.3"] = {
		"Dormirò come un sasso, e la strada resterà fuori finché non mi sveglio.",
		"Domani può bussare. Per ora la porta resta chiusa.",
	},

	-- mono.lvl.lock
	["mono.lvl.lock.1"] = {
		"Qualcosa si è spostato. Le braccia lo sanno prima di me.",
		"Eccolo di nuovo, quel piccolo scatto, come una serratura che gira da qualche parte dentro di me.",
	},
	["mono.lvl.lock.2"] = {
		"La strada non si accorcia. Sono io che imparo a percorrerla meglio.",
		"Dovrei sentirmi più {g:fiero|fiera}. Più che altro mi chiedo cosa verrà a cercarmi adesso.",
	},

	-- mono.rez.breath
	["mono.rez.breath.1"] = {
		"Di nuovo il respiro. Sa di polvere, ed è la cosa più dolce che conosca.",
		"Di ritorno. La terra è fredda sotto le mani, ed è così che lo so.",
	},
	["mono.rez.breath.2"] = {
		"Per un momento non c'era niente, nemmeno la paura.",
		"Continuo a cercare la ferita. C'è solo il suo ricordo.",
	},
	["mono.rez.breath.3"] = {
		"In piedi, allora. Il mondo non si è fermato ad aspettarmi.",
		"Starò più {g:attento|attenta}. Lo dico ogni volta.",
	},
	["muse.w04.013"] = {
		"Niente di quello che porto pesa, preso da sé. Il guaio è che viaggiano tutti insieme.",
		"Ogni cosa nello zaino, da sola, non pesava nulla. Insieme si sono coalizzate contro di me.",
		"Una borraccia, una coperta, un ricambio di questo e di quello. Eppure la somma fa un piccolo mulo.",
	},
	["muse.w04.014"] = {
		"Ogni tanto svuoto lo zaino e chiedo a ogni cosa perché sia ancora con me. Poche sanno rispondere.",
		"Prima o poi ogni zaino va processato: fuori tutto, e rientra solo ciò che serve.",
	},
	["muse.w04.015"] = {
		"Ogni pezzo di questa roba me l'hanno venduto come leggero. Ogni mercante ha mentito.",
		"«Non pesa quasi niente», diceva il mercante. I mercanti non camminano.",
	},
	["muse.w04.016"] = {
		"Uno straccio, un po' d'olio, un po' di pazienza. Curare l'equipaggiamento è l'unica cura che mi concedo senza discutere.",
		"Rammendo una cinghia prima di rammendare me. Forse la cinghia è più facile da capire.",
		"Buffo: tratto con tanta delicatezza una fibbia sfilacciata, e così male le mani che la aggiustano.",
	},
	["muse.w04.018"] = {
		"In fondo allo zaino c'è una cosa che non uso mai e non butto mai. Ho smesso di chiedermi perché.",
		"Nello zaino c'è un oggetto che non serve a niente. È anche l'ultimo che lascerei indietro.",
	},
	["muse.w04.019"] = {
		"Se cado, è colpa dello zaino. Voglio che resti agli atti.",
		"Qualunque cosa mi faccia fuori, alla fine lo zaino dirà di averle dato una mano.",
	},
	["muse.w04.020"] = {
		"Pane, formaggio e niente che mi insegue: ho visto banchetti valere meno.",
		"Dammi pane raffermo e un'ora tranquilla, e i banchetti tienteli pure.",
		"Un tozzo di pane mangiato in pace vale più di un arrosto mangiato guardandosi alle spalle.",
	},
	["muse.w04.021"] = {
		"Il mio stomaco ha le sue opinioni, e le esprime nei momenti peggiori.",
		"La pancia tiene un calendario tutto suo. Non coincide mai con il mio.",
	},
	["muse.w04.023"] = {
		"Le razioni da viaggio. La prova che qualcuno, chissà dove, odia i viaggiatori.",
		"Chi ha inventato il pane da viaggio doveva avere un conto in sospeso con qualcuno.",
		"La galletta: l'unico cibo che si difende meglio delle bestie che caccio.",
	},
	["muse.w04.024"] = {
		"Dividere il pane con uno sconosciuto è il trattato più antico che conosca. Ha retto meglio di molti scritti.",
		"Spezza il pane con qualcuno e avete firmato qualcosa, anche se nessuno dei due sa leggere.",
	},
	["muse.w04.027"] = {
		"Il denaro entra un rame per volta ed esce a manciate. Vorrei due parole con chi ha fissato il cambio.",
		"Lo guadagno moneta dopo moneta e lo spendo a pugni pieni. C'è qualcosa che non torna nei conti.",
	},
	["muse.w04.028"] = {
		"L'oro compra quasi tutto ciò che mi serve. È il resto che mi tiene {g:sveglio|sveglia}.",
		"Le monete saldano quasi tutti i debiti. Non quelli per cui perdo davvero il sonno.",
	},
	["muse.w04.029"] = {
		"La borsa è più leggera del dovuto. Darò la colpa alle riparazioni. Do sempre la colpa alle riparazioni.",
		"Ma dove finisce tutto? Questa borsa ha un buco che trovano solo le monete.",
		"Contate due volte, e la seconda è andata peggio. Non è così che funziona contare.",
	},
	["muse.w04.031"] = {
		"Ogni moneta nella mia borsa è passata per cento mani. Nessuna è riuscita a trattenerla.",
		"Le monete sopravvivono ai padroni per pura abitudine. Cerco di non prenderla sul personale.",
		"Questo rame lo spenderà gente che non è ancora nata. Non gli importa in che mano si trova.",
	},
	["muse.w04.032"] = {
		"I mercanti mi sorridono come a una vecchia conoscenza. Una vecchia conoscenza di cui hanno visto la borsa.",
		"Ogni mercante del mondo sa esattamente quanto posso spendere, e mi fa il prezzo un rame sopra.",
	},
	["muse.w04.033"] = {
		"In viaggio il sonno non è mai profondo. Una parte di me resta sempre accanto alla porta.",
		"Per strada il sonno arriva a fette sottili, e un orecchio non va mai giù del tutto.",
		"Dormo come i gatti: tutto il corpo giù, un orecchio ancora in servizio.",
	},
	["muse.w04.034"] = {
		"Datemi un muro a cui appoggiarmi e dormirei durante una guerra.",
		"Potrei dormire in piedi, come un cavallo. Un cavallo stanco e pagato male.",
	},
	["muse.w04.035"] = {
		"I sogni che faccio in viaggio non mi sembrano mai miei. Mi sveglio con in mano la paura di qualcun altro.",
		"Lontano da un letto vero sogno cose strane. Quando apro gli occhi ne resta solo il sapore.",
	},
	["muse.w04.036"] = {
		"Mi spetta circa un mese di sonno arretrato. Lo prenderò a rate.",
		"Qualcuno mi deve un sacco di ore di sonno. Sto tenendo il conto.",
	},
	["muse.w04.037"] = {
		"L'attimo prima di dormire è l'unico in cui la giornata smette di discutere con me.",
		"Quando finalmente mi sdraio, il mondo resta senza argomenti.",
		"Occhi chiusi, stivali tolti, e per un po' nessuna causa da difendere, nemmeno la mia.",
	},
	["muse.w04.038"] = {
		"Continuo a scrivere lettere nella testa. Nessuno le legge mai, e sono le migliori che abbia scritto.",
		"C'è una lettera che ho cominciato dieci volte a mente. Parte sempre bene e non arriva da nessuna parte.",
		"Le mie lettere migliori non toccano mai la carta. Sono finite, firmate e piegate da qualche parte dietro gli occhi.",
	},
	["muse.w04.039"] = {
		"Se scrivessi, cosa direi? «{g:Vivo|Viva}, sempre in cammino, niente che valga l'inchiostro.»",
		"Caro chiunque tu sia: {g:vivo|viva}, più o meno. Mangio, quasi sempre. Nient'altro che metterei per iscritto.",
	},
	["muse.w04.040"] = {
		"Qualcuno dovrebbe sapere che sto bene. Non riesco a decidere chi.",
		"Dovrei mandare a dire che sto bene. Il difficile è capire a chi.",
	},
	["muse.w04.041"] = {
		"Certe lettere si scrivono solo per bruciarle. Lo scopo era scriverle.",
		"Una lettera non deve per forza partire per fare il suo lavoro. Alcune lo fanno meglio in cenere.",
	},
	["muse.w04.042"] = {
		"In un posto conto le vie d'uscita prima di ogni altra cosa. Abitudine. Una buona.",
		"Prima le uscite, poi le facce, poi cosa c'è da mangiare. Sempre in quest'ordine.",
		"Dovunque mi fermi, gli occhi trovano le porte prima che i piedi trovino un posto a sedere.",
	},
	["muse.w04.043"] = {
		"Gli occhi controllano i margini delle cose anche quando dico loro di riposare. Non si fidano di me.",
		"Una parte di me è sempre di guardia. Prima o poi vorrei conoscere il resto.",
	},
	["muse.w04.045"] = {
		"No, non mi spavento per niente. Sono solo ben {g:informato|informata} su cosa salta fuori all'improvviso.",
		"Agitazione? No. Ho solo conosciuto parecchie cose che sbucano dal nulla.",
	},
	["muse.w04.046"] = {
		"Prima gli stivali, poi la cintura, poi lo zaino, poi un respiro lungo. Cambia l'ordine e la giornata va storta.",
		"Non credo alla fortuna. Semplicemente non infilo mai prima lo stivale sinistro.",
		"Lo stesso piccolo rito prima di partire, ogni volta. Non sono superstizioni: è scrupolo.",
	},
	["muse.w04.048"] = {
		"Parlo con l'equipaggiamento. Non risponde, e già questo lo mette sopra molta gente.",
		"Sì, ho ringraziato la cinghia per aver tenuto. Qualcuno deve pur tenere alto il morale.",
	},
	["muse.w04.049"] = {
		"Prima di ripartire dico i nomi degli ultimi posti lasciati, piano, perché sappiano che li ho notati.",
		"Ripeto sottovoce i nomi degli ultimi luoghi attraversati, così nessuno resta senza un saluto.",
	},
	["muse.w04.050"] = {
		"Ogni muscolo ha presentato il suo reclamo. Li ho letti tutti. Respinti.",
		"Fa male la spalla, fa male il ginocchio, e qualcosa nella schiena ha aperto una vertenza tutta sua.",
		"Le articolazioni hanno formato un consiglio e si rifiutano di collaborare. Ho posto il veto.",
	},
	["muse.w04.051"] = {
		"Dopo uno scontro le mani mi tremano sempre un po'. Le lascio fare: se lo sono guadagnato.",
		"Mani rimaste ferme per tutta la battaglia hanno il diritto di tremare, dopo.",
	},
	["muse.w04.052"] = {
		"Ho lividi in punti dove non ricordo di aver preso colpi. Chiunque sia stato, è stato scrupoloso.",
		"Livido nuovo. Nessun ricordo di essermelo guadagnato. Il mondo ha cominciato a farmi pagare in anticipo.",
	},
	["muse.w04.053"] = {
		"Il corpo tiene il registro di ogni scontro. Me lo rilegge ogni volta che mi alzo troppo in fretta.",
		"Ogni battaglia lascia una riga nel libro del corpo. Certe pagine preferirei non sfogliarle.",
	},
	["muse.w04.055"] = {
		"Stanchezza non vuol dire fine. Il corpo ama confonderle.",
		"Il corpo annuncia la fine molto prima che arrivi. Lo lascio parlare e vado avanti.",
		"Ogni dolore è un'opinione. Le ascolto tutte, poi voto con i piedi.",
	},
	["muse.w04.056"] = {
		"Certi giorni questo corpo mi sembra un prestito, e chi me l'ha prestato lo rivuole con gli interessi.",
		"Questo corpo è in prestito, ne sono {g:sicuro|sicura}. E gli interessi si pagano in dolori.",
	},
	["muse.w04.059"] = {
		"Gli sconosciuti gentili mi preoccupano più di quelli scortesi. La scortesia almeno è onesta sul prezzo.",
		"Per strada mi fido più di un muso lungo che di un sorriso. Il muso lungo non sta vendendo niente.",
		"Chi sorride troppo in fretta vuole sempre qualcosa. Chi brontola vuole solo che ti levi di torno.",
	},
	["muse.w04.060"] = {
		"Quasi tutto l'aiuto che si riceve in viaggio viene da gente che non rivedrai. Lo si restituisce al prossimo sconosciuto, o mai.",
		"La gentilezza degli sconosciuti non si ripaga a loro. Si può solo passare a qualcun altro.",
	},
	["muse.w04.061"] = {
		"Tutti quelli che incontro hanno un consiglio. Nessuno ha un laccio di scorta.",
		"Consigli gratis a ogni passo. Stivali gratis, curiosamente, da nessuna parte.",
	},
	["muse.w04.062"] = {
		"Il trucco per vivere a lungo in viaggio è noioso: guarda due volte, mangia spesso, e diffida di ogni certezza, soprattutto delle tue.",
		"Nessun segreto per restare vivi: solo una lunga lista di piccole abitudini noiose, rispettate ogni giorno.",
		"Restare in vita non è un talento. Sono cento piccole faccende per cui nessuno applaude.",
	},
	["muse.w04.063"] = {
		"I coraggiosi fanno le storie migliori. I prudenti restano a raccontarle.",
		"Agli audaci le canzoni. Ai prudenti la cena, dopo.",
	},
	["muse.w04.064"] = {
		"La morte non ha bisogno di grandi motivi. Una cinghia allentata, un passo falso. Per questo controllo la cinghia.",
		"Quasi tutti i morti di cui ho sentito parlare non sono stati sconfitti. Sono stati solo un po' distratti, una volta.",
	},
	["muse.w04.065"] = {
		"Mai affrontare qualcosa senza averlo osservato un po' prima. Lezione gratis.",
		"Guarda prima di colpire. Qualunque cosa sia, ti ha già mostrato come combatte.",
		"Prima gli occhi, poi le armi. Tutto si tradisce, se lo guardi abbastanza a lungo.",
	},
	["muse.w04.066"] = {
		"Ogni errore a cui sopravvivo è uno che riconoscerò la prossima volta. Ecco tutta la scuola.",
		"Sopravvivi a uno sbaglio e diventa un maestro. Altrimenti diventa la lezione di qualcun altro.",
		"Uno sbaglio a cui sopravvivo è una retta da pagare. Costa cara, ma le lezioni restano.",
	},
	["muse.w04.067"] = {
		"Con la morte ho fatto pace. È sul morire male che sto ancora trattando.",
		"La morte la accetto. Una morte stupida, inciampando nel mio zaino, me la rinfaccerei per l'eternità.",
	},
	["muse.w04.068"] = {
		"Mi chiedo chi troverà le mie cose, se dovesse andare male. Dovrei tenerle più in ordine.",
		"Se cado in qualche posto fuori mano, uno sconosciuto frugherà nel mio zaino. Spero almeno che gli torni utile.",
	},
	["muse.w04.069"] = {
		"Certi giorni non sono {g:sicuro|sicura} di essere la persona giusta per tutto questo. Vado lo stesso: quella giusta non si fa mai vedere.",
		"Il dubbio mi cammina accanto come un vecchio cane. Ho smesso di provare a rimandarlo a casa.",
		"Non so mai fino in fondo se sono all'altezza. Buffo quanto spesso la cosa finisca per non contare.",
	},
	["muse.w04.070"] = {
		"La paura può venire con me. Solo che la mappa non la tiene lei.",
		"Lascio che la paura viaggi con me. Le redini, però, non gliele passo mai.",
	},
	["muse.w04.071"] = {
		"Se fosse facile, qualcuno l'avrebbe già fatto. Quindi tocca a me.",
		"Le cose difficili non aspettano che arrivino gli eroi. Prendono chi trovano lì in piedi.",
		"Qualcuno più coraggioso farebbe comodo. Qualcuno più coraggioso non c'è.",
	},
	["muse.w04.072"] = {
		"Il coraggio è soprattutto non pensarci fino a dopo.",
		"Il coraggio non si fa sentire sul momento. Lo scopri dopo, da quanto tremi.",
		"Il coraggio succede quasi sempre prima che il pensiero lo raggiunga.",
	},
	["muse.w04.073"] = {
		"Non è la morte che mi spaventa. È l'idea di lasciare a metà qualcosa di importante.",
		"La fine, credo, saprei guardarla in faccia. Quello che non digerisco è lasciarmi dietro cose incompiute.",
	},
	["muse.w04.074"] = {
		"In piedi. Fai la prossima cosa. Le grandi decisioni possono aspettare, la prossima cosa no.",
		"C'è sempre una cosa da fare subito dopo. Falla, e le grandi domande si rimpiccioliscono.",
		"Quando tutto sembra troppo grande, scegli il compito utile più piccolo e parti da lì.",
	},
	["muse.w04.075"] = {
		"Se ho paura? Tantissima. Se vado lo stesso? A quanto pare.",
		"Paura, sì. Fare marcia indietro, no. Sono sempre state due domande diverse.",
	},
	["muse.w04.076"] = {
		"Non sono le battaglie a tenermi {g:sveglio|sveglia}. È l'attimo prima, quando potevo ancora scegliere diversamente.",
		"Ogni scontro comincia con una scelta. Quasi sempre riesco a conviverci.",
	},
	["muse.w04.077"] = {
		"Il coraggio viene più facile quando qualcuno guarda. Senza testimoni deve salire da più in fondo.",
		"Senza nessuno per cui fare la parte del valoroso, devo scavare più a fondo e trovare un motivo mio.",
	},
	["muse.w04.078"] = {
		"Verrà il giorno in cui non ce la farò più. Non è questo.",
		"Lo saprò, quando avrò finito. Non ho finito.",
	},
	["muse.w04.079"] = {
		"Avventura, dicevano. Nessuno aveva parlato delle commissioni.",
		"Mi avevano promesso la gloria. Per lo più consegno pacchi e mi faccio mordere.",
		"Tra le leggende e la verità c'è un sacco di roba da andare a prendere.",
	},
	["muse.w04.080"] = {
		"Se l'eroismo avesse un odore, sarebbe sudore, cuoio vecchio e la zuppa di ieri.",
		"Nessuno dipinge gli eroi con l'odore che hanno davvero. È più gentile così.",
	},
	["muse.w04.082"] = {
		"Ci sarà di sicuro un bardo che sta migliorando parecchio la mia vita. Bene. Qualcuno doveva.",
		"Se mai un bardo canterà di me, spero che la canzone salti la parte degli stivali.",
	},
	["muse.w04.083"] = {
		"Un giorno mi sistemerò in un posto tranquillo e noioso. Lo odierò nel giro di una settimana.",
		"Prima o poi: una sedia, un fuoco, niente che succede. Dopo tre giorni sarei già lì ad arrampicarmi sui muri.",
	},
	["muse.w04.084"] = {
		"Il mondo è pieno di meraviglie. Le calze pulite, purtroppo, non sempre.",
		"Ne ho viste di meraviglie in viaggio. Un paio di calze asciutte è più raro di tutte.",
	},
	["muse.w04.085"] = {
		"Ogni creatura di questo mondo sembra pensare che io sia cibo o guai. Mi piacerebbe non essere né l'uno né l'altro, almeno una volta.",
		"Per quasi tutto quello che c'è là fuori sono o la cena o un fastidio. Mai un ospite.",
	},
	["muse.w04.086"] = {
		"Se qualcuno tiene il punteggio, vorrei contestare parecchie delle prime mani.",
		"Vorrei due parole con chi ha scritto le regole di questo mondo. Anzi, parecchie.",
	},
	["muse.w04.087"] = {
		"Sì, parlo da {g:solo|sola}. Ogni tanto mi serve il parere di un esperto.",
		"Mi ascolto meglio di chiunque altro e mi critico peggio di chiunque altro. Un lavoro impegnativo.",
	},
	["muse.w04.088"] = {
		"Nelle vecchie storie nessuno fa mai la fila per farsi riparare l'equipaggiamento. Ecco come capisci che sono storie.",
		"Nessuna ballata ha una strofa sul conto delle riparazioni. La scriverei io, ma verrebbe troppo triste.",
	},
	["muse.w04.089"] = {
		"Se non lo faccio io, chi lo farà? Continuo a sperare che la risposta sia qualcuno che ha dormito di più.",
		"Qualcuno deve farlo. Ho controllato, e continua a toccare a me.",
	},
	["muse.w04.090"] = {
		"I guai del mondo sono troppo grandi per un paio di mani. Per fortuna di mani ce ne sono tante.",
		"Non posso aggiustare il mondo. Posso aggiustare il pezzo che ho davanti, e fidarmi degli altri per il resto.",
		"Nessuno aggiusta il mondo. Abbastanza gente che aggiusta il proprio angolo ci va vicino.",
	},
	["muse.w04.091"] = {
		"Ogni epoca crede di essere l'ultima. Finora si sono sbagliate tutte.",
		"Da sempre la gente crede che la fine sia vicina. Il mondo continua a declinare l'invito, con garbo.",
		"Nelle storie il mondo è finito una dozzina di volte. Il giorno dopo, però, si ripresenta sempre.",
	},
	["muse.w04.092"] = {
		"In tanti sono morti per questo mondo. Certi giorni mi chiedo se lo sa.",
		"Il mondo è pieno di tombe che nessuno visita. Immagino che la mia sarà una di quelle.",
	},
	["muse.w04.093"] = {
		"Ogni villaggio che si ricostruisce dopo un'incursione è una discussione che vorrei vincere.",
		"In questo momento qualcuno sta rimettendo a posto un tetto sfondato da una guerra. Voglio stare dalla sua parte.",
		"Chissà dove, un muro crollato si sta rialzando, pietra su pietra. Io sto da quella parte.",
	},
	["muse.w04.094"] = {
		"Qualcuno deve mettersi tra le tenebre e i contadini. Oggi, tanto vale che sia io.",
		"Al mondo servono meno eroi e più gente che si presenta. Questo lo so fare.",
	},
	["muse.w04.095"] = {
		"Gli imperi sorgono, cadono e lasciano le loro macerie in giro, perché gli altri ci girino intorno.",
		"Ogni guerra lascia rovine, e la generazione dopo ci costruisce le case.",
	},
	["muse.w04.096"] = {
		"In questo mondo c'è tanta rabbia, e quasi tutta è così vecchia da aver dimenticato il perché.",
		"Quasi tutti gli odi che ho incontrato sono più vecchi di chi li porta. Ereditati, come mobili brutti.",
	},
	["muse.w04.097"] = {
		"Se lascio il mondo un po' meno rotto di come l'ho trovato, mi basta.",
		"Lascia le cose un filo meglio di come le hai trovate. Ambizione bassa, lavoro onesto.",
	},
	["muse.w04.098"] = {
		"Ogni cosa bella finisce. Ho deciso di farne un motivo per accorgermene, non per piangerla in anticipo.",
		"Niente dura, ed è proprio per questo che guardo bene le cose finché ci sono.",
	},
	["muse.w04.099"] = {
		"Tutti camminiamo verso la stessa ultima porta. Vorrei solo arrivarci con gli stivali ai piedi e i debiti pagati.",
		"La fine arriva per tutti. Chiedo solo che mi colga nel mezzo di qualcosa.",
	},
	["muse.w04.100"] = {
		"La magia ronza sotto ogni cosa, in questo mondo. Quasi nessuno la sente. Forse sono i fortunati.",
		"Il mondo è impregnato di vecchi poteri che filtrano dalle crepe. C'è sempre qualcuno che finisce per berli.",
		"In questo mondo c'è più potere lasciato in giro di quanto chiunque abbia il buon senso di non toccare.",
	},
	["muse.w04.101"] = {
		"Tutti gli incantesimi del mondo, e nessuno ne ha ancora trovato uno per tenere asciutti gli stivali.",
		"Fuoco dalla punta delle dita, fulmini a comando, e nemmeno un incantesimo per riparare una cinghia strappata.",
		"C'è chi piega le leggi del mondo con una parola, e nessuno è riuscito a inventare un incanto contro le vesciche.",
	},
	["muse.w04.102"] = {
		"Il potere costa sempre qualcosa. Il guaio è che raramente il conto arriva a chi l'ha usato.",
		"Ogni grande incantesimo della storia l'ha pagato qualcuno. Di rado chi l'ha lanciato.",
	},
	["muse.w04.103"] = {
		"Certi giorni il mondo sembra un libro con metà delle pagine incollate. Continuo a grattare gli angoli.",
		"Sotto questo mondo ce n'è più che sopra. Non so se voglio leggere fin lì.",
		"Ogni risposta che il mondo mi dà ha una pagina strappata proprio nel mezzo.",
	},
	["muse.w04.104"] = {
		"Ogni cosa ha una storia più vecchia di quella che racconta. Anche una soglia. Anche io.",
		"Niente è soltanto quello che sembra. Il mondo è troppo vecchio per permetterselo.",
	},
	["muse.w04.105"] = {
		"Qualunque cosa vegli su questo mondo, spero che non tenga il conto. O che almeno dia voti generosi.",
		"Se lassù qualcuno ascolta, ho qualche lamentela e un grazie. In quest'ordine.",
		"Alle potenze di lassù non chiedo molto. Un po' di fortuna, un po' di clemenza, e che guardino altrove quando impreco.",
	},
	["muse.w04.106"] = {
		"C'è chi prega prima di combattere e chi bestemmia. Non sono {g:sicuro|sicura} che la differenza arrivi lontano quanto credono.",
		"Preghiere e maledizioni finiscono nello stesso posto, sospetto. Chi apre la posta deve avere senso dell'umorismo.",
	},
	["muse.w04.107"] = {
		"Un giorno la racconteranno come si deve. Intanto continuo a fornire il materiale.",
		"Le canzoni verranno dopo. Per ora sto ancora scrivendo le strofe.",
		"Se mai qualcuno ne farà una canzone, voglio che abbia materiale in abbondanza.",
	},
	["muse.w04.108"] = {
		"La gloria fa rumore e svanisce in fretta. Il tetto lo regge il lavoro silenzioso.",
		"Nessuno canta di chi ha tenuto in piedi le cose. Eppure è merito loro se c'è ancora qualcuno che canta.",
		"Le statue vanno a chi ha caricato. Il mondo però lo tiene insieme chi ha riparato gli steccati.",
	},
	["muse.w04.109"] = {
		"La rabbia è un buon fuoco per cucinare e uno pessimo accanto a cui dormire.",
		"Tengo la rabbia come una brace: utile, coperta, e mai in tasca.",
		"La rabbia ti scalda per un'ora e ti tiene {g:sveglio|sveglia} per tre.",
	},
	["muse.w04.110"] = {
		"Chiunque sia il prossimo a sbarrarmi la strada, spero abbia mangiato. Gli aspetta una lunga giornata.",
		"Non sono in vena di farmi spingere. Il mondo è avvisato.",
		"State alla larga. Ho finito la pazienza e mi mancano i motivi per trovarne altra.",
	},
	["muse.w04.111"] = {
		"Quasi tutte le bestie vogliono solo mangiare e non essere mangiate. Sarebbe ipocrita fargliene una colpa.",
		"Le terre selvagge non odiano nessuno. Hanno fame, e lo dicono chiaro.",
		"Nella natura niente è crudele apposta. È un talento che hanno solo le persone.",
	},
	["muse.w04.112"] = {
		"Alla fine la natura si riprende tutto: mura, strade, regni. Non ha fretta, ed è peggio.",
		"Lascia una cosa abbastanza a lungo e qualcosa di verde se la prende. Il mondo è arrivato prima.",
		"Le radici hanno una pazienza che nessun esercito ha mai avuto. Dagli un secolo e spaccano qualunque muro.",
	},
	["muse.w04.113"] = {
		"Stare da {g:solo|sola} è facile. È abituarsi che mi preoccupa.",
		"La solitudine è buona compagnia, finché non comincia a finire le frasi al posto mio.",
		"Me la cavo bene con la mia sola compagnia. Forse troppo, e la cosa va tenuta d'occhio.",
	},
	["muse.w04.114"] = {
		"La mia voce suona strana quando non la uso da un po'. Arrugginita, come un cancello.",
		"Ore senza dire una parola, e poi apro bocca e mi spavento da {g:solo|sola}.",
	},
	["muse.w04.115"] = {
		"Il mondo non è mai buio del tutto. Chissà dove c'è sempre una finestra accesa, un fuoco, una lanterna che dondola su un carro.",
		"Per quanto vada male, qualcuno, in qualche angolo, sta accendendo una lampada. Qualcosa vorrà dire.",
	},
	["muse.w04.116"] = {
		"Domani potrebbe andare meglio. Di solito no, ma potrebbe, e basta questo per alzarsi.",
		"Le cose potrebbero migliorare. Improbabile, ma con le brutte notizie mi è già capitato di sbagliare.",
	},
	["muse.w04.117"] = {
		"Casa è una parola strana, in viaggio. Si restringe fino al fuoco a cui mi capita di sedere.",
		"Ovunque appoggi lo zaino diventa casa per un po'. Poi lo riprendo, e smette di esserlo.",
		"Mi porto la casa addosso come una lumaca, solo che la mia non ha tetto e si lamenta di più.",
	},
	["muse.w04.118"] = {
		"Ogni tanto mi mancano cose che non ho mai avuto: un orto, una porta che sia sempre la mia.",
		"Strano, avere nostalgia di un posto che non esiste. Uno tranquillo, con una porta, una panca e nessuna commissione.",
	},
	["muse.w04.120"] = {
		"Il coraggio è contagioso. Stai abbastanza accanto a qualcuno di valoroso e un po' ti si attacca.",
		"Il sangue freddo si diffonde come la febbre. Basta una persona salda in un brutto momento per reggere tutti gli altri.",
	},
	["muse.w04.121"] = {
		"Una promessa pesa, nello zaino. Cerco di portarmi dietro solo quelle che intendo mantenere.",
		"Ogni promessa che faccio finisce nello zaino con il resto. Ho imparato a farne meno, e a mantenerle.",
		"La mia parola pesa più di qualunque corazza. Scelgo con cura a chi darla.",
	},
	["muse.w04.122"] = {
		"So più cose di prima e ne capisco meno. Probabilmente è questo, imparare.",
		"Ogni risposta che trovo ha due domande nuove piegate dentro.",
	},
	["muse.w04.123"] = {
		"Le mani imparano più in fretta della testa. Le mie sanno cose che non saprei spiegare.",
		"Certe cose le mani ormai le fanno senza chiedermelo. La pratica è questo: il corpo che prende appunti.",
		"Le mie dita ricordano l'ordine delle cose meglio di me.",
	},
	["muse.w04.124"] = {
		"Il mondo mi ha insegnato parecchio, per lo più tirandomelo addosso.",
		"Le lezioni della strada arrivano tutte allo stesso modo: in fretta, forte, e una volta sola se va bene.",
	},
	["muse.w04.125"] = {
		"I nomi scivolano via. I volti restano un po'. Il modo in cui qualcuno mi ha trattato resta più a lungo di tutto.",
		"Un nome lo dimentico in un giorno, un volto in una stagione, ma una gentilezza la tengo per sempre.",
	},
	["muse.w04.140"] = {
		"Qualcosa non quadra e non so dire cosa. Tengo gli occhi aperti finché non lo capisco.",
		"Ancora quel prurito tra le scapole. Ho imparato a non discuterci.",
		"Non c'è niente che non vada, niente che io possa indicare. Di solito è il caso peggiore.",
	},
	["muse.w04.141"] = {
		"Una bella giornata. Non faccio domande, potrebbe sentirmi.",
		"Le cose vanno bene. Nessuno dica niente.",
		"Va tutto sospettosamente liscio. Me lo godo prima che se ne accorga.",
	},
	["muse.w04.142"] = {
		"Qualunque cosa ci sia in mezzo, farà bene ad avere pazienza. Passo, in un modo o nell'altro.",
		"Basta pesare i pro e i contro. La decisione è presa: il resto è solo distanza.",
	},
	["muse.w04.143"] = {
		"C'è qualcosa che non ho ancora capito, e mi tormenterà finché non ci arrivo.",
		"Una domanda mi ha piantato i denti addosso. Va bene. Vediamo chi molla per primo.",
		"Continuerò a rigirarmela in testa finché non svela il suo segreto o io non rinuncio a dormire.",
	},
	["muse.w04.145"] = {
		"Tutto sembra un po' più lontano del dovuto. Perfino le mie mani.",
		"È una di quelle giornate in cui il mondo arriva come attraverso un muro.",
		"Oggi i colori si sono fatti sottili, come un mantello lavato troppe volte.",
	},
	["muse.w04.146"] = {
		"Mascella serrata. Non me n'ero {g:accorto|accorta}. Molla, respira, continua a guardare.",
		"Di nuovo le spalle fin sotto le orecchie. Giù. Respira. Occhi aperti.",
	},
	["muse.w04.147"] = {
		"Chiunque abbia fatto il mondo, su certe parti ci ha messo il suo tempo. Bisogna riconoscerlo.",
		"Certe cose al mondo meritano un momento di rispetto, e basta. Glielo concedo.",
	},
	["muse.w04.149"] = {
		"Il lavoro è lavoro. Nessuno verrà a farlo al posto mio.",
		"Lamentarsi non ha mai finito un lavoro. Al lavoro, allora.",
		"A forza di desiderarlo non si fa da sé. Rimbocchiamoci le maniche.",
	},
	["muse.w04.152"] = {
		"A chiunque stia passando una giornata peggiore della mia: spero che giri.",
		"Una parola gentile per chi è ancora in piedi quando non vorrebbe esserlo.",
	},
	["muse.w04.153"] = {
		"Nessuno chiede mai come stanno le ginocchia dell'eroe. Male. Stanno male.",
		"Ogni leggenda tace sulle ginocchia. Comincio a capire perché.",
	},
	["muse.w04.154"] = {
		"Questo mondo ha seppellito più di quanto riesca a ricordare. Qualcuno dovrebbe tenere il conto, e a quanto pare tocca a me.",
		"Ci sono più nomi sottoterra che in giro sulle proprie gambe. Cerco di tenere compagnia almeno a qualcuno.",
	},
	["muse.w04.155"] = {
		"Le guerre si spengono. Le pestilenze passano. L'aratro riprende a solcare la terra. Il mondo è testardo, in questo.",
		"Qualunque cosa devasti il mondo, alla primavera dopo qualcuno pianta qualcosa tra le macerie.",
		"Ogni rovina che ho visto, prima o poi, ha avuto qualcuno che ne spazzava la soglia.",
	},
	["muse.w04.156"] = {
		"Gli eroi sono solo persone che non se ne sono andate quando sarebbe stato ragionevole.",
		"Quasi tutto ciò che chiamano eroismo è restare un po' più a lungo di quanto consigli il buon senso.",
	},
	["muse.w04.157"] = {
		"I momenti di quiete sono così rari che ho imparato a starci dentro senza muovermi.",
		"Quando il mondo tace per un attimo, cerco di non fare rumore. Potrebbe accorgersene e ricominciare.",
	},
	["muse.w04.158"] = {
		"La speranza non è un sentimento, è una faccenda. La sbrighi ogni giorno, che tu ne abbia voglia o no.",
		"Certi giorni la speranza è solo infilarsi gli stivali. Conta lo stesso.",
		"La speranza è un'abitudine piccola e noiosa: alzarsi, guardare avanti, ricominciare.",
	},
	["muse.w11.body.001"] = {
		"Rialzarsi da terra è un lavoro in tre tempi: ginocchia, mani, e poi una parola che non ripeto.",
		"Non mi alzo: mi rimonto in piedi, un pezzo brontolone dopo l'altro.",
		"Prima acconsentono le ginocchia, poi le mani, infine la schiena, a malincuore. Alzarsi è una trattativa.",
	},
	["muse.w11.body.002"] = {
		"Questo livido è passato dal viola al verde a una specie di senape. È la cosa più colorata che possiedo.",
		"I lividi segnano il tempo meglio di un orologio: viola, poi verde, poi giallo, poi niente.",
	},
	["muse.w11.body.003"] = {
		"Il colpo arriva oggi. Il dolore domani, puntuale come un esattore.",
		"Il dolore viaggia come la posta lenta: la botta oggi, la lettera che ne parla il giorno dopo.",
	},
	["muse.w11.body.004"] = {
		"Su quanto sia lontano, il suolo vince sempre la discussione.",
		"Mai fidarsi di una sporgenza che giura di non essere alta. Il terreno la pensa diversamente.",
	},
	["muse.w11.body.005"] = {
		"Metà del combattere è saper cadere in modo da potersi rialzare. A cadere non lo insegna nessuno.",
		"Impara ad atterrare prima di imparare a saltare. È all'atterraggio che si paga.",
		"Menare colpi lo sanno fare tutti. Finire a terra senza rompersi niente è l'arte di cui nessuno si vanta.",
	},
	["muse.w11.body.007"] = {
		"Ho gli occhi che grattano come sabbia, come se li avessi tenuti aperti una settimana per ordine di qualcun altro.",
		"Con gli occhi stanchi ogni forma si fa più morbida e ogni distanza più lunga.",
	},
	["muse.w11.body.008"] = {
		"Un taglio sul palmo è il più crudele. Ogni cosa che afferro gli ricorda di riaprirsi.",
		"Tra tutti i posti dove tagliarsi, la mano è il peggiore. Deve continuare a lavorare mentre si lamenta.",
	},
	["muse.w11.body.009"] = {
		"Quando una ferita comincia a prudere, sta guarendo. L'unico modo che ha il corpo per dire grazie è dare fastidio.",
		"Un taglio che prude è buon segno. La guarigione non è mai stata educata.",
	},
	["muse.w11.body.010"] = {
		"Quel rumore? Il mio stomaco. È stato molto paziente e gradirebbe un riconoscimento.",
		"Scusate il brontolio. È lo stomaco, e non ce l'ha con voi.",
		"Non badate a quel borbottio. La pancia sta stendendo un reclamo ufficiale.",
	},
	["muse.w11.body.011"] = {
		"L'acqua sa di quello che l'ha portata: l'otre, il barile, il secchio. Ho smesso di farci caso, basta che bagni.",
		"Ogni otre regala all'acqua un sapore di cuoio vecchio. Poco prezzo, pur di non patire la sete.",
	},
	["muse.w11.body.012"] = {
		"Con lo stufato comprato per strada c'è una sola regola: mangiarlo in fretta e non chiedere mai cos'era la carne.",
		"Qualsiasi stufato dalla pentola di uno sconosciuto, un tempo, aveva le zampe. Quante, è una domanda che lascio stare.",
	},
	["muse.w11.body.013"] = {
		"Il primo boccone dopo un lungo digiuno è la cosa più vicina a un miracolo su cui possa contare.",
		"Il cibo mangiato con troppa fame è un po' sprecato: non lo senti. Cerco di rallentare almeno al secondo boccone.",
	},
	["muse.w11.body.015"] = {
		"C'è una stanchezza che tiene svegli. Il corpo si sdraia e la testa continua a fare la ronda.",
		"Troppo stanchi per dormire: il trucco più stupido che il corpo conosca, e ne conosce parecchi.",
	},
	["muse.w11.body.016"] = {
		"Un sonnellino da seduti vale più di quanto dura. Darei parecchio per dieci minuti a occhi chiusi.",
		"Dieci minuti rubati a occhi chiusi e tornerei una persona migliore. Di poco.",
	},
	["muse.w11.body.017"] = {
		"Ogni giaciglio arriva con un sasso sotto. Non ce l'ho mai messo io, eppure è sempre lo stesso sasso.",
		"Dovunque mi sdrai, una radice trova la mia schiena. Al mondo devono esserci radici che non fanno altro.",
	},
	["muse.w11.body.018"] = {
		"Al risveglio c'è un attimo in cui non so dove sono, né chi. Poi arrivano i dolori e si presentano.",
		"Svegliarsi in un posto estraneo: c'è un istante vuoto prima che il corpo faccia rapporto. Quasi riposante.",
	},
	["muse.w11.body.020"] = {
		"Un boccale è una medicina. Due sono una decisione. Tre sono una storia che racconterà qualcun altro, su di me.",
		"Un bicchiere per calmare i dolori, va bene. Al terzo i dolori stanno benissimo e il problema sono io.",
	},
	["muse.w11.body.021"] = {
		"Metà di questo mestiere è sedersi a mangiare e bere tra uno scontro e l'altro. Le canzoni saltano quella metà.",
		"Combatti, siediti, mangia, bevi, alzati, combatti. Il grosso del lavoro sta in quel sedersi.",
	},
	["muse.w11.body.022"] = {
		"Potrei chiamare per nome i miei dolori, come i vicini di casa: la spalla, il ginocchio, quello in fondo alla schiena che passa solo ogni tanto.",
		"Ogni dolore ha il suo carattere. La spalla tiene il muso, il ginocchio urla, la schiena aspetta e basta.",
	},
	["muse.w11.body.023"] = {
		"Dolorante non vuol dire rotto. In piedi.",
		"Ammaccature sì, sconfitta no. Io abito in quella differenza.",
		"Fa male. Funziona. Basta così.",
	},
	["muse.w11.body.024"] = {
		"L'equipaggiamento si perde, le monete si spendono, le strade finiscono. Questo corpo è l'unica cosa che non posso lasciare in una locanda. Dovrei trattarlo meglio.",
		"Tutto il resto che possiedo me lo potrebbe rimpiazzare un mercante. Questo corpo no, eppure lo tratto peggio degli stivali.",
	},
	["muse.w11.body.025"] = {
		"Il mio equipaggiamento viene da cinque padroni diversi, e nessuno era d'accordo sul colore. Sembro un mercatino dell'usato che ha imparato a camminare.",
		"Nemmeno un pezzo di quello che indosso è stato fatto per stare con un altro. Sono un mosaico della fortuna altrui.",
	},
	["muse.w11.body.026"] = {
		"L'equipaggiamento nuovo non calza mai. Deve imparare la mia forma, e io devo imparare dove stringe.",
		"Qualunque cosa indossi ci mette un po' a smettere di essere un'estranea. Poi un giorno si muove quando mi muovo io.",
	},
	["muse.w11.body.027"] = {
		"Cambiare un pezzo vecchio con uno migliore è buon senso e poca lealtà. Quello vecchio meritava sempre un compratore più gentile.",
		"Ogni volta che salta fuori qualcosa di meglio, il pezzo vecchio finisce a un mercante che non lo guarda nemmeno. Un'occhiata se la meritava.",
	},
	["muse.w11.body.029"] = {
		"Un mantello serve soprattutto a impigliarsi. Rami, porte, chiodi, i gomiti degli altri.",
		"Ogni spina del mondo vuole un pezzo di quello che indosso. Molto richiesti, i miei vestiti.",
	},
	["muse.w11.body.030"] = {
		"Ho toppe sopra le toppe. Prima o poi questi non saranno più gli stessi calzoni, ma la loro storia.",
		"Rammenda una cosa abbastanza volte e indossi il rammendo, non la cosa.",
	},
	["muse.w11.body.031"] = {
		"Ogni punto che cucio è un po' peggio di quello di un sarto e molto meglio di un buco.",
		"Ago, filo, e la pazienza che per il resto non ho mai. Cucire mi calma, ma solo finché dura.",
	},
	["muse.w11.body.032"] = {
		"I fabbri guardano il mio equipaggiamento come i guaritori una brutta ferita: un lungo silenzio, poi una cifra.",
		"Porgi a un fabbro qualcosa di ammaccato e guardagli la faccia. È una diagnosi, e la cura si paga sempre.",
	},
	["muse.w11.body.033"] = {
		"L'equipaggiamento non si rompe mai quando fa comodo. Si consuma per settimane e cede nel momento peggiore, per dispetto.",
		"Tutto quello che possiedo si sta consumando al suo ritmo. Spero solo che non si mettano d'accordo sullo stesso giorno.",
	},
	["muse.w11.body.034"] = {
		"Riparazioni o cena. Sempre la stessa scelta, e lo stomaco perde ogni volta.",
		"Aggiustare la roba o riempire la pancia. Vince la roba, e la pancia se lo segna.",
	},
	["muse.w11.body.035"] = {
		"Il rame in un mucchietto, l'argento in un altro, e un posticino piccolissimo per l'oro, nel caso passi a trovarmi.",
		"Divido le monete per colore come un bambino divide i sassolini. Non aumentano, ma almeno stanno in ordine.",
	},
	["muse.w11.body.036"] = {
		"Una borsa vuota ha una virtù: nessuno si prende la briga di rubarla. Quando sono al verde dormo benissimo.",
		"La povertà, a modo suo, riposa. Niente da contare, niente da sorvegliare, niente da perdere tranne la borsa.",
	},
	["muse.w11.body.037"] = {
		"Svuotare una borsa piena da un mercante mi fa {g:ricco|ricca} per un'oretta. Poi la borsa si ricorda a cosa serve.",
		"Subito dopo che un mercante mi ha pagato c'è un breve momento glorioso in cui mi sento {g:un gran signore|una gran signora}. Dura fino al bancone successivo.",
	},
	["muse.w11.body.038"] = {
		"I mercanti pagano un rame per una zanna spezzata. Ho smesso di chiedere cosa se ne facciano, di tutte quelle.",
		"Deve esistere un magazzino pieno di artigli scheggiati e pelli strappate, con un mercante che li conta tutto contento.",
	},
	["muse.w11.body.039"] = {
		"Borse piene. Quindi la cosa più bella del mondo sta per cadermi ai piedi.",
		"Appena non c'è più posto, salta fuori qualcosa di meraviglioso. Immancabilmente.",
	},
	["muse.w11.body.040"] = {
		"Le borse piene sono una lezione sul valore delle cose. Cosa resta, cosa va, e perché me ne portavo dietro metà.",
		"Svuotare le borse è l'unico momento in cui sono {g:onesto|onesta} su ciò che mi serve. Dura fino al prossimo mucchio di cianfrusaglie.",
	},
	["muse.w11.body.042"] = {
		"Non c'è gioia come una borsa nuova, vuota e capiente, piena soltanto di possibilità.",
		"Una borsa vuota è l'oggetto più fiducioso che conosca. Niente l'ha ancora delusa.",
	},
	["muse.w11.body.043"] = {
		"Tengo questo corpo come un carrettiere tiene una ruota: un po' di grasso, un'occhiata regolare, e l'orecchio teso al primo cigolio.",
		"In viaggio il corpo è un attrezzo come gli altri. Pulirlo, nutrirlo, farlo riposare, e ascoltarlo quando comincia a sferragliare.",
		"Tratta il corpo come un buon attrezzo e ti perdonerà parecchio. Trascuralo e sceglierà il giorno peggiore per fartelo sapere.",
	},
	["muse.w11.body.044"] = {
		"Il coraggio viene meglio a stomaco pieno. Nessuno ha mai fatto un discorso eroico a digiuno, o se l'ha fatto era breve.",
		"La paura parla più forte a pancia vuota. Riempi l'una e l'altra si calma un po'.",
		"Metà di quello che chiamano fegato è un pasto decente mangiato un'ora prima. Non me ne vergogno.",
	},
	["muse.w11.body.046"] = {
		"Gli avvisi ne chiedono sempre dieci. Mai nove, mai undici. Qualcuno là fuori ha una mente molto ordinata e nessuna idea di quanto costino dieci.",
		"Riportarne dieci di qualcosa: il lavoro più antico del mestiere. Nessuno chiede mai perché proprio dieci.",
		"Dieci pelli, dieci artigli, dieci di qualunque cosa capiti. Mi piacerebbe conoscere chi ha deciso che il mondo va a decine.",
	},
	["muse.w11.body.047"] = {
		"L'acqua fredda sul viso mi fa più bene di tanti rimedi. E costa meno.",
		"Lavati mani e faccia, e metà della giornata se ne va con lo sporco.",
		"Un catino d'acqua pulita è un lusso che si nota solo dopo averne fatto a meno.",
	},
	["muse.w11.body.048"] = {
		"Vestiti asciutti, pancia piena, niente in fiamme. Dammi questo e il resto tienitelo.",
		"Una camicia pulita e qualcosa di caldo da mangiare. Ecco tutte le mie pretese.",
		"Cosa voglio? Una sedia, un cucchiaio e dieci minuti senza niente da prendere a botte. Pretese modeste, lo so.",
	},
	["muse.w11.body.049"] = {
		"Di tutto quello che mi porto dietro, la cosa che rimpiangerei davvero è il cucchiaio. Non mi ha mai {g:deluso|delusa}.",
		"Le armi si cambiano, le borse si barattano. Il cucchiaio resta. Ogni viaggiatore assennato ha un cucchiaio preferito.",
		"Un buon cucchiaio è un amico silenzioso. Non chiede niente e si presenta a ogni pasto.",
	},
	["muse.w11.body.050"] = {
		"Metà di quello che trovo è robaccia dal nome altisonante. Un «pregiato» questo, un «ornato» quello, buoni per un rame e un'alzata di spalle.",
		"Il bottino è quasi sempre una delusione incartata nella speranza. Poi un mercante la scarta per tre monete di rame.",
		"Ogni cassetta chiusa a chiave promette un tesoro. Quasi tutte mantengono la promessa con una tarma e due monete di rame.",
	},
	["muse.w11.body.052"] = {
		"Frugare tra i caduti non diventa mai una cosa comoda. Diventa solo più rapida, e forse è peggio.",
		"Ogni borsa che tolgo a un caduto erano i risparmi attenti di qualcuno. Cerco di non pensarci, e non ci riesco.",
		"Non esiste un modo educato di derubare i morti. Cerco solo di farlo senza fretta e senza battute.",
	},
	["muse.w11.body.053"] = {
		"Le mie gambe hanno più giudizio della mia testa. Sanno quando andarsene molto prima che io lo ammetta.",
		"Scappare non è una vergogna. Le gambe sono fatte apposta, e hanno salvato più vite dei discorsi.",
		"A ogni piano coraggioso che faccio, i piedi mettono il veto almeno una volta, in silenzio. Di solito hanno ragione.",
	},
	["muse.w11.body.054"] = {
		"Un carico che ti piega il primo giorno è normale al decimo. Il carico non è cambiato. Tu sì.",
		"Porta qualcosa di pesante abbastanza a lungo e smetterà di pesare. Non perché si sia alleggerito.",
		"La forza è soprattutto abitudine. Lo zaino resta lo stesso; è la schiena che impara.",
	},
	["muse.w11.body.055"] = {
		"Sentito quel clic? È la spalla che annuncia di essere ancora attaccata. Grazie, spalla.",
		"Qualcosa dentro di me ha appena fatto crac. Scelgo di credere che fosse utile.",
		"Ogni articolazione che ho fa un rumore. Muovendomi nell'ordine giusto potrei suonarci un motivetto.",
	},
	["muse.w11.body.056"] = {
		"Un letto vero è così morbido che sembra una trappola. Metà del tempo resto {g:sveglio|sveglia} ad aspettare il sasso che non c'è.",
		"Lenzuola, un cuscino, un materasso senza bozzi. La mia schiena non si fida. Nemmeno io, del tutto.",
		"I materassi di piume sono sprecati per chi viaggia. Ci si dorme sul bordo, con un piede già fuori.",
	},
	["muse.w11.body.057"] = {
		"A volte dormo con gli stivali ai piedi. Toglierli sarebbe una promessa che non posso mantenere.",
		"Sdraiarsi vestiti di tutto punto è un modo per dire al mondo: se proprio devi, svegliami pure.",
		"Dormi abbastanza spesso con l'equipaggiamento addosso e smette di sembrare un'armatura: diventa pelle.",
	},
	["muse.w11.body.059"] = {
		"Casa, sospetto, è soprattutto un posto dove il corpo ha il permesso di cedere alla stanchezza senza che nessuno guardi.",
		"Quello che mi manca non è un luogo. È poter crollare dove sono, sapendo che niente verrà a prendermi.",
		"L'idea di casa che mi porto dietro è semplicissima: un letto che non devo sorvegliare.",
	},
	["muse.w11.body.060"] = {
		"Vendi la cosa sbagliata a un mercante e la ricomprerai più cara. I mercanti la chiamano lezione; io la chiamo furto con le buone maniere.",
		"Mai vendere di fretta. I mercanti si tengono i tuoi rimpianti, e il prezzo sale appena li rivuoi.",
	},
	["muse.w11.body.061"] = {
		"Le lezioni costano monete. Saltarle costa di più, e quel conto si paga in lividi.",
		"Ogni nuova abilità ha un prezzo dall'istruttore, e uno più alto se ne faccio a meno.",
		"Le monete spese per imparare sono le uniche che continuano a tornare indietro.",
	},
	["muse.w11.body.062"] = {
		"Fasciare, annodare, provare la presa. Da vicino, il coraggio somiglia parecchio al pronto soccorso.",
		"Il coraggio, di solito, non ha niente di glorioso: stringere una benda coi denti e tornare al lavoro.",
		"Il momento più coraggioso di quasi ogni giornata è una benda stretta e la decisione di andare avanti. Silenzioso, e conta.",
	},
	["muse.w11.body.063"] = {
		"Dolori, lividi, pancia vuota. Va bene. Nessuno di loro ha diritto di parola.",
		"Fa male tutto e non c'è niente di rotto. Andiamo.",
		"Il corpo si lamenta. Può lamentarsi strada facendo.",
	},
	["muse.w11.body.064"] = {
		"Quasi ogni giorno la fame mi cammina un passo dietro. Ho smesso di discuterci: la nutro quando posso.",
		"Un po' di fame è il mio stato normale. La sazietà è una festa.",
		"Porto la fame come porto lo zaino: la sento, la accetto, non ne parlo.",
	},
	["muse.w11.body.065"] = {
		"Quando ho abbastanza fame sogno il cibo, e nel sogno non riesco mai a mangiarlo. Anche il mio sonno ha senso dell'umorismo.",
		"Il sonno affamato è il più crudele: banchetti per tutto il tempo, e al risveglio nemmeno una briciola.",
	},
	["muse.w11.body.066"] = {
		"Questo mestiere ti insegna a mangiare in piedi, camminando, e ogni tanto con un occhio ai cespugli.",
		"Mangia quando c'è calma, e mangia in fretta, perché la calma non dura mai a lungo.",
		"Le buone maniere a tavola sono per chi ha una tavola. In viaggio si mastica, si manda giù, ci si guarda intorno.",
	},
	["muse.w11.body.068"] = {
		"Non lascio mai che l'otre si svuoti del tutto. L'ultimo sorso lo tengo per un'ora peggiore.",
		"In fondo alla borsa resta sempre qualcosa da mangiare, intatto. Non è per adesso. È per il giorno in cui servirà.",
	},
	["muse.w11.body.069"] = {
		"La cosa più leggera nelle mie borse è questa pietra del ritorno, e lotterei con un orso per tenermela.",
		"Qualunque cosa perda, la pietra del ritorno resta. È l'unica cosa qui dentro che conosce la strada per un letto.",
		"Una pietra che mi porta in una locanda. Di tutte le meraviglie di cui ho sentito parlare, è quella che terrei.",
	},
	["muse.w11.body.070"] = {
		"Non ho sonno. Sono {g:stanco|stanca} fino alle ossa, che è diverso: nessun riposo ci arriva davvero.",
		"C'è una stanchezza che il sonno non sfiora. Vorrebbe una settimana di niente, e io una settimana di niente non me la posso permettere.",
		"Certa fatica abita più in fondo di quanto qualunque riposo riesca a scavare.",
	},
	["muse.w11.body.072"] = {
		"Una borsa che tintinna è un invito. La mia è discretissima: non ha quasi niente da dire.",
		"Tengo le monete avvolte perché non tintinnino. Non che ce ne siano abbastanza per fare musica.",
	},
	["muse.w11.body.073"] = {
		"Contrattare non è il mio forte. Leggo il prezzo del mercante in quel sorriso prima ancora di aprire bocca.",
		"Contrattare è un duello in cui una sola delle due parti è venuta armata, e non sono io.",
		"A ogni affare che concludo me ne vado {g:convinto|convinta} di aver vinto. Poi vedo il mercante che fischietta.",
	},
	["muse.w11.body.074"] = {
		"Fasciarsi la schiena da soli è una lezione di umiltà. Certi punti li raggiunge solo un altro paio di mani.",
		"C'è sempre un punto che non riesco a medicarmi. Il corpo è stato chiaramente progettato pensando alla compagnia.",
	},
	["muse.w11.body.075"] = {
		"Un prurito proprio in mezzo alla schiena, esattamente dove non arriva niente di ciò che possiedo. Il mondo ha senso dell'umorismo.",
		"Un prurito sotto una cinghia allacciata è una piccola guerra privata, e la sto perdendo.",
		"Di tutti i nemici là fuori, il prurito che non riesco a raggiungere è quello che mi spezza il morale.",
	},
	["muse.w11.body.076"] = {
		"Nocche spaccate, un'unghia strappata, una scheggia che non trovo. Piccoli danni, e sono i piccoli danni a tormentarmi tutto il giorno.",
		"Le ferite grosse ricevono attenzioni. È la scheggia sotto la pelle che rovina un intero pomeriggio.",
	},
	["muse.w11.body.077"] = {
		"Promemoria: quando carica qualcosa di grosso, davanti è il lato sbagliato.",
		"Lezione del giorno: chi ha i denti più grossi merita più rispetto.",
		"Promemoria, per il bene dei lividi: abbassarsi prima.",
	},
	["muse.w11.body.078"] = {
		"Un corpo sopporta moltissimo, e poi un giorno non ce la fa più. Vorrei sapere quale giorno, prima che arrivi.",
		"Ogni corpo ha un limite scritto in qualche punto dentro di sé. Preferirei non scoprire il mio leggendolo nel modo peggiore.",
		"Guarire è più lento che rompersi. È tutta qui l'aritmetica di questo mestiere.",
	},
	["muse.w11.body.079"] = {
		"Ogni locanda che conosco serve la stessa zuppa. Ci dev'essere un unico grande pentolone sotto il mondo, e attingono tutte da lì.",
		"La zuppa di locanda è un'unica ricetta su cui il mondo intero si è messo d'accordo: calda, marrone e vagamente di cipolla.",
	},
	["muse.w11.body.080"] = {
		"Una sedia con lo schienale. Non sapevo di poter desiderare una cosa così piccola con tanta forza.",
		"Nessuno lo dice, ma uno dei grandi piaceri della vita è un sedile con lo schienale. Qualcuno dovrebbe dirlo.",
		"Gli sgabelli sono per chi ha ancora le gambe fresche. Dammi una sedia con schienale e braccioli e firmo qualsiasi cosa.",
	},
	["muse.w11.body.081"] = {
		"Metà delle mie bende sono nate come la camicia di qualcuno. Certi giorni, la camicia era la mia.",
		"In viaggio la stoffa è di due tipi: vestiti, e bende in attesa di diventarlo.",
	},
	["muse.w11.body.083"] = {
		"La gloria è quello che vedono gli altri. A me toccano una schiena rigida e una storia che sono troppo {g:stanco|stanca} per raccontare.",
		"Al racconto il trionfo. Al corpo la fattura. So quale dei due dura di più.",
	},
	["muse.w11.body.084"] = {
		"Al cibo caldo, agli stivali asciutti e all'equipaggiamento che regge. Il resto è fortuna.",
		"Alle piccole grazie: una cinghia rammendata, una borraccia piena, un posto a sedere contro un muro.",
		"Un brindisi, a nessuno in particolare: che il prossimo pasto sia caldo e il prossimo livido piccolo.",
	},
	["muse.w11.body.085"] = {
		"Tutto quello che c'è nelle mie borse è una piccola scommessa contro la morte: una benda qui, una cinghia di scorta là, un po' di cibo sul fondo.",
		"Fare i bagagli è una specie di preghiera senza parole. Ogni cosa che porto è una brutta giornata che spero di aver previsto.",
		"Quello che porto è l'elenco dei modi in cui mi aspetto che le cose vadano storte. È un elenco lungo, e pesa.",
	},
	["muse.w11.body.086"] = {
		"Il dolore è un'informazione, non un ordine. Lo leggo, ne prendo nota, e decido io.",
		"Il corpo dice basta. Sentito, e ringraziato. Non ubbidito, non ancora.",
		"Ascolto il dolore come ascolterei un esploratore nervoso: con attenzione, e poi scelgo.",
	},
	["muse.w11.body.087"] = {
		"Per me la paura non sta mai nella testa. Si piazza nello stomaco come un pasto andato di traverso e aspetta che me ne occupi.",
		"Prima di uno scontro duro lo stomaco mi si stringe come una corda annodata. Ho imparato a combattere con il nodo dentro.",
		"La pancia sa sempre per prima quando qualcosa non va. Si fa fredda e piccola, e io le do retta.",
	},
	["muse.w11.body.089"] = {
		"Pago quello che devo appena posso. Le monete lasciate nella borsa hanno il vizio di trovarsi altri programmi.",
		"Essere in debito con qualcuno pesa sulle spalle come un mantello bagnato. Preferisco essere al verde e in pari.",
		"Un debito è un peso in più, e ne porto già abbastanza. Saldare, e poi viaggiare leggeri.",
	},
	["muse.w11.body.090"] = {
		"Il corpo ricorda cose che ho lasciato andare. Basta girare la spalla in un certo modo, e risponde un vecchio male che avevo scordato.",
		"La testa dimentica una brutta caduta. Il ginocchio ne conserva il verbale.",
		"Certi giorni un dolore torna senza avviso, come un nome sentito tanto tempo fa, e non ricordo dove me lo sono guadagnato.",
	},
	["muse.w11.body.091"] = {
		"Un otre pieno che sciaborda al fianco è il suono più rassicurante che conosca.",
		"A volte nel peso c'è un vero conforto: una borraccia piena, una sacca di viveri, una borsa gonfia di monete.",
		"Riempire l'otre è una piccola cerimonia. Dopo, il mondo sembra un po' meno pericoloso.",
	},
	["muse.w11.body.092"] = {
		"Bene. Mangiare, rammendare, ripartire. In quest'ordine.",
		"Prima il cibo, poi le riparazioni, poi il resto del mondo.",
		"Un boccone, poi le cinghie, poi quello che viene.",
	},
	["muse.w11.body.093"] = {
		"I pasti da {g:solo|sola} sono rapidi e silenziosi. Nessuno a cui passare il sale, nessuno che mi dica di rallentare.",
		"Mangiando da {g:solo|sola} faccio più caso al cibo. È l'unica cosa che si possa dire a suo favore.",
	},
	["muse.w11.body.094"] = {
		"Il cuoio si crepa, il ferro arrugginisce, la stoffa si consuma. Sono {g:fatto|fatta} della stessa roba, solo più lenta.",
		"Tutto ciò che possiedo si consuma. Io sono solo l'ultima voce dell'elenco, e la più difficile da sostituire.",
	},
	["muse.w11.body.095"] = {
		"Ogni nodo che faccio tiene un po' meglio del precedente. Nessuno se ne accorgerà, e un giorno potrebbe salvarmi la vita.",
		"Le piccole abilità si accumulano in silenzio: una fasciatura più svelta, una cinghia più stretta, un posto migliore dove sedersi. Diventare bravi è questo.",
	},
	["muse.w11.body.097"] = {
		"Perdi un buon guanto e l'altro diventa un piccolo lutto inutile che ti porti dietro comunque.",
		"Niente ti ricorda una perdita come la metà che resta: il guanto spaiato, il laccio di scorta senza stivale.",
	},
	["muse.w11.body.098"] = {
		"La prima ora dopo essermi {g:alzato|alzata} la passo a convincere ogni parte di me a ricongiungersi al resto.",
		"Svegliarsi rigidi è il prezzo del dormire ovunque. Lo pago ogni giorno e brontolo puntuale.",
		"Oggi braccia e gambe sono di sabbia bagnata. Arriverò dove devo, ci vorrà solo qualche discussione.",
	},
	["muse.w11.body.099"] = {
		"Prima di qualcosa di difficile mi guardo le mani. Se sono ferme, il resto di me può farsene prestare un po'.",
		"Prima le mani ferme. Il coraggio può raggiungerle per strada.",
	},
	["muse.w11.body.100"] = {
		"I colpi grossi non mi spaventano quanto i piccoli tagli lasciati sporchi. Sono le ferite silenziose quelle che uccidono.",
		"Pulisci ogni taglio, anche il più piccolo. Il mondo è paziente, e un graffio sporco gli dà tempo.",
	},
	["muse.w11.body.101"] = {
		"Chi ha fatto questa borsa? Ah. Io. Devo fare due chiacchiere con me.",
		"Tutto quello che mi serve è qui dentro, sotto tutto quello che non mi serve.",
		"Se lo metto in un posto sicuro, è perso per sempre. Questa è la regola.",
	},
	["muse.w11.body.102"] = {
		"Dopo averla scampata per poco il sonno arriva a fatica, e quando arriva è come cadere in un pozzo.",
		"Rischiare la pelle fa strani scherzi al sonno. O niente del tutto, o un'intera giornata sparita in un battito di ciglia.",
	},
	["muse.w11.body.103"] = {
		"L'equipaggiamento economico si paga due volte: una al bancone, una quando cede.",
		"Compra la cinghia migliore. Quella a buon mercato fa risparmiare un rame e costa una caduta.",
	},
	["muse.w11.body.104"] = {
		"Se sto {g:fermo|ferma} abbastanza a lungo, sento ogni punto che ha lavorato: le spalle, i polpacci, le mani. Un appello silenzioso.",
		"In un momento di quiete il corpo fa rapporto, una parte dopo l'altra, come sentinelle che chiamano l'ora.",
	},
	["muse.w11.body.106"] = {
		"Riposare non è tempo rubato al lavoro. È la parte del lavoro che nessuno vede.",
		"Sedersi è un'abilità. Sapere quando farlo è metà del mestiere.",
		"Il corpo si ripara solo se glielo permetto. Ogni riposo che rifiuto lo pago più tardi, con qualcosa in più.",
	},
	["muse.w11.body.107"] = {
		"L'unica cosa pesante di cui non mi lamenterei mai è una borsa piena. Nessuno mi ha mai dato l'occasione.",
		"Le monete sono l'unico carico che la mia schiena accetterebbe volentieri. La schiena sta ancora aspettando.",
	},
	["muse.w11.body.108"] = {
		"In questo mondo c'è troppa gente affamata per sprecare una crosta. Mangio il fondo della pagnotta e anche il bordo bruciato.",
		"Non butto mai via il cibo. Chissà dove una fattoria è stata bruciata, e qualcuno conta le briciole.",
	},
	["muse.w11.body.109"] = {
		"Cinghie strette, pancia piena, otre rabboccato. Qualunque cosa venga dopo, che venga.",
		"Ho mangiato, ho rammendato, ho riposato abbastanza. Più di così non si è mai pronti.",
		"Stivali allacciati. Equipaggiamento controllato. Non resta altro da sistemare che il coraggio.",
	},
	["muse.w11.body.110"] = {
		"Spago, un chiodo storto e testardaggine: i tre grandi attrezzi delle riparazioni da campo.",
		"Metà del mio equipaggiamento sta insieme con lo spago e la speranza, e il grosso lo fa lo spago.",
	},
	["muse.w11.body.111"] = {
		"Certi giorni il corpo semplicemente non si presenta al lavoro. Il resto di me deve andarci senza.",
		"Nei giorni lenti ogni movimento va chiesto due volte. Chiedo, con educazione, e aspetto.",
	},
	["muse.w11.body.113"] = {
		"Dopo ogni brutto periodo arriva un giorno in cui il corpo torna di colpo a sembrare mio. Mi dimentico sempre che arriverà.",
		"La guarigione si prende il suo tempo, e poi in un momento qualunque è semplicemente finita. Non la colgo mai sul fatto.",
	},
	["muse.w11.body.114"] = {
		"Qualunque cosa usi per combattere, la pulisco prima di mangiare. Ha fatto la parte dura: mangia per prima.",
		"Un'arma riposta sporca è un'arma che tiene il broncio. La pulisco, a qualunque ora.",
	},
	["muse.w11.body.115"] = {
		"Un pizzico di sale trasforma il cibo da viaggio in un pasto. Darei parecchio argento per un pizzico più grosso.",
		"Sale, un po' di pepe, magari una cipolla. Con quei tre renderei commestibile perfino uno stivale.",
	},
	["muse.w11.body.116"] = {
		"Sappi quanto puoi correre, quanto puoi stare senza mangiare, quanti colpi puoi incassare. E l'ultimo numero non metterlo mai alla prova apposta.",
		"Ogni corpo ha i suoi numeri: miglia, pasti, colpi. I miei li imparo contando, non tirando a indovinare.",
	},
	["muse.w11.body.117"] = {
		"Dammi da mangiare e il mondo intero sembra più gentile. Sono un congegno semplicissimo.",
		"Buffo quanto tutto sembri più gentile dopo un pasto caldo. I regni andrebbero governati a stomaco pieno.",
	},
	["muse.w11.body.118"] = {
		"Ogni borsa più grande che compro si riempie con la stessa rapidità della precedente. La robaccia si allarga fino a occupare lo spazio.",
		"Dammi più spazio e troverò più cianfrusaglie. È una legge di natura, come cadere.",
	},
	["muse.w11.body.120"] = {
		"La stanchezza rende vigliacco chiunque. Quando comincio ad aver paura delle piccole cose, controllo quando ho dormito l'ultima volta.",
		"Metà delle mie paure si rimpicciolisce dopo una dormita decente. L'altra metà, almeno, diventa più facile da guardare.",
	},
	["muse.w11.body.121"] = {
		"Ogni nuovo tipo di lavoro scova un muscolo che non sapevo di avere, e gli fa conoscere il dolore.",
		"Prova qualcosa di nuovo e il corpo tira fuori un dolore inedito, come un mercante con una tassa a sorpresa.",
	},
	["muse.w11.body.122"] = {
		"Non si può contare su chi non mangia e non dorme. Mi prendo cura di me per meritare la fiducia degli altri.",
		"Una sentinella affamata non sorveglia niente. Riposo e cibo fanno parte di ogni promessa che valga la pena mantenere.",
	},
	["muse.w11.body.123"] = {
		"Ogni tanto un boccone sa del posto da cui vengo, e per un momento la strada si fa silenziosissima.",
		"Il cibo è la nostalgia più subdola. Un cucchiaio, e mi ritrovo da tutt'altra parte.",
	},
	["muse.w11.body.125"] = {
		"Piegare la coperta sempre nello stesso modo è un piccolo ordine che posso portare ovunque.",
		"Per quanto strano sia il posto, il giaciglio si srotola sempre uguale. Quell'uguaglianza vale più di quanto pesi.",
	},
	["muse.w11.body.126"] = {
		"Gli eroi dovrebbero avere fame di gloria. Io ho fame soprattutto di cena.",
		"L'ambizione è una bella cosa, ma non riempie la pancia, e la pancia chiede per prima.",
	},
	["muse.w11.body.127"] = {
		"Lividi dalla testa ai piedi, ma ancora in un pezzo solo. Avanti il prossimo.",
		"Toppe, punti e voglia di continuare. Forza.",
		"Ogni dolore che ho è uno scontro lasciato alle spalle sulle mie gambe. C'è posto per un altro.",
	},
	["muse.w11.body.128"] = {
		"Questo mestiere consuma un corpo come la cote consuma una lama: ogni volta un po' più affilata, e ogni volta un po' meno.",
		"Ogni scontro mi affila e mi porta via una scheggia. Un giorno ci sarà più filo che lama.",
	},
	["muse.w11.body.129"] = {
		"Nessuno vede il piccolo lavoro privato di un corpo: il polso dolente risparmiato, il passo rigido nascosto. Lo tengo per me.",
		"Ogni viaggiatore nasconde un'andatura zoppa di qualche tipo. La mia, semplicemente, cambia gamba.",
		"Non lascio che nessuno mi veda fare una smorfia. Non è orgoglio: si risparmiano un sacco di domande.",
	},
	["muse.w11.body.130"] = {
		"La gloria non occupa spazio nelle borse. I trofei sì, e puzzano.",
		"Collezionerei trofei, se si potessero piegare. Così com'è, una storia pesa meno di un teschio.",
	},
	["muse.w11.body.132"] = {
		"Indossare quello che ho tolto a qualcuno che ha cercato di uccidermi è solo buon senso. Cerco di non pensare a come gli stava.",
		"Parte del mio equipaggiamento viene dai caduti. Calza abbastanza bene, e non chiedo di chi ricordi la forma.",
	},
	["muse.w11.body.133"] = {
		"Devo sedermi. Un momento. Poi il mondo può riavermi.",
		"Datemi un minuto. Le gambe stanno riconsiderando il loro impegno.",
		"Un breve riposo, e poi torno a disposizione di tutti.",
	},
	["muse.w11.body.134"] = {
		"Le terre selvagge sfamano chiunque abbia pazienza: una manciata di bacche, una radice, un pesce che finalmente abbocca. Chi ha fretta, mai.",
		"Il cibo cresce, corre e nuota tutto intorno, se sai come chiederlo. Il mondo è una dispensa senza porte.",
	},
	["muse.w11.body.135"] = {
		"Andare giù non costa niente. Rialzarsi costa tutto quello che ho, e lo pago ogni volta.",
		"La terra è comoda, lo ammetto. Solo che il lavoro non è lì.",
		"Giù è facile. Su è tutto il lavoro.",
	},
	["muse.w11.body.136"] = {
		"Un giorno la stanchezza vincerà per sempre. Fino ad allora è una rivale che conosco bene, e quasi ogni giorno la batto.",
		"La fatica è l'unico nemico che non si ritira mai. Io mi limito a farla aspettare.",
	},
	["muse.w11.body.138"] = {
		"Giurerei che imparo più in fretta dopo una vera dormita in un letto vero. Una testa riposata trattiene di più.",
		"Una giornata ben dormita insegna il doppio di una stanca. Non so perché; mi limito a esserne {g:grato|grata}.",
	},
	["muse.w11.body.139"] = {
		"Restare a corto di cibo è una paura silenziosa. Non urla: conta insieme a te, a ogni pasto.",
		"L'ultima razione nella sacca cambia l'aspetto di ogni miglio.",
		"Conta il cibo prima di partire, non per strada. La fame a metà cammino è una cattiva consigliera.",
	},
	["muse.w11.body.140"] = {
		"Un posto a sedere, un boccone e cinque minuti tranquilli. Guarda un po'. Che ricchezza.",
		"Un posto dove sedersi e qualcosa da masticare. Lo prendo, e volentieri.",
	},
	["muse.w11.history.001"] = {
		"Ogni rovina è stata la cucina di qualcuno. Le cronache parlano soltanto delle mura.",
		"Le cronache contano torri e porte. Nessuno ha annotato dove si cuoceva il pane.",
		"Una città caduta, a pensarci, è fatta soprattutto di cucine cadute. I libri preferiscono i bastioni.",
	},
	["muse.w11.history.002"] = {
		"La capitale di Lordaeron ormai è un guscio rotto, con un'intera città che vive nelle sue cripte. I regni non finiscono: cambiano piano.",
		"Di sopra, il vecchio trono di Lordaeron prende polvere. Di sotto, una città bada ai fatti suoi. La storia ha traslocato in cantina.",
	},
	["muse.w11.history.003"] = {
		"La pestilenza arrivò nei sacchi di grano. Senza corni né stendardi: nella farina, venduta a prezzo onesto.",
		"Quello che pose fine a Lordaeron arrivò sui carri, nei sacchi di grano, e la gente lo pagò pure.",
		"A nord la Terza Guerra non la cominciò un esercito. La cominciò un carico di grano.",
	},
	["muse.w11.history.004"] = {
		"I titani hanno plasmato il mondo e se ne sono andati. Nessuno ha lasciato scritto quando torneranno.",
		"I titani hanno sollevato le montagne e non sono rimasti a vedere cosa ci sarebbe cresciuto sopra. Chissà se ogni tanto pensano a noi.",
		"Costruttori che scolpiscono un mondo e poi lo piantano lì: o molto sicuri del lavoro, o con una fretta tremenda.",
	},
	["muse.w11.history.005"] = {
		"Un giorno quest'epoca avrà un nome nei libri di storia. Spero che sia benevolo, e meritato.",
		"Chi scriverà di questi anni darà loro un nome ordinato. Viverli non ha niente di ordinato.",
		"Ogni epoca riceve il suo titolo dopo. Chi ci vive dentro non sa mai quale sarà.",
	},
	["muse.w11.history.006"] = {
		"Qualcuno dovrebbe mettere tutto questo per iscritto. Non io. Con la mia calligrafia scoppierebbe una guerra.",
		"Se qualcuno sta scrivendo la cronaca di questi tempi, mettetemi in una nota a piè di pagina. Piccola e lusinghiera.",
	},
	["muse.w11.history.007"] = {
		"Gli orchi ricordano i campi di internamento. Gli umani ricordano Stormwind in fiamme. Chiedi a uno del dolore dell'altro, e senti che silenzio.",
		"Nelle vecchie guerre ogni parte tiene la sua lista di torti, e ogni lista è vera. Il guaio è proprio questo.",
		"Stormwind bruciò, e poi gli orchi passarono anni dietro un recinto. Sono vere tutte e due le storie, e nessuna delle due ascolta l'altra.",
	},
	["muse.w11.history.008"] = {
		"A Hyjal orchi, umani ed elfi della notte tennero la stessa linea contro la Legione. È successo. È scritto. La gente lo dimentica apposta.",
		"Una volta, ai piedi dell'Albero del Mondo, nemici giurati combatterono spalla a spalla, perché l'alternativa era la fine di tutto. Vale la pena ricordare che si può fare.",
	},
	["muse.w11.history.009"] = {
		"Diecimila anni fa, al centro del mondo, c'era un pozzo di puro potere, e il mondo si spaccò tutto intorno. C'è ancora chi scava in cerca delle sue gocce.",
		"Un continente intero si fece a pezzi per un solo pozzo di magia. Eppure nessuno ha imparato a stare attento ai pozzi.",
	},
	["muse.w11.history.010"] = {
		"Gli elfi della notte hanno rinunciato all'eternità per fermare la Legione all'Albero del Mondo. Immagina di barattare il per sempre e di chiamarlo un prezzo giusto.",
		"Dopo Hyjal gli elfi della notte hanno cominciato a invecchiare come tutti noi. Non so cosa dire di un sacrificio così grande, e allora non dico niente.",
	},
	["muse.w11.history.012"] = {
		"I cartografi devono odiare quest'epoca. Ogni pochi anni un regno smette di esistere e tocca a loro grattare via l'inchiostro.",
		"Compatisco chi disegna mappe di mestiere. In questo mondo i confini non stanno fermi abbastanza da asciugarsi.",
		"Chissà quale cartografo sta raschiando via Lordaeron per scriverci sopra qualcosa di peggio.",
	},
	["muse.w11.history.013"] = {
		"Ogni battaglia famosa aveva dentro mille persone i cui nomi non sono arrivati da nessuna parte. Hanno tenuto la linea lo stesso.",
		"Le cronache si tengono i generali. Chi stava davvero nel fango è un numero, quando va bene.",
	},
	["muse.w11.history.014"] = {
		"Studia le vecchie guerre. Non per la gloria: per gli errori. Ce n'è a volontà.",
		"Conosci la tua storia. Soprattutto per riconoscere le parti stupide quando tornano a girare.",
	},
	["muse.w11.history.015"] = {
		"Gli studiosi parlano di antichi dei che i titani hanno incatenato sotto terra. Non mi servono prove. Mi serve che restino incatenati.",
		"Alcuni sapienti dicono che i titani non distrussero quello che trovarono qui: lo seppellirono. Seppellire non è la stessa cosa che finire.",
	},
	["muse.w11.history.016"] = {
		"Quel'Thalas resistette per migliaia di anni dietro le sue pietre runiche, e cadde in una stagione. Le mura vecchie rendono distratti verso i nemici nuovi.",
		"Gli elfi di Quel'Thalas tenevano al sicuro le loro foreste da prima che i regni degli uomini avessero un nome. È bastata una campagna dei morti. Niente è abbastanza vecchio da essere al sicuro.",
	},
	["muse.w11.history.017"] = {
		"Ogni volta che li si racconta, gli eroi di un tempo crescono un po'. Tra un secolo dovranno chinarsi per passare dalle porte.",
		"Le leggende ingrassano a ogni racconto. Quelli veri, probabilmente, erano alti più o meno come me, e stanchi uguale.",
	},
	["muse.w11.history.018"] = {
		"Al Flagello non importa sotto quale stendardo si sia caduti. I morti che rialza vengono da ogni esercito che abbia mai perso una battaglia.",
		"Ogni guerra lascia cadaveri, e adesso al nord c'è una potenza che li raccoglie. Questo cambia il significato della parola sconfitta.",
	},
	["muse.w11.history.020"] = {
		"I troll avevano imperi quando gli elfi erano ancora quattro tribù accampate sulle rive di un lago. In confronto, noialtri siamo appena arrivati.",
		"Prima ancora che esistesse una corona umana, i troll governavano da secoli. Da ricordare, la prossima volta che qualcuno si vanta di un regno vetusto.",
	},
	["muse.w11.history.021"] = {
		"Dalaran era una città di maghi, e un signore dei demoni l'ha abbattuta con un gesto della mano. Il sapere fa da pessimo muro.",
		"Tutta la sapienza di Dalaran non è bastata a tenerla in piedi quando è arrivata la Legione. Studiare ripara da tante cose, non da tutte.",
	},
	["muse.w11.history.022"] = {
		"Un popolo intero, una volta, bevve sangue di demone, e ci ha messo una generazione a bruciarlo via. La storia non offre molte salite così ripide.",
		"Il primo regalo della Legione agli orchi fu la furia in una coppa. Ci sono volute una guerra e la morte di un capo per svuotarla.",
	},
	["muse.w11.history.023"] = {
		"Ogni vecchio soldato di ogni taverna ha combattuto nella battaglia decisiva. Solo che non si mettono mai d'accordo su quale fosse.",
		"Chiedi a tre veterani dove si sono vinte le vecchie guerre: avrai quattro campi di battaglia e una scazzottata.",
	},
	["muse.w11.history.024"] = {
		"Ormai c'è gente adulta che non ha mai conosciuto un mondo senza l'Orda, o senza l'Alleanza. Per loro è arredamento.",
		"I bambini nati dopo la Terza Guerra pensano che le Plaguelands siano sempre state appestate. Così una ferita diventa un nome di luogo.",
	},
	["muse.w11.history.025"] = {
		"Gira voce che i draghi sappiano indossare volti di persona e sedersi alla tavola di un re. Riderei, se a ripeterlo fosse meno gente di buon senso.",
		"I viaggiatori sussurrano che i draghi neri camminano tra noi in forme prese in prestito. Ho cominciato a guardare due volte chiunque sia troppo affascinante.",
	},
	["muse.w11.history.026"] = {
		"Deathwing doveva custodire la terra stessa, ed è diventato la cosa peggiore mai uscita dalle sue viscere. Nessuno è troppo fidato per cadere.",
		"All'Aspetto nero fu affidata la pietra del mondo da proteggere, e lui la squarciò. Ogni giuramento ha la sua giornata storta.",
	},
	["muse.w11.history.027"] = {
		"Un principe di Lordaeron diede Stratholme alle fiamme per salvarla dalla pestilenza. Si discute ancora se avesse ragione. La città, ormai, non discute più.",
		"Stratholme l'ha bruciata il suo stesso principe, prima che la prendessero i morti. Qualunque fosse il motivo, la cenere ha lo stesso colore.",
	},
	["muse.w11.history.028"] = {
		"Qualcuno dovrebbe ricordare questi tempi come sono andati davvero. Mi offro io. Ho tenuto gli occhi aperti.",
		"Quando racconteranno la storia di quest'epoca, servirà almeno un testimone che non mente. Segnatevi il mio nome.",
	},
	["muse.w11.history.029"] = {
		"I nani hanno scavato in una cripta dei titani per scoprire da dove venivano, e hanno saputo che i loro antenati erano fatti di pietra. Dopo una notizia così, io dovrei sedermi a lungo.",
		"Immagina di cercare le origini del tuo popolo e di trovare un'officina. Ai nani è successo, sotto le Badlands, e la stanno prendendo con filosofia.",
	},
	["muse.w11.history.030"] = {
		"Il primo regno degli uomini nacque nelle Arathi Highlands, attorno a una sola fortezza, per respingere i troll. Ogni corona umana venuta dopo è un ramo di quel tronco.",
		"Strom fu la prima città umana degna del nome, costruita per tenere a bada gli Amani. Ora ogre e banditi frugano in quel che ne resta. Anche gli inizi finiscono saccheggiati.",
	},
	["muse.w11.history.031"] = {
		"La Legione è venuta a prendersi questo mondo due volte, a memoria di chiunque, e per due volte se n'è tornata a mani vuote. Mi rimette in equilibrio.",
		"Due volte la Legione Infuocata ha allungato la mano su Azeroth, e due volte l'ha chiusa sul nulla. Niente male, per un mondo pieno di gente che litiga.",
	},
	["muse.w11.history.032"] = {
		"Gilneas ha costruito un muro e ha chiuso fuori il mondo prima che arrivasse il peggio. Ora nessuno sa cosa succeda là dietro. La salvezza ha un'aria solitaria.",
		"Il grande muro di Gilneas ha tenuto fuori la pestilenza, si dice, e anche tutto il resto. Chissà a quale delle due cose pensano di più, là dentro.",
	},
	["muse.w11.history.034"] = {
		"Fra mille anni qualche viaggiatore camminerà tra quel che resta delle nostre città e proverà a indovinarci. Spero che sia generoso, nelle ipotesi.",
		"Un giorno le nostre torri saranno le rovine di qualcun altro. Strano immaginare uno sconosciuto che ci fruga dentro, chiedendosi chi eravamo.",
	},
	["muse.w11.history.035"] = {
		"La storia non è finita. Ci siamo tutti dentro fino al collo, e sporchiamo dappertutto.",
		"Nessuno mi aveva detto che la storia la stanno ancora scrivendo. Mi sarei {g:portato|portata} una penna migliore.",
	},
	["muse.w11.history.036"] = {
		"La Scarlet Crusade è nata da gente che aveva visto la pestilenza portarsi via tutto. Dai al dolore una spada e uno stendardo, e può diventare quasi qualunque cosa.",
		"È la paura dei morti ad aver creato i fanatici della Scarlet Crusade. Ora mettono sotto torchio anche i vivi. Una ferita che marcisce finisce per somigliare a ciò che l'ha aperta.",
	},
	["muse.w11.history.037"] = {
		"La regina dei draghi rossi ha passato anni in catene sotto Grim Batol, mentre i suoi figli venivano allevati per la guerra. Qualunque cosa pensi delle razze giovani, si è guadagnata il diritto di pensarla.",
		"La regina dei draghi rossi vedrà cadere e risorgere tutti i nostri regni, e ricorderà le sue catene per tutto il tempo. Spero che sia di quelle che perdonano.",
	},
	["muse.w11.history.038"] = {
		"Il Flagello avrebbe dovuto bastare a rendere amico il mondo intero. Non è bastato. Questo dice qualcosa sul mondo.",
		"Se nemmeno i cadaveri che camminano alle porte riescono a unire la gente, non so cosa ci riuscirebbe. Forse il cielo che cade. Forse neanche quello.",
	},
	["muse.w11.history.039"] = {
		"Ogni qualche secolo il mondo dimentica qualcosa che avrebbe dovuto tenersi: un avvertimento inciso sopra una porta, il motivo per cui un cancello fu sigillato.",
		"Quasi tutti i disastri di cui ho sentito parlare sono cominciati con qualcuno che non sapeva leggere un vecchio avvertimento, o non si è preso il disturbo.",
	},
	["muse.w11.history.040"] = {
		"Il lich che serve il nord era un tempo uno studioso rispettato, con allievi e un seggio in un consiglio. I mostri di rado nascono mostri.",
		"Kel'Thuzad fu un mago di Dalaran, prima di diventare qualunque altra cosa. L'ambizione con una bella tunica resta ambizione.",
	},
	["muse.w11.history.041"] = {
		"Metà delle città di Kalimdor le ha fondate gente in fuga dalla Terza Guerra. Un continente di nuovi arrivati, che guardano di sbieco chi c'era prima.",
		"Quando cadde Lordaeron, popoli interi presero il mare verso ovest. Orgrimmar e Theramore le ha costruite tutte e due gente che si era lasciata indietro ogni cosa.",
		"Ogni città nuova di Kalimdor è più giovane di qualcuno dei suoi abitanti. Le ha costruite tutte la guerra al di là del mare.",
	},
	["muse.w11.history.042"] = {
		"La stessa battaglia ha due canzoni, una per parte. Stessa collina, stesso giorno. Dalle melodie non lo diresti mai.",
		"Tutte e due le parti delle vecchie guerre hanno cantato le stesse battaglie. In una canzone la collina è stata presa; nell'altra, ceduta con onore.",
		"Una battaglia sola, cantata come un trionfo in una taverna e come un lamento in quella accanto. Tutti e due i cantori giurano di esserci stati.",
	},
	["muse.w11.history.043"] = {
		"Guerra vecchia, guerra nuova. Alla fine qualcuno si ritrova con la pala in mano.",
		"Ogni guerra ha bisogno di eroi per una stagione e di becchini per anni.",
	},
	["muse.w11.history.045"] = {
		"Ogni ghoul delle Plaguelands era un contadino, un fornaio, il vicino di casa di qualcuno. Le canzoni su come combatterli saltano quella strofa.",
		"L'esercito del Flagello è fatto di gente qualunque che è stata sfortunata per prima. Per questo è così difficile guardarlo.",
		"Prima di essere il Flagello, erano villaggi. Ogni cosa che si trascina aveva un nome, un tempo, e una porta da cui rientrare a casa.",
	},
	["muse.w11.history.046"] = {
		"L'Argent Dawn accetta l'aiuto di chiunque si opponga al Flagello, qualunque faccia abbia. In questo mondo è quasi un piccolo miracolo.",
		"C'è un ordine che combatte i morti senza chiedere a nessuno da che parte stia. La storia vorrà sapere come ci sono riusciti.",
		"Chissà dove, gente che dieci anni fa si sarebbe ammazzata a vicenda fa il turno di guardia insieme contro i morti. Vorrei che lo si ricordasse.",
	},
	["muse.w11.history.047"] = {
		"Si dice che i draghi di bronzo veglino sul tempo stesso. Mi piacerebbe chiedere a uno di loro come finisce quest'epoca. Immagino che avrei in cambio un sorriso e nient'altro.",
		"Se lo stormo di bronzo custodisce davvero i sentieri del tempo, sa già come verrà ricordato tutto questo. Beati loro. O forse no.",
	},
	["muse.w11.history.048"] = {
		"In fondo al mare c'è un impero di elfi, palazzi compresi. Al confronto le mie ambizioni sembrano piacevolmente modeste.",
		"La corte più superba che questo mondo abbia mai visto finì sott'acqua tutta in una volta. La superbia galleggia, si dice. A quanto pare no.",
		"La corte della regina Azshara si credeva il centro di ogni cosa. Adesso lo pensano i pesci.",
	},
	["muse.w11.history.049"] = {
		"Ogni impero pensava di durare per sempre. Io non sono {g:sicuro|sicura} nemmeno della settimana prossima.",
		"Regni che giuravano di restare in piedi mille anni sono caduti in dieci. Terrò i miei progetti modesti.",
	},
	["muse.w11.history.050"] = {
		"Alterac voltò le spalle ai suoi alleati nella Seconda Guerra e il regno non si è più ripreso. Il tradimento paga bene per una stagione, e male per sempre.",
		"Tra le montagne c'è un regno che vendette gli amici in cambio di una promessa, e ora è una rovina piena di briganti. Tutta la lezione sta lì, in fondo.",
	},
	["muse.w11.history.051"] = {
		"Si dice che gli anziani tauren insegnino che la terra conserva ogni orma mai lasciata, e non ne dimentica nessuna, nemmeno quelle delle guerre.",
		"C'è un detto tauren, mi hanno raccontato: la terra porta sulle spalle ogni esercito che l'ha attraversata, e fa crescere l'erba sopra tutti allo stesso modo.",
	},
	["muse.w11.history.052"] = {
		"Ogni guerra che conosco era la vendetta di quella prima. La storia è un debito che si passa di mano, con gli interessi che corrono ancora.",
		"Una guerra paga la precedente e manda il conto alla successiva. In questo mondo nessuno ha mai saldato il debito.",
		"Risali una guerra abbastanza indietro e ci trovi un'altra guerra, seduta lì con l'aria di essere un buon motivo.",
	},
	["muse.w11.history.054"] = {
		"Il più grande paladino della Silver Hand morì difendendo un'urna di ceneri dal suo stesso allievo. Certe storie, a raccontarle di nuovo, non diventano più gentili.",
		"La Silver Hand doveva stare tra la gente e le tenebre. Le tenebre vennero da dentro le sue file, e da allora l'ordine non è più riuscito a stare dritto.",
	},
	["muse.w11.history.055"] = {
		"Rovine in ogni angolo del mondo. Chi è venuto prima di noi non ha mai fatto ordine, nemmeno una volta.",
		"Quante pietre cadute in questo mondo. Quelli di un tempo costruivano bene e spazzavano male.",
	},
	["muse.w11.history.056"] = {
		"Lontano, a sud, c'è un muro sigillato dai draghi mille anni fa, con un impero di insetti dietro. I sigilli sono promesse, e le promesse si consumano.",
		"Ahn'Qiraj è chiusa da mille anni. Quasi nessuno dei vivi ricorda la guerra che l'ha chiusa, ed è proprio questo che mi preoccupa.",
		"Ogni porta sigillata della storia è un problema lasciato in eredità ai nipoti. Laggiù nel deserto del sud, i nipoti siamo noi.",
	},
	["muse.w11.history.057"] = {
		"Alcuni morti hanno spezzato la presa del Re dei Lich e si sono ripresi la mente. Qualunque cosa si pensi di quel che hanno fatto dopo, quel primo passo è straordinario.",
		"Una volontà abbastanza forte da scrollarsi di dosso il Re dei Lich. Si dica quel che si vuole dei Reietti: nessun altro nella storia ci è riuscito.",
	},
	["muse.w11.history.058"] = {
		"I re di quest'epoca non muoiono vecchi nel loro letto. Uno è caduto per mano di un'assassina, uno per mano del figlio, e uno è semplicemente sparito.",
		"Portare una corona di questi tempi è un mestiere pericoloso. Chiedetelo agli ultimi che ci hanno provato. Non si può, naturalmente: è proprio questo il punto.",
	},
	["muse.w11.history.060"] = {
		"La prima volta che la Legione è venuta, era stata invitata, da gente che amava la magia un po' troppo. Da allora ogni mago se lo porta addosso.",
		"I demoni non trovano questo mondo per caso. C'è sempre qualcuno che accende la lanterna per loro, e di solito è qualcuno di intelligente.",
		"Già due volte la Legione è entrata grazie a chi pensava di poterla gestire. L'astuzia è una porta con una serratura debole.",
	},
	["muse.w11.history.061"] = {
		"Che siano gli storici a decidere cosa ha significato quest'epoca. Io ho la giornata di oggi da sbrigare.",
		"Fra cent'anni qualcuno spiegherà come si deve questi tempi. Fino ad allora, me la cavo alla meglio come tutti.",
		"Una storia grande e una persona piccola. Faccio la mia parte e lascio agli studiosi il compito di trovarci un senso.",
	},
	["muse.w11.history.062"] = {
		"Gli gnomi hanno avvelenato la loro stessa città per scacciare gli invasori, e l'hanno persa lo stesso. La storia è piena di cure che hanno finito il malato.",
		"Gnomeregan era la città più ingegnosa del mondo, ed è stato proprio l'ingegno a svuotarla. Lì dentro c'è una lezione, con tanto di occhialoni.",
	},
	["muse.w11.history.063"] = {
		"I draghi ci chiamano le razze giovani. Brucia un po', ma le cose giovani possono ancora cambiare. Quelle vecchie, quasi mai.",
		"Per un drago ogni nostro regno è un breve trambusto. Preferisco essere un breve trambusto che si lascia dietro qualcosa di decente.",
		"Accanto all'opera dei titani, tutta la nostra storia è qualche scarabocchio a margine. Tanto vale che siano scarabocchi fatti bene.",
	},
	["muse.w11.history.064"] = {
		"I nomi incisi sulle lapidi commemorative si consumano più in fretta di quanto si creda. Un secolo di vento e i caduti onorati sono una fila di macchie.",
		"Incidono i caduti nella pietra perché restino. La pietra resta. Le lettere no.",
		"Ogni monumento è una gara tra lo scalpello e il vento. Il vento non ha mai perso.",
	},
	["muse.w11.history.065"] = {
		"I vecchi rancori sono bagagli pesanti. Dove posso, viaggio leggero.",
		"La storia regala rancori a chiunque. Io continuo a rifiutarli.",
	},
	["muse.w11.history.066"] = {
		"Se quest'epoca verrà ricordata per qualcosa, sarà per il Flagello. Io preferirei che si ricordasse chi ha continuato a seminare i campi lo stesso.",
		"Le cronache danno sempre a un'epoca il nome del suo nemico peggiore. Ingiusto, per tutti quelli che l'hanno passata a cuocere il pane e a rattoppare tetti.",
	},
	["muse.w11.history.068"] = {
		"I druidi parlano di un mondo sognato che mostra Azeroth come avrebbe dovuto essere. Vorrei darci un'occhiata, solo per vedere quanto si è allontanato quello vero.",
		"Un drago verde, a quanto si racconta, sognerebbe il mondo che i titani avevano in mente. Al confronto, tutta la nostra storia deve sembrare una lunga fila di errori.",
	},
	["muse.w11.history.069"] = {
		"Un detto dei nani vuole che la forgia ricordi ogni colpo che le è mai stato dato. Vorrei che i regni tenessero i loro registri bene la metà.",
		"Ai nani piace dire che la pietra non dimentica niente di ciò che le hanno fatto portare. Sospetto che sia per questo che scrivono la loro storia nei muri.",
	},
	["muse.w11.history.070"] = {
		"Lontano, al nord, qualcosa siede su un trono gelato, e la pestilenza era solo la sua prima lettera al resto di noi.",
		"Il Re dei Lich non è sceso a sud di persona. Non ne ha avuto bisogno. È questo che continua a farmi pensare.",
		"Tutti parlano del Flagello nelle Plaguelands. Meno gente parla di chi l'ha mandato, che aspetta paziente lassù al nord.",
	},
	["muse.w11.history.071"] = {
		"Ogni pietra di questo mondo ha una storia di guerra. Quasi tutte la raccontano meglio di me.",
		"Dai un calcio a un sasso qualunque di questo mondo e ci trovi sotto una battaglia. Non che consigli i calci.",
	},
	["muse.w11.history.072"] = {
		"Negli anni peggiori di ogni guerra, ogni popolo si è rivolto a qualcosa: la Luce, gli spiriti, i loa, Elune. Le cronache non annotano mai chi ha risposto.",
		"Se durante la Terza Guerra la Luce, gli spiriti e i loa ascoltavano davvero, devono aver sentito parecchie urla.",
	},
	["muse.w11.history.073"] = {
		"Una buona ricetta sopravvive a tre dinastie. I re si dimenticano in poche generazioni; nessuno dimentica come si fa uno stufato decente.",
		"La storia si tiene le battaglie e perde le ninne nanne. Chi le cantava avrebbe scelto il contrario.",
		"Quello che sopravvive è strano: un motivetto, un modo di annodare la corda, una parola per dire pane. Imperi interi sono rimasti fuori.",
	},
	["muse.w11.history.074"] = {
		"Contadini, fabbri e pescatori hanno affrontato demoni e morti che camminano nella Terza Guerra, e qualcuno ha pure vinto. Me lo ricordo nei giorni brutti.",
		"La storia è soprattutto gente qualunque che si rifiuta di farsi spazzare via. È l'unica discendenza che mi interessa rivendicare.",
	},
	["muse.w11.history.076"] = {
		"Si dice che gli insetti del deserto meridionale si stiano agitando dietro il loro muro. Ogni epoca ha i guai che si merita; chissà cosa abbiamo combinato noi.",
		"Draghi nelle montagne, morti al nord, qualcosa che si sveglia nelle sabbie del sud. Gli studiosi del futuro avranno un sacco di capitoli da scrivere.",
	},
	["muse.w11.history.077"] = {
		"Nessuno ha mai contato tutti quelli che la pestilenza si è portata via. Interi villaggi se ne sono andati senza nessuno che ne facesse l'elenco.",
		"Al nord ci sono paesi dove non è sopravvissuto nessuno a scrivere i nomi. Quelli sono perduti due volte.",
		"Il peggio della pestilenza non sono i numeri. Sono i villaggi senza più nessuno che ricordi che sono esistiti.",
	},
	["muse.w11.history.078"] = {
		"Ogni rovina ha attaccata la sua profezia. A me basterebbe una che avesse un tetto.",
		"Fammi vedere una rovina antica e io ti faccio vedere qualcuno che vende la mappa del suo tesoro.",
	},
	["muse.w11.history.079"] = {
		"Gli elfi insegnarono la magia agli umani per vincere una guerra contro i troll. Ogni incantesimo umano venuto dopo è nato come un favore dovuto in battaglia.",
		"La magia arrivò agli uomini come un'arma consegnata di fretta, durante le Guerre dei Troll. Non si è mai scrollata di dosso del tutto quell'inizio.",
	},
	["muse.w11.history.080"] = {
		"I soldati delle prime guerre stanno ingrigendo. Quando se ne andrà l'ultimo, quelle guerre diventeranno storie, e le storie si ricominciano molto più facilmente.",
		"Finché ci sono veterani vivi, la guerra ha una faccia. Dopo di loro è solo una canzone, e le canzoni la fanno sembrare una cosa che valga la pena.",
	},
	["muse.w11.history.081"] = {
		"Quasi tutte le paci della storia le hanno fatte nemici troppo stanchi per continuare. Lo trovo stranamente consolante: prima o poi tutti si stancano.",
		"I trattati non li firmano i coraggiosi. Li firmano gli esausti. Viva la stanchezza, allora.",
	},
	["muse.w11.history.082"] = {
		"Parla piano vicino alle vecchie rovine. Chi le ha costruite potrebbe non essersene andato del tutto.",
		"La mia regola per i luoghi antichi: non toccare niente che ronza.",
		"Mai leggere ad alta voce una vecchia iscrizione. Nessuno si è mai pentito di aver taciuto.",
	},
	["muse.w11.history.083"] = {
		"Un giorno qualcuno potrebbe chiedermi cosa facevo mentre il mondo era in bilico. Vorrei una risposta che non abbia bisogno di imbottitura.",
		"Quando quest'epoca sarà finita, tutti diranno di essere stati sulle mura. Io vorrei esserci {g:stato|stata} davvero.",
	},
	["muse.w11.history.085"] = {
		"Gli orchi non hanno trovato questo mondo da soli. Qualcuno da questa parte teneva aperta la porta, e qualcosa di più vecchio teneva lui.",
		"Prima degli orchi, prima del Dark Portal, c'era un demone che sussurrava a un mago umano. Ogni guerra venuta dopo è cominciata da quel sussurro.",
		"La colpa della Prima Guerra passa di mano in mano come una padella rovente. Seguila abbastanza a lungo e finisce su un demone, che fa comodo a tutti.",
	},
	["muse.w11.history.086"] = {
		"Gli orchi sono passati in questo mondo e la strada alle loro spalle si è chiusa per sempre. Un popolo intero senza via di casa è un peso più grande di qualunque guerra.",
		"Al di là del Portale spento c'è il mondo da cui vennero gli orchi, e nessuno di loro lo rivedrà. Ogni popolo di Azeroth ha perso qualcosa; loro, un mondo intero.",
		"Il Dark Portal se ne sta freddo nelle Blasted Lands. Dall'altra parte c'è una casa che gli orchi ricordano e che non calpesteranno mai più.",
	},
	["muse.w11.history.087"] = {
		"Un re dei nani evocò una volta un signore del fuoco per vincere una guerra, e il fuoco non se n'è più andato. Intere regioni bruciano ancora per una decisione presa male in un pomeriggio.",
		"Searing Gorge e Burning Steppes sono quello che succede quando si chiama un aiuto che poi non si sa rimandare indietro. Da ricordare, prima di evocare qualunque cosa.",
		"La Guerra dei Tre Martelli finì con una montagna in fiamme e un signore del fuoco sotto. Quella non l'ha vinta davvero nessuno.",
	},
	["muse.w11.history.088"] = {
		"Mai evocare niente che non si sappia rimandare indietro. Su questo la storia è categorica.",
		"Tutta la storia in una riga: qualcuno ha evocato qualcosa, e se n'è pentito.",
		"Le cose evocate hanno il vizio di restare. Metà delle terre bruciate dell'est lo dimostra.",
	},
	["muse.w11.history.089"] = {
		"I nani erano un solo regno, finché tre clan non litigarono per un unico trono. Ora ci sono tre popoli e tre modi di fare la birra.",
		"Quasi tutte le grandi divisioni della storia sono nate da una lite di famiglia attorno a un tavolo. I nani avevano solo un tavolo più grande.",
		"Tre clan, un trono, e una lite che è sopravvissuta a tutti quelli che l'avevano cominciata. Quasi tutte le faide di questo mondo hanno questa forma.",
	},
	["muse.w11.history.090"] = {
		"Gli elfi di Quel'Thalas discendono da esuli, mandati oltre il mare perché amavano troppo la magia. Ogni popolo di questo mondo è nato come il problema di qualcun altro.",
		"Tanto tempo fa gli elfi della notte bandirono i loro stessi cugini, che non volevano rinunciare alla magia. Gli esuli fecero vela verso est e fondarono un regno. L'esilio, a volte, è un seme.",
		"Gli alti elfi e gli elfi della notte sono un solo popolo che ha smesso di parlarsi diecimila anni fa. Certi silenzi di famiglia durano parecchio.",
	},
	["muse.w11.history.092"] = {
		"In tutte le storie antiche i morti restavano dov'erano. Adesso sopra le Plaguelands ne pende un'intera fortezza, e le vecchie storie sembrano molto ingenue.",
		"Sopra l'est galleggia un'intera cittadella di morti. Chi metterà per iscritto quest'epoca dovrà inventare parole nuove.",
		"Quando le epoche future leggeranno che una città di morti galleggiava sopra la terra, penseranno che i cronisti fossero ubriachi.",
	},
	["muse.w11.history.093"] = {
		"I troll di Zul'Gurub combatterono una volta il loro stesso dio per salvarsi da lui. La fede prende più forme di quante se ne ammettano, e certe portano un'ascia.",
		"C'era un dio del sangue che dovettero cacciare i troll stessi. Immagina di pregare per un aiuto e di doverti proteggere dalla risposta.",
		"Non tutti i popoli amano i propri dei. I troll, una volta, hanno dovuto dare la caccia a uno dei loro.",
	},
	["muse.w11.history.094"] = {
		"Ai mercanti goblin piace dire che la storia è un registro di vecchi prezzi: chi ha pagato, chi ha venduto, chi è sparito senza saldare. Come definizione non è la peggiore.",
		"C'è un detto goblin per cui ogni guerra è un mercato con clienti più rumorosi. È brutto, e non riesco a dargli torto fino in fondo.",
		"«Le guerre finiscono, i debiti no», dice un proverbio goblin. Cupo, ma ogni trattato di cui ho sentito parlare sembra dargli ragione.",
	},
	["muse.w11.history.095"] = {
		"Le Sentinelle vegliano sulle loro foreste da diecimila anni. Io perdo la pazienza aspettando la minestra.",
		"Immagina un turno di guardia cominciato prima di tutti i regni oggi esistenti, e mai ancora rilevato. Gli elfi della notte non devono immaginarlo.",
		"Diecimila anni di guardia. Chissà se la prima Sentinella riconoscerebbe la foresta che sorvegliava.",
	},
	["muse.w11.history.096"] = {
		"Diecimila anni di storia là fuori, e io mi preoccupo di una cinghia allentata. Questione di prospettiva.",
		"Imperi sono sorti e caduti per portarci a questo momento, a quanto pare. E io intanto ho fame.",
		"Tutta la storia ha portato a questo momento, e questo momento sono io che cerco di ricordare dove ho messo le cose.",
	},
	["muse.w11.history.097"] = {
		"I nani della Explorers' League dissotterrano il passato con le pale vere. Quasi tutti gli altri popoli il loro si limitano a discuterlo.",
		"Chissà dove, un nano sta togliendo la sabbia da un intaglio dei titani con un pennello di crine, piano piano. Ecco che aspetto ha il rispetto per la storia.",
		"Il passato è sepolto dappertutto. I nani sono solo gli unici ad averlo preso come un invito.",
	},
	["muse.w11.history.098"] = {
		"Il mare gira ancora su se stesso dove c'era il Pozzo dell'Eternità. Diecimila anni, e quella ferita non si è chiusa. Il mondo ha solo imparato a navigarci intorno.",
		"In mezzo al mondo c'è un gorgo che gira da quando il mondo si spaccò. Certe cicatrici non si chiudono mai; la gente le disegna sulle mappe e va avanti.",
		"Il mondo si è strappato in due, una volta, e il mare gira ancora per il colpo. Niente guarisce secondo i nostri tempi.",
	},
	["muse.w11.history.100"] = {
		"Quasi tutti noi saremo una riga nella cronaca di qualcun altro, quando va bene. Pazienza. Una pagina è fatta solo di righe.",
		"La storia si scrive con i nomi grandi, ma si legge in quelli piccoli: il soldato, il cuoco, chi portava il messaggio. A me basterebbe essere uno di quelli.",
		"Nessuno ricorda chi portava l'acqua ai difensori di Hyjal. Eppure qualcuno lo faceva, o non ci sarebbe nessuna canzone.",
	},
	["muse.w11.history.101"] = {
		"La Legione ha aspettato diecimila anni tra un'invasione e l'altra. Qualcosa di così paziente non si arrende per una sola sconfitta.",
		"I demoni misurano il tempo in un altro modo. Quella che a noi sembra una vittoria, a loro può sembrare un breve ritardo.",
		"Sconfitta due volte, e ancora là fuori. La Legione non coltiva rancori: coltiva piani.",
	},
	["muse.w11.history.102"] = {
		"Sono caduti regni interi, e il giorno dopo la gente si è alzata lo stesso a dar da mangiare alle galline. Oggi ce la posso fare.",
		"È caduto Lordaeron, e la settimana dopo qualcuno ha riaperto bottega lo stesso. È quel genere di testardaggine che cerco.",
	},
	["muse.w11.history.103"] = {
		"Dalaran si ricostruisce sotto una cupola di luce viola. Ai maghi la fiducia in se stessi non è mai mancata.",
		"I maghi hanno alzato uno scudo scintillante sulle rovine della loro città. Fuori nessuno sa bene cosa succeda là dentro, e ai maghi piace così.",
		"Una città di maghi, rasa al suolo e ricostruita dietro mura luminose. Certe lezioni non attecchiscono.",
	},
	["muse.w11.history.104"] = {
		"Dopo la caduta di Quel'Thalas, la sua gente si è dispersa in una manciata di avamposti solitari. Basta un anno cattivo per trasformare un regno in una diceria.",
		"Alcuni elfi dell'est tengono ancora piccoli accampamenti in terre altrui, a vegliare su quel che resta. Difficile dire cosa sia un popolo, quando la sua casa non c'è più.",
		"Un giorno gli elfi dell'est erano un regno; quello dopo, una manciata di accampamenti. Ecco quanto in fretta può cambiare la storia di un popolo.",
	},
	["muse.w11.history.105"] = {
		"Ogni bardo canta una versione diversa delle vecchie guerre. L'unica cosa su cui vanno d'accordo è il prezzo.",
		"Tre bardi, tre storie, un compenso a testa. L'istruzione più economica che ci sia, e la meno affidabile.",
		"Chiedi a un bardo la verità sulle vecchie guerre e avrai una canzone migliore, non una più vera.",
	},
	["muse.w11.history.106"] = {
		"I figli di Deathwing sono sparsi per il mondo, ognuno nella sua tana con i suoi piani. Un'impresa di famiglia, della peggior specie.",
		"L'Aspetto nero è sparito, si racconta, ma ha lasciato una covata a portare avanti il lavoro. Certe eredità andrebbero rifiutate.",
		"Ogni drago nero di cui ho sentito parlare era impegnato a rovinare qualcosa. Il padre li ha educati bene, secondo i suoi criteri.",
	},
	["muse.w11.history.108"] = {
		"Chissà dove, dei bambini giocano alla Terza Guerra con i bastoni, e litigano su chi deve fare il Flagello. Nessuno vuole mai fare il Flagello.",
		"Le grandi battaglie finiscono sempre per diventare giochi da bambini. Forse è la cosa più gentile che possa capitare a una guerra.",
		"Un giorno i bambini giocheranno anche a quest'epoca. Spero che il ruolo che tutti si contendono sia uno buono.",
	},
	["muse.w11.history.109"] = {
		"Ci sono elfi della notte ancora vivi che hanno combattuto nella Guerra degli Antichi. Ora che possono invecchiare, ognuno che muore si porta via un pezzo della prima storia.",
		"Alcuni testimoni della guerra più antica del mondo camminano ancora tra noi, e rispondono alle domande. Non durerà per sempre, non più. Qualcuno dovrebbe annotare ogni parola.",
		"Chiedi a un vecchio elfo della notte della guerra più antica e ti risponde un testimone oculare. Non sarà vero ancora per molto.",
	},
	["muse.w11.history.110"] = {
		"Demoni, draghi e morti che camminano vogliono tutti questo mondo. Quasi lusinghiero, in un modo terribile.",
		"Tanti antichi poteri hanno provato a prendersi Azeroth che comincio a chiedermi cosa ci trovino. Poi mi guardo intorno, e capisco.",
		"Chiunque abbia un trono e un rancore vuole questo mondo. Qualunque cosa sia, dev'essere qualcosa che vale la pena avere.",
	},
	["muse.w11.history.116"] = {
		"Migliaia e migliaia di persone sono vissute e morte prima di me, e in questo momento forse sono {g:l'unico|l'unica} a pensare a una di loro. Strana compagnia.",
		"La storia è affollata e il presente è solitario. Tutte quelle vite alle mie spalle, e nessuno qui con cui parlarne.",
		"È una solitudine strana, portarsi in testa tutto il passato senza nessuno con cui dividerlo.",
	},
	["muse.w11.history.117"] = {
		"Guarda le vecchie alleanze: elfi e umani, orchi e troll, nani e gnomi. Nessuna è nata amichevole. Ogni amicizia tra popoli è cominciata come una necessità.",
		"I popoli fanno amicizia come i viaggiatori: perché la strada si è fatta pericolosa e nessuno voleva percorrerla da solo.",
		"Quasi tutte le grandi amicizie tra razze sono state suggellate in una crisi e mantenute per testardaggine. Non è una critica.",
	},
	["muse.w11.history.118"] = {
		"Nessuna bestia sa che ci sono mai state guerre. A un cinghiale non importa nel regno di chi grufola.",
		"Gli animali non hanno altra storia che la fame e le stagioni. Certi giorni invidio loro la memoria corta.",
		"I regni vanno e vengono sopra la testa dei cervi, che non se ne sono mai accorti.",
	},
	["muse.w11.history.119"] = {
		"Ogni popolo racconta la storia come se ne fosse l'eroe. Prova una volta a raccontarla dall'altra parte: è un'ora che ti ridimensiona.",
		"Ascolta la stessa guerra dalle due parti e smette di essere un racconto, diventa una tragedia. Probabilmente è più vicino al vero.",
		"Provo a immaginare le vecchie guerre raccontate da chi le ha perse. La forma cambia del tutto.",
	},
	["muse.w11.history.120"] = {
		"L'epoca delle leggende? Va avanti. Solo che manca personale.",
		"A quanto pare i grandi eroi stanno tutti nel passato. E allora il presente chi lo sorveglia?",
		"Le cronache sono piene di eroi. Al presente ne servirebbe qualcuno. Le candidature sono aperte.",
	},
	["muse.w11.history.121"] = {
		"I titani lasciarono guardiani di pietra a vegliare sulle loro cripte, e i guardiani sono ancora lì, senza più nessuno a cui fare rapporto. Il dovere sopravvive a chi ha dato gli ordini.",
		"Custodi di pietra sorvegliano ancora ciò che i titani hanno lasciato loro, molto dopo che i titani hanno smesso di controllare. C'è qualcosa di ammirevole, e qualcosa di triste.",
		"Un ordine dato prima che cominciasse la storia, ancora obbedito al buio. Non so decidere se sia lealtà o un lunghissimo malinteso.",
	},
	["muse.w11.history.122"] = {
		"I vecchi soldati hanno un detto: una guerra è finita quando l'ultimo che l'ha combattuta riesce a riderne. A quel metro, ne sono finite pochissime.",
		"Tra i veterani si dice che la pace cominci nelle taverne, la prima volta che due vecchi nemici dividono un tavolo. Spero di esserci, quel giorno.",
	},
	["muse.w11.history.123"] = {
		"Negli angoli più lontani del mondo, macchine dei titani ronzano ancora a compiti che nessuno ricorda. Forse tengono in piedi ogni cosa. Forse stanno contando.",
		"C'è un macchinario dei titani più vecchio di tutti i popoli viventi. Spero che quel che tiene in funzione valga ancora la pena.",
	},
	["muse.w11.history.124"] = {
		"Gli elfi della notte hanno fatto crescere un nuovo Albero del Mondo senza la benedizione dei draghi. Perdere l'eternità sembra rendere chiunque un po' impaziente.",
		"Un albero grande come una montagna, piantato per dolore e per fretta. La storia ha visto decisioni peggiori, e qualcuna migliore.",
	},
	["muse.w11.history.125"] = {
		"Un giorno qualche studioso dissotterrerà il mio cucchiaio e ci scriverà sopra un capitolo intero.",
		"Fra mille anni qualcuno troverà i miei vecchi stivali e dirà che erano oggetti rituali.",
		"Gli studiosi del futuro litigheranno sulle mie cose. Lasciamoli fare. Ci litigo già io.",
	},
	["muse.w11.history.126"] = {
		"Molto dopo che i demoni sono stati scacciati, la terra che hanno toccato resta malata. L'arma più crudele della Legione è ciò che si lascia dietro.",
		"Una battaglia dura un giorno; una foresta avvelenata dai demoni resta avvelenata per generazioni. La storia conta la prima e dimentica la seconda.",
		"I demoni non si limitano a bruciare le cose. Le guastano, piano, perché il danno continui a lavorare quando se ne sono andati.",
	},
	["muse.w11.history.127"] = {
		"Ogni fede di questo mondo ha il suo racconto di come sono cominciate le cose. Non possono avere ragione tutti, e tutti sembrano aiutare la gente ad alzarsi al mattino.",
		"I sacerdoti della Luce, gli sciamani e i druidi raccontano ognuno a modo suo l'inizio del mondo. Sospetto che al mondo non dispiaccia essere raccontato in più modi.",
	},
	["muse.w11.history.128"] = {
		"Ogni epoca ha la sua ultima resistenza. Quelle che si ricordano con affetto sono quelle in cui si è presentata abbastanza gente.",
		"Nelle vecchie cronache, le battaglie che hanno girato il mondo le hanno tenute persone arrivate tardi, stanche e mal nutrite. Consolante, in un certo senso.",
	},
	["muse.w11.history.131"] = {
		"Ogni riga di gloria nelle vecchie cronache è costata a qualcuno più dell'inchiostro. Cerco di ricordarlo quando le leggo.",
		"Le vittorie si leggono benissimo cent'anni dopo. Sul momento, per lo più, sapevano di fumo e suonavano come un pianto.",
		"La gloria è l'aspetto che ha una battaglia vista da abbastanza lontano. Da vicino ha un altro nome.",
	},
	["muse.w11.history.132"] = {
		"Non tutto quello che è antico è saggio. Certe cose sono solo vecchie e d'intralcio.",
		"Rispetta il passato, certo. Solo, non lasciare che dia gli ordini.",
		"Vecchio non vuol dire giusto. Parecchie idee antiche hanno mandato in rovina regni interi.",
	},
	["muse.w11.history.133"] = {
		"Certi posti sembrano pesanti senza motivo, e poi si scopre che lì si è combattuta una battaglia. La terra tiene i suoi registri.",
		"Sono {g:stato|stata} in posti che si facevano freddi e silenziosi senza un motivo visibile. Solo dopo ho saputo cosa ci era successo.",
		"Ogni vecchio campo di battaglia ha un silenzio diverso da tutti gli altri. Non saprei spiegarlo a uno studioso.",
	},
	["muse.w11.history.134"] = {
		"Se le cronache di quest'epoca diranno soltanto che la gente è andata avanti, per tutti noi sarebbe un bell'epitaffio.",
		"Fra tutte le cose per cui quest'epoca potrebbe essere ricordata, sceglierei questa: che non si è arresa.",
		"Un giorno anche questi tempi saranno storia antica. Spero che le rovine che lasciamo siano oneste.",
	},
	["muse.w11.history.135"] = {
		"I campi di Lordaeron sfamavano mezzo nord. Ora quello che ci cresce non lo metterebbe nel piatto nessuno.",
		"Le terre più fertili dei vecchi regni sono suolo appestato. La fame ricorderà il Flagello molto dopo che le canzoni l'avranno scordato.",
		"Il granaio di un regno, ridotto a marciume in poche stagioni. Di solito le guerre bruciano il raccolto; questa ha avvelenato la terra.",
	},
	["muse.w11.history.136"] = {
		"Ogni tanto pronuncia i vecchi nomi. Non costa niente, ed è tutto quello che i morti chiedono.",
		"Qualcuno deve dire ad alta voce i nomi dei caduti, ogni tanto. Oggi tocca a me.",
	},
	["muse.w11.memory.001"] = {
		"La memoria non mi chiede mai cosa voglio tenere. Si aggrappa alla tosse di uno sconosciuto e lascia cadere discorsi interi.",
		"Se potessi scegliere io cosa resta, sceglierei diversamente. La testa conserva gli avanzi più strani e perde le parti che contavano.",
		"La memoria è un pessimo archivista: tiene per sempre il cigolio di una porta e smarrisce le parole dette lì accanto.",
	},
	["muse.w11.memory.002"] = {
		"Ho un nome sulla punta della lingua. Non di qualcuno in particolare: solo un nome, che aspetta un volto che venga a prenderlo.",
		"Un nome continua a riaffiorare e non riesco ad attaccarlo a nessuno. Bussa, e quando apro non c'è nessuno.",
		"C'è un nome che mi gira in testa senza mai posarsi. Pagherei una moneta d'argento per sapere di chi è.",
	},
	["muse.w11.memory.003"] = {
		"Avevo un pensiero. Uno buono. È sparito. Se qualcuno lo trova, non può essere andato lontano.",
		"C'era una cosa importante da ricordare. Se la vedete, ditele che la sto aspettando.",
		"Aspetta, aspetta. Era proprio lì. Sparito. Magnifico.",
	},
	["muse.w11.memory.004"] = {
		"La mente tiene ciò che serve a restare in vita: quali piante pungono, quale terreno cede. Le cose belle le lascia andare per prime.",
		"La memoria fa ordine come un furiere: i pericoli davanti, le gentilezze in fondo, dove è difficile arrivarci.",
		"La paura scrive con inchiostro profondo, la gioia col gesso. È così che la mente ci tiene in piedi.",
	},
	["muse.w11.memory.005"] = {
		"Casa non è un posto che posso indicare. È la direzione in cui si voltano i pensieri quando nessuno chiede loro niente.",
		"Chiedimi dov'è casa e la mano non sa dove puntare. I pensieri sì: pendono sempre dalla stessa parte.",
		"Casa non è segnata su nessuna mappa che possiedo. È più una pendenza dentro di me, verso cui rotola tutto.",
	},
	["muse.w11.memory.006"] = {
		"A chiunque mi stia aspettando, se c'è qualcuno: sono più {g:lento|lenta} di quanto volessi.",
		"Se qualcuno mi tiene da parte una sedia, ha avuto pazienza. Vorrei meritarmela.",
		"Può darsi che qualcuno, oltre tutte queste miglia, mi aspetti ancora. Spero che abbia trovato un modo migliore di passare l'attesa.",
	},
	["muse.w11.memory.007"] = {
		"Chi ho lasciato indietro ha continuato a cambiare senza di me. Nella mia testa sta fermo esattamente dove l'ho visto l'ultima volta.",
		"Le persone che ho lasciato non si fermano dove le ho lasciate. Si ferma solo il ricordo che ne ho.",
		"Tengo quelli che ho lasciato esattamente com'erano. È l'unico modo che conosco per tenerli, e non è del tutto giusto nei loro confronti.",
	},
	["muse.w11.memory.009"] = {
		"Qualche rimpianto ce l'ho. Quasi tutti piccoli. Gli sbagli grossi, almeno, hanno avuto la decenza di essere interessanti.",
		"I miei rimpianti sono gente meschina: una parola sgarbata, una moneta non data, una porta sbattuta. Quelli grandi mi hanno pesato la metà.",
		"Buffo quali rimpianti durano. Non i disastri. Quella volta che non ho riso alla battuta di qualcuno.",
	},
	["muse.w11.memory.010"] = {
		"Certe scelte le rifarei senza battere ciglio, pur sapendo come vanno a finire. Sono quelle di cui mi fido.",
		"Se potessi ricominciare tutto, alcune cose le rifarei identiche. Mi ci tengo come al corrimano di una scala.",
		"Non tutti gli errori erano errori. In un paio ci ricadrei, a occhi aperti, senza esitare.",
	},
	["muse.w11.memory.011"] = {
		"Il tempo non scorre uguale. Certi giorni sono larghi un anno, e certe stagioni intere stanno in tasca.",
		"Il tempo misura male una vita. Una sola ora può pesare più di una stagione, e nessuno sa dire prima quale sarà.",
	},
	["muse.w11.memory.012"] = {
		"Promemoria: ricordarsi di ricordare le cose belle. Sono sempre le prime a uscire dalla porta.",
		"Ricordatemi di tenere i momenti buoni. Io mi aggrappo sempre a quelli sbagliati.",
	},
	["muse.w11.memory.013"] = {
		"L'inchiostro costa un rame, la carta due. La prima parola di una lettera non sono mai {g:riuscito|riuscita} a permettermela.",
		"Per una lettera servono una penna, un foglio e una prima parola. Penna e foglio li ho da un pezzo.",
	},
	["muse.w11.memory.014"] = {
		"Tutti si portano dietro qualcosa che non si vede. Il mio non pesa, proprio. Solo che non si toglie mai.",
		"C'è un peso che nessuna cinghia regge. Non è grande: c'è sempre, come una mano posata sulla spalla.",
	},
	["muse.w11.memory.015"] = {
		"Un odore può aprire nella testa una porta che non sapevo di avere. Poi si richiude prima che io veda la stanza.",
		"Gli odori sono i ladri peggiori: mi mostrano qualcosa che avevo perso e se lo riprendono prima che riesca a guardarlo.",
	},
	["muse.w11.memory.016"] = {
		"Gli insulti me li ricordo parola per parola. I complimenti devo riassumerli.",
		"Buffo: un'offesa resta affilata per una vita, una lode si consuma in una settimana.",
		"Le lodi entrano da un orecchio ed escono dall'altro. Le critiche ci costruiscono una casa e invitano gli amici.",
	},
	["muse.w11.memory.018"] = {
		"Un giorno tornerò. Forse non in un posto: a essere qualcuno che non deve continuare a muoversi.",
		"Ritorno è una parola che tengo in tasca. Non so verso dove. Mi piace il suo peso, e basta.",
	},
	["muse.w11.memory.019"] = {
		"Dimenticare non fa male. Fa male accorgersi del vuoto dove prima c'era qualcosa.",
		"Dimenticare, di per sé, è indolore. Brucia dopo, quando trovi lo scaffale vuoto.",
		"Quando un ricordo se ne va non duole niente. Il dolore arriva poi, quando allunghi la mano e stringi aria.",
	},
	["muse.w11.memory.020"] = {
		"La memoria è l'unica mappa della mia vita, e si ridisegna ogni volta che la apro.",
		"Tengo in testa la mappa della mia vita. Ogni volta che la guardo, la costa si è spostata.",
	},
	["muse.w11.memory.021"] = {
		"Se mai mi fermerò da qualche parte per sempre, voglio una sedia che traballa. Un traballio che conosco a memoria.",
		"Casa, per me, sarebbe un posto qualsiasi dove so quale asse del pavimento scricchiola.",
	},
	["muse.w11.memory.022"] = {
		"La nostalgia di casa non bussa mai. Entra di sbieco, come uno spiffero, e me ne accorgo quando è già nella stanza.",
		"La nostalgia arriva nei momenti peggiori: a metà di una trattativa, a metà pasto, a metà di una scala.",
	},
	["muse.w11.memory.023"] = {
		"Spero che chi ho lasciato ce l'abbia con me. La rabbia vuol dire che ci pensa ancora.",
		"Meglio che chi ho lasciato indietro brontoli su di me piuttosto che dimenticarmi. Brontolare è un modo di custodire.",
	},
	["muse.w11.memory.024"] = {
		"La mia memoria ha due modalità: ogni dettaglio di una figuraccia, e niente di niente su dove ho messo le cose.",
		"Ricordo parola per parola una sciocchezza detta chissà quando. Dove ho messo i guanti, invece, è un mistero.",
	},
	["muse.w11.memory.026"] = {
		"Non mi fido dei ricordi felici. Li ho lucidati troppe volte.",
		"I ricordi belli si consumano a furia di maneggiarli. Quelli brutti non li tocco mai, e restano taglienti.",
	},
	["muse.w11.memory.027"] = {
		"Un giorno qualcuno mi chiederà dove sono {g:stato|stata}. Voglio una risposta che valga l'attesa.",
		"Se mai mi ritroverò davanti a chi ho lasciato, vorrei portare qualcosa di più delle scuse.",
	},
	["muse.w11.memory.028"] = {
		"Una vita si racconta all'indietro. Solo verso la fine si capisce quali parti erano l'inizio.",
		"Nessuno sa quale giorno sia stato la svolta finché non passa molto tempo. Forse ci sono già {g:passato|passata} accanto.",
	},
	["muse.w11.memory.029"] = {
		"Mai fidarsi di un ricordo in cui fai l'eroe. I miei sono tutti così. Sospetto.",
		"In ogni storia che ricordo faccio un'ottima figura. Basta questo a dirmi che qualcuno ci ha messo le mani.",
	},
	["muse.w11.memory.030"] = {
		"Ogni vita è un libro a cui mancano le prime pagine. Nessuno ricorda come ha cominciato.",
		"Nessuno ricorda la propria prima pagina. Cominciamo tutti a leggere a metà e il resto lo indoviniamo.",
	},
	["muse.w11.memory.031"] = {
		"Devo a qualcuno un grazie che non ho mai detto. Ormai non so nemmeno a che indirizzo recapitarlo.",
		"C'è un grazie che non ho mai trovato il momento di dire. Da allora mi viaggia in tasca.",
	},
	["muse.w11.memory.032"] = {
		"Il rimpianto serve per un giorno, più o meno. Dopo è solo peso in più.",
		"Un rimpianto va sentito per bene una volta, se ne prende la lezione e lo si posa. Portarlo oltre non insegna niente.",
	},
	["muse.w11.memory.033"] = {
		"Se qualcuno di quelli che ho lasciato sta pensando a me proprio adesso, spero che ricordi una delle mie giornate migliori.",
		"Chiunque si ricordi di me, spero abbia tenuto la versione buona. Mi seccherebbe restare nella memoria di qualcuno in una giornata storta.",
	},
	["muse.w11.memory.035"] = {
		"Mi ero {g:promesso|promessa} di tenere un diario. Della promessa mi ricordo. Il diario si è fermato lì.",
		"Tutti dicono di tenere un diario. Il mio direbbe: cammino, lotta, pasto, niente tempo per scrivere.",
	},
	["muse.w11.memory.036"] = {
		"Non tengo ricordini. Tengo momenti, e si piegano più piccoli.",
		"Le cose si perdono, si rubano, si vendono. I pochi momenti che tengo davvero non occupano spazio.",
	},
	["muse.w11.memory.037"] = {
		"Una parte di me manca. Lo capisco dalla forma del buco, non da cosa c'era dentro.",
		"In me ci sono vuoti che posso aggirare ma non riempire. Ne conosco il contorno meglio di quello che ci abitava.",
	},
	["muse.w11.memory.038"] = {
		"Un giorno tutto questo sarà una storia che racconterò male. Non vedo l'ora.",
		"Un giorno la racconterò tutta storta a qualche tavola, e me la godrò un mondo.",
	},
	["muse.w11.memory.039"] = {
		"Non so se riconoscerei casa, se ci entrassi adesso. E non so se lei riconoscerebbe me.",
		"Se tornassi, la porta forse sarebbe la stessa. Chi bussa no.",
	},
	["muse.w11.memory.040"] = {
		"Più una vita è lunga, più se ne passa a ricordare. Vorrei avere tanto da fare da tenerla al contrario.",
		"C'è chi vive in avanti e chi all'indietro. Vorrei tenere la faccia girata dalla parte giusta ancora per un po'.",
	},
	["muse.w11.memory.041"] = {
		"C'è chi dice che casa è un luogo e chi dice che sono le persone. Io credo che sia una sensazione che si presenta solo da lontano.",
		"Casa, dicono, si vede meglio a distanza. Da vicino, sospetto, è soprattutto porte e faccende.",
		"Nessuno si sente a casa mentre ci sta. Per imparare la parola bisogna andarsene.",
	},
	["muse.w11.memory.042"] = {
		"I ricordi vanno percorsi come le mura durante la guardia. Salti un giro o due e qualcosa scavalca.",
		"Se non vado a trovare un ricordo ogni tanto, trasloca senza lasciare detto niente.",
		"I ricordi che nessuno va a trovare fanno i bagagli in silenzio. Un giorno torno a cercarli e la stanza è affittata a qualcun altro.",
	},
	["muse.w11.memory.043"] = {
		"Cosa stavo facendo? No, non ditemelo. Mi tornerà in mente. Torna sempre nel momento peggiore.",
		"Un attimo, ero {g:venuto|venuta} qui per un motivo. Mi tornerà in mente. Probabilmente in mezzo a una rissa.",
		"Sapevo esattamente cosa stavo per fare. Sapevo.",
	},
	["muse.w11.memory.044"] = {
		"Ogni lettera mai spedita che ho immaginato era più gentile di quanto io sia di persona. Forse è per questo che non parte.",
		"Nella mia testa scrivo lettere generose: calde, pazienti, indulgenti. Sulla carta verrei {g:smascherato|smascherata}.",
		"Le lettere che non ho mai scritto mi fanno sembrare una persona migliore. È questo il guaio, a spedirle.",
	},
	["muse.w11.memory.046"] = {
		"Anche ciò che ho dimenticato mi tiene in piedi. Non smette di farlo solo perché non lo vedo.",
		"Le cose dimenticate reggono ancora un peso, come le pietre in fondo a un muro che nessuno guarda.",
		"Metà di quello che mi ha fatto non saprei più nominarla. È lì lo stesso, sotto il pavimento, e regge.",
	},
	["muse.w11.memory.047"] = {
		"Un biglietto per chi sarò più avanti: ho fatto del mio meglio con quello che sapevo. Sii gentile, nel giudicare.",
		"Un giorno ripenserò a oggi. Vorrei poterlo guardare e annuire.",
		"Me del futuro, se ti stai ricordando di questo momento: spero che ne sia valsa la pena.",
	},
	["muse.w11.memory.048"] = {
		"La memoria è una bugiarda generosa. Ogni pasto che ricordo era migliore di qualunque cosa mangerò questa settimana.",
		"I pasti ricordati sono sempre più caldi, i letti ricordati più morbidi. La memoria non ha mai svenduto niente.",
		"Il passato migliora di cucina ogni volta che ci ripenso.",
	},
	["muse.w11.memory.049"] = {
		"Un giorno sarò il nome mezzo dimenticato di qualcuno. Spero che almeno azzecchi la prima sillaba.",
		"Prima o poi mi dimenticheranno, piano, come succede a tutti: prima la voce, poi il volto, poi il nome.",
	},
	["muse.w11.memory.050"] = {
		"A chiunque stia pensando a me in questo momento, ovunque sia: grazie. Ricambierò il favore.",
		"Se qualcuno sta pronunciando il mio nome chissà dove, spero che sia dentro una bella storia.",
		"Qualcuno, chissà dove, starà raccontando male una storia su di me. Bene. La tiene viva.",
	},
	["muse.w11.memory.051"] = {
		"Credo che casa sia dove le mie abitudini smettono di sembrare strane a chi mi sta intorno.",
		"Forse casa è semplicemente il posto dove nessuno chiede perché faccio le cose in quel modo.",
		"Dovrà pur esistere una stanza dove le mie piccole manie avrebbero senso per tutti i presenti. Immagino che casa voglia dire questo.",
	},
	["muse.w11.memory.052"] = {
		"I giorni sono lenti e le stagioni veloci. Non ho mai capito come possano essere vere tutte e due le cose.",
		"Ogni giorno si trascina, eppure le stagioni corrono. Qualcuno bara con il conto.",
		"Una sola ora può durare un'eternità, e una stagione intera può sgusciare via mentre mi allaccio uno stivale.",
	},
	["muse.w11.memory.053"] = {
		"Il dolore non viene mai quando gli fai posto. Aspetta che tu abbia le mani piene e la guardia bassa.",
		"Il lutto è un pessimo ospite: non si presenta mai quando lo inviti, e non bussa mai.",
		"Il lutto ha un calendario tutto suo, e non chiede mai se la data va bene.",
	},
	["muse.w11.memory.055"] = {
		"Chiederei scusa a qualche persona, se le strade si incrociassero di nuovo. Le parole le ho pronte. Le ripasso da un pezzo.",
		"Tengo pronte due o tre scuse, come monete per un pedaggio a cui forse non arriverò mai.",
	},
	["muse.w11.memory.056"] = {
		"Non chiedetemi da dove vengo. Risposta lunga, pazienza corta.",
		"Da dove vengo? Da dietro. Più {g:preciso|precisa} di così non divento.",
		"Da dove vengo è una storia lunga, e mi risparmio la voce.",
	},
	["muse.w11.memory.057"] = {
		"Quasi tutta una vita la dimentica proprio chi l'ha vissuta. Quel che avanza lo chiamiamo noi stessi.",
		"Ho vissuto molti più giorni di quanti ne ricordi. I pochi che ho tenuto fanno tutto il lavoro di essere me.",
		"Togli tutto quello che ho dimenticato e resta un libro sottile. Però è quello con il mio nome sopra.",
	},
	["muse.w11.memory.058"] = {
		"Ogni tetto sotto cui mi riposo è in prestito. Lo ringrazio lo stesso, piano, quando me ne vado.",
		"Nessun tetto è mio, quindi ogni tetto è un favore. Cerco di lasciarne ognuno con un po' di gratitudine.",
		"Letti in prestito, fuochi in prestito, muri in prestito. Casa, per ora, è un lungo elenco di debiti.",
	},
	["muse.w11.memory.059"] = {
		"Alcuni addii li ho detti male. Altri non li ho detti affatto. Non so quali mi pesino di più.",
		"C'è un addio che ho fatto di corsa. Se potessi rifare una cosa sola, resterei su quella soglia un momento di più.",
		"Me ne sono {g:andato|andata} senza voltarmi. Da allora non faccio che voltarmi.",
	},
	["muse.w11.memory.060"] = {
		"Continuo a ripromettermi di dimenticare certe cose apposta. E me ne dimentico sempre.",
		"Prova a dimenticare una cosa di proposito e diventa l'unica che non perderai mai.",
	},
	["muse.w11.memory.061"] = {
		"Forse casa è una cosa che costruirò, non una che ho lasciato. È un pensiero migliore su cui camminare.",
		"Casa potrebbe essere davanti, non dietro. Questa versione mi piace: dà ai piedi un motivo.",
		"Magari la casa che cerco non l'ha ancora costruita nessuno. Almeno così non sono in ritardo.",
	},
	["muse.w11.memory.063"] = {
		"Entro una stagione avrò dimenticato quasi tutto di oggi. Strano, vivere una giornata sapendolo.",
		"Oggi è già in viaggio verso l'oblio. Non è un motivo per sprecarlo: solo per scegliere.",
	},
	["muse.w11.memory.064"] = {
		"I volti che ho perso di vista non spariscono. Si confondono in un solo volto paziente, che sembra perdonarmi.",
		"Tutte le facce che ho dimenticato si sono fuse in una: gentile, stanca, appena delusa. Non si lamenta mai.",
	},
	["muse.w11.memory.065"] = {
		"Oggi niente sguardi indietro. Il passato si conserva: in questo è bravissimo.",
		"Occhi avanti. Quello che ho alle spalle non scappa.",
		"Il passato può aspettare. È l'unica cosa che aspetta sempre.",
	},
	["muse.w11.memory.066"] = {
		"A fare di un posto una casa non è il posto. È la centesima volta che varchi quella porta.",
		"Un luogo diventa casa a forza di ripetizioni: la stessa porta, lo stesso gradino, finché i piedi smettono di chiedere.",
		"Nessun posto è casa la prima volta. Ci vogliono cento ritorni qualunque per scavare il solco.",
	},
	["muse.w11.memory.067"] = {
		"Cose che farei diversamente: tante. Cose che salterei del tutto: una o due. Cose che rifarei: soprattutto quelle avventate.",
		"Strano. Le scelte prudenti sono quelle che rimpiango. Quelle avventate le rifarei domani.",
	},
	["muse.w11.memory.068"] = {
		"Ognuno che incrocio si porta dietro un passato intero, invisibile. Nessuno vede quello degli altri. Probabilmente è una grazia.",
		"Ogni volto in una folla nasconde una vita intera di ricordi. Per fortuna non possiamo sentire quelli degli altri.",
	},
	["muse.w11.memory.070"] = {
		"Vorrei che di me si ricordasse una piccola cosa fatta bene, più che una grande fatta con chiasso.",
		"Se qualcosa di me resterà, che sia una piccola gentilezza che qualcuno non sa bene da dove gli venga.",
		"Non mi serve una canzone. Basterebbe uno sconosciuto che si ricordi di quella volta che gli ho tenuto la porta.",
	},
	["muse.w11.memory.071"] = {
		"Si può avere nostalgia di casa senza avere un posto dove tornare. Il sentimento non controlla.",
		"La nostalgia non ha bisogno di una casa. Duole lo stesso per un indirizzo che non c'è più.",
	},
	["muse.w11.memory.072"] = {
		"I ricordi. Non si mangiano, non si vendono, non si posano. Roba inutile. Me li tengo lo stesso.",
		"I ricordi non valgono un rame a nessun mercato, eppure sono la cosa più pesante che possiedo.",
		"Nessun mercante accetta un ricordo in cambio. Meglio per loro: da me non avrebbero mai un prezzo onesto.",
	},
	["muse.w11.memory.073"] = {
		"Vorrei accorgermi del giorno in cui cambia, quello in cui smetto di essere {g:nuovo|nuova} in tutto questo. Sospetto che nessuno se ne accorga mai.",
		"Ci sarà un giorno in cui un principiante diventa qualcos'altro. Nessuno, a quanto pare, lo vede passare.",
	},
	["muse.w11.memory.074"] = {
		"Ho preso l'abitudine di ripetere due volte i nomi nuovi. La seconda è per la parte di me che dimentica.",
		"Un nome nuovo va detto ad alta voce due volte: una per la persona, una per il dopo. Il dopo è un disastro con i nomi.",
	},
	["muse.w11.memory.075"] = {
		"La parola casa suona diversa a seconda di quanto sono {g:stanco|stanca}. Certi giorni è un sospiro, certi giorni una sfida.",
		"Certi giorni casa è un conforto, altri un'accusa. Stessa parola, stesse quattro lettere.",
	},
	["muse.w11.memory.077"] = {
		"Chissà dove, una versione di me è rimasta ferma. Spero che si annoi. Spero che sia felice. Soprattutto che si annoi.",
		"A volte immagino la versione di me che non è mai partita: comoda, ben nutrita, e curiosa di sapere che fine ho fatto.",
		"Esiste un'altra versione di me, quella rimasta. Non avremmo niente da dirci, e saremmo tutte e due un po' gelose.",
	},
	["muse.w11.memory.078"] = {
		"Non tutto ciò che si è perso è sparito. Una parte vive soltanto dove i piedi non possono seguire.",
		"Ci sono posti che si raggiungono solo ricordando. La strada è più corta, e molto più dura.",
	},
	["muse.w11.memory.079"] = {
		"Dovrei scrivermi le cose. Mi ricorderò di farlo. Probabilmente.",
		"Io e la mia memoria abbiamo un accordo: io mi fido, e lei fa quello che le pare.",
	},
	["muse.w11.memory.080"] = {
		"Ovunque sia casa, spero che qualcuno ci apra le finestre ogni tanto. Mi servirà spazio per tutte queste storie.",
		"Se là fuori c'è una porta che mi aspetta, spero che abbia i cardini oliati. Arriverò {g:stanco|stanca}.",
	},
	["muse.w11.memory.081"] = {
		"Ricordare è una strada a sé. Certe ore percorro più terreno dietro gli occhi che sotto gli stivali.",
		"Tra un passo e l'altro attraverso stagioni intere, nella testa. Alle gambe non viene mai riconosciuto il merito.",
	},
	["muse.w11.memory.082"] = {
		"Quel che ho fatto non si disfa. Quel che farò è ancora aperto. Tengo gli occhi sulla parte aperta.",
		"Il passato è chiuso a chiave. L'ora che viene no. Solo una delle due merita la mia attenzione.",
	},
	["muse.w11.memory.083"] = {
		"Non suona nessuna campana quando una parte della vita finisce. La senti solo dopo, debole, guardandoti indietro.",
		"I capitoli di una vita non si annunciano. Ci si accorge, molto più tardi, che la pagina è stata girata.",
		"Una vita svolta gli angoli in silenzio. La curva che ricorderò di più è probabilmente una che non ho notato di prendere.",
	},
	["muse.w11.memory.084"] = {
		"Questo me lo ricorderò. Non i particolari, eh. La sensazione. È quella che resta.",
		"Qualunque cosa ne venga fuori, mi terrò la sensazione. I dettagli sono roba da studiosi.",
		"Dei particolari di oggi non ricorderò niente, immagino. Ricorderò se ho avuto coraggio.",
	},
	["muse.w11.memory.085"] = {
		"Casa è l'unico posto che posso arredare come mi pare, finché resta nella mia testa.",
		"Nella mia testa, casa ha esattamente i mobili che voglio e nessuno passa mai senza avvisare.",
		"La casa che mi porto in testa non ha mai bisogno di riparazioni. Da questo capisco che non è vera.",
	},
	["muse.w11.memory.086"] = {
		"Ogni cosa dimenticata è ancora lì, in qualche modo. Forse non in me. Ma è successa, e questo non si disfa.",
		"Quello che dimentico è successo lo stesso. Il mondo tiene il registro anche quando io perdo la mia copia.",
		"Dimenticare una cosa non la cancella. Il giorno resta fatto, che io ne conservi la ricevuta o no.",
	},
	["muse.w11.memory.088"] = {
		"Certe perdite so nominarle. Altre le conosco solo dall'abitudine che è sopravvissuta.",
		"Mi sorprendo a mettere da parte una porzione per nessuno. L'abitudine è rimasta, qualunque cosa servisse.",
		"In me ci sono abitudini sopravvissute al loro motivo. Le tengo per cortesia verso quello a cui servivano.",
	},
	["muse.w11.memory.089"] = {
		"Col tempo diventa più facile ricordare con gentilezza. Anche le cose dure si smussano ai bordi, se le lascio fare.",
		"Il tempo leviga il peggio. Non del tutto. Abbastanza da poterlo raccogliere senza tagliarsi.",
	},
	["muse.w11.memory.090"] = {
		"Rimpianti? Qualcuno. Li tengo in un sacco e non lo apro davanti alla gente.",
		"I rimpianti sono come stivali vecchi: ne ho un paio, stringono, e non li butto.",
		"Dei rimpianti non parlo. Sentono il loro nome e si mettono in testa strane idee.",
	},
	["muse.w11.memory.091"] = {
		"Il tempo è l'unico ladro che non posso né prendere né incolpare. Si porta via tutto con garbo, un'ora dopo l'altra.",
		"Il tempo deruba tutti e nessuno chiama le guardie. È troppo educato.",
		"Gli anni si prendono le cose con tanta delicatezza che finisci per ringraziarli mentre escono.",
	},
	["muse.w11.memory.092"] = {
		"Se mai troverò una casa, voglio arrivarci piano, per non perdermi il momento in cui comincia a sembrare familiare.",
		"Quando finalmente arriverò in un posto che sa di casa, spero di riconoscerlo prima di tirare dritto.",
		"Casa potrebbe essere un posto che attraverso senza accorgermene. Sto {g:attento|attenta}, non si sa mai.",
	},
	["muse.w11.memory.094"] = {
		"Concedi ai ricordi un'ora di quiete e cominciano a parlare tra loro. Io mi limito ad ascoltare.",
		"Il silenzio si riempie di ricordi, se lo lascio fare. Non sempre di quelli che sceglierei.",
		"Lascia sola una mente tranquilla per un'ora e il passato ci si trasferisce, armi e bagagli.",
	},
	["muse.w11.memory.095"] = {
		"Nessuno ti avverte di quanto sembri normale un'ultima volta. Un cenno, una porta che si chiude, a presto.",
		"L'ultima volta che ho visto certe persone non sapevo che fosse l'ultima. Le avrei guardate più a lungo.",
		"Se avessi saputo che era l'ultima volta, avrei detto qualcosa. Qualunque cosa.",
	},
	["muse.w11.memory.096"] = {
		"Là dietro c'è qualcuno a cui devo una visita. La pagherò. Prima o poi. Probabilmente con gli interessi.",
		"Devo una visita a un paio di persone. L'avranno. Se la vorranno è un altro discorso.",
		"C'è una soglia che vanta un credito con me. Un giorno andrò a saldarlo.",
	},
	["muse.w11.memory.097"] = {
		"È con la memoria che i morti tengono un piede tra i vivi. Cerco di dare ai miei un posto decente dove stare.",
		"Finché qualcuno ricorda, chi se n'è andato non è sparito del tutto. Sono una stanza piccola, ma lì è il benvenuto.",
		"Chi non c'è più vive in chiunque si prenda il disturbo di ricordarlo. Io cerco di prendermelo.",
	},
	["muse.w11.memory.098"] = {
		"Tutti chiedono da dove vieni e nessuno dove vai. La seconda è una domanda molto migliore.",
		"La gente vuole sapere da dove vengo. Preferirei che chiedesse dove vado: su quello ho avuto più voce in capitolo.",
		"Da dove vieni? È una domanda per chi è rimasto. Noi altri rispondiamo con una direzione.",
	},
	["muse.w11.memory.099"] = {
		"Chi ero ieri mi riconoscerebbe a stento. Chi sarò domani, spero, almeno mi saluterà con un cenno.",
		"Cambio un poco ogni giorno e non mi colgo mai sul fatto. Come un debito, o il muschio.",
		"Ogni giorno sono una persona appena un po' nuova. Il trucco è che la direzione mi piaccia.",
	},
	["muse.w11.memory.101"] = {
		"Ogni popolo di questo mondo ha una parola per casa, e nessuna si traduce bene. Forse è proprio questo il punto.",
		"Orchi, nani, elfi, troll: tutti hanno una parola per il posto a cui si torna. Nessuna suona uguale, e tutte vogliono dire la stessa nostalgia.",
	},
	["muse.w11.memory.102"] = {
		"Credo di star costruendo qualcosa con i giorni. Solo che da dentro non ne vedo ancora la forma.",
		"Una vita si legge solo da lontano, come un'incisione su una parete di roccia. Da vicino sono solo schegge e polvere.",
	},
	["muse.w11.memory.103"] = {
		"C'è una stanchezza che non ha niente a che fare con le gambe. Viene dal portarsi dietro le cose successe.",
		"Certa spossatezza non sta nei muscoli. Sta nel ricordare, e nessun letto ci arriva.",
		"Tolgo gli stivali e i piedi mi perdonano. L'altro peso non si toglie con niente.",
	},
	["muse.w11.memory.104"] = {
		"Ottima memoria, la mia. Pessima con nomi, facce, luoghi e date, ma per il resto eccellente.",
		"Non dimentico mai una faccia. Dimentico solo che nome ci va sopra, dove ci siamo visti e perché mi guarda storto.",
	},
	["muse.w11.memory.105"] = {
		"Se la mia vita fosse un libro mastro, spero che l'ultima pagina abbia più grazie che scuse. C'è ancora tempo per sistemare i conti.",
		"Chissà dove gira un conto: le cose gentili da una parte, quelle dure dall'altra. Vorrei chiudere in attivo.",
	},
	["muse.w11.memory.107"] = {
		"Tengo un po' di ogni posto in cui mi sono {g:fermato|fermata}: un suono, un odore, il modo in cui si incastrava una porta. Forse casa è la somma.",
		"Ogni posto dove mi fermo mi lascia dentro una briciola di sé. Forse con abbastanza briciole si fa una casa.",
	},
	["muse.w11.memory.108"] = {
		"Le parole che non ho detto fanno più rumore di quelle che ho detto. Il silenzio ha un'eco lunga.",
		"Ho rimpianto parecchie cose dette. Quelle non dette le rimpiango più a lungo.",
		"Le cose non dette si conservano. Il guaio è tutto lì: non vanno mai a male, e non se ne vanno mai.",
	},
	["muse.w11.memory.109"] = {
		"A chi aspetta: resisti ancora un po'. Non mi sono {g:dimenticato|dimenticata}.",
		"Non {g:dimenticato|dimenticata}. Solo in ritardo. Riferitelo, se qualcuno chiede.",
		"A chiunque mi aspetti: arrivo. Piano, storto, ma arrivo.",
	},
	["muse.w11.memory.110"] = {
		"A volte ricordo cose che non possono essere successe. Memoria, o un sogno che si è trattenuto troppo? Non so mai dirlo.",
		"Ho dentro un ricordo che non so collocare: una stanza, una voce, un tepore. Forse è mio. Forse l'ho preso in prestito da una storia.",
		"Una parte di ciò che ricordo forse l'ho solo sentita raccontare. Si è installata in casa e si è presa le sedie buone.",
	},
	["muse.w11.memory.111"] = {
		"Partire diventa più leggero con l'esercizio. Se sia un bene, non l'ho ancora deciso.",
		"Ogni partenza è un po' più facile della precedente. Non so se voglio diventare {g:bravo|brava} ad andarmene.",
		"Si dice che agli addii ci si abitua. Preferirei di no, sinceramente: mi pare un talento che costa caro.",
	},
	["muse.w11.memory.113"] = {
		"La nostalgia è la memoria a cui hanno tolto i cattivi odori.",
		"Col senno di poi tutto aveva un bagliore caldo. Sul momento, soprattutto mosche.",
		"La nostalgia: il passato, messo in ordine per gli ospiti.",
	},
	["muse.w11.memory.114"] = {
		"Spero che chi ho lasciato abbia smesso di preoccuparsi. Spero non del tutto.",
		"Che si preoccupino un po', quelli rimasti indietro. Quanto basta a tenere caldo il mio nome.",
	},
	["muse.w11.memory.115"] = {
		"Nessuno si riprende i giorni. Per me è un motivo per spenderli, non per accumularli.",
		"I giorni sono l'unica moneta che nessuno può mettere da parte. Spendili, allora, e spendili per qualcosa.",
		"Non posso mettere i giorni in una borsa per dopo. Ognuno si spende che io scelga o no, quindi tanto vale scegliere.",
	},
	["muse.w11.memory.116"] = {
		"Bene. Basta ricordare. Ho del lavoro davanti.",
		"Per una seduta, di passato ne ho avuto abbastanza. In piedi.",
		"I ricordi dopo. Adesso le mani al lavoro.",
	},
	["muse.w11.memory.117"] = {
		"Elune, la Luce, la Madre Terra, i loa: ogni fede di cui ho sentito parlare promette una specie di ritorno a casa. A me basterebbe una sedia accanto a una porta.",
		"Ogni credo di questo mondo sembra finire con un ritorno a casa. Su tutto il resto litigano, su questo no.",
	},
	["muse.w11.memory.118"] = {
		"Un ricordo raccontato ad alta voce cambia un po' ogni volta. Mi domando quanti dei miei siano ancora l'originale.",
		"Ogni volta che lo si racconta, un ricordo si consuma come un gradino. Alcuni dei miei sono consumati fino alla storia di sotto.",
	},
	["muse.w11.memory.120"] = {
		"Una vita è troppo lunga per ricordarla tutta e troppo corta per finirla. Mi prendo la parte di mezzo e ci faccio quel che posso.",
		"Troppo lunga per tenerla tutta in testa, troppo breve per fare ogni cosa. La vita è misurata male in entrambi i sensi.",
	},
	["muse.w11.memory.121"] = {
		"La mia memoria va a fare commissioni senza di me e torna con le cose sbagliate.",
		"Ho mandato la memoria a prendere un nome. È tornata con un litigio di chissà quando, e basta.",
		"Chiedi alla mia memoria una cosa semplice e te ne consegna tre inutili e un rancore.",
	},
	["muse.w11.memory.122"] = {
		"Ovunque vada, vengo da un'altra parte. È strano esserlo per sempre.",
		"Venire da altrove è un mantello che non si toglie mai. Certi giorni tiene caldo. Certi giorni pizzica.",
		"In ogni posto tranne uno sono {g:quello|quella} che non è di qui. Forse ormai anche in quello.",
	},
	["muse.w11.memory.123"] = {
		"A quelli che ho dimenticato. Non è colpa vostra. È mia.",
		"A tutti quelli di cui ho perso il nome. Valevate la pena di essere ricordati.",
		"Un cenno ai dimenticati, compresi i miei. Qualcuno dovrà pur farlo.",
	},
	["muse.w11.memory.124"] = {
		"Non ho bisogno di sapere se qualcuno mi aspetta. Credere che possa esserci basta a tenermi il passo onesto.",
		"Che qualcuno aspetti o no, cammino come se ci fosse. Mi impedisce di ciondolare.",
	},
	["muse.w11.memory.125"] = {
		"Mi sono {g:perdonato|perdonata} quasi tutto. Il resto è su una lista, e la lista è più corta di prima.",
		"Perdonarsi è un lavoro lento. Ne faccio un po' ogni volta che le cose si calmano.",
	},
	["muse.w11.memory.127"] = {
		"Se mi togliessero tutto quello che ricordo, sarei ancora io? Mi piace pensare che resterebbe qualcosa di testardo.",
		"Togli ogni ricordo e sospetto che un'abitudine o due resterebbero in piedi. Forse il vero me è quello.",
		"Leva i ricordi e guarda cosa resta. Sono quasi {g:sicuro|sicura} che si lamenterebbe ancora del cibo.",
	},
	["muse.w11.memory.128"] = {
		"Non tutto ciò che ho lasciato indietro è andato perso. Certe cose le ho posate di proposito, e sono più {g:leggero|leggera}.",
		"Certe cose non le ho perse. Le ho posate, apposta, e me ne sono {g:andato|andata}. È stata una bella giornata.",
	},
	["muse.w11.memory.131"] = {
		"La paura del rimpianto mi ha fatto varcare più porte di quante ne abbia mai aperte il coraggio.",
		"Metà del mio coraggio è solo non voler ricordare {g:me stesso|me stessa} che torna indietro.",
		"Meglio portarsi dietro un livido che un «e se?». I lividi passano.",
	},
	["muse.w11.memory.132"] = {
		"Il passato cresce ogni giorno e il futuro si accorcia di conseguenza. Cerco di non fare i conti.",
		"Ogni giorno si aggiunge in fondo alla pila. Alla pila non importa quanto riesco a portare.",
		"Chissà quando la bilancia passerà da ciò che ho davanti a ciò che ho dietro. Me ne accorgerò solo molto dopo.",
	},
	["muse.w11.memory.133"] = {
		"Un giorno sarò io a raccontare ai giovani com'era. Meglio che venga bene.",
		"Sto raccogliendo storie con cui annoiare la gente più avanti. Bel bottino, finora.",
		"Appunto per dopo: questa parte va esagerata.",
	},
	["muse.w11.memory.134"] = {
		"I ricordi sono l'unico bagaglio che nessuno può rubare. E anche l'unico che non posso lasciare in una locanda.",
		"I ladri possono prendermi la borsa e lo zaino. Per quello che ricordo dovrebbero faticare parecchio.",
		"Tutto quello che possiedo si può perdere in una brutta giornata. Quello che ricordo viene dove vado io, che lo voglia o no.",
	},
	["muse.w11.people.001"] = {
		"Una piazza piena di gente sa essere più solitaria di una strada vuota. La strada, almeno, non finge.",
		"In una città hai centinaia di persone a portata di voce, e nessuna si accorgerebbe se sparissi. Le folle sono brave in questo.",
		"La solitudine alza la voce quanta più gente le sta intorno. Strana aritmetica.",
	},
	["muse.w11.people.002"] = {
		"Le gentilezze più piccole sono quelle che durano. Una mano sul braccio, una porta tenuta aperta, qualcuno che si stringe per farti posto.",
		"Nessuno scrive canzoni su chi si sposta sulla panca per farti sedere. Dovrebbero. È metà della buona creanza.",
	},
	["muse.w11.people.003"] = {
		"Fidati di tutti, dicono. Poi conta le monete, dico io.",
		"Mi fido ciecamente della gente. Solo, tengo la borsa dal lato dove non arrivano.",
		"Brava gente, quasi tutta. Comunque, una mano sulla borsa non ha mai offeso nessuno.",
	},
	["muse.w11.people.004"] = {
		"Gli osti sanno tutto quello che vale la pena sapere di un posto. Aspettano solo che ordini il secondo boccale prima di raccontartelo.",
		"Se voglio la verità su una città non la chiedo alle guardie. La chiedo a chi versa da bere e pulisce i tavoli.",
	},
	["muse.w11.people.005"] = {
		"C'è chi ti cammina accanto per un solo pomeriggio e lascia un segno più profondo di un anno di cortesie.",
		"Le amicizie di strada sono brevi per natura. Non è un buon motivo per risparmiarsi finché durano.",
		"La compagnia migliore arriva spesso con un bivio già incluso. Lo sai fin dall'inizio, e te la godi lo stesso.",
	},
	["muse.w11.people.006"] = {
		"Anche il prossimo che dovrò combattere si è alzato dal letto per un motivo. Come me.",
		"Quelli dall'altra parte mangiano, dormono, si lamentano degli stivali. È più comodo non pensarci, e allora mi obbligo a pensarci.",
	},
	["muse.w11.people.008"] = {
		"L'«ultima offerta» di un mercante ha più vite di un gatto. Può morire tre volte nella stessa conversazione.",
		"Il prezzo finale di un mercante non esiste. Esiste solo il prezzo prima che tu faccia per andartene.",
	},
	["muse.w11.people.009"] = {
		"Le guardie passano la vita a sorvegliare un cancello da cui non passa niente. Per loro il successo è quello, e nessuno le ringrazia.",
		"Il giorno migliore di una buona guardia è quello in cui non succede niente. Mestiere duro, andare fieri del nulla.",
	},
	["muse.w11.people.010"] = {
		"Impara sempre il nome di chi ti dà da mangiare. Costa poco e non va mai sprecato.",
		"Il nome del cuoco, del fabbro e dello stalliere: quelli vanno saputi. I re possono aspettare.",
	},
	["muse.w11.people.011"] = {
		"Un colpo da un nemico fa solo male. Per fare danni veri ci vuole un amico: sa dove abbassi la guardia.",
		"Il tradimento ha bisogno di vicinanza. Nessuno è mai stato pugnalato alle spalle da chi teneva a distanza.",
	},
	["muse.w11.people.012"] = {
		"I bambini fanno le domande che i grandi hanno smesso di fare. Dove va la strada? Perché quel signore è triste? Domande giuste, tutte.",
		"Lascia un bambino un minuto con uno sconosciuto e gli chiederà proprio la cosa che tutti gli altri erano troppo educati per chiedere.",
	},
	["muse.w11.people.013"] = {
		"I vecchi seduti sulla soglia di casa hanno visto passare più mondo di quanto molti viaggiatori ne attraversino.",
		"Siediti accanto a qualcuno di anziano per un'ora e taci. Te ne andrai sapendo qualcosa che nessuno ha messo per iscritto.",
	},
	["muse.w11.people.014"] = {
		"Un amico è uno con cui si può tacere senza che nessuno dei due vada in cerca di qualcosa da dire.",
		"La prova di un'amicizia non sono le chiacchiere. È se il silenzio, dopo, è un posto dove si sta bene.",
	},
	["muse.w11.people.015"] = {
		"Tutti vanno di fretta finché non c'è una rissa da guardare. Allora il tempo lo trovano eccome.",
		"Una folla che non si ferma per un mendicante sta lì un'ora a guardare due ubriachi che litigano.",
	},
	["muse.w11.people.016"] = {
		"Le cose decenti che la gente fa quando nessuno guarda sono più di quelle crudeli. Solo, fanno meno rumore.",
		"Per ogni cattiveria raccontata all'osteria ci sono una dozzina di piccole decenze che nessuno si prende la briga di nominare.",
	},
	["muse.w11.people.017"] = {
		"La fiducia si presta, non si regala. Ne dai un po', guardi cosa torna indietro, e decidi se prestarne ancora.",
		"Concedo fiducia come presterei denaro a uno sconosciuto: poco all'inizio, di più se me lo restituisce.",
	},
	["muse.w11.people.019"] = {
		"Le persone escono da una vita come ci sono entrate: senza addii, e un giorno c'è solo un vuoto dove prima stavano.",
		"Non tutti quelli che se ne vanno muoiono. Quasi tutti prendono un'altra strada e non pensano a mandare notizie. Anche questo è un piccolo lutto.",
	},
	["muse.w11.people.020"] = {
		"Le voci corrono più veloci di qualunque corriere, e arrivano in condizioni molto peggiori.",
		"Una diceria passa di mano una dozzina di volte, e a ogni passaggio ci guadagna un drago.",
	},
	["muse.w11.people.021"] = {
		"Caricare un mostro richiede fegato. Dire «avevo torto» in faccia a qualcuno ne richiede di più, e lo si vede molto più di rado.",
		"La gente affronta zanne e fuoco piuttosto che ammettere un errore ad alta voce. Strano dove si assottiglia il coraggio.",
	},
	["muse.w11.people.022"] = {
		"Se qualcuno chiede aiuto e io posso darlo, il fatto che l'abbia chiesto basta e avanza.",
		"A qualcuno serve una mano, io ne ho due. C'è poco da decidere.",
	},
	["muse.w11.people.023"] = {
		"Ogni casa davanti a cui passo ha i suoi litigi, le sue battute, il suo modo di apparecchiare. Non ne conoscerò mai uno.",
		"Dietro ogni porta c'è una vita con le sue regole su chi si siede dove. Strano passarne accanto a così tante e non stare dentro a nessuna.",
	},
	["muse.w11.people.024"] = {
		"Perdonare qualcuno non vuol dire lasciarglielo rifare. Vuol dire smettere di portarlo io al posto suo.",
		"Perdono soprattutto per me. I rancori pesano, e a trascinarmeli dietro sarei io.",
	},
	["muse.w11.people.025"] = {
		"Una stretta di mano dice più di un nome. Troppo molle, troppo lunga, troppo ansiosa di finire: è tutta informazione.",
		"Imparo di più da come qualcuno stringe la mano che da qualunque cosa dica mentre lo fa.",
	},
	["muse.w11.people.027"] = {
		"Per ogni nemico che cade, in qualche angolo del mondo qualcuno piangerà. Non serve che mi piaccia. Basta saperlo.",
		"Ogni nemico era per qualcuno il motivo di tornare a casa. Saperlo non ferma la mano. La tiene solo onesta.",
	},
	["muse.w11.people.028"] = {
		"Chi cucina per gli sconosciuti di mestiere fa una specie di magia silenziosa. Nessuno lo ringrazia mai come si deve.",
		"Una scodella calda dalla cucina di uno sconosciuto vale più di quasi tutti i regali che saprei nominare.",
	},
	["muse.w11.people.029"] = {
		"La gente mi piace. In piccole dosi. A una certa distanza. Con una porta in mezzo.",
		"Le persone sono meravigliose. Soprattutto quelle che vanno nella direzione opposta.",
	},
	["muse.w11.people.030"] = {
		"Riesco a stare a lungo senza compagnia. Non mi mancano le chiacchiere. Mi manca qualcuno che dica il mio nome come se contasse qualcosa.",
		"Non è la conversazione che mi manca. È sentire il mio nome sulle labbra di un altro, detto con gentilezza.",
	},
	["muse.w11.people.031"] = {
		"I bugiardi danno troppi dettagli. Chi dice la verità ne scorda la metà e non se ne preoccupa.",
		"Una storia vera ha dei buchi. Una bugia è stata rattoppata finché non luccica.",
	},
	["muse.w11.people.032"] = {
		"Nessuno di quelli che cuociono il pane o rammendano le reti ha chiesto una sola di queste guerre. Se proprio combatto, che sia perché possano continuare a non chiederne.",
		"Quasi tutti vogliono solo lavorare, mangiare ed essere lasciati in pace. Non è poco, da difendere.",
	},
	["muse.w11.people.034"] = {
		"Dire di no a chi chiede con garbo è più difficile che battersi con chi non chiede affatto.",
		"Preferisco una bestia che ringhia a un viso gentile che mi chiede quello che non posso dare.",
	},
	["muse.w11.people.035"] = {
		"Ascolta la gente abbastanza a lungo e senti da dove viene da come dice le parole più semplici. Acqua. Pane. Casa.",
		"Ognuno si porta la sua terra nelle vocali. Puoi nascondere i colori, non il modo in cui dici «pane».",
	},
	["muse.w11.people.036"] = {
		"Sii gentile con chi porta la posta e con chi bada alle bestie. Il mondo intero si regge su di loro.",
		"Un grazie agli stallieri. Un grazie ai corrieri. Nessun altro glielo dice.",
	},
	["muse.w11.people.037"] = {
		"È difficile continuare a odiare un popolo dopo aver visto uno dei suoi ridere a una battuta scema. Sospetto che sia per questo che l'odio tiene le distanze.",
		"L'odio funziona meglio da lontano. Da vicino il nemico comincia ad avere abitudini, una risata, un modo di zoppicare.",
	},
	["muse.w11.people.038"] = {
		"Metti una dozzina di sconosciuti in fila allo stesso banco e saprai tutto di loro. Chi sbuffa, chi spinge, chi fa passare avanti i vecchi.",
		"Il modo più rapido per conoscere la gente è farla aspettare. La pazienza mostra la venatura di una persona come la pialla quella del legno.",
	},
	["muse.w11.people.039"] = {
		"C'è un conforto nell'essere nessuno in mezzo alla folla. Nessuno si aspetta niente da una faccia che non rivedrà più.",
		"Nel viavai di una strada affollata posso non essere nessuno in particolare per un'ora. Riposa, passare inosservati.",
	},
	["muse.w11.people.041"] = {
		"La prima impressione è un'ipotesi vestita da sentenza. Cerco di tenerla al guinzaglio lungo.",
		"Decido cosa penso di qualcuno in un attimo, e poi passo una settimana a scoprire che avevo torto. Tanto vale aspettare la settimana.",
	},
	["muse.w11.people.042"] = {
		"Chiunque mi stia guardando le spalle adesso: me ne accorgo. Non lo dico abbastanza.",
		"È bello avere intorno gente che tornerebbe indietro a prendermi. Spero sappiano che vale anche al contrario.",
	},
	["muse.w11.people.043"] = {
		"Il sorriso più cordiale di ogni mercato è quello di chi ti ha appena fatto pagare troppo.",
		"Quando un mercante comincia a trattarmi come una vecchia conoscenza, ricontrollo cosa ho appena accettato.",
		"Un bottegaio che ride a tutte le mie battute, prima o poi me le mette in conto.",
	},
	["muse.w11.people.044"] = {
		"I guaritori vedono tutti al loro peggio e li trattano con delicatezza lo stesso. Non conosco una gentilezza più difficile.",
		"Chi rattoppa sconosciuti di mestiere vede la gente nel suo momento più brutto, e continua a essere gentile. È un coraggio a parte, e silenzioso.",
		"Chi fascia ferite agli sconosciuti ha sentito ogni genere di imprecazione, e dice ancora «non muoverti» con dolcezza.",
	},
	["muse.w11.people.045"] = {
		"Mai ridere di chi chiede la strada. Il tuo turno arriva presto.",
		"A chi si è perso e chiede, rispondi con garbo. Prima o poi tocca a tutti.",
	},
	["muse.w11.people.047"] = {
		"Mettersi in mezzo per uno sconosciuto è il coraggio più puro. Niente gloria, niente grazie, e non saprai mai come gli è andata poi.",
		"Nessuno ricorda chi ha fermato il prepotente per strada. Chi veniva tormentato, però, sì. E basta.",
		"Frapporsi tra uno sconosciuto e i guai costa un attimo di fegato. Tirare dritto costa qualcosa che dura di più.",
	},
	["muse.w11.people.048"] = {
		"Una buona osteria suona come venti litigi che nessuno ha intenzione di vincere.",
		"Ascolta una sala comune abbastanza a lungo e sono sempre le stesse tre storie, raccontate più forte a ogni giro.",
		"Ogni taverna ha gli stessi personaggi: quello che urla, quello triste, quello che deve soldi a tutti. Cambia solo la birra.",
	},
	["muse.w11.people.049"] = {
		"Quasi nessun tradimento è premeditato. Qualcuno ha paura, o fame, e la scelta si fa da sola. Non per questo pesa meno.",
		"Nel racconto che fanno di sé, i traditori non sono quasi mai i cattivi. Per lo più sono persone spaventate che hanno trovato un motivo abbastanza buono.",
	},
	["muse.w11.people.051"] = {
		"In ogni paese sono {g:lo sconosciuto|la sconosciuta} di cui qualcuno diffida. Cerco di esserlo come si deve.",
		"Ovunque mi fermi, sono la faccia ignota ai margini della giornata di qualcuno. Vale la pena ricordarsi come la si vede dal loro lato.",
		"In ogni posto dove arrivo divento l'argomento della gente del luogo, una volta che me ne sono {g:andato|andata}. Spero di essere un argomento breve e piacevole.",
	},
	["muse.w11.people.052"] = {
		"Quando è facile aiutano tutti. Un amico è chi si presenta quando è scomodo e non ci guadagna niente.",
		"Non è nei giorni buoni che scopri chi ti è amico. I giorni buoni sono affollati.",
		"L'amicizia si misura nei favori chiesti all'ora sbagliata, e concessi senza un sospiro.",
	},
	["muse.w11.people.053"] = {
		"Le guardie mi guardano sempre come se stessi per rubare qualcosa. Mi lusinga che mi credano capace.",
		"Lo sguardo di una guardia farebbe cagliare il latte. Immagino sia scritto nel contratto.",
	},
	["muse.w11.people.054"] = {
		"Chi è vecchio parla delle guerre che ha vissuto più piano di quanto i giovani parlino di quelle che conoscono solo per sentito dire.",
		"Chi c'era non lo racconta mai ad alta voce. Quelli che alzano la voce sono sempre quelli che non c'erano.",
	},
	["muse.w11.people.055"] = {
		"I bambini che giocano alla guerra con i bastoni combattono sempre lealmente e tornano sempre a casa per cena. Bisognerebbe affidare il comando a loro.",
		"Guarda i bambini giocare alle battaglie: qualcuno fa sempre l'eroe, e nessuno resta morto. I grandi avrebbero da imparare dalle loro regole.",
	},
	["muse.w11.people.057"] = {
		"Il mondo si divide in chi ha bisogno che qualcuno vada a prendergli qualcosa e chi ci va. So bene da che parte sto.",
		"Dovunque vada c'è qualcuno che aspetta uno sconosciuto che gli risolva i problemi. Lusinghiero, finché non vedo quanto sono grossi.",
		"Buffo quanta gente se ne stia lì ferma, sperando che passi qualcuno come me. Chissà cosa faceva prima.",
	},
	["muse.w11.people.058"] = {
		"Chi se n'è andato non se ne va tutto in una volta. Prima la voce, poi il viso, e per ultimo il modo in cui rideva.",
		"Le persone che perdiamo lasciano abitudini in chi le conosceva: una parola prediletta, un modo di fare un nodo. Continuano così, nei gesti piccoli.",
	},
	["muse.w11.people.059"] = {
		"Di' quello che farai, poi fallo. Quasi tutti arrivano a metà.",
		"Presentati quando hai detto che l'avresti fatto. È un dono più raro dell'oro.",
	},
	["muse.w11.people.060"] = {
		"Le risate che arrivano dal tavolo accanto sono un suono strano da avere vicino. Calde, e non mie.",
		"C'è una solitudine particolare nel sentire una sala intera ridere di una battuta per cui sono {g:arrivato|arrivata} troppo tardi.",
	},
	["muse.w11.people.061"] = {
		"Un avversario che combatte bene merita di essere battuto bene. Le vittorie sciatte offendono entrambe le parti.",
		"Meglio un nemico onesto davanti che un amico disonesto accanto sulla strada.",
		"Rispettare un nemico non è debolezza. È solo vederci chiaro.",
	},
	["muse.w11.people.063"] = {
		"La pietà è una scelta fatta nel momento peggiore, quando ogni ragione dice il contrario. È per questo che conta.",
		"Risparmiare qualcuno costa più che colpirlo. Devi convivere col non sapere cosa farà del regalo.",
	},
	["muse.w11.people.064"] = {
		"I contadini parlano del tempo come i soldati parlano del nemico: con rispetto, e senza illusioni.",
		"Chiedi a un pescatore com'è il mondo e ti parlerà di acqua, pazienza e reti. Chiedilo a un soldato e saranno mura. Ognuno lo vede dal suo mestiere.",
	},
	["muse.w11.people.065"] = {
		"Ogni paese ha qualcuno che sa tutto e qualcuno che gli crede. Di solito sono sposati.",
		"Ogni villaggio ha il suo sapientone. Cerco di scoprire chi è prima di cominciare a fare domande.",
	},
	["muse.w11.people.066"] = {
		"Nelle tasche dei caduti c'è la stessa roba che ho io: qualche moneta, qualcosa da mangiare, un piccolo oggetto che non contava per nessun altro.",
		"Fruga tra le cose di un nemico e troverai un sasso portafortuna, un guanto rammendato, una crosta mangiata a metà. I nemici sono per lo più gente con le sue faccende.",
	},
	["muse.w11.people.068"] = {
		"Un prestito tra amici è un coltellino lasciato sul tavolo. Di solito nessuno lo tocca. Di solito.",
		"Quando un amico mi chiede soldi, mi domando se posso permettermi di non rivederli mai più. Se posso, smetto di chiamarlo prestito.",
	},
	["muse.w11.people.069"] = {
		"Certi giorni ho bisogno della gente come dell'acqua. Altri giorni farei un'ora di strada in più per evitare un solo saluto.",
		"Non sono {g:scontroso|scontrosa}. È che la mia scorta di conversazione si esaurisce, e si ricarica piano.",
	},
	["muse.w11.people.070"] = {
		"Sono più {g:coraggioso|coraggiosa} per conto d'altri che per conto mio. Forse il coraggio serve a questo.",
		"Se fosse solo per me, forse scapperei. Per uno sconosciuto che non può farlo, scopro che resto. Non lo capisco fino in fondo.",
	},
	["muse.w11.people.071"] = {
		"Una buona parola non costa niente e arriva più lontano di un cavallo.",
		"Di' qualcosa di gentile a qualcuno, oggi. È la cosa più economica al mondo che funzioni ancora.",
	},
	["muse.w11.people.072"] = {
		"Ogni oste giura che i letti sono puliti. Ogni letto ha la sua opinione in merito.",
		"Il sorriso di un oste ti misura la borsa appena varchi la porta. È giusto: il mio misura lo stufato.",
	},
	["muse.w11.people.074"] = {
		"La fiducia guarisce come un osso: torna a reggere, ma fa male quando cambia il tempo.",
		"Puoi perdonare un tradimento e non voltare mai più le spalle. Le due cose stanno insieme.",
	},
	["muse.w11.people.075"] = {
		"Quasi quasi vorrei fare una sola domanda a ogni sconosciuto: in cosa speri? Imparerei più che da qualunque mappa.",
		"Se chiedessi a ogni persona che incrocio cosa desidera di più, avrei mille risposte, e forse quattro diverse.",
	},
	["muse.w11.people.076"] = {
		"Le guerre non scoppiano tra sconosciuti. Scoppiano tra vicini che hanno smesso di parlarsi.",
		"Gratta la faida più antica e troverai due persone che un tempo attingevano allo stesso pozzo.",
	},
	["muse.w11.people.077"] = {
		"Se qualcuno è ferito, lo dica. L'orgoglio guarisce più lentamente di un taglio.",
		"Se vi serve una pausa, chiedetela. Preferisco aspettare che portarvi in braccio.",
	},
	["muse.w11.people.079"] = {
		"Tengo in testa una breve lista di persone che sono state gentili con me senza motivo. È l'unica che rileggo quando sono giù.",
		"Quando il mondo mi sembra meschino, penso all'ultimo sconosciuto che mi ha fatto un favore. Di solito regge.",
	},
	["muse.w11.people.080"] = {
		"La lealtà che si compra sta solo aspettando un'offerta migliore.",
		"Paga qualcuno perché ti stia accanto e ci resterà esattamente quanto durano le monete.",
	},
	["muse.w11.people.081"] = {
		"Ogni popolo di questo mondo ha una regola sull'ospite accanto al fuoco. Strano come i nemici vadano tutti d'accordo almeno su quella.",
		"Sfama il viandante, e niente domande finché la scodella non è vuota. Mezzo mondo rispetta questa legge, e nessuno l'ha mai scritta.",
	},
	["muse.w11.people.082"] = {
		"In mezzo alla folla tutti sembrano sapere dove mettersi. Io sono sempre {g:quello|quella} che si sposta a cercare un posto contro il muro.",
		"Finisco sempre ai margini di una riunione, abbastanza vicino da sentire e abbastanza lontano da andarmene. Mi si addice più di quanto mi piaccia ammettere.",
	},
	["muse.w11.people.083"] = {
		"Tutti vogliono un eroe, finché l'eroe non chiede un letto e un pasto a credito.",
		"Ti applaudono per strada e all'osteria ti fanno pagare prezzo pieno. La fama è un mantello sottile.",
	},
	["muse.w11.people.084"] = {
		"I giovani credono che i vecchi abbiano dimenticato cosa si prova. I vecchi se lo ricordano benissimo. Per questo distolgono lo sguardo.",
		"Gli anziani guardano i giovani buttarsi nelle cose con un'occhiata che è metà invidia e metà preoccupazione.",
	},
	["muse.w11.people.085"] = {
		"Non ho mai imparato a salutare come si deve. O dico troppo, o sono già a metà strada.",
		"Gli addii sono l'unica cosa che la pratica non rende più facile. Solo più rapida.",
		"Gli addii peggiori sono quelli distratti. «A presto», e poi mai più.",
	},
	["muse.w11.people.086"] = {
		"Guarda cosa fa la gente con le mani mentre parla. La bocca ha fatto le prove. Le mani quasi mai.",
		"I visi mentono bene. I piedi no: puntano dove una persona vuole davvero andare.",
		"Se vuoi sapere di cosa ha paura qualcuno, guarda dove vanno i suoi occhi quando sbatte una porta.",
	},
	["muse.w11.people.087"] = {
		"Sono tutti onesti finché il prezzo dell'onestà non sale.",
		"Fammi vedere qualcuno che non ha mai mentito e ti mostrerò qualcuno che sta mentendo in proposito.",
		"La gente onesta esiste. È solo che sul prezzo tratta male, e così va in rovina presto.",
	},
	["muse.w11.people.088"] = {
		"Ogni nome inciso su un monumento era l'amico difficile di qualcuno, il pessimo cuoco di qualcuno. La pietra leviga via tutto questo, ed è una seconda perdita.",
		"I monumenti ricordano i valorosi. Dimenticano il russare, le battute pessime, i soldi prestati e mai resi. Ed era quella, la persona.",
	},
	["muse.w11.people.090"] = {
		"Essere necessari è un cappotto pesante. Però scalda. Mi mancherebbe, se non ci fosse più.",
		"Quando la gente comincia a contare su di te, la strada si stringe. Smette anche di essere solo tua, e non è tutta una perdita.",
		"Ogni persona che conta su di me è un piccolo peso e una piccola àncora. Sto imparando a distinguerli.",
	},
	["muse.w11.people.091"] = {
		"I bambini fissano chiunque abbia un'arma e uno zaino impolverato come se fossimo usciti da una storia. Spero che nessuno gli racconti quanta fila si fa.",
		"C'è sempre un bambino, chissà dove, convinto che quelli come me siano eroi. È un bel peso da portare prima ancora di colazione.",
		"Per un bambino ogni sconosciuto con uno zaino è un eroe o un cattivo. Nelle sue storie non c'è posto per «stanco».",
	},
	["muse.w11.people.092"] = {
		"Contrattare è una forma di cortesia. Un mercante con cui nessuno tratta si sente un po' offeso, e la volta dopo alza il prezzo.",
		"Pagare il primo prezzo richiesto è maleducato in metà dei mercati del mondo. La trattativa è la conversazione.",
	},
	["muse.w11.people.093"] = {
		"Difendi chi viene messo in mezzo. Anche se ti tremano le ginocchia. Soprattutto allora.",
		"Se nessun altro alza la voce, di solito è il segno che tocca a me.",
		"I prepotenti contano sul fatto che tutti guardino altrove. Io a guardare altrove sono {g:pessimo|pessima}.",
	},
	["muse.w11.people.094"] = {
		"Gli sconosciuti che non si rivedranno mai si raccontano le cose più vere. Non c'è più niente da proteggere.",
		"È più facile essere sinceri con qualcuno che non rivedrai mai. Peccato, a pensarci, che funzioni così al contrario.",
	},
	["muse.w11.people.095"] = {
		"Nessuno parte in marcia pensando di essere il cattivo. Ogni parte ha i suoi stendardi, le sue canzoni e i suoi morti. Per questo è così difficile fermarsi.",
		"Anche il nemico crede in qualcosa. Lo trovo più spaventoso che se non credesse in niente.",
		"Chi sta dall'altra parte di una guerra ne è convinto quanto me. Uno dei due sbaglia, e tutti e due ne siamo certi.",
	},
	["muse.w11.people.097"] = {
		"Un fabbro ti racconta i guai di un paese meglio di chi lo governa. Ogni cosa rotta passa su quell'incudine.",
		"Parla con chi aggiusta le cose in un villaggio. Sa chi litiga, chi è sbadato e chi è troppo orgoglioso per chiedere.",
	},
	["muse.w11.people.098"] = {
		"Una città è diecimila persone che si sono messe d'accordo per non guardarsi. È una specie di pace, e una specie di esilio.",
		"In una grande città tutti hanno imparato a non incrociare lo sguardo di nessuno. Saggio. Anche un po' triste.",
		"Attraversa una capitale e conta quante persone ti guardano davvero. Di solito basta una mano.",
	},
	["muse.w11.people.099"] = {
		"Guarda come qualcuno tratta chi lo serve. Quello è chi è davvero.",
		"Scortese con lo stalliere ed educato col capitano? So già tutto quello che mi serve.",
		"Gentile col cuoco, col mendicante e con chi si è perso? Ecco qualcuno con cui camminerei.",
	},
	["muse.w11.people.100"] = {
		"La colpa peggiore di un traditore non è il danno che fa. È insegnare a chiunque abbia guardato a fidarsi un po' meno.",
		"Il tradimento si allarga come la muffa in un granaio. Un sacco guasto, e per anni tutti controllano ogni sacco.",
	},
	["muse.w11.people.101"] = {
		"Tutti si lamentano delle stesse tre cose: i prezzi, i giovani e chi comanda. In ogni popolo di questo mondo. È quasi consolante.",
		"Ascolta un mercato qualunque e il brontolio è sempre lo stesso: troppo caro, troppo lento, troppi sciocchi. Abbiamo più in comune di quanto ammettano gli stendardi.",
	},
	["muse.w11.people.103"] = {
		"Le amicizie migliori sembrano nascere senza nulla in comune, a parte un brutto guaio.",
		"I guai condivisi fanno amicizie più in fretta dei gusti condivisi. Nessuno si è mai legato a qualcuno per un accordo sulla zuppa.",
		"Dai a due sconosciuti una ruota di carro rotta e un'ora, e spesso ne escono amici. Dagli un banchetto e ne escono chiacchiere di circostanza.",
	},
	["muse.w11.people.104"] = {
		"Dietro ogni muro che regge ci sono mille persone che dormono e non sapranno mai chi ci stava sopra. È giusto così.",
		"La protezione migliore passa inosservata. Se la gente alle mie spalle non saprà mai il mio nome, il lavoro è stato fatto bene.",
	},
	["muse.w11.people.105"] = {
		"Sono {g:bravissimo|bravissima} con la gente. È la gente che non sempre è d'accordo.",
		"Sarei {g:un ottimo diplomatico|un'ottima diplomatica}. Nessuno è mai rimasto arrabbiato con me per più di una settimana o due.",
		"Talento con le persone? Ne ho in abbondanza. Lo tengo al sicuro e lo uso con parsimonia.",
	},
	["muse.w11.people.106"] = {
		"Ogni compagno di viaggio è un addio futuro. Mi faccio degli amici lo stesso. L'alternativa è peggio.",
		"Affezionarsi alla gente in viaggio è un debito che arriva sempre a scadenza. Continuo a firmare.",
	},
	["muse.w11.people.107"] = {
		"Un buon nome si costruisce in mesi e si perde in una sola serata. Di solito all'osteria.",
		"La reputazione ti precede in ogni città. Meglio assicurarsi che sia vestita in modo decente.",
		"La gente sentirà parlare di me prima di conoscermi. Vorrei che la storia fosse più o meno vera.",
	},
	["muse.w11.people.109"] = {
		"Il mendicante alla porta vede ogni faccia che passa. Chissà cosa direbbe di tutti noi, se qualcuno glielo chiedesse.",
		"Non posso sfamare tutti i mendicanti del mondo. Posso guardare il prossimo negli occhi. Non costa niente, eppure sembra raro.",
	},
	["muse.w11.people.110"] = {
		"Non disprezzo i vigliacchi. Tutti scappano da qualcosa. Sono quelli che spingono gli altri davanti a sé che non riesco a perdonare.",
		"Fuggire è naturale. Lasciare indietro qualcuno a coprirti la fuga è tutta un'altra cosa.",
	},
	["muse.w11.people.111"] = {
		"Dimentico i nomi appena me li dicono. Le facce restano. Così passo la vita a salutare la gente con calore mentre dentro vado nel panico.",
		"In giro per il mondo c'è una persona gentilissima convinta che io sia {g:maleducato|maleducata}, solo perché il suo nome mi è scivolato fuori dalla testa.",
	},
	["muse.w11.people.112"] = {
		"Quando un nemico abbassa l'arma e alza gli occhi, smette di essere un nemico e diventa un problema. Molto più difficile.",
		"Un avversario che si arrende ti consegna tutta la sua vita in uno sguardo. Nessuno ti insegna a reggerla.",
		"Combattere è semplice rispetto al momento dopo, quando l'altro smette di combattere e aspetta di vedere chi sei.",
	},
	["muse.w11.people.113"] = {
		"C'è chi riempie ogni silenzio come fosse una falla nella barca. Io preferirei lasciarla affondare in pace.",
		"C'è sempre un viaggiatore che racconta tutta la strada. Ogni sasso. Ogni nuvola. Ogni opinione su entrambi.",
		"Certa gente parla come se il silenzio le dovesse dei soldi.",
	},
	["muse.w11.people.114"] = {
		"A volte incrocio un gruppo di amici che litigano allegramente per niente, e li invidio così tanto da sorprendermi.",
		"Vedere dei vecchi amici battibeccare come solo i vecchi amici sanno fare mi fa sentire come un mantello appeso al gancio sbagliato.",
	},
	["muse.w11.people.115"] = {
		"Saluta la guardia a ogni porta. Un giorno conterà quale faccia si ricorda.",
		"I guardiani ricordano le facce di mestiere. Meglio essere una di quelle che ricordano con simpatia.",
		"Impara i nomi delle guardie. Il tuo lo impareranno comunque: meglio che sia per qualcosa di buono.",
	},
	["muse.w11.people.116"] = {
		"I vecchi soldati ridono nei momenti più strani. Sospetto che sia nella risata che tengono tutto il resto.",
		"Chi ha seppellito amici in guerra si porta dietro un silenzio diverso da quello normale. Lo senti anche in una sala piena.",
		"Chiedi a un veterano di una battaglia e ti parlerà del rancio, del fango, di un amico che cantava male. Mai della battaglia.",
	},
	["muse.w11.people.118"] = {
		"Racconta un segreto a una persona ed è un segreto. Raccontalo a due ed è una notizia in ritardo.",
		"L'unico segreto che si conserva è quello che nessun altro conosce. Tutti gli altri sono solo pettegolezzi lenti.",
		"I segreti sono come le monete: più mani attraversano, meno valgono e più si sporcano.",
	},
	["muse.w11.people.119"] = {
		"Ci sono cose che non ho mai detto a nessuno. Non perché siano terribili. Perché nessuno me le ha ancora chieste con la voce giusta.",
		"Ognuno si porta dietro una storia che non ha mai raccontato. Quasi sempre aspetta solo qualcuno che non interrompa.",
	},
	["muse.w11.people.120"] = {
		"Dai un briciolo di potere a qualcuno e vedrai il suo naso salire di un pollice.",
		"Niente rende una persona più alta di un titolo e una scrivania.",
		"Metti in mano a chiunque un registro e un timbro, e comincerà a comportarsi da re.",
	},
	["muse.w11.people.121"] = {
		"Fidarsi di qualcuno di nuovo dopo essere stati delusi è la cosa coraggiosa più comune che la gente faccia. E la fa tutti i giorni.",
		"Ogni volta che qualcuno apre la porta a uno sconosciuto scommette che il mondo sia migliore di come è stato con lui. Mi piace, quella scommessa.",
	},
	["muse.w11.people.122"] = {
		"La faccia di un banchiere non si muove mai. Sospetto che li scolpiscano in cantina e li portino su ogni giorno.",
		"I banchieri guardano tutti nello stesso modo: come un mucchietto di monete provvisorio, con le gambe.",
		"Consegno le mie cose di valore a un banchiere che non conosco e me ne vado senza voltarmi. La fiducia è strana, quando diventa abitudine.",
	},
	["muse.w11.people.124"] = {
		"La lealtà non è stare accanto a qualcuno quando ha ragione. Quello lo sanno fare tutti. È dirgli quando ha torto, e restare.",
		"L'amico leale non è quello che dà sempre ragione. È quello che discute e poi si presenta lo stesso.",
		"Tutti sanno essere leali con chi vince. I rari restano leali anche nelle sconfitte.",
	},
	["muse.w11.people.125"] = {
		"Capitani di barca e maestri di volo vedono tutti di fretta e nessuno che arriva. Strano mestiere, essere il mezzo di ogni viaggio.",
		"Chi bada alle bestie e alle barche a un passaggio sente ogni motivo per cui la gente viaggia. Darei parecchio per un'ora dei loro pettegolezzi.",
	},
	["muse.w11.people.126"] = {
		"Ascolta il doppio di quanto parli. La gente ti racconta tutto, se la lasci fare.",
		"Fai la domanda, poi taci. Quasi tutti non vedono l'ora di spiegarsi.",
		"Lascia parlare la gente. Il silenzio è un secchio, e loro lo riempiono.",
	},
	["muse.w11.people.127"] = {
		"I nemici più tristi sono quelli che un tempo sedevano alla tua tavola. Conoscono le tue battute, e il punto esatto in cui trasalisci.",
		"Quando un amico diventa nemico, perdono entrambi la stessa cosa. Di solito solo uno dei due lo ammette.",
	},
	["muse.w11.people.128"] = {
		"Essere accolti dove non avevi diritto di aspettartelo è una delle sensazioni più belle che ci siano. Uno sconosciuto che dice «siediti, mangia» cancella una settimana di strada dura.",
		"Un'accoglienza sincera ripara tante cose. Non serve che sia grandiosa. Basta che sia sentita.",
	},
	["muse.w11.people.130"] = {
		"Nani, troll, elfi o orchi: ognuno dei popoli del mondo canta quando il lavoro è duro e tace davanti a una tomba. È più di quanto i trattati abbiano mai trovato in comune.",
		"Ogni popolo di cui ho sentito parlare piange i suoi morti, fa festa e mercanteggia. Le parole cambiano. Le facce no.",
	},
	["muse.w11.people.131"] = {
		"Essere conosciuti è un lusso: qualcuno che sa quali battute detesti e come ti piace il pane. In viaggio non lo sa nessuno.",
		"Gli sconosciuti incontrano la versione di me che mostro. A volte mi chiedo chi riconoscerebbe il resto.",
	},
	["muse.w11.people.132"] = {
		"Regola delle locande: chiedi quanto costa lo stufato, mai cosa c'è dentro.",
		"Mai chiedere a un oste cosa c'è nel pasticcio. Chiedi quanto costa, poi mangia in fretta.",
	},
	["muse.w11.people.133"] = {
		"Chiedere aiuto è un'abilità. Io ci sono ancora {g:negato|negata}, e mi costa più di quanto l'orgoglio mi faccia risparmiare.",
		"Metà dei miei guai sarebbe più piccola se solo chiedessi a qualcuno. L'altra metà, almeno, avrebbe compagnia.",
		"L'orgoglio è un ottimo compagno, finché non c'è qualcosa di pesante da sollevare.",
	},
	["muse.w11.people.135"] = {
		"Ogni vendetta diventa il motivo di qualcun altro. È così che le faide sopravvivono a chiunque le abbia cominciate.",
		"Ripaghi un'uccisione e hai solo firmato per la prossima. Qualcuno deve smettere di pagare, e non sono mai gli orgogliosi.",
	},
	["muse.w11.people.136"] = {
		"Due parole con uno sconosciuto al banco di un mercato, su niente di importante, possono portarmi avanti per il resto della giornata.",
		"Le conversazioni più piccole sono spesso quelle che ricordo. Due battute sul prezzo del sale, e chissà come un amico per un minuto.",
		"Gli sconosciuti che chiacchierano aspettando la stessa barca diventano, per un quarto d'ora, grandi amici.",
	},
	["muse.w11.people.137"] = {
		"Se devi qualcosa a qualcuno, paga prima che te lo chieda. I debiti lasciati in sospeso inacidiscono.",
		"Salda in fretta. I favori non ricambiati diventano rancori, con gli interessi.",
	},
	["muse.w11.people.138"] = {
		"Chi insegna un mestiere ha visto cento principianti maldestri e lo spiega ancora con gentilezza al centunesimo. È una pazienza che vorrei avere.",
		"I maestri migliori non dicono mai «è ovvio». Si ricordano di quando non sapevano.",
		"Qualcuno, un tempo, ha avuto la pazienza di insegnare le basi a ogni esperto. Spero che l'abbiano ringraziato.",
	},
	["muse.w11.people.139"] = {
		"A chiunque divida con me un tratto di strada, quando ci separiamo, faccio lo stesso augurio: un letto asciutto, un prezzo onesto e un amico ad aspettarlo alla fine.",
		"Mi separo dalla gente con un augurio che tengo per me: che il prossimo sconosciuto che incontrano sia più gentile di quanto sia {g:riuscito|riuscita} a esserlo io.",
	},
	["muse.w11.people.141"] = {
		"Ogni anziano dà lo stesso consiglio: rallenta, mangia qualcosa e non fidarti di chi è troppo allegro. Purtroppo hanno ragione.",
		"Gli anziani dicono sempre ai giovani di stare attenti. I giovani annuiscono sempre. Qualcuno, in questo scambio, spreca il fiato.",
		"Gli anziani distribuiscono consigli come pane: generosamente, con fermezza, e aspettandosi che tu lo finisca.",
	},
	["muse.w11.people.142"] = {
		"Da soli si è solo una creatura testarda. Metti qualcuno spalla a spalla e hai un muro.",
		"C'è una forza che si fa vedere solo quando la gente sta insieme. Non è di nessuno. Appartiene alla fila.",
		"Una creatura testarda si scansa facilmente. Cinque che stanno insieme sono un problema per chiunque.",
	},
	["muse.w11.people.143"] = {
		"Non si lascia indietro nessuno. Non finché posso camminare.",
		"Si entra insieme e si esce insieme. È l'unico piano che mi interessa.",
	},
	["muse.w11.people.144"] = {
		"Ho sentito di soldati che dividevano l'acqua con un nemico ferito tra una battaglia e l'altra. Vorrei credere che lo farei anch'io. Spero di non doverlo mai scoprire.",
		"Le storie che mi commuovono di più non parlano di grandi vittorie. Parlano di qualcuno che dà da bere a chi stava combattendo fino a un attimo prima.",
		"Una tazza d'acqua passata oltre la linea di battaglia dice della gente più di qualunque stendardo che sventoli sopra.",
	},
	["muse.w11.people.146"] = {
		"Preferisco camminare da {g:solo|sola} che con qualcuno da tenere d'occhio. La solitudine, almeno, non mi ruba dallo zaino.",
		"La cattiva compagnia è più solitaria di nessuna compagnia. Da {g:solo|sola}, almeno, non devo fingere.",
		"Il compagno sbagliato raddoppia la strada. Quello giusto la dimezza. Nessun compagno la lascia com'è, onesta.",
	},
	["muse.w11.people.147"] = {
		"Gli sconosciuti mi raccontano sempre i loro guai. Devo avere una di quelle facce. Stanche, per lo più.",
		"Perché tutti mi raccontano la storia della loro vita? Ho solo chiesto la strada per la locanda.",
		"La gente si confida con me di continuo. Credo sia perché ho l'aria troppo sfinita per spettegolare.",
	},
	["muse.w11.road.001"] = {
		"La distanza mente in tutte e due le direzioni. Le cose vicine si prendono la giornata intera, quelle lontane sbucano da dietro una curva.",
		"Niente è mai lontano quanto sembra, e nemmeno vicino. La distanza racconta frottole in entrambi i sensi.",
		"Ho smesso di fidarmi di quanto sembra lontana una cosa. Quelle vicine non arrivano mai, quelle lontane mi piombano addosso.",
	},
	["muse.w11.road.002"] = {
		"Chiedi la strada a tre persone e avrai quattro risposte e la storia del cugino di qualcuno.",
		"Le indicazioni degli sconosciuti comprendono sempre un punto di riferimento che non esiste più da anni.",
		"«Gira dove una volta c'era il carro vecchio.» Grazie. Utilissimo.",
	},
	["muse.w11.road.003"] = {
		"Andarsene è sempre più rapido di quanto credo. Un attimo prima appartengo a un posto, quello dopo sono solo una schiena che si allontana.",
		"Partire non ha nessuna cerimonia. Una cinghia stretta, un ultimo sguardo, e il posto è già alle mie spalle.",
		"Per decidere una partenza ci vuole un secolo, per compierla un attimo. E l'attimo mi coglie sempre alla sprovvista.",
	},
	["muse.w11.road.004"] = {
		"A un bivio guardo sempre per un po' la strada che non prenderò, giusto per averne visto un pezzo.",
		"Qualunque direzione scelga a un incrocio, all'altra concedo un'occhiata lunga. Se la merita.",
		"Di un bivio non prendo mai tutti e due i rami, ma a quello che lascio un saluto lo faccio sempre.",
	},
	["muse.w11.road.005"] = {
		"I cartelli indicano con grande sicurezza e dicono pochissimo. Conosco gente così.",
		"Un cartello ha un braccio, un'opinione e nessuna idea di cosa ci sia davvero in fondo alla strada.",
	},
	["muse.w11.road.007"] = {
		"Arrivare da qualche parte è una piccola vittoria che nessuno nota. Io sì.",
		"Ogni volta che raggiungo il posto che volevo raggiungere, mi concedo un piccolo cenno d'approvazione. Qualcuno deve pur farlo.",
		"Arrivare dove ero {g:diretto|diretta} merita un segno, anche se l'unico testimone sono io.",
	},
	["muse.w11.road.008"] = {
		"Metà del viaggiare è aspettare: una barca, una guida, che le gambe accettino il pezzo successivo.",
		"Nessuno dice quanta parte di un viaggio si passi ad aspettare qualcosa: un traghetto, un guado, la voglia di ripartire.",
	},
	["muse.w11.road.009"] = {
		"Ogni strada è più lunga al ritorno. Prove non ne ho, solo piedi.",
		"Il ritorno è sempre più lungo dell'andata. Nessuno me l'ha mai saputo spiegare.",
	},
	["muse.w11.road.010"] = {
		"Perdersi davvero ha un silenzio tutto suo. Nessuno sa dove sono, e nemmeno io.",
		"Quando mi perdo sul serio il mondo si fa immobile, come se aspettasse di vedere cosa farò.",
		"Smarrirsi ha una sua quiete. Adesso nessuno potrebbe trovarmi, e io meno di tutti.",
	},
	["muse.w11.road.011"] = {
		"Chi ha piantato la prima pietra miliare faceva una promessa a degli sconosciuti: fin qui, e sei ancora sulla strada giusta.",
		"Una pietra miliare è una piccola gentilezza scolpita. Qualcuno che non conoscerò mai voleva che sapessi quanta strada avevo fatto.",
	},
	["muse.w11.road.012"] = {
		"Una mappa vale per com'erano le cose quando l'hanno disegnata. Dopo è storia con le frecce.",
		"Le mappe invecchiano più in fretta della terra. Ognuna è un po' superata e sicurissima di sé.",
		"Di una mappa fidati come di una vecchia lettera: era vera una volta, forse lo è ancora.",
	},
	["muse.w11.road.014"] = {
		"Scegli una direzione. Anche quella sbagliata insegna più che restare qui.",
		"Una via qualsiasi, purché sia una via. Stare fermi non decide niente.",
		"Scegli. Se è sbagliata, la strada te lo farà sapere presto.",
	},
	["muse.w11.road.015"] = {
		"La parte peggiore dell'andarsene è la soglia. Una volta superata, ci pensa la strada e io smetto di pensare.",
		"È la soglia che pesa. Due passi oltre e i piedi mi hanno già perdonato.",
	},
	["muse.w11.road.016"] = {
		"«Subito dopo la salita», dicono sempre. Il mondo ha più salite che sincerità.",
		"«Ormai manca poco.» Le parole più consumate di qualunque lingua.",
		"Chi dice «ci siamo quasi» non c'è mai stato davvero, quasi.",
	},
	["muse.w11.road.017"] = {
		"C'è una gioia semplice nell'andare in un posto dove, all'arrivo, non c'è niente da fare se non guardarsi intorno.",
		"Il viaggio migliore: nessuna commissione ad aspettarti in fondo, solo il fondo.",
	},
	["muse.w11.road.018"] = {
		"Certe miglia esistono solo per essere sopportate. Niente panorama, niente chiacchiere, solo la prossima e quella dopo.",
		"Non ogni miglio è una storia. Molti sono solo il prezzo noioso di quelli che lo sono.",
		"Certi tratti non restituiscono niente. Li percorro come si paga un pedaggio.",
	},
	["muse.w11.road.019"] = {
		"Se camminare forma il carattere, sono sulla buona strada per averne fin troppo.",
		"Viaggiare apre la mente, dicono. Di sicuro mi ha appiattito i piedi.",
	},
	["muse.w11.road.020"] = {
		"Ogni tanto un sentiero si interrompe e basta, come se chi l'ha tracciato avesse cambiato idea a metà.",
		"Certi sentieri finiscono nel nulla: niente casa, niente pozzo, solo la traccia che si esaurisce. Qualcuno, una volta, aveva un motivo.",
	},
	["muse.w11.road.021"] = {
		"Quello che servirà per primo va in cima. Regola semplice. Infranta ogni volta che preparo lo zaino.",
		"Quello che mi serve in fretta è sempre sul fondo. Comincio a pensare che lo zaino lo faccia apposta.",
	},
	["muse.w11.road.023"] = {
		"Ogni viaggio comincia come una decisione, e la decisione è sempre il tratto più ripido.",
		"Partire è la parte più dura di qualunque strada, e non si misura in miglia.",
		"Il primo passo oltre la soglia pesa più dei mille che seguono messi insieme.",
	},
	["muse.w11.road.024"] = {
		"Gli arrivi sono sempre più piccoli di come li immagino. Il posto non sa mai che qualcuno lo aspettava.",
		"Ogni meta me la costruisco in testa, e ognuna si rivela un posto qualunque, con la gente che bada ai fatti suoi.",
	},
	["muse.w11.road.025"] = {
		"Bene. Da che parte è avanti? Ah. Di là.",
		"Avanti è di là. Probabilmente. Scopriamolo.",
	},
	["muse.w11.road.026"] = {
		"Il primo sentiero non lo costruisce nessuno. È solo dove abbastanza piedi si sono messi d'accordo per passare.",
		"Un sentiero è una votazione fatta con i piedi, durata moltissimo tempo.",
		"Ogni pista è nata come l'ipotesi di qualcuno, ripetuta finché è diventata la strada.",
	},
	["muse.w11.road.027"] = {
		"Se cammino abbastanza, i miei passi diventano compagnia. Non una gran compagnia. Ma costante.",
		"Dopo tanto camminare i miei passi fanno un rumore che non sento più, come si smette di sentire il proprio nome.",
	},
	["muse.w11.road.028"] = {
		"Non mi perdo mai finché ho dei dubbi. Sono le svolte sicure a fregarmi.",
		"Il dubbio mi tiene sul sentiero. È la certezza a portarmi dritto nel posto sbagliato.",
		"Ho il dono di perdermi proprio nel momento in cui smetto di controllare.",
	},
	["muse.w11.road.029"] = {
		"Qualunque cosa ci sia più avanti, almeno non è quello che ho già visto. Vale qualcosa.",
		"Anche una strada brutta cambia il panorama. Certi giorni basta come motivo per andare avanti.",
	},
	["muse.w11.road.030"] = {
		"Quando ho la testa troppo piena conto i passi. Cento, poi altri cento, e il rumore si dirada.",
		"I numeri non discutono. Quando i pensieri si accalcano, conto i passi finché non si arrendono.",
		"Contare i passi è una preghiera da poco, ma la mente si quieta lo stesso.",
	},
	["muse.w11.road.031"] = {
		"Segui il naso, mi hanno detto. Il mio naso non ha nessun senso dell'orientamento.",
		"Fidati dell'istinto, dice la gente. Il mio mi farebbe girare in tondo tutto contento.",
	},
	["muse.w11.road.033"] = {
		"Ogni partenza è una piccola prova generale dell'ultima. Preferirei non diventarci troppo {g:bravo|brava}.",
		"Ogni volta che lascio un posto mi esercito un po' per l'ultimo congedo. Cerco di non farci caso.",
	},
	["muse.w11.road.034"] = {
		"Riposati prima della salita, non a metà. A metà, sedersi è solo arrendersi piano.",
		"Mai fermarsi nel mezzo di un tratto duro. Prima, dopo, o per niente.",
	},
	["muse.w11.road.035"] = {
		"Dalla strada vedo cento posti dove non mi fermerò mai. Così restano perfetti.",
		"Tanta parte del mondo la vedo solo di passaggio: un cancello, una finestra, una svolta. Ognuno si tiene il suo segreto.",
	},
	["muse.w11.road.036"] = {
		"Piedi, fate il vostro lavoro. Io faccio il mio.",
		"Forza, gambe. Nessuno ci porta in braccio.",
	},
	["muse.w11.road.037"] = {
		"Il mio senso dell'orientamento è ottimo. È solo affezionato ai posti dove non sto cercando di andare.",
		"Ho un talento per trovare le cose. Mai quella per cui sono {g:partito|partita}, però.",
	},
	["muse.w11.road.038"] = {
		"Ogni strada va in due sensi. A quanto pare io ne uso sempre uno solo.",
		"Le strade sono fatte per andare in due direzioni. Le mie continuano ad andare avanti.",
	},
	["muse.w11.road.039"] = {
		"Chiedi la strada a chi porta qualcosa di pesante. Sa esattamente quanto manca.",
		"Per le distanze oneste, chiedi a un facchino. Nessuno misura un miglio come chi si trascina una cassa.",
	},
	["muse.w11.road.041"] = {
		"Un crocevia è il luogo più vecchio di qualunque terra. Tutto il resto ci è stato costruito intorno dopo.",
		"Prima vennero gli incroci. Locande, mercati, altari, forche: tutto si è radunato dopo, là dove due sentieri si incontravano.",
	},
	["muse.w11.road.042"] = {
		"Il prossimo passo non è mai quello difficile. È immaginarli tutti insieme che appesantisce le gambe.",
		"Un passo non è niente. È il pensiero di tutti quelli che mancano a pesare.",
		"Non contare le miglia davanti. Conta quella sotto i piedi: è l'unica vera.",
	},
	["muse.w11.road.043"] = {
		"Una buona strada nasconde una sorpresa da qualche parte. Continuo a camminare per scoprire di che tipo.",
		"Ogni viaggio tiene in serbo una cosa bella, di solito proprio dove ho smesso di cercare. Perciò continuo a cercare.",
	},
	["muse.w11.road.044"] = {
		"Niente si muove più lento di un passaggio che stai aspettando.",
		"Aspettare un mezzo ha una noia tutta sua. Il mondo intero va da qualche parte, tranne me.",
		"Una barca, un carro, una bestia da cavalcare: qualunque cosa aspetti, è sempre in ritardo quanto basta per offendermi.",
	},
	["muse.w11.road.045"] = {
		"Se mai disegnassi una mappa, su ogni bordo ci sarebbe scritto «probabilmente bagnato» o «probabilmente morde».",
		"Saprei disegnare una mappa più onesta di tante. Meno confini eleganti, molti più avvertimenti.",
	},
	["muse.w11.road.046"] = {
		"A tutti quelli che stanno partendo in questo momento: che ci sia un buon posto dove arrivare.",
		"Alla salute di ogni partenza che sta avvenendo ora. Andarsene è più difficile che arrivare.",
		"Un pensiero per tutte le soglie che qualcuno sta varcando adesso. Buon cammino.",
	},
	["muse.w11.road.047"] = {
		"Sapere dov'è l'acqua e dove trovare aiuto. Tutto il resto, su una mappa, è decorazione.",
		"Di ogni strada vale la pena imparare due cose: dove bere e dove scappare. Il resto può aspettare.",
		"Le mappe adorano confini e nomi. Li scambierei tutti con un segno onesto che dica «qui c'è un buon pozzo».",
	},
	["muse.w11.road.048"] = {
		"Mi piace l'ultima curva prima di arrivare. Per qualche passo ancora, il posto che mi aspetta può essere qualunque cosa.",
		"La vista migliore di ogni meta è quella che ho in testa, un attimo prima di arrivarci.",
		"Poco prima della fine di un viaggio c'è un momento in cui l'arrivo è ancora perfetto. Cerco di attraversarlo piano.",
	},
	["muse.w11.road.050"] = {
		"Tutti i viaggiatori che incontro vanno nella direzione opposta. Comincio a prenderla sul personale.",
		"Strano come chiunque altro per strada sia diretto proprio da dove arrivo io.",
	},
	["muse.w11.road.051"] = {
		"Certe partenze non le vede nessuno. Semplicemente non ci sei più, e il posto si richiude sul vuoto come l'acqua.",
		"Vattene abbastanza in silenzio e nessuno se ne accorge. La stanza continua, il vuoto si riempie, e la strada ti prende.",
	},
	["muse.w11.road.052"] = {
		"Ogni tanto voltati. Non per nostalgia: perché la strada di casa ti sembri familiare quando ti servirà.",
		"Girati di tanto in tanto e impara il sentiero al contrario. Visto dall'altra parte è un altro sentiero.",
		"Una strada percorsa in un solo senso è conosciuta a metà. Mi guardo alle spalle per imparare l'altra metà.",
	},
	["muse.w11.road.053"] = {
		"Un posto non lo conosci davvero finché non ti ci smarrisci almeno una volta.",
		"Perdersi è il modo in cui i piedi imparano davvero un posto. La testa lo impara solo dalle mappe.",
		"Un posto diventa mio solo dopo che mi ha {g:ingannato|ingannata} una volta.",
	},
	["muse.w11.road.054"] = {
		"C'è una porta, chissà dove, che si aprirà quando busserò. Non so ancora quale. Il camminare serve a questo.",
		"Là fuori c'è una porta con un benvenuto dietro. Devo solo bussare prima a parecchie altre.",
	},
	["muse.w11.road.055"] = {
		"Ogni terra è il lontano di qualcuno.",
		"Ovunque io sia, per qualcuno è in capo al mondo.",
		"Nessun posto è remoto per chi ci abita. La distanza si misura sempre da qualche altra parte.",
	},
	["muse.w11.road.057"] = {
		"Un buon bastone da viaggio è il compagno più economico che ci sia, e non chiede mai dove andiamo.",
		"Nessuno si è mai pentito di un bastone robusto. Ti regge e non chiacchiera.",
	},
	["muse.w11.road.058"] = {
		"Tra un posto e l'altro nessuno si aspetta niente da me. La metà di un viaggio è la parte più libera.",
		"A metà strada tra qui e là non devo niente a nessuno. È la parte del viaggio che terrei.",
		"Né partenza né arrivo: è nel lungo mezzo che finalmente posso essere nessuno in particolare.",
	},
	["muse.w11.road.059"] = {
		"L'ultimo miglio è sempre il più lungo. Ha tutti gli altri impilati sopra.",
		"Il tratto finale pesa di più perché si porta dietro tutto quello che è stato camminato prima.",
		"Ogni viaggio tiene il miglio più lungo per ultimo, per dispetto.",
	},
	["muse.w11.road.060"] = {
		"Alla fine di tutto questo c'è un pasto. Probabilmente. Andiamo a controllare.",
		"Più avanti c'è una panca che porta il mio nome. Non letteralmente. Sarebbe preoccupante.",
		"In fondo a ogni strada c'è una sedia. Ho intenzione di trovare quella di questa.",
	},
	["muse.w11.road.061"] = {
		"Mi chiedo chi sia passato di qui per ultimo, e cosa sperasse.",
		"Su ogni sentiero c'è sempre stato qualcuno appena prima di me. Mi piace indovinare cosa portava, e perché.",
	},
	["muse.w11.road.062"] = {
		"I consigli di viaggio sono di due tipi: ovvi e sbagliati. Il trucco è distinguerli prima che servano.",
		"Tutti hanno un consiglio per la strada. Metà sono cose che sapevi già, l'altra metà ti fa ammazzare.",
	},
	["muse.w11.road.063"] = {
		"Le orme durano più di chi le lascia. Non di molto.",
		"I segni che lascio su un sentiero spariranno prima che abbia fatto molta strada. Mi sembra giusto.",
		"Ogni pista è piena di passi che nessuno ricorda. I miei si aggiungeranno, e non è una pena.",
	},
	["muse.w11.road.065"] = {
		"Nessuna strada è mai stata percorsa fino in fondo da chi ne aspettava una migliore.",
		"La strada perfetta non arriva mai. Dovrà bastare quella che ho sotto i piedi.",
		"Aspettare la strada giusta è il modo in cui si invecchia agli incroci.",
	},
	["muse.w11.road.066"] = {
		"Il silenzio della strada non è vuoto. È pieno dei miei pensieri, che camminano un paio di passi indietro.",
		"Chi viaggia da solo abbastanza a lungo si ritrova i pensieri al passo, come un secondo viaggiatore.",
	},
	["muse.w11.road.067"] = {
		"La distanza cambia ciò che conta. A un miglio penso ancora al posto che ho lasciato; a dieci, solo ai piedi.",
		"Più vado lontano, più le preoccupazioni si rimpiccioliscono, finché non riguardano solo stivali e acqua.",
	},
	["muse.w11.road.068"] = {
		"Se qualcuno chiede, non sto vagando. Sto viaggiando senza un'opinione precisa.",
		"Senza meta? No. Tengo le opzioni molto, molto aperte.",
	},
	["muse.w11.road.069"] = {
		"È un buon segno quando mi chiedo cosa ci sia dietro l'angolo invece di temerlo.",
		"Il giorno in cui smetterò di essere {g:curioso|curiosa} della prossima svolta, saprò che qualcosa non va.",
	},
	["muse.w11.road.070"] = {
		"Certe strade le percorrerò una volta sola. Non so mai quali, finché non è passato molto tempo.",
		"Tanti sentieri non li calpesterò mai due volte, e niente mi avverte all'inizio di quali siano.",
		"Ogni strada potrebbe essere l'unica volta. Cerco di guardarla come se lo fosse.",
	},
	["muse.w11.road.071"] = {
		"Parti prima di avere tutto in ordine. Non succede mai, e la strada non aspetta.",
		"Essere pronti è un posto dove non arriva nessuno. Meglio partire da dove ci si trova.",
	},
	["muse.w11.road.073"] = {
		"Le distanze sulle mappe sono una finzione educata. A piedi diventano un insulto.",
		"Un dito attraversa una mappa in un battito di ciglia. I piedi raccontano tutt'altra storia.",
		"Per chi ha disegnato la mappa è un dito; per me mezza giornata.",
	},
	["muse.w11.road.074"] = {
		"Le lunghe camminate smussano gli spigoli dei pensieri. Quello che alla partenza mi faceva arrabbiare, all'arrivo di solito mi ha solo stancato.",
		"La rabbia non regge il viaggio. Qualche miglio e diventa solo un'altra cosa nello zaino.",
	},
	["muse.w11.road.075"] = {
		"Un cartello in una lingua che non so leggere è comunque compagnia. Qualcuno ha pensato che quel punto meritasse una spiegazione.",
		"Anche un'insegna che non so leggere dice una cosa chiara: qualcuno è passato di lì e si è preoccupato di chi veniva dopo.",
	},
	["muse.w11.road.076"] = {
		"Una borraccia piena, stivali allacciati e nessun posto dove dover essere a un'ora precisa. Ricchezza sufficiente.",
		"Acqua, stivali sani e nessuno che mi aspetta. Sospetto che certi re abbiano meno.",
	},
	["muse.w11.road.077"] = {
		"Bene. Zaino in spalla, piedi in movimento, lamentele dopo.",
		"Zaino addosso, occhi avanti. Si parte.",
		"Su. Cinghie. Cammina. In quest'ordine.",
	},
	["muse.w11.road.078"] = {
		"Continuo a promettermi un viaggio più lento, prima o poi. Poi guardo tutto quello che resta da fare.",
		"Un giorno viaggerò senza motivo e mi attarderò a ogni curva. Non oggi.",
	},
	["muse.w11.road.079"] = {
		"Ogni posto sembra più piccolo dalla strada che se ne allontana.",
		"Andarsene rimpicciolisce i luoghi. Alla prima svolta, uno ci sta già tutto in un solo ricordo.",
	},
	["muse.w11.road.081"] = {
		"Mai fidarsi di un sentiero troppo facile. Qualcuno l'ha reso facile, e di solito quel qualcuno aspetta in fondo.",
		"Una strada comoda merita una domanda: chi l'ha spianata, e perché mi vuole sopra?",
		"Sul tratto di strada più liscio tengo la mano più vicina all'arma.",
	},
	["muse.w11.road.082"] = {
		"Ogni viaggio ha un momento in cui sono {g:sicuro|sicura} di aver sbagliato strada. Di solito è appena prima di arrivare.",
		"Il dubbio tocca il culmine sempre cento passi prima della meta. Ci cammino attraverso lo stesso.",
	},
	["muse.w11.road.083"] = {
		"Una strada percorsa due volte smette di essere un'estranea. Alla terza comincia a raccontarti cose.",
		"La seconda volta che la percorro, una strada mi saluta con un cenno. Alla terza ci diamo del tu.",
	},
	["muse.w11.road.084"] = {
		"Un mondo così grande non chiede di essere attraversato. La gente lo attraversa lo stesso. Questo, delle persone, mi piace.",
		"Nessuno è obbligato ad andare da nessuna parte. Ogni strada del mondo è la prova che qualcuno lo voleva.",
	},
	["muse.w11.road.085"] = {
		"Una strada giusta c'è. La troverò provando prima tutte le altre.",
		"Ho intenzione di trovare il percorso giusto per esclusione.",
	},
	["muse.w11.road.086"] = {
		"C'è chi parte e poi torna a casa. C'è chi parte e la strada semplicemente se lo tiene. Non so ancora da che parte sto.",
		"Non tutti quelli che partono sono fatti per tornare. La strada lo decide tardi, e non avvisa nessuno.",
	},
	["muse.w11.road.087"] = {
		"In salita i pensieri si accorciano. In discesa si fanno distratti. È in piano che penso davvero.",
		"Salire non lascia spazio a niente se non alla salita. È in piano che la testa comincia a vagare.",
		"Il cammino duro fa pensieri brevi. Dammi un tratto facile e risolvo metà dei guai del mondo prima della prossima curva.",
	},
	["muse.w11.road.088"] = {
		"Guadi, cancelli, passi, ponti: ogni strada ha punti in cui si stringe a un solo passaggio. È lì che i guai amano aspettare.",
		"I guai lungo la strada non sono sparsi a caso. Si raccolgono dove c'è un solo modo per passare.",
		"In campo aperto mi rilasso. Sono le strettoie che sorveglio: dove la strada non ha scelta, qualcun altro ne ha fatta una.",
	},
	["muse.w11.road.090"] = {
		"Ogni partenza sembra un po' il tradimento di qualcuno, anche quando a nessuno importa.",
		"Partire porta sempre con sé un vago senso di colpa, come se dovessi al posto ancora un giorno.",
		"Andarsene non salda mai del tutto il conto. Un piccolo debito col posto viaggia sempre con me.",
	},
	["muse.w11.road.091"] = {
		"Il modo più rapido per allungare una strada è percorrerla di fretta.",
		"La fretta allunga le strade. La pazienza le ripiega piccole piccole.",
		"Una strada misurata in impazienza è lunga il doppio della stessa strada misurata in passi.",
	},
	["muse.w11.road.092"] = {
		"Le strade sopravvivono ai loro motivi. La miniera chiude, l'altare crolla, e il sentiero continua ad andarci, fedele come un cane.",
		"Un sentiero continua a portare in un posto molto dopo che il posto ha smesso di contare. Le strade sono leali così.",
		"Segui un vecchio sentiero abbastanza a lungo e troverai a cosa serviva, o quello che ne resta.",
	},
	["muse.w11.road.093"] = {
		"Strada buona, gambe che funzionano, nessuno che m'insegue. Mi va bene.",
		"Nessuna imboscata, stivali sani e un'idea vaga di dove mi trovo. Due su tre.",
		"Piedi a posto, zaino a posto, strada libera. Sospettosamente a posto.",
	},
	["muse.w11.road.094"] = {
		"Ogni viaggio rimpicciolisce un po' il mondo. Posti che erano solo nomi diventano posti dove sono {g:stato|stata}.",
		"Il mondo si fa più piccolo ogni volta che ne attraverso un pezzo, e chissà come più pieno di cose da vedere.",
	},
	["muse.w11.road.095"] = {
		"Le indicazioni più pericolose del mondo: «Non puoi sbagliare.»",
		"«Impossibile sbagliarsi.» Quelle parole sono costate ai viaggiatori più ore di tutti i briganti messi insieme.",
		"Ogni volta che qualcuno mi dice che non posso sbagliare, metto nello zaino un pasto in più.",
	},
	["muse.w11.road.096"] = {
		"Ogni crocevia ha la sua storia su qualcuno che lì scelse male. Non ne ho mai sentita una su qualcuno che scelse bene.",
		"Nessuno racconta storie sul viaggiatore che prese il bivio giusto e tornò a casa in tempo per cena.",
		"Ogni bivio ha il suo racconto ammonitore. I lieti fine, agli incroci, non li racconta nessuno.",
	},
	["muse.w11.road.098"] = {
		"Il mio stomaco misura le distanze in pasti. Due pasti fin là, mezzo pasto alla prossima curva.",
		"Per la mia pancia le miglia non significano niente. Ogni viaggio lo conta in cene.",
	},
	["muse.w11.road.099"] = {
		"Non serve che una strada mi piaccia per arrivare in fondo.",
		"Desiderare di essere altrove non ha mai fermato i miei piedi, nemmeno una volta.",
		"Che la strada mi piaccia è facoltativo. Percorrerla no.",
	},
	["muse.w11.road.100"] = {
		"Qualcuno dovrebbe costruire una strada che sia in discesa in tutte e due le direzioni.",
		"Perché è sempre in salita verso dovunque io stia andando? Chi organizza queste cose?",
		"Giurerei che il terreno si inclina apposta contro qualunque direzione io prenda.",
	},
	["muse.w11.road.101"] = {
		"Ovunque porti, sarò io ad arrivare. Questo è deciso.",
		"Per quanto sia lunga, finisce con me dall'altra parte.",
		"La distanza faccia pure quello che vuole. Alla fine, in fondo, ci sarò io.",
	},
	["muse.w11.road.102"] = {
		"C'è una solitudine particolare nella prima ora di un viaggio, prima che la strada cominci a parlare.",
		"L'inizio di ogni viaggio è la parte più silenziosa. Il posto alle spalle tace e la strada davanti non ha ancora detto niente.",
		"Alla partenza arriva prima il silenzio. La compagnia, anche quella della strada, ci mette qualche miglio.",
	},
	["muse.w11.road.103"] = {
		"Impara i punti di riferimento, non le distanze. Un albero storto resta dov'è; un miglio dipende da quanta stanchezza hai addosso.",
		"Orientati con le cose, non con i numeri: la roccia spaccata, lo steccato rotto, l'albero strano. I numeri cambiano con le gambe.",
	},
	["muse.w11.road.104"] = {
		"Piedi, strade e distanza: le stesse tre cose con cui ogni viaggiatore ha dovuto fare i conti, principe o venditore ambulante.",
		"Un re a piedi percorre lo stesso miglio di un mendicante a piedi. La strada non si è mai inchinata.",
		"I titoli non accorciano le strade. Ogni viaggiatore che sia mai vissuto ha pagato le miglia con la stessa moneta.",
	},
	["muse.w11.road.106"] = {
		"Io e il mio zaino abbiamo un accordo: lui viaggia, io cammino, e ci lamentiamo tutti e due.",
		"Lo zaino viaggia comodissimo. Mi piacerebbe sapere come ci è riuscito.",
		"Lungo il cammino lo zaino ha smesso di essere un bagaglio ed è diventato un passeggero con le sue opinioni.",
	},
	["muse.w11.road.107"] = {
		"Ogni strada che non ho ancora percorso è una promessa che nessuno ha infranto.",
		"Le strade mai provate sono le uniche che non mi hanno mai {g:deluso|delusa}.",
		"Le strade che ho davanti sono ancora tutte buone. Nessuna ha avuto modo di deludermi.",
	},
	["muse.w11.road.108"] = {
		"Un sentiero che curva e sparisce sta facendo una domanda. Lasciar stare le domande non è mai stato il mio forte.",
		"Ogni pista che piega via è mezzo invito. L'altra metà è colpa mia.",
	},
	["muse.w11.road.109"] = {
		"Quando cammino da {g:solo|sola} faccio conversazioni intere con gente che non c'è. Le vinco quasi tutte.",
		"Per conto mio provo discussioni che non farò mai. In cammino ho una gran forza di persuasione.",
		"Le cose migliori che dico le dico a nessuno, a metà strada tra due posti.",
	},
	["muse.w11.road.110"] = {
		"Ah, un bivio. Il mio preferito. Due occasioni di sbagliare.",
		"Destra o sinistra. Una delle due è un errore, e sto per scoprire quale.",
		"Più strade tra cui scegliere. A tutti piace scegliere, finché non tocca a loro.",
	},
	["muse.w11.road.111"] = {
		"C'è chi non si ferma mai da nessuna parte abbastanza a lungo da mancare a qualcuno. Preferirei non diventare così.",
		"Continua a muoverti per sempre e nessun posto imparerà il tuo nome. Voglio almeno un luogo che si accorga della mia assenza.",
	},
	["muse.w11.road.112"] = {
		"La strada non rende migliore nessuno. Si limita a toglierti quello che non riesci a portare.",
		"Viaggiare, di per sé, non migliora nessuno. Ti leva di dosso soltanto quello che non avevi la forza di trascinare.",
	},
	["muse.w11.road.113"] = {
		"Viaggiare leggeri è un'arte. Viaggiare con la testa leggera è più difficile.",
		"Fare uno zaino piccolo è abbastanza facile. I pensieri, invece, me li trascino ancora a sacchi.",
		"Uno zaino vuoto è semplice. Una mente sgombra, in viaggio, richiede vera pratica.",
	},
	["muse.w11.road.115"] = {
		"Una strada conosciuta si percorre da sé. Una sconosciuta pretende attenzione a ogni svolta.",
		"Su una strada che conosco la mente può andarsene a spasso. Su una che non conosco deve camminarmi accanto.",
	},
	["muse.w11.road.116"] = {
		"Chissà dove, qualcuno sta partendo per il suo primo viaggio, con tanta paura quanta voglia. Buona fortuna.",
		"Proprio adesso qualcuno sta facendo i primi passi lontano da casa. Spero che la strada sia gentile.",
		"Su ogni strada c'è un principiante, chissà dove. Gli auguro stivali solidi e sconosciuti pazienti.",
	},
	["muse.w11.road.117"] = {
		"Ogni strada porta in un posto che qualcuno, una volta, ha ritenuto valesse il viaggio. È una forma di fiducia.",
		"Nessuno consuma un sentiero verso il nulla. Ognuno è una scommessa, fatta tanto tempo fa, che la meta ne valesse la pena.",
	},
	["muse.w11.road.118"] = {
		"La distanza. L'unico nemico che si batte ignorandolo.",
		"Le miglia non reagiscono. Aspettano solo di vedere se molli.",
		"Un miglio è lungo solo se continui a fissarlo.",
	},
	["muse.w11.road.119"] = {
		"A piedi il mondo sembra enorme, sulla mappa minuscolo. La verità abita da qualche parte nelle mie ginocchia.",
		"Le mappe fanno sembrare il mondo piccolo e le ginocchia lo fanno sembrare infinito. Mi fido delle ginocchia.",
	},
	["muse.w11.road.120"] = {
		"Un giorno partirò per una strada e non arriverò in fondo. Fino ad allora, in fondo a questa ci voglio arrivare.",
		"C'è un viaggio, chissà quale, che non finirò. Non è questo.",
	},
	["muse.w11.road.121"] = {
		"La prossima tappa potrebbe avere buon pane, un letto asciutto e una faccia gentile. «Potrebbe» è una bella parola su cui camminare.",
		"Qualunque cosa ci sia alla prossima tappa, potrebbe essere meglio dell'ultima. Quel «potrebbe» basta a rimettere in moto gli stivali.",
		"Dopo la prossima curva forse c'è qualcosa di buono. «Forse» non pesa niente, e basta a farmi andare.",
	},
	["muse.w11.road.123"] = {
		"Ogni strada che esce da un posto è anche una strada che entra in un altro. Cerco di tenerle a mente tutte e due.",
		"Partire e arrivare sono lo stesso passo, visto da due lati.",
	},
	["muse.w11.road.124"] = {
		"Poche cose battono il primo tratto dopo un lungo riposo: gambe fresche, testa leggera e tutta la strada ancora davanti.",
		"Non c'è niente come partire {g:riposato|riposata}. Per un miglio o due mi sembra di poter camminare fino ai confini del mondo.",
	},
	["muse.w11.road.125"] = {
		"La meta è un motivo per partire. Di rado è il motivo per cui continuo.",
		"Parto per il posto. Continuo a camminare per altre ragioni, quasi tutte testarde.",
	},
	["muse.w11.road.126"] = {
		"Ci sono più strade di quante una vita sola possa percorrere. Lo trovo più allegro che triste.",
		"Se potessi seguirei ogni sentiero fino in fondo. Visto che non posso, scelgo quelli che hanno un'aria un po' strana.",
	},
	["muse.w11.road.127"] = {
		"A metà. O a un terzo. Comunque nel mezzo.",
		"Non ci sono ancora. Ma nemmeno al punto di partenza. Chiamiamolo progresso.",
		"Tra qui e là, da qualche parte. Esattamente dove volevo essere.",
	},
	["muse.w11.road.128"] = {
		"Il tratto peggiore di un viaggio è quello in cui non succede niente. La mente comincia a inventarsi guai per tenersi occupata.",
		"Le strade noiose sono pericolose a modo loro. Senza niente da guardare, mi metto a guardare le mie preoccupazioni.",
		"Meglio una strada movimentata che una noiosa. La noia mi cammina accanto e chiacchiera per tutto il tragitto.",
	},
	["muse.w11.road.129"] = {
		"Per strada nessuno sa chi ero ieri. Ogni miglio è una pagina pulita.",
		"Gli sconosciuti che incontro in viaggio mi prendono per come sono in quel momento. È riposante, non essere la storia di nessuno.",
	},
	["muse.w11.road.130"] = {
		"Chiedi la strada due volte, a due persone diverse. Dove sono d'accordo, credici.",
		"Un'indicazione sola è una voce. Due che coincidono sono una mappa.",
	},
	["muse.w11.road.131"] = {
		"Ogni strada che prendo ne chiude cento altre. Cerco di non contarle.",
		"Scegliere una via vuol dire perdere tutte le altre, in silenzio, senza mai vedere cosa custodivano.",
	},
	["muse.w11.road.132"] = {
		"La strada davanti non mi deve niente, eppure continua a offrire. Io la chiamo generosità.",
		"Nessuno mi ha promesso una via per andare avanti. Eppure ce n'è sempre stata una.",
	},
	["muse.w11.road.133"] = {
		"Cavalcare è solo camminare con gambe prese in prestito. Eppure le mie sentono ogni miglio.",
		"La cavalcatura cammina e io mi indolenzisco. Uno scambio onesto, immagino.",
		"Tutto il tragitto a sedere, e la stanchezza c'è lo stesso. Il viaggio è un mistero.",
	},
	["muse.w11.road.134"] = {
		"Da quassù la strada scorre più veloce, e ne noto meno. I piedi sono più lenti, ma la strada la leggono.",
		"In sella le miglia scivolano via come pagine girate troppo in fretta. Qualche parola me la perdo.",
		"La velocità è una bella cosa, ma schiaccia il mondo in una macchia tra due tappe.",
	},
	["muse.w11.road.135"] = {
		"Quando ti perdi, fermati. Mangia qualcosa. Quasi tutte le svolte sbagliate le prende gente affamata e di fretta.",
		"Quando ci si smarrisce, la cosa peggiore è la fretta. Rallenta finché il panico non ti cammina dietro invece che davanti.",
		"Perdersi è una sensazione prima che un luogo. Sistema la sensazione, e di solito il luogo segue.",
	},
	["muse.w11.road.137"] = {
		"Prossima tappa: quella che viene. Si va.",
		"Avanti, fin dove sbuca questa.",
		"Vediamo dove porta, allora.",
	},
	["muse.w11.voices.001"] = {
		"Be'. Poteva andare peggio. Non so bene come, ma di sicuro poteva.",
		"Poteva andare peggio. Un attimo, e capisco pure in che modo.",
	},
	["muse.w11.voices.002"] = {
		"Non resta altro da fare che proseguire. E allora si prosegue.",
		"Non ci si gira intorno, ci si passa in mezzo. E va bene, in mezzo.",
		"Qui non c'è una risposta furba, solo quella testarda. Mi tengo quella testarda.",
	},
	["muse.w11.voices.003"] = {
		"Stanchezza? L'ho sorpassata da un pezzo. Qui siamo parecchio più in là.",
		"C'è la stanchezza, c'è quella dopo, e poi ci sono io, ancora più avanti, che saluto con la mano.",
	},
	["muse.w11.voices.004"] = {
		"Piccole vittorie: quello che cercavo stava proprio nella prima tasca.",
		"Prima tasca, primo colpo. Qualcuno segni la data.",
	},
	["muse.w11.voices.005"] = {
		"Di nuovo a parlare con nessuno. Ottimo ascoltatore, nessuno.",
		"Nessuno è un pubblico perfetto. Non interrompe mai e non se ne va prima della fine.",
	},
	["muse.w11.voices.006"] = {
		"Che venga pure. Qualunque cosa sia, mi troverà con gli occhi aperti.",
		"Avanti il prossimo guaio. Oggi non ho nessuna voglia di farmi sorprendere.",
	},
	["muse.w11.voices.007"] = {
		"Promemoria: la prossima volta, fai la cosa sensata. Promemoria: non la farai.",
		"Domani metterò giudizio. L'ho detto anche ieri, e guardami adesso.",
		"La prossima volta ci penso prima. Me lo sono {g:promesso|promessa} più volte di quante riesca a contarne.",
	},
	["muse.w11.voices.008"] = {
		"Va tutto bene. Tutto perfettamente, completamente bene. Più o meno.",
		"Tutto sotto controllo. Una parte, almeno; il resto sa stare al suo posto.",
	},
	["muse.w11.voices.009"] = {
		"Cinque minuti. È tutto quello che chiedo al mondo. Cinque minuti vuoti.",
		"Se il mondo stesse fermo un momento solo, gliene sarei {g:grato|grata} a vita.",
	},
	["muse.w11.voices.010"] = {
		"Su la testa. Gente più sciocca di me ne è uscita da cose peggiori.",
		"Mento alto. C'è chi è sopravvissuto a ben altro con molto meno giudizio.",
		"Coraggio. Ci sarà riuscito anche chi ha metà del mio cervello, no?",
	},
	["muse.w11.voices.011"] = {
		"Sto tenendo l'elenco dei guai di oggi. Serve già un secondo foglio.",
		"Se oggi va storta un'altra cosa, finisce sulla lista. Poi guardo male la lista.",
	},
	["muse.w11.voices.012"] = {
		"Tutto sommato mi faccio buona compagnia. Parlo un po' troppo, magari.",
		"Come compagnia, potrei trovare di peggio di me. Ho controllato.",
	},
	["muse.w11.voices.013"] = {
		"Quello che viene dopo viene dopo. Lo affronto quando arriva.",
		"Inutile temere quello che ci aspetta. Arriva comunque, che io mi agiti o no.",
		"Preoccuparsi non lo rimpicciolisce. Che arrivi, e me la vedrò con la sua misura vera.",
	},
	["muse.w11.voices.014"] = {
		"Avevo un piano. Era un piano bellissimo. Mi manca.",
		"C'era un piano, una volta. Una meraviglia. Non è arrivato a mezzogiorno.",
	},
	["muse.w11.voices.015"] = {
		"C'è un letto, chissà dove, con sopra il mio nome. Vorrei solo che mi scrivesse.",
		"Ogni letto di cui sento parlare è di qualcun altro. Comincio a prenderla sul personale.",
	},
	["muse.w11.voices.016"] = {
		"Contate le dita. Ci sono tutte. Buon inizio.",
		"Niente che manca, niente di rotto. Per me è una vittoria, e andiamo avanti.",
	},
	["muse.w11.voices.017"] = {
		"E va bene. Va bene! Faccio da me. Come al solito.",
		"Volontari? Nessuno? Splendido. Tocca di nuovo a me.",
	},
	["muse.w11.voices.018"] = {
		"Dovevo fare il fornaio. I fornai non vengono morsi.",
		"Al mondo esistono mestieri tranquilli. Sono {g:riuscito|riuscita} a non sceglierne nessuno.",
		"In questo momento un ciabattino sta passando una giornata tranquillissima. Beato lui.",
	},
	["muse.w11.voices.019"] = {
		"Mh. Questo pensiero non me l'aspettavo. Non so se lo rivoglio.",
		"Buffo, cosa salta fuori da una testa lasciata libera di vagare.",
	},
	["muse.w11.voices.020"] = {
		"Non ancora. Ho troppe cose lasciate a metà per fermarmi adesso.",
		"Crollare? Io? Con tutte queste faccende in sospeso? Neanche per sogno.",
	},
	["muse.w11.voices.021"] = {
		"Ognuno ha un talento. Il mio è pestare esattamente la cosa sbagliata.",
		"Dammi un pezzo di terra qualunque e ci trovo l'unica cosa che morde.",
		"Se c'è un'asse che balla, il mio piede l'ha già trovata.",
	},
	["muse.w11.voices.022"] = {
		"Potrebbe ancora venirne fuori una bella giornata. Sono successe cose più strane, quasi tutte a me.",
		"Chissà, magari capita qualcosa di bello. Tengo gli occhi aperti, non si sa mai.",
	},
	["muse.w11.voices.023"] = {
		"Ahi. No, niente. Ahi.",
		"Ah. Sì. Questo domani farà male.",
		"Qui verrà un livido. Anche di un bel colore, scommetto.",
	},
	["muse.w11.voices.024"] = {
		"La pazienza la tengo in un posto sicuro. Così sicuro che non la trovo più.",
		"La pazienza è una virtù. Sto lavorando prima sulle altre.",
	},
	["muse.w11.voices.041"] = {
		"Piano. Piano. Non è ancora successo niente.",
		"Calma. Qualunque cosa sia, non è ancora qui.",
		"Calma. Agitarsi in anticipo vuol dire agitarsi due volte.",
	},
	["muse.w11.voices.042"] = {
		"Oggi ho imparato qualcosa. Soprattutto cosa non fare, ma vale lo stesso.",
		"Ogni livido una lezione. Sto ricevendo un'istruzione completissima.",
		"La lezione di oggi è costata cara. Vediamo almeno di ricordarmela.",
	},
	["muse.w11.voices.043"] = {
		"Se va a finire così, che si sappia: ho protestato.",
		"Quando toccherà a me, che sia con un bel baccano e per un motivo serio.",
	},
	["muse.w11.voices.044"] = {
		"Mi spetta qualcosa di buono, ed è pure in ritardo. Il mondo me ne deve almeno una.",
		"Secondo i miei conti, la fortuna mi deve un favore o due. Passerei volentieri a riscuotere.",
	},
	["muse.w11.voices.045"] = {
		"Per un po' mi andrebbe bene un po' meno di tutto.",
		"Meno rumore, meno denti, guai più piccoli. È chiedere tanto?",
	},
	["muse.w11.voices.046"] = {
		"Qualunque cosa mi sbarri la strada: si sposti, o la sposto io.",
		"Fuori dai piedi, qualunque cosa tu sia. Ho un posto dove andare.",
		"Chi si mette sulla mia via farà bene a cercarsene un'altra.",
	},
	["muse.w11.voices.047"] = {
		"Io e la fortuna, al momento, non ci parliamo.",
		"Abbiamo litigato, io e la fortuna. È andata a tenere il broncio altrove.",
		"La fortuna mi evita di nuovo. Al suo posto, a dire il vero, lo farei anch'io.",
	},
	["muse.w11.voices.048"] = {
		"Un giorno o l'altro mi siedo e mi rifiuto di rialzarmi. Ma non oggi.",
		"Prima o poi mi siedo e resto lì. Un giorno intero. Forse due.",
	},
	["muse.w11.voices.049"] = {
		"Bene. Prima il lavoro, poi i brontolii.",
		"Adesso si fa, dopo ci si lamenta. Questo è il patto.",
		"Prima si fa. Il broncio può aspettare il suo turno.",
	},
	["muse.w11.voices.050"] = {
		"Sto avendo moltissima pazienza. Qualcuno se ne accorga, prima che finisca.",
		"E sono due. La terza non la concedo.",
	},
	["muse.w11.voices.051"] = {
		"Se questa fibbia si rompe un'altra volta, facciamo i conti, io e lei.",
		"Tieni ancora un po', disgraziata di una cinghia. Non ti chiedo altro.",
	},
	["muse.w11.voices.052"] = {
		"Avere paura va bene. Avere paura e muoversi va meglio.",
		"Tremo un po'. Non importa. I piedi funzionano.",
		"Le ginocchia tremano. Va bene. Possono tremare strada facendo.",
	},
	["muse.w11.voices.053"] = {
		"Luce, spiriti, loa, chiunque sia di turno: un piccolo favore, se non disturbo.",
		"Accetto benedizioni da chiunque le distribuisca. Non sono {g:schizzinoso|schizzinosa}.",
	},
	["muse.w11.voices.054"] = {
		"Casa è una parola che tengo in tasca. La tiro fuori quando nessuno guarda.",
		"Adesso come adesso non saprei dire dove sia casa. Più avanti, mi piace pensare.",
	},
	["muse.w11.voices.055"] = {
		"Nessuno lo metterà per iscritto. Meglio: odierei essere {g:citato|citata}.",
		"Niente testimoni, niente canzoni, niente statue. Solo il lavoro fatto come si deve.",
	},
	["muse.w11.voices.056"] = {
		"State vicini, tutti. Non torno indietro a prendere nessuno. Cioè, sì, ma non mettetemi alla prova.",
		"Ci siamo tutti? Bene. Vediamo di restare così.",
		"Restiamo uniti. Se qualcuno si allontana, io la mappa non gliela disegno.",
	},
	["muse.w11.voices.057"] = {
		"Avventura. Che parolone. In pratica vuol dire piedi bagnati.",
		"Che vita affascinante. Chiedetelo ai miei stivali, se ne reggete l'odore.",
	},
	["muse.w11.voices.058"] = {
		"Ancora uno. Ne ho ancora uno dentro. Forse due.",
		"Mi è rimasta più forza di quanto pensassi. Buffo come continui a succedere.",
	},
	["muse.w11.voices.059"] = {
		"Si è mosso? No. Probabilmente no. Lo tengo d'occhio lo stesso.",
		"È la seconda volta che mi sembra di sentire qualcosa. Alla terza ci credo.",
	},
	["muse.w11.voices.060"] = {
		"Questo livido merita un nome. Ormai mi fa compagnia da un pezzo.",
		"Dolore nuovo. Lo chiamo Forestiero: ci siamo appena conosciuti.",
	},
	["muse.w11.voices.061"] = {
		"Andrà bene. Magari non adesso, ma andrà bene.",
		"Le cose si aggiustano. Più piano di quanto vorrei, ma si aggiustano.",
		"Dagli tempo. Quasi tutto si sistema, se lo lasci stare e continui a camminare.",
	},
	["muse.w11.voices.062"] = {
		"Per un pasto caldo adesso affronterei un orso. Un orso piccolo.",
		"Cibo. Qualunque cibo. Non ho orgoglio.",
	},
	["muse.w11.voices.063"] = {
		"È quel che è. E quel che è, tocca a me sistemarlo.",
		"Inutile volerlo diverso. È così, e così lo affronto.",
	},
	["muse.w11.voices.064"] = {
		"Il mondo ha più tombe che canzoni. Qualcuno dovrebbe pareggiare i conti.",
		"In questo mondo troppi sono stati zittiti per sempre. Parlerò io per qualcuno di loro.",
	},
	["muse.w11.voices.065"] = {
		"A quello che verrà. Che sia più piccolo di me.",
		"Alla prossima cosa che arriva: che sia lenta, stupida, e che se la prenda con qualcun altro.",
	},
	["muse.w11.voices.066"] = {
		"E questo cos'è? No. Lascia stare. E va bene, un'occhiata sola.",
		"Non dovrei toccarlo. Lo tocco.",
		"Meglio lasciarlo stare, probabilmente. Probabilmente. Solo un colpetto.",
	},
	["muse.w11.voices.085"] = {
		"Ogni mago che ho conosciuto aveva le sopracciglia bruciacchiate e una buona scusa. Sto alla larga da entrambe.",
		"La magia è come un cane in prestito: affettuosa finché non smette di esserlo.",
		"Mai stare vicino a chi borbotta in una lingua antica. Consiglio gratuito.",
	},
	["muse.w11.voices.086"] = {
		"Se potessi chiedere una cosa agli uccelli, chiederei come fanno a non perdersi mai.",
		"Ogni animale di questo mondo sembra sapere dove sta andando. Beato lui.",
	},
	["muse.w11.voices.087"] = {
		"Un attimo. Lascia che il mondo smetta di girare un po'.",
		"Aspetta. Mi serve un momento perché tutto smetta di ondeggiare.",
		"Un momento. Sto facendo due chiacchiere con le mie ginocchia.",
	},
	["muse.w11.voices.088"] = {
		"Va bene stare in silenzio per un po'. Nessuno tiene il conto.",
		"Non serve riempire ogni silenzio. Certi vanno bene così come sono.",
		"Parlare meno, vedere di più. Dovrei provarci, una volta o l'altra.",
	},
	["muse.w11.voices.089"] = {
		"Se cado, cadrò in avanti. È terreno guadagnato.",
		"L'unica direzione che rifiuto è all'indietro.",
		"Avanti, allora. Anche male, ma avanti.",
	},
	["muse.w11.voices.090"] = {
		"Non ricordo cosa ho mangiato a colazione. Ogni insulto, però, saprei recitarlo.",
		"Strano come la testa conservi le cose sbagliate. Ogni sgarbo, e nemmeno una ricetta utile.",
	},
	["muse.w11.voices.091"] = {
		"Brutta giornata. Non brutta vita. Conviene tenerle separate.",
		"Una mela marcia non guasta tutto il cesto. Spero.",
		"Un'ora brutta è solo un'ora. Quando ha finito se ne va.",
	},
	["muse.w11.voices.092"] = {
		"Certi giorni vorrei dare un pugno al mondo, dritto sul naso.",
		"Non sono {g:arrabbiato|arrabbiata}. Sto solo raccogliendo motivi per dopo.",
		"Tengo a freno il carattere. In una scatola piccolissima. Con un coperchio che regge male.",
	},
	["muse.w11.voices.093"] = {
		"Pratica. Parola noiosa. L'unica che abbia mai funzionato.",
		"Sbagliare, sbagliare meno, fare giusto. Tutto il trucco è qui.",
		"Nessuno è bravo in qualcosa la prima volta. E nemmeno la quinta.",
	},
	["muse.w11.voices.094"] = {
		"Se a qualcuno serve una mano, io ne ho due. Funzionano quasi sempre.",
		"Se qualcuno ha bisogno d'aiuto, gridi. Non sarò un granché, ma ci sono.",
	},
	["muse.w11.voices.095"] = {
		"Vorrei una fine tranquilla, lontanissima, con una sedia.",
		"Quando verrà a prendermi, spero che almeno bussi.",
		"Oggi non si muore. Troppe cose da fare, e niente di pulito da mettermi.",
	},
	["muse.w11.voices.096"] = {
		"Bene. Chi ha spostato il pavimento?",
		"Tutto voluto. Anche l'inciampo. Soprattutto l'inciampo.",
	},
	["muse.w11.voices.097"] = {
		"Sono state battute probabilità peggiori. Non da me, ma comunque.",
		"Le probabilità sono pessime. Bene: ci avranno provato in pochi.",
		"Una possibilità remota resta una possibilità. Me la prendo.",
	},
	["muse.w11.voices.098"] = {
		"A volte mi chiedo se qualcuno se ne accorgerebbe, se continuassi semplicemente a camminare.",
		"Cammina abbastanza a lungo e il mondo scorda il tuo nome. Non è la cosa peggiore.",
	},
	["muse.w11.voices.099"] = {
		"Da che parte? Non importa. Scegline una e fai finta di averlo deciso apposta.",
		"Ho perso il filo di dove stavo andando. Lo ritroverò più avanti.",
	},
	["muse.w11.voices.100"] = {
		"In forma smagliante. Per qualcosa che è stato trascinato all'indietro in mezzo a un roveto.",
		"Al massimo del mio splendore. Che, d'accordo, non è un'asticella altissima.",
		"Presentabile? Da lontano. Molto da lontano.",
	},
	["muse.w11.voices.101"] = {
		"Non mi piace. Non so dire perché. Non mi piace e basta.",
		"C'è qualcosa in tutto questo che mi va di traverso.",
		"Chiamalo presentimento. Uno di quelli acidi.",
	},
	["muse.w11.voices.102"] = {
		"Piccole imprese, fatte bene. Quelle grandi si arrangino.",
		"Meglio una cosa piccola fatta bene che una grande fatta male.",
	},
	["muse.w11.voices.103"] = {
		"Qualcuno mi regga in piedi. Scherzo. Più o meno.",
		"Sto bene. In piedi e tutto.",
		"Il sonno è una voce che continuo a sentir girare.",
	},
	["muse.w11.voices.104"] = {
		"Chissà dove, qualcuno ha una pentola sul focolare. Beato lui.",
		"Esistono cucine con il pane nel forno e nessuno che combatte. È bello pensarci.",
	},
	["muse.w11.voices.105"] = {
		"Che vengano. È tutto il giorno che cerco qualcuno con cui prendermela.",
		"Adesso uno scontro sarebbe quasi un sollievo. Semplificherebbe le cose.",
	},
	["muse.w11.voices.106"] = {
		"Cosa ci sarà dall'altra parte? Lascia perdere, lo scoprirò.",
		"Chissà cosa c'è dopo la prossima svolta. Qualcosa con i denti, probabilmente. Comunque.",
		"Non so cosa c'è più avanti. È metà del motivo per andarci.",
	},
	["muse.w11.voices.107"] = {
		"Cose di cui sono {g:certo|certa}: pochissime. Cose che sosterrò di sapere: moltissime.",
		"Sono {g:sicuro|sicura} di tre cose, e due sono sbagliate.",
	},
	["muse.w11.voices.108"] = {
		"Te la stai cavando. Continua così.",
		"Guarda un po'. Niente male davvero. Avanti.",
		"Bene. È così che si fa. Ancora.",
	},
	["muse.w11.voices.109"] = {
		"Fa male tutto, il che vuol dire che è ancora tutto attaccato.",
		"Indolenzimento ovunque. Almeno sono coerente.",
	},
	["muse.w11.voices.110"] = {
		"Certa gente avrebbe meritato più strada. Ne cammino un pezzo al posto loro.",
		"Per tutti quelli che non sono arrivati a vedere fin qui: guardo io, per voi.",
	},
	["muse.w11.voices.111"] = {
		"I miei pensieri sono una pessima compagnia. Non mi lasciano mai finire.",
		"Troppi pensieri. Qualcuno dia qualcosa da fare alla mia testa.",
		"Ho la testa troppo piena. La svuoterei, ma non trovo il tappo.",
	},
	["muse.w11.voices.112"] = {
		"Che la prossima porta si apra senza fatica e il prossimo sconosciuto sia gentile.",
		"Una buona parola per quello che mi aspetta: sii gentile, o almeno sbrigati.",
	},
	["muse.w11.voices.113"] = {
		"Finisci quello che cominci. Regola irritante. Regola giusta.",
		"Fatto a metà è non fatto. Quindi, avanti.",
	},
	["muse.w11.voices.114"] = {
		"Mani ferme. Testa lucida. Via.",
		"Mente sgombra, mani ferme, piedi pronti. Bene.",
		"Calma. Concentrazione. Poi farlo come si deve.",
	},
	["muse.w11.voices.135"] = {
		"Se qualcuno lo chiede, sono {g:stato magnifico|stata magnifica}.",
		"Un giorno qualcuno mi chiederà com'è andata. Dirò splendidamente, comunque sia andata.",
		"Quando lo racconterò, salterò i pezzi in cui ho strillato.",
	},
	["muse.w11.voices.136"] = {
		"Tutto ciò che cresce lo fa senza che nessuno glielo dica. Avrei da imparare.",
		"Muschio su una pietra, erbacce in un muro. Il mondo riempie ogni spazio che gli lasciano.",
		"Le piccole creature vivono ovunque, facendosi i fatti loro. Ammirevole.",
	},
	["muse.w11.voices.137"] = {
		"In questo momento, chissà dove, qualcuno sta aprendo un libro che non dovrebbe. Lo sento nei denti.",
		"La magia. Meravigliosa, terribile, e c'è sempre qualcun altro a dover ripulire.",
		"Ogni rovina di cui sento parlare ha un libro di incantesimi sepolto in fondo.",
	},
	["muse.w11.voices.138"] = {
		"A chiunque sia qui vicino: te la stai cavando meglio di quanto credi.",
		"Chiunque stia ascoltando: su con la testa. Non sei solo tu.",
		"Se state passando un brutto momento, siete in buona compagnia.",
	},
	["muse.w11.voices.139"] = {
		"Certe domande non vogliono risposta. Io le faccio lo stesso, sottovoce.",
		"C'è sempre una cosa che non torna. Io le colleziono.",
		"Il mondo custodisce i suoi segreti come un avaro le monete. Io sulla borsa non mi arrendo.",
	},
	["muse.w11.voices.140"] = {
		"Nessuno nasce {g:imparato|imparata}. Tutti nascono testardi. Approfittane.",
		"Non sono {g:bravo|brava} in questo, per ora. «Per ora» è la parte importante.",
		"Più piano di quanto vorrei, meglio di com'ero. Mi accontento.",
	},
	["muse.w11.wonder.001"] = {
		"C'è un mago che fa bollire l'acqua guardandola, e poco lontano un contadino che aspetta ancora che il bollitore si decida. Stesso mondo.",
		"C'è chi chiama il fuoco dal nulla, e accanto a lui chi soffia su legna umida. E nessuno ci trova niente di strano.",
		"Metà del mondo accende il fuoco con una parola, l'altra metà con l'acciarino e qualche imprecazione. La cena arriva per tutti, prima o poi.",
	},
	["muse.w11.wonder.002"] = {
		"Un mago sa piegare la distanza fra due città come si piega una lettera. Mi sembra più incredibile dei draghi.",
		"Chissà dove si apre una porta nell'aria e qualcuno ci passa dall'altro capo del mondo. Spero di non abituarmici mai.",
		"Dicono che attraversare un portale sia come mancare un gradino al buio. Un mare intero attraversato in un inciampo.",
	},
	["muse.w11.wonder.003"] = {
		"Nessuno sa davvero da dove venga la magia. I maghi ne discutono più forte di tutti, e questo la dice lunga.",
		"Chiedi a dieci maghi da dove nasce l'arcano e avrai undici risposte e un mal di testa.",
		"I sapienti più grandi non sono ancora d'accordo su che cosa sia fatta la magia. Concordano solo sul fatto che funziona, e continuano a urlare.",
	},
	["muse.w11.wonder.004"] = {
		"La magia. Roba meravigliosa. Fino a quando non scoppia in faccia a qualcuno.",
		"Tutti adorano la magia, finché non arriva l'odore di sopracciglia bruciacchiate.",
		"La magia è splendida da una distanza di sicurezza. Il guaio è che nessuno è d'accordo su quale sia.",
	},
	["muse.w11.wonder.005"] = {
		"Gli sciamani dicono che il fuoco ha fame, l'acqua pazienza e la terra è lenta all'ira. Chi ha ascoltato un fuoco abbastanza a lungo ci crede.",
		"Il fuoco ha un brutto carattere e l'acqua ha memoria, almeno a sentire gli sciamani. Spiegherebbe parecchie cose.",
		"Se gli elementi hanno davvero i loro umori, come sostengono gli sciamani, ogni ciocco che non voleva accendersi stava solo tenendo il broncio.",
	},
	["muse.w11.wonder.006"] = {
		"I maghi parlano di linee di potere sotto il mondo come i minatori parlano dei filoni. Nessuno mi ha mai detto chi ce le abbia messe.",
		"Sotto terra, a quanto pare, il potere corre in linee, come vene sotto la pelle. Chissà cosa c'è nel punto dove due si incrociano.",
		"Se il mondo ha vene di potere, ogni torre e ogni rovina costruita sopra una di esse era qualcuno in ascolto del polso.",
	},
	["muse.w11.wonder.008"] = {
		"Il pane evocato non sa quasi di niente. È pane fatto con l'idea del pane.",
		"L'acqua evocata è bagnata, fresca e onestissima, eppure non sa di nessun posto.",
		"Il cibo fatto d'aria riempie la pancia e lascia la lingua a chiedersi cosa si sia persa.",
	},
	["muse.w11.wonder.009"] = {
		"In questo momento una persona pericolosissima è una pecora per qualche secondo, ed è molto confusa.",
		"Di tutto quello che la magia sa fare, trasformare un nemico in pecora è la cosa che vorrei mi spiegassero. Perché proprio una pecora?",
		"Qualcuno, tanto tempo fa, aveva il potere di rimodellare un essere vivente e ha scelto la pecora. Ci penso più di quanto dovrei.",
	},
	["muse.w11.wonder.010"] = {
		"Una pietra nello zaino che conosce la strada della locanda meglio di me. Cerco di non chiedermi troppo come faccia.",
		"Basta rigirare in mano quella pietra e da qualche parte una sala comune mi sta già aspettando. Un miracolo piccolo e semplice.",
		"Di tutta la magia del mondo, quella di cui mi fido di più è un sasso liscio che vuole solo riportarmi accanto a un fuoco.",
	},
	["muse.w11.wonder.011"] = {
		"Una formica si carica una briciola dieci volte più grossa di lei e non si chiede mai se ne valga la pena. Un po' la invidio.",
		"Le formiche non sembrano conoscere la parola impossibile. Afferrano la cosa e si mettono in cammino.",
		"Guarda una formica abbastanza a lungo e smetti di compatirti. Lei non posa mai niente per lamentarsi.",
	},
	["muse.w11.wonder.012"] = {
		"Ho sentito dire che i corvi ricordano le facce. Da qualche parte c'è un corvo con idee molto precise su di me.",
		"Dicono che un corvo non scordi mai chi gli ha fatto un torto. Con i corvi cerco di usare la massima cortesia.",
		"Un corvo osserva le persone come un mercante osserva le monete: da vicino, e facendo i conti.",
	},
	["muse.w11.wonder.013"] = {
		"Un ragno perde la tela sotto uno stivale distratto e ne comincia un'altra prima che lo stivale sia sparito. È un coraggio di cui nessuno canta.",
		"Rompi una ragnatela e il ragno sta già prendendo le misure per la prossima. Niente rancore, niente discorsi: solo filo.",
		"Il ragno non piange la sua tela. Trova un angolo nuovo e ricomincia, con la stessa pazienza.",
	},
	["muse.w11.wonder.014"] = {
		"Ogni albero del mondo è cominciato come qualcosa che un uccello poteva inghiottire. Difficile restare superbi, dopo averci pensato.",
		"L'albero più grande sotto cui qualcuno sia mai stato era, un tempo, abbastanza piccolo da perdersi in una tasca.",
		"Ogni foresta è cominciata come una manciata di cose che nessuno si è preso la briga di raccogliere.",
	},
	["muse.w11.wonder.015"] = {
		"I funghi spuntano dove un'ora prima non c'era niente, e nessuno li coglie mai sul fatto.",
		"Nessuno ha mai visto un fungo nascere. Aspettano che tutti guardino da un'altra parte.",
		"Il mondo tiene certi segreti in bella vista. I funghi sono uno di questi: sempre lì, mai visti arrivare.",
	},
	["muse.w11.wonder.016"] = {
		"I gatti fissano gli angoli vuoti come se lì ci fosse qualcuno. Non ho mai avuto il coraggio di chiedere chi.",
		"Quando un gatto pianta gli occhi nel nulla, io controllo il nulla. Due volte.",
		"Un gatto che fissa una soglia vuota è l'unico avvertimento che non prendo mai alla leggera.",
	},
	["muse.w11.wonder.017"] = {
		"Qualcuno dovrebbe imparare la lingua dei murloc. Una volta sola, vorrei sapere cosa significano tutti quei gorgoglii.",
		"Un giorno uno studioso capirà cosa gridano davvero i murloc, e sospetto che sarà una gran delusione.",
		"Tutto quel gorgogliare deve pur voler dire qualcosa. Scommetterei del buon argento che sono lamentele, per lo più.",
	},
	["muse.w11.wonder.018"] = {
		"La paura è una bugiarda con una buona memoria. Tiene ogni cosa brutta e dimentica tutte le volte che ne sono {g:uscito|uscita}.",
		"La paura tiene un elenco accurato di tutto quello che potrebbe andare storto, e non annota mai niente di quello che è andato bene.",
		"La paura racconta sempre la storia dal posto peggiore della sala. Ho imparato a chiedere un secondo parere.",
	},
	["muse.w11.wonder.019"] = {
		"Nessuno ha coraggio senza prima avere paura. È come chiedere un ponte senza il fiume sotto.",
		"Non si è coraggiosi davanti a qualcosa che non fa paura. Quella si chiama noia.",
		"Chi non ha paura di niente non ha coraggio: gli manca solo un pezzo.",
	},
	["muse.w11.wonder.020"] = {
		"Un tempo morire era l'unica certezza. Adesso certi morti si rialzano e se ne vanno per i fatti loro. Il mondo ha reso incerta perfino quella.",
		"C'era un tempo in cui la tomba chiudeva la questione. Oggi anche la tomba ha le sue eccezioni.",
		"Strana epoca, questa, in cui la morte non è più una porta ma una stanza da cui qualcuno torna fuori.",
	},
	["muse.w11.wonder.021"] = {
		"Pare che ci siano spiriti che stanno sull'orlo della morte e rimandano indietro qualcuno. Mi piacerebbe sapere cosa vedono in quelli che restituiscono.",
		"Certi tornano dall'altra parte, pallidi e silenziosi, e nessuno sa dire chi l'abbia deciso. Chissà chi tiene quell'elenco.",
		"Chi rimanda indietro i morti dalla soglia avrà le sue ragioni. Vorrei vedere il registro, e temo la riga col mio nome.",
	},
	["muse.w11.wonder.022"] = {
		"La Luce, gli spiriti, la Madre Terra, i loa: tante risposte alla stessa domanda. Forse è la domanda la cosa che hanno in comune.",
		"Ogni popolo di questo mondo ha il suo nome per ciò che veglia su di lui. Tutti chinano il capo allo stesso modo.",
		"Elune, la Luce, gli antenati, gli spiriti della terra. Parole diverse, e quando le si pronuncia cala lo stesso silenzio.",
	},
	["muse.w11.wonder.023"] = {
		"Un sacerdote chiude una ferita con poche parole. Qualunque cosa sia la Luce, non sono solo chiacchiere.",
		"In questo mondo la fede porta risultati che si toccano: ferite che si chiudono, febbri che passano. Dubitare diventa più faticoso.",
		"Difficile chiamare favola la Luce quando ha appena ricucito il braccio di qualcuno davanti a una folla.",
	},
	["muse.w11.wonder.024"] = {
		"Gli spiriti rispondono agli sciamani, la Luce ai sacerdoti. Chi risponde a quelli che non hanno mai imparato a chiedere?",
		"C'è chi prega e sente qualcosa in risposta. Tanti altri parlano al silenzio e sperano che stia ascoltando.",
		"Ogni fede di questo mondo dice di avere una risposta. Il silenzio dopo una preghiera suona uguale in tutte.",
	},
	["muse.w11.wonder.025"] = {
		"Dove va una fiamma quando si spegne? L'ho chiesto a gente più sveglia di me, e tutti hanno cambiato discorso.",
		"Nessuno sa dirmi dove finisca una fiamma quando la spegni. Era lì, e poi non era da nessuna parte.",
		"Una candela si spegne e la fiamma è semplicemente altrove, o in nessun luogo. Non ho mai deciso quale delle due mi turbi di più.",
	},
	["muse.w11.wonder.026"] = {
		"Perché nei posti vecchi si parla sottovoce, anche quando non c'è nessuno ad ascoltare? Qualcosa dentro di noi sa che bisogna essere educati.",
		"Tutti abbassano la voce in una rovina o in una cripta. Nessuno lo insegna. Lo sanno e basta.",
		"Le pietre vecchie fanno parlare tutti un po' più piano, come se lì qualcosa dormisse ancora.",
	},
	["muse.w11.wonder.027"] = {
		"Certe domande non hanno risposta. Sono le mie preferite: nessuno può dirmi che sbaglio.",
		"Mi piacciono le domande senza risposta. Puoi portartele dietro per anni e non vanno mai a male.",
		"Una domanda senza risposta è una buona compagnia. Non finisce mai gli argomenti.",
	},
	["muse.w11.wonder.028"] = {
		"La fortuna non guarda chi se la merita. È l'unica cosa di lei che mi consola.",
		"La fortuna non ha preferiti, checché ne dicano i giocatori. Semplicemente non ha ancora conosciuto tutti.",
		"La buona sorte si posa sui buoni e sui crudeli senza distinzione, come gli uccelli su uno steccato. Cerco di non leggerci niente.",
	},
	["muse.w11.wonder.029"] = {
		"Un portafortuna? No. Solo una cosa che preferisco non mettere alla prova lasciandola indietro.",
		"Non è un portafortuna. È una cosa che per caso avevo con me tutte le volte che è andata bene. È diverso.",
		"Superstizione? No. Solo che non vedo perché metterla alla prova.",
	},
	["muse.w11.wonder.030"] = {
		"Se è già tutto scritto, chi l'ha scritto ha una calligrafia orribile. Metà non riesco proprio a decifrarla.",
		"Il fato, se esiste, scrive con una grafia che si riesce a leggere solo dopo.",
		"Forse è tutto annotato da qualche parte. In tal caso la pagina gira sempre prima che io abbia letto la riga in cui mi trovo.",
	},
	["muse.w11.wonder.031"] = {
		"Non so se il fato esista. So che è un'ottima scusa, e cerco di non usarla.",
		"Chiamarlo fato è più comodo che chiamarlo scelta. Si tira in ballo il fato solo quando la scelta è andata male, pare.",
		"Al fato si dà la colpa di un sacco di cose che erano solo qualcuno che non stava attento.",
	},
	["muse.w11.wonder.033"] = {
		"Un uccello si rimette a cantare su un campo di battaglia appena il rumore cessa. Non gli importa di chi fosse la battaglia.",
		"Il canto degli uccelli torna in un posto distrutto prima della gente. È sempre la prima cosa che perdona.",
		"Dovunque smettano i combattimenti, gli uccellini sono i primi a tornare, senza chiedere chi abbia vinto.",
	},
	["muse.w11.wonder.034"] = {
		"Conchiglie, corna di montone, felci prima di aprirsi: il mondo continua a disegnare la stessa spirale. A qualcuno doveva piacere.",
		"C'è un ricciolo che ritorna nei gusci delle lumache, nelle felci giovani e nelle corna dei vecchi caproni. Il mondo si ripete dove va fiero di qualcosa.",
		"Se guardi bene, le stesse poche forme saltano fuori ovunque, in un guscio, in un corno, in una fiamma. Come se il mondo avesse un disegno preferito.",
	},
	["muse.w11.wonder.035"] = {
		"Non esistono due foglie uguali, si dice. Non ho mai controllato. Mi seccherebbe essere io a trovare la coppia.",
		"Ogni foglia è un po' diversa dalle altre, sostengono. Per esserne certi bisognerebbe guardarle tutte, e io non mi offro.",
		"Se mai saltassero fuori due foglie identiche, spero che qualcuno abbia il buon senso di non dirlo in giro.",
	},
	["muse.w11.wonder.036"] = {
		"C'è chi assaggia l'arcano una volta e non si sente più sazio. La fame normale è più semplice: col pane passa.",
		"A sentire tutti, la magia porta con sé una fame che nessun pasto tocca. Io mi tengo quella che si aggiusta con uno stufato.",
	},
	["muse.w11.wonder.037"] = {
		"Un buio vuoto non contiene niente. A spaventare è quello che la mia testa ci mette dentro.",
		"Il buio è solo una stanza senza mobili. La mia fantasia continua a portarcene di nuovi.",
		"Niente di quello che aspettava nel buio è mai stato brutto la metà di quello che ci avevo immaginato prima.",
	},
	["muse.w11.wonder.038"] = {
		"Avere paura va bene. Paura e stupidità insieme è la combinazione che cerco di evitare.",
		"Un po' di paura tiene gli occhi aperti. Troppa li chiude. Io punto a metà strada.",
	},
	["muse.w11.wonder.039"] = {
		"I druidi parlano di un sogno che sta sotto il mondo desto, verde e sconfinato. Certe mattine mi chiedo se non ci sia {g:andato|andata} a passeggiare.",
		"Si dice che sotto ogni cosa ci sia un grande sogno verde, dove il mondo è come avrebbe dovuto essere. Mi piace pensare di attraversarlo, ogni tanto, mentre dormo.",
	},
	["muse.w11.wonder.040"] = {
		"I coraggiosi non sono fatti di un'altra pasta. Sono solo andati avanti per primi più spesso, e ogni volta è stato un po' più facile.",
		"Nessuno nasce coraggioso. Si continua a fare un passo avanti finché le ginocchia smettono di discutere.",
		"Il coraggio sembra un dono che arriva da fuori. Visto da vicino è un'abitudine, esercitata male all'inizio e poi un po' meglio.",
	},
	["muse.w11.wonder.042"] = {
		"Al lichene serve una vita intera per coprire una pietra grande quanto un pugno. Niente al mondo si lascia impressionare meno dalla fretta.",
		"Una macchia di lichene grande come una moneta può essere più vecchia di qualunque re oggi in vita. E non se ne vanta mai.",
		"Muschio e licheni lavorano più piano di qualsiasi muratore e sopravvivono a ogni muro. La pazienza vince, se le dai abbastanza tempo.",
	},
	["muse.w11.wonder.043"] = {
		"Un gufo gira tutta la testa per guardarti, come se tu ne valessi la fatica. È stranamente lusinghiero.",
		"I gufi ti fissano come se si fossero appena ricordati qualcosa su di te. Non ho mai voluto sapere cosa.",
		"Un gufo sembra saggio soprattutto perché non dice mai niente. C'è una lezione, lì, che continuo a non imparare.",
	},
	["muse.w11.wonder.044"] = {
		"Le rane cantano come se nessuno avesse mai detto loro come suonano. Buon per loro.",
		"Nessuna rana si è mai chiesta se il suo canto fosse bello. C'è una lezione, in questo, un po' umida.",
		"Di qualunque cosa gracidi una rana, lo dice con convinzione assoluta. Mi farebbe bene impararlo.",
	},
	["muse.w11.wonder.045"] = {
		"Una bestia sveglia capisce che qualcosa non va prima di qualunque cavaliere o pastore. Ho imparato a guardare le orecchie, non gli occhi.",
		"Gli animali sentono i guai arrivare molto prima della gente. Quando le bestie tacciono, taccio anch'io.",
	},
	["muse.w11.wonder.046"] = {
		"Grida in una buca abbastanza profonda e qualcosa ti risponde con la tua voce. Non mi è mai piaciuto quanto sembri soddisfatto.",
		"L'eco è la compagnia più strana: ti dà ragione su tutto e non aggiunge niente. Chissà perché, mette a disagio.",
	},
	["muse.w11.wonder.047"] = {
		"Ogni tanto arriva un momento che sono {g:sicuro|sicura} di aver già vissuto, fino al rumore più piccolo. Poi passa, e non scopro mai cosa volesse dire.",
		"A volte il mondo ripete un momento parola per parola, e sembro l'unica persona ad accorgersi della cucitura.",
		"Torna quella sensazione: di essermi già {g:trovato|trovata} in questo punto preciso, a pensare questa cosa precisa. Ogni tanto il mondo deve ripiegarsi su se stesso.",
	},
	["muse.w11.wonder.048"] = {
		"Niente di ciò che vive possiede quello di cui è fatto. Polvere, acqua, un po' di calore: tutto in prestito, e già diretto altrove.",
		"Tutto ciò di cui sono {g:fatto|fatta} era qualcos'altro prima, e sarà qualcos'altro dopo. Lo tengo solo per un po'.",
		"La materia di un corpo è presa in prestito dalla terra e ci torna senza storie. È solo chi la prende in prestito a fare scenate.",
	},
	["muse.w11.wonder.049"] = {
		"Nemmeno chi è tornato dalla morte la descrive. O non c'è niente da raccontare, o c'è qualcosa che preferisce tacere.",
		"Nessuno di quelli tornati dall'altra parte ne ha mai dato un resoconto decente. Quel silenzio dice più di qualunque predica.",
	},
	["muse.w11.wonder.050"] = {
		"Le paure peggiori sono quelle piccole che non se ne vanno mai. Quelle grandi almeno hanno la decenza di finire.",
		"Un grande terrore passa come una burrasca. È la piccola preoccupazione che si trasferisce da te e comincia a spostare i mobili.",
	},
	["muse.w11.wonder.051"] = {
		"Bene. Ginocchia, smettetela. Si va.",
		"Grazie, gambe, per il parere. Preso nota. Andiamo avanti.",
		"D'accordo, nervi, avete detto la vostra. Adesso zitti.",
	},
	["muse.w11.wonder.053"] = {
		"Qualcuno ha inciso qualche riga su un pezzo di ferro e adesso brucia quando colpisce. Tutto quel potere, e la porta d'ingresso è un graffio.",
		"I segni di un incantatore sembrano scarabocchi di bambino finché la lama non comincia a brillare. Mai giudicare una runa dalla calligrafia.",
	},
	["muse.w11.wonder.054"] = {
		"Scommetto che ogni mago vivente, una volta, ha dato fuoco a qualcosa per sbaglio. Le vesti lo nascondono bene.",
		"Dietro ogni studioso dell'arcano in tunica c'è da qualche parte una tenda bruciacchiata di cui nessuno parla.",
	},
	["muse.w11.wonder.055"] = {
		"In questo momento qualcuno sta chiamando un demone per nome e si aspetta che faccia il bravo. Ammiro la sicurezza, se non altro.",
		"C'è chi lega i demoni alla propria volontà come altri tengono un cane da guardia. Io vorrei essere {g:sicurissimo|sicurissima} della catena.",
	},
	["muse.w11.wonder.056"] = {
		"Ho sentito descrivere la Luce come calda, abbagliante, severa, gentile. Chiunque l'abbia sentita sembra aver sentito qualcosa di diverso.",
		"Chiedi a cinque persone cosa si prova davanti alla Luce e avrai cinque risposte, tutte dette con la stessa certezza.",
	},
	["muse.w11.wonder.057"] = {
		"I tauren dicono che la Madre Terra sorregge tutto ciò che cammina. Se è così, ha una gran pazienza con gli stivali.",
		"Se la terra appartiene davvero a una madre, come raccontano i tauren, le spettano parecchie scuse per tutti gli scavi.",
	},
	["muse.w11.wonder.058"] = {
		"I loa, mi dicono, vogliono un'offerta per ogni favore. C'è un'onestà, in questo, che quasi ammiro.",
		"Un dono per un favore, un favore per un dono: è così che i troll parlano dei loro loa. Patti chiari, almeno.",
	},
	["muse.w11.wonder.059"] = {
		"Molto sotto il mondo, si dice, ci sono sale costruite da artefici così grandi che accanto a loro i nostri re sembrerebbero topi. Mi piacerebbe vederne una, da una distanza prudente.",
		"Chiunque abbia dato forma a questo mondo lavorava su una scala che non riesco a immaginare. Da qualche parte i suoi attrezzi potrebbero essere ancora dove li ha lasciati.",
	},
	["muse.w11.wonder.060"] = {
		"Darei parecchia intelligenza in cambio della calma di una mucca che rumina. Hai mai visto una mucca preoccupata? Nemmeno io.",
		"Su qualche sporgenza dove non dovrebbe stare c'è una capra, tranquillissima. Insegnami, capra.",
	},
	["muse.w11.wonder.061"] = {
		"Un'ape non sa di fare il miele per qualcun altro. Lavora bene e torna a casa, e basta.",
		"Le api lavorano come se da loro dipendesse il mondo intero, e per quanto ne so è proprio così.",
	},
	["muse.w11.wonder.062"] = {
		"Nessuno pianta i cardi, eppure ci sono cardi dappertutto. Le cose che nessuno vuole sono le più dure a morire.",
		"Alle erbacce nessuno ha mai chiesto di crescere, e crescono lo stesso. Lo trovo più incoraggiante di qualunque inno.",
		"Tagli un'ortica e lei ricresce per dispetto. Potrei avere modelli peggiori di un'ortica.",
	},
	["muse.w11.wonder.063"] = {
		"Perché tre? Ogni racconto, ogni amuleto, ogni avvertimento arriva in tre. Qualcuno, tanto tempo fa, ha deciso che due erano pochi e quattro era voler strafare.",
		"Tre desideri, tre tentativi, tre colpi alla porta. Il mondo ha un debole per il numero tre, e nessuno sa dirmi perché.",
	},
	["muse.w11.wonder.064"] = {
		"Se trovo una moneta per terra, passo il resto della giornata ad aspettare il conto.",
		"La fortuna mi innervosisce più della sfortuna. La sfortuna, almeno, so come portarla.",
	},
	["muse.w11.wonder.065"] = {
		"La fortuna è soprattutto il nome che si dà ai rischi che non ci si è accorti di correre.",
		"Metà di quello che chiamano fortuna è un rischio di cui si sono scordati di avere paura. L'altra metà non so spiegarla.",
	},
	["muse.w11.wonder.066"] = {
		"Se qualcuno ha davvero pianificato tutto questo, vorrei vedere il piano. Non per lamentarmi. Solo per controllare che ci sia anch'io.",
		"Se esiste un grande disegno, spero di comparire almeno a margine. Mi basterebbe una piccola nota a matita.",
	},
	["muse.w11.wonder.071"] = {
		"La paura grida sempre più forte proprio prima dell'inizio. Quando le cose cominciano, deve trovarsi un posto a sedere come tutti.",
		"Il peggio della paura è l'attesa. Quando arriva il momento, il lavoro la spinge da parte.",
	},
	["muse.w11.wonder.072"] = {
		"La paura del buio è più vecchia delle persone, direi. Chi l'ha imparata per primo aveva ragione.",
		"Ogni creatura sopravvissuta abbastanza da avere figli aveva un po' paura del buio. Vengo da buona stirpe.",
	},
	["muse.w11.wonder.073"] = {
		"Non ho paura dei ragni. Rispetto solo il numero di zampe che hanno deciso di avere.",
		"Paura dei ragni? No. Una sana preoccupazione per il numero di occhi in gioco.",
		"I ragni: otto zampe, otto occhi, zero spiegazioni. Mantengo le distanze per principio.",
	},
	["muse.w11.wonder.074"] = {
		"Ogni essere vivente sembra sapere, un poco, che finirà. Il cervo trasale, l'uccello tiene un occhio aperto. Solo le persone fingono di no.",
		"Le bestie vivono come se la morte fosse sempre vicina e non ne parlano mai. Le persone fanno il contrario.",
		"Una lepre non dimentica mai di poter morire, eppure trova il tempo di starsene seduta nell'erba. Mi sembra giusto così.",
	},
	["muse.w11.wonder.075"] = {
		"Esiste di sicuro uno scarabeo o un fiore a cui nessuno ha ancora dato un nome. Mi piace che l'elenco non sia finito.",
		"Il mondo non è ancora stato contato tutto. Ci sono ancora piccole cose che nessuno ha mai disegnato. Bene.",
	},
	["muse.w11.wonder.076"] = {
		"Il mondo è pieno di oggetti che ricordano incantesimi: anelli, lame, pietre vecchie. Chissà se sono mai contenti di essere posati.",
		"Un anello può custodire un incanto per secoli, molto dopo che la mano che l'ha messo è diventata polvere. Che cosa paziente da essere.",
	},
	["muse.w11.wonder.077"] = {
		"Se potessi scegliere un incantesimo qualsiasi, prenderei quello che ritrova i cucchiai persi.",
		"Lascia stare le palle di fuoco. L'incantesimo che voglio io mi direbbe in quale tasca l'ho messo.",
	},
	["muse.w11.wonder.078"] = {
		"Gli animali non temono i morti come le persone. Un corvo si posa su qualunque osso. Forse sanno qualcosa.",
		"Le bestie passano accanto a una tomba senza degnarla di uno sguardo. Forse la paura dei morti l'hanno inventata solo le persone.",
	},
	["muse.w11.wonder.079"] = {
		"Acqua ferma, acciaio lucidato, una lama pulita: il mondo continua a mostrarmi la mia faccia, e io continuo a stupirmene.",
		"Ogni riflesso sembra un po' uno sconosciuto che ha sentito parlare di me.",
	},
	["muse.w11.wonder.080"] = {
		"Un seme sa da che parte è il su anche sepolto nel buio. Io non sempre posso dire lo stesso.",
		"Pianta un seme a testa in giù e si raddrizza da solo. Vorrei avere la metà del suo senso dell'orientamento.",
		"Nessuno dice al germoglio dove sia l'aria aperta. Lo sa e spinge. Non è un brutto modo di vivere.",
	},
	["muse.w11.wonder.081"] = {
		"Paura e prudenza, da lontano, si somigliano. Da vicino, la prudenza è quella che continua a ragionare.",
		"La prudenza chiede cosa potrebbe andare storto. La paura risponde prima che abbia finito di chiedere.",
	},
	["muse.w11.wonder.093"] = {
		"Fato, se mi senti: un po' meno del solito, grazie.",
		"Chiunque stia organizzando tutto questo, un po' di varietà non guasterebbe.",
	},
	["muse.w11.wonder.094"] = {
		"Fortuna? La prendo. Non sono {g:schizzinoso|schizzinosa}.",
		"È andata meglio di quanto avesse il diritto di andare. Non faccio domande.",
		"Un po' di fortuna. Nessuno la guardi dritta negli occhi.",
	},
	["muse.w11.wonder.095"] = {
		"In questo mondo c'è più di quanto chiunque sappia spiegare, e la cosa mi solleva.",
		"Non tutto ha una spiegazione. Per fortuna. Immagina che noia, altrimenti.",
	},
	["muse.w11.wonder.096"] = {
		"Qualunque cosa ci stia guardando, spero che lo spettacolo le piaccia.",
		"Se lassù qualcuno mi tiene d'occhio, chiedo scusa per l'ultimo pezzo.",
	},
	["muse.w11.wonder.097"] = {
		"La morte può aspettare. Ho da fare.",
		"Non oggi, morte. Ho l'agenda piena.",
		"La morte dovrà prendere appuntamento come tutti gli altri.",
	},
	["muse.w11.wonder.098"] = {
		"Nessuno sa cosa viene dopo. È proprio questo il bello.",
		"Più avanti potrebbe esserci qualunque cosa. Preferisco questa incertezza al saperlo.",
	},
	["muse.w11.wonder.099"] = {
		"Sii {g:coraggioso|coraggiosa}, dicono. Nessuno dice mai come. Improvviso.",
		"Ci vuole coraggio, a quanto pare. Va bene. Me lo invento strada facendo.",
	},
	["muse.w11.wonder.100"] = {
		"Maghi, sacerdoti, sciamani, e nessuno sa dirmi perché un gatto butta le cose giù dal tavolo.",
		"Tutta la saggezza del mondo, e nessuno sa cosa pensi un gatto. Forse nemmeno il gatto.",
	},
	["muse.w11.wonder.101"] = {
		"Mondo strano. Non lo cambierei.",
		"Mondo bizzarro, ingiusto, stupefacente. Me lo tengo.",
		"Che posto matto, il mondo. Gli voglio bene lo stesso.",
	},
	["muse.w11.wonder.102"] = {
		"Se quello era un presagio, era scritto proprio male.",
		"I presagi sarebbero molto più utili se arrivassero con un biglietto di spiegazioni.",
	},
	["muse.w11.wonder.103"] = {
		"Certe cose al mondo non hanno un'utilità che io veda: la cresta di un uccello, un fiore in una crepa, uno scarabeo dipinto come un gioiello. Forse la bellezza è un mestiere a sé.",
		"A nessuno serve che uno scarabeo brilli così. Brilla lo stesso. Il mondo spreca bellezza a piene mani, e gliene sono {g:grato|grata}.",
		"Metà dei colori del mondo non serve a niente che io capisca. Pare che al mondo piaccia semplicemente mettersi in mostra.",
	},
	["muse.w11.wonder.104"] = {
		"Le falene volano verso la fiamma come se lì qualcuno avesse promesso loro qualcosa. Le persone fanno lo stesso, solo più lentamente.",
		"Una falena gira attorno a una candela finché non si brucia, e poi torna. Io delle falene non rido.",
	},
	["muse.w11.wonder.105"] = {
		"Un albero non fa un passo in tutta la vita e vede comunque più di quasi tutti i viaggiatori. Lascia che sia il mondo a venire da lui.",
		"Gli alberi non vanno da nessuna parte, e il mondo continua a fargli visita: uccelli, bestie, vagabondi, taglialegna. Anche la pazienza ha la sua compagnia.",
		"Piantato nello stesso punto per secoli, un albero sopravvive a ogni viandante che riposa alla sua ombra. Forse anche restare è un modo di viaggiare.",
	},
	["muse.w11.wonder.106"] = {
		"Un branco di lupi tiene un ordine migliore di quasi tutti i consigli, e nessuno mette niente per iscritto.",
		"I lupi risolvono le loro liti in fretta e poi cacciano insieme. Ho sentito di regni che se la cavano peggio.",
	},
	["muse.w11.wonder.107"] = {
		"Certi pesci risalgono tutta la corrente per tornare alle acque da cui sono partiti. Nessuno è mai riuscito a chiedergli perché.",
		"Ci sono pesci che nuotano contro un fiume intero per tornare a casa. Qualunque cosa li chiami, chiama forte.",
	},
	["muse.w11.wonder.108"] = {
		"Una pianta lasciata vicino a una finestra si piega verso la luce, piano, senza che nessuno glielo dica. Certi giorni mi servirebbe altrettanto buon senso.",
		"Nessuno insegna a un germoglio a voltarsi verso la luce. Lo fa e basta, di un capello al giorno. Vorrei essere così {g:ostinato|ostinata} per le cose migliori.",
	},
	["muse.w11.wonder.109"] = {
		"Dicono che la magia consumata sappia di metallo caldo e di pietra focaia, con qualcosa di dolce sotto. Chissà chi è stato il primo ad annusarla.",
		"Chi vive vicino all'arcano dice che lascia un odore, come una fucina in cui è stato versato del miele. Che cosa strana da sapere.",
	},
	["muse.w11.wonder.110"] = {
		"Raccontano che i draghi possano indossare un volto mortale. A volte guardo due volte gli sconosciuti troppo calmi.",
		"Se i draghi camminano davvero fra la gente in forme prese a prestito, qualunque sconosciuto silenzioso seduto a un tavolo potrebbe essere più vecchio della città che lo circonda.",
		"Un drago in sembianze mortali potrebbe essere chiunque. Rende molto interessanti le persone troppo composte.",
	},
	["muse.w11.wonder.111"] = {
		"La macchina di uno gnomo e l'incantesimo di un mago fanno entrambi cose impossibili. La differenza è che lo gnomo ti mostra le viti.",
		"Gli gnomi costruiscono con gli ingranaggi quello che i maghi fanno con le parole, ed entrambi si offendono se chiedi come funziona.",
		"La magia e l'ingegneria gnomesca hanno una cosa in comune: funzionano fino al momento in cui smettono di funzionare, e di brutto.",
	},
	["muse.w11.wonder.112"] = {
		"Ci sono bambini che crescono pensando che sia normale vedere qualcuno sparire in un lampo e ricomparire dall'altra parte della stanza. Immagino che ormai lo sia.",
		"In quest'istante un bambino guarda un incantesimo per la prima volta e decide che il mondo è una meraviglia. Spero che nessuno lo convinca del contrario.",
	},
	["muse.w11.wonder.113"] = {
		"Che qualcuno ascolti o no, dire le parole ad alta voce rende più ferme le mani. Forse è metà del senso di una preghiera.",
		"Una preghiera detta in un brutto momento serve a qualcosa anche se nessuno la sente. Dà un lavoro alla bocca, mentre il coraggio arriva.",
	},
	["muse.w11.wonder.114"] = {
		"Si dice che la Luce bruci i non morti, eppure ci sono Reietti che la invocano. Il mondo è più ingarbugliato di qualsiasi predica.",
		"Mani di non morti alzate in preghiera alla Luce: dicano quello che vogliono i sapienti, il mondo si rifiuta di essere semplice.",
	},
	["muse.w11.wonder.115"] = {
		"Spiriti nelle pietre, nell'acqua, perfino nell'aria, se gli sciamani hanno ragione. Allora sono {g:stato|stata} scortese con un sacco di cose.",
		"Se ogni sasso e ogni ruscello hanno uno spirito, come raccontano gli sciamani, devo delle scuse a metà delle cose che ho preso a calci.",
	},
	["muse.w11.wonder.116"] = {
		"Da dove vengono i sogni? Nessuno ha una risposta che mi soddisfi, meno di tutti chi sostiene di saperli leggere.",
		"Interpreti di sogni, druidi, vecchie comari: tutti hanno una teoria sui sogni, e nessuno è d'accordo su dove sia la porta.",
	},
	["muse.w11.wonder.117"] = {
		"Qualcuno ha disegnato la prima mappa, pronunciato la prima parola, cantato la prima melodia. Darei molto per sapere chi è stato il primo, in qualunque cosa.",
		"Ogni arte del mondo è stata fatta una prima volta, da qualcuno che non aveva nessuno da imitare. Mi sarebbe piaciuto conoscerlo.",
		"Qualcuno, molto prima di qualsiasi regno, si è chiesto per primo il perché. Penso a quella persona più che a qualunque re.",
	},
	["muse.w11.wonder.118"] = {
		"Strano che ogni essere vivente tema l'unica cosa in cui ogni essere vivente riesce alla perfezione.",
		"Tutti temono di morire, eppure nessuno ci ha mai fallito. È l'unico compito senza risposte sbagliate.",
	},
	["muse.w11.wonder.119"] = {
		"I morti superano i vivi di gran lunga, se si contano bene. I vivi fanno solo più rumore.",
		"Conta tutti quelli che sono mai vissuti e i vivi diventano una piccola folla chiassosa in piedi sopra una maggioranza silenziosissima.",
	},
	["muse.w11.wonder.120"] = {
		"Il coraggio si consuma. Ogni giorno devo procurarmene una scorta nuova.",
		"Il coraggio non si conserva. Quello di ieri è già finito, e quello di oggi va trovato da capo.",
		"Nessuno resta coraggioso una volta per tutte. Il coraggio finisce come l'olio della lampada, e va rabboccato.",
	},
	["muse.w11.wonder.121"] = {
		"La cosa più coraggiosa non è sempre la più rumorosa. A volte è dire ad alta voce «non lo so».",
		"Ammettere di avere paura richiede più fegato di qualunque grido di guerra. Gridare è facile: gridano tutti.",
	},
	["muse.w11.wonder.122"] = {
		"La paura si rimpicciolisce quando ha un nome. «È un lupo» è molto più piccolo di «cos'era quello?».",
		"Il rumore senza nome è sempre la bestia peggiore. Quando vedo cos'è, diventa solo un problema.",
	},
	["muse.w11.wonder.123"] = {
		"Certa gente ha la fortuna che le va dietro come un cane randagio. A me basterebbe un gatto randagio che si fa vedere ogni tanto.",
		"La fortuna segue certe persone come un segugio. La mia è più un gatto: arriva quando le pare e fa finta di non conoscermi.",
	},
	["muse.w11.wonder.124"] = {
		"Le vecchie storie danno a ogni vita un filo. Il mio, direi, ha qualche nodo, e almeno un pezzo annodato da uno sconosciuto.",
		"Se le vite sono fili, come dicono le vecchie, il mio l'ha filato di fretta qualcuno che canticchiava. Però regge.",
	},
	["muse.w11.wonder.125"] = {
		"Se sto solo facendo ciò che sarebbe successo comunque, vorrei almeno farlo bene.",
		"Fato o non fato, il lavoro che ho davanti ha la stessa misura. Tanto vale farlo come si deve.",
	},
	["muse.w11.wonder.126"] = {
		"Una piuma non pesa niente e tiene in aria un uccello. Non ho mai perdonato del tutto al mondo di farlo sembrare facile.",
		"Gli uccelli stanno sospesi sul niente e sembrano annoiarsi. Se ci riuscissi io, non smetterei più di sorridere.",
	},
	["muse.w11.wonder.127"] = {
		"Un ago che punta sempre dalla stessa parte, qualunque cosa tu gli faccia. Anche quella è magia, solo che nessuno si prende la briga di chiamarla così.",
		"Una calamita attira il ferro senza una parola né un gesto. Il mondo era strano già prima che qualcuno imparasse un solo incantesimo.",
	},
	["muse.w11.wonder.128"] = {
		"Perché si alzano gli occhi per chiedere aiuto e si abbassano per piangere un morto? Anche questo non lo insegna nessuno.",
		"La speranza guarda in alto e il dolore guarda in basso, in ogni popolo di cui abbia sentito parlare. Il corpo sembra sapere dove sono riposte le cose.",
	},
	["muse.w11.wonder.129"] = {
		"Cosa pensava di fare la prima persona che ha addomesticato un lupo? Era molto coraggiosa, o molto sola?",
		"Tanto tempo fa qualcuno ha lanciato a un lupo un avanzo invece di un sasso. Ogni cane accanto a ogni focolare deve tutto a quell'attimo di fegato.",
	},
	["muse.w11.wonder.130"] = {
		"Ogni animale è bravissimo a essere se stesso. Le persone sono le uniche che si stanno ancora esercitando.",
		"Una volpe non si chiede mai come si fa a essere una volpe. Io passo metà delle giornate a capire come si fa a essere me.",
	},
	["muse.w11.wonder.131"] = {
		"Certe cose è meglio non saperle. Solo che non so mai quali finché non le so già.",
		"Ogni porta chiusa potrebbe essere una di quelle che farei meglio a non aprire mai. Non so come, non ha mai fermato la mia mano.",
	},
	["muse.w11.wonder.132"] = {
		"Mi chiedo se ai morti dispiaccia essere ricordati male. Probabilmente non gli importa più. Sono i vivi a prendersela per loro.",
		"I morti non possono correggere le storie che si raccontano su di loro. Basterebbe questo a rendere i vivi più attenti.",
	},
	["muse.w11.wonder.133"] = {
		"Molti credono che gli spiriti degli antenati restino vicino ai vivi. Se è così, devono avere una gran pazienza con quello che i vivi fanno dei loro nomi.",
		"Se gli antenati guardano davvero, come credono tanti popoli, hanno visto ogni sciocchezza fatta in loro onore e sono rimasti educati.",
	},
	["muse.w11.wonder.134"] = {
		"I pipistrelli trovano la strada nel buio pesto ascoltando la propria voce che torna indietro. Io la trovo andando a sbattere.",
		"Un pipistrello si orienta al buio con l'udito. Io per lo più con gli stinchi.",
		"I pipistrelli chiamano e ascoltano l'eco per sapere dove sono i muri. A me basterebbe sapere dove sono i muri.",
	},
	["muse.w11.wonder.135"] = {
		"Un incantesimo, a sentire i maghi, è un ordine che il mondo non può rifiutare. A volte mi chiedo se il mondo se ne risenta.",
		"Ogni incantesimo dice al mondo di essere diverso per un istante. E il mondo, incredibilmente, obbedisce.",
		"Il mondo obbedisce a una parola detta bene. È la cosa più meravigliosa o la più spaventosa che io conosca, e non so quale.",
	},
	["muse.w11.wonder.136"] = {
		"La paura è onesta sul pericolo e bugiarda sulle probabilità.",
		"La paura sa sempre esattamente quanto è grossa la minaccia. È solo pessima a prendere le mie misure.",
		"La mia paura vede benissimo ogni pericolo, e me per niente.",
	},
	["muse.w12.coin.001"] = {
		"Ogni prezzo è fatto delle ore di qualcuno. Più gli stivali costano poco, più a lungo qualcuno li ha cuciti per meno.",
		"Dietro qualsiasi cifra ci sono due mani e una giornata di lavoro. A buon mercato vuol dire solo che a quelle mani è toccato meno.",
	},
	["muse.w12.coin.002"] = {
		"Sto mettendo da parte monete per qualcosa. Cosa, non lo ricordo più. Il risparmio è sopravvissuto al motivo e tira dritto lo stesso.",
		"In fondo allo zaino c'è un gruzzoletto destinato a un acquisto che ho scordato da un pezzo. Continuo a dargli da mangiare per affetto.",
	},
	["muse.w12.coin.003"] = {
		"Tengo una moneta d'argento nello stivale per il giorno peggiore. Se mi seppelliranno con lei ancora lì, vorrà dire che quel giorno non è mai venuto. La moneta migliore che non spenderò.",
		"Una sola moneta d'argento, nascosta a parte, per quando andrà tutto storto. Ogni volta che controllo e la ritrovo al suo posto è una piccola vittoria.",
	},
	["muse.w12.coin.004"] = {
		"Con la borsa piena la generosità mi viene facile. Con la borsa vuota scopro opinioni fermissime sul risparmio. I miei principi stanno sempre a un passo dalle mie monete.",
		"Buffo come la mia generosità salga e scenda insieme alla borsa, mentre le mie prediche sul risparmio fanno esattamente il contrario.",
	},
	["muse.w12.coin.005"] = {
		"Lascio una moneta di rame per chi sparecchia. È il modo più economico che conosca per restare una persona per bene.",
		"Accanto al piatto lascio una moneta per chi pulirà dopo di me. Prezzo modesto, pur di non diventare gente che se ne scorda.",
		"Chi pulisce dopo di me si prende una moneta. C'entra meno chi la riceve che la persona che diventerei senza quest'abitudine.",
	},
	["muse.w12.coin.006"] = {
		"L'oro pesa più di quanto ammettano le canzoni. Nessuno che canti di tesori ha mai dovuto portarselo su per una rampa di scale.",
		"Nelle ballate il tesoro non pesa niente. In un sacco pesa parecchio, e a ogni passo tintinna come una confessione.",
	},
	["muse.w12.coin.007"] = {
		"Certi giorni lascio vincere il mercante. Un affare fa piacere solo se tutti e due possono ancora permettersi la cena.",
		"In ogni contrattazione c'è un punto in cui vincere diventa prendere. Cerco di fermarmi un passo prima.",
	},
	["muse.w12.coin.008"] = {
		"Tutti hanno un prezzo, si sente dire. Il mio vorrei scoprirlo prima che lo scopra qualcun altro.",
		"Se è vero che chiunque si può comprare, voglio conoscere la mia cifra prima degli altri, per avere il rifiuto già pronto quando arriva l'offerta.",
	},
	["muse.w12.coin.009"] = {
		"Il lavoro onesto paga poco, ma continua a pagare. Quello storto paga benissimo, più o meno una volta.",
		"Il guadagno sporco arriva in un'unica manciata, e poi mai più. Quello pulito gocciola per sempre. So bene quale preferisco contare.",
		"Un lavoro storto paga per una stagione. Uno onesto paga per una vita intera, poche monete per volta.",
	},
	["muse.w12.coin.010"] = {
		"L'oro messo in una tomba fa una cosa sola: aspetta un ladro. Nella mia, se verrà il momento, meglio niente che valga la fatica di scavare.",
		"Quando sarà ora, che mi seppelliscano senza una moneta. L'oro nelle tombe insegna solo al prossimo ladro dove scavare.",
	},
	["muse.w12.coin.011"] = {
		"Non riuscirei mai a tenermi una moneta portafortuna. Prima o poi diventerebbe pane, e la fortuna finirebbe mangiata con lei.",
		"La moneta portafortuna è un'idea splendida, per chi non ha mai fame.",
	},
	["muse.w12.coin.012"] = {
		"Non sono {g:povero|povera}. Sono tra una fortuna e l'altra.",
		"Al verde? Ma no. Mi riposo tra due fortune.",
		"Povertà è una parola così definitiva. Diciamo che la fortuna è in ritardo.",
	},
	["muse.w12.coin.014"] = {
		"Una moneta regalata non mi manca mai. Una persa da una tasca bucata la piango per una settimana. È la stessa moneta: a cambiare sono io.",
		"Se perdo una moneta di rame mi tormenta per giorni. Se la regalo, a cena l'ho già dimenticata. La moneta non vede la differenza; io sì.",
	},
	["muse.w12.coin.015"] = {
		"Una moneta di rame, da sola, non sfama nessuno. Prima deve diventare pane, e in quel passaggio c'è un fornaio che si è alzato prima di tutti.",
		"Le monete sono solo promesse di pane. La ricchezza vera è il fornaio, già all'opera quando il resto del mondo dorme ancora.",
	},
	["muse.w12.coin.016"] = {
		"Avere già pronte le monete giuste, senza resto da aspettare: un trionfo minuscolo che nessun altro noterà mai.",
		"Pagare con la cifra esatta mi dà più soddisfazione di quanto dovrebbe. Le piccole vittorie restano vittorie.",
	},
	["muse.w12.coin.017"] = {
		"Non conto mai il resto davanti al mercante: mi sembra di dargli del bugiardo in faccia. Lo conto dietro l'angolo, come fanno i vigliacchi.",
		"Contare il resto al banco è un piccolo insulto. Così lo conto qualche passo più in là, dove a guardarmi c'è solo la coscienza.",
	},
	["muse.w12.coin.018"] = {
		"Le guerre si pagano due volte. Una in oro, da chi le comincia. Una in tutto il resto, da chi non le ha volute.",
		"Chi comincia una guerra la salda in monete. Chi non l'ha mai chiesta la salda con tutto quello che gli restava.",
	},
	["muse.w12.coin.019"] = {
		"Le poche monete d'argento messe da parte non servono davvero a comprare. Comprano il diritto di dire di no a un lavoro che non mi convince.",
		"I risparmi, per me, sono soprattutto la libertà di rifiutare. Una borsa vuota dice di sì a tutto.",
		"Ogni moneta che non spendo è un piccolo no che tengo in tasca, pronto per quando servirà.",
	},
	["muse.w12.coin.020"] = {
		"Se devi abbastanza alla persona sbagliata, comincia a decidere lei dove dormi, cosa fai, a chi sorridi. Il debito è un guinzaglio dalla voce gentile.",
		"Un debito grosso è una catena che ci si mette da soli, un anello per ogni firma.",
	},
	["muse.w12.coin.021"] = {
		"Nessuno ha mai il resto per una moneta d'oro. L'oro è la moneta che rende tutti poveri, per un istante.",
		"Tira fuori una moneta d'oro e guarda l'intera bottega rovesciarsi le tasche. Le monete grosse sono un fastidio travestito da ricchezza.",
		"L'oro è meraviglioso, finché non provi a comprarci una mela.",
	},
	["muse.w12.coin.022"] = {
		"Ho deciso come spendere una fortuna così tante volte che, se mai ne arrivasse una vera, mi sembrerebbe di farlo per la seconda volta.",
		"Nella mia testa ho già speso una dozzina di fortune, con gran giudizio. Peccato che nessuna fosse vera: avrei dato prova di un buonsenso ammirevole.",
	},
	["muse.w12.coin.023"] = {
		"Pagare il pasto a uno sconosciuto mi fa stare meglio che mangiare il mio. Non lo faccio abbastanza spesso da capirne il perché.",
		"Offrire la cena a qualcun altro lascia un tepore curioso. Costa meno di quasi tutti i piaceri, e capita meno di quanto dovrebbe.",
	},
	["muse.w12.coin.024"] = {
		"Chi presta ricorda la cifra fino all'ultima moneta. Chi riceve ricorda la gentilezza e perde il numero. Tutti e due si credono giusti.",
		"Chi presta tiene i conti, chi riceve tiene i sentimenti. Per questo tanti prestiti finiscono in liti che nessuno sa sciogliere.",
		"Un prestito è un unico fatto che si ricorda come due storie diverse.",
	},
	["muse.w12.coin.025"] = {
		"L'interesse è l'unica cosa che conosco capace di lavorare mentre il padrone dorme. Io, purtroppo, sto sempre dalla parte sbagliata.",
		"Chissà dove, il debito di qualcuno lievita piano al buio, come pasta da pane. Spero tanto che non sia il mio.",
	},
	["muse.w12.coin.026"] = {
		"Questo non è un prezzo. È una minaccia con dei numeri dentro.",
		"Volevi davvero dire quella cifra ad alta voce?",
	},
	["muse.w12.coin.027"] = {
		"Il ferro ricorda la forgia, la pietra ricorda la montagna. L'oro non ricorda nulla, se non il desiderio che ha acceso.",
		"Ogni metallo serba qualcosa del luogo da cui viene. L'oro serba soltanto le mani che lo hanno afferrato.",
	},
	["muse.w12.coin.028"] = {
		"Accettare la carità è più difficile che farla. Il segreto è dire grazie senza calcolare quanto sia costata a chi la dà.",
		"Quando qualcuno mi aiuta con del denaro, cerco di accettare con garbo: un grazie, un cenno, e nessun conto in testa su quanto potesse permetterselo.",
	},
	["muse.w12.coin.029"] = {
		"Quasi tutto ciò che mi tiene in vita costa pochissimo: acqua, una striscia di stoffa pulita, un attimo di attenzione. Le cose care servono soprattutto a fare figura.",
		"Fruga nel mio zaino: le cose più economiche sono quelle che mi tengono a galla. Quelle costose stanno lì per impressionare gente che non chiede mai niente.",
	},
	["muse.w12.coin.030"] = {
		"Quello che lascerò non riempirà una borsa. Mi accontento che riempia una frase o due sulla bocca di qualcuno.",
		"Il mio patrimonio, se così si può chiamare, sta in una mano. Spero che il resto di me stia in una parola gentile.",
	},
	["muse.w12.coin.031"] = {
		"I dadi sono i ladri più onesti che esistano. Ti prendono le monete senza mai fingere di farti un favore.",
		"Il gioco d'azzardo ha almeno la decenza di derubarti apertamente. Parecchi mercanti avrebbero da imparare dai dadi.",
		"Se perdi ai dadi, almeno sai con chi prendertela. Se perdi con un mercante sorridente, lo ringrazi pure uscendo.",
	},
	["muse.w12.coin.033"] = {
		"In questo momento qualcuno sta vendendo una cosa che aveva giurato di non vendere mai. Quel prezzo lo fissa la fame, e la fame non tratta.",
		"Gli affari più tristi li concludono quelli che non hanno più scelta. La cifra la detta la fame, e chi vende fa sì con la testa.",
	},
	["muse.w12.coin.034"] = {
		"Ogni bilancia da mercante pende di un capello verso il padrone. Non proprio disonestà. Solo un peso con le sue idee.",
		"Le bilance delle botteghe sono bestiole fedeli. Sembrano sempre sapere su quale banco stanno.",
		"Nessuno ha mai visto una bilancia pendere verso il cliente. Certi misteri sono più semplici di come sembrano.",
	},
	["muse.w12.coin.035"] = {
		"C'è qualcuno che rade una scaglia dalle monete d'argento prima di rimetterle in giro. Un furto paziente. Quasi ne rispetto la pazienza.",
		"Passa il pollice sul bordo di una moneta e ogni tanto la trovi rosicchiata. Qualche ladro con una lima e tutto il tempo del mondo.",
	},
	["muse.w12.coin.036"] = {
		"Un regalo che non mi costa niente non è davvero un regalo. Quel piccolo pizzico mentre lo porgo è il segno che vale.",
		"Se dare non brucia un poco, ho solo fatto ordine nelle tasche. Il bruciore è il dono.",
	},
	["muse.w12.coin.037"] = {
		"Le ricompense promesse sono sempre forzieri. Quelle consegnate sono sempre borsellini. Strada facendo, la ricompensa si mette a dieta.",
		"Una ricompensa suona d'oro quando la offrono e tintinna di rame quando la pagano. La differenza si chiama spese.",
		"Le ricompense si restringono nel tragitto dalla promessa al palmo, come lana lavata troppo calda.",
	},
	["muse.w12.coin.038"] = {
		"C'è chi paga in ringraziamenti e chi in monete. Chi paga in tutte e due è raro, e me li ricordo uno per uno.",
		"Denaro o gratitudine: quasi tutti ne scelgono uno. Chi li dà entrambi mi resta in mente molto dopo che le monete sono finite.",
	},
	["muse.w12.coin.039"] = {
		"Non so mai quanto chiedere quando qualcuno vuole una mano. Troppo, ed è brigantaggio; troppo poco, ed è dabbenaggine. Così non chiedo niente e brontolo dopo.",
		"Dare un prezzo al mio lavoro è il conto più difficile che esista. Di solito lo arrotondo per difetto, fino a un'alzata di spalle.",
	},
	["muse.w12.coin.040"] = {
		"Condonare un debito è l'unico acquisto che non ho mai rimpianto. Costa esattamente quanto mi spettava e compra qualcosa a cui non so dare un nome.",
		"Abbuona a qualcuno quello che ti deve e guarda le sue spalle che si abbassano. Nessuna moneta incassata ha mai fatto un effetto così.",
		"Cancellare quello che qualcuno mi deve è l'unica spesa che mi alleggerisce nel modo giusto.",
	},
	["muse.w12.coin.041"] = {
		"Ogni tanto salta fuori una vecchia moneta, battuta per un regno che non c'è più. Il mercante la accetta a peso. Il regno non c'entra.",
		"Passano ancora di mano, le monete dei regni caduti, purché pesino abbastanza. La bilancia di un mercante non porta il lutto per nessuno.",
	},
	["muse.w12.coin.042"] = {
		"Prima di ogni acquisto celebro un piccolo processo nella mia testa. La borsa accusa, i piedi difendono, e il verdetto è sempre: stivali.",
		"Ogni volta che desidero qualcosa, nella mia testa si riunisce un tribunale: bisogno contro voglia, e la borsa a fare da giudice. Una giudice spietata, la borsa.",
	},
	["muse.w12.coin.043"] = {
		"L'invidia è la cosa più cara che non compro mai. Eppure trova sempre il modo di mandarmi il conto.",
		"L'invidia non la compro, ma me la consegnano lo stesso, e la fanno pagare a ore.",
		"L'invidia è un acquisto a credito: nessuna moneta sul momento, e un conto lungo dopo.",
	},
	["muse.w12.coin.044"] = {
		"Facili da contare e difficili da tenere: così sono le monete. Gli amici, il contrario.",
		"Ti so dire cosa c'è nella mia borsa fino all'ultimo spicciolo. Quanti amici ho, sinceramente, non saprei. Forse è giusto così.",
		"Il denaro scivola tra le dita. Gli amici, quelli buoni, si attaccano come lappole.",
	},
	["muse.w12.coin.045"] = {
		"Ogni avviso con una taglia sulla testa di qualcuno mi fa chiedere chi stabilisca la cifra, e cosa scriverebbe sotto il mio nome.",
		"C'è chi decide quanto vale una vita in monete d'argento e la inchioda a un palo. Non vorrei conoscere la mia cifra. Ancora meno vorrei trovarla bassa.",
	},
	["muse.w12.coin.046"] = {
		"Un prezzo giusto è quello di cui si lamentano tutti e due. Così lo riconosci.",
		"Se dopo nessuno tiene il broncio, qualcuno è stato imbrogliato.",
		"Se compratore e venditore se ne vanno tutti e due un po' scontenti, il prezzo era giusto.",
	},
	["muse.w12.coin.047"] = {
		"I soldi parlano, dicono. I miei sussurrano solo scuse.",
		"Le mie monete non parlano. Si schiariscono la voce e se ne vanno.",
	},
	["muse.w12.coin.048"] = {
		"Qualunque cosa costi, costa meno che farne a meno.",
		"Prendi quello buono. Arrangiarsi senza è sempre la scelta più cara.",
	},
	["muse.w12.coin.049"] = {
		"Tieni il resto. È minuscolo, come la mia borsa: finirebbero per litigare.",
		"No, tienilo tu. Io e gli spiccioli non siamo mai andati d'accordo.",
	},
	["muse.w12.coin.050"] = {
		"Ben vengano le monete. E il pane pure. Un grazie fa piacere più di tutto, ed è l'unica cosa su cui nessuno contratta.",
		"Si paga quel che si può. Il resto lo salda un grazie.",
	},
	["muse.w12.coin.063"] = {
		"Chi mi ha offerto da mangiare più in fretta, quasi sempre, era chi poteva permetterselo meno. Conosceva il prezzo della fame meglio di quello del pane.",
		"La generosità scorre al contrario: meno monete, più mani aperte.",
		"Chi ha meno da dare è spesso il primo a darlo. Ho smesso di stupirmene e ho cominciato a prendere appunti.",
	},
	["muse.w12.coin.064"] = {
		"Ho visto gente con oro d'avanzo più in ansia di me con tre monete di rame. La preoccupazione, pare, cresce insieme al mucchio.",
		"Le grandi fortune arrivano con grandi serrature, grandi guardie e grandi musi lunghi. Mi tengo la mia borsetta e le mie preoccupazioni piccole.",
	},
	["muse.w12.coin.065"] = {
		"Lo spreco è l'unico lusso che non posso permettermi, e l'unico che non mi manca mai.",
		"Buttare via le cose buone è un'abitudine da ricchi. Non ne ho mai avuto i mezzi, e non ne ho mai sentito la mancanza.",
	},
	["muse.w12.coin.066"] = {
		"Una bustarella è un prezzo che si vergogna di se stesso.",
		"Le mazzette sono prezzi che non guardano nessuno negli occhi.",
		"Ogni mazzetta è un affare concluso sottovoce, perché ad alta voce non sopravvivrebbe.",
	},
	["muse.w12.coin.067"] = {
		"Paga e valore non si incontrano quasi mai. Le persone migliori che ho conosciuto erano quasi sempre le meno pagate.",
		"Nessuno di quelli con cui ho lavorato era pagato quanto valeva. Quasi tutti meritavano di più. Qualcuno meritava una bella strigliata.",
	},
	["muse.w12.coin.068"] = {
		"Una moneta è un pezzetto di metallo che tutti hanno deciso di prendere sul serio. Se il mondo intero si scordasse l'accordo in un colpo, avrei in mano un bottone.",
		"Il rame vale una pagnotta solo perché il fornaio conta che ci creda anche il mugnaio. Tutto il commercio è una catena di persone che si fidano delle ipotesi altrui.",
	},
	["muse.w12.coin.069"] = {
		"Il rame diventa verde se lo trascuri. L'oro non cambia mai. Forse per questo mi fido di più del rame: ammette i suoi anni.",
		"L'oro resta lucido per sempre, ed è un po' sospetto. Il rame si scurisce come una faccia onesta.",
	},
	["muse.w12.coin.070"] = {
		"La prima moneta d'oro di un bottino si guadagna sempre una seconda occhiata, come se potesse tornare rame appena sbatto le palpebre.",
		"Tra gli spiccioli di rame, l'oro va sempre guardato due volte. Una parte di me si aspetta uno scherzo.",
	},
	["muse.w12.coin.071"] = {
		"Se un giorno qualcuno mi ruba la borsa, spero ne avesse più bisogno di me. Se no, spero che fosse leggera.",
		"A chi un giorno mi sfilerà la borsa: che ti sfami, se hai fame, e che ti deluda, se non ce l'hai.",
	},
	["muse.w12.coin.072"] = {
		"Chi cura per niente viene pagato lo stesso: pane lasciato sulla soglia, un tetto aggiustato senza chiedere. Il denaro gira; cambia solo forma.",
		"Non tutti i debiti si saldano in argento. Alcuni si pagano in legna da ardere, in uno steccato rimesso in piedi, in una pentola di zuppa al momento giusto.",
	},
	["muse.w12.coin.073"] = {
		"Se un giorno qualcuno mi salverà la vita, cosa gli dovrò? Non monete, credo. Una gentilezza lunga e un po' goffa, senza scadenza.",
		"Non esiste borsa abbastanza grande per pagare un salvataggio. Si paga in lealtà, piano piano, finché si campa tutti e due.",
	},
	["muse.w12.coin.074"] = {
		"Un affare chiuso con una stretta di mano vale quanto due memorie. La mia regge. È l'altra che mi preoccupa.",
		"La stretta di mano va benissimo. Poi però si mette per iscritto, caso mai l'altra mano dimenticasse.",
	},
	["muse.w12.coin.075"] = {
		"Detesto chiedere in prestito. Ogni incontro con chi mi ha prestato diventa una piccola scusa.",
		"Basta dovere a qualcuno qualche moneta e non riesci più a incrociarlo senza che lo sguardo ti scivoli altrove.",
	},
	["muse.w12.coin.076"] = {
		"C'è chi passa la vita a risparmiare per una vita migliore e finisce sepolto con i risparmi. Io vorrei almeno comprarmi prima un bel cappello.",
		"Un gruzzolo tenuto per dopo ha il vizio di sopravvivere al dopo.",
	},
	["muse.w12.coin.077"] = {
		"Un rotolo di corda costa poche monete su una bancarella e vale una vita sull'orlo di un precipizio. Il prezzo è quanto costa; il valore è quando ti serve.",
		"Niente ha un prezzo solo. Un otre d'acqua costa poco, fino al giorno in cui è l'unica cosa tra te e la fine.",
		"Il prezzo si fissa al banco. Il valore si fissa dopo, là dove le cose vanno storte.",
	},
	["muse.w12.coin.078"] = {
		"Chissà dove, una guardia sta facendo un lungo turno per una manciata d'argento a settimana. Mezza sicurezza del mondo si compra a quel prezzo, e nessuno dice grazie.",
		"Ogni strada tranquilla è pagata col salario di qualcuno, e non è mai un salario alto.",
	},
	["muse.w12.coin.079"] = {
		"Si sono riscattati re con forzieri d'oro. Per un contadino nessuno ha mai pagato un riscatto, eppure senza contadini il mondo morirebbe di fame molto prima che senza re.",
		"La storia pesa un re in oro e un contadino in niente. Eppure è del contadino che il mondo non può fare a meno, nemmeno per una stagione.",
	},
	["muse.w12.coin.080"] = {
		"Nelle storie i draghi ammucchiano oro, e le storie non dicono mai cosa ne facciano. Forse niente. Forse l'avvertimento è proprio quello.",
		"Qualunque cosa voglia un drago da una montagna d'oro, non è spenderla. Accumulare per accumulare è forse la malattia più antica che ci sia.",
	},
	["muse.w12.coin.081"] = {
		"L'avidità non dice mai 'basta'. Dice 'e poi'.",
		"L'avidità non vuole la cosa. Vuole quella dopo, e quella dopo ancora, e non si è mai saziata una volta.",
		"Chiedi all'avidità quanto le basterebbe, e risponde: un po' di più.",
	},
	["muse.w12.coin.082"] = {
		"Il letto più economico di una locanda non è mai economico. La differenza si paga in sonno, e in pulci.",
		"Risparmia qualche moneta sulla stanza e la restituirai con gli interessi, sotto forma di torcicollo.",
	},
	["muse.w12.coin.083"] = {
		"Parsimonia e taccagneria, viste da fuori, si somigliano. La differenza sta in chi resta senza: tu, o qualcun altro.",
		"Stare attenti al denaro è una virtù finché il prezzo non lo paga qualcun altro. Allora ha un nome più brutto.",
	},
	["muse.w12.coin.084"] = {
		"Ogni tanto compro apposta qualcosa di inutile: un nastro, un dolcetto, un bottone grazioso. Altrimenti le monete si mettono in testa di comandare loro.",
		"Un piccolo sfizio ogni tanto tiene umile la borsa. Le monete mai sprecate diventano superbe.",
	},
	["muse.w12.coin.085"] = {
		"C'è un piacere sommesso nel desiderare qualcosa che non posso permettermi. Comprarla metterebbe solo fine al piacere.",
		"Certe cose è meglio lasciarle sullo scaffale del mercante. Desiderarle mi fa più compagnia di quanta me ne farebbe possederle.",
	},
	["muse.w12.coin.086"] = {
		"Regala tutto e per un giorno sarai un esempio, per un anno un pezzente. Anche la bontà ha bisogno di un po' di aritmetica.",
		"Le mani aperte sono una bella cosa, purché domani ci sia ancora qualcosa dentro.",
	},
	["muse.w12.coin.087"] = {
		"Qualcuno ci guadagna da ogni guerra. Quelli che contano in silenzio nel retrobottega non sono mai quelli che sanguinano.",
		"Ogni guerra ha i suoi vincitori, e di rado stanno sul campo. Stanno seduti a un tavolo, a fare somme.",
		"Le guerre sono un buon affare per qualcuno. Mai per qualcuno con cui divideresti un fuoco.",
	},
	["muse.w12.coin.088"] = {
		"Il favore è la moneta più strana. Non perde mai valore, nessuno è d'accordo su quanto valga, e viene sempre riscosso nel momento peggiore.",
		"I favori sono una valuta senza zecca. Ognuno tiene il suo conto, e non ci sono mai due conti uguali.",
	},
	["muse.w12.coin.089"] = {
		"Far notare a un mercante un errore a mio favore mi costa qualche moneta ogni volta. È l'onestà più economica che comprerò mai, e continuo a comprarla.",
		"Quando un mercante sbaglia il resto a suo danno, restituisco la differenza. Poche monete, per continuare a guardarmi in faccia.",
	},
	["muse.w12.coin.090"] = {
		"I regni si alzano sull'oro e cadono sui debiti. Il difficile è capire quale delle due cose ti stia succedendo intorno.",
		"Nessun impero ha mai finito prima il coraggio. Finisce il denaro, e il coraggio gli va dietro fuori dalla porta.",
	},
	["muse.w12.coin.091"] = {
		"La speranza è l'unica moneta che salta fuori da una borsa che avrei giurato vuota.",
		"Per quanto vuota sia la borsa, in fondo tintinna sempre una moneta di speranza. Non so chi continui a mettercela.",
	},
	["muse.w12.coin.092"] = {
		"Alle monete che arrivano, a quelle che partono, e a tutte le mani per cui passano strada facendo.",
		"Brindo a ogni moneta di rame che abbia mai pagato un pasto a uno sconosciuto.",
	},
	["muse.w12.coin.093"] = {
		"Più soldi, più vigliaccheria. Più la borsa pesa, più faccio attenzione a dove metto i piedi.",
		"Con la borsa piena ogni ombra sembra un borseggiatore.",
		"Niente mi mette più in agitazione che portarmi dietro una fortuna. Per fortuna capita di rado.",
	},
	["muse.w12.coin.094"] = {
		"Nessuno sa con precisione quanto possiedo, e a nessuno serve saperlo. È uno dei pochi segreti che mantengo senza fatica.",
		"La borsa è la cosa più privata che ho. Non perché sia piena: perché quanto sia vuota non riguarda nessuno.",
	},
	["muse.w12.coin.095"] = {
		"Con abbastanza stanchezza addosso, pago il primo prezzo che mi dicono. La fatica è la migliore amica dei mercanti.",
		"I mercanti dovrebbero assumere la stanchezza come garzone. Quando mi prende, accetto qualunque cifra pur di sedermi.",
	},
	["muse.w12.coin.096"] = {
		"Niente debiti, niente invidie. Questo, per me, è essere ricchi.",
		"Non dovere niente a nessuno, non invidiare nessuno. Ogni altra ricchezza viene dopo.",
	},
	["muse.w12.coin.097"] = {
		"Certe cose non sono in vendita. Quasi tutte sì. Il trucco è sapere quali, prima che qualcuno faccia un'offerta.",
		"Sappi cosa non venderesti prima che qualcuno te lo chieda. Dopo è tardi per decidere a mente fredda.",
	},
	["muse.w12.coin.098"] = {
		"L'oro può prendere in affitto le buone maniere. Comprarle, no.",
		"La cortesia, i soldi la noleggiano a ore. La gentilezza non accetta quei patti.",
	},
	["muse.w12.coin.099"] = {
		"Che tu la spenda o la risparmi, la moneta vuole sempre andarsene. Meglio darle un bel posto dove andare.",
		"Ferme, le monete, non ci stanno mai. Tanto vale scegliere dove se ne vanno.",
	},
	["muse.w12.coin.100"] = {
		"Meglio una borsa vuota che un nome a cui nessuno farebbe credito.",
		"Perdere le monete, pazienza. Perdere il credito di un nome onesto, e nessuna borsa lo ripara.",
	},
	["muse.w12.craft.001"] = {
		"Un nodo che so fare senza guardare vale più di uno di cui conosco solo il nome.",
		"Sapere come si chiama un nodo non conta. Farlo alla cieca, di fretta, con la corda che tira dall'altra parte: quello è saperlo.",
		"Qualunque nodo funziona in una giornata tranquilla. Quello da imparare è il nodo che si fa anche con le mani che tremano.",
	},
	["muse.w12.craft.002"] = {
		"Rammendare è quanto di più vicino a un orto io abbia: lavoro piccolo, fatto con calma, e alla fine qualcosa che sta meglio di prima.",
		"Un orto non ce l'ho. Ho un ago e un mucchio di roba strappata, e il piacere, a conti fatti, è quasi lo stesso.",
	},
	["muse.w12.craft.003"] = {
		"Se questa fibbia cede un'altra volta, le do un nome. E un rancore da portarsi dietro.",
		"Ancora uno scherzo da questa fibbia e diventa una questione personale.",
		"Fra me e questa fibbia manca un solo cedimento per una rottura definitiva.",
	},
	["muse.w12.craft.005"] = {
		"Il cuoio si unge prima che si crepi, non dopo. Avere cura dell'equipaggiamento vuol dire quasi sempre muoversi con un po' d'anticipo.",
		"Il cuoio ha sete un giorno prima di spaccarsi. Prendersene cura significa accorgersene in tempo.",
		"Ungi la fibbia al primo cigolio e al secondo non ci arriva mai. La cura è questione di tempismo.",
	},
	["muse.w12.craft.006"] = {
		"Una cosa che non si può aggiustare insegna quello che nessuna cosa intera sa insegnare: quando smettere di provarci.",
		"Certi strappi non valgono il filo. Riconoscerli è un mestiere anche quello, il più difficile che conosca.",
	},
	["muse.w12.craft.007"] = {
		"Il filo finisce sempre a un punto dalla fine. Ormai sono {g:convinto|convinta} che li conti.",
		"Il filo mi ha mollato a un solo punto dalla fine. Ovvio. Il filo sa contare, ed è dispettoso.",
		"Il filo è lungo fino all'istante esatto in cui gli manca un punto.",
	},
	["muse.w12.craft.008"] = {
		"La pratica è noiosa apposta. È nella noia che le mani imparano, senza che la testa ci metta bocca.",
		"Ripeti la stessa piccola cosa finché non ti stufa. Quando la testa si annoia, le mani l'hanno imparata per sempre.",
		"Nessuno ha mani abili grazie a un'ora d'ispirazione. Vengono da cento ore noiose.",
	},
	["muse.w12.craft.009"] = {
		"Aspetta. Qualcosa sbatacchia, e quel rumore non fa che crescere.",
		"Un attimo. Una cosa allentata prima fa rumore, poi fa danni.",
	},
	["muse.w12.craft.011"] = {
		"Guarda lavorare chi conosce un mestiere: la cosa strana è quanto poco si muove. I principianti si agitano, i maestri muovono appena un dito.",
		"Da fuori, la bravura somiglia all'immobilità. Chi conosce il lavoro non spreca niente, nemmeno un gesto.",
		"Gli impacciati fanno un gran teatro mentre lavorano. I bravi danno l'impressione che non stia succedendo quasi niente.",
	},
	["muse.w12.craft.012"] = {
		"Le mie riparazioni hanno uno stile. Nessuno lo chiamerebbe bello, ma lo riconosceresti ovunque.",
		"Un mio rammendo si riconosce a venti passi. Non perché sia fatto bene: perché è mio.",
		"Nessun altro rammenda così male, e in questo modo preciso. È praticamente una firma.",
	},
	["muse.w12.craft.013"] = {
		"Prima pulisco quello che porto, poi penso a me. È una regola sciocca, e finora non ha mai sbagliato.",
		"Prima l'equipaggiamento, poi io. Un ordine un po' stupido, ma mi tiene in piedi.",
	},
	["muse.w12.craft.014"] = {
		"Una buona cucitura sopravvive alle mani che l'hanno fatta. Non è male da lasciarsi dietro: qualche punto piccolo che fa il suo dovere per un estraneo.",
		"I punti durano più di chi li cuce. Mi accontenterei di un'eredità così: piccola, semplice, e ancora salda.",
	},
	["muse.w12.craft.016"] = {
		"C'è una piccola gioia pulita in una cucitura che sta piatta. Nessun altro se ne accorgerà mai, ed è parte del piacere.",
		"Una fila di punti dritta e regolare: nessuno la guarderà due volte, e io ne resterò segretamente {g:contento|contenta} per un'ora.",
		"Una fibbia che si chiude con uno scatto pulito è una ricompensa minuscola, e io queste le raccolgo ovunque capitino.",
	},
	["muse.w12.craft.017"] = {
		"Le cose pesanti in fondo, vicino alla schiena. Quelle che servono in fretta, sopra. Uno zaino ha una sua grammatica, e la sto imparando.",
		"Uno zaino fatto male combatte contro chi lo porta. Uno fatto bene cammina con te. Stesse cose, ordine diverso.",
		"Fare lo zaino è un piccolo mestiere che nessuno insegna: il peso basso e vicino, le cose rapide in alto, niente che sbatacchi.",
	},
	["muse.w12.craft.018"] = {
		"Il necessario per le riparazioni pesa di più ogni volta che lo guardo. Presto servirà un secondo corredo per aggiustare il primo.",
		"Mi porto dietro abbastanza spago, filo e toppe da rimettere in sesto un carretto. Gli stivali, però, restano scettici.",
	},
	["muse.w12.craft.019"] = {
		"Il cuoio ha una sua venatura, come il legno, come le persone. Assecondala e ti perdona molto. Contrastala e se lo ricorda.",
		"Segui la vena e il cuoio fa metà del lavoro. Va' contropelo e ti contesta ogni singolo punto.",
	},
	["muse.w12.craft.020"] = {
		"O lo aggiusti adesso o te lo porti dietro rotto. Le scelte sono solo due, e una sola diventa più leggera.",
		"Lo riparo qui, oppure lo trascino rotto. So bene per cosa votano le mie spalle.",
		"Una cosa rotta non diventa più leggera se la ignori. Diventa solo più rotta.",
	},
	["muse.w12.craft.021"] = {
		"Quando rammendo da {g:solo|sola}, parlo col lavoro. Fermo. Quasi. Ecco. È una compagnia migliore di quanto sembri.",
		"Mentre cucio borbotto alla stoffa come se potesse sentirmi. Non risponde mai, il che la rende un'ascoltatrice comoda.",
	},
	["muse.w12.craft.022"] = {
		"Gli apprendisti cominciano con la scopa, a quanto si dice. Non è crudeltà, credo: imparano la bottega prima di toccare il lavoro.",
		"Prima la scopa, poi gli attrezzi. Spazzare una bottega per un anno deve insegnare dove sta ogni cosa, e perché.",
	},
	["muse.w12.craft.023"] = {
		"Ogni riparazione che miglioro un'ultima volta è quella che si rompe. Il 'va bene così' era il lavoro finito, e ci sono {g:passato|passata} oltre.",
		"C'è un momento in cui il rammendo è finito, e uno subito dopo in cui lo rovino a forza di ritocchi. Trovo sempre il secondo.",
	},
	["muse.w12.craft.025"] = {
		"Un combattimento disfa le cose in un istante. Rammendare le rimette insieme piano. Cerco di tenere le due cose in una specie di equilibrio.",
		"Le lotte rompono, gli aghi ricuciono. Rompere è svelto, ricucire lento, e al lato lento devo più ore.",
	},
	["muse.w12.craft.026"] = {
		"Chiunque abbia cucito questa borsa conosceva il mestiere. Non saprò mai il suo nome, ma ci penso ogni volta che le cuciture reggono.",
		"Una mano sconosciuta ha messo questi punti, piccoli e regolari, e reggono ancora. A chi li ha cuciti devo più del prezzo pagato.",
	},
	["muse.w12.craft.027"] = {
		"Le riparazioni veloci non esistono. Esistono solo riparazioni su cui ho mentito a me {g:stesso|stessa}.",
		"'Ci vuole un attimo', mi dico, e un'ora dopo sono ancora {g:chino|china} su una cinghia.",
		"Una piccola riparazione è solo una grande che non ha ancora mostrato tutta la sua misura.",
	},
	["muse.w12.craft.028"] = {
		"Le mani stanche cuciono storto, è inutile far finta di niente. Una cucitura fatta mezza addormentata si fa due volte.",
		"Rammendare quando non ne posso più è un falso risparmio. I punti vagano e dopo tocca disfarli tutti.",
	},
	["muse.w12.craft.029"] = {
		"Nessuno tocchi questa cinghia. La tiene un nodo che nemmeno io capisco del tutto.",
		"Questa fibbia funziona, ma solo per affetto. Meglio non metterla alla prova.",
	},
	["muse.w12.craft.030"] = {
		"Una tirata a ogni cinghia prima di muoversi. Costa un attimo. Uno zaino che si apre nel momento sbagliato costa molto di più.",
		"Un rapido strattone a ogni fibbia prima di andare dovunque. Un'assicurazione da poco, l'unica che posso permettermi.",
	},
	["muse.w12.craft.031"] = {
		"Una toppa non è mai uguale al resto. È la sua parte onesta: dice che qui qualcosa è andato storto, e che qualcuno ci ha tenuto abbastanza da aggiustarlo.",
		"Mi piacciono le toppe che non fingono. Stoffa diversa, colore diverso, e la verità semplice su una brutta giornata.",
	},
	["muse.w12.craft.033"] = {
		"Ogni mestiere consuma la sua parte del corpo. I fabbri le spalle, i sarti gli occhi, i calzolai la schiena. Chissà quale si prenderebbe la mia.",
		"Un mestiere si riconosce da come uno sta in piedi. I fabbri si appoggiano a tutto, i sarti guardano il mondo strizzando gli occhi, come se andasse orlato.",
	},
	["muse.w12.craft.034"] = {
		"Se mai finiranno le battaglie, vorrei imparare a fare qualcosa. Stivali, magari. Qualcosa con cui la gente se ne va per la sua strada.",
		"Un giorno metterò giù tutto questo e imparerò un mestiere con le mani. Qualcosa che lasci il mondo più ricco di un oggetto.",
	},
	["muse.w12.craft.035"] = {
		"Certi miei nodi terrebbero una barca al molo. Altri si sciolgono se gli parli con durezza. Da fuori non c'è modo di distinguerli.",
		"I miei nodi sono di due tipi: quelli che tengono per sempre e quelli che tengono finché non ci conto davvero. Sono identici.",
		"Un nodo che tiene e uno che scivola sembrano gemelli. La differenza si vede solo quando qualcosa di pesante dipende da loro.",
	},
	["muse.w12.craft.036"] = {
		"La ruggine è trascuratezza che si vede. Un giorno di pigrizia, scritto in arancione.",
		"Lascia una cosa di metallo bagnata e trascurata, e alla tappa dopo ti ha già scritto un reclamo in ruggine.",
	},
	["muse.w12.craft.037"] = {
		"Il piccolo rumore di un ago che passa nel cuoio è il suono più tranquillo che conosca. Spingi, tira, il lieve scricchiolio del filo.",
		"Spingi, tira, il lamento sommesso del filo cerato. Se la pace avesse un suono, forse sarebbe questo.",
	},
	["muse.w12.craft.038"] = {
		"Dammi un momento con questo laccio. Minaccia di andarsene dall'ultima sosta.",
		"Aspetta un attimo. Questo laccio sta tramando qualcosa.",
	},
	["muse.w12.craft.039"] = {
		"Due di tutto ciò che si spezza: lacci, filo, cordino. Uno di tutto ciò che non si spezza. Ecco tutta la mia filosofia dello zaino.",
		"Ricambi per quello che si rompe, nessuno per quello che dura. Regola semplice, e batte di gran lunga zoppicare con una suola che sbatte.",
	},
	["muse.w12.craft.041"] = {
		"Imparare un'abilità ha una parte di mezzo noiosa di cui nessuno avverte: passato l'entusiasmo dell'inizio, lontano ancora il piacere di essere {g:bravo|brava}.",
		"Cominciare è emozionante e padroneggiare è dolce. In mezzo c'è un lungo tratto piatto in cui lo fai solo un po' meno male.",
		"La parte difficile di un'abilità non è l'inizio. È il lungo mezzo senza sorprese, dove sembra di non migliorare e invece si migliora.",
	},
	["muse.w12.craft.042"] = {
		"Deve esistere una bottega che fabbrica fibbie fatte apposta per rompersi nel momento peggiore. E gli affari vanno a gonfie vele.",
		"Le fibbie non si consumano. Aspettano. Poi scelgono.",
		"Le fibbie sono pazienti come solo il metallo sa essere. Aspettano esattamente il momento sbagliato.",
	},
	["muse.w12.craft.043"] = {
		"Quello che ho e che taglia, lo tengo affilato. Una cosa smussata combatte contro chi la tiene prima che contro chiunque altro.",
		"Tieni affilato quello che va tenuto affilato. L'ottusità non aiuta nessuno, men che meno chi la stringe in mano.",
	},
	["muse.w12.craft.045"] = {
		"Non saprei dire chi mi ha insegnato il primo nodo. C'è e basta, come una parola di cui ho perso l'origine.",
		"Il primo nodo che si impara non ha un maestro che si ricordi. Sta lì e basta, sotto tutti gli altri.",
	},
	["muse.w12.craft.046"] = {
		"Il primo tentativo di qualunque cosa nuova viene brutto. Il secondo viene brutto in modo più istruito.",
		"I principianti fanno cose brutte. Poi, con la pratica, le fanno brutte più in fretta. Da lì in poi, chissà come, migliora.",
	},
	["muse.w12.craft.047"] = {
		"Non è bello. Però tiene. È l'unica prova che conta.",
		"Rammendo brutto, rammendo solido. Fra le due parole scelgo la seconda.",
	},
	["muse.w12.craft.048"] = {
		"Ogni cosa nello zaino ha il suo posto, e le mie mani lo trovano alla cieca. È l'unica casa che tengo in ordine.",
		"Lo zaino è una casetta senza porta. Ogni cosa ha la sua stanza, e le mani ci vanno dritte.",
	},
	["muse.w12.craft.049"] = {
		"Riparare l'equipaggiamento è il lavoro dopo il lavoro. Nessuno lo paga, e senza non va avanti niente.",
		"Lo scontro finisce, e comincia il secondo turno: filo, grasso, cinghie, e una schiena dolorante sopra a tutto.",
		"Dopo ogni zuffa arrivano l'ago e il grasso. Lo scontro è breve; il riordino non finisce più.",
	},
	["muse.w12.craft.050"] = {
		"Quando tutto il resto mi sfugge di mano, una cinghia da aggiustare è una grazia. Qualcosa che posso davvero rimettere a posto.",
		"I grandi guai non stanno in mano. Una fibbia rotta sì. Certi giorni ne aggiusto una solo per aggiustare qualcosa.",
		"Quando nient'altro vuole andare per il verso giusto, trovo una cinghia allentata e la sistemo. Una vittoria piccola, ma è mia.",
	},
	["muse.w12.craft.052"] = {
		"Uno gnomo aggiungerebbe a questa fibbia tre ingranaggi e una molla. Sarebbe magnifica, e scoppierebbe.",
		"Dai questa cinghia a uno gnomo e te la restituisce con una manovella, un fischietto e un vago odore di fumo.",
	},
	["muse.w12.craft.053"] = {
		"Riponi gli attrezzi bagnati e ti puniscono. Riponili sporchi e puniscono chi li usa dopo. In un modo o nell'altro, qualcuno paga.",
		"Un attrezzo messo via sporco è un debito per dopo. Chi apre il corredo la volta successiva lo eredita, e di solito sono io.",
	},
	["muse.w12.craft.054"] = {
		"Mani che sapessero solo combattere sarebbero mani povere. Le mie sanno anche rammendare, legare, piegare, allacciare. Mi piacciono di più per questo.",
		"Sono {g:contento|contenta} che le mie mani conoscano anche lavori più quieti: un punto, un laccio, un panno piegato. Così non sono soltanto una cosa.",
	},
	["muse.w12.craft.055"] = {
		"Rammenderei anche la mia reputazione, se qualcuno vendesse il filo adatto.",
		"Toppe per la stoffa, grasso per le fibbie. Per la dignità ancora niente.",
	},
	["muse.w12.craft.056"] = {
		"Uno stivale si consuma sempre prima dell'altro, una cinghia si sfilaccia sempre per prima. Il mio equipaggiamento sa come mi muovo meglio di me.",
		"Leggi l'usura sull'equipaggiamento di chiunque e hai il suo passo, la sua postura, la spalla preferita. Il mio mi tradisce del tutto.",
	},
	["muse.w12.craft.057"] = {
		"Un mestiere è pazienza resa visibile. Ogni cosa finita è un mucchio di piccole attese, impilate con ordine.",
		"Quella che sembra bravura è soprattutto pazienza che qualcuno ha speso dove non si vede.",
		"La pazienza è la vera materia di ogni mestiere. Cuoio, legno e filo sono solo le forme in cui la si piega.",
	},
	["muse.w12.craft.059"] = {
		"Finito di legare tutto, avanza sempre un ultimo pezzo di cordino, e non so mai a cosa servisse.",
		"Lego tutto per bene, faccio un passo indietro, e mi resta in mano un pezzo di cordino. Qualcosa è rimasto slegato, e scoprirò cosa a mie spese.",
	},
	["muse.w12.craft.060"] = {
		"Le piccole riparazioni, fatte ogni giorno, sono il modo per non arrivare mai alle grandi.",
		"Cinque minuti adesso su una cinghia che si sfilaccia risparmiano un'intera giornata di guai più avanti.",
	},
	["muse.w12.craft.061"] = {
		"Il rumore di qualcosa che si spezza è sempre più forte di quanto dovrebbe. Un laccio, una cinghia, un cordino: un piccolo suono che chiude una lunga storia.",
		"Una cinghia cede con un piccolo schiocco, ed è finita lì. Tanto servizio, e un suono così piccolo per chiuderlo.",
	},
	["muse.w12.craft.062"] = {
		"In ogni città c'è qualcuno che insegna un mestiere a chiunque abbia le monete e la pazienza. Solo una delle due è difficile da trovare.",
		"Qualunque mestiere si può imparare da qualcuno in città, pagando in monete. Il prezzo è la parte economica; sono le ore che costano.",
	},
	["muse.w12.craft.063"] = {
		"La pratica rende migliori. Perfetti, mai.",
		"Meglio del nodo di ieri. È l'unico traguardo che mi do.",
	},
	["muse.w12.craft.065"] = {
		"Cerare il filo è il passaggio più noioso e quello che conta di più. Senza cera, ogni punto si sfilaccia un poco mentre passa.",
		"Fai scorrere il filo sulla cera prima di cucire. Nessuno lo vede, la cucitura non ti ringrazia, e dura il doppio.",
	},
	["muse.w12.craft.066"] = {
		"Gli aghi hanno un talento per nascondersi. Ne posi uno per un attimo e diventa parte del pavimento, dell'erba o dell'interno di un guanto.",
		"Perdi un ago e salta fuori una settimana dopo, di punta, proprio dove infili la mano senza guardare.",
	},
	["muse.w12.craft.067"] = {
		"Abbastanza larga da muoversi, abbastanza stretta da non scivolare. Ogni cinghia vive su quel confine, e anche gran parte della vita.",
		"Troppo stretta sfrega, troppo larga scivola. Sistemare bene una fibbia è una piccola lezione su come sistemare quasi tutto.",
		"Una cinghia regolata bene sparisce; una regolata male diventa il tuo unico pensiero. Quasi tutto il buon lavoro è così.",
	},
	["muse.w12.craft.068"] = {
		"C'è chi si sente a casa in un luogo. Gli artigiani si sentono a casa in un lavoro: mettiglielo davanti e sono arrivati.",
		"Un buon artigiano porta la casa nelle mani. Mettilo ovunque con i suoi attrezzi e quel punto diventa una bottega.",
		"La casa non deve per forza essere un luogo. Per un artigiano è il lavoro stesso, e se lo porta ovunque vada.",
	},
	["muse.w12.craft.070"] = {
		"Un artigiano non aspetta di sentirsi pronto. Le mani cominciano, e la prontezza arriva dopo, arrancando.",
		"Nessuno si è mai sentito pronto prima del suo primo vero lavoro. Si comincia lo stesso, e la prontezza raggiunge il passo.",
	},
	["muse.w12.craft.071"] = {
		"Rovina abbastanza cuoio e cominci a capirlo. Nessuno impara un mestiere senza una pila di fallimenti dietro il banco.",
		"I pezzi sciupati sono i veri maestri di ogni arte. Ogni maestro ne tiene un mucchio da qualche parte, ben nascosto.",
	},
	["muse.w12.craft.072"] = {
		"Ecco. Aggiustato. Nessuno lo guardi troppo forte.",
		"Fatto, e regge. Meglio non fargli domande difficili.",
	},
	["muse.w12.craft.073"] = {
		"Nessuno guarda qualcuno che si aggiusta un laccio. È una delle poche cose che faccio che appartengono solo a me.",
		"Le piccole riparazioni sono faccende private. Nessuno si ferma a guardare un laccio rinfilato, e a me piace così.",
	},
	["muse.w12.craft.074"] = {
		"Chiunque può comprare un buon equipaggiamento. Tenerlo buono è la parte che va fatta a mano, ogni giorno, da chi lo indossa.",
		"Un buon equipaggiamento si compra. Uno ben tenuto no: quello si guadagna punto dopo punto, da chi se lo porta addosso.",
	},
	["muse.w12.craft.076"] = {
		"L'abilità è soprattutto un elenco di errori che non faccio più. L'elenco è lungo, e intanto continuo ad aggiungere voci all'altro.",
		"Essere bravi in qualcosa è un mucchio silenzioso di errori lasciati alle spalle. Il mio cresce piano, e cresce anche quello che ho davanti.",
	},
	["muse.w12.craft.077"] = {
		"Le cose si rompono in uno di due momenti: quando ho fretta, o quando ho una fretta tremenda.",
		"L'equipaggiamento ha un senso del tempo che qualunque bardo invidierebbe. Nelle giornate tranquille non si spezza niente.",
		"L'equipaggiamento si rompe secondo un suo calendario, e il calendario dice sempre: adesso, quando fa più comodo a lui.",
	},
	["muse.w12.craft.078"] = {
		"Prima piano finché non viene giusto, poi giusto finché non viene svelto. La velocità è solo correttezza che ha smesso di esitare.",
		"Prima lento e corretto. La rapidità arriva dopo, da sola, quando le mani smettono di chiedere il permesso.",
		"Le mani frettolose imparano la fretta. Le mani lente imparano il lavoro, e la velocità arriva in regalo.",
	},
	["muse.w12.craft.079"] = {
		"Presta un ago e non torna più. Ho deciso che è così che viaggiano gli aghi: di mano in mano, per tutto il mondo.",
		"Ago e filo sono l'unica cosa che nessuno restituisce. I miei saranno in giro, a rammendare la fortuna di qualcun altro.",
	},
	["muse.w12.craft.081"] = {
		"Dieci fibbie, nove obbediscono. La decima aspetta che io sia {g:stanco|stanca} e poi si rifiuta di trovare il suo buco.",
		"L'ultima cinghia della giornata è sempre la più testarda. Sa che sono {g:sfinito|sfinita} e se ne approfitta.",
		"La fibbia che allaccio per ultima è sempre quella che mi fa la guerra. Sente quando non ne ho più.",
	},
	["muse.w12.craft.082"] = {
		"Ogni mestiere comincia copiando qualcuno. Un tocco proprio arriva molto dopo, se arriva, e nessuno può affrettarlo.",
		"Imparare un mestiere è prendere in prestito le mani di qualcun altro per molto tempo, finché un giorno non le senti tue.",
	},
	["muse.w12.craft.083"] = {
		"Il nodo perfetto esiste. L'ho fatto una volta, per caso, e da allora non mi è più riuscito.",
		"Un nodo perfetto, venuto per puro caso, e da quel momento non riesco più a rifarlo.",
	},
	["muse.w12.craft.084"] = {
		"Guarda un fabbro al lavoro e conta i colpi a vuoto. Non ce ne sono. È questo che comprano gli anni.",
		"Il martello di un fabbro non sembra mai chiedersi dove cadere. Guardarlo vale più di qualunque lezione a parole.",
	},
	["muse.w12.craft.085"] = {
		"Equipaggiamento controllato, cinghie strette, niente che sbatacchia. Adesso posso pensare al resto.",
		"Allacciato tutto quello che andava allacciato. Bene. Ora, alle preoccupazioni più grosse.",
	},
	["muse.w12.craft.086"] = {
		"Certi giorni anche un nodo semplice sembra troppo. È così che capisco che è ora di fermarmi, non dai dolori.",
		"Quando le mani pasticciano con un laccio che saprei legare dormendo, non è colpa del laccio. Sono io che chiedo riposo, nell'unica voce che ascolto.",
	},
	["muse.w12.craft.088"] = {
		"Tutto ciò che le mani fanno bene, all'inizio lo fanno lentamente. Non c'è altra strada verso la maestria, e nessuno ne ha trovata una più breve.",
		"Alla maestria non si accede pagando un pedaggio. C'è solo la lunga strada delle mani, percorsa finché il lavoro smette di essere fatica.",
	},
	["muse.w12.craft.089"] = {
		"Il grasso va dappertutto tranne dove lo metto. La fibbia resta asciutta, la manica luccica come lo stivale di un signore.",
		"Una goccia di grasso, messa con cura sul cardine, e chissà come finisce sulla faccia, sul polsino e sul pane.",
	},
	["muse.w12.craft.090"] = {
		"Ogni attrezzo ha un compito per cui è nato e una dozzina per cui finisce usato. È in quella dozzina che imparo di più.",
		"Nessun attrezzo viene usato solo per quello a cui serve. Il bello è sapere fin dove spingerlo prima che si pieghi.",
	},
	["muse.w12.craft.091"] = {
		"Le cose rotte non chiedono di essere aggiustate. Qualcuno decide semplicemente che ne valgono la pena. Ogni tanto mi piace essere quel qualcuno.",
		"Niente di rotto ha mai chiesto aiuto. Riparare è una scelta fatta al suo posto, ed è una delle più gentili che conosca.",
		"Una cosa riparata è un piccolo argomento contro lo spreco e contro la disperazione. Lo sostengo ogni volta che posso.",
	},
	["muse.w12.craft.092"] = {
		"Sto migliorando. Il nodo si è sciolto solo due volte.",
		"Progressi: stavolta i punti sono quasi allineati.",
	},
	["muse.w12.craft.093"] = {
		"Prima si rammenda, poi si riposa. Al contrario, al rammendo non ci arrivo mai.",
		"Le riparazioni prima di sedermi. Una volta {g:seduto|seduta}, non si aggiusta più niente.",
	},
	["muse.w12.craft.094"] = {
		"Spezzato di netto. Ha servito più a lungo di quanto avesse diritto.",
		"Andato, finalmente. Quel laccio ha fatto più della sua parte.",
	},
	["muse.w12.craft.095"] = {
		"Chi ha fatto questo nodo aveva fretta. Purtroppo ero io.",
		"Nodo fatto male. Me la prenderei con chi l'ha legato, ma parlerei da {g:solo|sola}.",
	},
	["muse.w12.craft.096"] = {
		"Sui vecchi campi di battaglia l'equipaggiamento giace dov'è caduto, ogni fibbia ancora allacciata. Nessuno è tornato a slacciarle.",
		"L'equipaggiamento dei caduti tiene i suoi nodi molto dopo che il padrone se n'è andato. Ognuno fu stretto con cura, da chi contava di scioglierlo più tardi.",
	},
	["muse.w12.craft.097"] = {
		"Molto prima di qualunque regno, qualcuno si sedette a torcere fibre per farne un cordino. Tutto ciò che è venuto dopo poggia su quel primo nodo paziente.",
		"La prima corda del mondo l'hanno fatta mani senza nome. Da allora ogni regno ci è rimasto appeso, in un modo o nell'altro.",
	},
	["muse.w12.craft.098"] = {
		"Prima di qualunque cosa importante, metto in ordine l'equipaggiamento. Non è superstizione. È l'unica parte di ciò che viene di cui posso essere {g:certo|certa}.",
		"Prima l'ordine nel corredo, poi la giornata. Qualunque cosa arrivi, troverà ogni cinghia al suo posto.",
		"Corredo in ordine, testa in ordine. Non so quale segua l'altro, so solo che vanno insieme.",
	},
	["muse.w12.craft.099"] = {
		"Le grandi imprese sono appese a piccoli fermagli. Una canzone su un eroe non nomina mai la fibbia che ha retto, ma l'eroe sì.",
		"Ogni leggenda che ho sentito poggia su una cinghia che non si è spezzata. Le canzoni lo dimenticano. Chi c'era, no.",
	},
	["muse.w12.craft.100"] = {
		"Certe cose le rammendo solo per non doverle sostituire. Una nuova sarebbe un'estranea, e di cose familiari ne ho già perse abbastanza.",
		"Continuo a riparare la vecchia cinghia ben oltre il buon senso. Una nuova funzionerebbe meglio e non significherebbe niente.",
	},
	["muse.w12.doubt.001"] = {
		"C'è una vocina che dice: torna indietro. Quasi sempre sbaglia. Il guaio sono le volte che non sbaglia.",
		"La parte di me che vuole voltarsi è vigliacca nove volte su dieci. La decima è l'unica con un po' di giudizio.",
		"Ho imparato a non ubbidire alla voce che dice di tornare, e nemmeno a zittirla. Ogni tanto, di rado, si guadagna il pane.",
	},
	["muse.w12.doubt.002"] = {
		"Le bugie che mi racconto sono piccole e fatte bene: «non è lontano», «regge», «me lo ricorderò». Ci credo ogni volta, a tutte quante.",
		"«Manca poco.» «Tiene.» «Me lo ricordo dove l'ho messo.» Le mie bugie preferite, e l'unica persona che ci casca sempre sono io.",
	},
	["muse.w12.doubt.003"] = {
		"A volte sento il rimpianto arrivare prima ancora di aver fatto la cosa. La faccio lo stesso, e il rimpianto si presenta puntualissimo.",
		"Certi errori si annunciano in anticipo, come un ospite che scrive prima di venire. Gli apro la porta comunque.",
	},
	["muse.w12.doubt.004"] = {
		"Potrei sbagliarmi. Lo metto agli atti adesso, finché suona ancora saggio.",
		"Sia chiaro che «forse sbaglio» l'ho detto per primo. Dopo dovrà pur contare qualcosa.",
		"Magari mi sbaglio. Dirlo in anticipo è molto più dignitoso.",
	},
	["muse.w12.doubt.005"] = {
		"Fare la cosa giusta è facile quando c'è qualcuno che guarda. È la stanza vuota che mi chiede chi sono.",
		"Nessuno lo saprebbe mai. È proprio quello il momento che decide che razza di persona sono.",
		"Quando nessuno guarda, l'onestà si paga a prezzo pieno. È lì che scopro se ci credevo davvero.",
	},
	["muse.w12.doubt.006"] = {
		"Tutte le persone davvero pericolose di cui ho sentito parlare erano sicurissime. Io un po' di dubbio me lo porto dietro, come un laccio di riserva.",
		"La certezza è un pregio in un ponte e una cosa che fa paura in una persona.",
		"Di un ponte sicuro di sé mi fido. Di una persona, molto meno.",
	},
	["muse.w12.doubt.007"] = {
		"Frugare nelle tasche di qualcosa che un attimo fa era vivo. Non ho mai trovato un modo di farlo che sembri decente. Lo faccio lo stesso.",
		"Ogni pezzo di bottino, un minuto prima, era di qualcuno. Almeno cerco di prenderlo in silenzio.",
		"Non esiste un modo educato di perquisire chi è caduto. Ho smesso di cercarlo, ma lo faccio sempre senza rumore.",
	},
	["muse.w12.doubt.008"] = {
		"Chiedere la strada costa una frase. Non chiederla mi è costato ore intere. L'orgoglio tiene i conti e non me li fa mai vedere.",
		"Piuttosto che ammettere di essermi {g:perso|persa} mi faccio un miglio in più. I piedi, su questo mio orgoglio, avrebbero da ridire.",
		"L'orgoglio preferisce farmi girare in tondo piuttosto che chiedere la strada a uno sconosciuto. Tanto, a camminare, non è lui.",
	},
	["muse.w12.doubt.009"] = {
		"Quando qualcosa si volta e scappa, la lascio andare. Saggio o no, è la regola che vorrei qualcuno rispettasse con me.",
		"Ciò che fugge ha già perso. Inseguirlo è solo mettere in ordine, e io per l'ordine non ho tutta questa passione.",
	},
	["muse.w12.doubt.010"] = {
		"D'accordo: avevo torto. Una cosa così non ricapita spesso, meglio godersela.",
		"Sì, va bene, avevo torto. Da segnarsi: è un uccello raro.",
		"Avevo torto. Ecco. Nessuno svenga.",
	},
	["muse.w12.doubt.011"] = {
		"La coscienza è l'unica compagna che non va mai sfamata e che non resta mai indietro.",
		"Tutto il resto che porto, a fine giornata, lo poso. La coscienza viene a letto con me.",
		"Via l'equipaggiamento, via gli stivali. La coscienza è l'unica cosa che non sono mai {g:riuscito|riuscita} a slacciare.",
	},
	["muse.w12.doubt.012"] = {
		"Nel difendermi sono imbattibile: dammi una qualsiasi sciocchezza che ho fatto e prima di cena le trovo tre ottime ragioni.",
		"Nessuno sostiene le mie ragioni bene quanto me. Proprio per questo non dovrei essere io a giudicare.",
		"Nel tribunale che ho in testa vengo sempre {g:assolto|assolta}. Comincio a sospettare del giudice.",
	},
	["muse.w12.doubt.014"] = {
		"Cambiare idea non è perdere. È la testa che, per una volta, si guadagna la paga.",
		"Una mente che non cambia mai è solo un sasso con delle opinioni.",
		"Se finisco la giornata credendo esattamente quello che credevo all'inizio, vuol dire che non ho fatto attenzione.",
	},
	["muse.w12.doubt.015"] = {
		"Le cose che combatto non possono mai dire la loro. Cerco di ricordarmi che una versione loro c'era.",
		"Qualunque cosa io abbia abbattuto aveva le sue ragioni per trovarsi sulla mia strada. Le mie non valgono di più solo perché a restare in piedi sono io.",
	},
	["muse.w12.doubt.016"] = {
		"Chiunque mi chieda un favore è sicuro che sia la cosa giusta. Mi piacerebbe sapere chi ha controllato.",
		"Ogni incarico che mi affidano arriva con una fiducia totale e nessuna prova. Quasi sempre lo accetto lo stesso, e su ognuno mi faccio delle domande.",
		"La gente mi affida compiti come se il giusto e lo sbagliato fossero stati decisi altrove, tempo fa. Le carte, io, non le ho mai viste.",
	},
	["muse.w12.doubt.017"] = {
		"Quasi nessuno di quelli che potrei perdonare me lo chiederà mai. Lo faccio lo stesso, in silenzio, e non sapranno mai di essere stati graziati.",
		"Perdonare chi non sa di averne bisogno è una gentilezza strana, privata. Nessuno ringrazia. Vale la pena lo stesso.",
	},
	["muse.w12.doubt.018"] = {
		"«Solo per questa volta» è la frase più cara che conosco. Non viaggia mai da sola.",
		"Ogni brutto vizio che ho è nato come un «solo per stavolta».",
		"Niente succede una volta sola. «Solo stavolta» è il modo in cui la seconda volta entra dalla porta.",
	},
	["muse.w12.doubt.020"] = {
		"Testardaggine e fermezza si somigliano finché si è a metà strada. Solo la fine dice quale delle due era.",
		"Nessuno distingue la costanza dalla zucconaggine finché non è tutto finito. Scoprirò anch'io cosa sono alla fine, come chiunque.",
	},
	["muse.w12.doubt.021"] = {
		"Fammici pensare. Poi fammici pensare dal lato opposto. Poi farò quello che avrei fatto comunque.",
		"Ci dormo sopra. Poi faccio la cosa che avevo già deciso, ma {g:riposato|riposata}.",
	},
	["muse.w12.doubt.022"] = {
		"Ogni rovina di questo mondo l'ha ordinata qualcuno che si sentiva sicurissimo. Il dubbio non ha mai bruciato una città.",
		"Guarda cos'hanno fatto ad Azeroth quelli che non avevano dubbi, e il dubbio comincia a sembrare una virtù.",
		"Nessuno ha mai aperto un varco alla Legione chiedendosi «e se mi sbaglio?». Lo hanno fatto quelli che non se lo chiedevano.",
	},
	["muse.w12.doubt.023"] = {
		"Do consigli eccellenti. Solo che non mi sono mai {g:trovato|trovata} nella condizione di seguirli.",
		"Se seguissi metà dei consigli che do, sarei insopportabile e camperei moltissimo.",
	},
	["muse.w12.doubt.024"] = {
		"Una parola detta per rabbia non si va a riprendere. Ho imparato a contare fino a dieci. Di solito arrivo a quattro.",
		"Le parole dure partono più svelte di qualsiasi scusa che possa rincorrerle.",
		"Certe parole escono di bocca e sono già a metà del mondo prima che io riesca a gridare «aspetta».",
	},
	["muse.w12.doubt.025"] = {
		"La cosa giusta di rado costa poco. Quando succede la controllo due volte: probabilmente è qualcos'altro col suo mantello addosso.",
		"Se fare il giusto mi sembra facile, guardo meglio. Di solito è la comodità che si è presa il suo nome in prestito.",
	},
	["muse.w12.doubt.026"] = {
		"«Tanto nessuno se ne accorge» è la ninna nanna preferita dei ladri. Ogni tanto la canticchio anch'io, e mi fermo prima del ritornello.",
		"Una vocina continua a farmi notare che nessuno se ne accorgerebbe. Ha ragione, ed è proprio quello il suo difetto.",
	},
	["muse.w12.doubt.028"] = {
		"Il dubbio non si fa mai vivo quando ho da fare. Aspetta la quiete, mi si siede accanto e fa le sue domande con educazione.",
		"Mentre combatto sono {g:sicuro|sicura} di tutto. È dopo, quando smetto di muovermi, che le domande entrano in fila, una dietro l'altra.",
	},
	["muse.w12.doubt.029"] = {
		"Io e la mia coscienza al momento non ci parliamo. Lei sa perché.",
		"Non adesso, coscienza. Prendi appuntamento.",
		"Sì, coscienza, ti ho sentita. Ho deciso di non ascoltarti. È diverso.",
	},
	["muse.w12.doubt.030"] = {
		"Ammettere un errore brucia una volta. Nasconderlo brucia ogni volta che qualcuno si avvicina all'argomento.",
		"Di' subito «colpa mia» ed è una cosa da poco. Aspetta, e le crescono i denti.",
		"Un errore ammesso sta in tasca. Uno nascosto cresce finché non gli serve uno zaino tutto suo.",
	},
	["muse.w12.doubt.031"] = {
		"Soppesa due scelte abbastanza a lungo e qualcun altro sceglierà per te. Anche quella è una decisione, e di solito la peggiore.",
		"Esita quanto basta e decide il mondo al posto tuo. Senza chiederti cosa avresti preferito.",
	},
	["muse.w12.doubt.032"] = {
		"«Ci penserà qualcun altro» lo pensano tutti nello stesso momento, mentre nessuno fa niente.",
		"Quando qualcuno è nei guai e la gente sta a guardare, ognuno è sicuro che si muoverà un altro. Io provo a essere quell'altro.",
	},
	["muse.w12.doubt.033"] = {
		"Non tutti gli scontri andavano combattuti. Solo che non so mai quali finché non sono finiti ed è tardi per chiederlo.",
		"Certi combattimenti potevo evitarli girandoci intorno. La domanda arriva dopo, quando non c'è più nessuno a cui farla.",
	},
	["muse.w12.doubt.034"] = {
		"L'orgoglio è un bel cappotto, finché non devo chinarmi a raccogliere qualcosa.",
		"Il mio orgoglio mi sta d'incanto, a patto di non muovermi di un dito.",
		"L'orgoglio mi tiene il mento alto che è una meraviglia. Non serve a niente quando devo guardare dove metto i piedi.",
	},
	["muse.w12.doubt.035"] = {
		"Ogni scelta chiude una porta dietro la quale non guarderò mai. Quasi tutte non mi mancano. Qualcuna la sento cigolare a lungo.",
		"Scegliere una cosa vuol dire seppellire in silenzio tutte le altre. Mi piace pensare che riposino in pace.",
	},
	["muse.w12.doubt.036"] = {
		"Ricordami perché mi era sembrata una buona idea. Anzi no, lascia stare. Preferisco il mistero.",
		"A un certo punto questa era una buona idea. C'ero anch'io. Ero d'accordo.",
	},
	["muse.w12.doubt.037"] = {
		"Il dubbio mi costa un istante prima di agire. Ho deciso che è un prezzo giusto per non fare in fretta qualcosa di imperdonabile.",
		"Un po' di esitazione è un pedaggio che vale la pena pagare. Le cose di cui mi pentirei di più sono tutte rapide.",
	},
	["muse.w12.doubt.038"] = {
		"Metà del bene che faccio lo faccio per ragioni sbagliate: orgoglio, noia, voglia di sentirmi dire grazie. Il bene però si fa lo stesso. Ho deciso di non guardarci troppo da vicino.",
		"Probabilmente aiuto per i motivi sbagliati. A chi viene aiutato non sembra importare granché.",
	},
	["muse.w12.doubt.040"] = {
		"Se riesco a dare una seconda possibilità a uno sconosciuto, forse posso concederne una anche a me. Forse.",
		"Distribuisco seconde possibilità a tutti, tranne alla faccia che vedo riflessa nell'acqua ferma.",
	},
	["muse.w12.doubt.041"] = {
		"Le cose su cui avrei giurato sono quelle che poi cedono. Quelle che ho ricontrollato, mai.",
		"Quando mi sorprendo a dire «ci scommetterei la vita», vado a controllare. Due volte.",
	},
	["muse.w12.doubt.042"] = {
		"La coscienza è un messaggero lento. Arriva con la sua lettera quando la cosa è fatta da un pezzo, e aspetta che la legga.",
		"Sul momento la coscienza tace. Si tiene tutto il discorso per dopo, quando non posso più farci niente.",
	},
	["muse.w12.doubt.043"] = {
		"Se è sbagliato, me ne prendo la colpa. Se è giusto, non chiedo grazie. In tutti i casi è roba mia.",
		"Scelta mia, peso mio. Nessun altro deve reggere la cinghia.",
	},
	["muse.w12.doubt.044"] = {
		"I miei ripensamenti sono sempre migliori dei primi pensieri. Se solo arrivassero prima.",
		"Il secondo pensiero: più saggio, più gentile e sempre un passo indietro, come un amico assennato che non trova gli stivali.",
		"I primi pensieri entrano di corsa e fanno il danno. I secondi arrivano dopo, con la scopa.",
	},
	["muse.w12.doubt.045"] = {
		"«Ho paura» è difficile da dire. «Avevi ragione» lo è di più. Le sto ancora provando entrambe.",
		"Di tutte le cose da dire ad alta voce, «avevi ragione» è quella che resta in gola più a lungo.",
	},
	["muse.w12.doubt.047"] = {
		"La pietà verso qualcosa che non potrà mai ricambiarla è l'unica di cui sono {g:sicuro|sicura} che sia sincera.",
		"Se non può ringraziarmi né ripagarmi, allora quello che gli do è autentico.",
	},
	["muse.w12.doubt.048"] = {
		"Ho una scusa pronta per quasi tutto. Chi non le accetta mai sono io.",
		"Le mie scuse sono ben provate e fatte con cura. Peccato che il pubblico sia sempre io, e le conosco a memoria.",
	},
	["muse.w12.doubt.049"] = {
		"Se nessuno, da nessuna parte, tiene il conto di quello che faccio, a testimoniare ci sono solo io. Questo fa più paura, non meno.",
		"Forse nessuna potenza lassù guarda. Allora l'ho visto soltanto io, e io non mi lascio comprare né ingannare a lungo.",
	},
	["muse.w12.doubt.050"] = {
		"Certo che ne sono {g:sicuro|sicura}. Mi capita anche spesso di sbagliare. Le due cose vanno d'accordissimo.",
		"Se ne sono {g:certo|certa}? Del tutto. Se ho ragione? Quella è un'altra faccenda.",
	},
	["muse.w12.doubt.051"] = {
		"Una promessa si mette alla prova solo quando diventa una seccatura. Prima, mantenerla è semplice buona educazione.",
		"Tutti mantengono la parola quando fa comodo. Il giorno in cui comincia a pesare è il primo in cui conta.",
		"Mantenere una promessa che mi fa comodo non dimostra niente. Solo quelle che stringono mi dicono qualcosa.",
	},
	["muse.w12.doubt.052"] = {
		"La certezza è un'armatura pesante: non passa niente, ma non riesco a girare la testa.",
		"Essere sicuri di tutto è come portare un elmo senza feritoie. Sicurissimo. Stupidissimo.",
	},
	["muse.w12.doubt.053"] = {
		"Nelle giornate storte rispondo male a chi non ha fatto niente. Da qualche parte uno sconosciuto si porta ancora dietro una mia parola tagliente, e la rivorrei indietro.",
		"Con la stanchezza addosso tratto male chi mi capita vicino. Se ne vanno portandoselo dietro, e non so mai i loro nomi per rimediare.",
	},
	["muse.w12.doubt.055"] = {
		"Non tutte le mani che porgo erano desiderate. Certo aiuto è solo la mia voglia di sentirmi utile, con una faccia più gentile.",
		"Prima di correre a dare una mano, una domanda piccola: lo faccio per loro o per me? La risposta non sempre mi lusinga.",
	},
	["muse.w12.doubt.056"] = {
		"Se dovessi cadere da qualche parte e non rialzarmi più, spero che l'ultima cosa fatta sia una che firmerei col mio nome.",
		"Vorrei che l'ultima cosa che faccio fosse una per cui non mi dispiacerebbe essere {g:ricordato|ricordata}. È un buon motivo per scegliere con cura, ora dopo ora.",
	},
	["muse.w12.doubt.057"] = {
		"Sono {g:sicurissimo|sicurissima} delle cose fino al momento in cui qualcuno mi chiede perché.",
		"La certezza regge benissimo finché non entra in scena la parola «perché».",
	},
	["muse.w12.doubt.058"] = {
		"Non mi serve la certezza per agire. Mi basta accettare di poter sbagliare, e di rimediare.",
		"Aspettare di essere sicuri è un ottimo modo per non fare mai niente. Preferisco muovermi, sbagliare e aggiustare quello che rompo.",
	},
	["muse.w12.doubt.059"] = {
		"No. Non così. Sono meglio di così, o almeno voglio esserlo.",
		"Piano. Non è questo che voglio essere. Rifallo, e fallo bene.",
	},
	["muse.w12.doubt.060"] = {
		"Mentire agli altri richiede fatica e buona memoria. Mentirmi non richiede né l'una né l'altra, ed è per questo che lo faccio molto più spesso.",
		"Con gli altri le bugie mi vengono malissimo. Con me, invece, mi riescono d'incanto.",
	},
	["muse.w12.doubt.061"] = {
		"Certi giorni non so proprio dire se sto facendo del bene o se sto solo riempiendo le ore. Da dentro, i giorni sembrano uguali.",
		"Sto migliorando qualcosa o mi sto soltanto muovendo? Visto da dentro, è la stessa identica sensazione.",
	},
	["muse.w12.doubt.062"] = {
		"Avere ragione e avere torto, da dentro, si sentono allo stesso identico modo. Per questo la certezza è una guida inutile.",
		"Lo sbaglio somiglia alla ragione fino al momento in cui smette di somigliarle. Nemmeno la certezza sa distinguerli.",
		"Sbagliare e avere ragione hanno la stessa faccia, quando a portarla sono io.",
	},
	["muse.w12.doubt.064"] = {
		"«Me l'hanno ordinato» non ha mai reso giusta nessuna cosa. Chi compie il gesto se lo porta addosso, chiunque abbia dato l'ordine.",
		"Gli ordini possono dire alle mie mani cosa fare. Non possono togliermene il peso, dopo.",
	},
	["muse.w12.doubt.065"] = {
		"Vado piuttosto {g:fiero|fiera} della mia umiltà. Ho il sospetto che non funzioni così.",
		"Nessuno è più modesto di me, e lo dico a chiunque. Qualcosa non quadra.",
	},
	["muse.w12.doubt.066"] = {
		"Il perdono non si dà una volta sola. Va rinnovato ogni volta che il ricordo bussa, e certi giorni ci riesco.",
		"Avevo perdonato quel torto. Poi mi è tornato in mente e ho dovuto perdonarlo una seconda volta. Credo che funzioni così, finché non smette.",
	},
	["muse.w12.doubt.067"] = {
		"Sto litigando con me da un pezzo. Vinco e perdo in parti uguali, e le due parti sono sfinite.",
		"Due versioni di me non vanno d'accordo su qualcosa. La terza cerca solo un po' di pace.",
	},
	["muse.w12.doubt.068"] = {
		"Giusto o sbagliato, è deciso. Presto saprò quale dei due.",
		"Deciso. Se è un errore, almeno è un errore fatto con convinzione.",
	},
	["muse.w12.doubt.069"] = {
		"Difficile trovare qualcuno più sicuro di essere nel giusto della Scarlet Crusade. Già questo dovrebbe mettere a disagio chiunque si senta sicuro.",
		"La Scarlet Crusade, a quanto si dice, non ha mai avuto un dubbio. Guarda che cosa ne ha fatto.",
	},
	["muse.w12.doubt.070"] = {
		"Le voci forti che ho in testa di solito sbagliano. Quella giusta tende a borbottare.",
		"Quando i pensieri si mettono a gridare, cerco quello sommesso che c'è sotto. Di solito è l'unico da ascoltare.",
		"I pensieri alzano la voce quando non sono sicuri di sé. Quelli assennati non gridano mai.",
	},
	["muse.w12.doubt.071"] = {
		"Quando provo a compensare un'azione brutta con una buona, quella buona viene bene e quella brutta resta esattamente dov'era.",
		"Le buone azioni non cancellano le cattive. Si limitano a stare loro accanto, in imbarazzo.",
	},
	["muse.w12.doubt.072"] = {
		"La vendetta, da lontano, sembra sempre giustizia. Da vicino ha la mia faccia e quella di nessun altro.",
		"Pareggiare i conti suona così ordinato. Non lo è mai. Resta sempre un avanzo, ed è sempre mio.",
	},
	["muse.w12.doubt.074"] = {
		"Chi serve la Luce dice che vede dentro ogni cuore. Se è così, spero che pesi quello che intendevo oltre a quello che sono {g:riuscito|riuscita} a fare.",
		"Se la Luce legge davvero le intenzioni, come sostengono i suoi sacerdoti, conto che sia una lettrice generosa.",
	},
	["muse.w12.doubt.075"] = {
		"Appena mi sento superiore a qualcuno, mi preparo. Il mondo corregge in fretta queste cose, e senza delicatezza.",
		"Sentiti al di sopra di qualcuno e la terra ti organizza una lezione. Non è mai discreta.",
	},
	["muse.w12.doubt.076"] = {
		"C'è un momento per dire «non è giusto», ed è sempre breve e sempre imbarazzante. Se lo perdi, il silenzio dà ragione al posto tuo.",
		"Anche il silenzio si schiera. Vorrei che non fosse così, ma succede ogni volta che lascio correre.",
	},
	["muse.w12.doubt.077"] = {
		"Se ne sono {g:sicuro|sicura}? Richiedimelo fra un'ora. Anzi, lascia stare: avrò cambiato idea.",
		"Ne sono assolutamente {g:certo|certa}. Più o meno.",
	},
	["muse.w12.doubt.078"] = {
		"Il dubbio prima di una scelta è una lanterna. Dopo, è solo un sasso nello zaino.",
		"Esitare prima illumina la strada. Rimuginare dopo è un sasso in più da portare.",
	},
	["muse.w12.doubt.079"] = {
		"Mi accorgo che alzo la voce proprio quando sono meno {g:sicuro|sicura}. Utile da sapere su di sé, e irritante.",
		"Più pianto i talloni, più è probabile che la discussione l'abbia già persa senza accorgermene.",
	},
	["muse.w12.doubt.080"] = {
		"La durezza è la strada facile, ci arriva chiunque. La gentilezza chiede più coraggio di quanto ne abbia di solito da parte.",
		"Essere duri è facile, il mondo te lo porge già pronto. Essere gentili costa fatica, quella in salita.",
		"Chiunque sa fare il muro. Fare la porta che si apre chiede molto di più.",
	},
	["muse.w12.doubt.082"] = {
		"«Non lo so» è la frase più onesta che possa dire. Ed è anche quella che evito con più impegno.",
		"Niente di ciò che dico è vero, e raro, quanto «non lo so».",
	},
	["muse.w12.doubt.083"] = {
		"La testa dice una cosa, la pancia un'altra, e i piedi risolvono la questione andandosene in una terza direzione.",
		"Testa e pancia sono in stallo. I piedi, come al solito, hanno smesso di aspettare la sentenza.",
	},
	["muse.w12.doubt.084"] = {
		"Le scelte che pesano di più non sono quelle che pagherei io. Sono quelle in cui pagherebbe qualcun altro.",
		"Rischiare la mia pelle è un conto semplice. Rischiare quella di qualcun altro trasforma ogni scelta in piombo.",
	},
	["muse.w12.doubt.085"] = {
		"Scusa. Quella non era giusta, su chiunque sia caduta.",
		"Se è uscita dura, la ritiro. Anche se non lo era.",
	},
	["muse.w12.doubt.086"] = {
		"Preferisco fare la cosa giusta goffamente che quella sbagliata con eleganza.",
		"Il bene fatto male conta lo stesso. Il male fatto con grazia resta male.",
		"Fare il giusto senza grazia batte comunque fare lo sbagliato con tutto lo stile del mondo.",
	},
	["muse.w12.doubt.087"] = {
		"Le cose di cui sono più {g:sicuro|sicura} sono quasi sempre quelle che non ho mai controllato.",
		"Prendi quello in cui credo più fermamente: scommetto che è la cosa che ho esaminato di meno.",
	},
	["muse.w12.doubt.088"] = {
		"Non mi serve morire con la certezza di aver avuto ragione. Mi basterebbe sapere di aver continuato a chiedermelo.",
		"Qualunque sia il mio ultimo pensiero, spero non sia «ne ero {g:sicuro|sicura}». Meglio «ho cercato di vedere».",
	},
	["muse.w12.doubt.090"] = {
		"Chi ero un'ora fa ha fatto la scelta migliore che poteva con quello che sapeva. Non è giusto giudicarla con ciò che so adesso.",
		"Col senno di poi la scelta sembra sciocca. Sul momento, con quello che vedevo, sembrava sensata. Sono vere entrambe le cose.",
	},
	["muse.w12.doubt.091"] = {
		"Sarei una persona pazientissima, se nessuno mettesse mai alla prova la mia pazienza.",
		"Le mie virtù sono in perfetto stato. Non le ho quasi mai usate.",
		"La mia pazienza è impeccabile, purché non vada storto proprio niente.",
	},
	["muse.w12.doubt.092"] = {
		"Certe scelte non si possono passare a nessun altro. Pesano di più, per questo, e in qualche modo sono anche più mie.",
		"Non c'è nessuno a cui chiedere, e forse è giusto così. Certe domande entrano in un paio di mani soltanto.",
	},
	["muse.w12.doubt.093"] = {
		"Non dirmi che avevo ragione. Mi incoraggia soltanto.",
		"Se salta fuori che avevo ragione, acqua in bocca. Sono già abbastanza insopportabile così.",
	},
	["muse.w12.doubt.098"] = {
		"Un'altra occhiata. Non che dubiti della cosa. Dubito di me.",
		"Ricontrollo. Non è della cosa che non mi fido.",
	},
	["muse.w12.doubt.099"] = {
		"Va bene, va bene. Torno indietro e lo faccio per bene.",
		"E va bene. Farò la cosa decente. Brontolando, ma la farò.",
	},
	["muse.w12.humor.001"] = {
		"Ovunque vada c'è una gallina. Sui campi di battaglia, agli incroci, sui gradini di un tempio. Non è di nessuno, e nessuno fa domande.",
		"Guerre, pestilenze, villaggi bruciati, e le galline ne escono sempre senza un graffio. Mi piacerebbe conoscere il loro segreto.",
		"Ogni grande evento di cui ho sentito parlare aveva una gallina ai margini, che beccava per conto suo, per niente impressionata.",
	},
	["muse.w12.humor.002"] = {
		"Mai una gallina che mi abbia guardato con qualcosa di diverso dal disprezzo. Vorrei sapere cosa le hanno raccontato.",
		"Le galline mi studiano di sbieco, un occhio per volta, come se ognuno volesse farsi un'idea sua. Nessuna delle due è lusinghiera.",
	},
	["muse.w12.humor.003"] = {
		"Ho offeso qualche gallina, ultimamente? No? Bene. Allora la fortuna dovrebbe reggere.",
		"Prima regola: mai far arrabbiare una gallina. Non so perché. Mi sembra importante e basta.",
	},
	["muse.w12.humor.004"] = {
		"Chi costruisce torri in questo mondo non ne ha mai salita una con lo zaino pieno. Oppure sì, una volta, e per ripicca ha fatto la successiva più alta.",
		"I maghi abitano in cima alle torri così chi sale arriva troppo stanco per discutere. Ci metterei la mano sul fuoco.",
		"A metà di qualunque scala a chiocciola perdo il conto, poi il coraggio, poi ogni idea di dove fosse la porta.",
	},
	["muse.w12.humor.005"] = {
		"Una scala a pioli è una scalinata a cui, a metà dei lavori, è mancato il coraggio.",
		"Delle scale a pioli mi fido come dei cani degli sconosciuti: con educazione, dal basso, e con le mani pronte a mollare.",
	},
	["muse.w12.humor.006"] = {
		"Chi porta tuniche lunghe deve avere un accordo privato con le scale. Al secondo pianerottolo io avrei già finito a gambe all'aria.",
		"Tunica lunga e gradini ripidi: non ho mai visto nessuno mettere insieme le due cose e restare dignitoso per tutta la rampa.",
	},
	["muse.w12.humor.007"] = {
		"La moda degli spallacci enormi finirà il giorno in cui qualcuno resterà incastrato in una porta davanti a testimoni.",
		"Certi spallacci che si vedono in giro potrebbero ospitare una famiglia di quattro persone. Chissà come fanno a passare dalle porte, di traverso o per niente.",
	},
	["muse.w12.humor.008"] = {
		"Certi elmi sembrano un secchio promosso ben oltre i propri meriti.",
		"Metà degli elmi di questo mondo li ha disegnati qualcuno che una testa l'aveva solo sentita descrivere.",
	},
	["muse.w12.humor.009"] = {
		"Ogni cinghia e ogni fibbia che porto scricchiola in una tonalità diversa. Avvicinarmi di soppiatto è fuori discussione: arrivo come il carretto di un ambulante carico di pentole.",
		"Quando provo a muovermi in silenzio, il mondo tira fuori un rametto secco, un'asse sconnessa o un secchio, sempre giusto sotto il mio piede.",
	},
	["muse.w12.humor.010"] = {
		"La chiave di una porta chiusa sta sempre dall'altra parte. Chi organizza queste cose ha un senso dell'umorismo piccolo piccolo, e cattivo.",
		"Porta chiusa, chiave al di là. Ammirerei l'eleganza del trucco, se a restare in corridoio non fossi io.",
		"Ho smesso di provare le porte nell'ordine sensato. La chiave giusta salta fuori nell'ultimo posto, dalla parte sbagliata, puntualmente.",
	},
	["muse.w12.humor.011"] = {
		"Nello zaino mi tintinnano chiavi che non aprono niente di quel che ho trovato finora. Le tengo lo stesso: il giorno che le butto, salta fuori la porta giusta.",
		"C'è una serratura, chissà dove, che aspetta una delle chiavi spaiate che mi porto dietro. Può continuare ad aspettare: io non butto niente.",
	},
	["muse.w12.humor.012"] = {
		"Regola dei posti antichi: mai tirare una leva solo per vedere cosa succede. Io la tiro sempre, solo per vedere cosa succede.",
		"Una leva su un muro fa una domanda sola, e io non ho mai avuto abbastanza carattere da lasciarla senza risposta.",
	},
	["muse.w12.humor.013"] = {
		"Le porte di questo mondo non dicono mai se si aprono verso dentro o verso fuori. Con ognuna ci ho rimesso un pezzetto di dignità.",
		"Spingi, tira, solleva, dai una spallata: la porta accetta una sola risposta, e non dà suggerimenti.",
	},
	["muse.w12.humor.014"] = {
		"Un cancello che cigola solo quando cerco di non far rumore non è un cancello. È una spia.",
		"I cardini tacciono tutto il giorno e tengono lo strillo per il momento in cui ho bisogno che stiano zitti.",
	},
	["muse.w12.humor.015"] = {
		"Un cartello con scritto 'vietato entrare' è l'invito più efficace che sia mai stato dipinto.",
		"Nessuno è mai rimasto fuori da un posto perché glielo diceva un'asse. L'asse serve soprattutto a indicare dove stanno le cose interessanti.",
		"Scrivi 'pericolo' su una porta, e tanto vale aggiungere le indicazioni per arrivarci.",
	},
	["muse.w12.humor.016"] = {
		"Chi comanda in un posto pericoloso abita sempre in fondo, in fondo. Mai una volta che il padrone di una tana tenga le stanze accanto all'ingresso.",
		"Il capo sta sempre all'estremità opposta, dopo ogni guardia, ogni trappola e ogni scala. Nessun malvagio vuole stare vicino all'ingresso, dove tira la corrente.",
		"Mai sentito di un signore oscuro che tenesse la sala del trono vicino alla porta. Vogliono tutti la camminata lunga, le scale, il dramma.",
	},
	["muse.w12.humor.017"] = {
		"Tombe antiche, sigillate da secoli, e le torce alle pareti ancora accese. Qualcuno passa a cambiarle, e non ha mai lasciato nemmeno un biglietto.",
		"In cripte del genere non entra nessuno da mille anni, eppure le torce bruciano tutte. Mi piacerebbe conoscere il custode.",
	},
	["muse.w12.humor.018"] = {
		"Ogni antico male di cui ho sentito parlare era stato rinchiuso da qualcuno che non aveva controllato la serratura due volte.",
		"Gli eroi di un tempo erano bravissimi a sigillare gli orrori e pessimi a scriverci sopra 'non aprire' in una lingua che durasse.",
	},
	["muse.w12.humor.019"] = {
		"Perché le sette si riuniscono sempre sottoterra? Per una volta vorrei trovarne una che complotta la fine del mondo in una bella stanza con la finestra.",
		"Le sette oscure non hanno fantasia quando si tratta di alloggi. Cantine, grotte, cripte. Mai una soffitta luminosa con vista.",
	},
	["muse.w12.humor.020"] = {
		"Gli adepti delle sette portano tutti la stessa tunica. C'è un sarto, chissà dove, che cuce per la fine del mondo e non chiede mai a cosa serva l'ordinazione.",
		"Stesso taglio, stesso colore, stesso cappuccio profondo. Sulla moda, almeno, tutte le sette dell'apocalisse vanno d'accordo.",
	},
	["muse.w12.humor.021"] = {
		"I cattivi adorano spiegare tutto il piano prima che succeda qualcosa. Interromperli sarebbe maleducato, immagino, ma la tirano lunga.",
		"Dai ai malvagi un pubblico che non può andarsene e parleranno per un'ora. Nessuno ha mai insegnato loro il dono della sintesi.",
	},
	["muse.w12.humor.022"] = {
		"Dietro ogni trappola di un'antica rovina c'è stato un costruttore, molto fiero dell'idea, che però non ci è mai dovuto passare in mezzo.",
		"Punte nel pavimento, dardi nei muri: qualcuno ci ha messo un vero orgoglio. Gli farei i complimenti, se non fosse polvere da un pezzo.",
	},
	["muse.w12.humor.023"] = {
		"Una fortezza antica è fatta per lo più di corridoi. Qualcuno, morto da secoli, amava i corridoi sopra ogni cosa e non costruiva altro.",
		"Chi progetta i sotterranei ha una passione per i corridoi lunghi e un conto aperto con i cartelli.",
	},
	["muse.w12.humor.024"] = {
		"Ogni grotta ha l'odore di qualcosa che ci ha abitato e aveva idee molto precise sull'ordine, tutte contrarie.",
		"Nessuna grotta profuma di qualcosa di buono. Il naso entra per primo, e vorrebbe sempre tornare indietro.",
	},
	["muse.w12.humor.025"] = {
		"Non riesco a guardare in un pozzo senza aspettarmi che qualcosa ricambi lo sguardo. Finora solo la mia faccia, che è già abbastanza.",
		"I pozzi sono profondi, bui e silenziosi: per quel che ne so, è la descrizione di un guaio con un secchio in cima.",
	},
	["muse.w12.humor.026"] = {
		"I soli libri che varrebbe la pena leggere sono sempre scritti in una grafia che non decifro. Quelli che capisco parlano della corretta manutenzione dei cardini.",
		"Gli scritti antichi non dicono mai niente di utile, tipo 'l'uscita è a sinistra'. Sempre profezie, mai indicazioni.",
	},
	["muse.w12.humor.027"] = {
		"In questo mondo niente resta sgombro. Svuoti un accampamento, ti giri due volte, e sono tutti tornati come se niente fosse.",
		"Giurerei che le stesse creature tornano negli stessi posti, come i clienti fissi di una taverna. Qualcuno continua a riaprire il locale.",
		"Qualunque cosa scacci, è di ritorno prima che abbia finito di allacciarmi uno stivale. Le stesse, giurerei, con un atteggiamento rinnovato.",
	},
	["muse.w12.humor.028"] = {
		"Le cose mi inseguono fino a un certo punto e poi tornano indietro, come se fossero arrivate al confine del loro podere e il resto fosse affare di altri.",
		"Niente mi insegue a lungo. Passato un certo punto si fermano, mi guardano con disgusto e trotterellano a casa. Ci devono essere cippi di confine che io non vedo.",
		"Una cosa mi insegue ringhiando, poi si blocca di colpo, come se si fosse ricordata di aver lasciato qualcosa sul fuoco.",
	},
	["muse.w12.humor.029"] = {
		"Su cinque, uno solo ha addosso il pezzo che mi serve. Gli altri l'avranno lasciato a casa.",
		"Tanti lupi, e pellicce buone quasi nessuna. Gli altri le avranno avute in prestito.",
		"È sempre l'ultimo ad avere quello che cerco. I primi nove servivano solo a peggiorare la mia opinione del mondo.",
	},
	["muse.w12.humor.030"] = {
		"Qualunque cosa abbia un nome porta guai. Un lupo qualsiasi vuole solo essere lasciato in pace; un lupo con un nome ha una reputazione da difendere.",
		"Diffida di tutto ciò a cui qualcuno ha dato un nome. Glielo hanno dato per un motivo, e il motivo raramente era la tenerezza.",
	},
	["muse.w12.humor.031"] = {
		"Certe cose là fuori sono molto più grosse di quanto la loro specie avrebbe diritto di essere. Qualcuno le lascia crescere senza sorveglianza.",
		"Ogni tanto spunta un ragno grande come un carro, o un cinghiale grande come una capanna. La natura non ha il senso delle proporzioni, e nessuno che glielo faccia notare.",
	},
	["muse.w12.humor.032"] = {
		"I coboldi scavano dappertutto e sembrano sicurissimi di sé. Nessuno ha mai scoperto dove credano di andare.",
		"Dai a un coboldo una galleria e ne scaverà un'altra di lato. Ammiro l'impegno più della pianificazione.",
	},
	["muse.w12.humor.033"] = {
		"Una melma non ha faccia, né cervello, né progetti, eppure riesce ad avere un'aria compiaciuta.",
		"Non ho mai capito cosa voglia una melma. Sospetto che non lo sappia nemmeno lei, e che sia più felice così.",
	},
	["muse.w12.humor.034"] = {
		"Per certe cose là fuori sono un terrore, per altre uno spuntino. Il trucco è ricordarsi quali sono quali prima di presentarsi.",
		"Ci sono creature che scappano appena mi vedono e creature che si rallegrano. Mi piacerebbe un cartello di avviso su ognuna.",
	},
	["muse.w12.humor.035"] = {
		"Strano come il mondo mi mandi cose più dure proprio quando comincio a migliorare. Una coincidenza molto sospetta.",
		"Divento un po' più forte e i guai, chissà come, si fanno un po' più grossi per pareggiare. Vorrei conoscere chi tiene il passo a tutti e due.",
	},
	["muse.w12.humor.036"] = {
		"Le rane se ne stanno lì con l'aria di chi ha risolto la vita da un pezzo e non ha intenzione di dirlo a nessuno.",
		"Una rana su un sasso sembra più in pace di qualunque saggio di cui abbia sentito parlare. Certo, mangia mosche: forse il prezzo è quello.",
	},
	["muse.w12.humor.037"] = {
		"Gli scoiattoli sembrano sempre rimproverare qualcuno, e quando ci sono io nei paraggi, ce l'hanno con me. Vorrei almeno sapere l'accusa.",
		"Le bestiole mi chiacchierano addosso dai rami come se avessi calpestato qualcosa di loro. Probabilmente l'ho fatto.",
	},
	["muse.w12.humor.038"] = {
		"I conigli scappano appena mi vedono, come se avessero sentito qualcosa sul mio conto. Non ho mai fatto niente a un coniglio. Non che mi crederebbero.",
		"Davanti a me corre una certa reputazione, e a quanto pare l'hanno letta solo i conigli.",
	},
	["muse.w12.humor.039"] = {
		"Un gatto mi guarda come se gli dovessi una spiegazione, e io in qualche modo sento di dovergliela davvero.",
		"I gatti mi squadrano, mi trovano carente e tornano a lavarsi. Giudizio onesto.",
	},
	["muse.w12.humor.040"] = {
		"Tutte le mosche nel raggio di un miglio sembrano conoscere il mio nome, e vogliono parlarne proprio accanto al mio orecchio.",
		"Posso affrontare qualunque cosa ci sia là fuori, ma una mosca che mi ronza intorno alla testa mi porta sull'orlo della resa.",
	},
	["muse.w12.humor.041"] = {
		"I cani randagi mi seguono per miglia e poi se ne vanno senza una parola, come una scorta delusa.",
		"Tutti i randagi del mondo camminano volentieri con me, finché non sentono un odore più interessante. Conosco il mio posto.",
	},
	["muse.w12.humor.042"] = {
		"I corvi mi osservano come le vecchie zie a un matrimonio: non perdono niente e approvano ancora meno.",
		"C'è sempre un corvo su qualche palo, che tiene il conto dei miei errori. Gli serviranno parecchi pali.",
	},
	["muse.w12.humor.043"] = {
		"Entro in una tana di chissà cosa senza battere ciglio, e poi strillo per una falena. Il mio coraggio tiene orari strani.",
		"I grandi spaventi li affronto a viso fermo. Sono i piccoli, la cosa che zampetta accanto allo stivale, a strapparmi un verso.",
	},
	["muse.w12.humor.044"] = {
		"Metà delle mie commissioni consiste nel portare una lettera da una persona a un'altra che abita abbastanza vicino da gridargliela.",
		"C'è gente che preferisce mandare un forestiero con un biglietto in fondo alla via piuttosto che affacciarsi alla porta e chiamare.",
	},
	["muse.w12.humor.045"] = {
		"'Non aprirlo.' Ogni pacco sigillato arriva con queste parole, e ogni volta la curiosità pesa più del pacco.",
		"Dammi una scatola e dimmi di non guardarci dentro: mi hai appena dato due carichi da portare.",
	},
	["muse.w12.humor.046"] = {
		"Una lettera attraversa il mondo intero in un'ora. Io ci metto una settimana e quando arrivo ho fango fino alle ginocchia. Mi batte in velocità un pezzo di carta.",
		"La posta viaggia più veloce di me e non si ferma mai a riposare. Forse dovrei piegarmi in quattro e imbucarmi.",
		"Le mie lettere arrivano a destinazione prima che io abbia raggiunto il paese successivo. L'inchiostro, a quanto pare, ha gambe migliori delle mie.",
	},
	["muse.w12.humor.047"] = {
		"La pietruzza che mi riporta a una locanda non mi chiede mai se ne preferirei un'altra. Ha la sua preferita, e basta.",
		"Basta un tocco su una pietra liscia e mi ritrovo davanti allo stesso focolare, allo stesso sgabello, al solito cenno del locandiere. È magia, eppure sa di abitudine.",
	},
	["muse.w12.humor.048"] = {
		"Le navi salpano nell'istante in cui arrivo in vista del molo. È una specie di dono. Non l'ho chiesto io.",
		"In questo momento una nave si sta staccando da un pontile, e sul pontile qualcuno corre e grida, troppo tardi. Per una volta non sono io. Piccole grazie.",
	},
	["muse.w12.humor.049"] = {
		"L'acqua alta ha il suo modo di dirmi, fino all'ultima oncia, quanto pesa quello che ho addosso.",
		"Nessuno confessa di aver imparato a nuotare con tutta l'attrezzatura addosso. Imparano tutti, e tutti tacciono.",
	},
	["muse.w12.humor.050"] = {
		"Mi sorprendo a saltellare mentre cammino, senza motivo, come se così si arrivasse prima. Non è vero. E continuo.",
		"C'è una parte piccola e sciocca di me che salta sopra il nulla mentre cammino. Il resto di me fa finta di non conoscerla.",
	},
	["muse.w12.humor.051"] = {
		"Nel mio mestiere nessuno cammina mai. Si fa tutto di corsa, come se ogni commissione avesse preso fuoco.",
		"Ho dimenticato come si passeggia. Attraverso un paese da un capo all'altro di gran carriera, per imbucare una lettera.",
	},
	["muse.w12.humor.052"] = {
		"Le facce sui manifesti dei ricercati potrebbero essere di chiunque. Strizzi gli occhi e, in una brutta giornata, una è la mia.",
		"Leggo sempre i manifesti dei ricercati, per scrupolo. Non si sa mai cos'hai combinato finché qualcuno non lo disegna.",
	},
	["muse.w12.humor.053"] = {
		"La sola creatura che inseguo da un'ora cade sempre per mano di uno sconosciuto un attimo prima che io arrivi.",
		"In questo momento, chissà dove, un pugno di sconosciuti sta in piedi intorno a un pezzo di terra vuoto, tutti ad aspettare la stessa bestia rara, e ognuno fa finta di niente.",
		"Insegui abbastanza a lungo una bestia rara e la abbatte un passante che nemmeno la cercava. E il passante non ringrazia mai.",
	},
	["muse.w12.humor.054"] = {
		"Ho visto due avventurieri adulti attraversare un prato di corsa per lo stesso fiore. Non si sono guardati. Ci hanno rimesso la dignità tutti e due.",
		"La gara più feroce del mondo è quella fra due sconosciuti che hanno avvistato la stessa macchia d'erbe. Niente regole, niente parole, niente vergogna.",
	},
	["muse.w12.humor.055"] = {
		"Davanti alle porte di qualunque città ci sono due persone che cercano con grande impegno di stendersi a vicenda, con molta educazione, e un capannello che dà consigli.",
		"Un duello amichevole: due sconosciuti, un inchino, poi un sincero sforzo per mettersi al tappeto. Poi un altro inchino. Non lo capirò mai.",
	},
	["muse.w12.humor.056"] = {
		"La gente, in questo mondo, perde le cose più strane nei posti più pericolosi, e poi resta lì ferma ad aspettare aiuto.",
		"Come si fa a far cadere un anello in fondo a un lago pieno di denti? E perché è sempre l'anello della nonna?",
	},
	["muse.w12.humor.057"] = {
		"Aiuta qualcuno una volta e ti sentirai dire 'grazie'. Aiutalo due volte e sentirai 'già che ci sei...'",
		"La gratitudine scade presto. Al secondo favore si è già trasformata in un'altra commissione.",
	},
	["muse.w12.humor.058"] = {
		"Le cose più belle che trovo sono sempre fatte per qualcun altro. Forma sbagliata, uso sbagliato, e una bellezza che sa di presa in giro.",
		"Il tesoro ha una vena crudele: si presenta scintillante, perfetto, e pensato per mani di tutt'altro mestiere.",
	},
	["muse.w12.humor.059"] = {
		"Nello stivale ho un sassolino che ha viaggiato più di tanti eroi. Resta lì finché non impara l'umiltà.",
		"Il sassolino nel mio stivale ha visto più mondo di parecchi re. Lo scuoterei fuori, ma ormai sembra essersi guadagnato il posto.",
	},
	["muse.w12.humor.060"] = {
		"Ogni cassa del mondo tiene un chiodo sporgente, che aspetta con pazienza la mia mano.",
		"Un falegname, chissà quando, ha lasciato un chiodo fuori da una cassa, e da allora quel chiodo aspetta la mia manica.",
	},
	["muse.w12.humor.061"] = {
		"Una candela si accende subito quando non serve e fa i capricci quando serve. È quel genere di rapporto.",
		"L'esca prende fuoco benissimo davanti a chiunque guardi, e mai quando non c'è nessuno. Credo che si esibisca solo per il pubblico.",
	},
	["muse.w12.humor.062"] = {
		"La corda esiste in due misure: troppo corta, e aggrovigliata.",
		"Per quanta corda mi porti dietro, il vuoto da superare è sempre un braccio più largo. Corda e distanze si sono messe d'accordo.",
		"Non mi riesce mai di tagliare una corda della misura giusta. La corda sente quando la misuri, e per dispetto si accorcia.",
	},
	["muse.w12.humor.063"] = {
		"Ogni pozzanghera sembra bassa finché non ci sono dentro. Sono le bugiarde più convincenti che conosca.",
		"L'unica pozzanghera in cui metto il piede è sempre quella profonda. Il mondo me la tiene lì apposta.",
	},
	["muse.w12.humor.064"] = {
		"Un ramo scostato è un ramo che tornerà a cercarmi la faccia. Nessuno manca all'appuntamento.",
		"Basta sfiorare un'ortica una volta e quella lo racconta alle altre. Adesso mi conosce tutta la siepe.",
	},
	["muse.w12.humor.065"] = {
		"C'è chi ha il dono di trovare l'unico posto asciutto dove sedersi. Io ho il dono opposto, e lo esercito ogni giorno.",
		"Mi siedo dove capita, e la terra si rivela umida esattamente nella forma della mia sagoma.",
	},
	["muse.w12.humor.066"] = {
		"I guanti se ne vanno da soli, mai in coppia. Chissà dove quelli perduti hanno fondato un villaggio, e ci vivono tutti mancini.",
		"Non ho mai perso un paio di niente. Sempre e solo uno dei due, che è molto più dispettoso.",
	},
	["muse.w12.humor.067"] = {
		"Lavare qualcosa per strada serve solo a cambiare indirizzo allo sporco.",
		"Strofino, risciacquo, strizzo, e la macchia mi guarda riposata e rinfrescata.",
	},
	["muse.w12.humor.068"] = {
		"Un bel cappello fa sembrare saggio chiunque, da lontano. Da vicino, temo, sotto ci sono sempre io.",
		"Dicono che un bel cappello dia dignità. Te la presta, certo. Poi arriva il primo ramo basso e se la riprende.",
	},
	["muse.w12.humor.069"] = {
		"Ho intravisto la mia faccia in un'acqua ferma e ho salutato quel forestiero prima di capire chi fosse. Bell'educazione, almeno.",
		"Ogni riflesso che incrocio per strada mostra qualcuno che ne ha passate tante. Giusto. Però preferirei uno stagno più gentile.",
	},
	["muse.w12.humor.070"] = {
		"Se la fortuna fosse un paio di dadi, i miei li avrebbe truccati qualcuno che ce l'ha con me personalmente.",
		"I dadi non sono mai stati dalla mia parte. Credo che si parlino tra loro.",
	},
	["muse.w12.humor.071"] = {
		"Ballo come chi litiga con un'ape. Nessuno ha mai ripetuto l'invito.",
		"Appena c'è musica i piedi si offrono volontari prima che riesca a fermarli, e poi mi abbandonano a metà.",
	},
	["muse.w12.humor.072"] = {
		"Saluti con la mano uno sconosciuto, quello non risponde, e per il miglio successivo fai finta che fosse un modo di sgranchirti.",
		"Non c'è piccola umiliazione pari a un saluto che nessuno ricambia. Di solito trasformo il mio in una grattata di testa.",
	},
	["muse.w12.humor.073"] = {
		"Ho giurato che non toccherò mai più un fungo strano. Lo giuro più o meno una volta a settimana.",
		"I miei voti solenni durano fino alla prossima cosa luccicante. Finché durano, però, sono solennissimi.",
	},
	["muse.w12.humor.074"] = {
		"Per una posa eroica servono il mento alto, lo sguardo fermo e un mantello che svolazza alle spalle. A me riesce il mento.",
		"Nei dipinti gli eroi stanno ritti su una roccia con i capelli all'aria. Quando ci salgo io, la roccia traballa.",
	},
	["muse.w12.humor.075"] = {
		"La scheggia è fuori. Si racconti in ogni sala di come, dopo lunga e aspra lotta, abbia ceduto.",
		"Vittoria. La scheggia è stata cacciata dal mio pollice, e la pace torna nel regno.",
	},
	["muse.w12.humor.076"] = {
		"C'è un fantoccio di paglia che ha preso più colpi di qualunque soldato vivente e non si è mai lamentato. Se qualcuno merita una medaglia, è quel sacco.",
		"Ho un profondo rispetto per i fantocci da allenamento. Stanno lì, incassano, non chiedono niente. Hanno più carattere di tanta gente.",
		"Il fantoccio da allenamento non trasale, non reagisce, non tiene il broncio. Ci sono re con meno contegno.",
	},
	["muse.w12.humor.077"] = {
		"Impari un trucco nuovo e per un po' ogni cosa sembra l'occasione buona per usarlo. Dev'essere stancante da guardare.",
		"Non c'è nessuno di più insopportabile di me nella settimana dopo che ho imparato qualcosa. Per fortuna il mondo è abbastanza grande da girarmi alla larga.",
	},
	["muse.w12.humor.078"] = {
		"Qualunque cosa costruita da uno gnomo ha due posizioni, e una delle due è il fumo.",
		"Gli aggeggi degli gnomi sono meraviglie. Solo che non sempre sono d'accordo su che tipo di meraviglia.",
	},
	["muse.w12.humor.079"] = {
		"Chi costruisce quei grandi montacarichi a fune ha più fiducia nella corda di quanta ne abbia io in qualunque cosa.",
		"Quando la cesta oscilla sul vuoto appesa al suo unico cavo, scopro di avere sui nodi opinioni che non sapevo di avere.",
	},
	["muse.w12.humor.080"] = {
		"Campione, mi chiamano. E io mi guardo ancora alle spalle per cercare quello vero.",
		"'Eroe.' Molto gentili. Se ne incontro uno, glielo riferisco.",
	},
	["muse.w12.humor.081"] = {
		"Con l'autorità conferitami da nessuno, dichiaro aperta la pausa.",
		"Ascoltami, mondo: proclamo una breve sosta. Le obiezioni si presentano dopo, per iscritto.",
	},
	["muse.w12.humor.082"] = {
		"Non fateci caso. Io e il mio piede sinistro stiamo chiarendo una divergenza di vedute.",
		"Nessun problema. Il piede sinistro ha fatto di testa sua, e adesso gli faccio un discorsetto.",
	},
	["muse.w12.humor.083"] = {
		"Sia chiaro: io la prudenza ce l'ho messa. È il mondo che non ha collaborato.",
		"Ho fatto tutto come si deve. Il mondo aveva altri programmi, e più rumorosi.",
	},
	["muse.w12.humor.084"] = {
		"Ogni volta che dico 'che ci vuole', il mondo la prende per una domanda vera.",
		"Avviso al mondo: 'che ci vuole' non era un invito.",
	},
	["muse.w12.humor.085"] = {
		"Certi giorni sono {g:l'eroe|l'eroina} della storia. Quasi sempre sono la comparsa che la storia supera senza voltarsi.",
		"Ogni storia ha bisogno di qualcuno sullo sfondo con un secchio in mano. Col secchio me la cavo benissimo.",
	},
	["muse.w12.humor.086"] = {
		"Sono una persona dignitosissima. È il mondo che continua a farmi lo sgambetto.",
		"La dignità ce l'ho, eccome. Solo che non è mai dove l'ho lasciata.",
	},
	["muse.w12.humor.087"] = {
		"Coraggio? Direi piuttosto informazioni scarse e gambe veloci.",
		"Dicono che ho fegato. Lo dice soprattutto chi non c'era.",
	},
	["muse.w12.humor.088"] = {
		"Ho un ottimo piano. Primo punto: non cascarci dentro.",
		"Il piano è semplice: stare fuori dall'acqua, dal fuoco e dai guai. Finora uno su tre.",
	},
	["muse.w12.humor.089"] = {
		"Fango. Dappertutto. Come fa il fango a finire dentro una tasca chiusa?",
		"Ho trovato fango in posti di cui il fango non dovrebbe nemmeno conoscere l'esistenza.",
	},
	["muse.w12.humor.090"] = {
		"Fra un attimo avrò coraggio. Sto solo aspettando che arrivi l'attimo.",
		"Il coraggio sta arrivando. Ha preso la strada panoramica.",
	},
	["muse.w12.humor.091"] = {
		"Ho smesso di cercare di fare colpo. Adesso punto a restare dritto sulle gambe.",
		"Fare colpo è roba per altri. Io sono specialista dello stare in piedi.",
	},
	["muse.w12.hunger.001"] = {
		"Il dolore si porta via prima di tutto la fame. Qualche giorno dopo te la rende senza dire niente, e mangiare sembra quasi un tradimento.",
		"Quando si perde qualcosa, il cibo per un po' non sa di niente. Mangio lo stesso: il corpo la notizia non l'ha ancora ricevuta.",
		"Il dispiacere e la fame non stanno nella stessa stanza. Uno dei due deve uscire, e non è mai il dispiacere il primo.",
	},
	["muse.w12.hunger.002"] = {
		"Una buona notizia è il miglior condimento che esista. La stessa crosta, in una giornata fortunata, ha un altro sapore.",
		"Strano come la contentezza arrivi fino alla lingua. Quando le cose girano, anche una galletta secca sembra fatta con amore.",
		"Una bella giornata condisce tutto quello che c'è nel piatto. Nessun vasetto di spezie c'è mai riuscito.",
	},
	["muse.w12.hunger.003"] = {
		"Non c'è crudeltà più raffinata delle cipolle di un altro che soffriggono quando la mia pentola è vuota.",
		"Il tormento peggiore che conosco non è una ferita: è il profumo della cena di qualcun altro che passa davanti a uno stomaco vuoto.",
	},
	["muse.w12.hunger.005"] = {
		"C'è chi toglie la crosta al formaggio. Io non ho mai avuto abbastanza soldi per farlo.",
		"Se la crosta del formaggio sia cibo dipende da quanto sei lontano dal mercato. In viaggio, è cibo e basta.",
	},
	["muse.w12.hunger.006"] = {
		"Quello che resta attaccato in fondo alla pentola, un po' bruciacchiato, è la parte migliore. Ogni cuoco lo sa, e se lo tiene.",
		"Dove lo stufato si attacca alla pentola si forma una crosticina. Chi ha il diritto di grattarla via ha vinto qualcosa.",
		"Il bruciacchiato sul fondo è l'errore del cuoco e il tesoro dell'ospite. Per quella pentola litigherei, se qualcuno me la contendesse.",
	},
	["muse.w12.hunger.007"] = {
		"Metti un piatto in mezzo a degli sconosciuti e l'ultimo pezzo resterà lì in eterno. La buona educazione è una forza potente, quasi quanto la fame.",
		"Nessuno prende mai l'ultimo boccone di un piatto in comune. Resta lì, sorvegliato dalle buone maniere di tutti.",
	},
	["muse.w12.hunger.008"] = {
		"Ogni mela che metto nello zaino arriva ammaccata dallo stesso lato, quello schiacciato contro tutto il resto. So come ci si sente.",
		"La frutta non è fatta per viaggiare. Arriva in fondo alla borsa con l'aria di chi le ha prese. La capisco.",
	},
	["muse.w12.hunger.009"] = {
		"Un cuoco affamato e un fuoco lento sono nemici giurati. Vince sempre il fuoco.",
		"Niente cuoce più piano della cena quando muoio di fame. Giurerei che le fiamme lo fanno apposta.",
		"Sopra la pentola veglia la fame, e il fuoco se la prende comoda. Quei due non si sono mai messi d'accordo sui tempi.",
	},
	["muse.w12.hunger.010"] = {
		"Il tè non si lascia mettere fretta. Versalo troppo presto e sa d'acqua; lascialo troppo e sa di rimpianto. In mezzo c'è quasi tutto quello che so della pazienza.",
		"Lasciare il tè in infusione è una piccola lezione d'attesa. Troppo presto, niente; troppo tardi, amaro. La tazza buona sta nello spazio stretto fra le due cose.",
	},
	["muse.w12.hunger.011"] = {
		"Ne tengo sempre un po' da parte per dopo. Il dopo arriva sempre una decina di minuti più tardi.",
		"Gli avanzi sono un'idea bellissima che non è mai arrivata intera al pasto successivo.",
	},
	["muse.w12.hunger.012"] = {
		"La fame brontola. La sete comanda. Ho imparato a chi dare retta per prima.",
		"Con la fame si può trattare per giorni. La sete non tratta: si prende tutti i pensieri.",
		"Senza cibo la mente vaga. Senza acqua le resta un solo argomento.",
	},
	["muse.w12.hunger.013"] = {
		"La carne salata si conserva in eterno e mi fa bere come una spugna. Così mi porto dietro più acqua, che pesa più della carne. Non vince nessuno.",
		"Secca, salata, fatta per durare: la carne da viaggio sarebbe perfetta, se ogni morso non costasse un sorso d'acqua.",
	},
	["muse.w12.hunger.014"] = {
		"Mangia quello che hai davanti e ringrazia chi ce l'ha messo. Le buone maniere, dappertutto, sono quasi tutte lì.",
		"Vuota la scodella. Qualunque altra cosa dicano di te, diranno che eri un buon ospite.",
	},
	["muse.w12.hunger.015"] = {
		"Quando ho troppo da fare mi dimentico del tutto di mangiare. Poi le mani cominciano a tremare e il promemoria arriva tutto in una volta.",
		"La fame per un po' è paziente. Poi smette di bussarmi sulla spalla e comincia a prendere a calci la porta.",
		"Posso passare mezza giornata senza pensare al cibo, e poi per un'ora non pensare ad altro.",
	},
	["muse.w12.hunger.016"] = {
		"Niente mi mette fame come averla scampata per un pelo. Appena passa il pericolo, lo stomaco torna e pretende spiegazioni.",
		"La paura chiude la cucina. Il sollievo spalanca le porte e pretende un banchetto.",
	},
	["muse.w12.hunger.017"] = {
		"Il pane chiede più tempo che bravura. Farina, acqua, un angolo tiepido e pazienza, e lievita che qualcuno lo guardi o no.",
		"L'impasto ha qualcosa che rimette in pace. Fa il suo lavoro piano, senza storie, e nessuno può costringerlo a diventare pane prima del tempo.",
		"Le pagnotte migliori sono fatte soprattutto di attesa. Le mani fanno un poco; il resto lo fa il tempo, senza prendersene il merito.",
	},
	["muse.w12.hunger.018"] = {
		"Il pane raffermo non è finito. Mettilo nel brodo e ha una seconda vita, più morbida e migliore della prima.",
		"Nessun pane è troppo duro per la zuppa. La pentola perdona quello che la dispensa ha dimenticato.",
		"Pane vecchio, brodo caldo, un po' di pazienza: la resurrezione più economica del mondo.",
	},
	["muse.w12.hunger.019"] = {
		"Il miele è una cosa meravigliosa per circa un minuto. Dopo ce l'ho sulle dita, sulla manica, sulla cinghia e, non so come, dentro uno stivale.",
		"Mangia del miele per strada e te lo porterai dietro per giorni, su tutto quello che tocchi.",
	},
	["muse.w12.hunger.020"] = {
		"Certe spezie non sono un sapore, sono una sfida. Le accetto tutte, e ne perdo quasi tutte.",
		"Esiste un peperoncino che andrebbe venduto con un avvertimento. Lo comprerei lo stesso: il guaio è tutto lì.",
	},
	["muse.w12.hunger.021"] = {
		"Tutti hanno un piatto che non perdoneranno mai. Il mio non lo nomino nemmeno: potrebbe sentirmi.",
		"Mangio quasi tutto. Quasi. C'è un piatto a questo mondo per cui preferirei restare a digiuno, e lui lo sa benissimo.",
	},
	["muse.w12.hunger.022"] = {
		"Il gusto per l'amaro si acquisisce, dicono. Secondo me la lingua semplicemente si stanca di protestare.",
		"Ci sono sapori che si impara ad amare solo dopo abbastanza giornate dure. L'amaro è uno. Il tè forte è un altro.",
	},
	["muse.w12.hunger.023"] = {
		"Chi fa lo schizzinoso in viaggio dura poco. La fame insegna la tolleranza più in fretta di qualsiasi maestro.",
		"Lo schizzinoso e l'affamato non restano a lungo due persone diverse. Uno diventa l'altro.",
		"Contro la schizzinosità, la fame funziona meglio di qualsiasi sgridata.",
	},
	["muse.w12.hunger.024"] = {
		"Quando rispondo male a qualcuno, la prima domanda dovrebbe essere quando ho mangiato l'ultima volta. La seconda può aspettare.",
		"Metà dei miei malumori è solo fame con un mantello preso in prestito. Dalle da mangiare, e il malumore si toglie il mantello e se ne va.",
	},
	["muse.w12.hunger.025"] = {
		"Mangiare subito la cosa migliore, nel caso vada storto qualcosa? O tenerla da parte, per avere qualcosa da aspettare? Ho sostenuto entrambe le tesi con me {g:stesso|stessa} e ho perso due volte.",
		"Il boccone migliore prima o dopo: la lite più vecchia che ho con me {g:stesso|stessa}. Di solito trovo un compromesso e lo mangio a metà.",
	},
	["muse.w12.hunger.027"] = {
		"Il cibo è l'unica cosa nello zaino che si alleggerisce usandola. Ogni pasto, per me, è un favore fatto alle spalle.",
		"Ogni boccone che mando giù è un peso in meno da portare. Io lo chiamo alleggerire il bagaglio, e nessuno può dimostrare il contrario.",
	},
	["muse.w12.hunger.028"] = {
		"Mai mangiare un fungo di cui non sai il nome. Quelli che ammazzano sono spesso i più belli, e non chiedono scusa.",
		"Un fungo che non riconosco resta dov'è nato. La fame può aspettare; il rimpianto non si può risputare.",
		"Cappelle graziose, colori vivaci, un buon odore di terra: i funghi più velenosi si vestono a festa.",
	},
	["muse.w12.hunger.029"] = {
		"Certi cuochi guardano una faccia stanca in un certo modo, e poi nella scodella finisce un mestolo in più, senza una parola. La gentilezza nella sua forma più pratica.",
		"Un secondo mestolo versato senza che tu lo chieda: la carità più silenziosa che esista, e la più gradita.",
		"Chi cucina per i viaggiatori legge la fame a colpo d'occhio, e i migliori rispondono col mestolo.",
	},
	["muse.w12.hunger.030"] = {
		"I tavoli delle locande sono levigati da mille gomiti. Sedersi a uno vuol dire entrare in una conversazione lunghissima.",
		"Ogni vecchio tavolo da taverna è stato lucidato dalle braccia di gente che non c'è più. Ci appoggio le mie e per un attimo mi sento in buona compagnia.",
	},
	["muse.w12.hunger.031"] = {
		"Mentre mastico gallette, progetto banchetti. Arrosto con la cotenna croccante, pane appena sfornato, una torta col coperchio. Progettare non costa niente, e quasi aiuta.",
		"Per i periodi di magra tengo un banchetto intero in testa: qualcosa di arrosto, qualcosa di dolce, una pagnotta che fuma. Apparecchiare quella tavola non costa nulla.",
		"Le cene immaginate sono le uniche che non si bruciano mai. Le cucino in testa, portata dopo portata, mentre il pasto vero scricchiola sotto i denti.",
	},
	["muse.w12.hunger.032"] = {
		"Ho sentito di banchetti in cui metà del cibo torna in cucina intatto. Da qualche altra parte, lo stesso giorno, qualcuno sta bollendo uno stivale.",
		"Una tavola reale può buttare via in un solo pasto più di quanto un villaggio mangi in una settimana. E a quella tavola nessuno sembra trovarlo strano.",
	},
	["muse.w12.hunger.033"] = {
		"Un pasto abbondante e una lunga camminata non vanno d'accordo. Continuo a presentarli, e non diventano mai amici.",
		"Mangi come un re, cammini come un mulo. Ogni banchetto manda il conto alle gambe.",
	},
	["muse.w12.hunger.034"] = {
		"Una giornata senza mangiare per qualche ora ti lascia la testa limpida, leggera, affilata. Poi non più, e ogni pensiero va a finire nello stesso posto.",
		"Resta a digiuno abbastanza a lungo e la mente si fa semplicissima. Qualunque pensiero, comunque cominci, va a finire sul pane.",
		"Il digiuno rende la testa limpida, poi leggera, poi testarda su un solo argomento.",
	},
	["muse.w12.hunger.035"] = {
		"Quando ho fame sento l'odore del pane attraverso due muri e una porta chiusa. È l'unico momento in cui il naso mi serve davvero.",
		"Uno stomaco vuoto trasforma il naso in un esploratore. Scova ogni cucina nel giro di un miglio e fa rapporto, senza alcuna utilità.",
	},
	["muse.w12.hunger.036"] = {
		"Lo sfrigolio di qualcosa in padella è uno dei rumori più amichevoli del mondo. Vuol dire che qualcuno sta per mangiare.",
		"Il grasso che scoppietta in una padella rovente: non conosco musica che prometta di più.",
	},
	["muse.w12.hunger.037"] = {
		"Cucinare sulla fiamma viva è una lezione d'umiltà: nero fuori, crudo dentro, e nessuno da incolpare se non me {g:stesso|stessa}.",
		"Troppo fuoco e la carne sembra cotta molto prima di esserlo. Funzionano così parecchie cose.",
		"Fiamma bassa, lunga attesa, buona cena. Fiamma alta, attesa breve, carbone. Lo so benissimo, e ci casco lo stesso ogni volta.",
	},
	["muse.w12.hunger.038"] = {
		"Mescolare una pentola è quanto di più vicino conosca allo stare fermi con i propri pensieri. Gira e rigira, e si depositano come lo stufato.",
		"C'è pace nel mescolare. Il cucchiaio gira, la testa si quieta, e la cena si fa comunque.",
		"Un cucchiaio che gira in una pentola è quanto di più vicino all'immobilità possano concedersi due mani indaffarate.",
	},
	["muse.w12.hunger.039"] = {
		"Il 'pizzico' di ogni cuoco ha una misura diversa. Ne ho visto uno che si è rivelato mezza manciata.",
		"Le ricette dicono 'un po'', 'quanto basta', 'a piacere'. La cucina è l'unico mestiere che si fida così tanto di chiunque.",
	},
	["muse.w12.hunger.041"] = {
		"Il cibo ben avvolto è cibo rispettato. Un panno pulito, una piega stretta, e il pane arriva come pane e non come briciole.",
		"Incartare un pasto per il viaggio è un'arte, e la ricompensa arriva dopo: intera, e ancora tua.",
	},
	["muse.w12.hunger.042"] = {
		"Il formaggio stagionato è amico del viaggiatore. Quello fresco è un ospite che resta un giorno e poi comincia a puzzare.",
		"Il formaggio si sceglie per il viaggio, non per la tavola. I più pregiati non sopravvivono mai alla camminata.",
	},
	["muse.w12.hunger.043"] = {
		"La carne secca più che un pasto è una lunga trattativa con la mascella. Alla fine siamo a pezzi, io e lei.",
		"Certe strisce di carne essiccata si masticano più a lungo di quanto ci voglia per andare da una locanda all'altra.",
	},
	["muse.w12.hunger.044"] = {
		"Tutti i popoli di cui ho sentito parlare hanno lo stesso rimedio per i malati: qualcosa di caldo in una scodella. Non può essere un caso.",
		"Il brodo è la prima medicina che si impara. I guaritori hanno le loro arti; il resto del mondo ha la minestra.",
		"Prima dei guaritori, prima delle pozioni, qualcuno sedeva accanto a un malato con una scodella di brodo. E c'è chi lo fa tuttora.",
	},
	["muse.w12.hunger.045"] = {
		"Qualcosa di dolce nascosto per dopo la parte difficile. Una piccola mancia a me {g:stesso|stessa}, e funziona sempre.",
		"Tengo nella borsa una cosa dolce per la fine di un brutto tratto. Sapere che c'è mi porta più lontano di quanto dovrebbe.",
	},
	["muse.w12.hunger.046"] = {
		"C'è sempre qualcuno con più fame di me. Quando posso, faccio in modo che mangi anche lui. Costa una crosta; vale molto di più.",
		"Una faccia affamata davanti a una porta non chiede niente ad alta voce. Ho imparato a rispondere lo stesso.",
		"Del pane in più nella borsa e una mano vuota tesa davanti a me: quel conto torna sempre allo stesso modo.",
	},
	["muse.w12.hunger.047"] = {
		"L'oro è la seconda ricchezza. La prima è un'acqua di cui ti puoi fidare, abbastanza vicina da raggiungerla.",
		"I regni si contano in monete, ma ognuno è nato accanto a una sorgente.",
	},
	["muse.w12.hunger.048"] = {
		"Il primo sorso d'acqua dopo una sete vera vale qualsiasi vino versato in qualsiasi salone. Il salone lo darei via per quello.",
		"Per una bocca riarsa non esiste bevanda più ricca dell'acqua. I re avrebbero qualcosa da imparare dagli assetati.",
		"L'acqua dopo una vera sete ha un sapore che nessun birraio è mai riuscito a mettere in una botte.",
	},
	["muse.w12.hunger.049"] = {
		"Quando l'acqua scarseggia bevo come un avaro conta le monete: un sorsetto, poi una lunga attesa, poi un'altra discussione con me {g:stesso|stessa}.",
		"Con poca acqua, ogni sorso diventa una decisione. Sfinisce, decidere così tante volte.",
	},
	["muse.w12.hunger.050"] = {
		"Acqua fangosa filtrata in un panno pulito, poi sul fuoco. Sa ancora di stagno, ma non me ne farà pentire.",
		"Prima falla bollire. Quello che vive nell'acqua ferma è più simpatico da morto.",
	},
	["muse.w12.hunger.051"] = {
		"Le promesse fatte davanti a una birra sono scritte nella schiuma. Il giorno dopo resta solo un cerchio sul tavolo.",
		"Mai accettare niente dopo il secondo boccale. Lo penserai sul serio, e più o meno per un'ora.",
		"La birra è un ottimo consigliere e un pessimo testimone. Ti incoraggia e poi non si ricorda niente.",
	},
	["muse.w12.hunger.052"] = {
		"Metà del conforto del tè sta nel tenere la tazza. L'altra metà è la scusa per restare {g:seduto|seduta} finché dura.",
		"Una tazza calda fra le mani non mi chiede niente finché non è vuota. È quello il vero regalo.",
	},
	["muse.w12.hunger.053"] = {
		"Ogni popolo di questo mondo cuoce un suo pane: piatto, tondo, scuro, dolce. È la cosa più vicina a una lingua che parlano tutti.",
		"Orchi, nani, umani, troll: tutti impastano qualcosa e lo mettono vicino al fuoco. Il pane non l'ha inventato nessun popolo da solo.",
	},
	["muse.w12.hunger.054"] = {
		"Dopo un periodo difficile, una scodella di semplice pappa d'avena sa di premio pensato apposta. Dentro non c'è altro che avena e sollievo.",
		"La cena più semplice dopo qualche giorno brutto sa di gentilezza. Il cibo non è cambiato. Sono {g:cambiato|cambiata} io.",
		"Le difficoltà non migliorano la cucina. Migliorano chi mangia, per un pasto o due.",
	},
	["muse.w12.hunger.055"] = {
		"Nessuno canta le lodi di chi lava i piatti. Sabbia, uno straccio, e una pentola che si tiene stretta la cena di ieri come un rancore.",
		"La cucina si prende gli applausi. Sfregare la pentola dopo tocca a chi ha perso la discussione, in silenzio.",
	},
	["muse.w12.hunger.056"] = {
		"Prima o poi ogni cosa da mangiare nello zaino deve superare la prova del naso. Quasi tutte passano. Quelle bocciate le piango a lungo, con tristezza.",
		"È ancora buono? Il naso dice forse, lo stomaco dice sì, e il buon senso tace, perché nessuno lo ha interpellato.",
	},
	["muse.w12.hunger.057"] = {
		"Un po' di verde sulla crosta è un consiglio, non una sentenza. Lo tagli via e vai avanti.",
		"Il pane che ammuffisce in un angolo ha ancora il cuore buono. Taglio via l'angolo e tengo il cuore.",
	},
	["muse.w12.hunger.058"] = {
		"Fra tutte le cose che potrei desiderare, continuo a tornare a un uovo fresco. Fritto, coi bordi croccanti. Una voglia così piccola e precisa.",
		"Certe voglie non hanno senso e non ne hanno bisogno. La mia, adesso, è un uovo cotto nel burro.",
	},
	["muse.w12.hunger.059"] = {
		"Il burro è un cibo per chi sta fermo. In viaggio irrancidisce o si squaglia, così per lo più lo ricordo con affetto.",
		"Latte fresco e burro vero: due lussi che non viaggiano mai, ed è per questo che sanno di chi resta dove sta.",
	},
	["muse.w12.hunger.060"] = {
		"Un pizzico di una spezia cresciuta dall'altra parte del mondo, e uno stufato qualunque sa di voci che arrivano da lontano.",
		"Le spezie sono distanze che si possono mangiare: qualcuno ha portato quel sapore oltre mari e deserti solo per arrivare a una pentola.",
	},
	["muse.w12.hunger.061"] = {
		"Certi giorni cucinare sembra un compito di troppo, e la cena è una carota cruda. La carota non si lamenta. Io, poco.",
		"Troppa stanchezza per accendere un fuoco, così la cena è qualunque cosa non ne abbia bisogno. Nessuno ci comporrà mai sopra una canzone.",
	},
	["muse.w12.hunger.063"] = {
		"Lo stufato è più buono il giorno dopo. Certe cose devono stare un po' con se stesse prima di valere qualcosa. Dicono che valga anche per le persone.",
		"Lo stufato riscaldato batte sempre quello appena fatto. Il tempo fa a una pentola quello che la fretta non saprebbe mai fare.",
	},
	["muse.w12.hunger.064"] = {
		"Cucinare per uno è più difficile che cucinare per dieci. La pentola continua a dimenticare che ci sono solo io.",
		"Per quanto poco ci metta dentro, la pentola ne fa abbastanza per due. Forse ci spera.",
		"Quando cucino per me faccio sempre una seconda porzione per sbaglio. La pentola ha progetti più grandi dei miei.",
	},
	["muse.w12.hunger.065"] = {
		"Nessuno impara a cucinare senza bruciare qualcosa. Le pentole rovinate sono le lezioni; i pasti riusciti sono solo la prova.",
		"Una cena bruciata insegna più di una riuscita. Soprattutto la pazienza, un po' anche il fuoco.",
	},
	["muse.w12.hunger.066"] = {
		"Dovunque mi sieda vicino a un fuoco da campo, il fumo mi trova. Mi sposto a sinistra, si sposta a sinistra. Ci sarà pure un fuoco che preferisce qualcun altro.",
		"Il fumo segue chi cucina come i pettegolezzi seguono un matrimonio. Non si scappa: si strizzano gli occhi e basta.",
	},
	["muse.w12.hunger.067"] = {
		"Ogni casa degna di questo nome è costruita intorno alla cucina. Il resto sono solo stanze dove dormire tra un pasto e l'altro.",
		"Muri e tetto sono la scusa. Il focolare con la pentola sopra è il vero motivo per cui qualcuno si costruisce una casa.",
		"Le sale hanno i troni e le torri le campane, ma ogni casa che abbia mai contato qualcosa aveva una pentola appesa sopra il fuoco.",
	},
	["muse.w12.hunger.068"] = {
		"Un re e un mendicante hanno fame esattamente allo stesso modo. È l'unico appuntamento a cui nessuno dei due può mancare, nemmeno pagando.",
		"La fame non guarda i titoli. Bussa alle porte dei palazzi e a quelle delle catapecchie con le stesse nocche.",
	},
	["muse.w12.hunger.069"] = {
		"Un banchetto è solo cibo finché la gente non ci si siede intorno a ridere. Allora diventa qualcosa che nessun cuoco potrebbe fare da solo.",
		"La parte migliore di un banchetto non sta nei piatti. Sta nel baccano.",
	},
	["muse.w12.hunger.070"] = {
		"Quando qualcuno è in lutto, la gente porta da mangiare. Non sa cosa dire, e allora lo dice col pane. Non è una brutta lingua.",
		"Accanto a un lutto recente nessuno trova le parole giuste. Una pentola di stufato lasciata sulla soglia le dice abbastanza bene.",
		"Chi piange un morto trova sempre qualcuno che gli dà da mangiare. Una pagnotta sulla soglia è il modo dei vicini per dire quello che non sanno dire.",
	},
	["muse.w12.hunger.071"] = {
		"In una pentola c'è sempre posto per un po' d'acqua in più. È così che una minestra per due ne sfama quattro, più leggera e più generosa.",
		"Una minestra lunga non è un errore del cuoco. È un cuoco che ha scelto più scodelle invece di una più ricca.",
	},
	["muse.w12.hunger.072"] = {
		"Mangia la stessa cosa abbastanza a lungo e comincerai ad avere un'opinione su ogni singolo boccone.",
		"La monotonia a tavola arriva piano. Prima non te ne accorgi, poi non ti accorgi d'altro.",
	},
	["muse.w12.hunger.073"] = {
		"Dopo giorni di cibo sempre uguale, un sapore nuovo arriva come una notizia da lontano. Una bacca aspra, un pizzico di qualcosa di verde: una festa intera.",
		"La varietà è sprecata per chi mangia bene tutti i giorni. Bisogna farne a meno per sentire davvero il sapore di un ravanello.",
		"Un boccone di qualcosa di nuovo dopo una settimana di sempre uguale: come una porta che si apre su un'altra stanza.",
	},
	["muse.w12.hunger.074"] = {
		"Qualunque cosa ordini in una locanda, il piatto del tavolo accanto sembra migliore. Se ordino quello che hanno preso loro, vince il tavolo dopo.",
		"La scodella degli altri profuma sempre più della mia. È una legge di natura, come cadere.",
	},
	["muse.w12.hunger.075"] = {
		"In ogni locanda nuova ordino la cosa più semplice che c'è. Se non sanno fare bene pane e brodo, niente di più elaborato li salverà.",
		"Il piatto semplice ti dice tutto di una cucina. Dietro una salsa sanno nascondersi tutti.",
	},
	["muse.w12.hunger.076"] = {
		"Il vapore che sale da una scodella è una promessa mantenuta. Mi piace guardarlo un attimo prima di romperlo col cucchiaio.",
		"Prima di mangiare qualcosa di caldo mi concedo una piccola pausa, solo per guardarlo fumare. Una cerimonia minima che nessun altro ha bisogno di conoscere.",
	},
	["muse.w12.hunger.086"] = {
		"Qualcuno mi dia da mangiare prima che cominci a fare filosofia.",
		"Ho fame. Quindi per la prossima ora tutto quello che dico va preso con le pinze.",
	},
	["muse.w12.hunger.087"] = {
		"Prima l'acqua. Poi si parla.",
		"Fammi bere qualcosa. Poi avrò delle opinioni.",
		"Un sorso d'acqua, e sono a tua disposizione. Prima, non ci sono per nessuno.",
	},
	["muse.w12.hunger.088"] = {
		"Prima il tè. Così forte che ci sta in piedi il cucchiaio. Il mondo aspetti il suo turno.",
		"Non si decide niente prima di una tazza di qualcosa di caldo.",
	},
	["muse.w12.hunger.089"] = {
		"Mangia finché è caldo. I guai si conservano, la cena no.",
		"Un pasto lasciato andare a male è un piccolo peccato. Mangialo finché vale ancora qualcosa.",
	},
	["muse.w12.hunger.090"] = {
		"Dividilo. Mezza pagnotta in compagnia vale più di una intera da soli.",
		"Il cibo diviso in due è più buono. Nessuno ha mai spiegato perché, e non serve.",
	},
	["muse.w12.hunger.091"] = {
		"Mangia qualcosa. Qualunque cosa sia, dopo sembrerà più piccola.",
		"I guai, visti da dietro un piatto pieno, sembrano di una taglia più piccoli.",
	},
	["muse.w12.hunger.092"] = {
		"La birra è per dopo. L'acqua è per adesso.",
		"La birra tienila per quando il lavoro è finito. Guadagnata ha un altro sapore.",
	},
	["muse.w12.hunger.093"] = {
		"Se non parlo, non sto tenendo il broncio. Sto pensando a una torta di carne.",
		"Non fateci caso. Sto solo immaginando un pasticcio di carne. Grande, col sugo.",
	},
	["muse.w12.hunger.094"] = {
		"Siediti e mangia. Qualunque cosa sia, può aspettare che la scodella sia vuota.",
		"Non c'è lite tanto urgente da non poter aspettare la fine della cena.",
	},
	["muse.w12.hunger.095"] = {
		"Mai discutere con chi tiene il mestolo. Vinci la discussione e perdi la cena.",
		"Il cuoco ha sempre ragione. Non perché abbia ragione, ma perché è il cuoco a riempire le scodelle.",
	},
	["muse.w12.rest.001"] = {
		"Mi stendo dopo una lunga marcia e le gambe tirano avanti da sole per un po', come se nessuno le avesse avvisate.",
		"Le mie gambe non credono che la marcia sia finita. Sto a terra da un pezzo e loro fanno ancora passi, chissà dove.",
		"Il corpo si ferma, le gambe no, non subito. Continuano a contare le miglia dietro le mie palpebre chiuse.",
	},
	["muse.w12.rest.002"] = {
		"Il sonno non viene mai quando lo chiamo. Poi piomba dentro a metà di qualcosa d'importante, con la stessa creanza di una capra.",
		"Mi sdraio e lo supplico, e il sonno se ne sta alla larga. Mi metto a leggere una pagina utile, e alla seconda riga mi ha già preso.",
	},
	["muse.w12.rest.003"] = {
		"L'ultimo pensiero prima di dormire non è mai quello importante. È sempre una fibbia, o una parola che ho pronunciato male tre giorni fa.",
		"Qualunque cosa mi proponga di pensare prima di addormentarmi, l'ultima che mi resta in testa è una sciocchezza: un filo allentato, un prezzo, un nome sbagliato.",
	},
	["muse.w12.rest.004"] = {
		"Ho sognato di camminare. Ore intere, solo camminare. Al risveglio mi sentivo addosso tutta la fatica, ed è un'ingiustizia doppia.",
		"Certi sogni sono soltanto altra strada. Passo il sonno intero a marciare e al risveglio devo delle scuse ai piedi.",
		"C'è una crudeltà tutta speciale nel sognare di arrancare. Tutta quella fatica, e nemmeno un miglio da mostrare.",
	},
	["muse.w12.rest.005"] = {
		"Nei sogni incontro gente che conosco benissimo e che non saprei nominare per nessuna ricompensa. Loro, invece, sembrano conoscermi più di quanto vorrei.",
		"I miei sogni sono pieni di estranei familiari: facce che giurerei di conoscere da sempre, e nemmeno un nome tra tutte.",
	},
	["muse.w12.rest.006"] = {
		"Mai decidere niente d'importante quando si è stanchi. Dormici sopra: la scelta sarà ancora lì, solo più piccola.",
		"Da stanchi ogni scelta sembra facilissima o impossibile. Basta una dormita in mezzo e quasi tutte tornano alla loro misura vera.",
		"Una testa sfinita giudica male, e con superbia. Il verdetto può aspettare una dormita: aspettando non perde nulla.",
	},
	["muse.w12.rest.007"] = {
		"Non sto oziando. Sto aspettando, con grande maestria e nessuno sforzo visibile.",
		"Questo non è far niente. Questo è aspettare, e guarda caso mi riesce benissimo.",
		"Non scambiatela per pigrizia. È pazienza, e sta lavorando sodo.",
	},
	["muse.w12.rest.008"] = {
		"Non fare niente apposta è più difficile di qualsiasi lavoro. Le mani cercano di continuo una cinghia da sistemare, e io continuo a dire loro di no.",
		"Datemi un momento vuoto e le mani vanno subito in cerca di lavoro. Insegnare loro a restare ferme è un mestiere a parte.",
		"Mani in ozio, si dice, combinano guai. Le mie trovano solo fibbie. Sto cercando di insegnare loro a non trovare niente.",
	},
	["muse.w12.rest.009"] = {
		"Se resto immobile per un po', il rumore del mondo si scosta, come una folla che gira l'angolo. Non se ne va: smette soltanto di rivolgersi a me.",
		"Basta un po' di silenzio e tutto ciò che si affanna sembra allontanarsi, come se il mondo fosse passato nella stanza accanto per lasciarmi in pace.",
	},
	["muse.w12.rest.012"] = {
		"Lo zaino è un cuscino scadente e geloso. Però, finché ci tengo sopra la testa, nessuno se lo porta via.",
		"Bitorzoluto, duro, con l'odore di cuoio vecchio: come cuscino lo zaino è pessimo. Ma è l'unico che di certo ritroverò al risveglio.",
	},
	["muse.w12.rest.013"] = {
		"Appena mi sdraio, tutti i pensieri rimandati arrivano insieme, e ognuno è convinto di essere il più urgente.",
		"Per le mie preoccupazioni, mettermi giù è un segnale. Hanno fatto la fila educatamente per ore, e adesso vogliono parlare tutte per prime.",
		"Mi allungo, chiudo gli occhi, e la testa spalanca le porte a ogni commissione e a ogni rimpianto, che si parlano tutti addosso.",
	},
	["muse.w12.rest.014"] = {
		"Il riposo è l'unica cosa al mondo che continua a rendere mentre non guardo. Una bella dormita sotto un tetto, e il tratto dopo va via più liscio.",
		"Dormi in un posto sicuro, e dopo il mondo sembra doverti qualcosa. Il conto non l'ho mai capito, ma incasso volentieri.",
		"Un riposo fatto bene rende interessi. Nessuno ti dà la ricevuta, ma il tempo che segue pesa sempre un filo di meno.",
	},
	["muse.w12.rest.015"] = {
		"Tra la fine di una cosa e l'inizio della successiva c'è un piccolo spazio, largo appena un attimo. Ho imparato a fermarmici apposta.",
		"Ogni lavoro si lascia dietro un piccolo vuoto prima che cominci il prossimo. Quasi tutti lo scavalcano. A me piace sostarci un po'.",
	},
	["muse.w12.rest.016"] = {
		"Mi siedo. Le obiezioni si presentano per iscritto, e io non le leggerò.",
		"Mi metto giù. Chi mi cerca mi troverà un po' più in basso di prima.",
		"Mi siedo, punto. Qualunque cosa sia, che venga lei da me.",
	},
	["muse.w12.rest.017"] = {
		"Mi annoio. Che lusso. La noia vuol dire che niente mi insegue, niente sanguina e nessuno ha bisogno di nulla.",
		"Non c'è sensazione più ricca della noia. Per provarla bisogna essere al sicuro, sfamati e non richiesti, tutto nello stesso momento.",
		"Nessuno sotto assedio si è mai annoiato. Se sbadiglio davanti al nulla, le cose devono andare straordinariamente bene.",
	},
	["muse.w12.rest.018"] = {
		"Metà dei guai di questo mondo li ha cominciati qualcuno che non aveva niente da fare e una porta non ancora aperta.",
		"La noia ha aperto più porte chiuse di qualsiasi ladro. Comprese alcune delle mie, a dirla tutta.",
	},
	["muse.w12.rest.019"] = {
		"La pazienza non è l'attesa. È quello che faccio con le mani e con la testa mentre l'attesa va avanti.",
		"Aspettare lo sa fare chiunque. La pazienza è aspettare senza mangiarsi le unghie fino all'osso.",
		"L'attesa è una cosa che mi capita. La pazienza è quel che ci metto io, quando mi ricordo di portarla.",
	},
	["muse.w12.rest.020"] = {
		"Ogni tanto sogno una stanza in cui non ho mai messo piede, e al risveglio ne ho nostalgia.",
		"Nei miei sogni c'è una porta di cui conosco a memoria il cigolio, e a occhi aperti non l'ho mai vista.",
		"Certi sogni mi prestano una casa per un po': un gradino che cede, un'imposta che s'incastra. Poi se la riprendono senza chiedere.",
	},
	["muse.w12.rest.022"] = {
		"Ho dormito davvero bene. Niente dolori, niente testa confusa. Naturalmente ho passato i primi minuti a chiedermi cosa fosse andato storto.",
		"Una bella dormita, e al risveglio stavo bene. Non ci ho creduto nemmeno un istante, e ho controllato le tasche.",
	},
	["muse.w12.rest.023"] = {
		"Ogni bestia sa come si riposa: si raggomitola, si rintana, si ferma. Solo la gente fa una lunga cerimonia del mettersi a letto.",
		"Guarda un animale che si accuccia: un giro, due, ed è fatta. Le persone, invece, armeggiano col giaciglio come se potesse dir loro di no.",
		"Nessuna creatura selvatica ha bisogno di cuscino, coperta e una buona ragione. Trova un avvallamento, si ripiega su se stessa e dorme.",
	},
	["muse.w12.rest.024"] = {
		"Siediti prima che lo pretendano le gambe. Una sosta scelta da me vale il doppio di una che mi strappano loro.",
		"Meglio fermarsi finché è ancora una scelta. Quando la fa il corpo al posto mio, la sosta arriva con la multa.",
		"Prima o poi le gambe mi fermeranno comunque. Preferisco che sia prima, e per idea mia.",
	},
	["muse.w12.rest.025"] = {
		"Per un po' nessuno vuole niente da me. Niente commissioni, niente domande, nessuna mano tesa. Non so nemmeno che faccia fare.",
		"Nessuno che chiede, nessuno che aspetta, niente in scadenza. È così raro che mi aspetto da un momento all'altro che qualcuno venga a riprenderselo.",
		"Un momento che non appartiene a nessun altro. Lo tengo con cura, come una cosa avuta in prestito che dovrò restituire.",
	},
	["muse.w12.rest.026"] = {
		"Svegliatemi se succede qualcosa d'interessante. Anzi no: le cose interessanti di solito finiscono con le bende.",
		"Se arriva qualcosa di emozionante, che aspetti il suo turno. Adesso sto riposando.",
	},
	["muse.w12.rest.027"] = {
		"Certe volte la stanchezza non sta affatto nelle gambe. Il sonno non la guarisce: è tristezza travestita da fatica, perché io la faccia entrare.",
		"Non ogni stanchezza chiede un letto. A volte è un dolore col cappotto preso in prestito, e il riposo gli offre soltanto una sedia.",
	},
	["muse.w12.rest.028"] = {
		"Il primo istante in cui mi siedo è il più bello che ci sia. Tutto quello che viene dopo è solo il prezzo per rialzarmi.",
		"Niente batte l'attimo in cui mi siedo. Ogni parte di me ringrazia in coro, prima di ricordarsi che più tardi toccherà rialzarsi.",
		"Di tutte le piccole gioie, quel primo sprofondare su un sedile è l'unica che difenderei in duello.",
	},
	["muse.w12.rest.030"] = {
		"La lentezza la deridono in tanti. Ma le mani lente fanno cadere meno cose, gli occhi lenti si lasciano sfuggire meno, e dei caratteri lenti mi fido.",
		"Non c'è niente di vergognoso nell'andar piano. Il passo attento perde meno cose, nota di più e attacca meno liti.",
		"Alla svelta vanno gli elogi, alla lenta va il lavoro fatto. Come mi chiamino, ormai non m'importa.",
	},
	["muse.w12.rest.031"] = {
		"Quando la noia morde, comincio a contare: nodi in un'asse, anelli di una catena, crepe in una pietra. Dei totali non me ne faccio mai nulla.",
		"Se non succede niente per un bel po', conto quello che ho davanti. Quarantuno chiodi, finora. Non so bene per chi stia tenendo il punteggio.",
	},
	["muse.w12.rest.032"] = {
		"Chiunque dorma sembra più giovane e più onesto. Immagino valga anche per me: è l'unico momento in cui mi farei da garante.",
		"Dormendo, ogni viso abbassa la guardia. Anche la gente più dura, a occhi chiusi, ha l'aria di un bambino di qualcuno.",
	},
	["muse.w12.rest.033"] = {
		"Riposo fatto, pancia piena e niente in fiamme. Questa me la segno.",
		"Ho dormito come si deve, per una volta. Quasi non mi riconosco.",
		"Un riposo vero. Mi sembra di avere le gambe di un altro.",
	},
	["muse.w12.rest.034"] = {
		"Ogni volta che mi sdraio cedo un po' del controllo e mi fido che il mondo me lo restituisca. Finora l'ha sempre fatto.",
		"Il sonno è una piccola resa: poso tutto e spero di ritrovarlo al suo posto quando lo riprendo. Un giorno non ci sarà, e io non lo saprò.",
	},
	["muse.w12.rest.035"] = {
		"Se parlo nel sonno, spero almeno di dire qualcosa di più saggio di quel che mi riesce a occhi aperti. Sarebbe un peccato sprecare la fatica.",
		"Qualunque cosa borbotti dormendo, vorrei che fosse un consiglio utile. A occhi aperti la scorta è quasi finita.",
	},
	["muse.w12.rest.036"] = {
		"L'immobilità ha un suono tutto suo. Non è silenzio: è un ronzio basso e largo, il rumore di ogni cosa che va avanti senza di me.",
		"La quiete non è vuota. Ascoltala abbastanza e si riempie di piccole cose: uno scricchiolio, una goccia, qualcosa di lontano che si fa gli affari suoi.",
		"Quando niente si muove vicino a me, sento il mondo che lavora a distanza, come una casa che ronza delle faccende altrui.",
	},
	["muse.w12.rest.038"] = {
		"Stivali addosso o stivali tolti: è questa la vera domanda di ogni riposo. Toglierli è una beatitudine; tenerli vuol dire poter scappare in fretta. Non l'ho mai risolta.",
		"Tutte le volte che mi corico si tiene lo stesso piccolo processo: la comodità dice slaccia, la prudenza dice lascia stare. Di solito vince la prudenza, e i piedi non me lo perdonano mai.",
		"Slacciarmi gli stivali per dormire è un atto di fiducia verso quel che mi sta intorno. Certi posti se lo meritano. Quasi tutti no.",
	},
	["muse.w12.rest.039"] = {
		"Quando ho finito di allacciare gli stivali, il sogno se n'è già andato. Me ne resta la forma, come l'impronta su un cuscino, e nient'altro.",
		"I sogni se ne vanno senza salutare. Resta solo una sensazione, come in una stanza dove qualcuno era seduto un attimo prima.",
		"I sogni non sopravvivono al primo laccio. Al secondo non saprei nemmeno dire se era un sogno felice.",
	},
	["muse.w12.rest.040"] = {
		"Riposare non è arrendersi, anche se entrambe le cose cominciano col sedersi. La differenza sta nel rialzarsi.",
		"Da fuori, una sosta e una resa si somigliano: qualcuno a terra, fermo. Solo il momento dopo le distingue.",
	},
	["muse.w12.rest.041"] = {
		"Un momento, per favore. Non per qualcosa in particolare. Solo un momento.",
		"Un attimo per me, nient'altro. Torno subito, insieme al resto di me.",
	},
	["muse.w12.rest.042"] = {
		"Metà di questa vita la passo a correre per arrivare da qualche parte, e l'altra metà ferma sul posto ad aspettare ciò per cui correvo.",
		"Corri, poi aspetta. Corri, poi aspetta. Chi ha inventato questo mestiere aveva un crudele senso del ritmo.",
		"Nessuno mi aveva avvertito di quanta avventura si passi appoggiati a qualcosa, in attesa che cominci il pezzo successivo.",
	},
	["muse.w12.rest.043"] = {
		"Buttarsi dentro richiede fegato. Aspettare, quando ogni parte di me vorrebbe muoversi, ne richiede di più, e nessuno lo loda mai.",
		"Restare immobile mentre tutto dice vai è anch'esso coraggio, di quello silenzioso che non finisce nelle canzoni.",
		"Gli ordini più duri che mi do sono quelli che dicono: non ancora, aspetta.",
	},
	["muse.w12.rest.044"] = {
		"La noia è una specie di fame, solo che abita dietro gli occhi. Se la nutri di sciocchezze, si fa soltanto più rumorosa.",
		"Una testa in ozio ha fame come uno stomaco, e non va per il sottile. Piuttosto che niente, rosicchia la prima preoccupazione che trova.",
		"Niente rode come una testa vuota. Se non le dai lavoro, comincia a lavorare su di me.",
	},
	["muse.w12.rest.046"] = {
		"Riposare e dormire non sono la stessa cosa. Posso riposare a occhi aperti e dormire senza riposare affatto. La seconda capita molto più spesso.",
		"Una dormita che mi lascia a pezzi, una breve sosta che mi rimette al mondo: il corpo tiene conti suoi, e raramente tornano con le ore.",
	},
	["muse.w12.rest.047"] = {
		"C'è un sogno che torna: sono in ritardo per qualcosa, e nessuno vuole dirmi per cosa. Mi sveglio già di corsa.",
		"Nel solito sogno sono sempre in ritardo a un appuntamento che non ricordo di aver preso. Aprire gli occhi non basta a togliermi la sensazione.",
		"In sogno ho fatto tardi più volte di quante ne possa contare, e non so ancora per cosa. Chi mi aspetta là dev'essere molto paziente.",
	},
	["muse.w12.rest.048"] = {
		"Il mondo fiuta chi si siede. Appena mi sistemo, qualcosa ha bisogno di me, mi morde o vuole scambiare due parole.",
		"Se resto in piedi a fingere da fare, la quiete dura in eterno. Basta sedermi, ed è il sedersi che suona la campanella.",
	},
	["muse.w12.rest.049"] = {
		"Guardare un fuoco è l'ozio più onesto che conosca. Le fiamme fanno tutto il lavoro, e chissà come il riposo lo guadagno io.",
		"Nessuno chiama pigrizia restare a fissare un fuoco. È l'unico modo di non far niente che tutti perdonano.",
	},
	["muse.w12.rest.050"] = {
		"Ho pazienza con gli estranei, con i muli, con i mercanti. Con me, quasi per niente. Dovrei prestarmene un po', di quella che regalo agli altri.",
		"La mia pazienza ce l'hanno tutti tranne me. Aspetto tranquillamente dietro un carro lento e poi mi maledico per un attimo di ritardo.",
		"Se trattassi chiunque altro come tratto me quando vado piano, gli dovrei delle scuse.",
	},
	["muse.w12.rest.051"] = {
		"Se mi sdraio non mi rialzo più. Quindi mi appoggio. Appoggiarsi è una promessa.",
		"Sedermi no, è pericoloso. Mi appoggio, che vale ancora come lavorare.",
	},
	["muse.w12.rest.052"] = {
		"Ai morti si augura il riposo, come fosse il dono più bello che ci sia. Quasi tutti i vivi si accontenterebbero di una piccola porzione, qui e adesso.",
		"I vivi promettono il riposo ai morti. Peccato che per chi cammina ancora ne resti così poco.",
		"Ogni tomba davanti a cui passo augura al suo ospite un lungo riposo. Per chi sta in piedi, nessuno incide auguri simili.",
	},
	["muse.w12.rest.053"] = {
		"Aspettare notizie è il modo peggiore di stare fermi. Il corpo riposa e la testa gli corre in tondo attorno.",
		"Niente mi sfinisce come aspettare di sapere com'è andata. Non muovo un muscolo e mi ritrovo comunque a pezzi.",
		"Restare lì ad aspettare notizie da altrove: il lavoro più immobile che ci sia, e il più sfiancante.",
	},
	["muse.w12.rest.054"] = {
		"Le dormite migliori sono quelle che non avevo in programma. Mi siedo un attimo, e un istante dopo il mondo è andato un po' avanti senza di me.",
		"Va bene il riposo previsto, ma quello capitato per caso è meglio: una seduta di un momento che, senza chiedere permesso, diventa un sonno vero.",
		"Non dormo mai così bene come quando volevo solo chiudere gli occhi un momento.",
	},
	["muse.w12.rest.056"] = {
		"Quando mi annoio davvero, metto in ordine. È così che capisco che è grave. Lo zaino non è mai così ordinato come quando non succede niente.",
		"Niente da fare vuol dire che tutto viene piegato, smistato e ripiegato da capo. La noia ha un lato maniaco dell'ordine.",
	},
	["muse.w12.rest.057"] = {
		"Un seme può aspettare anni in terra asciutta senza fare assolutamente nulla, e senza perdere niente di ciò che è. Vorrei imparare quel trucco.",
		"I semi sono maestri dell'attesa. Restano immobili per tutto il tempo che serve, e non scordano mai cosa devono diventare.",
		"Sotto ogni strada ci sono semi addormentati, che tengono tutto il loro avvenire piegato in piccolo, senza la minima fretta.",
	},
	["muse.w12.rest.058"] = {
		"Il riposo arriva sempre con un po' di senso di colpa ripiegato dentro, come se da qualche parte qualcuno lavorasse il doppio per compensare me.",
		"Non riesco a restare a lungo con le mani in mano senza sentirmi in debito con qualcuno. Nessuno me l'ha mai detto. Me lo dico da me.",
	},
	["muse.w12.rest.059"] = {
		"Niente da fare e nessun posto dove andare. Meraviglioso. Terrificante, ma meraviglioso.",
		"Nemmeno una commissione rimasta. Festeggerei, se solo sapessi cosa si fa in questi casi.",
	},
	["muse.w12.rest.060"] = {
		"Per addormentarmi conto le cose che devo ancora fare. Funziona, ma solo perché crollo dallo sconforto prima di arrivare in fondo alla lista.",
		"C'è chi conta le pecore. Io conto le commissioni in sospeso, e il sonno arriva per pura vergogna.",
	},
	["muse.w12.rest.061"] = {
		"Certe cose si possono solo lasciar passare: il malumore, una guarigione lenta, una serie di sfortune. Se le spingi, s'impuntano.",
		"Non tutto cede alla fatica. Un rancore, una febbre, una sfilza di sfortune: accanto a quelle ci si siede e si aspetta che si annoino e se ne vadano.",
		"Ci sono guai che solo il tempo solleva, e l'unica cosa che mi chiede è di smettere di punzecchiarli.",
	},
	["muse.w12.rest.062"] = {
		"Quando leggo la stessa riga tre volte e non mi entra in testa, è il modo educato con cui il corpo mi dice basta.",
		"La stanchezza si annuncia con piccoli segni: la stessa frase letta due volte, una cinghia allacciata storta, una parola che non viene. Al terzo dovrei sedermi.",
	},
	["muse.w12.rest.064"] = {
		"È una consolazione restare immobile e sapere che il mondo gira benissimo anche senza il mio aiuto. Non tutto tocca a me portarlo.",
		"Per un attimo mi fermo, e niente crolla. Qualunque cosa tenga in piedi questo mondo, non sono io. Fa bene ricordarselo.",
		"Mollo tutto per un po' e il mondo nemmeno se ne accorge. C'è una grande gentilezza nell'essere così poco indispensabili.",
	},
	["muse.w12.rest.065"] = {
		"Non parlatemi di fretta. Io e la fretta non ci rivolgiamo la parola.",
		"Niente fretta. L'ho mollata, come un vizio.",
		"La premura è per chi ha una fila di rimpianti alle calcagna. Io vado piano.",
	},
	["muse.w12.rest.066"] = {
		"Certe volte mi addormento con un problema ingarbugliato e mi sveglio col nodo sciolto, come se qualcuno ci avesse lavorato mentre non c'ero. Non l'ho mai conosciuto.",
		"Nel mio sonno lavora qualcuno, in silenzio, e sistema quel che io non riuscivo a sistemare. Non chiede grazie, non lascia nome.",
	},
	["muse.w12.rest.067"] = {
		"Annoiarsi in compagnia permette almeno di lamentarsi a vicenda. Annoiarsi senza nessuno accanto vuol dire non avere altri da incolpare, e nessuno a cui raccontarlo.",
		"Divisa con qualcuno, la noia diventa pettegolezzo. Tenuta per me, se ne sta lì e mi fissa.",
	},
	["muse.w12.rest.068"] = {
		"C'è sempre un bancone con qualcuno davanti a me che racconta tutta la sua vita a chi sta dall'altra parte.",
		"La fila più corta è sempre quella che si ferma nell'istante in cui mi ci metto.",
		"Buona parte delle mie attese l'ho passata ai banconi, a guardare la nuca di uno sconosciuto che decide cosa vuole.",
	},
	["muse.w12.rest.070"] = {
		"Dopo uno scontro la quiete torna a pezzi: prima si spegne il ronzio nelle orecchie, poi i piccoli rumori rientrano uno dopo l'altro, come uccelli quando il falco se n'è andato.",
		"C'è un'immobilità particolare che segue i guai. Il mondo sembra sbirciare fuori, controllare, e solo allora riprende le sue faccende.",
		"Finiti i guai, per un po' niente osa fiatare. Poi qualcosa di piccolo azzarda un cinguettio, e gli altri vanno dietro.",
	},
	["muse.w12.rest.071"] = {
		"Se aspetto il momento perfetto, aspetterò per sempre. Il momento abbastanza buono passa spesso, e di solito è adesso.",
		"Il momento giusto è una diceria. L'ho atteso più volte e non s'è mai fatto vedere. Quello passabile, invece, si presenta tutti i giorni.",
	},
	["muse.w12.rest.072"] = {
		"L'attesa è più vecchia di qualunque arte. Prima che qualcuno cacciasse, costruisse o combattesse, qualcuno sedeva e aspettava che succedesse qualcosa.",
		"Molto prima del primo attrezzo o del primo muro, qualcuno si è seduto accanto a una tana e ha aspettato. Tutto il resto è venuto dopo.",
	},
	["muse.w12.rest.073"] = {
		"Senti qua. Proprio niente. Che meraviglia.",
		"Sentito? Nemmeno io. Il suono più bello che ci sia.",
		"Neanche un fruscio, da nessuna parte. Potrei farci l'abitudine.",
	},
	["muse.w12.rest.074"] = {
		"Lo sbadiglio arriva sempre nel momento peggiore: a metà del discorso serio di qualcuno, o proprio mentre qualcosa mi sta prendendo le misure.",
		"I miei sbadigli non hanno il senso dell'occasione. Scelgono apposta i momenti solenni, ne sono {g:convinto|convinta}.",
	},
	["muse.w12.rest.076"] = {
		"Nei sogni tutti mi capiscono al primo colpo. Svegliarsi è il lento ritorno allo spiegare le cose due volte.",
		"I miei sogni sono pieni di gente che mi capisce senza bisogno di parlare. Poi apro gli occhi e devo tornare alle parole, e male.",
	},
	["muse.w12.rest.077"] = {
		"Addormentarsi è un'arte in tre passi: stendersi, smettere di ascoltare, mollare la presa. Il primo lo padroneggio benissimo.",
		"Sdraiarmi, quello lo so fare. È spegnere le orecchie che non mi riesce mai.",
		"Dormire è facile, mi dicono. Basta smettere. Nessuno spiega come si fa smettere la parte di te che sta di guardia.",
	},
	["muse.w12.rest.078"] = {
		"Un airone sa restare nell'acqua bassa così a lungo che i pesci si scordano di lui. Tutta la pazienza sta lì, e regge su una zampa sola.",
		"Gli aironi aspettano su una zampa finché l'acqua non si dimentica di loro. Io non ho mai saputo restare immobile così a lungo, per nessuna ragione.",
	},
	["muse.w12.rest.079"] = {
		"Se aspetto una cosa abbastanza a lungo, finirà per deludermi. Ha avuto tutto quel tempo per gonfiarsi nella mia testa.",
		"Più aspetto qualcosa, più cresce nella mia fantasia, e più sembra piccola quando finalmente arriva.",
		"L'attesa è una cuoca furba: condisce tutto così tanto che il piatto vero sa sempre di poco.",
	},
	["muse.w12.rest.080"] = {
		"Chissà cosa sognano gli altri. Gli gnomi a schemi e progetti, direi. Gli ogre il pranzo. I mercanti una bilancia che pende dalla loro parte.",
		"Ognuno sogna secondo la sua natura, sospetto: lo gnomo ingranaggi, il contadino un buon raccolto, la guardia un turno tranquillo. Darei qualcosa per sbirciare in quello di un drago.",
	},
	["muse.w12.rest.081"] = {
		"Non stavo dormendo. Stavo ispezionando l'interno delle palpebre. A fondo.",
		"Dormire, io? No. Occhi chiusi per controllo qualità.",
	},
	["muse.w12.rest.082"] = {
		"Se resto immobile abbastanza a lungo comincio a sentire davvero i miei pensieri, senza che il lavoro ci gridi sopra. Alcuni avrei preferito non incontrarli.",
		"Quando ho da fare, di me restano solo mani e commissioni. Quando mi fermo, resta chi c'è sotto, e quello ha parecchio da dire.",
	},
	["muse.w12.rest.083"] = {
		"In questo mondo la noia non dura mai molto. Arriva sempre qualcosa a curarla, di solito munito di artigli.",
		"Della noia non serve avere paura a lungo. Il mondo ha cento rimedi, e nessuno è delicato.",
	},
	["muse.w12.rest.085"] = {
		"Ogni volta che chiudo gli occhi mi esercito per qualcosa che dovrò fare sul serio una volta sola. Strano quanta calma ci sia, in questo.",
		"Ogni sonno è una piccola prova generale di quello lungo. Spero che, quando conterà, saprò la mia parte a memoria.",
	},
	["muse.w12.rest.086"] = {
		"Riposati quando puoi. Il mondo non manda a dire quando avrà bisogno di te.",
		"Prenditi il riposo finché te lo offrono. Nessuno lo distribuisce due volte.",
		"Siediti finché puoi. Nessuno si è mai pentito di un riposo preso.",
	},
	["muse.w12.rest.087"] = {
		"Apro gli occhi, e c'è sempre già qualcosa al lavoro: uno scarabeo, un uccello, una formica che trascina qualcosa grande il doppio di lei. Il mondo, sul lavoro, non l'ho mai battuto.",
		"Mi sveglio quando mi pare, e il mondo ha sempre già cominciato senza di me. Qualche piccola cosa ci ha dato dentro per tutto il tempo.",
	},
	["muse.w12.rest.088"] = {
		"Nei tratti peggiori tengo in mente un'immagine sola: un posto dove sedermi, dopo. Mi ha portato più lontano di qualunque discorso.",
		"Quando la strada si fa dura non penso alla gloria. Penso al momento in cui potrò sedermi, e basta questo a mandare avanti i piedi.",
	},
	["muse.w12.rest.090"] = {
		"Aspettare nessuno in particolare ha un suo strano conforto. Nessuno è in ritardo, nessuno mi delude, e posso andarmene quando voglio.",
		"Quando non arriva nessuno, l'attesa diventa semplicemente stare in un posto. Scopro che non mi dispiace.",
		"Nessuno da incontrare, nessun posto dove mi aspettino. Un'attesa senza termine non è quasi più un'attesa.",
	},
	["muse.w12.rest.091"] = {
		"Un augurio per chiunque, là fuori, si regga in piedi a stento: una dormita profonda, e qualcuno di fidato a fare la guardia.",
		"Che ogni anima stanca trovi un angolo dove nessuno la svegli prima del tempo.",
	},
	["muse.w12.rest.092"] = {
		"Ho perfezionato l'arte di sembrare {g:assorto|assorta} mentre non faccio assolutamente nulla. Un leggero cipiglio fa quasi tutto il lavoro.",
		"Chi passa vede qualcuno immerso nei pensieri. In realtà vede una persona che riposa con la fronte aggrottata.",
	},
	["muse.w12.sayings.001"] = {
		"Un muro che ha fretta finisce in ghiaia, dicono i nani. Qualche mio progetto ha fatto la stessa fine.",
		"'Muro tirato su di corsa, ghiaia per l'indomani', recita un detto nanico. Ripensando a certe mie trovate, gli do ragione.",
	},
	["muse.w12.sayings.002"] = {
		"A Ironforge, a quanto pare, si dice che un nano ti presta il martello prima del boccale. Chi li ha visti bere non ne dubita.",
		"'Chiedi a un nano gli attrezzi, mai il boccale', dicono a Ironforge. Sembra un consiglio, ed è un avvertimento.",
	},
	["muse.w12.sayings.003"] = {
		"Secondo i nani le bugie di qualcuno si contano da quante volte si tira la barba. A quel conto, nelle loro taverne non è mai stata detta una parola vera.",
		"Per i nani una barba onesta resta ferma mentre il padrone parla. Io una barba nanica ferma non l'ho mai vista.",
	},
	["muse.w12.sayings.004"] = {
		"I minatori dicono che la vena migliore è sempre un colpo più in là. Detto consolante, e comodissimo per chi vende i picconi.",
		"'Ancora un colpo e trovi il buono', si ripetono in miniera. La roccia, sospetto, se lo sente dire da mille anni.",
	},
	["muse.w12.sayings.005"] = {
		"I Wildhammer dicono che un grifone ti ha già giudicato prima che tu finisca di salutarlo. Cosa abbia deciso su di me, preferisco non saperlo.",
		"Fra i Wildhammer si racconta che il grifone soppesa chi lo monta con un'occhiata, e non cambia più idea. Più severo di qualunque tribunale.",
	},
	["muse.w12.sayings.006"] = {
		"Si racconta che il clan Dark Iron abbia un detto: più profonda è la forgia, più corta è la pazienza. Visto dove abitano, di pazienza non gliene resta.",
		"'Forgia profonda, miccia corta', dice un detto dei nani Dark Iron. Con quanto hanno scavato, non vorrei incontrarne uno di cattivo umore. O di qualunque umore.",
	},
	["muse.w12.sayings.007"] = {
		"I nani di montagna dicono che la montagna non chiede mai di chi sia il re che ci abita dentro. Ogni corona dovrebbe averlo inciso sopra la porta.",
		"'La montagna sopravvive al trono che ospita', recita un detto dei nani. Mi piacerebbe sentirlo dire da un re, almeno una volta.",
	},
	["muse.w12.sayings.008"] = {
		"I nani scherzano che a un elfo servono cent'anni per decidere dove mettere una porta, e poi la fa crescere. Non capisco se sia invidia o esasperazione.",
		"'Un elfo progetta una porta per un secolo', dice la battuta dei nani. O è lentissimo, o è sicurissimo. Forse tutte e due.",
	},
	["muse.w12.sayings.009"] = {
		"Gli scavatori dell'Explorers' League hanno un detto: scava piano, o troverai quello che speravi invece di quello che c'è davvero. Vale ben oltre le rovine.",
		"'La pala frettolosa trova quello che cercava', dicono all'Explorers' League, e non è un complimento. Desiderare una cosa è un pessimo modo di cercarla.",
	},
	["muse.w12.sayings.010"] = {
		"Gli ingegneri gnomi hanno un detto: se ha funzionato al primo colpo, l'ha costruito qualcun altro. Strano quanto consoli, per un detto sul fallire.",
		"'Niente di onesto funziona la prima volta', mi disse una volta una gnoma tutta allegra, mentre alle sue spalle qualcosa prendeva fuoco.",
	},
	["muse.w12.sayings.011"] = {
		"Gli gnomi chiamano la città una macchina per tenere gli amici a portata di voce. La loro si è rotta, e cercano ancora i pezzi di ricambio.",
		"Dicono gli gnomi che una città non è che un congegno per tenere vicini gli amici. Dopo Gnomeregan, sembra meno una battuta e più un lamento.",
	},
	["muse.w12.sayings.012"] = {
		"I meccanici gnomi giurano che ogni macchina ha un pezzo che serve solo a sferragliare e lamentarsi. So benissimo qual è il mio.",
		"Secondo gli gnomi, ogni marchingegno ha un pezzo che non fa altro che brontolare. Nel mio caso sono le ginocchia, e ci mettono tutto l'impegno.",
	},
	["muse.w12.sayings.013"] = {
		"Gli gnomi sostengono che la domanda sia l'unico attrezzo che si affila usandolo. Il che spiega parecchio, sugli gnomi.",
		"'Le domande non si spuntano, le risposte sì', dice un detto gnomesco. Mi piace un po' di più ogni volta che il mondo mi sorprende.",
	},
	["muse.w12.sayings.014"] = {
		"Un proverbio gnomesco sostiene che nessun problema è troppo grande: è la chiave inglese a essere troppo piccola. Ammiro l'ottimismo. Sulla chiave ho dei dubbi.",
		"'Non esistono problemi grandi, solo chiavi inglesi corte', amano dire gli gnomi. Fiducia commovente. Vorrei vedere la chiave, prima.",
	},
	["muse.w12.sayings.015"] = {
		"Gli ingegneri goblin pensano che quello che non è esploso non si sia impegnato abbastanza. Gli gnomi sostengono l'esatto contrario. Io, tra i due, mi tengo a distanza.",
		"'Niente botto, niente affari', dicono gli inventori goblin. Gli gnomi giurano il contrario. Da entrambe le filosofie sto alla larga.",
	},
	["muse.w12.sayings.016"] = {
		"I contadini dicono che un campo non dimentica chi lo ha lasciato: ci fa crescere cardi in suo nome. Il nord, ormai, dev'essere tutto un cardo.",
		"Un detto dei campi vuole che la terra abbandonata porti rancore e lo scriva in erbacce. Le campagne di Lordaeron devono gridare.",
	},
	["muse.w12.sayings.017"] = {
		"Nelle campagne si dice che il bue non scopre mai che l'eroe del raccolto era lui. Parecchi eroi sarebbero più simpatici, se valesse anche per loro.",
		"'Il bue tira tutto il raccolto e nessuno gli canta una canzone', dicono i contadini. Giusto così: al bue la canzone non piacerebbe.",
	},
	["muse.w12.sayings.018"] = {
		"I vecchi soldati giurano che per campare bastano due cose: stivali asciutti e un sergente senza fantasia. Io ne aggiungerei una terza: nessuno che guarda.",
		"Il detto dei soldati fa così: tieni asciutti gli stivali e annoiato il capitano, e vivrai abbastanza per lamentarti di entrambi. Saggio, ma si scorda della fortuna.",
	},
	["muse.w12.sayings.019"] = {
		"I muratori di Stormwind dicono che ogni città si costruisce due volte: una con la pietra, una con le paghe. Loro sanno bene quale metà non è mai stata saldata.",
		"'La pietra regge la città, la paga regge i muratori', recita un detto dei costruttori di Stormwind. Dopo come è finita con quei salari, nessuno ci ride più.",
	},
	["muse.w12.sayings.020"] = {
		"Si racconta che i profughi del nord abbiano un detto: lascia l'argenteria, prendi il cucchiaio. Per chi deve partire di corsa, non conosco consiglio più vero.",
		"'Prendi il cucchiaio, lascia l'argento', si dicono quelli scappati da Lordaeron. Ciò con cui mangi vale più di ciò che potresti vendere.",
	},
	["muse.w12.sayings.021"] = {
		"I vecchi di Lordaeron dicevano che un buon re non è che un contadino il cui campo sono le persone. L'ultimo raccolto del regno è finito malissimo.",
		"'Un re cura la gente come un contadino cura i filari', dicevano un tempo gli anziani dei regni del nord. Non immaginavano chi sarebbe venuto a mietere quei filari.",
	},
	["muse.w12.sayings.022"] = {
		"Nei villaggi di Elwynn dicono che una scala prestata torna sempre con un piolo in meno. Nessuno sa dove finiscano i pioli. Io ho qualche sospetto sui vicini.",
		"'Presti una scala, ti torna uno sgabello', dicono i contadini di Elwynn. Prestare è un'abitudine bellissima, con un costo piccolo e costante.",
	},
	["muse.w12.sayings.023"] = {
		"A Darkshire si dice di non rispondere mai a un bussare che non aspettavi. Con tutto quello che si racconta di quel bosco, non posso dargli torto.",
		"'Colpo inatteso, porta chiusa', dicono a Darkshire. Una regola triste da dover avere, e saggia da rispettare.",
	},
	["muse.w12.sayings.024"] = {
		"I contadini di Westfall dicono che un raccolto magro ti mostra chi sono davvero i tuoi vicini. E di raccolti magri, a quanto si sente, ne hanno avuti parecchi.",
		"'I cattivi raccolti contano gli amici al posto tuo', dicono nelle campagne di Westfall. Un modo duro di fare il censimento.",
	},
	["muse.w12.sayings.025"] = {
		"Dalle parti di Redridge dicono che un buon ponte vale tre muri. I muri tengono fuori i guai, ma un ponte fa arrivare l'aiuto. Non ci avevo mai pensato.",
		"'Un ponte vale più di tre mura', si dice intorno a Lakeshire. Difendersi è bene; lasciare una strada agli amici è meglio.",
	},
	["muse.w12.sayings.026"] = {
		"Pare che i kaldorei insegnino ai giovani a giurare in piccolo, perché un giuramento può sopravvivere a chi lo fa di qualche migliaio d'anni. Vale per chiunque, longevo o no.",
		"'Prometti poco: le promesse vivono più delle persone', dice un detto kaldorei. Con quello che campano, lo sanno bene.",
	},
	["muse.w12.sayings.027"] = {
		"I kaldorei dicono che un bosco tace solo quando ascolta. Da allora abbasso la voce ogni volta che qualcosa si fa silenzioso, bosco o no.",
		"Il silenzio tra gli alberi, secondo un detto elfico, è attenzione e non assenza. Da quando l'ho sentito, ogni posto quieto mi pare un po' sorvegliato.",
	},
	["muse.w12.sayings.028"] = {
		"Stando ai kaldorei, gli umani costruiscono in pietra perché non hanno la pazienza di far crescere una casa. Ingeneroso, forse. Ma un po' vero.",
		"'Chi vive poco scava la cava, chi sa aspettare coltiva', recita un detto kaldorei. Io un tetto lo vorrei comunque entro l'anno.",
	},
	["muse.w12.sayings.029"] = {
		"Le Sentinelle hanno un detto: nessun turno di guardia è lungo, è chi veglia che si stanca. Immagino voglia consolare. Non del tutto.",
		"'Non è la guardia che si allunga, è la sentinella che si accorcia', insegnerebbero le Sentinelle alle reclute. Strano da ricordare quando il sonno non arriva.",
	},
	["muse.w12.sayings.030"] = {
		"I druidi del Cenarion Circle dicono che un seme non discute mai con la terra su cui cade. Io discuto con tutto, il che forse spiega perché germoglio così poco.",
		"'Il seme prende la terra che gli tocca', insegnano i druidi del Circle. Ammirevole. Io avrei comunque un paio di lamentele per la terra.",
	},
	["muse.w12.sayings.031"] = {
		"Per i kaldorei, a quanto si dice, una scusa come si deve ha bisogno di un secolo per maturare. Per chi vive meno, è un pessimo modo di chiudere una lite.",
		"'Una scusa colta troppo presto non sa di niente', sostengono i kaldorei, e aspettano di conseguenza. Certe loro liti devono essere più vecchie dei regni.",
	},
	["muse.w12.sayings.032"] = {
		"Gli alti elfi avevano un detto: la bellezza è un muro, e va sorvegliata come qualsiasi altro. Dopo Quel'Thalas, suona come un avvertimento rimasto inascoltato.",
		"'Anche una cosa bella ha bisogno di una sentinella', dicevano un tempo gli elfi di Quel'Thalas, mi raccontano. Il loro regno lo ha dimostrato nel modo più duro.",
	},
	["muse.w12.sayings.033"] = {
		"Gli orchi dicono che una cicatrice è l'unica lezione che nessuno può rubarti. D'altra parte, nessuno si è mai sforzato molto di rubare una lezione.",
		"'La cicatrice è un maestro che non se ne va più', dice un vecchio proverbio orchesco. Io preferirei un maestro che bussa prima di entrare.",
	},
	["muse.w12.sayings.034"] = {
		"Gli anziani orchi insegnano che la forza che urla è forza che dubita. Ci penso ogni volta che in taverna qualcuno alza la voce su quanto è duro.",
		"Fra gli orchi si dice che il braccio forte non ha bisogno della bocca larga. Parole sagge, da un popolo celebre per entrambi.",
	},
	["muse.w12.sayings.035"] = {
		"Si dice che il clan Frostwolf insegni: sfama il lupo prima di te stesso, e non andrai mai a caccia da solo. Parla di lupi. E chiaramente non parla di lupi.",
		"'Chi sfama prima il lupo non cammina mai da solo', dice un detto dei Frostwolf. Più ci giro intorno, più ci trovo dentro persone.",
	},
	["muse.w12.sayings.036"] = {
		"Gli orchi usciti dai campi d'internamento hanno un detto: un recinto trattiene il corpo, mai il resto. Se lo sono guadagnato. A me tocca solo ascoltare.",
		"'Le mura prendono le gambe, non la volontà', dicono gli orchi che ricordano i campi. Parole così non sono mie: io posso solo ascoltarle.",
	},
	["muse.w12.sayings.037"] = {
		"Così recita un proverbio orchesco: la rabbia o la dici in faccia o la ingoi intera, ma non masticarla. Io mastico. Lo so benissimo.",
		"'La rabbia sputala o mandala giù, ma non ruminarla', raccomandano gli orchi. Ottimo consiglio, e io lo tradisco di continuo.",
	},
	["muse.w12.sayings.038"] = {
		"Per gli orchi una bugia detta al nemico ferisce chi la racconta. Strano onore, tenere fede persino all'altra parte. Mi accorgo di ammirarlo.",
		"'Menti al nemico e ti sei tagliato la mano da solo', recita un proverbio degli orchi sull'onore. Regola esigente. Molti non la rispettano nemmeno con gli amici.",
	},
	["muse.w12.sayings.039"] = {
		"Gli orchi avvertono che ciò che il clan dimentica, il nemico lo ricorderà al posto suo. Un buon argomento per tenere registri onesti, tra le altre cose.",
		"'Scorda i tuoi torti e i nemici li terranno a mente per te', ammonisce un detto orchesco. La storia sembra dargli ragione, e ad alta voce.",
	},
	["muse.w12.sayings.040"] = {
		"I Darkspear dicono che i loa rispondono piano per darti il tempo di pentirti della domanda. La cosa più saggia che abbia mai sentito sul chiedere.",
		"'I loa se la prendono comoda, così puoi ritirare la richiesta', dice un detto troll. La pazienza come misericordia. Mi piace.",
	},
	["muse.w12.sayings.041"] = {
		"I troll della giungla dicono che la pantera non insegue mai: aspetta dove il sentiero arriva all'acqua. Una lezione che ogni cacciatore sta ancora imparando.",
		"'Non correre dietro alla cena della pantera: aspetta dove beve.' Un detto troll, mi dicono, e vale per molto più della caccia.",
	},
	["muse.w12.sayings.042"] = {
		"I troll hanno un detto: una ferita che si chiude troppo in fretta non insegna niente. Facile per loro. Le loro si chiudono mentre ancora parlano.",
		"'Chi guarisce presto impara tardi', sentenziano i troll, che guariscono più in fretta di chiunque. Io baratterei volentieri un po' di saggezza per quel dono.",
	},
	["muse.w12.sayings.043"] = {
		"Si racconta che gli anziani troll insegnino ai giovani ad ascoltare con più attenzione proprio quando i tamburi tacciono. Quello che resta in quel silenzio è la verità.",
		"Presso i troll si dice che il tamburo serve a ballare, e il silenzio dopo serve a capire. Ci ripenso spesso, quando tutto si quieta.",
	},
	["muse.w12.sayings.044"] = {
		"Si dice che gli stregoni troll insegnino che ogni maledizione è una promessa che qualcuno ha tradito. Mi spaventa più di qualsiasi discorso su poteri oscuri.",
		"'Una maledizione è un giuramento andato a male', insegnano gli stregoni troll. Se è vero, il mondo è molto più maledetto di quanto sembri.",
	},
	["muse.w12.sayings.045"] = {
		"Per i Darkspear la tribù è una canoa, e se remi fuori tempo si bagnano tutti. Non avevo mai pensato alla compagnia come a una questione di remi.",
		"'Rema con gli altri o nuota da solo', dice un detto dei Darkspear. Non proprio una minaccia. Piuttosto una descrizione di come funzionano le canoe.",
	},
	["muse.w12.sayings.046"] = {
		"I troll dicono che il buon mojo non si compra: si prende in prestito, e prima o poi torna a riscuotere. Vorrei sapere a che punto è il mio conto.",
		"'Il mojo è un prestito, e si ricorda chi l'ha chiesto', raccontano i troll. Sospetto di essere in rosso.",
	},
	["muse.w12.sayings.047"] = {
		"Gli anziani tauren insegnano a camminare come se ogni passo fosse sentito, laggiù sotto. Da allora poso i piedi con un po' più di garbo.",
		"'Cammina come cammina un ospite', dicono i tauren della terra. Non avevo mai pensato che al suolo potesse dispiacere essere calpestato.",
	},
	["muse.w12.sayings.048"] = {
		"I mandriani tauren dicono che la mandria va al passo del vitello più lento, ed è questo a farne una mandria. Quasi tutte le folle preferirebbero lasciare indietro il vitello.",
		"'La mandria cammina veloce quanto il più debole', dice un detto tauren. Detto da loro non è un lamento. È una definizione.",
	},
	["muse.w12.sayings.049"] = {
		"I conducenti di kodo dicono di non discutere mai la strada con un kodo: lui ricorda acque che tu non hai mai visto. Certe guide farebbero bene a essere kodo.",
		"'Il kodo sa dov'è l'acqua prima che tu sappia di avere sete', amano dire i mandriani delle Barrens. Fidati di chi ricorda più a lungo, insomma.",
	},
	["muse.w12.sayings.050"] = {
		"I tauren dicono che i loro morti sono solo andati avanti lungo il sentiero, e che brontoleranno se arrivi troppo presto. Stranamente, ci credo senza fatica.",
		"'I morti camminano davanti: non affrettarti a raggiungerli', recita un detto tauren. Gentile e pratico, due cose che di rado stanno insieme.",
	},
	["muse.w12.sayings.051"] = {
		"I cacciatori tauren dicono che quello che prendi alla terra o lo ringrazi o lo lasci stare. Mi è venuta l'abitudine di un piccolo grazie, detto sottovoce.",
		"'Prendi ringraziando, o non prendere', dice il detto dei cacciatori tauren. Seguirlo non costa nulla, e ho notato che cambia il sapore del prendere.",
	},
	["muse.w12.sayings.052"] = {
		"Gli anziani tauren amano ricordare ai giovani che ogni sassolino un tempo era parte di una montagna. Rispetta le cose piccole, intendono. Da allora guardo la ghiaia con altri occhi.",
		"'Ogni sasso si ricorda di quando era montagna', è un detto tauren. Sii gentile con le cose piccole: hanno già perso parecchio.",
	},
	["muse.w12.sayings.053"] = {
		"Se si dà retta ai tauren, i quilboar hanno un detto: la spina si ricorda di ogni mano. Gente simpatica. Filosofia spinosa.",
		"I quilboar, a sentire certuni, dicono che una spina non dimentica mai la mano che l'ha afferrata. Più che saggezza, una minaccia con un buon portamento.",
	},
	["muse.w12.sayings.054"] = {
		"Nell'Undercity si dice che ciò che resiste oltre la morte era la parte che valeva la pena tenere. Una consolazione dura, nata da chi si è visto portare via moltissimo.",
		"Secondo i Reietti la morte spoglia di tutto tranne quello che contava. Cupo, e probabilmente meritato. Pochi detti sono costati tanto.",
	},
	["muse.w12.sayings.055"] = {
		"'La fretta è un vizio dei vivi', amano dire i Reietti. E lo dicono pure lentamente, il che dimostra il punto.",
		"Tra i Reietti, correre è considerato un'abitudine dei vivi, e se ne ride piano. A guardare chiunque aspetti in fila, capisco cosa intendono.",
	},
	["muse.w12.sayings.056"] = {
		"Alcuni Reietti dicono che il nome è la prima cosa che la morte si prende, e il rancore l'ultima. Spiegherebbe l'umore dell'Undercity.",
		"Il detto dei Reietti fa così: prima se ne va il nome, per ultimo il rancore. Chissà quale dei miei resisterebbe di più.",
	},
	["muse.w12.sayings.057"] = {
		"C'è un detto cupo dei Reietti: quel che la tomba non ha saputo trattenere, nessun muro lo tratterrà. Come minaccia, difficile ribattere.",
		"'Se la tomba l'ha lasciato andare, nient'altro lo terrà', dicono i Reietti di se stessi. Vanto e avvertimento in un'unica frase.",
	},
	["muse.w12.sayings.058"] = {
		"Si dice che gli speziali dell'Undercity scherzino che una cura e una pestilenza differiscono soprattutto per chi paga. Spero sia uno scherzo. Lo spero davvero.",
		"'Rimedio o veleno? Chiedi chi ha firmato l'ordine', dice un detto cupo della Royal Apothecary Society. Non rassicura, da gente che produce entrambi.",
	},
	["muse.w12.sayings.059"] = {
		"Le guardie dei Reietti, si racconta, sostengono che una porta la tiene chi si rifiuta più a lungo di cadere. Niente di glorioso. Efficacissimo.",
		"'Le porte le tengono i testardi, non i forti', ripetono le guardie dei Reietti. Aggiungerei: e gli annoiati.",
	},
	["muse.w12.sayings.060"] = {
		"I mercanti goblin hanno una regola: l'ultimo pezzo non si vende, si rincara. Con me funziona ogni volta, e la regola la conosco.",
		"'L'ultimo non è in vendita: è in vendita a più caro', dice il detto goblin. Saperlo non mi ha mai impedito di pagare.",
	},
	["muse.w12.sayings.061"] = {
		"Un detto dello Steamwheedle Cartel: ogni contratto è una gabbia, quindi trova la porta prima di firmare. Io non ho mai letto niente con tanta attenzione.",
		"'Un contratto si legge come si entra in una gabbia: cercando la porta', dicono i goblin. Sensato. Io firmo le cose come scaccio le mosche.",
	},
	["muse.w12.sayings.062"] = {
		"I goblin amano dire che la lealtà è una moneta che si spende una volta sola. Io direi che è l'unica che torna indietro, se la spendi bene.",
		"'La lealtà si spende una volta: spendila cara', recita il detto goblin. Non mi tornano i conti. Spesa bene, di solito ritorna.",
	},
	["muse.w12.sayings.063"] = {
		"A Booty Bay dicono che tutti sono onesti finché non si ritira la marea. Cosa c'entri la marea non lo so, e non lo chiedo.",
		"'Onesto con l'acqua alta', a Booty Bay, è chi è affidabile solo finché gli conviene. Ci rientra un numero sorprendente di persone.",
	},
	["muse.w12.sayings.064"] = {
		"I goblin raccomandano di non mercanteggiare mai con chi non ha altro posto dove andare: ti batte per sfinimento. Di solito quello con la fretta sono io.",
		"'Mai contrattare con chi ha tutto il tempo del mondo', dicono i mercanti goblin. Non è mai capitato che fossi io.",
	},
	["muse.w12.sayings.065"] = {
		"I venditori d'acqua di Gadgetzan dicono che la sete è l'unico cliente che non mercanteggia mai. Detto cupo. Ottimi affari.",
		"'La sete non tratta', dicono i mercanti d'acqua di Gadgetzan. La descrizione più onesta di un monopolio che abbia mai sentito.",
	},
	["muse.w12.sayings.066"] = {
		"Dai furbolg Timbermaw, raccontano, un ospite è accolto anche a mani vuote, purché siano mani di buona volontà. Una regola migliore di quella di molte locande.",
		"'Le mani vuote sono un dono, se portano legna', dice un detto furbolg, così mi raccontano. Ospitalità con un lavoro incluso. Giusto.",
	},
	["muse.w12.sayings.067"] = {
		"I furbolg hanno un detto: il marcio comincia nella tana, mai nel bosco. Visto cosa ha fatto la corruzione demoniaca a tante loro tribù, è un detto pagato caro.",
		"'La malattia arriva da casa prima che da fuori', dicono i Timbermaw. Con tante tribù furbolg impazzite dall'interno, ci credo.",
	},
	["muse.w12.sayings.068"] = {
		"I furbolg pensano che tutta la saggezza dell'orso stia nel mangiare quando può, dormire quando può e non preoccuparsi mai nel mezzo. Le prime due mi riescono.",
		"'Mangia, dormi e lascia le preoccupazioni agli scoiattoli', consiglia un detto furbolg. Mi piacerebbe tanto. A quanto pare, lo scoiattolo sono io.",
	},
	["muse.w12.sayings.069"] = {
		"Gli ogre hanno un detto, per quanto lo si riesca a tradurre: due teste, due pareri, una pancia sola, e decide la pancia. Certi consigli funzionano uguale.",
		"'Due teste litigano, vince lo stomaco', suona più o meno il detto degli ogre. Più di un regno si governa con lo stesso principio.",
	},
	["muse.w12.sayings.070"] = {
		"Pare che i magi ogre abbiano un detto: ogre furbo, sempre ogre. Detto da loro, lo trovo più onesto di metà delle lezioni dei dotti.",
		"'Ogre furbo, sempre ogre', borbotterebbero i magi degli ogre. Più umiltà in quattro parole che in tante biblioteche.",
	},
	["muse.w12.sayings.071"] = {
		"Un detto degli ogre, tradotto alla buona: più grossa la clava, più breve la discussione. Diplomazia da ogre. Molti con clave ben più piccole la seguono lo stesso.",
		"'Clava grossa, discorso corto', dicono gli ogre. Rozzo, ma parecchi signori risolvono le cose nello stesso modo, solo con modi migliori.",
	},
	["muse.w12.sayings.072"] = {
		"I marinai dicono che una nave non si perde mai: arriva in anticipo in un porto che nessuno aveva previsto. Lo adotto, a partire dalla prossima svolta sbagliata.",
		"'Non persi: in arrivo in un posto inatteso', come dicono i marinai. Un modo generoso di vedere le cose, e me lo prendo in prestito.",
	},
	["muse.w12.sayings.073"] = {
		"I marinai dicono che la cima che ti salva la vita è sempre una che hai arrotolato per noia. Il lavoro noioso è quasi sempre un regalo a un momento peggiore.",
		"'Arrotola bene la cima quando non succede niente: qualcosa succederà', dice un detto di bordo. Ci penso ogni volta che vorrei saltare un compito noioso.",
	},
	["muse.w12.sayings.074"] = {
		"A sentire i marinai, i guai imparano il tuo nome solo quando scendi a terra: in acqua sei soltanto uno scafo tra tanti. Capisco perché certi non sbarcano mai.",
		"'In coperta sei uno scafo, a terra sei un nome, con i debiti attaccati', dice la gente di mare. Per forza sembrano a disagio sulla terraferma.",
	},
	["muse.w12.sayings.075"] = {
		"I marinai giurano che ogni porto ha esattamente una taverna onesta, ed è sempre chiusa. Ho smesso di cercarla. Controllo i bicchieri e basta.",
		"'Una taverna onesta per porto, e ha la porta sbarrata', raccontano i marinai. Un buon consiglio travestito da battuta, come i loro consigli migliori.",
	},
	["muse.w12.sayings.076"] = {
		"I pescatori hanno un detto: una rete senza buchi non prende che acqua. Ho cominciato a perdonarmi qualche buco anch'io.",
		"'Una rete è fatta quasi tutta di buchi, eppure sfama il villaggio', amano dire i pescatori. Incoraggiante, per chi è pieno di lacune.",
	},
	["muse.w12.sayings.077"] = {
		"Chi pesca dice che dove i murloc cominciano a gorgogliare, i pesci hanno già fatto i bagagli. Seguirei il loro esempio.",
		"'Quando cantano i murloc, la pesca è finita', dicono i pescatori della costa. Saggi. Me ne andrei anch'io, e non solo per i pesci.",
	},
	["muse.w12.sayings.078"] = {
		"I capicarovana consigliano di viaggiare carichi a metà: il carro pieno attira i briganti, quello vuoto la compassione. La moderazione, praticata da chi è già stato derubato.",
		"'Mezzo carico: troppo poco per rapinarti, troppo per mendicare', dicono quelli delle carovane. La via di mezzo, alla lettera.",
	},
	["muse.w12.sayings.079"] = {
		"I banditori d'asta hanno un detto: una cosa vale esattamente quanto è disposto a pagare il secondo più testardo. Onesto, a suo modo, e un po' crudele.",
		"'Il prezzo lo fa chi si arrende per secondo', dice il detto dei banditori. Non è commercio: è una gara tra muli.",
	},
	["muse.w12.sayings.080"] = {
		"I venditori ambulanti sostengono che il cliente che discute più a lungo è quello che alla fine compra. Quelli zitti non avrebbero comprato comunque. Io ho fatto tutte e due le parti.",
		"'Chi mercanteggia sta già comprando', dicono i mercanti di strada. Il che fa di me un cliente molto prevedibile.",
	},
	["muse.w12.sayings.081"] = {
		"Pare che i soldati dell'Argent Dawn dicano: i morti non riposano mai, quindi i vivi è meglio che facciano i turni. Una fede pratica. La rispetto più di quella solenne.",
		"'I morti non hanno orari: tu tieni i tuoi a turni', direbbero quelli dell'Argent Dawn. Semplice, stanco e giusto.",
	},
	["muse.w12.sayings.082"] = {
		"I sergenti amano dire che una marcia dura insegna più di dieci bei discorsi. Ci credo, anche se un discorso me lo ascolterei volentieri.",
		"'Un piede con le vesciche impara prima di un orecchio pieno', dicono gli istruttori. Vero, purtroppo. Avrei gradito anche il discorso.",
	},
	["muse.w12.sayings.083"] = {
		"C'è un detto dei soldati: la paura è l'unica commilitona che non manca mai all'appello. Tanto vale imparare a marciarle accanto.",
		"'La paura risponde sempre all'appello', dicono i veterani. Ho smesso di sperare che dorma troppo e le ho trovato un posto nella fila.",
	},
	["muse.w12.sayings.084"] = {
		"I soldati amano dire che la ferita che ti ammazza è quella che l'orgoglio ti ha impedito di far vedere al cerusico. L'orgoglio, pare, tiene il suo conto dei morti.",
		"'L'orgoglio nasconde il taglio finché il taglio vince', dicono i vecchi militari. Ci penso quando mi viene da dire che sto bene.",
	},
	["muse.w12.sayings.085"] = {
		"Chi cura i feriti sul campo ha un detto cupo: quelli che urlano stanno bene, preoccupati per quelli zitti. Ci penso ogni volta che qualcuno tace troppo a lungo.",
		"'Il ferito che grida vive', dicono quelli che medicano in battaglia. È dai silenziosi che corrono. Mai sentito un detto così pratico e così triste.",
	},
	["muse.w12.sayings.086"] = {
		"Chi segue le tracce ha un detto: la pista più fresca, in qualunque bosco, di solito è la tua. È un avvertimento contro il girare in tondo. Vale anche per i pensieri.",
		"'Le orme più nuove sono quasi sempre le tue', amano dire gli esploratori. Mi capita abbastanza spesso di inseguire i miei pensieri in cerchio per crederci.",
	},
	["muse.w12.sayings.087"] = {
		"I maestri di volo dicono che una cavalcatura che conosce la strada va ringraziata, non guidata. A parecchia gente farebbe bene sentirselo dire, e non solo sulle cavalcature.",
		"'Non guidare chi sa già la strada: ringrazialo', dicono quelli che badano alle bestie dei nidi. Un buon consiglio per chiunque ami comandare.",
	},
	["muse.w12.sayings.088"] = {
		"Chi raccoglie erbe avverte che il fiore più bello di una palude è sempre quello che ti fa star male. Le cose belle hanno parecchio da farsi perdonare.",
		"'Cogli la foglia modesta, lascia quella vistosa', dicono gli erboristi. Un consiglio che allargherei ben oltre le piante.",
	},
	["muse.w12.sayings.089"] = {
		"Gli osti dicono che chi paga in anticipo dorme peggio, sveglio a fare i conti. Non ho mai capito se sia saggezza o un trucco per vendere un altro boccale.",
		"'Pagato prima, sveglio dopo', dicono gli osti dei clienti in ansia. Saggezza, forse. O un modo per vendere il boccale che aiuta a far tornare i conti.",
	},
	["muse.w12.sayings.090"] = {
		"Ogni tavolo è un confine, dicono gli osti, e ogni panca condivisa è un trattato. Alcuni dei posti più pacifici che conosca sono panche lunghe.",
		"Gli osti amano dire che una panca affollata ha chiuso più faide di qualsiasi ambasciatore. Non ne dubito. È difficile odiare chi ti divide il gomito.",
	},
	["muse.w12.sayings.091"] = {
		"Gli osti sostengono di leggere tutta la storia di un viaggiatore dagli stivali, prima che apra bocca. Ho preso a nascondere i miei sotto il tavolo.",
		"'Ascolta gli stivali, non la bocca', è un detto da osteria sui clienti. I miei racconterebbero storie imbarazzanti.",
	},
	["muse.w12.sayings.092"] = {
		"I nani dicono di non fidarsi mai di un pavimento che non hai scavato tu. Questa me la tengo.",
		"'Non fidarti di un suolo che non hai scavato', dicono i nani. Gente sensata.",
	},
	["muse.w12.sayings.093"] = {
		"I goblin chiamano affare una perdita che ti ha sorriso per prima. Da ricordare alla prossima bancarella.",
		"'Un affare è una perdita educata.' Saggezza goblin. Me la sento in testa ogni volta che apro il borsello.",
	},
	["muse.w12.sayings.094"] = {
		"I tauren dicono che una strada lunga accorcia la lingua. Basta chiacchiere, allora.",
		"Strada lunga, lingua corta, come dicono i tauren. Quindi: silenzio.",
	},
	["muse.w12.sayings.095"] = {
		"Un vecchio detto orchesco: chi si vanta per primo torna a casa zoppicando per ultimo. Preso nota.",
		"'Chiassoso all'andata, zoppo al ritorno.' Proverbio degli orchi. Bello.",
	},
	["muse.w12.sayings.096"] = {
		"Mai fidarsi, dicono i marinai, di chi giura di non aver mai sofferto il mal di mare. Giusto. Io non mi fido nemmeno di chi non si è mai perso.",
		"'Mai avuto il mal di mare? O non sei mai salito su una nave, o non sei sincero.' Saggezza da marinai. Difficile ribattere.",
	},
	["muse.w12.sayings.097"] = {
		"L'ultimo giro, dicono gli osti, è sempre quello che la gente ricorda male. Tanto per dire.",
		"'L'ultimo giro nessuno lo ricorda giusto', dicono gli osti. Allora lo salto.",
	},
	["muse.w12.sayings.098"] = {
		"Gli gnomi dicono che non esistono incidenti, solo esperimenti fuori programma. Allora ultimamente ho fatto parecchia scienza.",
		"'Niente incidenti, solo prove non previste', dicono gli gnomi. A quel conto, faccio ricerca a tempo pieno.",
	},
	["muse.w12.sayings.099"] = {
		"Saggezza troll: non scappare da quello che puoi aspettare. Allora aspetto.",
		"'Ciò che si può aspettare non serve batterlo in corsa', dicono i troll. Pazienza, dunque.",
	},
	["muse.w12.sayings.100"] = {
		"I soldati dicono che il veterano si riconosce da quanto in fretta si siede. Ecco, così.",
		"'Il veterano si siede per primo', dicono i soldati. Mi siedo.",
	},
	["muse.w12.sayings.101"] = {
		"Nella testa di un nano, un boccale vuoto è una domanda che aspetta risposta. Lasciarla in sospeso è scortese.",
		"'Un boccale vuoto fa una domanda', dicono i nani. Qualcuno dovrebbe rispondere.",
	},
	["muse.w12.sayings.102"] = {
		"I Reietti dicono che il rancore si conserva meglio della carne. Gente allegra.",
		"'La carne marcisce, il rancore si conserva.' Detto dei Reietti. Delizioso.",
	},
	["muse.w12.sayings.103"] = {
		"Lupo zitto, lupo affamato, dicono gli orchi. Questo spiega il mio silenzio.",
		"'Il lupo che tace ha fame', dicono gli orchi. Ecco il perché del mio umore.",
	},
	["muse.w12.sayings.104"] = {
		"Gli ogre hanno un detto: conta le tue teste prima di attaccar briga. Più facile per alcuni che per altri.",
		"'Prima conta le tue teste', dice il detto degli ogre. Una, nel mio caso. Me la tengo stretta.",
	},
	["muse.w12.sayings.105"] = {
		"I mandriani dicono che un kodo non dimentica né una carezza né un calcio. Nemmeno io, a dirla tutta.",
		"'Il kodo ricorda calci e gentilezze', dicono i mandriani. Pure io.",
	},
}, "base_monologues")
