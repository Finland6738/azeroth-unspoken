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
	["dmo.attack.w02.01"] = {
		"Senti? È la montagna che restituisce il colpo.",
		"Prendi questa, e raccontalo al resto della valle!",
		"Più duro del gelo, e pure più svelto!",
	},
	["dmo.battle.w02.01"] = {
		"Fatti sotto. Per miglia intorno, una zuffa è l'unica cosa che scaldi.",
		"Bene. Finalmente qualcosa da fare oltre a battere i denti.",
		"Fatti avanti. Il freddo rallenta tutti e due, ma io ci ho fatto l'abitudine.",
	},
	["dmo.battle.w02.02"] = {
		"pianta gli stivali nella neve battuta mentre la bestia avanza, sbuffando nuvole bianche.",
		"si gira ad affrontare la carica, la neve sollevata intorno ai piedi e il gelo dimenticato per un istante.",
	},
	["dmo.battle.w02.03"] = {
		"Passi corti. Qui il terreno è mezzo ghiacciato, e chi scivola per primo ha perso.",
		"Prima l'appoggio, poi i denti. Su questo pendio il pericolo più grosso sta sotto i piedi.",
	},
	["dmo.battle.w02.04"] = {
		"Di nuovo giù dalle tue grotte, troll? Allora sistemiamola qui fuori.",
		"Frostmane. Pitture, lance e un gran baccano. Avanti, fatti sotto.",
		"Alza pure la lancia, troll. Ho camminato troppo, in questo gelo, per farmi da parte.",
	},
	["dmo.lowhp.w02.01"] = {
		"Le mani tremano, e stavolta non è il freddo. Tieni duro ancora un po'.",
		"Troppo rosso sul bianco. Rimetti i piedi sotto di te e falla finita.",
		"Alla montagna non importa chi ne scende sulle proprie gambe. Fa' che sia io.",
	},
	["dmo.muse.w02.01"] = {
		"Il lago è gelato così limpido che vedo i sassi sul fondo. Pare una finestra che nessuno si è mai preso la briga di aprire.",
		"Ghiaccio da una riva all'altra, grigio ai bordi e nero al centro, dove l'acqua è fonda. Faccio il giro, grazie.",
		"Il vento ha spazzato il lago fino al ghiaccio vivo. Lì sotto passa un pesce chiaro, senza nessuna fretta.",
	},
	["dmo.muse.w02.02"] = {
		"Nani di pietra alti come una rupe, a guardia delle porte lassù. Tutto quello che costruiscono i nani è più grande dei nani.",
		"Le porte di Ironforge si vedono da mezza valle. Quella non è una porta: è una dichiarazione.",
		"Ho provato a indovinare quanto ci sia voluto a scolpire quell'ingresso. Poi ho smesso: mi faceva male il collo.",
	},
	["dmo.muse.w02.03"] = {
		"si ferma a guardare un cinghiale che grufola nella crosta di neve in cerca di qualcosa di verde: non trova niente e insiste.",
		"segue con lo sguardo le orme di una lepre sulla neve, finché non finiscono in un groviglio di zampate e qualche ciuffo di pelo.",
	},
	["dmo.muse.w02.04"] = {
		"Gli gnomi rimasti dentro Gnomeregan si aggirano ancora vicino alle sue porte, malati e strani. Da queste parti nessuno ne parla a lungo.",
		"Giù, verso la vecchia strada degli gnomi, l'aria sa d'olio e di qualcosa di peggio. Il lutto di un'intera città che filtra da sotto la neve.",
	},
	["dmo.quest_complete.w02.01"] = {
		"Una pacca sulla spalla che per poco non mi butta a terra. Il grazie, su queste colline, è come la birra: forte e per niente sottile.",
		"Un grugnito e una moneta spinta verso di me. Da queste parti, credo, vale come un'effusione.",
		"Qui nessuno fa discorsi a lavoro finito. Fanno un cenno, pagano, e ti indicano la prossima cosa. Potrei abituarmici.",
	},
	["dmo.quest_progress.w02.01"] = {
		"segna un altro pezzo del compito come fatto e si soffia sulle dita prima di proseguire.",
		"batte i piedi per ridarci un po' di calore: una parte è finita, il resto aspetta ancora là fuori, nel bianco.",
	},
	["dmo.victory.w02.01"] = {
		"Finita. Se mi fermo qui il sudore mi gela addosso, quindi niente soste.",
		"Chiusa. Rimettiamoci in marcia prima che il freddo si accorga della sosta.",
		"E uno. Ora via da questo pendio scoperto, prima che le mani mi si irrigidiscano.",
	},
	["dmo.victory.w02.02"] = {
		"abbassa l'arma, e la neve intorno allo scontro torna già a posarsi sulle orme.",
		"si raddrizza col fiato grosso, mentre dalla fronda di un pino scivola neve fresca a coprire il peggio.",
	},
	["dmo.victory.w02.03"] = {
		"Questa finisce nel racconto. Prima di arrivare a Kharanos sarà diventata il doppio.",
		"Qualcuno se lo ricordi. Al bancone mi serviranno testimoni.",
		"Niente male. Il boccale che mi spetta è appena diventato più grande.",
	},
	["dmo.attack.w16.cry.001"] = {
		"Gelo nelle ossa, fuoco nel pugno!",
		"Mani fredde, colpo duro!",
		"Pugno gelato, testa calda!",
	},
	["dmo.attack.w16.cry.002"] = {
		"Eccoti qualcosa per scaldarti!",
		"Consegna bollente, direttamente dal gelo!",
		"Finito il riscaldamento!",
	},
	["dmo.attack.w16.cry.003"] = {
		"Duro come la pietra di Ironforge!",
		"Che lo sentano le cime!",
	},
	["dmo.attack.w16.cry.004"] = {
		"Adesso, finché l'appoggio tiene.",
		"Piedi saldi. Vai.",
	},
	["dmo.attack.w16.cry.005"] = {
		"Nella neve, tu!",
		"Giù, faccia nel bianco!",
		"Sotto il cumulo!",
	},
	["dmo.attack.w16.cry.006"] = {
		"Omaggio della valle!",
		"Saluti dalle cime!",
		"Per gentile concessione dei valichi!",
	},
	["dmo.attack.w16.cry.007"] = {
		"Come una valanga!",
		"Come un masso giù da una cresta!",
	},
	["dmo.attack.w16.cry.008"] = {
		"Senti il freddo in questo!",
		"Più gelido dei laghi, questo!",
	},
	["dmo.attack.w16.cry.009"] = {
		"Prima che le dita si irrigidiscano. Ora.",
		"Colpisci finché le mani ubbidiscono.",
	},
	["dmo.attack.w16.cry.010"] = {
		"Spaccati come il ghiaccio del lago!",
		"Rompiti, come ghiaccio sotto lo stivale!",
		"In frantumi!",
	},
	["dmo.attack.w16.cry.011"] = {
		"Ospitalità nanica!",
		"Fresco di cava!",
	},
	["dmo.attack.w16.cry.012"] = {
		"Quassù non cede niente!",
		"Le montagne non si piegano, e io nemmeno!",
		"Tieni, e colpisci!",
	},
	["dmo.battle.w16.ice.001"] = {
		"Occhio a dove metti i piedi. Questo pendio ha buttato giù gente migliore di te.",
		"Attenzione al ghiaccio: a lui non importa chi dei due fa cadere.",
	},
	["dmo.battle.w16.ice.002"] = {
		"Talloni piantati, ginocchia morbide. Il terreno gelato punisce chi si sbilancia per primo.",
		"Che sia l'altro a muoversi. Su un suolo così duro, chi ha fretta finisce lungo disteso.",
		"Cerca la ghiaia sotto la brina. Si combatte da lì.",
	},
	["dmo.battle.w16.ice.003"] = {
		"sposta il peso sul cumulo indurito finché smette di scricchiolare, poi alza la guardia.",
		"scalcia via la neve molle, trova la roccia nuda e lì si mette in guardia.",
	},
	["dmo.battle.w16.ice.004"] = {
		"La montagna ci guarda. Diamole qualcosa che valga la pena vedere.",
		"Quassù il freddo uccide piano. Io faccio prima.",
		"Questa zuffa l'ha scelta Dun Morogh. La chiudo io.",
	},
	["dmo.battle.w16.ice.005"] = {
		"Chi cade qui, i cumuli lo coprono in fretta. Meglio che non sia io.",
		"La neve non tiene rancori né nomi. Combatti come se contasse lo stesso.",
	},
	["dmo.battle.w16.ice.006"] = {
		"Sbrighiamoci, prima che le dita si scordino come si chiude un pugno.",
		"Facciamola breve. Già adesso le mani le sento appena.",
		"Facciamo in fretta. Le orecchie stanno per staccarsi.",
	},
	["dmo.battle.w16.ice.007"] = {
		"Ironforge è scavata in questa stessa roccia. Di testardaggine ne ho quanta lei.",
		"I nani hanno ricavato una reggia da queste montagne. Io posso tenere un pezzo di terreno.",
	},
	["dmo.battle.w16.ice.008"] = {
		"si getta nello scontro, e la valle rimanda dalle pareti il primo grido.",
		"affronta la minaccia, mentre le pareti bianche delle montagne sovrastano la scena come giudici.",
	},
	["dmo.battle.w16.ice.009"] = {
		"Spalle rigide, mani fredde. O ti scaldi al primo scambio o il secondo non serve.",
		"Con questo gelo fa male tutto. Bene: il dolore tiene desta l'attenzione.",
	},
	["dmo.battle.w16.ice.010"] = {
		"Ho camminato con la neve alle ginocchia per arrivare qui. Fa' che ne valga la pena.",
		"Con tutti i posti per attaccar briga, proprio uno gelato. Che fegato.",
		"Non ho fatto tutta questa salita per farmi fermare da te.",
	},
	["dmo.battle.w16.ice.011"] = {
		"Pianta pure i piedi. Vediamo chi preferisce il ghiaccio.",
		"Su un appoggio così basta un errore. Fallo tu.",
	},
	["dmo.battle.w16.ice.012"] = {
		"A Kharanos ci sono forge accese e un focolare. Chiudi questa storia e va' a cercarli.",
		"Zuffa piccola, montagne grandi. Quassù nessuno se ne ricorderà, a parte me.",
	},
	["dmo.battle.w16.ice.013"] = {
		"si ferma di colpo tra le rocce quando arriva lo scontro, la valle muta intorno.",
		"si volta ad affrontare l'attacco, la parete della montagna alle spalle e nessun posto morbido dove cadere.",
	},
	["dmo.battle.w16.ice.014"] = {
		"Ho attraversato laghi gelati che ci hanno messo più impegno a farmi fuori.",
		"Prima il gelo, poi tu. Mettiti in fila.",
	},
	["dmo.battle.w16.trogg.001"] = {
		"Rockjaw! Hai scavato per salire fin qui. Per scappare non ti basterà scavare.",
		"Vieni dal profondo, eh? Quassù vigono altre regole. Prima lezione.",
		"Torna al buio, Rockjaw. Ti si addice di più.",
	},
	["dmo.battle.w16.trogg.002"] = {
		"Trogg. Nessuno sa fin dove scendano le loro gallerie; di certo, abbastanza in fondo da sputarne fuori sempre altri.",
		"Un trogg allo scoperto, che strizza gli occhi. Odia il bianco quanto me.",
	},
	["dmo.battle.w16.trogg.003"] = {
		"Molla l'osso, trogg. Ho visto clave migliori in una catasta di legna.",
		"Bell'osso. È la clava o il pranzo?",
		"Quella sarebbe una clava? Ho visto nani girare lo stufato con mestoli più grossi.",
	},
	["dmo.battle.w16.trogg.004"] = {
		"affronta di petto la carica del trogg, che perde ancora polvere di roccia dalla pelle.",
		"pianta i piedi mentre il trogg sbuca arrancando dalle rocce, nocche in avanti.",
	},
	["dmo.battle.w16.trogg.005"] = {
		"Gol'Bolar era una cava dei nani prima che ci strisciassi dentro tu. Fuori.",
		"Queste montagne hanno già chi le abita, trogg. Tu non sei nel contratto.",
	},
	["dmo.battle.w16.trogg.006"] = {
		"Sono risaliti i trogg ed è caduta una città. Difficile vederci solo un bruto.",
		"Una delle cose che hanno svuotato Gnomeregan. Sembra troppo ottusa per averlo fatto, ed è questo che mi spaventa.",
	},
	["dmo.battle.w16.trogg.007"] = {
		"Indietro! Qualunque cosa ti abbia fatto Gnomeregan, io non posso disfarla.",
		"Piano, piano. Non lo voglio neanch'io, ma non mi lasci scelta.",
	},
	["dmo.battle.w16.trogg.008"] = {
		"Occhi sbagliati. Qualcosa di quella città è entrato lì e ci è rimasto.",
		"Uno gnomo, o quello che il veleno ne ha lasciato. Si muove ancora come se ricordasse un'officina.",
	},
	["dmo.battle.w16.trogg.009"] = {
		"Dark Iron, così a nord? I tuoi fuochi sono parecchio lontani da qui.",
		"Spiare sotto il naso di Ironforge? Ci vuole fegato. E di solito dura poco.",
	},
	["dmo.battle.w16.trogg.010"] = {
		"si volta verso il nano Dark Iron, e l'antica faida tra i clan diventa d'un tratto vicina da toccare.",
		"affronta il Dark Iron: la vecchia guerra dei clan, ridotta a un palmo di gelo.",
	},
	["dmo.battle.w16.trogg.011"] = {
		"Quanti siete, laggiù? Lascia stare, vi conto quassù.",
		"Ogni buca di questa valle ha il suo trogg. Si comincia da te.",
	},
	["dmo.battle.w16.trogg.012"] = {
		"Ringhia quanto vuoi. La pietra non mi fa paura, e tu sei quasi tutto pietra.",
		"Rockjaw. Cranio duro, pelle ancora più dura. Il punto debole lo trovo.",
	},
	["dmo.battle.w16.trogg.013"] = {
		"I trogg picchiano duro e pensano piano. Il trucco è farli pensare.",
		"Bassi e pesanti, tutti spalle. Fuori dalla loro portata, e che si stanchino.",
	},
	["dmo.battle.w16.trogg.014"] = {
		"Un tempo aggiustavi congegni per qualcuno. Adesso sei un pericolo sulla strada. Mi spiace.",
		"Torna verso Gnomeregan! Non voglio farlo.",
	},
	["dmo.battle.w16.troll.001"] = {
		"Faccia dipinta e sguardo duro. Frostmane, ti servirà più di questo.",
		"Giù dalla tua cresta e allo scoperto. Bene: preferisco averti sotto gli occhi.",
		"Frostmane. Che vocione, per un posto così freddo.",
	},
	["dmo.battle.w16.troll.002"] = {
		"Troll dei ghiacci. Lontani parenti delle tribù della giungla, dice qualcuno, induriti dal freddo. Loro non lo temono come me.",
		"A suo agio nel gelo, mentre io tremo. Quel vantaggio è del troll.",
	},
	["dmo.battle.w16.troll.003"] = {
		"sente il grido del Frostmane rimbalzare tra le creste e gli muove incontro.",
		"avanza verso il troll mentre il suo grido di guerra rotola giù dalle pareti di roccia, più forte per l'eco.",
	},
	["dmo.battle.w16.troll.004"] = {
		"Vivete in grotte in cima a una montagna gelata. Quasi mi fate pena.",
		"Frostmane! Ma scendete mai a valle per qualcosa che non siano guai?",
		"Persino gli arieti hanno più creanza di te, troll.",
	},
	["dmo.battle.w16.troll.005"] = {
		"Urla più forte, troll. Le montagne ti fanno eco, e io resto dove sono.",
		"Il tuo veggente borbotti pure. Io un passo indietro non lo faccio.",
	},
	["dmo.battle.w16.troll.006"] = {
		"Guarda le spalle, non la punta della lancia. Un troll annuncia ogni mossa, se sai dove guardare.",
		"Braccia lunghe, piedi rapidi. Accorcia la distanza e non mollarla.",
	},
	["dmo.battle.w16.troll.007"] = {
		"Ossa infilate al collo. Non aggiungere le mie alla collezione.",
		"Tieniti i tuoi trofei, troll. Questo non lo aggiungi.",
	},
	["dmo.battle.w16.troll.008"] = {
		"si volta verso il troll, il volto dipinto e gli amuleti d'osso netti contro il bianco alle sue spalle.",
		"affronta il Frostmane, che negli occhi ha il freddo paziente delle grotte.",
	},
	["dmo.battle.w16.troll.009"] = {
		"Assalti sulla strada per Kharanos? Non finché ci cammino io.",
		"Restate nelle vostre grotte, Frostmane. Le strade della valle non sono roba da razziare.",
		"La gente della valle ha già abbastanza guai. Tu sei un guaio che posso sistemare.",
	},
	["dmo.battle.w16.troll.010"] = {
		"I troll di quassù non seppelliscono nessuno. Ci pensa la neve.",
		"Se va male, saranno i Frostmane a decidere cosa resta di me. Fa' che non vada male.",
	},
	["dmo.battle.w16.troll.011"] = {
		"Oh, bene, un troll. Il panorama cominciava ad annoiarmi.",
		"Pitture e strilli. Lo provate, nelle grotte?",
	},
	["dmo.battle.w16.troll.012"] = {
		"Il ghiaccio è casa tua, troll. Io ho solo imparato a starci in piedi.",
		"Il ghiaccio è tuo, la cresta è tua, lo scontro è tuo. La vittoria, mia.",
	},
	["dmo.battle.w16.troll.013"] = {
		"Frostmane. Conosci questi pendii e lo rispetto. Ma non te li cedo.",
		"La tua roccaforte, le tue grotte, la tua montagna. Ma questo pezzo è mio.",
	},
	["dmo.battle.w16.troll.014"] = {
		"para l'affondo del troll sul ghiaccio, tra una scivolata e l'altra.",
		"si abbassa sotto il lungo braccio del troll e gli entra nella guardia, gli stivali che scricchiolano sulla crosta.",
	},
	["dmo.battle.w16.wild.001"] = {
		"Fame? Quassù ce l'hanno tutti. Cercati qualcosa di più piccolo.",
		"Lo so, col freddo si mangia poco. Ma io nel menù non ci sono.",
		"No. Ho più nervi che carne: non ne vale la pena.",
	},
	["dmo.battle.w16.wild.002"] = {
		"incrocia lo sguardo della bestia, e nessuno dei due lo abbassa per primo.",
		"osserva l'animale girare in tondo, basso e magro come tutto quassù, e ruota insieme a lui.",
	},
	["dmo.battle.w16.wild.003"] = {
		"Dov'è il resto del branco? Dietro i pini, ci scommetto.",
		"Lupo solitario, o l'esca per gli altri? Fa lo stesso.",
		"Lupi, naturalmente. Quassù sono sempre lupi.",
	},
	["dmo.battle.w16.wild.004"] = {
		"Un cinghiale con un conto in sospeso. A Kharanos c'è uno spiedo che ti aspetta.",
		"Piano, porco. Nessuno vuole le tue radici gelate.",
	},
	["dmo.battle.w16.wild.005"] = {
		"Un orso, svegliato e furibondo. Lontano da quelle braccia.",
		"Grosso, lento a girarsi e troppo arrabbiato per badarci. Sfrutta tutte e tre le cose.",
	},
	["dmo.battle.w16.wild.006"] = {
		"Fuori dal Grizzled Den, eh? Ruggisci quanto vuoi.",
		"Wendigo! Torna nella tua tana, o ti ci rimando io.",
	},
	["dmo.battle.w16.wild.007"] = {
		"affronta il wendigo, mucchio di bianco arruffato con voce di legno spaccato.",
		"tiene la posizione mentre il wendigo si erge, più alto di qualsiasi porta di Kharanos.",
	},
	["dmo.battle.w16.wild.008"] = {
		"Ha solo fame, come tutto quassù. Mi dispiace, ma fino a un certo punto.",
		"Costole sporgenti sotto la pelliccia folta. La montagna affama le sue creature e poi me le manda contro.",
	},
	["dmo.battle.w16.wild.009"] = {
		"Mostri i denti? Va bene. Anch'io ho il mio modo di dire di no.",
		"Indietro, bestia. Ho più freddo di te e un umore peggiore.",
		"Ringhia a qualcuno che si spaventa facilmente.",
	},
	["dmo.battle.w16.wild.010"] = {
		"Ogni allevatore di questa valle mi ringrazierebbe. Guadagniamocelo.",
		"Un predatore in meno vicino ai ranch. Val bene qualche dito intirizzito.",
	},
	["dmo.battle.w16.wild.011"] = {
		"accoglie la carica sul bordo di un cumulo, e lo scontro esplode in uno spruzzo bianco.",
		"si prepara mentre la bestia arriva a balzi sulla neve indurita.",
	},
	["dmo.battle.w16.wild.012"] = {
		"Guarda le orecchie. Quando si appiattiscono, arriva.",
		"Pazienza. Le bestie di quassù non sprecano una mossa. Nemmeno io.",
	},
	["dmo.battle.w16.wild.013"] = {
		"Calma, adesso. Tu hai fame, io ho freddo, e nessuno dei due ne ha voglia.",
		"Sciò! Vatti a cercare qualcuno della tua taglia!",
	},
	["dmo.battle.w16.wild.014"] = {
		"È la legge della montagna: qualcosa di affamato, qualcosa sulla sua strada. Stavolta sulla strada ci sono io.",
		"Quassù nessuno mangia gratis. La bestia lo sa. Anch'io.",
	},
	["dmo.journey.w16.land.001"] = {
		"scivola a terra e batte i piedi un paio di volte, per ricordare alle gambe come si cammina.",
		"tocca terra con uno scossone, si spazzola via i cristalli di ghiaccio dalle maniche e si guarda intorno, tra i pendii bianchi.",
	},
	["dmo.journey.w16.land.002"] = {
		"Piedi a terra, e la prima cosa che Dun Morogh offre è un freddo che passa dritto attraverso gli stivali.",
		"Terra sotto di me, odore di pino e di fumo di carbone nell'aria. È proprio questa valle.",
		"A piedi, finalmente. Il freddo mi aspettava all'arrivo come un padrone di casa senza maniere.",
	},
	["dmo.journey.w16.land.003"] = {
		"Grazie del passaggio. Le mie ginocchia se lo ricorderanno più di me.",
		"Giù, e senza pezzi mancanti. Qualcuno mi indichi qualcosa di caldo.",
	},
	["dmo.journey.w16.land.004"] = {
		"Il volo finisce, e le montagne all'improvviso tornano enormi. Dall'alto sembravano carta piegata.",
		"Coi piedi per terra, le vette si riprendono il cielo. Buffo quanto in fretta smettano di sembrare piccole.",
	},
	["dmo.journey.w16.land.005"] = {
		"si allontana dalla cavalcatura con le spalle strette contro il freddo e osserva a lungo la valle prima di scegliere una strada.",
		"arriva in uno sbuffo di neve sollevata e aspetta che il mondo smetta di ondeggiare prima di muovere un passo.",
	},
	["dmo.journey.w16.land.006"] = {
		"Dopo il fragore dell'aria, il silenzio della neve è quasi assordante. Resto un momento immobile e lascio che si posi.",
		"Il volo mi lascia nelle orecchie un ronzio che la montagna, piano piano, si inghiotte.",
	},
	["dmo.journey.w16.land.007"] = {
		"scende fuori dalla nebbia, col terreno che compare solo all'ultimo istante, bianco su bianco.",
		"atterra in un grigiore dove le vette sono solo supposizioni, e aspetta che le sagome della valle prendano consistenza.",
	},
	["dmo.journey.w16.rise.001"] = {
		"Laggiù Kharanos si riduce a una macchia di fumo e tetti, e la valle diventa una mappa che qualcuno ha dimenticato di colorare.",
		"Da quassù le strade della valle sono fili scuri e sottili cuciti sul bianco.",
		"Il terreno sprofonda così in fretta che perdo di vista il villaggio in un attimo. Quassù ci sono solo creste e bianco.",
	},
	["dmo.journey.w16.rise.002"] = {
		"si aggrappa alle cinghie mentre il terreno sprofonda e i campi di neve ruotano lenti, sempre più in basso.",
		"si sporge appena per veder scorrere i laghi gelati, piatti e chiari come peltro lucidato.",
	},
	["dmo.journey.w16.rise.003"] = {
		"Verso ovest, l'ingresso di Gnomeregan sta acquattato fra le colline. Da quassù sembra quasi in pace, ed è questo il peggio.",
		"In alto sopra la città perduta degli gnomi, e niente in superficie racconta cosa sia andato storto là sotto.",
	},
	["dmo.journey.w16.rise.004"] = {
		"Si sale! Occhio alle vette, sono più alte di quanto sembri.",
		"Più in alto! Voglio tutta la valle in un colpo solo, prima che mi si congelino le orecchie.",
	},
	["dmo.journey.w16.rise.005"] = {
		"Sotto, le montagne si accalcano cresta dopo cresta, e le strade dei nani ci passano in mezzo come se ci fossero da sempre.",
		"Più in alto di quanto salga qualsiasi montanaro. Le vette che sovrastavano la valle ora sono denti bianchi, molto più in basso.",
		"I nani hanno impiegato secoli a tagliare strade fra quelle creste. Io le attraverso nel tempo di uno starnuto.",
	},
	["dmo.journey.w16.rise.006"] = {
		"si sistema in sella al grifone mentre le grandi ali battono, e Dun Morogh si inclina e scivola via là sotto.",
		"dà una pacca sul collo del grifone mentre superano l'ultima cresta, con la valle bianca distesa alle spalle.",
	},
	["dmo.journey.w16.rise.007"] = {
		"Se la valle era fredda, il cielo sopra è tutta un'altra discussione. Ritiro ogni parola detta sulla terra.",
		"Le dita si erano appena scaldate. Ovvio che adesso tocca volare.",
	},
	["dmo.landmark.w16.mark.001"] = {
		"Coldridge Valley è chiusa da ogni lato. Al riparo dal peggio delle montagne, dicono, se non da ciò che striscia fuori dalle sue grotte.",
		"Una valle come una mano a coppa. Qualunque cosa succeda qui dentro, le pareti di roccia la sentono per prime.",
		"Rupi tutt'intorno e un tunnel per porta. La valle tiene per sé i suoi pensieri.",
	},
	["dmo.landmark.w16.mark.002"] = {
		"segue il sentiero battuto giù nella valle, oltre gli ordini gridati delle esercitazioni e i lupi che si aggirano sui pendii lontani.",
		"entra nella valle e sente, da qualche parte vicino alla sala di pietra, il clangore regolare di qualcuno che si esercita.",
	},
	["dmo.landmark.w16.mark.003"] = {
		"{landmark}: qui la montagna dà la prima lezione a chiunque passi. La lezione si intitola «freddo».",
		"Ecco dove portano chi è appena arrivato. Riparato, tranquillo e pieno di lupi. Un'educazione equilibrata.",
	},
	["dmo.landmark.w16.mark.004"] = {
		"Coldridge. Raccolta, riparata e, chissà come, gelida da far male.",
		"Grotte di troll da una parte, una sala dei nani dall'altra, e io nel mezzo. Delizioso.",
	},
	["dmo.landmark.w16.mark.005"] = {
		"Coldridge ha accolto la mia gente quando Gnomeregan non poteva più ospitarci. Un debito così non sbiadisce.",
		"Mura dei nani, fuochi dei nani, e gnomi al riparo lì accanto. La caduta di Gnomeregan ha reso vicini due popoli, in tutta fretta.",
	},
	["dmo.landmark.w16.mark.006"] = {
		"Kharanos è tutta muri di pietra e tetti spioventi, fatti per scrollarsi la neve e tenersi dentro il caldo. Qui niente è costruito per bellezza.",
		"{landmark} ha un suono tutto suo: martello sull'incudine, ruote di carro sulla pietra, il borbottio dei montanari vicino alle porte.",
	},
	["dmo.landmark.w16.mark.007"] = {
		"entra nel villaggio passando davanti alla forgia, dove le scintille saltano dall'incudine e il calore si allunga fin sulla strada.",
		"rallenta tra le case, osservando il via vai di arieti, carri e montanari sulla strada per Ironforge.",
		"arriva al margine del villaggio, dove la neve è stata spalata in alti argini lungo la strada e camminare all'improvviso diventa facile.",
	},
	["dmo.landmark.w16.mark.008"] = {
		"Se a Dun Morogh c'è un posto più caldo di questo, nessuno me l'ha detto.",
		"Questo sì che è un villaggio. Tetti, mura, e gente che ha l'aria di chi ti presterebbe un cappotto.",
		"Cibo caldo, una forgia e un tetto. Kharanos, hai tutta la mia attenzione.",
	},
	["dmo.landmark.w16.mark.009"] = {
		"Ogni nano della valle qui ha alzato il boccale per qualcosa: una nascita, una sepoltura, una buona vena di minerale.",
		"Fumo di carbone, lana bagnata, un sentore di birreria. Per un naso di nano, è l'odore di un villaggio come si deve.",
	},
	["dmo.landmark.w16.mark.010"] = {
		"Niente maestro di volo, niente porto, niente grandi mura. {landmark} se la cava con cibo caldo, lavoro onesto e buona birra, e non sembra soffrirne.",
		"Un villaggio piantato proprio sulla strada per Ironforge, che però tiene il suo ritmo lento. Il via vai gli scorre accanto come un torrente attorno a un macigno.",
	},
	["dmo.lowhp.w16.hold.001"] = {
		"Da qui la neve sembra morbida. Non lo è. Resta in piedi.",
		"Non inginocchiarti. Se mi inginocchio quassù, il freddo farà in modo che sia per sempre.",
		"Su. Il terreno è più freddo di qualunque colpo.",
	},
	["dmo.lowhp.w16.hold.002"] = {
		"Tutto qui? Una lastra di ghiaccio mi ha buttato giù peggio di così!",
		"Mi hai fatto male, sì. È finita? Non su questa montagna.",
		"Lividi e gelo, ma non ho finito!",
	},
	["dmo.lowhp.w16.hold.003"] = {
		"Mani intorpidite, piedi intorpiditi. Bene: così anche il resto fa meno male.",
		"Per una volta il gelo mi fa un favore: quasi non sento niente.",
		"Fa così freddo che il dolore arriva piano. Sfrutta il tempo.",
	},
	["dmo.lowhp.w16.hold.004"] = {
		"scivola su un ginocchio sul terreno gelato e torna su, più adagio, ma torna su.",
		"barcolla, si appoggia a una roccia e resta lì, rifiutandosi di cedere.",
	},
	["dmo.lowhp.w16.hold.005"] = {
		"Non così. Non in vista di Ironforge.",
		"Se cado qui, i nani ci faranno una canzone. Preferirei non sentirla.",
	},
	["dmo.lowhp.w16.hold.006"] = {
		"Strisciando non arrivo da nessuna parte al caldo. Quindi niente strisciare: combatti.",
		"È il punto in cui i racconti saltano avanti. Io preferisco restare.",
		"Ogni cosa testarda di queste montagne resiste. Sii una di loro.",
	},
	["dmo.lowhp.w16.hold.007"] = {
		"Ahi. Va bene. Questa me la ricordo.",
		"Questa ha fatto male. Adesso, oltre al freddo, ho pure la rabbia.",
	},
	["dmo.lowhp.w16.hold.008"] = {
		"Il bianco comincia a ondeggiare. Sbatti le palpebre. Scegli una cosa e colpiscila.",
		"Tutto è diventato bianco e lontano. Concentrati sull'unica cosa vicina.",
	},
	["dmo.lowhp.w16.hold.009"] = {
		"ondeggia sul pendio sotto le cime indifferenti, e non cade.",
		"vacilla, ogni dolore reso più acuto dal freddo, e in qualche modo tiene alta la guardia.",
	},
	["dmo.lowhp.w16.hold.010"] = {
		"Dovrai fare di meglio. Ho la testa dura come la roccia qui sotto!",
		"Colpiscimi ancora. La montagna mi ha insegnato a stare in piedi.",
		"Ironforge ha resistito a peggio di te!",
	},
	["dmo.lowhp.w16.hold.011"] = {
		"Mani che tremano. Pazienza. Anche una mano che trema sa stringere.",
		"Calma. Chi perde la testa sul ghiaccio ci finisce sotto.",
		"Scegli una roccia. Appoggiati. Colpisci da lì.",
	},
	["dmo.lowhp.w16.hold.012"] = {
		"A terra due volte, in piedi due volte. Continua a contare.",
		"Giù una volta, su una volta. Posso andare avanti più di te.",
	},
	["dmo.lowhp.w16.hold.013"] = {
		"Ecco come entra il freddo. Dalle crepe che lascia aperte uno scontro.",
		"Tutto si fa silenzioso, come la neve. Scuotiti di dosso questa quiete.",
	},
	["dmo.lowhp.w16.hold.014"] = {
		"si toglie la brina dagli occhi col dorso della mano e pianta di nuovo i piedi, con lo sguardo cupo.",
		"riporta uno stivale su un appoggio più saldo e resiste lì, senza piegarsi.",
	},
	["dmo.lowhp.w16.hold.015"] = {
		"Vorrei un fuoco caldo e una benda. In qualunque ordine.",
		"Ahi. Qualcuno metta il bollitore sul fuoco, a Kharanos.",
	},
	["dmo.lowhp.w16.hold.016"] = {
		"La montagna è sopravvissuta a tutto ciò che vi ha sanguinato sopra. A me basta sopravvivere a questo.",
		"Appoggiati al dolore come a un muro. Regge più di quanto dovrebbe.",
		"Il dolore è solo un altro tipo di freddo. Il freddo lo conosco.",
	},
	["dmo.lowhp.w16.hold.017"] = {
		"Mi vuoi nella neve? Vieni a mettermici tu!",
		"Avvicinati! Se cado, ti porto giù per il pendio con me!",
		"Mi rialzo, e resto su!",
	},
	["dmo.lowhp.w16.hold.018"] = {
		"Uno scambio, e poi il prossimo. Non guardare più in là.",
		"Conta i colpi. Altri cinque li reggo. Falli valere.",
	},
	["dmo.lowhp.w16.hold.019"] = {
		"vacilla, e per un istante le montagne bianche sembrano chinarsi a guardare.",
		"affonda di mezzo passo nel cumulo, poi se ne strappa fuori, la mascella serrata contro il dolore.",
	},
	["dmo.lowhp.w16.hold.020"] = {
		"Se ne esco, il primo giro a Kharanos lo offro io. Anzi, tutti i giri.",
		"Dopo questa, qualcuno mi offre da bere. Probabilmente io.",
	},
	["dmo.muse.w16.folk.001"] = {
		"I nani della valle parlano ancora della guerra che divise i loro clan in tre. Quassù un vecchio rancore si conserva bene come la carne sotto la neve.",
		"Agenti Dark Iron che si aggirano attorno a Ironband's Compound. I nani di qui sputano quando dicono quel nome, come se la vecchia guerra fosse finita la settimana scorsa.",
	},
	["dmo.muse.w16.folk.002"] = {
		"Gli Ironforge Mountaineers pattugliano queste strade a coppie e, da quel che vedo, litigano per tutto il giro.",
		"Due montanari di pattuglia coprono una valle intera senza risolvere niente. Per esempio, a chi tocchi portare il bollitore.",
	},
	["dmo.muse.w16.folk.003"] = {
		"Ad Amberstill crescono gli arieti come certa gente cresce i figli: con fermezza, un sacco di urla e, in segreto, tanto orgoglio.",
		"Allevatori di arieti. Parlano alle bestie con una voce che non userebbero mai con una persona. Più dolce, quasi sempre.",
	},
	["dmo.muse.w16.folk.004"] = {
		"Gnomi e nani si dividono queste valli come una vecchia coppia: brontolano, si prendono in prestito gli attrezzi, e non si separano mai del tutto.",
		"Un nano che regge la lanterna, uno gnomo con tutte e due le braccia dentro la macchina, e tutti e due che danno ordini. A Dun Morogh, pare, le cose si aggiustano così.",
		"Gli gnomi hanno perso una città e i nani gli hanno prestato una montagna. Nessuno dei due ne parla granché. Continuano a passarsi le cose di mano.",
	},
	["dmo.muse.w16.folk.005"] = {
		"A Kharanos producono abbastanza birra da far galleggiare una nave, eppure Ironforge si lamenta sempre che manca.",
		"In quel villaggio non smettono mai di fare birra, e i barili non arrivano mai pieni in fondo alla valle.",
	},
	["dmo.muse.w16.folk.006"] = {
		"La forgia di Kharanos non tace mai del tutto. Da qualche parte, in quel villaggio, c'è sempre qualcuno che batte il ferro.",
		"Anche lontano, sui pendii, a volte si distingue il suono di un martello da Kharanos. La valle va a tempo su quel ritmo.",
	},
	["dmo.muse.w16.folk.007"] = {
		"I cacciatori che scendono dai pendii alti portano pelli sulle spalle e brina nella barba, e non dicono mai granché di dove sono stati.",
		"Un cacciatore nano può passare una settimana nei valichi alti e tornare con l'aria di chi è andato all'angolo. Ho smesso di credere a quell'aria.",
	},
	["dmo.muse.w16.folk.008"] = {
		"Steelgrill's Depot sa d'olio e di metallo bruciato, e ogni gnomo lì dentro ha in mano un attrezzo e un'opinione.",
		"Da Steelgrill's fai una domanda a uno gnomo e te ne rispondono tre. Due ti disegnano pure lo schema.",
	},
	["dmo.muse.w16.folk.009"] = {
		"Arieti da una parte della valle, mechanostrider dall'altra. Dun Morogh non sa decidere se viaggiare sulla lana o sugli ingranaggi.",
		"Sugli arieti giurano i nani, sui mechanostrider gli gnomi, e tutti imprecano contro la scelta degli altri.",
	},
	["dmo.muse.w16.folk.010"] = {
		"Qui la gente divide il fuoco con chiunque, purché prima si sia scrollato la neve dagli stivali. Pare che il galateo sia tutto lì.",
		"In queste valli uno sconosciuto alla porta ha un posto vicino al focolare prima ancora che gli chiedano il nome. Le domande aspettano che le mani si sgelino.",
	},
	["dmo.muse.w16.folk.011"] = {
		"Un nano con la pipa può restare fuori un'ora con questo freddo e chiamarla aria buona.",
		"Pipa accesa, cappuccio abbassato, neve alle ginocchia: ecco un nano in pausa. Io la chiamerei una prova di resistenza.",
	},
	["dmo.muse.w16.folk.012"] = {
		"Ogni nano che incrocio mi fa lo stesso cenno breve: uno dei nostri, vai pure. È un bel cenno da ricevere.",
		"Un cenno da uno sconosciuto col cappotto da montanaro, e non serviva dire altro. Qui ci riconosciamo senza una parola.",
	},
	["dmo.muse.w16.folk.013"] = {
		"I nani ridono di pancia, abbastanza forte da far tremare le imposte. Ne ho sentita una arrivare dall'altra parte della valle.",
		"La risata di un nano è metà grido e metà colpo di tosse, e nel raggio di cento passi nessuno riesce più a restare serio.",
	},
	["dmo.muse.w16.folk.014"] = {
		"Giù a Coldridge Valley i sergenti di Anvilmar addestrano i giovani, e quando l'aria è ferma le urla si sentono fin dai pendii lontani.",
		"Da Anvilmar esce un flusso continuo di giovani nani e gnomi con gli stivali nuovi e troppa sicurezza. Poi ci pensa la montagna.",
	},
	["dmo.muse.w16.folk.015"] = {
		"Brewnall Village. Con un nome così, almeno sai subito quali sono le loro priorità.",
		"Qualcuno ha chiamato un villaggio Brewnall e nessuno ha avuto da ridire. Già questo ti dice quasi tutto di Dun Morogh.",
	},
	["dmo.muse.w16.folk.016"] = {
		"Un ariete che tira una slitta di carbone sale a una sola velocità, e nessuna urla al mondo la cambia. I nani sembrano rispettarlo.",
		"Le slitte del carbone salgono la strada dietro arieti che non si lasciano mettere fretta. I conducenti camminano accanto, tranquilli, come se sul passo si fossero accordati da un pezzo.",
	},
	["dmo.muse.w16.folk.017"] = {
		"Nani, gnomi, un venditore ambulante umano, un elfo della notte di passaggio. Da vicino l'Alleanza è così: infreddolita, affollata e, quasi sempre, d'accordo.",
		"Prima o poi ogni popolo dell'Alleanza passa per queste valli, e ognuno si lamenta del freddo con un accento diverso.",
	},
	["dmo.muse.w16.folk.018"] = {
		"ricambia il cenno di un nano di passaggio, che non rallenta né dice una parola.",
		"scambia un rapido cenno con uno gnomo imbacuccato fino agli occhi, e il saluto si chiude senza che nessuno dei due si fermi.",
		"scambia un cenno con un pastore che porta giù per la strada due arieti, e nessuno dei tre rallenta.",
	},
	["dmo.muse.w16.folk.019"] = {
		"I Frostmane restano nelle loro grotte e sui crinali, i nani sul fondo della valle. In mezzo corre un confine che nessuno ha tracciato e che tutti conoscono.",
		"Sui crinali, chissà dove, i Frostmane osservano le strade della valle. Anche per loro, a modo loro, questa montagna è casa.",
	},
	["dmo.muse.w16.folk.020"] = {
		"Chiedi la strada a uno gnomo e ti dà una mappa. Chiedila a un nano e ti indica una montagna col dito.",
		"Per spiegarti la strada, gli gnomi usano i numeri e i nani i punti di riferimento. Io, chissà come, mi perdo in tutti e due i casi.",
	},
	["dmo.muse.w16.folk.021"] = {
		"segue con lo sguardo una macchia di fumo fino a una casa colonica rannicchiata sotto il pendio, la porta sepolta dalla neve.",
		"distingue in lontananza una fattoria isolata, poco più di un tetto scuro e un filo di fumo contro il bianco.",
	},
	["dmo.muse.w16.folk.022"] = {
		"sente da qualche parte su per il pendio il belato di un ariete, e il fischio secco di un nano che gli risponde.",
		"coglie lo sferragliare lontano di un mechanostrider da qualche parte sulla strada, e il belato indignato di un ariete che ne ha appena incontrato uno.",
	},
	["dmo.muse.w16.folk.023"] = {
		"si fa da parte per una pattuglia di montanari, che passa con un cenno e un'occhiata rapida ai suoi stivali, come a giudicare se reggeranno.",
		"esce dal sentiero per lasciar passare due montanari, che sfilano senza fretta, fucile in spalla, discutendo della cucina di qualcuno.",
	},
	["dmo.muse.w16.frost.001"] = {
		"Appoggia la mano a una parete di roccia, qui, ed è più fredda dell'aria intorno. A Dun Morogh il gelo non scende dall'alto: sale dalla pietra.",
		"Qui il freddo abita nella roccia. L'aria se lo fa soltanto prestare.",
	},
	["dmo.muse.w16.frost.002"] = {
		"Ogni tanto Iceflow Lake geme, una nota lunga e bassa da qualche parte sotto il ghiaccio, come una porta su un cardine gelato.",
		"Qualcosa si spacca lontano, su Iceflow Lake, un rumore che rotola da una riva all'altra e poi sparisce. Spero sia solo il ghiaccio che si assesta.",
	},
	["dmo.muse.w16.frost.003"] = {
		"Helm's Bed Lake è piatto e bianco, e l'unico modo per distinguere il ghiaccio dalla neve è camminarci sopra. Io non lo faccio.",
		"Dalla riva di Helm's Bed Lake non si capisce dove finisca la neve e cominci il ghiaccio. Certe domande è meglio lasciarle senza risposta.",
	},
	["dmo.muse.w16.frost.004"] = {
		"Dalle gronde di Kharanos pendono ghiaccioli lunghi come lance. Gli abitanti camminano in mezzo alla via, e ormai lo faccio anch'io.",
		"Ogni tetto della valle mette su una frangia di ghiaccioli, alcuni più lunghi di quanto sia alto uno gnomo. Qui si impara presto a non fermarsi sotto le gronde.",
	},
	["dmo.muse.w16.frost.005"] = {
		"La borraccia è gelata del tutto. Adesso mi porto dietro un sasso piccolo e freddissimo in una sacca di cuoio.",
		"Ho provato a bere e mi è uscito un blocchetto di ghiaccio. A Dun Morogh servono tutto con ghiaccio, che tu lo chieda o no.",
	},
	["dmo.muse.w16.frost.006"] = {
		"Con questo freddo la neve scricchiola sotto i piedi, un rumorino secco, come camminare su sacchi di farina.",
		"Ogni passo sulla neve dura fa un piccolo cigolio secco. Un'intera valle che protesta quando ci cammini sopra.",
	},
	["dmo.muse.w16.frost.007"] = {
		"si toglie dalle maniche una crosta di brina, che ricomincia a formarsi prima della prossima curva del sentiero.",
		"piega le dita intirizzite una per una, come chi controlla che siano ancora tutte in servizio.",
		"infila le mani sotto le ascelle per un momento e resta immobile, ad aspettare che la sensibilità ritorni.",
	},
	["dmo.muse.w16.frost.008"] = {
		"Ma come fanno gli arieti a sopportarlo? Ah, già. La lana. Tanta lana.",
		"Gli arieti di Amberstill hanno l'aria di stare benissimo. Sto pensando di chiederne in prestito uno.",
		"Fossi un ariete, starei benissimo. Invece sono una persona con un cappotto, e il cappotto sta perdendo.",
	},
	["dmo.muse.w16.frost.009"] = {
		"Il freddo, qui, non odia nessuno. Si prende semplicemente chi smette di muoversi, e ha una pazienza infinita.",
		"Un cumulo di neve è un letto morbido e una tomba onesta. I montanari dicono che l'una segue l'altro più spesso di quanto si creda.",
	},
	["dmo.muse.w16.frost.010"] = {
		"Le ombre si stendono azzurre sui campi di neve, nette come se fossero state ritagliate col coltello.",
		"Con questa luce ogni orma trattiene una pozza d'azzurro. La neve conserva la forma di chiunque sia passato.",
	},
	["dmo.muse.w16.frost.011"] = {
		"Ai bordi dei laghi resta preso nel ghiaccio di tutto: uno stivale, una doga di botte, una chiave inglese da gnomo. I laghi si tengono quello che ricevono.",
		"Sotto il ghiaccio limpido vicino alla riva c'è un guanto perduto, con le dita aperte, come se salutasse. Saluterà lì fino al disgelo, quando mai arriverà.",
	},
	["dmo.muse.w16.frost.012"] = {
		"Un consiglio: qui fuori non appoggiare la lingua su niente di ferro. Chiedimi come lo so. Anzi, meglio di no.",
		"Mano nuda sul ferro gelato, alla maniera di Dun Morogh. Morde più forte dei lupi.",
	},
	["dmo.muse.w16.frost.013"] = {
		"Con questo gelo tutto rallenta: l'acqua sotto il ghiaccio, le bestie nelle tane, persino i pensieri. Solo i nani tengono il passo di sempre.",
		"Il freddo è una specie di lentezza che entra dappertutto. I ruscelli si addensano, le bestie sonnecchiano, le parole escono lente, e poche.",
	},
	["dmo.muse.w16.frost.014"] = {
		"Neve fresca che cade sulla vecchia. Tutta la valle riscritta, riga dopo riga, in una grafia che non so leggere.",
		"I fiocchi nuovi si posano su ogni traccia, comprese le mie. Fra un'ora nessuno saprà chi è passato di qui.",
	},
	["dmo.muse.w16.frost.015"] = {
		"prosegue nel buio, mentre i campi di neve intorno trattengono una luce pallida, tutta loro.",
		"trova il sentiero senza fatica anche al buio: la neve restituisce ogni briciola di luce che c'è.",
	},
	["dmo.muse.w16.frost.016"] = {
		"Le cime colgono la prima luce molto prima della valle. Per un po' il mondo è illuminato dall'alto verso il basso.",
		"Lassù, sulle vette, la giornata è già cominciata. Quaggiù ci sta ancora pensando.",
	},
	["dmo.muse.w16.frost.017"] = {
		"si ferma dove il sentiero scende: la valle sotto è colma fino all'orlo di un biancore torbido, e solo le cime ne emergono, come isole.",
		"osserva il biancore inghiottire i pendii bassi, poi i pini, poi la strada stessa, finché non restano che i sassi più vicini.",
	},
	["dmo.muse.w16.frost.018"] = {
		"Tutto questo bianco acceca. Cammino con gli occhi socchiusi e mi fido dei piedi, il che è un errore.",
		"Una luce che fa male alla neve. Qualcuno abbassi un po' la valle, per favore.",
	},
	["dmo.muse.w16.frost.019"] = {
		"Orme di leopardo delle nevi che attraversano il pendio, profonde e regolari. È passato di qui senza fretta, ed è questo che preoccupa.",
		"Una fila di impronte tonde nella neve, larghe come un palmo, e nessuna trascinata. Un leopardo delle nevi, e pure tranquillo.",
	},
	["dmo.muse.w16.frost.020"] = {
		"mette il piede su una lastra di ghiaccio, si riprende con tutta la dignità possibile e si guarda intorno per vedere chi ha visto.",
		"slitta, annaspa e chissà come resta in piedi, poi riparte con grande cautela, come se nulla fosse accaduto.",
	},
	["dmo.muse.w16.frost.021"] = {
		"Qui il bianco continua finché non incontra il cielo, e da qualche parte, lì in mezzo, ci sono io, l'unica cosa che si muove.",
		"Solo neve in ogni direzione, e una piccola sagoma scura che la attraversa. Ci vuole un momento a ricordare che quella sagoma sono io.",
	},
	["dmo.muse.w16.frost.022"] = {
		"Alle mie spalle un ramo di pino si scrolla di dosso il suo carico con un tonfo sordo, e tutto il pendio sembra fermarsi ad ascoltare.",
		"La neve scivola da un ramo e cade con un fruscio. Quassù anche i rumori piccoli fanno notizia.",
	},
	["dmo.muse.w16.frost.023"] = {
		"si strofina le guance con la base dei palmi per ridarci un po' di sensibilità, con scarsi risultati.",
		"si tira la sciarpa sopra il naso e scruta tutto quel bianco da sopra il bordo.",
		"si rintana nel bavero finché non spuntano soltanto gli occhi, e continua a camminare.",
	},
	["dmo.muse.w16.frost.024"] = {
		"studia dalla riva la superficie gelata di un lago, la saggia con uno stivale e lo ritira al primo scricchiolio.",
		"batte il tacco sul bordo del ghiaccio del lago, che risponde con un suono lungo e profondo, come una campana colpita.",
		"fa scivolare un sassolino sul ghiaccio del lago e lo ascolta allontanarsi cantando, una nota alta e sottile.",
	},
	["dmo.muse.w16.frost.025"] = {
		"si stringe nel mantello mentre il gelo della notte cala sulla valle, così pungente da far crepitare la neve sotto i piedi.",
		"abbassa il mento mentre il gelo notturno si fa più fondo; persino le pietre sembrano contrarsi.",
	},
	["dmo.muse.w16.frost.026"] = {
		"Nano e gnomo, troll e trogg: in questa valle tutti devono fare i conti col freddo. È l'unica cosa che hanno in comune.",
		"Qui il freddo non si schiera. Morde il montanaro e il Frostmane allo stesso modo, e il viaggiatore prima di entrambi.",
		"Troll, trogg e nani si contendono tutto, in queste valli, tranne il freddo. Quello non lo vuole nessuno.",
	},
	["dmo.muse.w16.gnomeregan.001"] = {
		"Ogni tanto da ovest arriva un clangore, dalla parte di Gnomeregan. Macchine che nessuno sorveglia più, ancora in funzione.",
		"A ovest, sotto le colline, un grande motore potrebbe ancora girare al buio, senza più nessuno che gli dica di fermarsi.",
	},
	["dmo.muse.w16.gnomeregan.002"] = {
		"La neve verso Gnomeregan sembra uguale a quella di ogni altro posto. Gli gnomi ci girano intorno comunque, come se potesse non esserlo.",
		"Dai pendii a ovest gli gnomi stanno alla larga, anche dove la neve pare pulita. Sanno meglio di tutti noi cosa è uscito da quella città.",
	},
	["dmo.muse.w16.gnomeregan.003"] = {
		"I Rockjaw non stanno solo a Gnomeregan. Sono nella cava, nelle grotte, sotto le colline. I nani ne parlano come i contadini parlano delle locuste.",
		"Trogg a Gol'Bolar, trogg alla porta degli gnomi, trogg ovunque il terreno abbia una buca. Dun Morogh ha uno spiffero che viene dal basso.",
	},
	["dmo.muse.w16.gnomeregan.004"] = {
		"L'Alto Inventore Mekkatorque scelse di avvelenare la propria città per fermare i trogg. Nella valle tutti hanno un'opinione su quella scelta, e nessuno la dice ad alta voce.",
		"Per salvare un popolo, Mekkatorque ha rinunciato alla sua casa. Gli gnomi discutono ancora se sia servito, sottovoce, perché lui non senta.",
	},
	["dmo.muse.w16.gnomeregan.005"] = {
		"A nessuno gnomo serve una mappa per indicare l'ovest. Sappiamo tutti dove si trova Gnomeregan, come si sa dov'è una vecchia ferita.",
		"Qualunque gnomo troverebbe a occhi bendati la strada per la porta principale di Gnomeregan. Io tengo i piedi rivolti altrove.",
	},
	["dmo.muse.w16.gnomeregan.006"] = {
		"Gli gnomi usciti da Gnomeregan si sono portati via quel che potevano. Chi gli attrezzi, chi i figli, e chi soltanto i progetti che aveva in testa.",
		"Un popolo intero se n'è andato con le tasche piene di molle e la testa piena di progetti. Tutto il resto è rimasto ai trogg.",
	},
	["dmo.muse.w16.gnomeregan.007"] = {
		"I trogg hanno preso una città piena di ingranaggi e ci si sono seduti sopra. Come dare un orologio da taschino a un orso.",
		"Tutte quelle meraviglie a Gnomeregan, e i trogg le usano come mobili. Non so decidere se faccia piangere o ridere.",
		"Trogg che abitano le officine più raffinate del mondo. Da qualche parte uno gnomo piange in un fazzoletto piegato al millimetro.",
	},
	["dmo.muse.w16.gnomeregan.008"] = {
		"Una città costruita per durare mille anni, svuotata in una sola stagione. Gli gnomi sono bravissimi a costruire. Conservare, a quanto pare, è un altro mestiere.",
		"Gnomeregan era il posto più ingegnoso del mondo, e l'ingegno non l'ha salvata. Vale la pena ricordarlo.",
	},
	["dmo.muse.w16.gnomeregan.009"] = {
		"Che cosa hanno trovato i trogg là sotto, da volerci risalire tanto? Nella valle nessuno sembra saperlo, e i trogg non lo raccontano.",
		"Sono saliti da qualche parte sotto Gnomeregan, i trogg. Qualunque cosa ci sia più giù, o la stavano fuggendo o se la sono portata dietro.",
	},
	["dmo.muse.w16.gnomeregan.010"] = {
		"Mi dicono che gli gnomi lebbrosi seguono ancora le loro vecchie abitudini: aggiustano macchine che nessuno usa, sorvegliano porte che nessuno apre.",
		"A Kharanos raccontano che gli gnomi malati vicino alla città rispondono ancora ai loro vecchi mestieri. Un inventore continua a inventare, anche quando la mente se n'è andata.",
	},
	["dmo.muse.w16.gnomeregan.011"] = {
		"si china su un ingranaggio d'ottone abbandonato nella neve, lo gira con la punta dello stivale e lo lascia dov'è.",
		"nota un ricciolo di filo di rame mezzo congelato nel sentiero, un piccolo avanzo del lavoro degli gnomi, e ci gira attorno con cura.",
		"raccoglie dalla neve una vite gnomesca piegata, ne studia la filettatura sottile e la posa su una roccia, dove uno gnomo potrebbe trovarla.",
	},
	["dmo.muse.w16.gnomeregan.012"] = {
		"Abbiamo accolto gli gnomi quando la loro città è caduta. Un nano non tiene il conto di quanto costa una porta lasciata aperta.",
		"Gnomi a Ironforge, gnomi a Kharanos, gnomi alle nostre tavole. Era la cosa giusta, e nella montagna c'era posto.",
	},
	["dmo.muse.w16.gnomeregan.013"] = {
		"Gli gnomi della valle hanno l'abitudine di lanciare un'occhiata a ovest. Lo fanno mentre parlano, mentre lavorano, senza accorgersene.",
		"Osserva abbastanza a lungo uno gnomo di Dun Morogh, e prima o poi lo sguardo va a ovest, solo per un momento, poi torna al lavoro.",
	},
	["dmo.muse.w16.gnomeregan.014"] = {
		"Gnomeregan riavrà i suoi gnomi, un giorno. Sono troppo testardi per rinunciare, e troppo ingegnosi per aspettare in silenzio.",
		"Segnatevelo: gli gnomi si riprenderanno quella città. Stanno già disegnando i progetti.",
	},
	["dmo.muse.w16.gnomeregan.015"] = {
		"coglie un odore leggero d'olio e di metallo bruciato che arriva da qualche parte a ovest, e volta la testa da quella parte per un lungo momento.",
		"arriccia il naso per un sentore acido, metallico, che sembra venire dalla direzione di Gnomeregan.",
	},
	["dmo.muse.w16.gnomeregan.016"] = {
		"I trogg strizzano gli occhi al cielo aperto come se fosse un errore di qualcuno. Quasi li capisco.",
		"Un trogg alla luce del giorno sembra offeso dall'idea stessa del cielo. È salito per la pietra, mica per il panorama.",
	},
	["dmo.muse.w16.gnomeregan.017"] = {
		"Abbiamo costruito meraviglie, e poi l'unica cosa che ci ha cacciati via. Certe volte non so decidere quale delle due fosse la più ingegnosa.",
		"Ogni gnomo che incontri a Dun Morogh si porta una città sulla schiena. Solo che non permettiamo che ci rallenti.",
	},
	["dmo.muse.w16.gnomeregan.018"] = {
		"Forse sotto Dun Morogh ci sono sale più antiche di quelle che qualunque nano abbia mai segnato sulle carte. Gnomeregan ne ha appena scalfito la superficie, e guarda cos'è salito.",
		"Il profondo sotto queste montagne va più giù di quanto i nani amino ammettere. Gnomeregan ci ha aperto una porta. Nessuno vuole trovare la seconda.",
	},
	["dmo.muse.w16.gnomeregan.019"] = {
		"Uno gnomo mi ha detto che Gnomeregan aveva le tubature migliori del mondo. Poi è rimasto zitto a lungo. Delle tubature non ho chiesto più nulla.",
		"Ogni gnomo che incontro ha una storia su qualche meraviglia della vecchia città. Tutte le storie si interrompono nello stesso punto.",
	},
	["dmo.muse.w16.gnomeregan.020"] = {
		"gira largo intorno a un mucchio di rottami gnomeschi arrugginiti a bordo strada, mezzo sepolto e con un debole ticchettio.",
		"sente un tic-tic sommesso da un mucchio di rottami arrugginiti mezzo affondato nella neve, e lo lascia ben stare.",
	},
	["dmo.muse.w16.gnomeregan.021"] = {
		"Trogg. Brutti, testardi, e puzzano di cantina umida. Probabilmente, di me, dicono altrettanto.",
		"Prima un trogg mi ha {g:guardato|guardata} con autentico disgusto. Ho deciso di prenderlo come un complimento.",
		"Puzzano come una cantina che si è allagata una volta e non è mai stata perdonata, i trogg.",
	},
	["dmo.muse.w16.road.001"] = {
		"Il tunnel verso est, per Loch Modan, è una lunga gola di pietra con le lanterne lungo le pareti. Sarebbe un brutto posto per vederle spegnersi.",
		"Andare a est vuol dire passare dentro la montagna: un lungo corridoio in penombra, uno sgocciolio da qualche parte, e in fondo una moneta di luce che cresce piano.",
	},
	["dmo.muse.w16.road.002"] = {
		"Prima o poi metà dei viaggiatori dei Regni Orientali risale questa valle diretta a Ironforge, e tutti battono i piedi negli stessi punti.",
		"Pellegrini per la Grande Forgia, mercanti per la banca, gente smarrita in cerca di indicazioni. Ogni strada di Dun Morogh finisce per portare qualcuno alle porte.",
	},
	["dmo.muse.w16.road.003"] = {
		"Ogni cartello di questa valle indica Ironforge, più o meno. I nani non hanno visto motivo di indicare altro.",
		"Segui un qualunque cartello abbastanza a lungo, qui, e arrivi a Ironforge. O da un orso. Ma soprattutto a Ironforge.",
	},
	["dmo.muse.w16.road.004"] = {
		"mette il piede in un vecchio solco di carro, gelato e duro come il ferro, per poco non si storta una caviglia e riprende a camminare guardando male la strada.",
		"avanza con cautela tra i solchi gelati della strada, dove ogni ruota passata di lì ha lasciato una cresta su cui inciampare.",
		"si stacca a calci le zolle di neve gelata dai tacchi ogni pochi passi, il pedaggio che chiede una strada vecchia.",
	},
	["dmo.muse.w16.road.005"] = {
		"La salita alle porte di Ironforge va avanti e indietro sul pendio, come se la strada non avesse alcuna fretta di arrivare.",
		"Un tornante dopo l'altro verso le porte. I nani avrebbero potuto tagliarla dritta: hanno preferito farti guadagnare il panorama.",
	},
	["dmo.muse.w16.road.006"] = {
		"A Dun Morogh tutto è \"appena dietro quel crinale\". C'è sempre un crinale in più, e nessuno te lo dice.",
		"Qui le distanze si misurano in crinali. Tre crinali sono una passeggiata. Ho imparato a chiedere quanto sono grandi, i crinali.",
	},
	["dmo.muse.w16.road.007"] = {
		"In tutto questo bianco la strada è l'unica linea che qualcuno abbia mai tracciato. Me la tengo vicina, come si tiene la mano su una corda.",
		"Perdi la strada qui fuori e la neve è uguale in ogni direzione. I nani l'hanno fatta larga per un buon motivo.",
	},
	["dmo.muse.w16.road.008"] = {
		"Le guardie di South Gate Outpost tengono d'occhio l'imbocco del tunnel come se potesse decidere di inghiottire qualcuno. Con i trogg in giro, potrebbe.",
		"North Gate, South Gate: piccoli avamposti di pietra e di testardaggine, che tengono aperti i passi per tutti gli altri.",
	},
	["dmo.muse.w16.road.009"] = {
		"Indicazioni a Dun Morogh: oltre la statua grande, a sinistra al lago gelato, e se un orso ti vede hai sbagliato strada.",
		"Gira al secondo cumulo di neve. No, quell'altro. Ogni cumulo di neve sembra il secondo.",
	},
	["dmo.muse.w16.road.010"] = {
		"legge il cartello a un bivio, poi lo rilegge, come se una seconda occhiata potesse rivelare una strada più breve.",
		"strizza gli occhi davanti a un cartello incrostato di brina, ne libera le lettere col pollice e scopre che dicono quello che dicevano prima.",
	},
	["dmo.muse.w16.road.011"] = {
		"Sulla strada principale la neve è così battuta da stivali e zoccoli che luccica. Un passo di lato e affondi fino allo stinco.",
		"La valle tiene due tipi di neve: quella della strada, dura come una piastrella, e tutto il resto, che si inghiotte una gamba intera.",
	},
	["dmo.muse.w16.road.012"] = {
		"Ogni passo che esce da Dun Morogh sale. La valle è una conca, e il resto del mondo sta su, oltre il bordo.",
		"Da quaggiù le montagne chiudono ogni orizzonte. Bisogna uscire da Dun Morogh, in salita, per ricordarsi che c'è qualcosa oltre.",
	},
	["dmo.muse.w16.road.013"] = {
		"Chi ha tracciato la strada per Ironforge aveva il senso del teatro. Non serviva così larga, se non per fare colpo.",
		"Quel viale verso le porte è fatto apposta per farti sentire piccolo. Funziona. Mi sento una formica. Una formica intirizzita.",
	},
	["dmo.muse.w16.road.014"] = {
		"si sistema lo zaino più in alto sulle spalle e prende il passo lento e regolare che i pendii pretendono.",
		"accorcia il passo per la salita, come fanno i montanari, e si piega in avanti verso il pendio.",
	},
	["dmo.muse.w16.road.015"] = {
		"Dun Morogh è una soglia. Tutti la attraversano per andare altrove: la forgia, il Loch, la tranvia sotterranea per Stormwind.",
		"Quasi nessuno viene a Dun Morogh per restarci. Ci passano, battendo i piedi, diretti alle porte, al tunnel o alla tranvia.",
	},
	["dmo.muse.w16.road.016"] = {
		"A metà strada dalle porte, dal tunnel e da Gnomeregan: Kharanos sta nel mezzo di tutto, in questa valle.",
		"Prima o poi tutte le strade della valle sembrano incrociarsi a Kharanos, come i fili che si raccolgono in un nodo.",
	},
	["dmo.muse.w16.road.017"] = {
		"Lupi da un lato della strada, cinghiali dall'altro. La strada è l'unica cosa in questa valle che non vuole un pezzo di me.",
		"Resta sulla strada, mi hanno detto. Anche i lupi devono aver ricevuto lo stesso consiglio.",
	},
	["dmo.muse.w16.road.018"] = {
		"Gli sconosciuti su queste strade alzano una mano per salutarsi, sempre. Non costa nulla, e in tutto questo bianco vuoto conta.",
		"Un cenno della mano da un viandante che va nell'altra direzione. Qui si saluta chiunque si incroci, perché potresti essere l'unico volto che vedrà per un'ora.",
	},
	["dmo.muse.w16.road.019"] = {
		"Questa strada porta nani, gnomi, eserciti e venditori da più tempo di quanto chiunque di loro saprebbe dire. I solchi sono più vecchi dei carri.",
		"Sotto la neve battuta la strada ha una spina dorsale vecchia e dura, consumata da più piedi di quanti se ne possano contare.",
	},
	["dmo.muse.w16.road.020"] = {
		"si concede una sosta in cima a un'altura per guardare indietro la strada, un filo scuro cucito sul bianco della valle.",
		"da una curva della strada si volta verso la fila di orme alle spalle, già sfumate ai bordi.",
	},
	["dmo.muse.w16.road.021"] = {
		"osserva una fila di viaggiatori che risale il pendio lontano verso le porte, piccoli e scuri contro la neve, come perline su un filo.",
		"segue con lo sguardo un carro che si arrampica sulla strada lontana, così lento contro il bianco da sembrare quasi fermo.",
		"conta i puntini che si muovono sulla strada più in basso: un carro, qualcuno in sella, un nano con uno zaino grande come una botte.",
	},
	["dmo.muse.w16.stone.001"] = {
		"Ogni pietra grossa lungo le strade della valle, a guardarla bene, porta da qualche parte il segno di uno scalpello. I nani non sanno lasciare in pace una roccia.",
		"Basta osservare un masso a bordo strada per scoprirci uno spigolo squadrato o una tacca. Le mani dei nani sono passate su quasi tutto, in queste valli.",
	},
	["dmo.muse.w16.stone.002"] = {
		"Per i nani costruire in pietra è come fischiettare per gli altri: lo fanno senza pensarci, e senza smettere mai.",
		"Dai a un nano un pomeriggio libero e un pendio, e per cena quel pendio avrà una porta.",
	},
	["dmo.muse.w16.stone.003"] = {
		"piega indietro la testa per seguire una parete di roccia, su e ancora su, finché la pietra non lascia il posto al bianco delle cime.",
		"misura con lo sguardo una rupe, dai detriti alla base fino alla neve in cima, e a metà ci rinuncia.",
		"allunga il collo verso le pareti di roccia che chiudono la valle, un sassolino ai piedi di un gigante.",
	},
	["dmo.muse.w16.stone.004"] = {
		"Secondo i nani la montagna c'era prima di loro e ci sarà dopo. Lo dicono con orgoglio, come se fosse merito loro.",
		"Della montagna i nani parlano come di una vecchia parente: testarda, paziente, e da non contraddire mai.",
		"Chiedi a un nano quanti anni abbiano queste cime e ti guarda a lungo, come se gli avessi chiesto l'età di sua nonna.",
	},
	["dmo.muse.w16.stone.005"] = {
		"A Gol'Bolar Quarry hanno scavato così a fondo che le pareti mostrano strisce, uno strato sotto l'altro, come gli anelli di un tronco abbattuto.",
		"Metà dei muri di Kharanos, scommetto, è uscita da Gol'Bolar Quarry, un blocco pesante dopo l'altro, trascinata su per la strada con le slitte.",
	},
	["dmo.muse.w16.stone.006"] = {
		"Ho visto un nano dare una pacca a una parete di roccia come si fa con un cavallo. Nessun altro l'ha trovato strano.",
		"Un minatore mi ha detto che quella parete ha uno sguardo gentile. Ho deciso di credergli.",
		"I nani parlano alla pietra. Quel che mi preoccupa è che sembrano aspettare la risposta.",
	},
	["dmo.muse.w16.stone.007"] = {
		"spazza la brina da una pietra scolpita accanto al sentiero e sotto trova una runa nanica, consumata fin quasi a sparire.",
		"indugia accanto a un cippo mezzo sepolto nella neve ammucchiata, l'incisione smussata da più inverni di quanti se ne contino.",
	},
	["dmo.muse.w16.stone.008"] = {
		"Senti i picconi giù alla cava? Sembra la montagna che si fruga in tasca in cerca di spiccioli.",
		"Toc, toc, toc, fin da Gol'Bolar. I nani chiedono alla montagna di aprirsi, con buone maniere.",
	},
	["dmo.muse.w16.stone.009"] = {
		"Dentro quella montagna c'è un'intera città. Da qui fuori non lo diresti mai, se non fosse per le porte e il fumo.",
		"Sotto tutta quella roccia c'è Ironforge: sale, forge, migliaia di nani. La montagna la porta addosso come una persona riservata porta un segreto.",
	},
	["dmo.muse.w16.stone.010"] = {
		"Le case dei nani stanno basse e dai muri spessi, mezze affondate nel pendio, come se si preparassero a una spinta.",
		"Le case, qui, sono fatte come i loro padroni: corte, larghe, pesanti alla base e difficilissime da buttare giù.",
	},
	["dmo.muse.w16.stone.011"] = {
		"A ogni piccolo nano si racconta che la montagna ascolta. Camminando qui, capisco perché alcuni di noi non smettano mai del tutto di crederci.",
		"Ci hanno cresciuti con l'idea che la pietra ci senta. Camminando qui, sotto queste cime, mi accorgo che abbasso ancora la voce.",
	},
	["dmo.muse.w16.stone.012"] = {
		"Shimmer Ridge si merita il nome ogni volta che la luce coglie il ghiaccio sul suo fianco. Bella, da lontano. Da vicino, Frostmane.",
		"Il ghiaccio su Shimmer Ridge scintilla come il vassoio di un gioielliere. I troll che ci abitano sono molto meno decorativi.",
	},
	["dmo.muse.w16.stone.013"] = {
		"Grida in queste valli e le montagne ti rispondono tre volte, ogni volta un po' meno convinte.",
		"Salve, montagne! ...Mi danno ragione su tutto. La compagnia più educata che abbia avuto da un pezzo.",
	},
	["dmo.muse.w16.stone.014"] = {
		"raccoglie una pietra piatta dal sentiero, se la rigira tra le dita e la rimette con cura dov'era.",
		"soppesa per un momento un ciottolo liscio nel palmo, poi lo ripone esattamente dove la montagna l'aveva lasciato.",
		"allontana col piede un sasso dal sentiero e lo ascolta rotolare giù per il pendio per un tempo sorprendentemente lungo.",
	},
	["dmo.muse.w16.stone.015"] = {
		"Certi nani credono che il loro popolo sia stato plasmato dalla pietra stessa. In mezzo a queste cime l'idea non suona poi così strana.",
		"L'Explorers' League scava in mezzo mondo in cerca delle origini dei nani. Guardando queste montagne, io avrei cominciato da qui.",
		"Ferro, gemme e la storia delle proprie origini: ecco cosa cercano i nani quando scavano. È l'ultima che va più a fondo.",
	},
	["dmo.muse.w16.stone.016"] = {
		"Montagne come queste fanno sembrare breve qualunque vita. Stavano qui da molto prima che qualcuno pensasse a dar loro un nome.",
		"Queste cime hanno visto clan nascere, dividersi e combattersi. Guarderanno quel che verrà con la stessa faccia impassibile.",
	},
	["dmo.muse.w16.stone.017"] = {
		"Se mai mi costruirò una casa, assumo un nano. Ci metterà dieci anni e durerà più della montagna.",
		"L'arte muraria dei nani: lenta a cominciare, più lenta a finire, e ancora su quando tutti hanno scordato a cosa serviva.",
	},
	["dmo.muse.w16.stone.018"] = {
		"bussa due volte su una pietra eretta lungo il sentiero, un po' per scherzo, e in cambio riceve il silenzio pieno della roccia.",
		"batte le nocche contro un masso a bordo strada, come a una porta. Il masso, saggiamente, non risponde.",
	},
	["dmo.muse.w16.stone.019"] = {
		"Il fumo dei comignoli sale dai fianchi delle colline nei punti più strani. Mezza Dun Morogh vive dentro i pendii, e ai pendii non dispiace.",
		"Un filo di fumo che esce dritto da un cumulo di neve: là sotto c'è la cucina di qualcuno, scavata nel colle.",
	},
	["dmo.muse.w16.stone.020"] = {
		"Pietra dei Bronzebeard, neve dei Bronzebeard. Chiunque salga questa valle cammina su ciò che il nostro clan custodisce da moltissimo tempo.",
		"Magni tiene il trono dentro la montagna, e la montagna tiene noi. Uno scambio onesto, e antico.",
	},
	["dmo.muse.w16.stone.021"] = {
		"ascolta il colpo lieve e regolare dei picconi che arriva da qualche parte dentro il fianco della collina.",
		"avverte, più che sentirlo, un tonfo sordo nel profondo del terreno: una carica in qualche miniera, o una porta che si chiude molto più giù.",
	},
	["dmo.muse.w16.stone.022"] = {
		"riposa un momento al riparo di un grosso masso, con la roccia alle spalle fredda e paziente come la montagna da cui è caduta.",
		"siede per un attimo su un masso accanto al sentiero, e il freddo della pietra sale dritto attraverso ogni strato.",
	},
	["dmo.muse.w16.stone.023"] = {
		"Sotto i miei stivali, con ogni probabilità, ci sono gallerie. A Dun Morogh conviene darlo per scontato e camminare con educazione.",
		"Mezza valle è cava, a sentire i minatori. Saperlo mi fa camminare con passo più leggero.",
	},
	["dmo.muse.w16.wry.001"] = {
		"Tre strati di lana, e il freddo trova lo stesso l'unico spiraglio. Deve avere una mappa.",
		"Ho abbottonato tutto quello che si abbottona. Il freddo è entrato lo stesso. Un po' ammiro la sua tenacia.",
	},
	["dmo.muse.w16.wry.002"] = {
		"\"Frizzantino\", lo chiamano i nani. Vorrei scambiare due parole con chi gliel'ha insegnato.",
		"\"Un filo fresco\", dice il nano, coi ghiaccioli che gli pendono dalla barba. Un filo.",
	},
	["dmo.muse.w16.wry.003"] = {
		"Ho provato a fare una palla di neve. Si è sfarinata come terriccio. Qui la neve è troppo fredda persino per essere lanciata.",
		"Questa neve non si compatta. È troppo secca, troppo fredda e, diciamolo, troppo superba.",
		"Battaglia a palle di neve? Con questa neve? Avrei più fortuna a tirare sale.",
	},
	["dmo.muse.w16.wry.004"] = {
		"Il naso ha smesso di mandare notizie da un pezzo. Ho deciso che si sta riposando.",
		"Non sento più le orecchie. Il lato buono è che hanno smesso di lamentarsi.",
	},
	["dmo.muse.w16.wry.005"] = {
		"Tutto in questa valle è gelato, in fermentazione o cerca di mordermi. Certe cose riescono a fare due delle tre.",
		"A Dun Morogh ci sono tre tipi di cose: quelle che gelano, quelle che fermentano e quelle coi denti. Scegli bene la compagnia.",
	},
	["dmo.muse.w16.wry.006"] = {
		"Ho chiesto a un nano se qui faccia mai caldo. Ha riso così a lungo che ho preferito andarmene.",
		"Ho chiesto quando arriva il disgelo. Il nano mi ha dato una pacca sulla spalla, gentile, come si fa con uno sciocco.",
	},
	["dmo.muse.w16.wry.007"] = {
		"Persino i cinghiali, qui, hanno un cappotto più pesante del mio. Vestiti come si deve, tutti quanti.",
		"Gli orsi di queste colline sono più caldi di me, più pasciuti di me, e molto meno educati.",
	},
	["dmo.muse.w16.wry.008"] = {
		"saltella da un piede all'altro in un balletto breve e sgraziato che con la musica non ha niente a che fare, e col freddo tutto.",
		"pesta i piedi, batte le mani e ci soffia dentro, un'intera piccola cerimonia dedicata al freddo, che non se ne accorge.",
		"si batte le braccia a turno come un tamburino che ha perso il ritmo, e non smette.",
	},
	["dmo.muse.w16.wry.009"] = {
		"C'è un silenzio speciale che arriva quando capisci di aver attraversato un campo di neve nella direzione sbagliata. Lo sto ascoltando proprio adesso.",
		"Cammino da un bel po' con grande sicurezza. Verso il crinale sbagliato, a quanto pare.",
	},
	["dmo.muse.w16.wry.010"] = {
		"Arieti grossi, boccali grossi, barbe grosse. I nani non fanno niente a metà, mai.",
		"A Dun Morogh persino le porzioni sono fatte per durare un inverno.",
	},
	["dmo.muse.w16.wry.011"] = {
		"Wendigo nella Grizzled Den. Come se gli orsi non fossero già abbastanza grossi e arrabbiati.",
		"Qualcuno ha guardato gli orsi di Dun Morogh e ha pensato: più grossi, più arrabbiati, più numerosi. La risposta è stata la Grizzled Den.",
	},
	["dmo.muse.w16.wry.012"] = {
		"Qui gli gnomi aggiustano tutto tranne la temperatura. Fidatevi, ho chiesto.",
		"Ho chiesto a uno gnomo se esistesse un congegno contro il freddo. Esiste. Si chiama fuoco.",
	},
	["dmo.muse.w16.wry.013"] = {
		"Leopardi delle nevi. Bestie bianche, sulla neve bianca, con denti bianchissimi. Controllo ogni cumulo due volte.",
		"Un felino del colore della neve, in una terra fatta di neve. Chi ha organizzato la cosa ha un umorismo crudele.",
	},
	["dmo.muse.w16.wry.014"] = {
		"Mi dicono che il trucco, col freddo, è smettere di farci caso. Quassù mi dicono parecchie cose.",
		"Il segreto, mi ha detto un nano, è ignorare il freddo. Lo sto ignorando con tutte le forze. Lui non se n'è accorto.",
	},
	["dmo.muse.w16.wry.015"] = {
		"Un nano mi ha detto che il freddo tempra il carattere. Se è così, ne ho temprato più del necessario, e ne cederei volentieri un po' per un boccale caldo.",
		"Il carattere, dicono i nani, è quello che il freddo ti lascia addosso. A me basterebbe tenermi le dita dei piedi.",
	},
	["dmo.muse.w16.wry.016"] = {
		"prova a chiudere una fibbia rigida con le dita intorpidite, ci rinuncia e si limita a fissarla torva finché non si pente.",
		"sbaglia tre volte una cinghia con le mani gelate, poi la sistema al quarto tentativo, con l'aria di chi l'aveva previsto fin dall'inizio.",
	},
	["dmo.muse.w16.wry.017"] = {
		"Ho lasciato i lacci degli stivali slacciati per un minuto. Adesso sono gelati a fiocco. Molto festoso.",
		"Qualunque cosa appoggi qui fuori gela nella forma in cui si trova. I miei guanti sono diventati una scultura.",
	},
	["dmo.muse.w16.wry.018"] = {
		"Trogg, troll, lupi e orsi sono d'accordo su una sola cosa: chiunque attraversi la valle è affar loro.",
		"Se le bestie di Dun Morogh tenessero una votazione, ho il sospetto che la mozione riguarderebbe me, e passerebbe.",
	},
	["dmo.muse.w16.wry.019"] = {
		"tenta di attraversare a grandi passi un cumulo profondo, affonda fino alla coscia e ci resta per un dignitoso momento di riflessione.",
		"esce a fatica da un cumulo più profondo del previsto e si spazzola via la neve con l'aria di chi voleva soltanto metterlo alla prova.",
	},
	["dmo.muse.w16.wry.020"] = {
		"Se qualcuno trova un paio di piedi, sono miei. Li ho persi di vista un miglio fa.",
		"Qualcuno controlli se ho ancora le dita dei piedi. Io non ho il coraggio di guardare.",
	},
	["dmo.npc_meet.w16.ask.001"] = {
		"Quello sguardo: la preoccupazione nascosta dietro una faccia coraggiosa. Qualcuno qui sta per chiedermi qualcosa.",
		"Aspettavano qualcuno con il tempo e il fegato. A quanto pare io ho entrambi.",
		"Una fronte aggrottata e un'occhiata alle colline, poi a me, poi di nuovo alle colline. So dove si va a parare.",
	},
	["dmo.npc_meet.w16.ask.002"] = {
		"Avete l'aria di chi ha un problema. Raccontatemelo mentre mi si scongelano le mani.",
		"Qualche guaio? Ditemi pure. In questa valle non ho ancora sentito una storia breve.",
	},
	["dmo.npc_meet.w16.ask.003"] = {
		"ascolta il racconto del guaio, accompagnato da un gran gesticolare verso le colline.",
		"si sente chiamare da qualcuno con la fronte aggrottata e l'aria di chi ha una lunga lista da condividere.",
	},
	["dmo.npc_meet.w16.ask.004"] = {
		"C'è chi chiede aiuto come se gli strappassero un dente. Stavolta il dente è venuto via senza troppe storie.",
		"Una richiesta formulata con cura, con il pericolo ridimensionato perché sembri più piccolo. Conosco il trucco, e accetto comunque.",
	},
	["dmo.npc_meet.w16.guard.001"] = {
		"La guardia mi squadra come fa la montagna: con calma, e senza curarsi troppo di quel che penso.",
		"Una guardia attenta, con lo sguardo più sulla cresta che su di me. Qui fuori i guai di solito arrivano dall'alto.",
		"Questa guardia ha la pazienza della roccia che ha alle spalle. Sospetto che la roccia sbatta le palpebre più spesso.",
	},
	["dmo.npc_meet.w16.guard.002"] = {
		"Tutto tranquillo? Bene. Che resti così.",
		"Un posto di guardia gelido, il vostro. Si muove qualcosa sulle strade che dovrei sapere?",
		"Turno lungo? Non vi trattengo. Ditemi solo dove hanno visto i trogg l'ultima volta.",
	},
	["dmo.npc_meet.w16.guard.003"] = {
		"ricambia il cenno asciutto della guardia e tiene le mani ben lontane da tutto ciò che potrebbe sembrare una minaccia.",
		"si trattiene accanto alla guardia giusto il tempo di farsi squadrare, giudicare e congedare con un cenno.",
	},
	["dmo.npc_meet.w16.guard.004"] = {
		"Una faccia amica di guardia, e una parola cordiale per chi sta dalla stessa parte. Su queste colline è metà del calore che c'è.",
		"La guardia riconosce i colori che porto e si rilassa un poco. Anche qui fa piacere stare dalla stessa parte.",
	},
	["dmo.npc_meet.w16.inn.001"] = {
		"Chi manda avanti questa locanda misura il freddo da quanto forte i clienti battono gli stivali sulla soglia. Gli affari vanno bene.",
		"Dietro il banco c'è qualcuno che ha sentito ogni lamentela sul freddo, e a ciascuna ha risposto con un boccale.",
		"Al banco, qualcuno con un registro, un mestolo e l'aria di chi sa che i letti sono pieni del russare dei montanari.",
	},
	["dmo.npc_meet.w16.inn.002"] = {
		"Un letto, se ne avete uno libero, e un angolo dove gli spifferi non mi trovino.",
		"Piacere di conoscervi. Ditemi che i letti sono più morbidi del terreno là fuori, e affare fatto.",
		"È malto quello che sento dal retro? Allora ho bussato alla porta giusta.",
	},
	["dmo.npc_meet.w16.inn.003"] = {
		"si appoggia al banco e scambia due parole con chi tiene la locanda: le strade, i trogg, il prezzo di un letto.",
		"incrocia lo sguardo di chi tiene la locanda e riceve un cenno svelto, con la mano che indica i barili.",
	},
	["dmo.npc_meet.w16.inn.004"] = {
		"Al banco, qualcuno che si ricorda le facce. In una valle così fredda, un posto che si ricorda di te vale più di una stanza.",
		"Barili impilati fino alle travi e qualcuno al banco che di sicuro assaggia la merce. Mi fiderò dei suoi consigli.",
	},
	["dmo.npc_meet.w16.teach.001"] = {
		"Mani segnate e occhi pazienti: qui chi insegna ha imparato prima, e a caro prezzo.",
		"Prima di ogni altra cosa, chi insegna qui guarda come poggio i piedi. In una terra di ghiaccio, forse è la prima lezione.",
		"Nessun discorso da chi insegna qui, solo uno sguardo che prende le misure. Quassù le lezioni sembrano cominciare dal silenzio.",
	},
	["dmo.npc_meet.w16.teach.002"] = {
		"Mi hanno detto che è da voi che si impara, da queste parti. Vi ascolto, e cercherò di non battere i denti nel frattempo.",
		"Insegnatemi qualcosa che il freddo non possa portarmi via.",
	},
	["dmo.npc_meet.w16.teach.003"] = {
		"regge lo sguardo di chi insegna, che prende le misure come una bilancia che alla fine pende dalla parte giusta.",
		"scambia un cenno con chi insegna: il genere di cenno che promette lezioni dure e nessuna lusinga.",
	},
	["dmo.npc_meet.w16.trade.001"] = {
		"Qualunque cosa sia in vendita qui, nel prezzo c'è anche la fatica di portarla su per questi pendii.",
		"Prezzi ripidi, come tutto il resto su queste montagne. Almeno la merce sembra fatta per reggere il freddo.",
		"Ogni cosa in vendita ha fatto tanta strada in salita. Si vede dal prezzo, e non me la sento di protestare.",
	},
	["dmo.npc_meet.w16.trade.002"] = {
		"Che cosa avete per tenere asciutti i piedi? Per dei piedi asciutti pago volentieri.",
		"Fatemi vedere la merce. E il prezzo ditemelo quando avrò una sedia sotto.",
		"C'è qualcosa che svendereste perché quassù non la vuole nessuno? Di solito è della mia taglia.",
	},
	["dmo.npc_meet.w16.trade.003"] = {
		"passa in rassegna la merce e chiede il prezzo di due cose, giusto per sentire come si contratta da queste parti.",
		"scambia un saluto cortese con chi vende, che intanto valuta il borsellino con un'occhiata esperta.",
	},
	["dmo.npc_meet.w16.trade.004"] = {
		"Fa i conti delle mie monete più in fretta di quanto riesca a contarle io. In una valle piena di ingegneri, anche i bottegai fanno le somme a occhi chiusi.",
		"Prezzi onesti, a quanto pare, e nessuno che gonfi la merce. Nei paesi freddi non si sprecano parole per le bugie.",
	},
	["dmo.quest_complete.w16.folk.001"] = {
		"Quassù la gente non chiede aiuto alla leggera. Quando lo fa, il guaio bussa alla porta già da un pezzo.",
		"In questa valle nessuno ha sprecato parole per chiedere. Mi hanno mostrato il problema e hanno aspettato di vedere se mi tiravo indietro.",
	},
	["dmo.quest_complete.w16.folk.002"] = {
		"Metà della gente che qui chiede aiuto ha perso una città per colpa dei trogg. Con loro anche le piccole gentilezze contano il doppio.",
		"Gli gnomi dicono grazie come chi ci ha fatto parecchio esercizio, ultimamente. Da Gnomeregan in poi, immagino sia così.",
		"Profughi di Gnomeregan che si arrangiano in una valle presa in prestito. Ogni guaio che gli si toglie restituisce loro un pezzetto di terra.",
	},
	["dmo.quest_complete.w16.folk.003"] = {
		"Chi altro ha qualche guaio, parli. Il freddo ormai l'ho preso: tanto vale rendermi utile.",
		"Ci sono altri guai in questa valle? Metteteli in fila. Gli stivali giusti li ho.",
		"Chi altro ha bisogno di qualcosa? Ho ancora gli stivali allacciati: chiedete adesso.",
	},
	["dmo.quest_complete.w16.folk.004"] = {
		"ascolta paziente mentre il discorso scivola dal lavoro ai trogg, ai troll e al prezzo del carbone.",
		"si trattiene quanto basta per sentire le ultime voci della valle: fumo di troll sulle creste, trogg nella cava, un ariete sparito.",
	},
	["dmo.quest_complete.w16.folk.005"] = {
		"La valle ha bisogno di più braccia di quante ne abbia. I montanari tengono le strade, i fabbri nutrono le forge, e il resto aspetta chi passa.",
		"Ironforge è così vicina da vederla, eppure la gente della valle risolve quasi tutti i guai da sé. O con chi capita da queste parti.",
	},
	["dmo.quest_complete.w16.folk.006"] = {
		"Felice di dare una mano. Se ai vicini serve aiuto, mandateli da me.",
		"Con piacere. Quassù tutti devono qualcosa a tutti, e io preferisco essere in credito.",
		"Quando volete. Una valle così fredda va avanti solo se ci si appoggia gli uni agli altri.",
	},
	["dmo.quest_complete.w16.folk.007"] = {
		"Qui il grazie arriva in due versioni: un grugnito, oppure dieci minuti su come il problema si sarebbe potuto risolvere con un congegno.",
		"Mi è toccata la versione lunga del ringraziamento, con tanto di schemi. Lì in mezzo, da qualche parte, c'era anche una moneta.",
	},
	["dmo.quest_complete.w16.folk.008"] = {
		"vede la preoccupazione sciogliersi da un viso segnato e si trattiene un momento più del necessario.",
		"si vede offrire una tazza di qualcosa di caldo, rifiuta con garbo, e l'offerta torna subito, più insistente.",
	},
	["dmo.quest_complete.w16.folk.009"] = {
		"Un guaio in meno per la valle. Troll, trogg, il freddo stesso: qui la lista non si accorcia mai, cambia soltanto.",
		"Mi hanno ringraziato come se fosse l'ultimo dei loro guai. Lo sapevano bene che non era così, e lo sapevo anch'io.",
	},
	["dmo.quest_complete.w16.folk.010"] = {
		"Abbiate cura di voi. E se i trogg risalgono, fatemelo sapere prima che arrivino alla vostra porta.",
		"Tenete d'occhio le creste. Qualunque cosa ne scenda, vorrei saperlo per tempo.",
	},
	["dmo.quest_complete.w16.folk.011"] = {
		"Qualcuno che chiama questo gelo «frizzantino» mi ha appena detto che ho lavorato bene. Me lo tengo stretto.",
		"Quassù le lodi sono razionate come il carbone. Me ne è toccato un pezzetto.",
		"Qui «niente male» è un gran complimento. A me è toccato un «proprio niente male», e cerco di non montarmi la testa.",
	},
	["dmo.quest_complete.w16.folk.012"] = {
		"lascia la gente della valle al suo lavoro: alle spalle riprendono i colpi di martello e il via vai dei carichi.",
		"sente le chiacchiere tornare alle cose di ogni giorno, il prezzo del minerale e gli assi rotti dei carri, e sembra prenderlo come il segno migliore.",
	},
	["dmo.quest_complete.w16.folk.013"] = {
		"Ogni gnomo che aiuto quassù un tempo aveva un banco da lavoro sotto Gnomeregan. Farlo per la mia gente sembra meno un lavoro e più una promessa mantenuta.",
		"Un giorno torneremo a Gnomeregan. Fino ad allora, ogni piccolo guaio che risolvo quassù è un mattone sulla strada di casa.",
	},
	["dmo.quest_complete.w16.folk.014"] = {
		"Ecco fatto. Adesso potete smettere di guardare storto le colline e tornare al lavoro.",
		"Tutto sistemato. Su, la forgia non si alimenta da sola.",
		"È sistemato. Andate pure, e occhio al ghiaccio sulla soglia.",
	},
	["dmo.quest_complete.w16.pay.001"] = {
		"Le monete di queste colline pesano più di quanto sembri. Come il pane di quassù, e come le opinioni.",
		"Pagano con monete spesse, dal conio profondo. A Dun Morogh persino il denaro pare fatto per durare.",
	},
	["dmo.quest_complete.w16.pay.002"] = {
		"Gentile da parte vostra. Li spenderò in un posto con un tetto.",
		"Grazie davvero. Ci scappano un pasto caldo e un paio di calze asciutte.",
		"Vi ringrazio. I miei stivali ne saranno contenti, anche se non lo diranno mai.",
	},
	["dmo.quest_complete.w16.pay.003"] = {
		"conta le monete col pollice, senza togliersi il guanto, perde il conto a metà e conclude che vanno bene così.",
		"soppesa il borsellino su una mano, ne approva il peso con un cenno e stringe forte il laccio.",
	},
	["dmo.quest_complete.w16.pay.004"] = {
		"La paga è poca. A loro però compra una strada più tranquilla fino alla fattoria vicina, e vale più di quanto sembri.",
		"Per me, una manciata di rame. Per loro, una paura in meno sulla via del pozzo.",
		"Sono passate di mano poche monete. Ma è passata di mano anche un'altra cosa: una strada che si può percorrere senza timore.",
	},
	["dmo.quest_complete.w16.pay.005"] = {
		"No, no, non le conto davanti a voi. Le conto dietro quel masso, come le persone educate.",
		"Pagato fino all'ultimo rame, e nemmeno uno in più. Quassù la gente tiene conti onesti e borse ben strette.",
		"Preciso al rame. Non mi aspettavo di meno da gente che misura la pietra al capello.",
	},
	["dmo.quest_complete.w16.pay.006"] = {
		"Metà paga in monete, metà in consigli su come tenere i piedi asciutti. Non so ancora quale metà valga di più.",
		"Insieme ai soldi è arrivata una dritta sul ghiaccio della strada del lago. Quassù anche un avvertimento fa parte del salario.",
	},
	["dmo.quest_complete.w16.pay.007"] = {
		"accetta la mano tesa, una morsa, e non fa una piega finché la stretta non si allenta.",
		"suggella l'accordo con una stretta, all'antica, e poi si sgranchisce le dita quando nessuno guarda.",
		"chiude la faccenda con una stretta che per poco non fa scricchiolare le nocche, e con l'altra mano intasca le monete.",
	},
	["dmo.quest_complete.w16.pay.008"] = {
		"Quella moneta è uscita da una borsa che ha visto tempi più magri. Da quando è caduta Gnomeregan, in questa valle è capitato a molte.",
		"Hanno pagato senza dire quanto possono permettersi. Chi ha perso una città impara a contare ogni rame, e i debiti li salda comunque.",
	},
	["dmo.quest_complete.w16.pay.009"] = {
		"Tenete pure quello in più. Presto busserà qualcun altro con il prossimo guaio, e allora vi servirà.",
		"È più di quanto pattuito. D'accordo, ma il prossimo giro alla distilleria lo offro io.",
	},
	["dmo.quest_complete.w16.pay.010"] = {
		"Basta per far chiodare le suole degli stivali. Su questo ghiaccio non è vanità: è sopravvivenza.",
		"Abbastanza per un bagno caldo a Kharanos, ammesso che ce ne sia uno. Mi accontenterò di una scodella bollente.",
		"So già dove andranno queste monete: calze più spesse, una scodella di qualcosa, olio per la lanterna. Dun Morogh le spende al posto mio.",
	},
	["dmo.quest_complete.w16.pay.011"] = {
		"morde una moneta per abitudine, fa una smorfia per il metallo gelato e intasca tutto quanto.",
		"lucida una moneta sulla manica e la alza contro il riverbero della neve, prima di metterla via.",
	},
	["dmo.quest_complete.w16.pay.012"] = {
		"L'avrei fatto per niente. Meglio che non lo scoprano mai, o il prossimo lavoro me lo pagano solo in ringraziamenti.",
		"Le monete vanno bene. Le facce che hanno fatto, a guaio risolto, erano una paga migliore, e più difficile da spendere.",
	},
	["dmo.quest_complete.w16.pay.013"] = {
		"È stato un piacere. Dite a chi viene dopo che per le grotte faccio un sovrapprezzo.",
		"Siamo pari. Se qualcun altro ha guai con qualcosa che morde, prima di cena faccio lo sconto.",
	},
	["dmo.quest_complete.w16.walk.001"] = {
		"Lavoro consegnato, e il freddo è già tornato a tirarmi il bavero per chiedere: e adesso?",
		"Qui ho finito. La valle si stende bianca da ogni lato, e là in mezzo c'è la prossima cosa da fare.",
	},
	["dmo.quest_complete.w16.walk.002"] = {
		"tira su il bavero e riprende il sentiero battuto, con gli stivali che scricchiolano sulla neve vecchia.",
		"si sistema lo zaino più in alto sulle spalle e sceglie una traccia lungo il pendio, verso la strada.",
		"si aggiusta la cintura, dà un'occhiata al lungo pendio bianco che l'aspetta e comincia a scenderlo senza lamentarsi.",
	},
	["dmo.quest_complete.w16.walk.003"] = {
		"Da che parte si scende? Giuro che qui ogni strada sale in tutte e due le direzioni.",
		"Da qui in poi si scende, spero. Le mie ginocchia hanno già votato.",
		"Giù per il pendio. Se scivolo, la chiamerò scorciatoia.",
	},
	["dmo.quest_complete.w16.walk.004"] = {
		"La strada verso est porta al tunnel e poi a Loch Modan. Può aspettare: in questa valle c'è ancora lavoro.",
		"Oltre i varchi per Loch Modan la terra si fa più dolce, giurano i viaggiatori. Qui resta dura fino al prossimo lavoro.",
	},
	["dmo.quest_complete.w16.walk.005"] = {
		"Ogni commissione, qui, finisce con un lungo ritorno, i piedi gelati e una storia che nessuno ha chiesto.",
		"Ogni sentiero di questa valle è un solco scavato dalle commissioni di qualcun altro. Adesso ci sono anche le mie.",
	},
	["dmo.quest_complete.w16.walk.006"] = {
		"stacca con un calcio una zolla di ghiaccio dalla punta dello stivale e si incammina: il peso del lavoro è sparito, quello dello zaino no.",
		"indugia sul ciglio del sentiero per orientarsi sulle vette lontane, poi riprende.",
	},
	["dmo.quest_complete.w16.walk.007"] = {
		"Se qualcuno va verso Kharanos, faccio la strada con voi. La vostra compagnia è meglio di quella dei lupi.",
		"Qualcuno va dalla mia parte? Sono di buona compagnia, e so dove il ghiaccio è sottile.",
	},
	["dmo.quest_complete.w16.walk.008"] = {
		"Il ritorno è la parte migliore. Nessuno che chieda niente: solo lo scricchiolio sotto i piedi e i miei pensieri.",
		"Silenzio, sulla via del ritorno. Quassù il silenzio ha un peso, come una coperta pesante stesa su tutta la valle.",
		"Fuori sui pendii, e per un po' nessuno che mi aspetti. Prendo la strada lunga e lascio che i pensieri si sgelino.",
	},
	["dmo.quest_complete.w16.walk.009"] = {
		"Prossima tappa la forgia, poi la lunga strada verso est. Oppure la strada verso est, e poi il rimpianto per la forgia.",
		"Da qui al prossimo lavoro, ogni lago lo aggiro. Del ghiaccio che non ho visto gelare non mi fido.",
	},
	["dmo.quest_complete.w16.walk.010"] = {
		"lascia una nuova fila di impronte nella neve battuta, una fra le tante che attraversano la valle.",
		"si allontana con il passo tranquillo di chi, per una volta, non ha nessuna fretta.",
	},
	["dmo.quest_complete.w16.walk.011"] = {
		"Si riparte. Se fra una settimana non mi vedete, cercate nei cumuli di neve.",
		"Si torna là fuori, allora. Tenetemi un posto vicino a un fuoco, da qualche parte.",
		"È ora di andare. Se sentite imprecare sui pendii, sono io che ho trovato il ghiaccio.",
	},
	["dmo.quest_complete.w16.walk.012"] = {
		"Questi sentieri li hanno tracciati i nani molto prima che qualcuno pensasse di chiedere aiuto a me. Io li prendo solo in prestito.",
		"Le pietre lungo la strada sono più vecchie di qualunque guaio io abbia risolto qui. Vedranno passare anche il prossimo.",
	},
	["dmo.quest_complete.w16.walk.013"] = {
		"lancia un'ultima occhiata al punto in cui il lavoro si è chiuso, poi si volge verso le montagne e il prossimo tratto di strada.",
		"batte i piedi per scacciare il freddo e si avvia per il terreno aperto, con un peso in meno addosso.",
	},
	["dmo.quest_complete.w16.walk.014"] = {
		"si avvia nel buio, il lavoro finito e qualche lanterna accesa qua e là per la valle.",
		"si incammina nel buio, seguendo il chiarore pallido della neve lungo il sentiero.",
	},
	["dmo.quest_progress.w16.done.001"] = {
		"Tutto quanto, finalmente. Adesso ritrovo la strada del ritorno prima che il freddo trovi la strada per entrare.",
		"È tutto ciò che mi hanno chiesto. Il ritorno è la parte facile, se non si contano le salite.",
		"Questo chiude la faccenda. Torno per la strada bassa: le creste ne hanno abbastanza di me.",
	},
	["dmo.quest_progress.w16.done.002"] = {
		"Fatto! E adesso, quale di queste colline bianche ho attraversato?",
		"Ecco tutto. A qualcuno farà molto piacere, e io starò molto al caldo.",
		"Tutto fatto! Si torna indietro, e svelti, prima che mi cadano le orecchie.",
	},
	["dmo.quest_progress.w16.done.003"] = {
		"a compito concluso si volta e torna indietro, seguendo le proprie orme nella neve.",
		"chiude l'ultima parte del lavoro con un grugnito soddisfatto e strizza gli occhi verso il punto da cui tutto è partito, oltre le creste.",
	},
	["dmo.quest_progress.w16.done.004"] = {
		"Ho tutto quello che serve. Ora devo solo attraversare lo stesso terreno gelato nella direzione opposta. Che gioia.",
		"Lavoro finito, e fra me e una stanza calda solo qualche miglio di montagna.",
	},
	["dmo.quest_progress.w16.step.001"] = {
		"Una parte è fatta. Il resto la montagna lo concede piano, come concede ogni cosa.",
		"Si va avanti. Piano, al freddo, ma si va avanti.",
		"Poco a poco. Se sai dove scavare, la neve non tiene a lungo i suoi segreti.",
	},
	["dmo.quest_progress.w16.step.002"] = {
		"Questa è una parte. Le dita mi dicono di smettere, il lavoro di andare avanti. Il lavoro grida più forte.",
		"Bene, un pezzo è a posto. Se continuo a muovermi, il freddo non fa in tempo a sistemarsi.",
	},
	["dmo.quest_progress.w16.step.003"] = {
		"Ci sto arrivando. Piano, ma in questa valle niente va di fretta.",
		"È un inizio. Il resto non può essere lontano, no? Vero?",
	},
	["dmo.quest_progress.w16.step.004"] = {
		"fa il conto di quanto resta del compito e scruta i pendii bianchi per capire dove cercare.",
		"sosta un attimo per fare il punto, approva il conto con un cenno e riprende ad avanzare nel freddo.",
	},
	["dmo.quest_progress.w16.step.005"] = {
		"A buon punto, forse. Dun Morogh misura i progressi in dita dei piedi congelate, e io ne ho già spese quattro.",
		"Qualcosa è fatto. Se il resto va liscio così, me ne starò accanto a un fuoco prima che il naso mi diventi blu.",
	},
	["dmo.quest_progress.w16.step.006"] = {
		"Una parte è fatta, e nessun troll o trogg se n'è accorto. Meglio continuare in punta di piedi.",
		"Con calma e in silenzio. Su queste colline i rumori arrivano più lontano di quanto si creda.",
	},
	["dmo.subzone_enter.w16.part.001"] = {
		"si fa strada fra carrelli abbandonati e cumuli di roccia spaccata, dove gli attrezzi della cava giacciono dove i minatori li hanno lasciati cadere.",
		"rallenta sul bordo della cava, dove la pietra tagliata lascia il posto a graffi che nessun piccone ha mai fatto.",
	},
	["dmo.subzone_enter.w16.part.002"] = {
		"Una cava dei nani ammutolita, se non fosse per quel raspare. Anche i trogg scavano, solo che non hanno un piano.",
		"La cava è silenziosa nel modo sbagliato. Niente martelli, niente canti di lavoro, solo unghie sulla pietra da qualche parte là sotto.",
	},
	["dmo.subzone_enter.w16.part.003"] = {
		"Shimmer Ridge si merita il nome: ogni sporgenza luccica di ghiaccio vecchio. Bellissima, e il posto peggiore dove perdere l'appoggio.",
		"Lassù sulla cresta il luccichio ferisce gli occhi. Guarderò più i piedi che il panorama.",
	},
	["dmo.subzone_enter.w16.part.004"] = {
		"avanza con cautela lungo la riva di Iceflow Lake, dove ogni tanto il ghiaccio emette un lungo gemito sordo, assestandosi sotto il suo stesso peso.",
		"si arresta sul bordo del lago gelato, saggia il ghiaccio col tallone e poi ci ripensa.",
	},
	["dmo.subzone_enter.w16.part.005"] = {
		"Helm's Bed Lake. Piatto e bianco come una tovaglia stesa, con le montagne raccolte tutt'intorno.",
		"Un lago che porta il nome di un letto. Chi l'ha battezzato aveva una strana idea della comodità, o un materasso durissimo.",
	},
	["dmo.subzone_enter.w16.part.006"] = {
		"Chill Breeze Valley. Chi ha dato il nome a questo posto è stato gentile.",
		"Una valle che prende il nome dal freddo. Come se il resto di Dun Morogh fosse una spiaggia.",
	},
	["dmo.subzone_enter.w16.part.007"] = {
		"entra fra i pini fitti del rifugio, dove la neve giace più quieta e il freddo allenta un po' la presa.",
		"si china sotto i rami bassi e lascia che gli alberi si chiudano tutt'intorno: un riparo di aghi e di penombra.",
	},
	["dmo.subzone_enter.w16.part.008"] = {
		"Ironband's Compound, e nemmeno una faccia amica. Chiunque tenga queste mura adesso, non è chi le ha costruite.",
		"Nani Dark Iron a un passo da Ironforge. Persino il fumo, qui, ha un odore sbagliato.",
	},
	["dmo.subzone_enter.w16.part.009"] = {
		"Steelgrill's Depot! Là dentro qualcosa sferraglia, sibila e molto probabilmente sta per esplodere.",
		"Macchine gnomesche su lunghe zampe, parcheggiate nella neve come uccelli pazienti. Vorrei farci un giro, e al tempo stesso mi fanno paura.",
	},
	["dmo.subzone_enter.w16.part.010"] = {
		"passa sotto gli occhi delle sentinelle dell'avamposto, là dove la strada piega verso il grande tunnel per Loch Modan.",
		"rallenta all'avamposto, dove la muratura è vecchia e robusta e i montanari tengono il conto di chi passa.",
	},
	["dmo.subzone_enter.w16.part.011"] = {
		"Il varco sud. Oltre c'è la strada per Loch Modan, e una valle con più erba che neve, se i viaggiatori dicono il vero.",
		"Mura spesse al varco, alzate da gente che si aspettava il peggio da entrambe le parti.",
	},
	["dmo.subzone_enter.w16.part.012"] = {
		"Dalle porte esce un'aria tiepida che porta il frastuono di mille martelli. La montagna è sveglia.",
		"Qui il traffico si infittisce: carri, arieti, viaggiatori da ogni dove, tutti incanalati verso un'unica porta nella roccia.",
	},
	["dmo.subzone_enter.w16.part.013"] = {
		"Brewnall Village. Con un nome così, mi aspetto un'accoglienza calda e un bicchiere pieno.",
		"Brewnall. Se il nome dice il vero, da qualche parte in questo villaggio c'è una botte che mi aspetta.",
	},
	["dmo.subzone_enter.w16.part.014"] = {
		"sale fra le colline ondulate, dove la neve giace in lunghi cumuli lisci e piste di lupo attraversano i pendii.",
		"arriva in cima a un dosso e si volta a guardare le pieghe bianche delle colline, una dopo l'altra come onde gelate.",
	},
	["dmo.subzone_enter.w16.part.015"] = {
		"Il tunnel attraverso la montagna. Pietra vicina da ogni lato, e l'eco dei miei passi a farmi compagnia.",
		"Dentro il passo il freddo cambia: fermo e antico, il freddo di una roccia che non ha mai visto la luce del giorno.",
	},
	["dmo.subzone_enter.w16.part.016"] = {
		"passa davanti alla solida facciata di pietra di Anvilmar, dove le voci di chi istruisce arrivano lontano, oltre il cortile e la neve.",
		"indugia davanti alle porte massicce di Anvilmar, basse e larghe come la gente che le ha costruite.",
	},
	["dmo.subzone_enter.w16.part.017"] = {
		"Thunderbrew Distillery. L'odore si sente già dalla soglia, e mi sento subito più al caldo.",
		"Botti impilate fino al soffitto e un odore capace di stendere un ariete. Il mio genere di edificio.",
	},
	["dmo.subzone_enter.w16.part.018"] = {
		"Cambia il terreno. In questa valle significa orme fresche nella neve da leggere, e motivi per leggerle con attenzione.",
		"Qui le montagne si piegano in un altro modo. Prima di fidarmi ne imparo la forma.",
	},
	["dmo.subzone_enter.w16.part.019"] = {
		"fa il punto mentre il terreno cambia: i pendii, le tracce, il riparo più vicino.",
		"si guarda intorno in quest'angolo di {zone}, segnandosi la via del ritorno prima di proseguire.",
	},
	["dmo.victory.w16.won.001"] = {
		"Fatto. La montagna non se n'è neppure accorta. È giusto così.",
		"Silenzio fino alle cime. Come se qui non fosse successo niente.",
		"Finita, e le cime non hanno nemmeno battuto ciglio.",
	},
	["dmo.victory.w16.won.002"] = {
		"si raddrizza sotto le rupi e per un attimo resta immobile come le statue dei nani alle porte.",
		"alza lo sguardo verso Ironforge, come per fare rapporto.",
	},
	["dmo.victory.w16.won.003"] = {
		"Ecco come si fa, con Ironforge che guarda.",
		"Giù. Dun Morogh tiene i suoi spigoli, e io i miei.",
		"La soglia di Ironforge resta pulita.",
	},
	["dmo.victory.w16.won.004"] = {
		"Finito. Piega le dita, contale, e avanti.",
		"Chiusa. Adesso le mani possono tornare a gelare senza motivo.",
		"Sistemata. Strofina le mani, controlla i piedi, prosegui.",
	},
	["dmo.victory.w16.won.005"] = {
		"La strada per Kharanos è un po' più sicura. Fatelo sapere.",
		"Una minaccia in meno sulle strade della valle. I montanari mi ringrazieranno dopo.",
		"Questa è per la gente di Kharanos, anche se nessuno me l'ha chiesto.",
	},
	["dmo.victory.w16.won.006"] = {
		"resta immobile mentre l'ultima eco dello scontro corre via lungo le creste e si spegne.",
		"ascolta la valle inghiottire il rumore dello scontro, come inghiotte ogni cosa.",
	},
	["dmo.victory.w16.won.007"] = {
		"Gli amuleti tintinnano una volta nel freddo, poi tacciono. Qualcuno, in quelle grotte, aspetterà invano.",
		"Le grotte ne hanno perso uno. Qualcuno, laggiù, noterà il posto vuoto.",
	},
	["dmo.victory.w16.won.008"] = {
		"Torna alla roccia, trogg. Ti ci troverai bene.",
		"Ecco una buca della valle che resterà vuota.",
		"Rockjaw a terra. La cava può riprendersi la sua pietra.",
	},
	["dmo.victory.w16.won.009"] = {
		"Riposa, chiunque tu fossi. Gnomeregan si era già presa il resto.",
		"Non c'è gloria in questo. Solo un po' di sofferenza in meno alle porte di una città perduta.",
	},
	["dmo.victory.w16.won.010"] = {
		"Dite a Thaurissan che quassù le sue spie gelano.",
		"Un Dark Iron in meno a sorvegliare le porte di Ironforge.",
	},
	["dmo.victory.w16.won.011"] = {
		"si inginocchia un momento accanto alla bestia abbattuta, poi si rialza: quassù niente di ciò che cade va sprecato a lungo.",
		"abbassa lo sguardo sull'animale immobile, il pelo che già si copre di brina.",
	},
	["dmo.victory.w16.won.012"] = {
		"Scontri piccoli, tutti quanti, ma si sommano. La valle ne esce un filo più tranquilla.",
		"A Kharanos nessuno ne saprà niente. Conta lo stesso.",
		"Un po' meno pericolo tra qui e le porte. Basta così.",
	},
	["dmo.victory.w16.won.013"] = {
		"Ah! Che le cime lo portino fino a Ironforge!",
		"Vittoria, e nemmeno un dito del piede congelato. Dun Morogh, dovrai impegnarti di più.",
		"Una vittoria nel bianco! Scrivetelo su un muro!",
	},
	["dmo.victory.w16.won.014"] = {
		"Quando qualcuno passerà di qui, i cumuli avranno nascosto tutto. La montagna rimette in ordine dopo chiunque.",
		"Qualcosa viveva, ora non più, e al freddo non importa. A me un poco sì.",
	},
	["dmo.victory.w16.won.015"] = {
		"porta due dita alla fronte in direzione delle lontane porte di Ironforge, poi torna al sentiero.",
		"alza una mano verso le cime in un saluto breve e muto, e la riabbassa.",
	},
	["dmo.victory.w16.won.016"] = {
		"Segnatelo! Dun Morogh non regala niente, ma questa me la sono presa.",
		"Vinta lealmente, su terreno gelato. È l'unica vittoria che questa valle rispetti.",
	},
	["dmo.victory.w16.won.017"] = {
		"Siediti un momento su un sasso. Non troppo: qui i sassi sono più freddi dell'aria.",
		"Lascia che il tremito passi. Poi la prossima cresta.",
		"Una pausa. Quanto basta per sentire il dolore, non abbastanza per gelare.",
	},
	["dmo.victory.w16.won.018"] = {
		"resta sul luogo dello scontro, una figura piccola contro le montagne bianche e per niente sminuita da esse.",
		"pianta ancora i piedi sul terreno gelato, senza più niente da affrontare.",
	},
	["dmo.victory.w16.won.019"] = {
		"Frostmane: uno in meno. Le vostre grotte si fanno spaziose.",
		"La pittura non ferma granché, eh?",
	},
	["dmo.victory.w16.won.020"] = {
		"Chiunque fosse, aveva le sue ragioni per stare qui fuori al freddo. Non le saprò mai.",
		"Aveva una voce e una volontà. Non ho aspettato di sapere cosa volesse.",
	},
	["dmo.victory.w16.won.021"] = {
		"Che sia la pietra a tenerne il conto. A me non serve.",
		"Fatto, e fatto come si deve. La montagna ne è testimone.",
		"Che si sappia: questo terreno ha tenuto.",
	},
	["dmo.victory.w16.won.022"] = {
		"Ogni zuffa su queste colline insegna la stessa cosa: prima i piedi, la rabbia per ultima.",
		"Qualcosa ho imparato. Soprattutto dove non mettersi, su un pendio gelato.",
		"Appoggio, pazienza, poi il colpo. Le montagne sono un maestro severo.",
	},
	["dmo.victory.w16.wry.001"] = {
		"Buone notizie: sento di nuovo le mani. Cattive notizie: fanno male.",
		"Finalmente al caldo. Peccato per il modo.",
		"Almeno non ho più freddo. Quasi.",
	},
	["dmo.victory.w16.wry.002"] = {
		"E come prossimo numero, un altro miglio in questo gelo e si ricomincia da capo.",
		"Vinto. Il premio: la stessa valle gelata di prima, con un problema in meno.",
		"Vittoria. La valle è identica a prima. Tipico.",
	},
	["dmo.victory.w16.wry.003"] = {
		"Trogg. Tutto quello scavare, e guarda dove ti porta.",
		"Dovevi restartene sottoterra. Al posto tuo, io sottoterra ci resterei eccome.",
	},
	["dmo.victory.w16.wry.004"] = {
		"scuote le dita che pizzicano, con l'aria assai più soddisfatta che infreddolita.",
		"si infila le mani sotto le ascelle e sorride a nessuno in particolare.",
	},
	["dmo.victory.w16.wry.005"] = {
		"Dun Morogh: uno. Io: un pochino più di uno.",
		"Qualcuno riferisca il punteggio alla montagna.",
		"Conto saldato. La montagna può tenere il broncio.",
	},
	["dmo.victory.w16.wry.006"] = {
		"Un nano la racconterebbe con il doppio dei nemici e la metà delle scivolate. Giusto così.",
		"Nelle canzoni nessuno si ferma mai a strofinarsi le orecchie, dopo. Dovrebbero.",
	},
	["dmo.victory.w16.wry.007"] = {
		"Bella pelliccia. Peccato che ci fossi dentro tu.",
		"Dovevi puntare agli arieti. Quelli non rispondono.",
		"La prossima volta, mangiati una lepre.",
	},
	["dmo.victory.w16.wry.008"] = {
		"vince lo scontro e per poco non perde l'equilibrio subito dopo, braccia a mulinello su una lastra di ghiaccio.",
		"fa un passo fiero e slitta di mezzo palmo sulla brina: dignità quasi intatta.",
	},
	["dmo.victory.w16.wry.009"] = {
		"È andata bene. Della parte in cui per poco non cadevo, non parlerò.",
		"Vittoria, con una piccola scivolata che nessuno ha visto. Che resti così.",
		"Se qualcuno chiede, quell'inciampo era una finta.",
	},
	["dmo.victory.w16.wry.010"] = {
		"Tanto valeva risparmiarsi i colori di guerra.",
		"Tutti quegli strilli, e finisce così.",
	},
	["dmo.victory.w16.wry.011"] = {
		"Tutto qui? La montagna manda il meglio che ha, e il meglio è questo?",
		"Ho avuto discussioni più dure con una porta gelata.",
		"Ho incontrato cose più feroci in una pentola di stufato a Kharanos.",
	},
	["dmo.victory.w16.wry.012"] = {
		"Vinto lo scontro, perso un guanto in mezzo al cumulo. La montagna si prende sempre la sua parte.",
		"La vittoria sa di neve, soprattutto perché ne ho la bocca piena.",
	},
	["dmo.victory.w16.wry.013"] = {
		"controlla dita, piedi e orecchie, trova il numero giusto di ciascuno e annuisce.",
		"conta le dita due volte: il freddo non se n'è tenuto nessuno.",
	},
	["dmo.victory.w16.wry.014"] = {
		"È il moto più serio che si sia visto in questa valle senza portare un barile.",
		"Barili, arieti e zuffe. Dun Morogh offre tre tipi di lavoro, e uno l'ho appena fatto.",
		"Combattere, trasportare barili, badare agli arieti. Almeno questa finisce in fretta.",
	},
	["dmo.victory.w16.wry.015"] = {
		"Niente di personale. Tu avresti fatto lo stesso, e con meno rimorsi.",
		"Mi spiace, bestia. Quassù la fame ci rende tutti stupidi.",
	},
	["dmo.victory.w16.wry.016"] = {
		"Fatelo sapere al resto delle gallerie. Ironforge sta ancora di sopra, e non si sposta.",
		"Il prossimo trogg che mette fuori la testa riceve lo stesso trattamento.",
		"Risalire dal profondo per questo? Pessima pianificazione, trogg.",
	},
	["dmo.victory.w16.wry.017"] = {
		"Festeggerei, ma ogni muscolo che mi servirebbe è congelato.",
		"Con questo gelo un sorriso mi spaccherebbe la faccia. Facciamo che ho sorriso.",
	},
	["dmo.victory.w16.wry.018"] = {
		"raccoglie una manciata di neve pulita, ci si strofina le mani e fa finta che fosse tutto previsto.",
		"si passa una manciata di neve sul viso e fa una smorfia per il gelo.",
	},
	["dmo.victory.w16.wry.019"] = {
		"Breve, gelida e a mio favore. Il genere che preferisco.",
		"Corta e tagliente, come l'aria di montagna.",
		"Finita in fretta. Il freddo ha appena fatto in tempo a lamentarsi.",
	},
	["dmo.victory.w16.wry.020"] = {
		"La valle si alleggerisce di un problema, io mi appesantisco di un livido. Scambio onesto, direi.",
		"Una vittoria è una vittoria. Il ginocchio non è d'accordo, ma nessuno gliel'ha chiesto.",
		"Per una settimana farò fatica a piegarmi. Ne valeva la pena, credo.",
	},
	["dmo.victory.w16.wry.021"] = {
		"Corri a dirlo al branco. Ah. Lascia perdere.",
		"È l'ultima volta che mi ululi contro.",
	},
	["dmo.victory.w16.wry.022"] = {
		"fa un inchino al fianco deserto della montagna come a una folla, e riceve il silenzio che merita.",
		"cerca intorno qualche testimone. I pini si tengono per sé le loro opinioni.",
	},
	["dmo.weather_change.w16.sky.001"] = {
		"Cominciano a scendere fiocchi lenti e grossi, e i pendii lontani si sfumano ai bordi. La montagna si tira su la coperta.",
		"Altra neve che cala piano su quella vecchia. Qui non fa quasi notizia, eppure la valle, per rispetto, si zittisce.",
		"Ecco la neve, che scende setacciata come farina da un sacco scosso. Le mie orme si stanno già riempiendo alle mie spalle.",
	},
	["dmo.weather_change.w16.sky.002"] = {
		"Nevica. E come no. Dun Morogh non vorrebbe mai che qualcuno si scordasse dove si trova.",
		"Neve fresca. Splendido. Così i cumuli mi arriveranno alla vita invece che alle ginocchia.",
	},
	["dmo.weather_change.w16.sky.003"] = {
		"alza lo sguardo mentre il cielo si apre sopra le vette, e ogni crinale si staglia d'un tratto netto, come ritagliato nella carta.",
		"vede la valle aprirsi mentre il cielo si sgombra: pendii lontani, pini lontani, la lunga linea della strada, tutto nitido e vicino.",
		"si abbassa il cappuccio mentre il cielo si apre, e l'intera valle sembra fare un passo avanti, dai contorni netti, immobile.",
	},
	["dmo.weather_change.w16.sky.004"] = {
		"Il cielo si è rasserenato, e con lui arriva un freddo che morde il doppio. Quassù il sereno non è una gentilezza.",
		"Adesso sopra le vette è sereno. Ogni distanza sembra più corta di quel che è: è così che la montagna ti attira avanti.",
	},
	["dmo.weather_change.w16.sky.005"] = {
		"rallenta mentre la nebbia sale dagli avvallamenti e la strada davanti si riduce a pochi metri pallidi.",
		"attende che la nebbia si posi tutt'intorno: il pino più vicino ridotto a una macchia scura, il resto del mondo semplicemente sparito.",
		"tiene una mano sulla roccia più vicina mentre la nebbia si chiude, e la valle si restringe in una piccola stanza bianca.",
	},
	["dmo.weather_change.w16.sky.006"] = {
		"Nebbia, in una valle piena di dirupi. Magnifico. Camminerò pianissimo, grazie tante.",
		"In questo nebbione non vedo nemmeno i miei stivali. Se sentite un guaito e poi un lungo silenzio, ero io che trovavo uno strapiombo.",
	},
	["dmo.weather_change.w16.sky.007"] = {
		"Il cielo sopra le vette sta cambiando idea. Quassù succede spesso, e non chiede mai il permesso a nessuno.",
		"Lassù qualcosa è cambiato. I nani saprebbero già cosa significa; io lo scoprirò nel modo più lento.",
		"La montagna ha voltato pagina al suo cielo. Qualunque cosa ci sia scritta, la valle l'ha già letta.",
	},
]==])
