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
}, "base_monologues")
