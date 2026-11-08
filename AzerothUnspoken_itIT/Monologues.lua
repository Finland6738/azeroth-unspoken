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
}, "base_monologues")
