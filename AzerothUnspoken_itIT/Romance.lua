-- Testi italiani del romanticismo attivo (ADR 0061, step R3). Le regole stanno in Data/RegistryRomance.lua, le risposte
-- di corteggiamento in Data/RomanceFlirts.lua. Il livello 1 è cortese, il 2 intimo e pudico (sfuma nel buio); niente
-- sui minori, niente che il gioco non mantenga, mai pubblico. {g:} si accorda al personaggio, {og:} all'NPC.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- the NPC welcomes a flirt
	---------------------------------------------------------------------------
	["rom.welcome.t1.n1"] = {
		"Ecco. Ho dimenticato cosa stavo per dire, e non mi dispiace affatto.",
		"Mi farai arrossire davanti a tutti. Continua pure, te lo concedo.",
		"Gentile, e inatteso. E adesso non riesco più a smettere di sorridere.",
	},
	["rom.welcome.t1.n2"] = {
		"Piano, piano: una giornata che va così rischia di diventare la mia preferita.",
		"Stamattina avevo una lunga lista di pensieri. Adesso non la trovo più.",
		"Ah! Hai più coraggio di tanti che passano di qui. E mi piace più di quanto dovrebbe.",
	},
	["rom.welcome.t1.n3"] = {
		"Mm. Me lo ricorderò quando la giornata si farà grigia, e servirà.",
		"Un'ora qualunque, e all'improvviso sembra festa.",
		"Se continui così, finirò per alzare gli occhi ogni volta che sento dei passi.",
	},
	["rom.welcome.t2.n1"] = {
		"Vieni più {g:vicino|vicina}. L'ora è quieta, e per una volta non vorrei essere altrove.",
		"Resta. Così, ancora un poco; il mattino troverà la strada da solo.",
		"Hai la mano calda. Lasciala dov'è, e lascia che parli piano, solo per te.",
	},
	["rom.welcome.t2.n2"] = {
		"Stanotte non ho niente da dire. Appoggiati qui, e lascia parlare il silenzio.",
		"Lo speravo. Tieni bassa la lampada, e resta.",
		"Shh. Un bacio, e poi lasciami posare la testa sulla tua spalla finché la candela non si spegne.",
	},
	["rom.welcome.t1.cheerful"] = {
		"Ah! Ecco, la giornata era già bella, e adesso è perfetta.",
		"Smettila, o mi metto a ridere davanti a tutti... No, aspetta. Non smettere.",
		"Guarda che adesso sorrido al vuoto per tutto il giorno, e la gente mi chiederà perché.",
	},
	["rom.welcome.t1.gruff"] = {
		"Mph. Non guardarmi così. ...Be', nemmeno smettere, però.",
		"Bah, lusinghe. Con me non attaccano mai. ...Quasi mai, ecco.",
		"Va bene. Va bene! È stato un pensiero gentile. L'ho detto, non farmelo ripetere.",
	},
	["rom.welcome.t1.stoic"] = {
		"L'ho notato. E mi fa piacere.",
		"Un gesto gentile. Lo terrò con me.",
		"Poche cose arrivano fin qui, ormai. Questa sì.",
	},
	["rom.welcome.t1.melancholic"] = {
		"Oh. Avevo dimenticato com'è avere il cuore leggero senza un motivo.",
		"Strano. Stamattina il cielo mi sembrava grigio, e ora sorrido.",
		"Non mi fido dei momenti così, durano poco. Ma questo me lo godo lo stesso.",
	},
	["rom.welcome.t1.merciful"] = {
		"È un gesto delicato. Grazie: mi scalda più di quanto immagini.",
		"Fatto con garbo. Sono felice che sia arrivato proprio a me.",
		"Passo le giornate a prendermi cura degli altri. È dolce, per una volta, che qualcuno lo faccia con me.",
	},
	["rom.welcome.t1.fierce"] = {
		"Audace. Mi piace l'audacia. Non perdere il coraggio proprio adesso.",
		"Bene. Senza giri di parole: è così che piace a me.",
		"Hai tutta la mia attenzione. Vediamo se sai tenertela.",
	},
	["rom.welcome.t1.resolute"] = {
		"Te lo dico sinceramente: mi ha fatto piacere. Più di quanto pensassi.",
		"Su queste cose non faccio giochi. Quindi, chiaro e tondo: mi è piaciuto.",
		"Non fingerò che non mi abbia fatto piacere. Me l'ha fatto, eccome, e non me ne vergogno.",
	},
	["rom.welcome.t1.innkeeper"] = {
		"Attenzione, o finirò per riempirti il boccale prima ancora che tu lo chieda. Siediti in fondo al banco, dove ti vedo.",
		"Mezza sala mi chiama, e io sto qui a sorriderti senza ritegno. Su, dillo ancora.",
		"Così mi fai rovesciare la birra. È la cosa più dolce che mi sia arrivata oltre questo banco da giorni.",
	},
	["rom.welcome.t1.guard"] = {
		"Dovrei tenere d'occhio la strada, lo sai. Con te lì davanti diventa difficile.",
		"In servizio io non sorrido mai. Guarda cosa mi fai fare.",
		"Resta un momento, allora. Per un respiro la strada può badare a se stessa.",
	},
	["rom.welcome.t1.merchant"] = {
		"Ho pesato monete tutto il giorno, e niente valeva quanto questo. Appoggiati al banco, resta un po'.",
		"Ecco, ho perso il conto della merce. Darò la colpa a te, e volentieri.",
		"Questo non ha prezzo, e non lo venderei nemmeno se lo avesse. Continua a parlare.",
	},
	["rom.welcome.t1.trainer"] = {
		"La prossima lezione può aspettare. Preferisco sentirtelo ripetere, piano.",
		"Insegno a non distrarsi, ed ecco che mi hai fatto perdere il filo. Bel colpo.",
		"Tra un esercizio e l'altro di solito non arrossisco. Prendilo come un onore.",
	},
	["rom.welcome.t1.questgiver"] = {
		"Un attimo fa avevo cento pensieri su questo tavolo. Adesso non ne trovo più nemmeno uno.",
		"Lavoro, sempre lavoro. Poi arrivi con una frase così, e tutto tace.",
		"Sei un guaio che fa piacere. Siediti un po': carte e liste non scappano.",
	},
	["rom.welcome.t2.cheerful"] = {
		"Vieni qui, allora. No, più vicino. Ecco. Adesso non smetto più di sorridere, e non voglio smettere.",
		"Sst, con le mie risate sveglio tutta la locanda. Baciami, così mi zittisci.",
		"Il fuoco è basso e la notte è nostra. Resta un po', e lasciami scaldare la tua mano nella mia.",
	},
	["rom.welcome.t2.gruff"] = {
		"Mph. Vieni qua, allora. ...E non dire a nessuno che l'ho detto così piano.",
		"Bah. Sarai la mia rovina. Resta. Resta e basta.",
		"Silenzio, adesso. Neanche una parola. Lasciati stringere un po'.",
	},
	["rom.welcome.t2.stoic"] = {
		"Resta. Stanotte non voglio altro.",
		"Vieni qui. Per questo non ho parole. Solo questo.",
		"La notte è quieta. Che lo sia con te accanto.",
	},
	["rom.welcome.t2.melancholic"] = {
		"Un tempo avevo paura delle notti. Non di questa. Restami accanto, e lasciami crederci.",
		"Stringimi un momento. Voglio ricordarmi com'è.",
		"Ogni felicità che ho avuto se n'è andata prima dell'alba. Stanotte mi ci aggrappo un po' più forte.",
	},
	["rom.welcome.t2.merciful"] = {
		"Appoggia qui la testa. Stanotte nessuno ha bisogno di niente da te.",
		"Lasciami prendere la tua mano, e tenerla. Il mondo può aggiustarsi da solo fino a domattina.",
		"Vieni, siediti accanto a me. Io tengo lontano il freddo, e tu tieni me. Mi pare giusto, no?",
	},
	["rom.welcome.t2.fierce"] = {
		"Basta parole. Vieni qui e baciami.",
		"Ho aspettato tutto il giorno questo momento. Non farmi aspettare ancora.",
		"Resta stanotte. Te lo chiedo chiaro, perché non so chiederlo in altro modo.",
	},
	["rom.welcome.t2.resolute"] = {
		"Ogni parola che ti ho dato la pensavo davvero. Stanotte lasciamelo dire semplice: resta.",
		"Niente discorsi. Solo questo: sono felice che qui ci sia tu, e voglio che resti.",
		"Stringimi, e che i doveri di domani aspettino il loro turno.",
	},
	["rom.welcome.t2.innkeeper"] = {
		"L'ultimo ospite è salito. Resta accanto al fuoco con me: non ho più niente da versare, se non tempo.",
		"Vieni qui. È tutta la sera che aspetto che la sala si svuoti.",
		"Lasciami coprire le braci. Poi stringimi, e che tutta la locanda dorma.",
	},
	["rom.welcome.t1.glance"] = {
		"Oh. Mi stavi guardando. Credo di averlo fatto anch'io, e ora siamo pari.",
		"Quello sguardo mi costerà un'ora di pensieri. Il prezzo non mi dispiace.",
		"Puoi continuare a guardare. Farò finta di avere da fare, e non mi riuscirà.",
	},
	["rom.welcome.t1.compliment"] = {
		"Ripetilo, piano, così stavolta ci credo.",
		"Era da tanto che nessuno mi diceva una cosa così bella. La terrò al sicuro.",
		"Lusinghe! E proprio da te. Be', ho le orecchie in fiamme: hai vinto tu.",
	},
	["rom.welcome.t1.gift"] = {
		"Per me? Mm. Gli troverò un posto dove possa vederlo ogni giorno.",
		"È piccolo, ed è proprio per questo che mi piace. Grazie.",
		"L'hai portato fin qui? Allora dovrò averne cura.",
	},
	["rom.welcome.t1.walk"] = {
		"Una passeggiata? Sì. Ma piano: voglio che duri.",
		"Lascia che metta giù questo. Ecco, ho le mani libere, e anche la prossima ora.",
		"Speravo che qualcuno me lo chiedesse. Non mi aspettavo che fossi tu, e mi fa piacere così.",
	},
	["rom.welcome.t1.invite"] = {
		"Siediti, allora. La sedia accanto alla mia è rimasta vuota abbastanza.",
		"Quando il lavoro è finito, non c'è nessuno con cui dividerei più volentieri il silenzio.",
		"Sì. Prendi uno sgabello e non badare al disordine: anche lui aspettava compagnia.",
	},
	["rom.welcome.t1.beloved"] = {
		"Ah, cuore mio. Tutto il resto, qui, è appena diventato un po' meno importante.",
		"Pensavo a te proprio un attimo fa, ed eccoti, come se ti avessi {g:chiamato|chiamata}.",
		"Vieni qui, amore. Lasciami guardarti prima che la strada ti riprenda.",
	},
	["rom.welcome.t2.beloved"] = {
		"Vieni da me, amore. Stanotte non c'è nessun altro al mondo, e mi va bene così.",
		"Chiudi la porta. Baciami una volta, e poi un'altra, e poi smettiamo di contare.",
		"Resta accanto a me stanotte. Il buio è più dolce se ti sento respirare.",
	},
	---------------------------------------------------------------------------
	-- the NPC stays cold
	---------------------------------------------------------------------------
	["rom.cold.t1.n1"] = {
		"Molto gentile. Oggi però ho la testa piena di altre cose.",
		"Come? Ah. Scusami, stavo contando una cosa, e ora ho perso il conto.",
		"Un pensiero gradito. Per ora lasciamolo lì, che ne dici?",
	},
	["rom.cold.t1.n2"] = {
		"Che pensiero dolce. Non so ancora cosa farne, quindi ti dico solo grazie.",
		"Forse. La giornata è stata lunga e ho la testa altrove; perdonami.",
		"Lo prendo come una cortesia, e niente di più, se per te va bene.",
	},
	["rom.cold.t1.n3"] = {
		"Ah. Mi lusinghi, davvero, ma c'è del lavoro che aspetta, e non aspetta volentieri.",
		"Prima l'amicizia, credo. Poi si vedrà cosa ne faranno le stagioni.",
		"Bel pensiero. Ma il mio cuore è una bestia lenta: non corre al primo richiamo.",
	},
	["rom.cold.t2.n1"] = {
		"Non stanotte, cuore mio. Ho talmente sonno che i muri ondeggiano. Siediti con me, piuttosto.",
		"Il pensiero è dolce. Ma ho la testa piena della giornata; lasciami solo appoggiare a te e respirare.",
		"Forse più tardi, quando le spalle smetteranno di farmi male. Per ora mi basta la tua compagnia.",
	},
	["rom.cold.t2.n2"] = {
		"Vorrei, e stanotte non ci riesco del tutto. Tienimi la mano: questo posso dartelo.",
		"Rendi difficile dire di no. Allora non è un no: è solo un non ancora, non stanotte.",
		"Ho già gli occhi che si chiudono. Raccontami piuttosto qualcosa di dolce, e continua finché non mi addormento.",
	},
	["rom.cold.t1.cheerful"] = {
		"Ah! Gentile, davvero. E adesso, cos'altro posso fare per te?",
		"Mi farai ridere nel momento sbagliato. Torniamo alle nostre faccende, eh?",
		"Bel pensiero, me lo metto da parte. Ma oggi no: oggi è una giornata piena!",
	},
	["rom.cold.t1.gruff"] = {
		"Mph. Non è il momento, e nemmeno il posto.",
		"Mm. Preso nota. Altro, o abbiamo finito?",
		"Risparmia le smancerie. Ho già abbastanza da fare così.",
	},
	["rom.cold.t1.stoic"] = {
		"Capisco. Lasciamola lì, per ora.",
		"Un pensiero gentile. Oggi ho la testa altrove.",
		"Preferisco non rispondere, per adesso.",
	},
	["rom.cold.t1.melancholic"] = {
		"Sei gentile. Ma oggi ho il cuore troppo pesante per risponderti come si deve.",
		"Ci sono giorni in cui anche una gentilezza fa un po' male. Oggi è uno di quelli.",
		"Ah... forse in un giorno più luminoso. Questo mi pare tutto grigio.",
	},
	["rom.cold.t1.merciful"] = {
		"È un pensiero dolce, e ti ringrazio. Però per ora preferisco che parliamo e basta.",
		"Non lo prendo alla leggera. Ma oggi ho i pensieri altrove; perdonami.",
		"Sei gentile. Lascia che lo tenga con cura, e lo metta da parte per un po'.",
	},
	["rom.cold.t1.fierce"] = {
		"Non adesso. Non ne ho voglia, e non fingerò il contrario.",
		"Audace da parte tua. Ma oggi no.",
		"Ci vuole altro per farmi girare la testa. Altro?",
	},
	["rom.cold.t1.resolute"] = {
		"Te lo dico chiaro: non è il momento. Restiamo su quel che abbiamo davanti.",
		"Lo apprezzo. Ma oggi ho dei doveri per la testa, e vengono prima.",
		"Non c'è niente di male. Solo che una risposta, per ora, non ce l'ho.",
	},
	["rom.cold.t1.innkeeper"] = {
		"Gentile da parte tua. Ma la cucina mi chiama, e la cucina non aspetta mai.",
		"Al terzo boccale lo sento dire da mezza sala. Comunque, grazie del pensiero.",
		"Ho una dozzina di tavoli da sparecchiare. Chiedimi piuttosto qualcosa di caldo da bere.",
	},
	["rom.cold.t1.guard"] = {
		"Non mentre sono di guardia. Vai pure, e occhio alla strada.",
		"Lusinghiero. Ma mi pagano per guardare la strada, non te.",
		"Mh. Preso nota. Ora, se non hai guai da segnalare, sto lavorando.",
	},
	["rom.cold.t1.merchant"] = {
		"Le belle parole non mi rimettono in ordine il banco, mi spiace. Ti serviva qualcosa?",
		"Non immagini quante persone ci provino, a questo banco. Cosa ti incarto?",
		"Gentile. Il registro, purtroppo, della gentilezza non sa che farsene. Lasciami finire questa colonna.",
	},
	["rom.cold.t1.trainer"] = {
		"Tieni quel fascino per il gioco di gambe: ne ha più bisogno lui.",
		"Belle parole. Preferirei vedere lo stesso slancio negli esercizi.",
		"Concentrazione. Prima le lezioni, e la lezione adesso non sono io.",
	},
	["rom.cold.t1.questgiver"] = {
		"Mh? Scusami, ho la testa piena di rapporti. Cosa dicevi?",
		"È gentile, davvero. Ma oggi su questo tavolo c'è troppo per pensare ad altro.",
		"Non ho spazio nei pensieri per questo, non con tutto quello che mi aspetta. Non prenderla male.",
	},
	["rom.cold.t2.innkeeper"] = {
		"Non stanotte. Sono a pezzi, e voglio che tu riposi più di ogni altra cosa.",
		"Piano, c'è ancora qualcuno al tavolo d'angolo. Siediti un po' con me, e per ora basta così.",
		"Baciami la mano, e che stanotte basti questo. Le scale sono lunghe, e la mia giornata lo è stata di più.",
	},
	["rom.cold.t1.beloved"] = {
		"Perdonami, amore, oggi ho la testa altrove. Restami accanto: tornerò in me.",
		"Sono felice che tu sia qui, davvero. È solo che ho tanto sonno che anche sorridere mi pesa.",
		"Non ora, cuore mio. La giornata è stata una folla di piccoli guai. Parlami di qualcosa di semplice.",
	},
	["rom.cold.t1.other"] = {
		"Ho sentito che qualcuno ha già il tuo cuore. Allora restiamo alle parole gentili, e leggere.",
		"Parole gentili. Ma tieni le più calde per chi ti aspetta; credo che qualcuno ci sia.",
		"Ah. Hai già qualcuno, se le voci non mentono. Restiamo in amicizia, noi due.",
	},
	---------------------------------------------------------------------------
	-- the NPC refuses, kindly
	---------------------------------------------------------------------------
	["rom.refuse.t1.n1"] = {
		"No, mi dispiace. Il mio cuore non è lì, e fingere non sarebbe giusto. La tua amicizia, però, la terrei volentieri.",
		"Sei gentile, ma la risposta è no. Per il resto tra noi non cambia niente; passa quando vuoi.",
		"Devo dirti di no, e dirlo chiaro, perché non resti alcun dubbio. Non è colpa tua, e per me resti {g:un amico|un'amica}.",
	},
	["rom.refuse.t1.n2"] = {
		"Ah. No, questo no. Ma siediti, se vuoi, e parliamo d'altro, come fanno gli amici.",
		"Non cerco nessuno, e preferisco dirtelo subito che lasciarti sperare. Un'amicizia, invece, volentieri.",
		"Quella porta per me è chiusa. L'altra, quella dell'amicizia, resta aperta.",
	},
	["rom.refuse.t1.n3"] = {
		"Grazie, davvero. Ma no. Spero che potremo ancora scambiarci un sorriso da lontano.",
		"La mia risposta è no, ma è un no gentile. Non portartelo dietro come un peso.",
		"Mi scalda il cuore, eppure devo dire di no. Per me un'amicizia vale più di un groviglio.",
	},
	["rom.refuse.t2.n1"] = {
		"No, amore, non stanotte. Non sei tu: è qualcosa in me che ha bisogno di quiete. Restami accanto, ma solo accanto.",
		"Preferisco di no, e preferisco dirtelo che fingere. Tra noi non cambia nulla per questo.",
		"Questo no, non stanotte. Abbracciami come farebbe un amico, e ne sarò felice.",
	},
	["rom.refuse.t2.n2"] = {
		"Il cuore dice sì e tutto il resto dice no, e stanotte ascolto il resto. Perdonami.",
		"No. Non per qualcosa che hai fatto. Chiedimi piuttosto una storia: quella posso dartela.",
		"Stanotte no. Avvicina piuttosto una sedia al fuoco, e guardiamolo spegnersi insieme.",
	},
	["rom.refuse.t1.cheerful"] = {
		"No, non in quel senso. Ma un'amicizia che mi fa sorridere non la voglio perdere, quindi resta pure.",
		"Ah, no, no. Il mio cuore non va da quella parte, mi dispiace. Un'amicizia, però? Quella sì, volentieri.",
		"Rido con te quando vuoi, ma non in quel modo. Come amicizia, però, la porta è spalancata.",
	},
	["rom.refuse.t1.gruff"] = {
		"No. Non così. ...Qui la porta resta aperta, eh. Solo, non così.",
		"Bah. Lascia stare. I corteggiamenti non fanno per me. Ma non vuol dire che ti voglia lontano.",
		"No. Più chiaro di così non so dirlo. Però un'amicizia resta un'amicizia, se la vuoi.",
	},
	["rom.refuse.t1.stoic"] = {
		"No. Ti stimo, e questo non cambierà.",
		"Non posso ricambiare. L'amicizia, invece, vorrei tenerla.",
		"La risposta è no. Ma non è una porta che si chiude su tutto.",
	},
	["rom.refuse.t1.melancholic"] = {
		"Mi dispiace. Dentro di me non c'è più spazio per questo. Ma ti prego, non smettere di parlarmi.",
		"Meriti un cuore meno stanco del mio. Il mio può darti amicizia, se la vuoi.",
		"Sarebbe crudele dirti di sì senza crederci. Un'amicizia, invece? Quella mi farebbe più piacere di quanto sappia dire.",
	},
	["rom.refuse.t1.merciful"] = {
		"Mi commuove, davvero. Ma non posso rispondere come chiederebbe. La tua compagnia, in amicizia, mi resta cara.",
		"Te lo dico con dolcezza, perché la dolcezza è dovuta: no. E con la stessa dolcezza ti dico che sei sempre {g:il benvenuto|la benvenuta}.",
		"Il mio cuore è rivolto ad altro. Questo non toglie nulla a te, né all'amicizia che già condividiamo.",
	},
	["rom.refuse.t1.fierce"] = {
		"No. Te lo dico dritto, così non ci sono dubbi. Ma in uno scontro starei al tuo fianco, sempre.",
		"Non in quel senso, proprio no. Ma la mia amicizia ce l'hai, e non la do a chiunque.",
		"No. Ci tengo troppo alla nostra amicizia per mentirti.",
	},
	["rom.refuse.t1.resolute"] = {
		"Ti devo la verità: no. Ma la tua amicizia per me conta, e continua a contare.",
		"No. Ci ho pensato, e la risposta è no. Tra noi non cambia nient'altro.",
		"Non ti do un forse quando intendo un no. Ma la mia stima per te resta intera.",
	},
	["rom.refuse.t1.innkeeper"] = {
		"Te lo dico con garbo e senza giri: no. Ma da amici, ai miei tavoli c'è sempre posto per te.",
		"Questo non posso dartelo. Un orecchio amico dall'altra parte del banco, quello sì.",
		"Lasciamo stare, d'accordo? Mi fa piacere averti qui, e voglio che tra noi resti tutto semplice.",
	},
	["rom.refuse.t1.guard"] = {
		"No. Non lo dico con durezza, ma è no. Da questa postazione avrai sempre un cenno amico.",
		"Preferisco lasciare le cose come stanno: tu sulla strada, io sulle mura, e un'amicizia in mezzo.",
		"La risposta è no, e te lo dico dritto perché è quello che meriti. Per il resto, tra noi non cambia niente.",
	},
	["rom.refuse.t1.merchant"] = {
		"È una merce che non tratto, temo. Ma qui al banco sarai sempre di casa.",
		"No, con dolcezza ma no. Mi dispiacerebbe perdere un'amicizia per un malinteso.",
		"Negli affari l'onestà paga, quindi te lo dico: no. E spero che passerai ancora a fare due chiacchiere.",
	},
	["rom.refuse.t1.trainer"] = {
		"No. Preferisco insegnarti e restare in amicizia, e fermarmi lì.",
		"È un confine che non passo con chi addestro. Non lasciare che guasti le lezioni.",
		"Te lo dico chiaro: no. La mia amicizia non va da nessuna parte, e nemmeno le lezioni.",
	},
	["rom.refuse.t1.questgiver"] = {
		"No, e preferisco dirlo subito piuttosto che lasciarlo sospeso tra noi. Tengo alla tua amicizia, davvero.",
		"Il mio cuore non ha spazio per questo, non con tutto quello che porto. Ma la tua compagnia mi fa piacere lo stesso.",
		"Mi dispiace, no. Non lasciare che questo ti allontani dal mio tavolo: un'amicizia vale più di tutte queste carte.",
	},
	["rom.refuse.t1.other"] = {
		"No. Per te c'è già qualcuno, e non voglio essere un'ombra su questo. Se ti serve un'amicizia, però, ci sono.",
		"Non posso dirti di sì, non mentre qualcun altro ti aspetta. Per qualsiasi altra cosa, chiedi pure.",
		"Il tuo cuore ha già chi lo custodisce, mi dicono, e non lo prendo in prestito. La mia amicizia, quella sì, è tua.",
	},
	---------------------------------------------------------------------------
	-- the beloved, jealous, opens the dialogue
	---------------------------------------------------------------------------
	["rom.jealous.n1"] = {
		"Mi è giunta voce che i tuoi sorrisi abbiano viaggiato. Non chiedo dove: brucia già abbastanza così.",
		"Qualcuno mi ha raccontato che hai fatto gli occhi dolci a un'altra persona. Provo a riderci sopra. Dammi un momento.",
		"Oggi ho sentito una cosa che non mi è piaciuta. Per un po' sarò un filo distante, poi passerà.",
	},
	["rom.jealous.n2"] = {
		"Dunque. Le chiacchiere sono arrivate da me prima di te.",
		"Mi dicono che un'altra persona abbia avuto le tue attenzioni. Avrei preferito non sentire niente.",
		"Non badare al mio silenzio. Mi è arrivata all'orecchio una cosa, e non se n'è ancora andata.",
	},
	["rom.jealous.n3"] = {
		"Dicono che tu sia {g:stato|stata} dolce con un'altra persona. Magari dicono male. Sentirlo ha fatto male lo stesso.",
		"Non ce l'ho con te. Ho solo un piccolo livido, e i lividi passano.",
		"Mh. Perdonami se oggi la mia accoglienza è un po' più fresca. Le voci corrono, e sono arrivate fino a me.",
	},
	["rom.jealous.n4"] = {
		"Lo so che sono solo chiacchiere. Ma anche le chiacchiere pungono, e queste l'hanno fatto.",
		"Oggi è passata una voce con dentro il tuo nome. L'ho mandata via, ma qualcosa ha lasciato.",
		"Ciao. No, niente. Ho solo sentito una cosa, tutto qui, e ci sto ancora rimuginando.",
	},
	["rom.jealous.cheerful"] = {
		"Ah! Sento che quel tuo sorriso ha fatto un bel giro. Tienine un po' anche per me, va bene?",
		"Ebbene! Oggi un uccellino mi ha cantato una storia su di te. Ne rido, quasi del tutto. Quasi.",
		"Mi fa sempre piacere vederti. Solo un pizzico meno di ieri, per colpa delle chiacchiere.",
	},
	["rom.jealous.gruff"] = {
		"Ho sentito delle voci. Non mi sono piaciute. Fine.",
		"Mpf. La gente parla, e oggi parlava di te. Lasciami brontolare un po'.",
		"Non sono tipo da scenate. Ma quel che ho sentito l'ho sentito, e mi resta sullo stomaco.",
	},
	["rom.jealous.stoic"] = {
		"Mi hanno parlato di un corteggiamento. Non fingerò che la voce non mi sia arrivata.",
		"Non è nulla che non possa sopportare. Ma mi è arrivato, ed è giusto che tu lo sappia.",
		"Mi sono giunte certe voci. Ho l'animo calmo. E fa male lo stesso: le due cose stanno insieme.",
	},
	["rom.jealous.melancholic"] = {
		"Oggi ho sentito una cosa, e la sera mi è sembrata più grigia.",
		"Forse stringo le cose troppo forte. Eppure la voce è arrivata fino a me, e mi pesa.",
		"Ah, eccoti. Me ne stavo qui con un piccolo pettegolezzo triste. Passerà, credo.",
	},
	["rom.jealous.merciful"] = {
		"Mi è giunta voce di un corteggiamento altrove. Non te ne faccio una colpa, ma non fingo che non abbia punto.",
		"Perdono facilmente. Vorrei solo che oggi ci fosse meno da perdonare.",
		"Ho saputo, e scelgo di essere gentile al riguardo. Gentile, ma con un po' di male.",
	},
	["rom.jealous.fierce"] = {
		"Ho saputo. Non mi fa piacere, e non fingerò il contrario.",
		"Mi sono arrivate certe voci, e il sangue mi è salito alla testa. Sta scendendo. Piano.",
		"Lascia parlare me, prima. Ho la luna storta, e preferisco dirlo onestamente che sorridere e mentire.",
	},
	["rom.jealous.resolute"] = {
		"Ho sentito cosa si dice. In me non cambia nulla, ma ha fatto male, e te lo dico.",
		"Oggi mi è arrivata una voce. Ho deciso che non mi scuoterà, anche se ci ha provato.",
		"Non sono tipo da tenere il muso. Ma devi sapere che quello che ho sentito non mi è andato giù.",
	},
	---------------------------------------------------------------------------
	-- the scenes of the romance popup (the narrator)
	---------------------------------------------------------------------------
	["rom.scene.declaration.open.n1"] = {
		"Gli altri se ne sono andati, e per una volta tra te e {other} non c'è nessun lavoro di mezzo. Il silenzio si allunga, comodo e un poco pericoloso. Se c'è qualcosa da dire, un momento migliore non verrà.",
		"{other} ti porge una coppa e le vostre dita si incontrano attorno al bordo; la presa non si scioglie subito. Segue una risata, un po' senza fiato, che non finisce del tutto. Quello che viene dopo spetta a te: dirlo, o tenerlo per te.",
		"{other} canticchiava sottovoce e si interrompe a metà di una nota quando si accorge di te. Il sorriso che segue è timido e largo insieme. L'aria è sottile, piena di cose non dette.",
	},
	["rom.scene.declaration.open.n2"] = {
		"«No, prima tu» dice {other}, dopo aver cominciato due volte una frase e averla lasciata a metà. Il colore sulle guance tradisce più delle parole. A quanto pare, tocca a te.",
		"I vostri sguardi si incontrano sopra una faccenda qualunque, e stavolta {other} non ci scherza sopra. Un lieve rossore, un respiro trattenuto. Parlare adesso sarebbe la cosa più facile del mondo, e la più difficile.",
		"«Hai l'aria di chi sta per dire qualcosa» mormora {other}, mettendo da parte ciò che aveva tra le mani. «È così?» La domanda resta sospesa, paziente, senza fretta.",
	},
	["rom.scene.declaration.welcome.n1"] = {
		"Lo dici semplicemente, senza le belle parole che avresti potuto scegliere. Per un istante {other} non risponde; poi arriva un sorriso, lento e certo, e una mano si chiude sulla tua. «Ci speravo» è la risposta. «Solo che non osavo sperarlo ad alta voce.»",
		"Le parole escono incerte, ed è proprio così che {other} capisce che sono vere. Una risata sommessa, quasi di sollievo, e poi la risposta, data senza parole: un passo avanti, una mano presa e tenuta. Il mondo attorno non cambia, ma qualcosa tra voi due trova il suo posto.",
		"Non hai quasi finito che {other} già scuote la testa, sorridendo. «Mi hai rubato le parole che tenevo da parte» è la risposta. «Ora dovrò trovarne altre.» Le dita cercano le tue, e ci restano a lungo.",
	},
	["rom.scene.declaration.welcome.n2"] = {
		"Parli, e {other} ascolta fino in fondo, senza muoversi. Poi, piano, la risposta: «Sì. L'ho sentito anch'io.» Da qualche parte una porta sbatte e una voce chiama qualcuno, e niente di tutto questo arriva fino a voi.",
		"Non è elegante, quello che dici, ma è sincero. {other} solleva una mano e, lievissima, ti sfiora la guancia col dorso delle dita, come per accertarsi che sia tutto vero. «Allora siamo in due a perdere la testa» è il sussurro. «E non vorrei che fosse altrimenti.»",
		"Le parole escono prima che un ripensamento possa fermarle. {other} arrossisce fino alle orecchie e ride, quasi senza difese, poi risponde con così poco fiato che è appena un sussurro: «Speravo che fossi tu a dirlo.»",
	},
	["rom.scene.declaration.cold.n1"] = {
		"{other} ascolta, e il sorriso che arriva è gentile ma prudente. «Mi fa piacere che tu me l'abbia detto» è la risposta. «Dammi un po' di tempo. Prima di dire qualcosa che non potrei ritirare, voglio vederci chiaro.»",
		"Per un lungo respiro {other} abbassa gli occhi, rigirando quelle parole. «Non è un no» risponde infine, con dolcezza. «È un non ancora. Chiedimelo di nuovo, più avanti lungo la strada.»",
		"Negli occhi di {other} c'è calore, e anche qualcos'altro, qualcosa che non è ancora pronto. Una mano stringe la tua, breve e sincera. «Mi fai onore. Ma il mio cuore è lento, e preferisco darti la verità tardi che un'ipotesi adesso.»",
	},
	["rom.scene.declaration.cold.n2"] = {
		"{other} non risponde subito, e quando lo fa la voce è sommessa. «Una parte di me vorrebbe dire sì, e un'altra non è pronta. Mi lasci il tempo di capire quale delle due parla più forte?» Lo chiede senza fretta, e senza chiudere nessuna porta.",
		"Il viso di {other} si fa di fiamma, e una mano sale a nasconderlo, troppo tardi. «Non puoi dire cose simili e pretendere che io ragioni» è la risata, un po' tremante. «Lascia che ci dorma sopra. Lascia che ci veda chiaro. Te lo devo.»",
		"{other} fa un passo indietro: non per allontanarsi, solo per riprendere fiato. «Mi piaci più di quanto avessi messo in conto» confessa. «E questo un po' mi spaventa. Avrai pazienza con me?»",
	},
	["rom.scene.declaration.refuse.n1"] = {
		"{other} ti ascolta fino alla fine, e il silenzio che segue è mite, non freddo. «Non posso darti quello che chiedi. Non in quel modo. Ma la tua amicizia mi è cara, e questo non cambia.»",
		"Sul viso di {other} c'è un rammarico sincero, e nessuna pietà, che è già una gentilezza. «Il mio cuore non è libero di risponderti come vorresti» è la risposta, sommessa. «Ma non perdiamo quello che abbiamo, ti prego. A quello non rinuncerei mai.»",
		"{other} ti prende la mano e la stringe una volta, con decisione, come si fa con chi si stima davvero. «No» dice piano. «Ma grazie per il coraggio di averlo detto. Tra noi non si è rovinato niente.»",
	},
	["rom.scene.declaration.refuse.n2"] = {
		"«Ah» dice {other}, piano piano, e per un istante non c'è altro. Poi un sorriso triste e gentile. «Mi dispiace. Non è nel mio cuore, e per te vorrei che lo fosse. L'amicizia, quella sì: è tua finché la vorrai.»",
		"{other} prende un respiro lento e ti guarda negli occhi, che è più coraggioso che distogliere lo sguardo. «Mi sei {g:caro|cara}. Ma non in quel modo, e fingere sarebbe crudele.» Le parole arrivano piano, e il calore che portano non se ne va.",
		"Nessuna risata, nessuna fretta di andarsene. {other} scuote appena la testa e dice che certe strade corrono affiancate senza incontrarsi mai. «Camminiamo vicini lo stesso. Mi farebbe piacere.»",
	},
	["rom.scene.vow.open.t1.n1"] = {
		"Il rumore del mondo si è allontanato, e {other} siede accanto a te, spalla contro spalla. Non serve dire niente; eppure c'è qualcosa che adesso si potrebbe dire, una volta sola, senza poterlo più ritirare.",
		"{other} ti gira la mano e ne segue le linee del palmo, distrattamente, come chi legge una strada. «Certe promesse non hanno bisogno di un sacerdote» mormora. «Solo di due persone che ci credono.» La pausa che segue è una porta aperta.",
		"È uno di quei momenti che sembrano aspettare che ci si accorga di loro. {other} ti guarda senza più niente di nascosto nello sguardo, e l'aria si ferma, come in ascolto di una promessa.",
	},
	["rom.scene.vow.welcome.t1.n1"] = {
		"Pronunci le parole a bassa voce, e {other} te le restituisce, con la voce un po' incerta, stringendoti entrambe le mani. Nessun sacerdote, nessun testimone, nessun anello: solo la promessa, e le due persone che l'hanno fatta. Non pesa nulla, eppure si posa lo stesso, e non se ne va.",
		"Alla fine, niente paroloni. {other} appoggia la fronte alla tua, e la promessa passa tra voi in un sussurro, detta una volta per ciascuno. Qualunque cosa porti la strada, questo è deciso.",
		"«Allora è detto» mormora {other}, sorridendo attraverso qualcosa che brilla negli occhi. Un pollice ti sfiora le nocche, a suggello, come si chiude un patto, ma con più dolcezza. Nessun altro saprà mai quelle parole, a meno che non sia tu a dirle, e questo, chissà come, le rende più forti.",
	},
	["rom.scene.vow.open.t1.n2"] = {
		"«Dimmi una cosa vera» dice {other}, e stavolta non è un gioco. Le parole restano sospese tra voi, semplici e immense. C'è una promessa che potresti fare adesso, senza nessuno ad ascoltarla se non voi due.",
		"Le tue dita sono intrecciate a quelle di {other}, e nessuna delle due mani sembra avere fretta di lasciare la presa. Sarebbe facile non dire nulla e lasciar passare il momento. Sarebbe facile, anche, legarlo per sempre.",
		"{other} posa la testa sulla tua spalla e lascia andare un lungo respiro appagato. «Se potessi tenermi un'ora sola» sussurra, «terrei questa.» Forse, in un certo modo, la si può tenere davvero: con una parola, data liberamente.",
	},
	["rom.scene.vow.welcome.t1.n2"] = {
		"Fai la promessa con poche parole semplici, e {other} risponde con altrettante, né una di più né una di meno. Poi un lungo silenzio vi tiene compagnia, perché non c'è altro da dire.",
		"{other} ascolta tutto con gli occhi lucidi, poi ride, piano piano, e ti restituisce le stesse parole, una per una, come per paura di perderne anche solo una. La promessa è abbastanza piccola da portarla ovunque. Andrà dovunque andrai tu.",
		"Succede tra un respiro e l'altro: una promessa offerta, una promessa ricambiata, due mani che si tengono. Nessuno guarda, nessuno benedice, e non ce n'è bisogno. {other} sorride come se il mondo fosse appena diventato un posto più semplice.",
	},
	["rom.scene.vow.open.t2"] = {
		"La sala si è svuotata, e l'ultima candela arde tra te e {other}. Una mano si posa sulla tua e rimane lì, calda, senza fretta. «Dillo, se vuoi» è il sussurro. «Ti ascolto con tutto quello che ho.»",
		"La notte è scesa sulla locanda, e nella stanza non c'è altro rumore che il vostro. {other} siede così accanto a te che basta abbassare la voce. C'è una promessa che aspetta nel buio, e solo tu puoi decidere se farla stanotte.",
	},
	["rom.scene.vow.welcome.t2"] = {
		"Pronunci la promessa nel silenzio che c'è tra voi, e {other} risponde con un bacio, lento e deciso, che ripete le stesse parole senza bisogno di dirle. Due braccia ti si stringono attorno e non lasciano, come per non far scivolare via la promessa. La candela si consuma.",
		"La promessa si fa in un sussurro, fronte contro fronte, le mani unite. Quando è detta, {other} ti attira a sé e ti tiene {g:stretto|stretta}, e per un lungo momento l'unico suono è quello di due cuori che trovano lo stesso passo. Fuori, la notte va avanti senza di voi.",
	},
	["rom.scene.date.open.t1.n1"] = {
		"Il lavoro della giornata è finito, e {other} si attarda invece di andarsene, guardandoti di sbieco. «La sera è libera, e lo sono anch'io» butta lì, con una noncuranza troppo studiata. «Come ti piacerebbe passarla?»",
		"{other} compare al tuo fianco con l'aria di chi aspettava il momento giusto e ha deciso che è adesso. «Regalami questa sera» chiede, a metà tra il timido e l'audace. «Scegli tu come.»",
		"Si fa tardi, e {other} ti dà un colpetto sul braccio. «Vieni, rubiamo qualche ora al mondo, per una volta. Tu indica la strada, io ti seguo.»",
	},
	["rom.scene.date.open.t1.n2"] = {
		"«Ho pensato a te tutto il giorno» ammette {other}, con una risata che non nasconde del tutto il rossore. «Passi la serata con me? Come preferisci. Mi basta la compagnia.»",
		"C'è un istante, tra una faccenda e l'altra, in cui {other} cattura il tuo sguardo e non lo lascia. Poi, con una piccola alzata di spalle e un sorriso che di piccolo non ha niente: «Allora? La serata ci aspetta. Che ne facciamo?»",
		"{other} posa quello che aveva in mano con aria definitiva, come chi chiude un libro. «Basta mondo, per oggi. Resta un po' con me, e facciamo qualcosa delle ore che rimangono.»",
	},
	["rom.scene.date.open.t2"] = {
		"È tardi, e la locanda attorno a voi si è fatta silenziosa. {other} ti prende la mano sopra il tavolo e non la lascia, il pollice che disegna piccoli cerchi lenti. «La notte è nostra» mormora. «Dimmi tu cosa ti piacerebbe.»",
		"Il fuoco è ridotto a brace e gli ultimi avventori sono saliti. {other} si sporge verso di te, la voce abbassata in qualcosa che è solo per te. «Qualunque cosa tu scelga, non voglio che questa notte finisca già.»",
	},
	["rom.scene.date.welcome.t1"] = {
		"Le ore passano senza chiedere permesso. {other} ride spesso, parla di cose piccole e grandi, e a un certo punto smette di fingere di non guardarti. Quando la serata finisce, finisce troppo presto.",
		"È una serata semplice, ed è questo il suo bello. Una battuta condivisa, un lungo silenzio, una mano trovata e tenuta. Alla fine {other} ti augura la buonanotte come se fosse un dono.",
		"Non succede niente di straordinario, eppure tutto merita di essere tenuto: il modo in cui {other} piega la testa per ascoltare, una risata interrotta a metà, il piccolo calore di una spalla contro la tua. Il mondo può aspettare.",
	},
	["rom.scene.date.walk.welcome"] = {
		"Camminate senza meta, e {other} ti si affianca con un passo che sembra fatto per due. I discorsi vagano liberi quanto la strada. A un certo punto le mani si sfiorano, e la volta dopo non si separano più.",
		"La strada si srotola piano davanti a voi, e {other} dà un nome a ogni fiore e a ogni sasso, sbagliandone metà e ridendo di ogni errore. Tornate indietro solo quando il sentiero ha finito le scuse.",
		"È una passeggiata lunga e lenta, senza una meta degna di nota. Una volta {other} si ferma a mostrarti qualcosa di piccolo e bello al bordo del sentiero, e ti rimane accanto mentre guardi. Al ritorno, nessuna fretta.",
	},
	["rom.scene.date.supper.welcome"] = {
		"Un tavolo tranquillo, cibo semplice, una coppa divisa in due quando la seconda sparisce. {other} parla con tutte e due le mani e il piatto lo tocca appena, perché guardarti è più interessante. La cena si raffredda, e a nessuno importa.",
		"La cena è semplice e il tavolo piccolo, e ogni volta che una mano si allunga verso il sale le dita finiscono per incontrarsi. {other} ti passa senza una parola il pezzo di pane migliore, e sorride quando te ne accorgi. Ha un sapore migliore di quanto avrebbe diritto di avere.",
		"Durante la cena {other} racconta una storia, malissimo, e ride prima della fine, e la risata vale più della storia. La luce della candela trova quel sorriso e lo trattiene. Quando i piatti sono vuoti, nessuno accenna ad alzarsi.",
	},
	["rom.scene.date.stargaze.welcome"] = {
		"Vi stendete sull'erba e tutto il cielo si apre sopra di voi. {other} indica le stelle una per una, inventando nomi per quelle che non ne hanno, e le vostre risate si perdono nel buio. Una testa si posa sulla tua spalla, e non si sposta più.",
		"La notte è vasta e le stelle sono tante. {other} ti siede accanto e tace, col naso all'insù, e dopo un po' ti prende la mano senza abbassare lo sguardo. Una stella cadente attraversa il buio; nessuno dice una parola, e non ce n'è bisogno.",
		"«Quella» dice {other}, indicando una stellina ostinata bassa sull'orizzonte, «è tua. Ho deciso così.» È un regalo sciocco e perfetto. La guardate insieme finché accorciare le distanze diventa l'unica cosa sensata da fare.",
	},
	["rom.scene.date.night.welcome"] = {
		"La stanza è piccola e la candela bassa, e {other} ti attira a sé mentre la porta si chiude sul resto del mondo. Il primo bacio è lento, attento; il secondo indugia. Un sussurro contro la tua guancia: «Resta.» La fiamma si spegne, e la notte tiene per sé i suoi segreti.",
		"Non c'è fretta, ed è questa la parte più dolce. {other} ti prende le mani e le bacia una dopo l'altra, poi la fronte, e infine la bocca, come se ognuno fosse una promessa mantenuta. Due braccia attorno a te, una voce che si abbassa fin quasi a sparire. Poi il buio, e il resto è solo vostro.",
	},
	["rom.scene.date.cold.t1"] = {
		"{other} viene, sorride, dice le cose giuste, ma lo sguardo continua a scivolare lontano. La serata non prende mai davvero il via. Quando finisce, nel saluto c'è una scusa, e una stanchezza che con te non ha niente a che fare.",
		"È una serata piacevole, e niente di più. I discorsi si esauriscono presto e i silenzi sono di quelli sbagliati. Alla fine {other} ti ringrazia con calore, e lo pensa davvero, ma la scintilla, stasera, rimane nascosta.",
		"A metà serata {other} sospira e confessa una giornata lunga e la testa pesante. «Perdonami. Stasera sono di cattiva compagnia.» Vi salutate presto, con gentilezza, senza niente di rotto e senza molto di guadagnato.",
	},
	["rom.scene.date.walk.cold"] = {
		"Camminate, e {other} cammina accanto a te ma un passo più in là, risponde a monosillabi e guarda la strada invece di te. Da qualche parte lungo il cammino i discorsi si spengono da soli. Il ritorno è più breve dell'andata.",
		"Il sentiero è bello e {other} quasi non lo vede: la testa è chiaramente altrove, su qualche pensiero che non dice. Due volte cominci a raccontare qualcosa, e due volte il racconto si perde. Al momento di salutarsi c'è un sorriso dispiaciuto e un sommesso «magari un'altra volta».",
	},
	["rom.scene.date.supper.cold"] = {
		"Il cibo è buono e {other} lo tocca appena, rigirando la coppa tra le dita e rispondendo sempre un attimo in ritardo. Non c'è scortesia, solo assenza. Finisci la cena più o meno da {g:solo|sola}, in compagnia educata.",
		"La cena è piacevole, e niente più. {other} parla dei piccoli guai della giornata, poi del nulla, poi smette del tutto, e la candela sembra consumarsi più in fretta dei discorsi. Alla fine vi lasciate con una parola gentile e un tavolo ormai freddo.",
	},
	["rom.scene.date.stargaze.cold"] = {
		"Le stelle sono a migliaia, e {other} alza gli occhi una volta, per cortesia, poi guarda soprattutto per terra. Uno sbadiglio nascosto, non abbastanza in fretta. Indugiate ancora un poco per amore del cielo, e poi tornate indietro.",
		"È la notte giusta, eppure la magia non arriva. {other} dà un nome a una stella, dimentica quello della successiva, e scivola in un silenzio più stanco che tenero. Il cielo è bellissimo; tra voi due, stasera, c'è solo vicinanza.",
	},
	["rom.scene.date.night.cold"] = {
		"Rimani, e a {other} fa piacere, ma la giornata è stata lunga e l'accoglienza è stanca. Un abbraccio, una buonanotte mormorata, e presto un respiro lento e regolare. Vegli ancora un poco, ad ascoltarlo, e la notte passa tranquilla, dolce e un po' piatta.",
		"La stanza è calda e l'ora tarda, eppure tra voi c'è qualcosa che la notte non riesce a scostare. {other} ti tiene la mano e parla del più e del meno; il bacio, alla fine, è breve e leggero. È una notte tranquilla, abbastanza gentile, e niente di più.",
	},
	["rom.scene.date.refuse.t1"] = {
		"{other} esita, poi scuote la testa con un sorriso dispiaciuto. «Non stasera. Sarei di cattiva compagnia, e meriti di meglio che metà di me.» Una mano ti si posa sul braccio per un momento, calda e piena di scuse, prima di lasciarti.",
		"«Vorrei tanto» dice {other}, e suona sincero. «Ma questa sera è già impegnata, se non altro dalla stanchezza.» Il rifiuto è gentile, e non chiude niente, se non questa sola sera.",
		"C'è una lunga pausa, poi {other} distoglie lo sguardo, con aria di scusa. «Perdonami. Stasera ho bisogno di stare con i miei pensieri. Non dipende da te.» Le parole sono gentili, e la porta che lasciano rimane aperta.",
	},
	["rom.scene.date.walk.refuse"] = {
		"{other} guarda la strada e scuote la testa, con una risata dispiaciuta. «Una passeggiata no, non stasera. Mi sembra di non aver fatto altro che camminare tutto il giorno.» Una breve stretta di mano addolcisce il rifiuto.",
		"«Non stasera» dice {other}, con dolcezza. «Arrancherei dietro di te, e per strada meriti una compagnia migliore.» È un rifiuto, ma così gentile che quasi non punge.",
	},
	["rom.scene.date.supper.refuse"] = {
		"{other} lancia un'occhiata alla sala affollata e fa una piccola smorfia di scusa. «Cena no, non stasera. Non riuscirei a mandar giù un boccone, e starei lì a giocare col cibo.» Il sorriso che segue ti chiede di non prendertela.",
		"«In un altro momento mi farebbe davvero piacere» dice {other}, e il rammarico è sincero. «Stasera ho la testa piena e niente appetito. Mi perdoni?» Non c'è niente da perdonare, e lo sguardo che vi scambiate lo dice.",
	},
	["rom.scene.date.stargaze.refuse"] = {
		"{other} alza gli occhi al cielo, poi torna a guardarti e scuote la testa con una risata leggera. «Le stelle non scappano. Stasera il sonno mi ha già preso a metà, e finirei per crollarti sulla spalla.» È detto con affetto, e il calore resta anche ora che la serata finisce.",
		"«Non stasera» dice {other}, con un'occhiata di scusa verso il buio. «Ho troppo sonno per alzare gli occhi, e le stelle meritano di meglio di uno sbadiglio.» Un sorriso dispiaciuto, un breve tocco delle dita, e il momento passa senza lasciare spine.",
	},
	["rom.scene.date.night.refuse"] = {
		"{other} ti prende la mano e la tiene a lungo prima di rispondere. «Non stanotte. Voglio che sia il momento giusto, e stanotte non lo è.» Un bacio sulle nocche, lieve e senza fretta, dice il resto: tra voi non si è perso niente.",
		"«Resta ancora un poco, ma non tutta la notte» dice piano {other}, la fronte appoggiata alla tua. «Ho una stanchezza che arriva alle ossa, e meriti di più di qualcuno che dorme già.» Un abbraccio sulla porta, lungo e caldo, e poi una buonanotte sommessa che non porta con sé nessuna ferita.",
	},
	---------------------------------------------------------------------------
	-- a private thought after a flirt
	---------------------------------------------------------------------------
	["rom.inner.welcome.t1.n1"] = {
		"Un sorriso restituito senza pensarci un attimo. Me lo rigirerò in testa per tutto il giorno.",
		"Be', è andata meglio di quanto il mio coraggio meritasse.",
		"{other} non ha distolto lo sguardo. Nemmeno io, e adesso mi scottano le orecchie.",
	},
	["rom.inner.welcome.t1.n2"] = {
		"È successa una cosa piccola, e non mi sembra piccola per niente.",
		"Dovrei andare avanti come se niente fosse. Il passo, però, si è fatto leggero da solo.",
		"In quella risposta c'era calore. Per oggi non chiedo altro alla strada.",
	},
	["rom.inner.welcome.t1.n3"] = {
		"Piano, cuore mio. Una parola gentile è una porta socchiusa, non un portone spalancato.",
		"Mi sorprendo a sorridere al nulla. Solo che non è il nulla, e lo so bene.",
		"{other} ha riso, e di una risata vera. Vorrei proprio sentirla ancora.",
	},
	["rom.inner.cold.t1.n1"] = {
		"Cortese, garbato e chiuso come una finestra con le imposte accostate. Va bene così.",
		"Non è un no. Non è niente, a dire il vero. Mi riprendo il coraggio e lo metto da parte per un altro giorno.",
		"{other} mi ha sorriso come si sorride al tempo che fa. Una risposta gentile, e chiara.",
	},
	["rom.inner.cold.t1.n2"] = {
		"Una risposta tiepida come il focolare del giorno prima. Si sopravvive.",
		"Forse ho scelto il momento sbagliato. Forse quello giusto non esiste. In ogni caso, nessun danno.",
		"Un cenno educato e uno sguardo altrove. Riconosco un garbato cambio di discorso quando lo incontro.",
	},
	["rom.inner.cold.t1.n3"] = {
		"Le mie guance sono più calde della risposta. È il momento di trovare qualcosa di molto interessante da guardare.",
		"Miravo al cuore e ho colpito le buone maniere. Ottime maniere, almeno.",
		"Chi non risica non rosica, si dice. Io ho risicato e non ho perso niente. O quasi.",
	},
	["rom.inner.refuse.t1.n1"] = {
		"Un no gentile resta un no. Mi tengo stretta la parte gentile.",
		"{other} l'ha detto con garbo, e lo pensava davvero. Saprò rispettarlo, appena mi si raffredda la faccia.",
		"Quella porta è chiusa, dunque. Quella accanto, l'amicizia, sembra ancora aperta.",
	},
	["rom.inner.refuse.t1.n2"] = {
		"Chiaro, e senza cattiveria. Meglio di un forse da aspettare per settimane.",
		"Ecco una piccola speranza che se ne va per conto suo. La lascio andare senza fare storie.",
		"La prossima volta leggerò i segnali prima di aprire bocca. C'erano, i segnali; avevo solo voglia di non vederli.",
	},
	["rom.inner.refuse.t1.n3"] = {
		"Brucia un poco. Passerà: i rovi mi hanno fatto di peggio.",
		"Non tutti, su questa strada, sono fatti per me. Non è colpa di nessuno.",
		"Quando le nostre strade si incroceranno di nuovo sorriderò, e sul serio. Un rifiuto non è un litigio.",
	},
	["rom.inner.welcome.t2"] = {
		"Il fuoco è basso, {other} mi sta accanto, e per una volta non devo essere da nessun'altra parte.",
		"«Resta», sottovoce, quasi un respiro. Non c'era bisogno di chiederlo due volte.",
		"Qualunque cosa mi chieda la strada domani, stanotte può chiederla a qualcun altro.",
	},
	["rom.inner.cold.t2"] = {
		"Stanchezza, credo, più che poca voglia. Basteranno una mano sulla spalla e una notte tranquilla.",
		"Stanotte no, allora. La notte è lunga, e abbastanza gentile anche senza chiederle di più.",
		"{other} ha negli occhi una giornata faticosa. Il calore posso tenerlo da parte per un'altra sera.",
	},
	["rom.inner.welcome.glance"] = {
		"Uno sguardo trattenuto apposta un battito di troppo, e ricambiato. Chi l'avrebbe detto che gli occhi parlassero tanto?",
		"Volevo solo guardare e poi distogliere gli occhi. Chissà come, nessuno dei due ci è riuscito.",
		"{other} mi ha {g:sorpreso|sorpresa} a guardare e ha sorriso. Addio discrezione.",
	},
	["rom.inner.welcome.compliment"] = {
		"L'ho detto con semplicità ed è arrivato piano, come doveva. Non tutte le cose vere vengono accolte così bene.",
		"Un complimento, e un rossore per risposta. Sospetto che il mio fosse più acceso.",
		"{other} ci ha riso sopra, poi mi ha {g:ringraziato|ringraziata} lo stesso, più a bassa voce. È quella seconda parte che mi tengo.",
	},
	["rom.inner.welcome.gift"] = {
		"Una cosina raccolta lungo la strada, tenuta in mano come se pesasse di più. Forse pesa davvero di più.",
		"Per timidezza stavo quasi per lasciarlo in tasca. Meno male che non l'ho fatto.",
		"{other} ha rigirato due volte il piccolo dono prima di riporlo con cura. Mi scalderà per un giorno o due.",
	},
	["rom.inner.welcome.walk"] = {
		"Fianco a fianco, senza dire granché. La strada non è mai stata così corta.",
		"I nostri passi hanno preso lo stesso ritmo senza volerlo. Io me ne sono {g:accorto|accorta}, e credo anche {other}.",
		"Una passeggiata è una richiesta modesta. Ma il sì che le risponde può valere moltissimo.",
	},
	["rom.inner.welcome.invite"] = {
		"Un posto allo stesso tavolo, a lavoro finito. Cercherò di non contare le ore.",
		"Un sì, senza esitare. Avevo pronto un discorso intero per il caso di un no; lo terrò per un'altra occasione.",
		"Ho chiesto solo un po' di compagnia e due parole. Il sì è arrivato con un sorriso in più.",
	},
	["rom.inner.welcome.other"] = {
		"Quel sorriso mi ha fatto piacere, poi mi è sembrato preso in prestito. C'è chi mi aspetta e merita di meglio.",
		"Una cosa innocua, mi dico. La coscienza non sembra convinta.",
		"Da {other} solo gentilezza, e mi è piaciuta; eppure continuo a pensare a un altro viso. Non è un gioco per me, questo.",
	},
	["rom.inner.cold.other"] = {
		"Fresca come l'acqua di pozzo, quella risposta. Meglio così: il mio cuore ha già un posto dove stare.",
		"Quasi ringrazio per quella freddezza. Mi ha ricordato quale sorriso preferirei inseguire.",
		"Lezione imparata. I miei sorrisi hanno già una casa; farei bene a smettere di prestarli in giro.",
	},
	["rom.inner.welcome.beloved"] = {
		"Ancora adesso basta un mio sguardo per far arrossire {other}. E ancora adesso arrossisco anch'io.",
		"Non c'è nessuno a cui preferirei dire sciocchezze dolci. Per fortuna, qui sono sempre ben accolte.",
		"Casa non è un luogo, credo. È questo: una parola piccola e un sorriso che conosco a memoria.",
	},
	["rom.inner.refuse.courtship"] = {
		"Credevo che stessimo andando da qualche parte. Forse è ancora così, solo più piano di quanto sperassi.",
		"Da chiunque altro un no pungerebbe. Da {other} fa male davvero. Lascerò passare del tempo, e farò un passo indietro.",
		"Corteggiare non vuol dire possedere. Lo sapevo; adesso tocca metterlo in pratica.",
	},
}, "base_romance")
