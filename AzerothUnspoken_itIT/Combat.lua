-- Testi di base in italiano: combattimento (inizio, minaccia, vittoria, ferite gravi). Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryCombat.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["battle.gen.01"] = {
		"{cry}",
		"Con me! {cry}",
	},
	["battle.gen.02"] = {
		"Che i bardi abbiano di che cantare, stanotte!",
		"Avanti! Diamo all'osteria una storia che valga la birra.",
	},
	["battle.gen.03"] = {
		"Non ho cercato questa battaglia. Ma non la fuggirò.",
		"Avrei tirato dritto. Sei tu che non l'hai voluto.",
	},
	["battle.gen.04"] = {
		"Vieni, dunque. La mia lama ha sete da troppo tempo.",
		"Finalmente. Mi prudevano le mani da giorni.",
	},
	["battle.gen.05"] = {
		"Un'altra alba, un'altra battaglia. Forse un giorno impareremo altre canzoni.",
		"Sempre la stessa danza. Cambiano i passi, e le facce.",
	},
	["battle.gen.06"] = {
		"In piedi! Finché uno di noi respira, nulla è perduto!",
		"Su, su! Nessuno resta a terra finché ci sono io!",
	},
	["battle.gen.07"] = {
		"Il sangue chiama sangue. Così è sempre stato.",
		"Uno colpisce, l'altro risponde. Nessuno ricorda più chi ha cominciato.",
	},
	["battle.gen.08"] = {
		"Speravo in una giornata tranquilla. Speravo male.",
		"E io che volevo solo fare due passi.",
		"Ecco. Lo sapevo che tutta questa quiete era sospetta.",
	},
	["battle.gen.09"] = {
		"Ricordate questo momento: è qui che il destino ha scelto da che parte stare.",
		{ "Che chi verrà dopo lo trovi scritto chiaro: qui nessuno ha chinato il capo.", depth = "elevated" },
	},
	["battle.gen.10"] = {
		"In nome {faith_of}, io resto.",
		"Resto qui. Il resto lo lascio nelle mani {faith_of}.",
	},
	["battle.gen.11"] = {
		"Guardami bene. Sarò l'ultima cosa che vedrai.",
		"Guarda bene questa faccia. Non avrai il tempo di dimenticarla.",
	},
	["battle.gen.12"] = {
		"Nessun passo indietro. Nessuno!",
		"Piedi piantati. Da qui non si passa.",
		"Spalla a spalla, e che vengano pure.",
	},
	["battle.gen.13"] = {
		"Che sia breve. Le canzoni più lunghe sono sempre le più tristi.",
		"Speriamo finisca presto. Sono {g:stanco|stanca} di contare i graffi.",
	},
	["battle.gen.14"] = {
		"Ah, finalmente qualcuno che non vuole solo parlare.",
		"Bene. Le chiacchiere cominciavano ad annoiarmi.",
	},
	["battle.gen.15"] = {
		"Ho paura. Va bene. Muoviti lo stesso.",
		"Le mani sudano sull'impugnatura. Respira.",
	},
	["battle.gen.16"] = {
		"Debole a sinistra. Guarda i piedi, non la lama.",
		"Tre passi di spazio, terreno buono. Ci siamo.",
	},
	["battle.tgt.01"] = {
		"{target}! Il tuo cammino finisce qui.",
		"Tu. Sì, proprio tu. Più in là di così non vai.",
		"Ultimo passo, {target}. Fallo bene.",
	},
	["battle.tgt.02"] = {
		"Ti conosco, {target}. Ora tu conoscerai me.",
		"Ho imparato il tuo passo da lontano. Adesso impara il mio.",
	},
	["battle.tgt.03"] = {
		"{target}? Mi aspettavo di peggio. O almeno di più.",
		"Tutto qui? Mi avevano promesso un avversario.",
	},
	["battle.tgt.04"] = {
		"Sei grande, {target}. Ma anche le montagne cadono, un sasso alla volta.",
		{ "Più grosso di me, più forte di me. Pazienza: sarò più {g:testardo|testarda}.", depth = "natural" },
		{ "Alto quanto una torre, dunque. Anche le torri hanno fondamenta, e io troverò le tue.", depth = "elevated" },
	},
	["battle.tgt.05"] = {
		"Avanti, {foe}. Ti aspettavo.",
		"Eccoti, {foe}. Sei in ritardo.",
	},
	["battle.undead.01"] = {
		"Torna alla polvere. La morte ti ha atteso abbastanza.",
		"Hai camminato troppo a lungo, per uno che non respira. Giù.",
	},
	["battle.undead.02"] = {
		"Un tempo eri qualcuno. Ti renderò il riposo che ti è stato rubato.",
		"Chissà come ti chiamavi. Lascia che ti restituisca almeno la quiete.",
	},
	["battle.undead.03"] = {
		"Schiavo del Re dei Lich... io ho spezzato le mie catene. Tu brucerai nelle tue.",
		"Senti ancora la sua voce nel cranio? Io no. È questa la differenza tra noi.",
	},
	["battle.demon.01"] = {
		"Questo mondo non è tuo, demone. Non lo sarà mai.",
		"Torna da dove provieni. Quest'aria non è roba tua.",
	},
	["battle.demon.02"] = {
		"Ho sentito il tuo nome sussurrato nel buio. Stanotte lo dimenticheranno.",
		"Puzzi di zolfo e di promesse. Non compro né l'uno né le altre.",
	},
	["battle.demon.03"] = {
		"Il tuo sangue ha avvelenato i miei padri. Il mio sangue ti seppellirà.",
		"Ci avete messo le catene una volta. Ora tocca a voi sentirne il peso.",
	},
	["battle.beast.01"] = {
		"Perdonami, creatura delle zanne. Uno solo di noi vedrà il tramonto.",
		"Niente di personale, bestia mia. Abbiamo fame tutti e due.",
	},
	["battle.beast.02"] = {
		"Brava bestia. Bella bestia. Ferma bestia...",
		"Cuccia. Cuccia! Perché non funziona mai?",
	},
	["battle.dragon.01"] = {
		"Le tue ali hanno oscurato il sole per l'ultima volta, verme.",
		"Scendi a terra, drago. Vediamo quanto vali senza il cielo.",
	},
	["battle.dragon.02"] = {
		"Sei antico, drago. Ma anche le cose antiche possono finire.",
		"Hai dormito sull'oro per secoli. Oggi il sonno finisce.",
	},
	["battle.elemental.01"] = {
		"Furia senza volto, torna nel piano che ti ha generato!",
		"Pietra che urla, fuoco che cammina. Non è il tuo posto, questo.",
	},
	["battle.elemental.02"] = {
		"Gli spiriti mi hanno parlato di te. Non ti hanno chiamato amico.",
		"Spirito smarrito, qualcuno ti ha strappato al tuo equilibrio. Ti rimetterò al tuo posto.",
	},
	["battle.giant.01"] = {
		"Grande così? Bene: non posso mancarlo.",
		"Qualcuno ha una scala? No? Allora si comincia dalle caviglie.",
	},
	["battle.mech.01"] = {
		"Qualcuno ha dimenticato di installare il pulsante di spegnimento. Lo farò io.",
		"Sento cigolare qualcosa. Spero sia lui e non le mie ginocchia.",
	},
	["battle.pvp.01"] = {
		"L'Alleanza ha mandato un altro agnello. L'Orda ringrazia.",
		"Alleanza, così lontano da casa? Avete sbagliato strada.",
	},
	["battle.pvp.02"] = {
		"Le vostre urla non ci fanno paura. Le abbiamo già sentite, e abbiamo vinto lo stesso.",
		"Gridate pure. Noi teniamo lo scudo alto e il fiato per dopo.",
	},
	["battle.pvp.03"] = {
		"Non c'è odio nella mia mano. Solo il peso di una lunga guerra.",
		"Non ti odio. Ma non abbasserò la guardia per questo.",
	},
	["battle.elite.01"] = {
		"Stringete le file! Questo non è un nemico da affrontare da soli!",
		{ "Occhio, questo è tosto. Niente eroismi.", depth = "natural" },
		{ "Non è una preda qualunque. Che ogni colpo sia pesato, e ogni passo misurato.", depth = "elevated" },
	},
	["battle.boss.01"] = {
		"Eccolo, il fondo di tutto questo buio. Se cadiamo, che si dica che non abbiamo esitato.",
		{ "Eccolo. Respirate, controllate le cinghie, e niente scherzi.", depth = "natural" },
		{ "Qui finisce la strada lunga. Qualunque cosa accada, l'abbiamo percorsa insieme.", depth = "elevated" },
	},
	["battle.boss.02"] = {
		"Tutte le strade ci hanno portato qui. Nessuna ci riporterà indietro uguali.",
		"Siamo arrivati fin qui un passo alla volta. Ne manca uno.",
	},
	["battle.orc.01"] = {
		"Il sangue dei miei padri ruggisce! Lok'tar!",
		"Il tamburo di guerra mi batte nel petto! Lok'tar!",
	},
	["battle.orc.02"] = {
		"Non siamo più schiavi di nessuno. Combatto da {g:orco libero|orchessa libera}.",
		"Ho portato le catene, una volta. Ora porto l'ascia, e scelgo io dove cala.",
	},
	["battle.scourge.01"] = {
		"Ho già conosciuto la morte. Non mi ha impressionato.",
		"Il mio cuore non batte più all'impazzata. Comodo, in momenti come questo.",
	},
	["battle.scourge.02"] = {
		"Uccidermi? Ci hanno già pensato. Guarda com'è andata.",
		"Attento a dove colpisci. Certi pezzi non ricrescono.",
	},
	["battle.tauren.01"] = {
		"La Madre Terra mi tiene in piedi. Tu, invece, chi ti sorregge?",
		"Sento la terra sotto gli zoccoli. Lei regge, e io con lei.",
	},
	["battle.troll.01"] = {
		"I Loa guardano. Facciamogli vedere qualcosa di bello.",
		"Ehi, Loa! Guardate qua: adesso viene il bello.",
	},
	["battle.human.01"] = {
		"Per ogni campo bruciato di Elwynn, per ogni casa senza ritorno!",
		"Per le fattorie, per i mulini, per chi stasera aspetta alla finestra!",
	},
	["battle.dwarf.01"] = {
		"Per i padri dei miei padri! La montagna non arretra, e io nemmeno.",
		"Un attimo che mi sistemo la barba. Ecco. Adesso sì.",
	},
	["battle.dwarf.02"] = {
		"Le montagne non arretrano, e nemmeno i loro figli!",
		"Pietra e martello! Vediamo chi si scheggia prima!",
	},
	["battle.nelf.01"] = {
		"Diecimila anni di veglia, e ancora il mondo produce mostri.",
		"Ho visto querce nascere da una ghianda, e mai una guerra finire.",
	},
	["battle.nelf.02"] = {
		"La luna è alta. Elune vede ogni cosa, e stanotte vede te.",
		"La luna d'argento è testimone. Che sia lei a giudicare chi resta in piedi.",
	},
	["battle.gnome.01"] = {
		"Calcolo le probabilità... no, meglio non saperle. All'attacco!",
		"Teoria interessante: se corro abbastanza veloce, non mi prende. Verifichiamo!",
	},
	["battle.warrior.01"] = {
		"Acciaio e volontà. Non mi serve altro.",
		"Scudo su, testa giù. Il resto lo fa il braccio.",
	},
	["battle.warrior.02"] = {
		"Dietro di me! Che colpiscano me per primo!",
		"State indietro, li tengo io. È il mio mestiere.",
	},
	["battle.paladin.01"] = {
		"La Luce non chiede vendetta. Chiede giustizia. E la giustizia oggi ha un martello.",
		"La Luce mi chiede di essere {g:giusto|giusta}, non gentile. Oggi lo sarò.",
	},
	["battle.paladin.02"] = {
		"Ardi, o Luce! Che le tenebre ricordino il tuo nome!",
		"Luce, dammi un braccio saldo e occhi limpidi!",
	},
	["battle.hunter.01"] = {
		"Ti ho seguito per tre colline. Non c'è più bosco in cui nasconderti.",
		"Leggo le tue tracce dall'alba. Queste sono le ultime che lasci.",
	},
	["battle.rogue.01"] = {
		"Non guardare me. Guarda dietro di te. Ah, troppo tardi.",
		"Scusa, ti è caduto qualcosa. Ah no, era la guardia.",
	},
	["battle.rogue.02"] = {
		"Le ombre sono mie amiche. A te, invece, non hanno mai voluto bene.",
		"Non mi hai sentito arrivare. Non mi sentirai andare via.",
	},
	["battle.priest.01"] = {
		"Pregherò per la tua anima. Dopo.",
		"Ti benedirò volentieri. Prima, però, ti fermo.",
	},
	["battle.shaman.01"] = {
		"Terra, fuoco, acqua e vento: ascoltatemi ora!",
		"Spiriti, sono qui. Prestatemi la voce del tuono.",
	},
	["battle.mage.01"] = {
		"Ho studiato trent'anni per questo momento. Cerca di renderlo interessante.",
		"Dammi un attimo per ricordare la formula. Scherzo. Forse.",
	},
	["battle.mage.02"] = {
		"Le linee del potere si tendono come corde d'arpa. Ascolta la mia canzone.",
		"L'aria sa di temporale e di pergamena. Occhio a cosa respiri.",
	},
	["battle.warlock.01"] = {
		"Ho fatto patti con cose che ti farebbero impazzire. Tu sei solo un dettaglio.",
		"C'è qualcosa che ti osserva da sopra la mia spalla. Io non lo farei arrabbiare.",
	},
	["battle.druid.01"] = {
		"Il bosco ha mille occhi, e tutti ti guardano.",
		"Le radici sanno dove metti i piedi. Anch'io.",
	},
	["battle.night.01"] = {
		"Brutta notte per morire. Ma sono tutte brutte, in fondo.",
		"Al buio ogni colpo arriva un attimo prima di vederlo.",
	},
	["battle.dawn.01"] = {
		"Guarda, sorge il sole. Almeno uno di noi lo vedrà tramontare.",
		"Prima luce. Almeno ci vedremo bene in faccia.",
	},
	["battle.plague.01"] = {
		"Questa terra era verde, un tempo. Combatto perché lo torni.",
		"Anche l'erba qui sa di malattia. Un giorno la ripuliremo, zolla per zolla.",
	},
	["battle.e.01"] = {
		"stringe la presa sull'impugnatura finché il cuoio scricchiola.",
		"pianta bene i piedi e abbassa il peso, il respiro corto e regolare.",
	},
	["battle.e.02"] = {
		"si sposta di lato sollevando un velo di polvere, gli occhi fissi sull'avversario.",
		"si scrolla di dosso la fatica del viaggio in un solo, lungo respiro.",
		"fa scrocchiare il collo, poi alza la guardia senza fretta.",
	},
	["battle.e.03"] = {
		"avanza nel buio guidandosi più con l'udito che con la vista.",
		"socchiude gli occhi contro l'oscurità, cercando il riflesso di una lama.",
	},
	["battle.e.04"] = {
		"arriccia il naso: l'aria sa di terra smossa e di carne vecchia.",
		"arretra di mezzo passo davanti a quel lezzo dolciastro, poi torna avanti.",
	},
	["battle.e.05"] = {
		"alza lo sguardo, e poi ancora un po' più su, per prendere la misura dell'avversario.",
		"si passa la lingua sulle labbra secche, gli occhi sulla mole che avanza.",
		{ "resta immobile un lungo istante, come chi ode il primo tuono di una tempesta a cui non si sfugge.", depth = "elevated" },
	},
	["battle.e.06"] = {
		"lancia un'occhiata intorno: le pareti trasudano umido e l'eco raddoppia ogni passo.",
		"sente il soffitto basso premere sulle spalle mentre il nemico emerge dal fondo del corridoio.",
	},
	["battle.e.07"] = {
		"soffia via un fiocco di neve dalle labbra e chiude le dita intirizzite sull'arma.",
		"affonda gli stivali nella neve fino alla caviglia, in cerca di un appoggio che non scivoli.",
	},
	["threat.01"] = {
		"Fai un altro passo, e sarà l'ultimo di cui ti pentirai.",
		"Un altro passo. Avanti. Provaci.",
	},
	["threat.02"] = {
		"Conosco cento modi per far tacere qualcuno. Sceglierei il più lento.",
		"Ho pazienza, io. E mani ferme. Pensaci.",
	},
	["threat.03"] = {
		"Questo è l'unico avvertimento che riceverai. Ascoltalo bene.",
		"Lo dico una volta sola, e piano. Vattene.",
	},
	["threat.04"] = {
		"Sorrido perché sono gentile. Non farmi smettere.",
		"Sto ancora sorridendo. Approfittane.",
	},
	["threat.05"] = {
		"{target}, ho seppellito gente migliore di te sotto pietre più piccole.",
		"Ho scavato fosse per gente più grossa di te. Senza nemmeno sudare.",
	},
	["threat.06"] = {
		"Il vento sta cambiando. Senti? Porta il tuo nome, e nessuno lo piangerà.",
		"Senti come si è zittito il bosco? Sa già come va a finire.",
	},
	["threat.07"] = {
		"Ho un'anima in tasca che pesa meno della tua. Per ora.",
		"Nella mia collezione di anime c'è un posto libero. Sembra della tua misura.",
	},
	["threat.08"] = {
		"Gli orchi non minacciano. Promettono.",
		"Non alzo la voce. Alzo l'ascia.",
	},
	["threat.09"] = {
		"Ho tutto il tempo del mondo. Tu no.",
		"Io non mi stanco, non dormo, non dimentico. E tu?",
	},
	["victory.gen.01"] = {
		"Non c'è gloria nel sangue. Solo il silenzio che viene dopo.",
		"Il rumore è finito. Il silenzio di dopo pesa sempre più del colpo.",
	},
	["victory.gen.02"] = {
		"Ancora in piedi. Sempre in piedi.",
		"In piedi. Un po' {g:storto|storta}, ma in piedi.",
		"Ancora qui. Avanti il prossimo.",
		{ "In piedi. Basta così.", depth = "natural" },
		{ "Ancora una volta la terra mi regge, e io reggo l'arma. Chi viene dopo dovrà misurarsi con entrambe.", depth = "elevated" },
	},
	["victory.gen.03"] = {
		"Riposa ora. Qualunque cosa tu fossi, la tua guerra è finita.",
		"Va', e non voltarti. Qualunque cosa ti spingesse, adesso può lasciarti andare.",
	},
	["victory.gen.04"] = {
		"Beh. È andata meglio di quanto temessi e peggio di quanto avessi promesso.",
		"Bene. Nessuno ha visto quando sono {g:inciampato|inciampata}, vero?",
		"Poteva andare peggio. Lo dico sempre, e ogni tanto è vero.",
	},
	["victory.gen.05"] = {
		"Così cadono quelli che sfidano la marea. Che lo sappiano tutti.",
		{ "Che lo raccontino attorno ai fuochi: chi si è messo sulla nostra strada non si è rialzato.", depth = "elevated" },
	},
	["victory.gen.06"] = {
		"Un altro nome che nessuno canterà. Neppure il mio, forse.",
		"Non so nemmeno chi fosse. Forse non lo sapeva più neanche lui.",
	},
	["victory.gen.07"] = {
		"È finita. Rialzate gli scudi: la strada è ancora lunga.",
		"Fatto. Pulite le armi e rimettetevi in cammino.",
	},
	["victory.gen.08"] = {
		"La terra ha bevuto. Per oggi le basterà.",
		"Le mosche arriveranno prima di sera. Arrivano sempre.",
	},
	["victory.gen.09"] = {
		"La forza era un dono {faith_of}. Il dolore lo tengo per me.",
		"Ringrazio la forza {faith_of}. Il tremito alle mani, invece, è tutto mio.",
	},
	["victory.gen.10"] = {
		"Qualcuno ha visto dove è finito il mio orgoglio? Era qui un attimo fa.",
		"Nota per me: la prossima volta, contarli prima di caricare.",
	},
	["victory.gen.11"] = {
		"Mi siedo. Solo un momento. Solo uno.",
		"Adesso tremano, le gambe. A cose fatte. Tipico.",
	},
	["victory.long.01"] = {
		"Lunga è stata la battaglia, e pesante il passo. Ma il giorno è nostro.",
		{ "Che fatica. Ho le braccia di piombo, ma è finita.", depth = "natural" },
	},
	["victory.lowhp.01"] = {
		"Vinto. Credo. Qualcuno mi dica quanti pezzi mi mancano.",
		"Ho vinto, sì. Adesso qualcuno mi ricordi come si sta in piedi.",
	},
	["victory.lowhp.02"] = {
		"Per un soffio. La morte mi ha sfiorato la spalla e ha deciso di aspettare.",
		{ "C'è mancato poco. Troppo poco.", depth = "natural" },
		{ "Ho sentito la porta socchiudersi, e il freddo passare dallo spiraglio. Poi, dall'altra parte, qualcuno l'ha richiusa.", depth = "elevated" },
	},
	["victory.party.01"] = {
		"Ben fatto, compagni. Nessuna lama è forte quanto quelle che combattono insieme.",
		{ "Bel lavoro, tutti. Qualcuno ha bisogno di bende?", depth = "natural" },
	},
	["victory.orc.01"] = {
		"Lok'tar! La vittoria ha il sapore del ferro.",
		"Ah! Questa la racconterò ai giovani del villaggio, intorno al fuoco.",
	},
	["victory.tauren.01"] = {
		"Torna alla Madre Terra. Lei non giudica nessuno.",
		"Riposa nell'erba alta. La Madre Terra ha posto per tutti.",
	},
	["victory.scourge.01"] = {
		"Un altro che conoscerà il silenzio. Gli piacerà, prima o poi.",
		"Ora sei come me, solo più tranquillo. Non so a chi dei due sia andata meglio.",
	},
	["victory.troll.01"] = {
		"Tutto qui? Non c'è mai stata partita. Davvero.",
		"Facile. Troppo facile. Adesso mi annoio.",
	},
	["victory.dwarf.01"] = {
		"Ah! Bella scaldata. Ora qualcuno mi offra da bere.",
		"Bel lavoro. A Khaz Modan ne farebbero una canzone.",
	},
	["victory.nelf.01"] = {
		"Lascia che le radici ti accolgano. Il bosco dimentica in fretta, ed è un dono.",
		"Il muschio ti coprirà prima della prossima luna. Ci sono fini peggiori.",
	},
	["victory.human.01"] = {
		"Un altro giorno in cui i nostri figli non dovranno combattere.",
		"Uno di meno sulle strade di casa. Stanotte qualcuno dormirà tranquillo.",
	},
	["victory.gnome.01"] = {
		"Esattamente come previsto! Più o meno. Diciamo meno.",
		"Annotare: approccio diretto efficace, ma rumoroso. Molto rumoroso.",
	},
	["victory.priest.01"] = {
		"Luce, accogli ciò che resta. Anche i perduti erano tuoi, un tempo.",
		"Che la Luce trovi quello che io non ho saputo salvare.",
	},
	["victory.warlock.01"] = {
		"Non sprecherò questa anima. Sarebbe maleducato.",
		"Una scheggia in più per la borsa. Il resto puoi tenerlo.",
	},
	["victory.hunter.01"] = {
		"Una caccia pulita. Che la tua carne nutra chi viene dopo.",
		"Colpo netto, niente sofferenza. Così si caccia.",
	},
	["victory.undead.01"] = {
		"Dormi, finalmente. Questa volta per sempre.",
		"Giù, e stavolta resta giù.",
	},
	["victory.night.01"] = {
		"Le stelle non hanno visto nulla. Così è meglio.",
		"Notte fonda, silenzio, e il mio fiato che fuma nel freddo. Basta così.",
	},
	["victory.e.01"] = {
		"abbassa l'arma e lascia che il respiro torni lento, un sorso d'aria alla volta.",
		"si passa il dorso della mano sulla fronte e si guarda intorno, ancora all'erta.",
	},
	["victory.e.02"] = {
		"resta a fissare l'avversario abbattuto, le spalle che si alzano e si abbassano a ogni respiro.",
		{ "si lascia sfuggire una risata breve e roca, più di sollievo che di trionfo.", depth = "natural" },
		{ "solleva l'arma verso il cielo, e per un attimo il campo intero sembra trattenere il fiato.", depth = "elevated" },
	},
	["victory.e.03"] = {
		"si appoggia alla pietra fredda della sala e lascia che il rumore della lotta svanisca tra le volte.",
		"conta i compagni con lo sguardo, uno per uno, prima di abbassare la guardia.",
	},
	["victory.e.04"] = {
		"si china sull'animale caduto e gli passa una mano sul fianco ancora caldo.",
		"resta un momento accanto alla bestia, mentre intorno il bosco torna a frusciare.",
	},
	["lowhp.01"] = {
		"Non ancora... non oggi!",
		{ "No, no, no. Ancora un po'. Resisti.", depth = "natural" },
		{ "Non è questa la terra su cui mi stenderò. Non ancora.", depth = "elevated" },
	},
	["lowhp.02"] = {
		"Se devo cadere, cadrò con la lama in pugno!",
		"Mi resta un braccio buono. Basta e avanza!",
	},
	["lowhp.03"] = {
		"Il sangue è caldo, e la terra è fredda. Strano, non ci avevo mai pensato.",
		{ "Mi gira la testa. Le gambe non sono più mie.", depth = "natural" },
		{ "Strano come il mondo si faccia piccolo e lontano, come visto dal fondo di un pozzo.", depth = "elevated" },
	},
	["lowhp.04"] = {
		"Niente di grave. Solo un buco in più di quelli che mi servono.",
		"Sto bene. Più o meno. Diciamo che sono ancora qui.",
	},
	["lowhp.05"] = {
		"Ho visto il buio più da vicino di così. E sono {g:tornato|tornata} a raccontarlo.",
		{ "Respira. Ne hai passate di peggio. Respira.", depth = "natural" },
	},
	["lowhp.06"] = {
		"A me! Qualcuno mi copra, o canterete il mio nome stasera!",
		"Mi serve una mano qui! Subito, non dopo!",
	},
	["lowhp.07"] = {
		"Senti questo? È la morte che si schiarisce la voce.",
		"Sento freddo alle dita. Brutto segno.",
	},
	["lowhp.08"] = {
		"Un orco ferito è un orco arrabbiato. Fatevi avanti!",
		"Mi hai fatto male. Adesso sì che mi diverto!",
	},
	["lowhp.09"] = {
		"Perdo pezzi. Di nuovo. Qualcuno raccolga quel braccio, per favore.",
		"Niente panico. Era un pezzo che non usavo comunque.",
	},
	["lowhp.10"] = {
		"Madre Terra... non ancora. Lasciami finire il cammino.",
		"Sento l'erba che mi chiama giù. Aspetta, Madre. Aspetta ancora un poco.",
	},
	["lowhp.11"] = {
		"Elune, non distogliere lo sguardo. Non ora.",
		"Signora della luna, dammi ancora un respiro. Uno solo.",
	},
	["lowhp.12"] = {
		"Ho preso colpi peggiori alla forgia. Credo.",
		"Ahi. Va bene, questa l'ho sentita fin dentro la barba.",
	},
	["lowhp.13"] = {
		"Luce, se questo è il mio ultimo respiro, fa' che sia un respiro degno.",
		{ "Luce, aiutami. Adesso, per favore.", depth = "natural" },
	},
	["lowhp.14"] = {
		"Il mio sangue ha un prezzo. Lo pagherai tu.",
		"Il dolore è moneta, e tu mi hai appena riempito la borsa.",
	},
	["lowhp.15"] = {
		"Il dolore mi tiene {g:sveglio|sveglia}. Grazie per il favore.",
		"Ho ancora fiato. E finché ho fiato, colpisco.",
	},
	["lowhp.16"] = {
		"Troppo {g:lento|lenta}. Sono troppo {g:lento|lenta}.",
		"Non guardare la ferita. Guarda il nemico.",
	},
	["lowhp.e.01"] = {
		"cade su un ginocchio, poi si rialza, più {g:lento|lenta} ma non meno {g:deciso|decisa}.",
		"si appoggia all'arma come a un bastone, sputa, e torna in guardia.",
	},
	["lowhp.e.02"] = {
		"vacilla; per un momento lo sguardo si perde lontano, poi torna sul nemico.",
		"barcolla, e per un istante i rumori della lotta sembrano arrivare da molto lontano.",
	},
	["lowhp.e.03"] = {
		"si piega in due per un istante, il fiato spezzato, poi raddrizza la schiena a fatica.",
		"stringe i denti fino a sentire scricchiolare la mascella.",
	},
	["lowhp.e.04"] = {
		"cede terreno sotto i colpi, un passo, poi un altro, finché non resta più spazio per arretrare.",
		{ "arranca all'indietro ansimando, l'arma alzata più per abitudine che per forza.", depth = "natural" },
		{ "regge come l'ultimo palo in un fiume in piena, che l'acqua piega ma non ha ancora strappato.", depth = "elevated" },
	},
	["lowhp.e.05"] = {
		"cerca i compagni con lo sguardo, la voce troppo roca per chiamarli.",
		"alza a fatica un braccio verso i compagni, più un segnale che una richiesta.",
	},
	["lowhp.e.06"] = {
		"barcolla nel buio; per un istante il nemico è solo una sagoma tra le altre.",
		"sente il freddo della notte infilarsi nelle ferite.",
	},
}, "base_combat")
