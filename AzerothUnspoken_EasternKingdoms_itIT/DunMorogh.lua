-- Italian texts of the regional pack eastern_dunmorogh (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/DunMorogh.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("dunmorogh", "itIT", "eastern_dunmorogh", [==[
	["dmo.battle.cold"] = {
		"Dita intorpidite, presa salda. Il freddo può aspettare che sia finita.",
		"Fuori il fiato, piedi ben piantati, occhio al ghiaccio. Adesso.",
	},
	["dmo.battle.trogg"] = {
		"Torna nella tua buca, trogg!",
		"Un altro risalito dal profondo. Rimandiamolo di sotto.",
	},
	["dmo.journey.arrival"] = {
		"smonta dal grifone dritto nel freddo pungente, {g:indolenzito|indolenzita} dal volo e con gli occhi feriti dal riverbero bianco.",
		"atterra tra le montagne, si scrolla la brina dal mantello e muove un primo passo cauto sul terreno battuto.",
	},
	["dmo.journey.start"] = {
		"Su, nell'aria fredda, e tutta Dun Morogh si apre sotto di me: cime bianche, pini neri, laghi gelati come monete cadute.",
		"Il grifone sale, e i pendii bianchi si allontanano finché le valli non sembrano pieghe di un mantello chiaro.",
		"Un vento che taglia come lame, e giù le montagne che ruotano piano mentre viriamo. Prima o poi le mie dita mi perdoneranno.",
	},
	["dmo.landmark.coldridge"] = {
		"abbraccia con lo sguardo Coldridge Valley, una conca bianca chiusa dalle rupi, dove il fumo di Anvilmar sale nell'aria immobile.",
		"osserva la valle riparata, i sentieri rimestati dalle reclute e i margini lontani scuri di grotte di troll.",
	},
	["dmo.landmark.kharanos"] = {
		"Kharanos. Fumo dai comignoli, odore di malto dalla distilleria e una porta che si apre sul caldo.",
		"Ecco Kharanos: una forgia, un birrificio e un fuoco. Un villaggio che sa cosa conta davvero.",
	},
	["dmo.lowhp.01"] = {
		"Non qui. Non a faccia in giù nella neve, a miglia da un fuoco.",
		"Il freddo entra da dove esce il sangue. In piedi. In piedi, e chiudila.",
	},
	["dmo.muse.01"] = {
		"Neve su ogni pendio, e più su le cime, bianche come ossa vecchie. La montagna non ha fretta per nessuno.",
		"Quassù è tutto bianco, grigio, o azzurro di freddo. L'occhio impara a riposarsi sul verde cupo di un pino.",
		"La neve si prende ogni rumore e se lo tiene. Persino i miei passi sembrano arrivare da lontano.",
	},
	["dmo.muse.02"] = {
		"Fa così freddo che le parole gelano prima di uscire. Meno male che parlo in fretta.",
		"Non sento più due dita dei piedi. Mi dicono che è così che ti accorgi di essere a Dun Morogh.",
		"Qualcuno dica alla montagna che per un pomeriggio può anche concedersi un po' di tepore.",
	},
	["dmo.muse.03"] = {
		"batte gli stivali per scrollarsi via la neve e segue il fiato che si allontana in una lenta nuvola bianca.",
		"si tira su il bavero contro il gelo e strizza gli occhi al riverbero dei campi innevati.",
	},
	["dmo.muse.04"] = {
		"Gnomeregan è appena oltre quelle colline. La nostra città, le nostre officine, e nessuno di noi può più entrare dalla porta di casa propria.",
		"Laggiù costruivamo meraviglie. Poi sono risaliti i trogg, e abbiamo fatto la scelta che ha avvelenato le nostre stesse sale. Ancora non so dire se fosse quella giusta.",
	},
	["dmo.muse.05"] = {
		"Aria fredda, pietra dura, neve sincera. Qualunque cosa ci sia nel resto del mondo, casa ha questa forma.",
		"La mia gente scava queste montagne da più tempo di quanto chiunque abbia mai contato. La pietra conosce le nostre mani.",
	},
	["dmo.muse.06"] = {
		"Trogg ovunque, sbucati da buche che nessuno sapeva esistessero. Ti chiedi cos'altro aspetti laggiù, nel profondo.",
		"Il terreno sembra solido, finché non ricordi cosa ne è venuto fuori. Tengo sempre un orecchio rivolto alle rocce.",
	},
	["dmo.muse.07"] = {
		"Dai pendii alti scende un ululato, troppo lungo per un lupo. È il vento, mi dico. Soltanto il vento.",
		"Qualcosa di grosso è passato di qui: impronte più larghe delle mie due mani messe insieme. Un orso, o qualcosa che cammina come un orso.",
	},
	["dmo.muse.08"] = {
		"Ogni sentiero di questa valle sembra riportare a un fuoco e a un boccale di qualcosa di scuro. Non mi lamento.",
		"Qui fuori una buona birra scura non è un lusso. È un cappotto che si porta da dentro.",
	},
	["dmo.muse.09"] = {
		"Quassù le stelle sono più nitide, come se il freddo le avesse lucidate. La neve ne restituisce la luce.",
		"Notte sulla montagna. Un silenzio tale che sento i pini scricchiolare sotto il loro carico bianco.",
	},
	["dmo.muse.10"] = {
		"Terra dura fa gente dura. Capisco perché i nani non se ne siano mai andati.",
		"Vento, ghiaccio, trogg e troll. Se questa è l'accoglienza, figuriamoci il congedo.",
	},
	["dmo.npc_meet.guard"] = {
		"Un montanaro con la brina sull'elmo e il fucile in spalla. Questa gente fa la guardia con un gelo che spedirebbe me al coperto.",
		"La guardia fa un cenno, uno solo. Da queste parti vale come una lunga chiacchierata.",
	},
	["dmo.npc_meet.innkeeper"] = {
		"Un posto vicino al fuoco e la cosa più calda che avete. Pago il doppio se arriva con una coperta.",
		"Salute. C'è una birra scura, in questa casa, abbastanza forte da scongelare un viandante?",
		"Prendo una stanza, una scodella di stufato e la sedia più vicina al focolare, se nessuno l'ha già occupata.",
	},
	["dmo.quest_complete.01"] = {
		"Fatto. E adesso, da che parte sono il fuoco e il boccale più vicini?",
		"Ecco fatto. Se qualcuno mi cerca, sono a scongelarmi davanti al camino.",
		"Lavoro finito, e le dita sono ancora tutte al loro posto. La chiamo una buona giornata.",
	},
	["dmo.quest_complete.02"] = {
		"Una piccola cosa, forse. Ma quassù sono le piccole cose a tenere un villaggio sfamato e le strade aperte.",
		"Un guaio in meno sulle spalle di questa gente. La montagna gliene manderà presto un altro, ma non oggi.",
		"I montanari hanno già le mani piene. Mi fa piacere prendermi un pezzo del carico.",
	},
	["dmo.quest_complete.03"] = {
		"si soffia nelle mani a coppa per scaldarle: il compito è alle spalle, il freddo ancora dappertutto.",
		"strofina le dita intirizzite per ridarci un po' di vita e lascia che la soddisfazione del lavoro finito si posi piano.",
	},
	["dmo.quest_progress.ready"] = {
		"Il lavoro è fatto. Adesso mi aspetta solo la lunga camminata nel gelo per andare a dirlo.",
		"Finito. Mi resta soltanto da rifare la strada tra i cumuli bianchi.",
	},
	["dmo.subzone_enter.amberstill"] = {
		"Arieti! Guarda che corna. Chiederei un passaggio, ma credo che loro chiederebbero i miei stivali.",
		"Un ranch pieno di arieti di montagna. Robusti, testardi, e più abili di me ad arrampicarsi anche nei miei giorni migliori.",
	},
	["dmo.subzone_enter.frostmane"] = {
		"rallenta all'imbocco delle grotte dei troll, dove l'odore di fumo e di ossa vecchie resta sospeso nell'aria gelata.",
		"fissa l'ingresso buio delle grotte dei Frostmane e il sentiero calpestato che vi si infila dentro.",
	},
	["dmo.subzone_enter.grizzled"] = {
		"Quella caverna respira. Aria calda e fetida, e là in fondo qualcosa di grosso che si rigira nel sonno.",
		"Ossa all'ingresso, rosicchiate fino a renderle lisce. Chi abita questa tana non fa lo schizzinoso a cena.",
	},
	["dmo.victory.01"] = {
		"Be', almeno adesso ho caldo. Chi è il prossimo?",
		"Niente come una zuffa per cacciare il gelo dalle ossa.",
	},
	["dmo.victory.frostmane"] = {
		"I Frostmane difendono queste colline con la stessa ferocia dei nani. Oggi solo uno di noi potrà tenersele.",
		"A terra nella neve, la lancia ancora in pugno. I troll direbbero che questi pendii erano loro molto prima che si accendesse una forgia. Forse hanno ragione.",
	},
	["dmo.weather_change.snow"] = {
		"si ferma a guardare la neve fresca che scende sulle vette, a smussare ogni traccia e ogni spigolo.",
		"alza il viso mentre la nevicata si infittisce e le montagne lontane sbiadiscono in sagome grigie.",
	},
]==])
