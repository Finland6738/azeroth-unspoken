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
	["race.dwarf.battle.001"] = {
		"Khaz Modan! Vieni a tentare la sorte contro la pietra profonda!",
		"Forgiardente ti manda i suoi saluti. Tutti insieme!",
		"Ecco a te un nano! Occhio: colpiamo più in alto di quanto siamo alti.",
	},
	["race.dwarf.battle.002"] = {
		"Ogni pietra ha la sua venatura. Ogni bruto ha un lato debole. Trovalo.",
		"Cerca la crepa, come nella roccia. Colpisci lì, e il resto si spacca da sé.",
	},
	["race.dwarf.battle.003"] = {
		"allarga i piedi e si abbassa, {g:piantato|piantata} come una colonna delle antiche sale.",
		"china il capo e si mette in guardia, {g:saldo|salda} e inamovibile come una porta nanica.",
	},
	["race.dwarf.lowhp.001"] = {
		"Tieni duro. Le montagne si crepano e restano in piedi per mille anni.",
		"Anche un'incudine incrinata risuona. Continua a risuonare.",
		"Perdo come una botte sfondata. Tappala e vai avanti, {g:nano|nana}.",
	},
	["race.dwarf.threat.001"] = {
		"Vattene adesso. Mi dicono che sono difficile da spostare, e ancora più difficile da fermare.",
		"Avresti più fortuna a discutere con una montagna. Provaci, e vedrai.",
	},
	["race.dwarf.victory.001"] = {
		"Così si fa sotto la montagna, e anche sopra!",
		"Testardaggine e un braccio forte. Ai nani non hanno mai fatto difetto.",
		"Giù. A Forgiardente, adesso, un vecchio ha appena sorriso senza sapere perché.",
	},
	["race.dwarf.victory.002"] = {
		"Respira. Controlla l'equipaggiamento. Conta i lividi. La regola dei minatori dopo un crollo vale anche dopo uno scontro.",
		"Calma. Il cuore rallenta, le mani sono ancora salde. La pietra ti insegna a finire una cosa, e poi a riposare.",
		"Come trasportare minerale: il peso se ne va, e per un po' resta solo il dolore alle braccia.",
	},
	["race.dwarf.victory.003"] = {
		"Tutto qui? Ho avuto discussioni più dure con un carrello da miniera.",
		"Ah! L'ariete di mio cugino si batte di più, e prima di colazione.",
	},
	["race.gnome.battle.001"] = {
		"Per Gnomeregan! E per il diritto di finire il mio pranzo!",
		"Gnomeregan non è perduta finché uno gnomo combatte ancora per lei!",
		"Ricordate Gnomeregan! Poi smettete di ricordare e abbassatevi!",
	},
	["race.gnome.battle.002"] = {
		"Taglia, velocità, portata. Pesa probabilmente il doppio di me. Va bene: il peso è solo un numero.",
		"Angoli, distanze, lo spiraglio sotto la sua guardia. I piccoli vedono i pezzi che i grandi dimenticano.",
		"Calma. Ragiona. Ogni macchina ha un bullone allentato, e anche ogni bruto.",
	},
	["race.gnome.battle.003"] = {
		"scarta di lato con un saltello rapido: un bersaglio minuscolo, e troppo veloce per essere facile.",
		"raddrizza le spalle strette e guarda in su con tutta la furia di una persona molto più grande.",
		"molleggia una volta sulle punte, come una molla caricata fino all'ultimo scatto.",
	},
	["race.gnome.lowhp.001"] = {
		"Danni critici. Deviare tutta l'energia sulle gambe. O sulle braccia. In un punto utile!",
		"Integrità strutturale: preoccupante. Avanti lo stesso, non c'è un ricambio.",
		"Spie d'allarme ovunque. Ignora quelle che non puoi riparare.",
	},
	["race.gnome.lowhp.002"] = {
		"Sto bene! Più o meno! Qualcuno, chiunque, una mano per favore!",
		"Questo non era nei piani. Vorrei rivedere i piani!",
	},
	["race.gnome.threat.001"] = {
		"So esattamente quali parti di te reggono il peso. Indietro.",
		"Attenzione. Piccolo non vuol dire innocuo: chiedi a chiunque abbia provato a pestarmi.",
	},
	["race.gnome.victory.001"] = {
		"Ipotesi confermata! Principalmente colpendolo finché non ha smesso.",
		"Dati sul campo eccellenti. Eccellentissimi. Qualcuno mi tenga gli appunti, mi tremano le mani.",
		"E questa, signore e signori, è scienza applicata.",
	},
	["race.gnome.victory.002"] = {
		"Una cosa in meno tra noi e la strada di casa. È una lista lunga, ma si accorcia.",
		"Per Gnomeregan. A bassa voce, così nessuno chiede perché mi si è incrinata.",
		"Le piccole vittorie si sommano. È così che si costruisce qualsiasi cosa, città comprese.",
	},
	["race.gnome.victory.003"] = {
		"Più sono grossi, più i calcoli danno soddisfazione.",
		"Leva, tempismo e un pizzico di cattiveria. I tre pilastri dell'ingegneria gnomesca.",
	},
	["race.human.battle.001"] = {
		"Per Roccavento e per l'Alleanza! Tenete la posizione!",
		"Per il Leone! Sbrighiamoci!",
		"Roccavento non scappa mai! Be', a volte marcia in fretta. Non oggi!",
	},
	["race.human.battle.002"] = {
		"Respira. Piedi larghi, occhi sulle mani. In Elwynn ogni ragazzo della milizia impara almeno questo.",
		"Il cuore batte come il martello di un fabbro. Bene: vuol dire che funziona ancora.",
		"Non è il primo scontro, non sarà l'ultimo. Supera solo questo.",
	},
	["race.human.battle.003"] = {
		"assume la posizione come una recluta della milizia che ha finalmente capito a cosa servivano le esercitazioni.",
		"serra la mascella con la calma testarda della gente dei campi, che i predoni li ha già visti.",
		"avanza senza fronzoli, alla maniera semplice di chi combatte perché qualcuno deve farlo.",
	},
	["race.human.lowhp.001"] = {
		"Non così. Non lontano da casa, senza nessuno che possa dire loro dove.",
		"Resisti. Ci sono ancora campi da percorrere e tavole a cui sedere. Resisti.",
	},
	["race.human.lowhp.002"] = {
		"Mi sono {g:fatto|fatta} più male cadendo da un carro di fieno! ...No, non è vero.",
		"Ancora in piedi! Qualcuno mi aiuti a restarci!",
	},
	["race.human.threat.001"] = {
		"Roccavento ha resistito a due guerre. Posso resistere anche a te.",
		"Al tuo posto me ne andrei. I contadini di Westfall non sono stati gli unici a imparare a reagire.",
	},
	["race.human.victory.001"] = {
		"Roccavento resiste, e io con lei!",
		"Uno in meno di cui il regno debba preoccuparsi.",
		"Per il Leone di Roccavento! Chi è il prossimo?",
	},
	["race.human.victory.002"] = {
		"Fortuna e un po' di addestramento. Soprattutto fortuna. Non ditelo a nessuno.",
		"Respiro ancora. A casa dicevano sempre che avrei combinato qualcosa; nessuno ha mai detto cosa.",
		"In vita. Può bastare. Il resto si sistemerà dopo.",
	},
	["race.human.victory.003"] = {
		"abbassa la guardia e lancia un'occhiata alla strada alle spalle, come per controllare che la via di casa sia ancora libera.",
		"espira e si ricompone, con il sollievo semplice di chi ha tenuto i guai lontano da una soglia.",
	},
	["race.nightelf.battle.001"] = {
		"Per Darnassus e per i kaldorei!",
		"Avanti, allora. Il mio popolo è sopravvissuto a cose peggiori di te.",
		"Elune-adore. A te servirà più che a me.",
	},
	["race.nightelf.battle.002"] = {
		"Respira lento. Muoviti come il vento nell'erba; colpisci come il gufo.",
		"Prima il silenzio, poi il colpo. Il mio popolo lo sapeva molto prima che arrivassero gli orchi.",
	},
	["race.nightelf.battle.003"] = {
		"scivola in posizione di combattimento senza un suono, in bilico come una sentinella al margine del bosco.",
		"si fa immobile, dell'immobilità di un grande felino un battito prima del balzo.",
	},
	["race.nightelf.lowhp.001"] = {
		"Non ancora. Ho visto troppe stagioni per finire in questa.",
		"La terra è paziente. Che mi aspetti ancora un poco.",
		"Mortale, sì. Ma non oggi.",
	},
	["race.nightelf.threat.001"] = {
		"Sono {g:stato|stata} paziente più a lungo di quanto il tuo popolo tenga registri. Non mettere alla prova la fine della mia pazienza.",
		"Vattene. La foresta nasconde molte tombe, e nessuna è la mia.",
	},
	["race.nightelf.victory.001"] = {
		"Rapido e pulito. Le Sentinelle approverebbero.",
		"Fatto, e senza sprechi. È così che combattono i kaldorei.",
		"Di nuovo silenzio. Bene: la foresta non ama le grida.",
	},
	["race.nightelf.victory.002"] = {
		"Ricorderò questo scontro più a lungo di chiunque l'abbia visto. È il peso di una memoria lunga.",
		"Un'altra battaglia per il lungo registro che il mio popolo tiene a mente. Non sembra mai accorciarsi.",
		"È finita. Ho smesso di contare queste cose; la mia memoria lo fa comunque per me.",
	},
	["race.nightelf.victory.003"] = {
		"abbassa la guardia con la morbidezza di un grande felino che si accoccola, gli occhi ancora sui margini delle cose.",
		"si raddrizza ed espira, senza fretta, come se lo scontro fosse stato solo una folata passeggera.",
	},
	["race.orc.battle.001"] = {
		"Per l'Orda, e per ogni orco morto in una gabbia!",
		"Gli antenati del mio clan vogliono una storia. Diamogliela!",
		"Senti la forza di mani libere!",
	},
	["race.orc.battle.002"] = {
		"lancia un ruggito dal profondo del petto, di quelli con cui un tempo i vecchi clan aprivano la battaglia.",
		"scopre le zanne e si batte il pugno sul petto, una volta, due volte.",
	},
	["race.orc.lowhp.001"] = {
		"I miei antenati sanguinavano più di così prima di colazione. Non ho finito.",
		"Non ho lasciato i campi alle spalle per cadere davanti a te.",
	},
	["race.orc.victory.001"] = {
		"Hai combattuto bene. Ti ricorderò così.",
		"Un buon combattimento. Non c'è vergogna a perderne uno così.",
		"Abbastanza forte da farmi sudare. Anche questo è un modo di avere onore.",
	},
	["race.orc.victory.002"] = {
		"La rabbia mi sta lasciando, e io la lascio andare. I miei padri non riuscivano a deporla. Io sì.",
		"Torna la calma. È la parte che la vecchia Orda non ha mai imparato: come fermarsi.",
		"Respira. La furia ha servito, ora torna nella sua gabbia. La chiave ce l'ho io.",
	},
	["race.orc.victory.003"] = {
		"Ah! Quello era un riscaldamento. C'è un combattimento vero da qualche parte?",
		"Già finito? Stavo appena cominciando ad arrabbiarmi.",
	},
	["race.scourge.battle.001"] = {
		"Ho già perso tutto una volta. Cosa credi di potermi togliere?",
		"La mia volontà ora è mia. E non la cedo nemmeno a te.",
		"Colpisci pure. Ho smesso di sussultare quando ho smesso di respirare.",
	},
	["race.scourge.battle.002"] = {
		"si volta verso il nemico con la calma senza fretta di chi non ha più nulla da temere.",
		"lascia pendere la mascella in un ghigno muto che i vivi raramente gradiscono.",
	},
	["race.scourge.lowhp.001"] = {
		"La mia volontà ha resistito quando il Re dei Lich la tirava. Può resistere anche adesso.",
		"Non ancora. Ci sono cose da fare che solo chi non è del tutto morto può fare.",
		"Tenete duro, vecchie ossa. Ancora un poco.",
	},
	["race.scourge.victory.001"] = {
		"Giù. La morte non è niente di speciale. Io lo so bene.",
		"Ecco com'è morire, visto da fuori. Me n'ero {g:dimenticato|dimenticata}.",
		"Resta lì. Nessuno ti rimetterà in piedi per farti camminare. Ti è andata meglio che a me.",
	},
	["race.scourge.victory.002"] = {
		"Niente cuore in corsa, niente mani che tremano. Lo scontro finisce e niente in me se ne accorge. Stranamente, il tremore mi manca.",
		"Dopo uno scontro i vivi tremano. Io controllo se ho pezzi allentati.",
		"Ancora in piedi, o quanto di più vicino mi riesca.",
	},
	["race.scourge.victory.003"] = {
		"Per la Dama Oscura. Lo saprà, oppure no. Io lo so.",
		"Lordaeron era nostra, un tempo. Ogni vittoria rimette una pietra nelle sue mura.",
	},
	["race.tauren.battle.001"] = {
		"Avanti, allora. Ho la pazienza di una montagna, e smuovermi è due volte più difficile.",
		"Ti servirà di più per spostare un tauren. Chiedi ai centauri.",
		"Ho piantato gli zoccoli. Spingi, se credi di farcela.",
	},
	["race.tauren.battle.002"] = {
		"Madre Terra, rendi saldo il mio braccio. Antenati, tenete limpidi i miei occhi.",
		"Spiriti dei padri dei miei padri, state alle mie spalle adesso.",
		"Voi anziani della mia stirpe, contate i colpi insieme a me.",
	},
	["race.tauren.battle.003"] = {
		"abbassa le corna e raspa una volta il terreno, come un toro delle pianure sul punto di caricare.",
		"sbuffa, e basta quel suono a far sobbalzare la polvere attorno agli zoccoli.",
		"si erge in tutta la sua statura, cosa che richiede un po' di tempo, e lascia che il nemico ne guardi ogni palmo.",
	},
	["race.tauren.lowhp.001"] = {
		"Sanguino, sì. Cado, no. Non ancora.",
		"Nelle pianure, ferito vuol dire più lento. Non vuol dire finito.",
		"Ho preso cornate peggiori di questa. Eppure sono ancora in piedi.",
	},
	["race.tauren.threat.001"] = {
		"Mi arrabbio molto lentamente. Tu hai appena consumato tutta la mia pazienza.",
		"Vattene. Non lo ripeto, e non ce ne sarà bisogno.",
	},
	["race.tauren.victory.001"] = {
		"Fatto. Dammi un momento: i cuori grandi rallentano con calma.",
		"È finita. Un tauren si raffredda come un sasso al sole: piano piano.",
		"Ecco fatto. Lasciami riprendere fiato. C'è parecchio di me da riempire.",
	},
	["race.tauren.victory.002"] = {
		"Qualunque cosa fosse, ha lottato per vivere. Merita un attimo di silenzio prima che io riparta.",
		"Il cerchio gira: qualcosa finisce, la terra lo accoglie, qualcos'altro cresce. Io stavo solo dove il cerchio girava.",
		"Nessun orgoglio in questo, solo il lavoro. I miei anziani mi hanno insegnato a tenerli separati.",
	},
	["race.tauren.victory.003"] = {
		"Nelle pianure il vento soffia più forte di te. Avanti il prossimo!",
		"Ah! Un cucciolo di kodo mi ha spinto più forte.",
	},
	["race.troll.battle.001"] = {
		"Darkspear! Vieni a vedere perché ci chiamano così!",
		"I Darkspear non scappano. Balliamo!",
		"Zanne in fuori, occhi su di te. Hai scelto il troll sbagliato, oggi.",
	},
	["race.troll.battle.002"] = {
		"Colpiscimi forte quanto vuoi. Io guarisco più in fretta di quanto tu ti stanchi.",
		"Avanti, tagliami. La ferita si richiude prima che tu abbia finito di sorridere.",
		"Credi di sfiancare un troll? Ci hanno provato in tanti. Guardami: sono ancora qui.",
	},
	["race.troll.battle.003"] = {
		"si accuccia, le lunghe braccia sciolte, come facevano un tempo i cacciatori di teste in agguato nella giungla.",
		"scopre le zanne e sibila qualche parola nell'antica lingua dei troll.",
		"ondeggia piano da un piede all'altro, come chi ha imparato a combattere sulla sabbia bagnata.",
	},
	["race.troll.lowhp.001"] = {
		"Aspetta, aspetta. Dammi un respiro, che ricresce tutto.",
		"Sanguino parecchio. Per fortuna noi troll di sangue ne abbiamo in abbondanza.",
	},
	["race.troll.lowhp.002"] = {
		"Non adesso, spiriti. Devo ancora troppo ai Loa per presentarmi da loro adesso.",
		"I tamburi nelle orecchie... no. Non sono ancora i miei tamburi. In piedi.",
	},
	["race.troll.threat.001"] = {
		"Continua pure a parlare. Conosco una fattura che ti farà gracidare come una rana per una settimana.",
		"Ho la memoria lunga e le braccia ancora più lunghe. Vattene.",
	},
	["race.troll.victory.001"] = {
		"Questa finisce nel racconto. Con qualche miglioria.",
		"Ah! I Loa hanno riso, a questa. Li ho sentiti.",
		"Niente male. Gli darei un sei, forse un sette per la caduta.",
	},
	["race.troll.victory.002"] = {
		"Lo spirito ora è libero. Va', trova la tua strada. E non venire a cercare me.",
		"I vecchi dicono che lo spirito resta per un po' vicino al corpo. Io non mi trattengo mai abbastanza per scoprirlo.",
		"Morto e andato. Dico una parolina perché se ne vada dalla parte giusta.",
	},
	["race.troll.victory.003"] = {
		"Così fanno i Darkspear. Ricordatelo, se ti resta ancora qualcosa da ricordare.",
		"Un altro per i Darkspear. Chi è il prossimo?",
	},
	["band.b10_20.battle.01"] = {
		"Calma. Questa settimana ho già battuto di peggio.",
		"Avanti, allora. Ho fatto parecchia strada per arrivare fin qui.",
	},
	["band.b10_20.battle.02"] = {
		"Guarda come sposta il peso. Tutto ti avvisa prima di colpire, se presti attenzione.",
		"Fuori l'aria. Aspetta il varco. Non menare colpi alla prima cosa che si muove.",
	},
	["band.b10_20.lowhp.01"] = {
		"Troppo. Troppo in fretta. Indietro, indietro!",
		"Questo è più forte di quanto sembrava. Molto più forte.",
	},
	["band.b10_20.victory.01"] = {
		"È andata meglio della volta scorsa. Tengo il conto.",
		"Pulito. Be', più pulito. La tecnica migliora, gli stivali no.",
		"Fatto, e ho sudato appena. Appena.",
	},
	["band.b1_10.battle.01"] = {
		"Bene. Piedi larghi, occhi aperti, non far cadere niente.",
		"Calma. Ricorda cosa ti hanno insegnato. Soprattutto la parte sul non scappare.",
	},
	["band.b1_10.victory.01"] = {
		"È a terra. Mi tremano le mani, ma è a terra.",
		"Vinto. Farò finta che fosse tutto previsto, e le mani smetteranno di tremare quando vorranno.",
	},
	["band.b20_30.battle.01"] = {
		"Conosco quelli come te. Non tiriamola per le lunghe.",
		"D'accordo. Dopo di te ho ancora strada da fare.",
		"Oggi hai scelto il viandante sbagliato.",
	},
	["band.b20_30.battle.02"] = {
		"assume una posizione di guardia a cui ormai non deve più pensare.",
		"sposta il peso e aspetta, con più calma di una stagione fa.",
	},
	["band.b20_30.lowhp.01"] = {
		"Avrei dovuto vederlo arrivare. Lezione imparata. Adesso sopravvivi.",
		"Troppa fretta. Che stupidaggine. Esci da qui, esci.",
	},
	["band.b20_30.victory.01"] = {
		"Nemmeno un graffio degno di nota. Ricordo quando ogni scontro lasciava un segno.",
		"Finito, e ho appena il fiato corto. Agli inizi me lo sarei {g:sognato|sognata}.",
	},
	["band.b20_30.victory.02"] = {
		"Il prossimo. Anzi no, fammi riprendere fiato. Poi il prossimo.",
		"Bene. Qualcuno aggiunga anche questo alla lista, appena riprendo fiato.",
	},
	["band.b30_40.battle.01"] = {
		"Questa danza l'ho già vista. So come finisce.",
		"Va bene. Uno in più sulla lista, e la lista è lunga.",
	},
	["band.b30_40.battle.02"] = {
		"Niente fretta. Qui non c'è niente che non abbia già affrontato, in una forma o nell'altra.",
		"Leggilo, poi muoviti. Il resto ormai il corpo lo sa.",
	},
	["band.b30_40.battle.03"] = {
		"affronta lo scontro con la parsimonia tranquilla di una lunga pratica.",
		"lascia uscire un respiro lento e avanza, senza un solo gesto sprecato.",
	},
	["band.b30_40.lowhp.01"] = {
		"Non così. Ho fatto troppa strada per finire così.",
		"Attenzione, adesso. È il panico che uccide, non la ferita.",
		"Male. Male. D'accordo, ragiona. Sai come si fa.",
	},
	["band.b30_40.victory.01"] = {
		"E questa è fatta. Un'altra storia che non mi prenderò la briga di raccontare.",
		"Fatto. Lo chiamerei uno scontro tirato, ma ne ho visti di peggio.",
		"Giù anche questo. Come gli altri.",
	},
	["band.b30_40.victory.02"] = {
		"Pulisci, fascia, prosegui. Certe abitudini valgono più del talento.",
		"Controlla le mani, l'equipaggiamento, l'orizzonte. Poi respira.",
	},
	["band.b40_50.battle.01"] = {
		"Avanti, allora. Non ho tempo per una cosa lunga.",
		"Non sei la cosa peggiore che ho affrontato questo mese.",
		"La paura l'ho seppellita in terreni più duri di questo. Andiamo.",
	},
	["band.b40_50.battle.02"] = {
		"Misuralo. Forza, velocità, come si difende. Poi decidi quanto di te spendere.",
		"Non spendere niente che non serva. Né un respiro, né un passo.",
	},
	["band.b40_50.battle.03"] = {
		"trae un lungo respiro e lascia che il mondo si restringa a ciò che ha davanti.",
		"resta immobile per un battito di cuore, poi si muove senza alcuna esitazione.",
	},
	["band.b40_50.lowhp.01"] = {
		"Male, ma non il peggio. Tieni. Tieni duro.",
		"Conosco questa sensazione. Non lasciarla vincere.",
		"Il dolore è solo un'informazione. La leggerai dopo.",
	},
	["band.b40_50.victory.01"] = {
		"Ecco fatto. Avanti col prossimo, e con quello dopo.",
		"A terra. Festeggerei, ma ce n'è sempre un altro.",
		"Finito. Non stiamo qui ad ammirarlo.",
	},
	["band.b40_50.victory.02"] = {
		"Ogni scontro si porta via un po' della vecchia paura e lascia un po' dei vecchi dolori.",
		"Vinto, ancora. Il corpo tiene il punteggio più onestamente dell'orgoglio.",
		"Adesso vinco più di quanto perda. Solo che le sconfitte costano di più.",
	},
	["band.b50_60.battle.01"] = {
		"Vediamo se vali il disturbo.",
		"Ho affrontato di peggio. Cerca almeno di essere interessante.",
		"Calma. L'ho fatto più volte di quanti respiri hai tirato in vita tua.",
	},
	["band.b50_60.battle.02"] = {
		"Niente paura, solo aritmetica. Quanto forte, quanto veloce, quanto a lungo.",
		"Ormai in me non c'è più fretta. Bene. È con la fretta che i veterani diventano storie.",
	},
	["band.b50_60.battle.03"] = {
		"affronta lo scontro con la calma piatta di chi ha smesso da tempo di contare momenti come questo.",
		"fa la prima mossa senza una parola, come se l'esito fosse deciso prima ancora del primo colpo.",
	},
	["band.b50_60.lowhp.01"] = {
		"Non adesso. Non così vicino alla fine.",
		"Ho scalato troppo a lungo per cadere qui. Su. Su.",
		"D'accordo, questo ha fatto male. Adesso tocca a me.",
	},
	["band.b50_60.victory.01"] = {
		"Fatto. Chi è il prossimo, ed è meglio di questo?",
		"Sistemato. Speravo in qualcosa di più impegnativo.",
		"A terra, e in fretta. Bene. Non attardiamoci.",
	},
	["band.b50_60.victory.02"] = {
		"Un altro. Le mani non mi tremano più, dopo. Non so se sia del tutto un bene.",
		"È finita. La calma che segue una volta mi sorprendeva. Ora mi aspetta e basta, e le mani sono già ferme.",
		"Vinco questi scontri come un muratore posa mattoni, con mani salde. Mestiere, sì. Ma anche stanchezza, e nessuna gioia rimasta.",
	},
	["band.b60.battle.01"] = {
		"Ho affrontato di peggio, in giornate migliori. Facciamo in fretta.",
		"Pensaci bene. Io l'ho già fatto.",
	},
	["band.b60.battle.02"] = {
		"Pesalo. Vale lo sforzo, il rischio, il tempo? Sì. Vai.",
		"Ogni scontro adesso è una scelta. Questo lo scelgo.",
	},
	["band.b60.battle.03"] = {
		"studia l'avversario per un lungo momento misurato prima di impegnarsi, come un giudice che pesa un verdetto scolpito nella pietra.",
		"lascia che lo scontro arrivi, con la calma pesante di una pietra che si posa sul letto di un fiume.",
	},
	["band.b60.lowhp.01"] = {
		"Ah. Era da tempo che nessuno mi spingeva così in là. Bene.",
		"Allora fai sul serio. Te lo concedo. Adesso guarda.",
	},
	["band.b60.threat.01"] = {
		"Non combatto niente che non abbia prima pesato. Ho pesato anche te. Vattene.",
		"Guardami bene, poi decidi se vale la tua vita.",
	},
	["band.b60.victory.01"] = {
		"Come previsto. Senza offesa.",
		"E con questo è finita. Speravo almeno di imparare qualcosa.",
		"Finito. Qualcuno mi ricordi perché doveva essere pericoloso.",
	},
	["band.b60.victory.02"] = {
		"Vinto, e pesato. È costato poco. Lo conto lo stesso.",
		"Un altro scontro concluso. Non un trionfo: solo una cosa fatta bene da chi sapeva come farla.",
	},
	["battle.humanoid.w02.01"] = {
		"Almeno tu sai pensare. Vediamo se sai pensare in fretta.",
		"Mani, un'arma, un piano. Ce li ho anch'io. Avanti.",
	},
	["battle.humanoid.w02.02"] = {
		"guarda gli occhi del nemico più che la sua arma: un avversario che ragiona si tradisce prima con lo sguardo.",
		"regge lo sguardo dell'avversario e sposta il peso, leggendo la finta prima che arrivi.",
	},
	["lowhp.beast.w02.01"] = {
		"arretra barcollando davanti alla bestia, sanguinante, e pianta di nuovo i piedi per pura testardaggine.",
		"tiene l'arma fra sé e la bestia, col fiato corto, senza concederle il varco che continua a cercare girando.",
	},
	["lowhp.humanoid.w02.01"] = {
		"Bella mossa. Hai trovato il punto scoperto. Non abituartici.",
		"Questo è andato a segno. Goditelo: è l'ultimo.",
	},
	["victory.beast.w02.01"] = {
		"Riposa, ora. Hai lottato per la tua vita, e io per la mia.",
		"Stai giù. Facevi solo quello che fanno le bestie.",
	},
	["victory.humanoid.w02.01"] = {
		"Aveva un volto, una voce, forse qualcuno che l'aspettava. Non mi ci soffermo. Non a lungo, almeno.",
		"Finita. Con le bestie è fame contro fame; questa era scelta contro scelta, e pesa in un altro modo.",
		"È finita. Chiunque fosse, questa storia non la racconterà. Io la racconterò com'è andata, se mai la racconterò.",
	},
	["battle.w04.001"] = {
		"Va bene, va bene. Un posto per te lo trovo.",
		"Possibile che non si arrivi mai da nessuna parte senza un intoppo?",
		"E va bene. Un'altra cosa che oggi non avevo previsto.",
	},
	["battle.w04.002"] = {
		"Il primo scambio dice tutto. Guarda, non tirare a indovinare.",
		"Lascia che arrivi il primo colpo. Il resto me lo dirà lui.",
	},
	["battle.w04.003"] = {
		"sposta il peso, scioglie le spalle e aspetta la prima mossa.",
		"si sposta di mezzo passo di lato, in cerca di un appoggio più saldo.",
		"lascia che il mondo si restringa al nemico e ai pochi passi che li separano.",
	},
	["battle.w04.004"] = {
		"Volevi la mia attenzione? Ce l'hai tutta.",
		"Avanti, allora. Adesso mi hai {g:tutto|tutta} per te.",
		"Guarda un po'. Adesso sei l'unico pensiero che ho.",
	},
	["battle.w04.005"] = {
		"Possibile che in questo mondo non ci si possa sedere cinque minuti?",
		"Avevo dei programmi. Piccoli. Uno era sedermi.",
	},
	["battle.w04.006"] = {
		"Uno dei due se ne andrà. Non c'è scritto da nessuna parte quale.",
		"Finiscono sempre così: uno su e uno giù. Preferirei stare dalla parte di sopra.",
	},
	["battle.w04.007"] = {
		"Proprio dobbiamo? ...Sì, mi sa di sì.",
		"Ti chiederei di ripensarci, ma non mi sembri il tipo.",
		"C'è speranza di lasciar perdere tutti e due? No? Immaginavo.",
	},
	["battle.w04.008"] = {
		"Cose più dure di te hanno provato a consumarmi. Eccomi qua.",
		"Ho preso martellate da cose peggiori. Il filo ne è uscito più tagliente.",
	},
	["battle.w04.009"] = {
		"Il cuore batte come un tamburo. Bene: vuol dire che sono {g:attento|attenta}.",
		"Ecco la paura, puntuale. Che si metta in fondo e stia zitta.",
		"È venuta anche la paura. Può guardare, ma non ha diritto di parola.",
	},
	["battle.w04.010"] = {
		"Facciamola breve. Ho un posto dove andare.",
		"Una cosa rapida e pulita, se non ti dispiace. Mi aspettano altrove.",
	},
	["battle.w04.011"] = {
		"si lascia sfuggire un verso breve e duro tra i denti stretti, e si butta avanti.",
		"accoglie il nemico con un grugnito e un passo avanti, non indietro.",
	},
	["battle.w04.012"] = {
		"Ho una strada da fare, e tu ci sei in mezzo.",
		"Stai tra me e dove sono {g:diretto|diretta}. Tutta qui, la lite.",
		"Niente di personale. Sei solo d'intralcio.",
	},
	["battle.w04.013"] = {
		"Splendido. Proprio quello che mi serviva: altro moto.",
		"Un'altra zuffa. Le ginocchia ringraziano sentitamente.",
	},
	["battle.w04.014"] = {
		"Qualunque cosa tu sia, stai per scoprire che cosa sono io.",
		"Non mi serve sapere cosa sei. Tra poco saprai tu cosa sono io.",
	},
	["battle.w04.015"] = {
		"Spalle giù. Mani sciolte finché non servono. Poi tutt'altro che sciolte.",
		"Peso in avanti, ma non troppo. Non sbilanciarti ancora.",
		"Presa morbida, occhi aperti, passi corti. Come sempre.",
	},
	["battle.w04.016"] = {
		"Ti avverto: non combatto per fare bella figura, combatto fino in fondo.",
		"Gli scontri leali sono per chi ha tempo da perdere.",
	},
	["battle.w04.017"] = {
		"Sei più debole di me e vieni avanti lo stesso. Questo te lo concedo, {target}.",
		"Coraggio ne hai, almeno. Più di tanti della tua stazza.",
		"Sai già come va a finire, {target}. Apprezzo comunque la visita.",
	},
	["lowhp.w04.001"] = {
		"Questa lascerà il segno. Anzi, parecchi.",
		"Questa l'ho sentita. Non posso dire che mi sia piaciuta.",
		"Ahi. Ahi. Va bene. Ricevuto.",
	},
	["lowhp.w04.002"] = {
		"Pensa. Cosa mi resta? Cosa non ho ancora provato?",
		"Le possibilità. Contale. In fretta.",
		"Bende, pozioni, gambe. Qualcosa. Scegli qualcosa.",
	},
	["lowhp.w04.003"] = {
		"sbatte forte le palpebre, due volte, come per rimettere a fuoco il mondo.",
		"fa un passo indietro che non aveva nessuna intenzione di fare.",
		"si preme una mano sul fianco; la ritira bagnata.",
	},
	["lowhp.w04.004"] = {
		"Dovevi finire il lavoro. Adesso sì che mi arrabbio.",
		"Quella era la tua occasione, e l'hai sprecata.",
		"Grosso errore, lasciarmi in piedi. Adesso capirai perché.",
	},
	["lowhp.w04.005"] = {
		"Se è la fine, è più silenziosa di come la immaginavo.",
		"Forse è la fine. È più piccola di come la raccontano.",
		"Mani fredde. Orecchie che fischiano. So dove porta, e io non ci vado.",
	},
	["lowhp.w04.006"] = {
		"Ne ho ancora, dentro. Andiamo a cercarlo.",
		"In fondo al barile resta sempre qualcosa.",
		"Scava più a fondo. Laggiù c'è sempre un altro po'.",
	},
	["lowhp.w04.007"] = {
		"Rallenta. Il panico consuma più in fretta di qualsiasi ferita.",
		"Calma. La fretta ammazza prima ancora del nemico.",
		"Piano. Una testa lucida vale più delle forze che restano.",
	},
	["lowhp.w04.008"] = {
		"Ah. La parte della storia in cui le cose si mettono male. Questa la conosco.",
		"Non scrivete ancora la fine. Ci sono ancora dentro.",
	},
	["lowhp.w04.009"] = {
		"stringe la presa che scivola e rialza la guardia, un po' più in basso di prima.",
		"prende un respiro spezzato e pianta i piedi come se mettesse radici.",
	},
	["lowhp.w04.010"] = {
		"Ci sono ancora cose che voglio fare. Questa non è nell'elenco.",
		"Troppe cose lasciate a metà. Non ho ancora finito.",
		"Non qui. Ho conti in sospeso, e mi aspettano.",
	},
	["threat.w04.001"] = {
		"Oggi sono di buon umore. Sarebbe un peccato sprecarlo con te.",
		"Non rovinarmi la giornata. Mi dispiacerebbe dover ricambiare.",
		"Finora oggi sono {g:stato|stata} gentile. Non essere tu a farmi smettere.",
	},
	["threat.w04.002"] = {
		"Conta i passi da qui in avanti. Ognuno è in prestito.",
		"Puoi ancora andartene. Tra un momento non potrai più.",
		"Vattene adesso, e te ne vai sulle tue gambe.",
	},
	["victory.w04.001"] = {
		"Finita. Il silenzio mi fischia nelle orecchie.",
		"Fatto. Il mondo torna a pezzi: un rumore qui, un odore là.",
	},
	["victory.w04.002"] = {
		"Mi piacerebbe dire che era tutto previsto. Mi piacerebbe davvero.",
		"Tutto secondo i piani. Un piano c'era, giuro. Più o meno.",
		"Non chiedetemi come. Non saprei proprio dirlo.",
	},
	["victory.w04.003"] = {
		"Una faccenda sistemata. Ne ho una lunga lista.",
		"Sistemata, questa. Avanti con la prossima voce dell'elenco.",
	},
	["victory.w04.004"] = {
		"si guarda le mani, prima una e poi l'altra, come per contare le dita.",
		"fa ruotare le spalle finché qualcosa non scricchiola, poi sospira a lungo.",
		"ripulisce l'arma con gesti lenti e accurati.",
	},
	["victory.w04.005"] = {
		"Un giorno toccherà a me, su un altro terreno, per un'altra mano. Non oggi.",
		"Prima o poi andrà al contrario. Questo è il patto, e oggi ha retto.",
	},
	["victory.w04.006"] = {
		"Bene. Adesso mi spetta una sosta e un sorso d'acqua.",
		"Una sosta e un bel sorso, come minimo, me li sono guadagnati.",
	},
	["victory.w04.007"] = {
		"Troppo {g:lento|lenta} al secondo passo. Ricordatelo per la prossima.",
		"Vinto, ma alla buona. Ho abbassato la guardia due volte.",
		"Buon risultato, lavoro scadente. Il gioco di gambe va sistemato.",
	},
	["victory.w04.008"] = {
		"Segnatelo. Un altro sul conto.",
		"Un'altra tacca. Il manico comincia a essere affollato.",
		"Uno in più. Ho smesso di contarli da un pezzo, ma comunque.",
	},
	["victory.w04.009"] = {
		"Spero sia stato rapido. Ne sono quasi {g:sicuro|sicura}.",
		"Rapido, almeno. Di questo mi sono {g:assicurato|assicurata}.",
	},
	["victory.w04.010"] = {
		"lascia ricadere le braccia e resta lì un istante, a fare l'inventario di sé.",
		"scioglie finalmente la guardia, un'articolazione dopo l'altra.",
	},
	["victory.w04.011"] = {
		"Dovevi restartene a casa, ovunque fosse.",
		"La prossima volta resta a casa. Ah. Già.",
	},
	["victory.w04.012"] = {
		"Diventa più facile. Non so se mi piace che sia così.",
		"Ogni volta più facile. Dovrebbe turbarmi più di quanto faccia.",
	},
	["victory.w04.013"] = {
		"Una minaccia in meno sulla strada di chi verrà dopo.",
		"Chi passerà dopo di me camminerà un po' più tranquillo.",
	},
	["victory.w04.014"] = {
		"Ah! E mi stavo appena scaldando.",
		"Finito? Avevo appena trovato il ritmo.",
		"Ah! Non mi è servito nemmeno riprendere fiato.",
	},
	["victory.w04.015"] = {
		"Il mondo va avanti come se niente fosse. Per lui, niente è stato.",
		"Tutto intorno continua, indifferente. Visto da fuori, uno scontro è una cosa minuscola.",
	},
	["victory.w04.016"] = {
		"Hai lottato duro. Conta qualcosa, anche adesso.",
		"Nessuna vergogna. Hai resistito più di tanti.",
		"Fino all'ultimo. Questo lo rispetto, qualunque cosa tu fossi.",
	},
	["victory.w04.017"] = {
		"Il corpo tiene il conto e lo presenta dopo. Domani, probabilmente.",
		"Farà tutto male più tardi. Il più tardi può aspettare il suo turno.",
	},
	["race.dwarf.battle.w08.001"] = {
		"Ironforge resiste! Vieni ad ammaccarla, se ci riesci!",
		"Per le sale sotto la montagna! In guardia!",
		"Testardaggine di Dun Morogh, dritta verso di te!",
	},
	["race.dwarf.battle.w08.002"] = {
		"Bene, facciamola finita. Da qualche parte c'è una birra che si scalda col mio nome sopra.",
		"Svelti, eh. Un boccale perfettamente buono mi sta aspettando.",
		"Facciamo presto. La mescita non tiene un posto per sempre, nemmeno a un nano.",
	},
	["race.dwarf.battle.w08.003"] = {
		"Baricentro basso, piedi pesanti. Che scendano alla mia altezza e vediamo se gli piace.",
		"La gente bassa combatte da sotto il colpo. Stare giù, e non schiodarsi.",
	},
	["race.dwarf.battle.w08.004"] = {
		"pianta gli stivali, rotea una volta le spalle e affronta quel che arriva con la pazienza della roccia viva.",
		"si curva in avanti con le spalle e tutto il peso protesi, come un macigno che ha deciso di non spostarsi.",
	},
	["race.dwarf.battle.w08.005"] = {
		"Battersi con un nano? È un errore che si fa una volta sola.",
		"Hai sbagliato montagna da scalare, amico. Proprio sbagliato.",
		"Fra tutti quelli con cui attaccar briga, hai scelto chi ha la forma di un barile. Pessima scelta.",
	},
	["race.dwarf.battle.w08.006"] = {
		"Fiato profondo e basso, come insegnano le guardie di montagna. Il resto viene da sé.",
		"Le guardie di Dun Morogh dicono che uno scontro si vince prima nei piedi che altrove. I piedi, allora.",
	},
	["race.dwarf.battle.w08.007"] = {
		"Avanti, prova a colpire chi sta più in basso. Lo fanno tutti. Se ne pentono tutti.",
		"Mira in basso, se sei capace. Sono pochi quelli che lo sono.",
		"Bassi, noi nani? Certo. Leggeri? Prova a sollevarmi.",
	},
	["race.dwarf.battle.w08.008"] = {
		"Ho la tenuta della Stonewrought Dam! Vieni a spingere!",
		"La diga di Loch Modan trattiene un lago intero. Io posso trattenere te per un paio di minuti.",
	},
	["race.dwarf.battle.w08.009"] = {
		"Qualunque cosa tu sia, hai le maniere di un Dark Iron. Rimediamo subito.",
		"Maleducazione da Dark Iron e il doppio della bruttezza. Fatti sotto.",
	},
	["race.dwarf.battle.w08.010"] = {
		"dà uno strattone {g:alla barba|alle trecce} e si mette in guardia.",
		"sputa di lato, serra la mascella e ci si butta, come un nano nell'acqua fredda: in fretta, prima di ripensarci.",
	},
	["race.dwarf.battle.w08.011"] = {
		"Mi ha fatto peggio un dopo-sbornia della Thunderbrew. Fatti sotto!",
		"Avanti. Sono {g:sopravvissuto|sopravvissuta} alla cucina dei nani: tu non sei niente.",
	},
	["race.dwarf.battle.w08.012"] = {
		"La montagna c'era prima del primo colpo di ogni guerra e ci sarà dopo questo. Somigliale un poco.",
		"La pietra non ha fretta e non trasale. Nemmeno io, per il prossimo minuto.",
		"Lentezza della pietra: non pigrizia, solo certezza.",
	},
	["race.dwarf.battle.w08.013"] = {
		"Racconterai ai tuoi che hai incontrato un nano. Se avrai la fortuna di raccontarlo a qualcuno.",
		"È ora di scoprire di che pasta è fatta la gente della montagna!",
	},
	["race.dwarf.battle.w08.014"] = {
		"lancia una risata breve e profonda, di quelle che rimbombano sulle pareti delle caverne, e si fa avanti.",
		"sogghigna e va incontro allo scontro a testa bassa, con tutta la testardaggine che ha nelle spalle.",
	},
	["race.dwarf.battle.w08.015"] = {
		"E va bene. Cominciavo ad annoiarmi, e un nano annoiato finisce nei guai comunque.",
		"Bene. Le mani in ozio rendono un nano scontroso, e questo le terrà occupate.",
	},
	["race.dwarf.battle.w08.016"] = {
		"Magni custodisce il trono; noialtri custodiamo le strade. Ecco il mio tratto.",
		"Sotto la montagna c'è pace perché qualcuno se la guadagna altrove. Tocca a me.",
	},
	["race.dwarf.battle.w08.017"] = {
		"In salita o giù per un buco, un nano combatte sempre allo stesso modo: in avanti!",
		"Testa bassa, spalle strette, e attraverso! Così vanno i nani!",
	},
	["race.dwarf.battle.w08.018"] = {
		"Le mani dei nani sono fatte per i lavori pesanti. Questo è solo un lavoro pesante che risponde ai colpi.",
		"Come scavare una galleria: un passo, poi l'altro, e non pensare a quanta roccia resta.",
	},
	["race.dwarf.battle.w08.019"] = {
		"ringhia qualcosa nell'antica lingua dei nani che nessuno qui intorno vorrebbe sentirsi tradurre.",
		"borbotta un giuramento nanico a denti stretti, basso e cupo come una frana lontana sottoterra.",
	},
	["race.dwarf.battle.w08.020"] = {
		"Non muoverti, voglio vedere se l'Explorers' League ti ha nel suo catalogo.",
		"Faresti un bel pezzo da esposizione nella Hall of Explorers. Imbottito di paglia, s'intende.",
	},
	["race.dwarf.battle.w08.021"] = {
		"Ho la pazienza del granito e il caratteraccio di una forgia. Le conoscerai entrambe.",
		"Pazienza di granito, carattere da fornace. Scegli quale vuoi incontrare per prima.",
	},
	["race.dwarf.lowhp.w08.001"] = {
		"Le travi gemono, ma il tetto regge. Un minatore sa la differenza tra messo male e finito.",
		"Una galleria puntellata scricchiola a lungo prima di crollare. Ora scricchiola. Non è crollata.",
	},
	["race.dwarf.lowhp.w08.002"] = {
		"Tutto qui quello che sai fare? Sono ancora in piedi, ed è tutto il ragionamento di un nano!",
		"Sanguino, d'accordo, ma resto in piedi! La gente di Ironforge non si ribalta così facilmente!",
	},
	["race.dwarf.lowhp.w08.003"] = {
		"barcolla, si ferma su un tallone ostinato e resta in piedi per pura testardaggine nanica.",
		"arretra barcollando di mezzo passo, poi si pianta e non cede un solo pollice in più.",
	},
	["race.dwarf.lowhp.w08.004"] = {
		"Non qui, non così. La birra di Kharanos non si beve da sola.",
		"Non muoio prima di aver assaggiato la prossima cotta della Thunderbrew. Fuori discussione.",
		"Morire adesso vorrebbe dire perdermi il prossimo giro a Ironforge. Inaccettabile.",
	},
	["race.dwarf.lowhp.w08.005"] = {
		"Ahi! Questo ha passato la pietra e ha colpito {g:il nano|la nana} là sotto.",
		"Questo è passato oltre il granito. Adesso mi hai fatto arrabbiare.",
	},
	["race.dwarf.lowhp.w08.006"] = {
		"Se la montagna vuole riprendermi, così sia. Ma dovrà venirmi a prendere; da me non ci entro.",
		"Da pietra a pietra, dicono i vecchi minatori. Non ancora. Non stavolta.",
	},
	["race.dwarf.lowhp.w08.007"] = {
		"Dun Morogh ce l'ho dentro più a fondo di così! Riprova!",
		"Dovrai scavare parecchio più a fondo per trovare il fondo di un nano!",
	},
	["race.dwarf.lowhp.w08.008"] = {
		"sputa rosso e scopre i denti, con l'aria di chi ha la pazienza messa a dura prova.",
		"preme una mano tozza sulla ferita e ringhia, basso e lungo, come pietra che macina pietra.",
	},
	["race.dwarf.threat.w08.001"] = {
		"Vattene. Ho la miccia corta e la memoria lunga, e non ti piacerà nessuna delle due.",
		"Sparisci, prima che decida che staresti meglio come fermaporta a Ironforge.",
		"I nani non dimenticano niente e perdonano piano. Vattene adesso e facciamo finta di niente.",
	},
	["race.dwarf.threat.w08.002"] = {
		"Ho le gambe corte, il carattere storto e niente da bere da ore. Pensa bene a cosa succede adesso.",
		"Guardami: costruzione bassa, spessa, e fatta per continuare a picchiare. Ancora voglia?",
	},
	["race.dwarf.victory.w08.001"] = {
		"Finita. Lascia posare la polvere prima di fidarti di nuovo del terreno.",
		"Finito. Aspetta un respiro, come dopo una carica in miniera, e solo allora guardati intorno.",
	},
	["race.dwarf.victory.w08.002"] = {
		"Ah! Segnatela. Io tengo il conto, anche se nessun altro lo fa.",
		"Un'altra nel mio conto. La arrotonderò quando la racconto, si capisce.",
	},
	["race.dwarf.victory.w08.003"] = {
		"Ecco cosa succede a mettere alla prova la pietra dei nani!",
		"Dillo al resto dei tuoi: i nani sono in giro, e di cattivo umore.",
	},
	["race.dwarf.victory.w08.004"] = {
		"si asciuga la fronte col dorso dell'avambraccio ed emette un grugnito, che è tutto il suo giudizio sulla faccenda.",
		"gonfia le guance e soffia, controlla che tutto sia ancora al suo posto, e annuisce.",
	},
	["race.dwarf.victory.w08.005"] = {
		"Mi è venuta fame. Un nano combatte a pancia vuota una volta sola, e mai per scelta.",
		"Bene. Ora, dov'è la cosa più simile a un pasto qui vicino? Combattere mette fame alla gente bassa.",
	},
	["race.dwarf.victory.w08.006"] = {
		"Un altro che impara di cosa è fatta Ironforge.",
		"Questa è la risposta della montagna. È sempre la stessa.",
		"Dovevi prendertela con uno gnomo. I robusti siamo noi.",
	},
	["race.dwarf.victory.w08.007"] = {
		"A terra. Nessuna gioia, a dire il vero: solo la semplice soddisfazione di un lavoro che non andrà rifatto.",
		"Finita. Certi nani esultano. Altri controllano l'equipaggiamento e vanno avanti. Oggi sono del secondo tipo.",
	},
	["race.dwarf.victory.w08.008"] = {
		"Ah! Oppone più resistenza un barile chiuso a chiave.",
		"Tutto qui? Un giocattolo a molla di uno gnomo mi avrebbe dato più filo da torcere.",
	},
	["race.dwarf.victory.w08.009"] = {
		"si lascia andare a una risata tonante, di quelle che si sentirebbero da un capo all'altro delle forge di Ironforge.",
		"alza il pugno con un grido di gusto, di quelli che di solito si riservano a una botte appena spillata.",
	},
	["race.dwarf.victory.w08.010"] = {
		"Ogni scontro da cui esci in piedi è una lezione battuta a martello. Speriamo che questa abbia fatto presa.",
		"La forgia insegna col calore, la strada con scontri come questo. La lezione me la prendo.",
	},
	["race.dwarf.victory.w08.011"] = {
		"State tranquilli, chiunque stia guardando. Ci pensa {g:il nano|la nana}.",
		"Ecco. Non ditelo alle guardie di montagna che mi sono servite tutte e due le mani.",
	},
	["race.dwarf.victory.w08.012"] = {
		"Le nocche pulsano, la schiena protesta, e il terreno è ancora sotto i piedi. Un buon esito, per come vanno queste cose.",
		"Mi fa male ovunque a un nano possa far male, e sono più posti di quanto si pensi.",
	},
	["race.dwarf.victory.w08.013"] = {
		"Alzatene uno per Magni quando torno a casa! Questa gli sarebbe piaciuta.",
		"Ah! La barba di re Magni si rizzerebbe d'orgoglio, a vedere questa.",
	},
	["race.dwarf.victory.w08.014"] = {
		"Torna il silenzio. Nei luoghi profondi dopo è sempre così; il mondo di sopra ci mette un attimo a ricordarselo.",
		"Silenzio dopo lo scontro, come la quiete di una galleria quando muore l'ultima eco. Ci resto dentro un momento.",
	},
	["race.dwarf.victory.w08.015"] = {
		"Mah. Quasi non valeva la pena di scuotermi la polvere dagli stivali.",
		"Può bastare. Nemmeno un graffio da vantare al bancone.",
	},
	["race.dwarf.victory.w08.016"] = {
		"rimette in ordine con le dita grosse qualche {g:treccia della barba|treccia} scompigliata, come se l'ordine fosse l'ultimo passo di ogni scontro.",
		"si spazzola la polvere dalle maniche con colpi lenti e meticolosi, come un muratore che spolvera un blocco appena tagliato.",
	},
	["race.dwarf.victory.w08.017"] = {
		"Se mai l'Explorers' League dissotterrerà le ossa di questo scontro, scoprirà che a vincerlo {g:è stato un nano|è stata una nana}.",
		"Un rompicapo per gli studiosi dell'Explorers' League fra mille anni: chi ha vinto qui. {g:Un nano|Una nana}.",
	},
	["race.dwarf.victory.w08.018"] = {
		"A terra, e ci resta. Bene.",
		"Quello non si rialza più. Bene, si va avanti.",
		"Sistemato. Pietra sopra, come dicono i minatori, e avanti col prossimo.",
	},
	["race.dwarf.victory.w08.019"] = {
		"Quando torno a Ironforge non dirò niente di questa, e berrò il doppio. È così che un nano racconta una storia.",
		"Inutile vantarsi. A Ironforge me lo leggeranno in faccia, e da quanto in fretta svuoto il primo boccale.",
	},
	["race.human.battle.w08.001"] = {
		"Acciaio di Stormwind e testardaggine di Elwynn! Fatti sotto!",
		"Grinta di Elwynn! Vediamo quanto vali!",
	},
	["race.human.battle.w08.002"] = {
		"lancia un'occhiata alle proprie spalle, come la gente del regno ha imparato a fare dopo Lordaeron, poi affronta lo scontro.",
		"prende le misure all'avversario con uno sguardo rapido e guardingo, l'abitudine di un popolo che ha perso un regno e non intende perderne altri.",
	},
	["race.human.battle.w08.003"] = {
		"Naturale. L'unica volta che non cerco guai, sono i guai a cercare me. Molto umano da parte loro.",
		"Guai, di nuovo. Qualcuno nel regno deve tenere un elenco col mio nome in cima.",
	},
	["race.human.battle.w08.004"] = {
		"Per i campi di Elwynn e le campane di Stormwind!",
		"Per i campi arati e le campane che suonano! Avanti!",
		"Campane di Stormwind, questa è per voi!",
	},
	["race.human.battle.w08.005"] = {
		"Forza, allora! Noi umani non abbiamo tempo per avere paura!",
		"Vita breve, pazienza corta. Fatti sotto!",
		"Non viviamo abbastanza per tentennare. Arrivo!",
	},
	["race.human.battle.w08.006"] = {
		"Conta i respiri. Dentro per due, fuori per due, come insegnano alla milizia di Goldshire.",
		"Prima di tutto il respiro regolare. Ogni sergente della milizia di Elwynn dice così, e hanno ragione.",
	},
	["race.human.battle.w08.007"] = {
		"pianta i piedi come se il terreno sotto fosse un campo di Westfall da difendere.",
		"si piazza di traverso sul passaggio come un contadino fra il lupo e l'ovile.",
	},
	["race.human.battle.w08.008"] = {
		"Avevo altri programmi, sai. Programmi migliori. Con delle sedie.",
		"Ah, magnifico. E io che avevo quasi trovato un posto per sedermi.",
	},
	["race.human.battle.w08.009"] = {
		"Hai cercato briga con la gente più testarda a sud di Lordaeron!",
		"Umano sbagliato, momento sbagliato! A Stormwind ci crescono testardi come muli!",
	},
	["race.human.battle.w08.010"] = {
		"Mi tremano le mani. Va bene. I veterani della Seconda Guerra dicono che tremavano anche le loro, e hanno tenuto.",
		"Un tremito nelle dita. I vecchi soldati di Stormwind giurano che tutte le mani tremano prima del primo colpo. E allora tremino.",
	},
	["race.human.battle.w08.011"] = {
		"Lordaeron è caduta perché troppo pochi si sono alzati in piedi! Io mi alzo!",
		"Il nord è andato perduto perché mancava chi restasse saldo. Eccone uno!",
	},
	["race.human.battle.w08.012"] = {
		"si mette in guardia con il coraggio semplice e senza fronzoli di un popolo che ha rialzato la sua città dalle proprie ceneri.",
		"affronta la minaccia senza svolazzi, come gli umani hanno affrontato quasi tutto: con ostinazione, e a piedi.",
	},
	["race.human.battle.w08.013"] = {
		"Facciamo in fretta. Noi umani non viviamo abbastanza per le battaglie lente.",
		"Sbrighiamoci, che dici? Qualcuno qui ha una vita sola.",
	},
	["race.human.battle.w08.014"] = {
		"Stromgarde resiste ancora sugli altipiani contro tutto quel che arriva, dicono i soldati. Io posso resistere a questo.",
		"Se Stromgarde riesce a tenere chiuse le porte contro troll, ogre e peggio, io riesco a restare in piedi contro questo.",
	},
	["race.human.battle.w08.015"] = {
		"Via dalla strada! Queste strade le pagano le tasse del regno, e tu non sei nell'elenco!",
		"Togliti di mezzo! Su questa strada ci passa gente onesta!",
	},
	["race.human.battle.w08.016"] = {
		"prende fiato e si fa avanti, {g:pratico|pratica} davanti allo scontro come un contadino davanti a una volpe nel pollaio.",
		"affronta lo scontro con l'efficienza svelta e scontenta di chi deve sturare un canale intasato.",
	},
	["race.human.battle.w08.017"] = {
		"Luce misericordiosa, ci siamo!",
		"Che la Luce mi tenga tutto intero! Avanti!",
	},
	["race.human.battle.w08.018"] = {
		"Guarda i piedi, non gli occhi. Lo sa qualunque attaccabrighe del Trade District.",
		"Occhi sulle spalle: sono le spalle a muoversi per prime. Gli attaccabrighe delle taverne di Stormwind lo imparano prima dell'alfabeto.",
	},
	["race.human.battle.w08.019"] = {
		"Gli orchi hanno bruciato Stormwind, una volta. L'abbiamo ricostruita più alta. Fai pure del tuo peggio!",
		"Il genere umano è finito a terra altre volte, e si è sempre rialzato. Tocca a te impararlo!",
	},
	["race.human.battle.w08.020"] = {
		"Una vita breve, ed eccomi a spenderne un pezzo per questo. Be'. Che almeno valga.",
		"Un cuore umano ha solo un certo numero di battiti. Qualcuno anche per questo, allora.",
	},
	["race.human.battle.w08.021"] = {
		"sospira come un contadino di Westfall che trova di nuovo lo steccato a terra, e si mette all'opera.",
		"borbotta qualcosa di irripetibile sullo stato delle strade di questi tempi, e si volta ad affrontare il guaio.",
	},
	["race.human.battle.w08.022"] = {
		"Redridge ha tenuto, Westfall tiene, e terrò anch'io!",
		"Chiedi a Redridge come cedono terreno gli umani. Non lo cedono!",
	},
	["race.human.battle.w08.023"] = {
		"Chissà dove c'è gente che vive la sua vita senza pensare a scontri come questo. Bene. È proprio a questo che servono.",
		"Pane nel forno, bambini che litigano, qualche impiegato di Stormwind che sbadiglia. Tutto continua mentre faccio questo. Per questo lo faccio.",
	},
	["race.human.lowhp.w08.001"] = {
		"si asciuga il sangue dagli occhi con la manica e continua, troppo {g:umano|umana} per sapere quando smettere.",
		"sputa, si rimette in equilibrio e resta in piedi con nient'altro che ostinazione e il pensiero di casa.",
	},
	["race.human.lowhp.w08.002"] = {
		"Non ancora. Le campane non hanno suonato per me, e vorrei che continuasse così.",
		"No. Nessuno suonerà una campana a morto per me. Non qui, non così.",
	},
	["race.human.lowhp.w08.003"] = {
		"Ti informo che pago le tasse a Stormwind!",
		"Non si tratta così un suddito del regno!",
		"Qualcuno scriva al reggente di questa faccenda!",
	},
	["race.human.lowhp.w08.004"] = {
		"Respira. Il corpo umano è testardo, se glielo chiedi come si deve. Glielo sto chiedendo.",
		"Dentro e fuori. Questo corpo mi ha portato fin qui; può portarmi attraverso un altro brutto minuto.",
	},
	["race.human.lowhp.w08.005"] = {
		"barcolla, si riprende e continua, con la pazienza ostinata della gente dei campi alla fine di una cattiva stagione.",
		"vacilla, serra la mascella e si rifiuta di cadere, come un palo di steccato di Elwynn dopo una tempesta che si è portata via il fienile.",
	},
	["race.human.lowhp.w08.006"] = {
		"Luce santa, proprio adesso no!",
		"Luce, dammi un altro minuto! Uno solo!",
	},
	["race.human.lowhp.w08.007"] = {
		"Elwynn è verde e lontana. Vorrei rivederla. Quindi, in piedi.",
		"La locanda di Goldshire, i canali di Stormwind, le campane. Non ho finito con nessuno di loro. Tieni duro.",
	},
	["race.human.lowhp.w08.008"] = {
		"Sanguinante sì, {g:battuto|battuta} no. Chiedi a Redridge quanto siamo testardi.",
		"Sanguinare non vuol dire perdere! Noi umani siamo troppo cocciuti per capire la differenza!",
	},
	["race.human.lowhp.w08.009"] = {
		"Troppo breve. Una vita umana è troppo breve per finire in un fosso per questo. Muoviti.",
		"Settant'anni, se ti va bene, e non li cedo per questo. Alzati.",
	},
	["race.human.threat.w08.001"] = {
		"Vattene. Noi umani abbiamo vite brevi e pazienza ancora più breve.",
		"La mia vita è corta, e la mia pazienza di più. Sparisci.",
		"Noi umani non abbiamo anni da sprecare con gli sciocchi. Fuori dai piedi.",
	},
	["race.human.threat.w08.002"] = {
		"Gli orchi hanno raso al suolo Stormwind, e noi l'abbiamo rifatta. Credi di farmi paura?",
		"La nostra città è già stata cenere. Qualunque cosa tu sia, sei un fuoco più piccolo di quello.",
	},
	["race.human.victory.w08.001"] = {
		"Ah! Aspetta che lo sappiano a Goldshire.",
		"Questa finisce nella pila di storie del Lion's Pride.",
		"Qualcuno mi ricordi di raccontarla bene, senza le parti noiose.",
	},
	["race.human.victory.w08.002"] = {
		"Un altro scontro alle spalle. Una vita umana è una breve fila di questi, e io voglio arrivare in fondo alla fila.",
		"Finita. Abbiamo solo un certo numero di anni; preferirei non passare sottoterra quelli che mi restano.",
	},
	["race.human.victory.w08.003"] = {
		"si raddrizza piano, una mano premuta sulle reni, {g:stanco|stanca} come un bracciante alla fine del campo lungo.",
		"butta fuori il fiato e scuote le mani per scacciarne il bruciore, contento e sfinito senza nasconderlo.",
	},
	["race.human.victory.w08.004"] = {
		"Uno in più per il regno. Stormwind può dormire un po' più tranquilla.",
		"La strada del regno resta sgombra ancora per un po'.",
	},
	["race.human.victory.w08.005"] = {
		"Vinto. Se gli impiegati di Stormwind pagassero a nemico, io sarei {g:ricco|ricca} e loro rovinati.",
		"Ecco. Qualcuno dovrebbe pagare una taglia per questo. Quel qualcuno non paga mai.",
	},
	["race.human.victory.w08.006"] = {
		"Bene. Si torna a essere cittadini rispettosi della legge del regno.",
		"E con questo è finita. Dunque, dov'ero {g:rimasto|rimasta}?",
	},
	["race.human.victory.w08.007"] = {
		"Vincere sa di meno, da quando c'è stata Lordaeron. Un regno intero vinceva scontri come questo, e la pestilenza se li è presi lo stesso.",
		"Il nord ha vinto mille piccole battaglie e ha perso la guerra. Questa me la prendo, e cerco di non leggerci troppo.",
	},
	["race.human.victory.w08.008"] = {
		"resta un momento sul campo, con la sagoma ostinata di un popolo che è già stato battuto, ma mai per sempre.",
		"resta immobile mentre torna il silenzio, {g:dritto|dritta} come stanno gli umani dopo averla scampata: un po' tremante, per niente {g:piegato|piegata}.",
	},
	["race.human.victory.w08.009"] = {
		"Niente male per una creatura che ha appena settant'anni in corpo!",
		"Niente male, eh? E gli elfi dicono che abbiamo troppa fretta.",
	},
	["race.human.victory.w08.010"] = {
		"Grazie alla Luce, o alla fortuna, o all'istruttore. Uno dei tre se lo merita.",
		"Lassù qualcuno stava dalla mia parte. In Cattedrale direbbero la Luce; io dico solo grazie.",
	},
	["race.human.victory.w08.011"] = {
		"La prossima volta meno assalti e più cervello. Noi umani impariamo sbagliando prima: è tradizione.",
		"Poteva andare più pulita. Gli umani sono un popolo da secondo tentativo; la prossima la faccio meglio.",
	},
	["race.human.victory.w08.012"] = {
		"A terra, e ci resta! Così si fa nel regno!",
		"Ah! {g:Cresciuto|Cresciuta} a Elwynn, e {g:testardo|testarda} come si deve!",
	},
	["race.human.victory.w08.013"] = {
		"si guarda intorno per vedere se qualcun altro ha bisogno di una mano, un riflesso umano come respirare.",
		"controlla se qualcuno lì vicino si è fatto male, prima di pensare ai propri graffi.",
	},
	["race.human.victory.w08.014"] = {
		"I boschi di Elwynn sono lontani, ma ogni scontro come questo tiene aperta la strada per arrivarci.",
		"Un altro pezzetto di mondo è tornato quieto. Le mura di Stormwind sono solo l'inizio di ciò che va difeso.",
	},
	["race.human.victory.w08.015"] = {
		"Tutto libero! Be', questo pezzo è libero. Il resto del regno tocca a qualcun altro.",
		"Questo angolo è sistemato. Qualcuno avverta il resto del regno che sto arrivando.",
	},
	["race.human.victory.w08.016"] = {
		"Ho le braccia come se avessi trasportato pietre per le mura di Stormwind. Ne valeva la pena.",
		"Ogni muscolo mi fa male come dopo una settimana di fienagione. Prezzo modesto.",
	},
	["race.human.victory.w08.017"] = {
		"Guarda un po'. Nemmeno il reggente avrebbe saputo fare di meglio. Probabilmente non ci sarebbe riuscito affatto.",
		"Qualcuno avverta la corte. Anzi no: troverebbero il modo di tassarlo.",
	},
	["race.human.victory.w08.018"] = {
		"si porta due dita alla fronte, il gesto di ringraziamento rapido e quasi distratto che si usa nei villaggi di Elwynn.",
		"china il capo per un istante, nel modo breve in cui gli umani ringraziano dopo averla scampata.",
	},
	["race.human.victory.w08.019"] = {
		"Quelli che persero Stormwind contro gli orchi combatterono duro quanto me adesso. A volte vincere è solo fortuna con un cappotto migliore.",
		"Combattenti migliori di me sono caduti alle porte di Stormwind, un tempo. Non fingerò che sia stata tutta bravura.",
	},
	["race.human.victory.w08.020"] = {
		"È così che il regno tiene aperte le sue strade: un umano testardo dopo l'altro.",
		"Il regno si regge sulla gente che si rifiuta di cadere. Stavolta mi sono {g:rifiutato|rifiutata}.",
	},
	["race.nightelf.battle.w08.001"] = {
		"Da diecimila anni il mio popolo veglia sulle foreste. Vieni a mettere alla prova la guardia.",
		"Ashenvale ricorda ogni intruso. Anch'io.",
		"Un saluto da Darnassus, consegnato a mano.",
	},
	["race.nightelf.battle.w08.002"] = {
		"Silenzio, allora. Un kaldorei combatte a bocca chiusa.",
		"Nessun grido di guerra. Il mio popolo ha imparato da tempo che i chiassosi muoiono per primi.",
		"Silenzio. Lasciamo parlare i colpi: i miei si esprimono meglio.",
	},
	["race.nightelf.battle.w08.003"] = {
		"Le Sentinelle dicono che ogni guerra, da quando il mondo andò in pezzi, sia sempre la stessa guerra con una faccia nuova. Vediamo questa.",
		"Il mio popolo combatte, in una forma o nell'altra, da prima che il mare inghiottisse il Pozzo. Eccone un'altra forma.",
	},
	["race.nightelf.battle.w08.004"] = {
		"scivola in una posizione bassa, {g:silenzioso|silenziosa} e {g:pronto|pronta} come un respiro trattenuto.",
		"socchiude gli occhi luminosi, e il volto si fa immobile come una pozza nel bosco.",
	},
	["race.nightelf.battle.w08.005"] = {
		"Per le Sentinelle che non sono tornate a casa!",
		"Le radici di Teldrassil vanno in profondità, e le mie pure!",
		"Per ogni bosco che hai calpestato!",
	},
	["race.nightelf.battle.w08.006"] = {
		"Respira come respira la foresta: lento, profondo, senza paura. Poi muoviti.",
		"Piedi leggeri, respiro basso, occhi sulle spalle. Il resto viene da sé.",
		"Basso e leggero, come la foglia prima di cadere. Adesso.",
	},
	["race.nightelf.battle.w08.007"] = {
		"Hai scelto di litigare con un popolo che si allena da diecimila anni. Coraggioso.",
		"Fra tanti da sfidare, hai scelto chi ha una memoria lunghissima. Mi ricorderò anche di te.",
		"Una vita breve dovrebbe insegnare la prudenza. A te non l'ha insegnata.",
	},
	["race.nightelf.battle.w08.008"] = {
		"Fatti da parte o mettiti contro di me. La foresta non concede una terza scelta.",
		"Ti darò la stessa risposta che la foresta dà a ogni intruso, prima o poi.",
	},
	["race.nightelf.battle.w08.009"] = {
		"fa ruotare le spalle una volta, le lunghe orecchie piegate all'indietro come quelle di un nightsaber.",
		"si erge in tutta la sua altezza di kaldorei e lascia che il nemico se la guardi bene.",
	},
	["race.nightelf.battle.w08.010"] = {
		"Qualunque cosa tu sia, non sei la prima minaccia per il mio popolo, e non sarai la peggiore.",
		"Demoni, draghi, il Flagello sull'Hyjal... tu sei un capitolo breve. Chiudiamolo.",
	},
	["race.nightelf.battle.w08.011"] = {
		"Demone. Il mio popolo uccide quelli della tua specie da quando il Pozzo dell'Eternità è andato perduto.",
		"Ancora la Legione. Diecimila anni, e non avete ancora imparato a starci lontani.",
	},
	["race.nightelf.battle.w08.012"] = {
		"Il Flagello è arrivato anche sull'Hyjal. Non se n'è andato come era venuto.",
		"Cosa morta. Le foreste del mio popolo non hanno posto per te: lascia che ti accompagni alla porta.",
	},
	["race.nightelf.battle.w08.013"] = {
		"Ah, compagnia. Cominciava a esserci quasi troppo silenzio.",
		"Finalmente qualcosa che non è un albero. Non che gli alberi mi dispiacciano.",
		"Bene, una visita. Stavo quasi per mettermi a parlare col muschio.",
	},
	["race.nightelf.battle.w08.014"] = {
		"Elune, non ti chiedo la vittoria. Solo occhi limpidi e un cuore saldo.",
		"Madre Luna, tienimi lo sguardo acuto. Al resto penso io.",
	},
	["race.nightelf.battle.w08.015"] = {
		"La luce della luna dalla mia parte e il buio alle spalle. Avresti dovuto aspettare il giorno.",
		"Questa è la nostra ora, l'ora dei kaldorei. Hai scelto il momento sbagliato.",
	},
	["race.nightelf.battle.w08.016"] = {
		"E va bene. In fretta, allora. Preferirei spendere i miei anni in qualsiasi altra cosa.",
		"Non era quello che avevo in mente per quest'ora, ma la foresta insegna a prendere ciò che viene.",
		"Se deve succedere, che succeda in modo pulito. Il mio popolo ha poca pazienza per il disordine.",
	},
	["race.nightelf.battle.w08.017"] = {
		"lascia uscire un sibilo basso fra i denti, il suono di una macchia di Darkshore con qualcosa a caccia là dentro.",
		"fa un passo leggero di lato, come si muove una Sentinella lungo un sentiero sotto la luna, e aspetta il primo errore.",
	},
	["race.nightelf.battle.w08.018"] = {
		"Per Nordrassil, e per tutto ciò che ci è costato!",
		"Per la Luna e per gli alberi!",
	},
	["race.nightelf.battle.w08.019"] = {
		"Dopo Hyjal una ferita può finirmi come chiunque altro. Strano quanto mi faccia combattere meglio.",
		"Mortali, ora, tutti quanti. Le sacerdotesse lo chiamano un peso; in battaglia somiglia piuttosto a uno sperone.",
	},
	["race.nightelf.battle.w08.020"] = {
		"Ashenvale ha già perso abbastanza per colpa di asce e fuoco. Oggi non porterai via niente a nessuno.",
		"I kaldorei vegliano sui luoghi selvaggi da prima che la tua specie avesse un nome. Lasciali in pace.",
	},
	["race.nightelf.lowhp.w08.001"] = {
		"Le sacerdotesse lo dissero chiaro dopo Hyjal: ora possiamo morire. Preferirei non verificare quanto sia facile.",
		"Da quando il dono dell'Albero del Mondo si è esaurito, posso morire {g:dissanguato|dissanguata} come chiunque. Preferirei non dimostrarlo qui.",
	},
	["race.nightelf.lowhp.w08.002"] = {
		"Respira. Fermati. I kaldorei sono sopravvissuti a peggio sparendo per un momento.",
		"Un nightsaber ferito si fa silenzioso, non furioso. Silenzio, allora.",
	},
	["race.nightelf.lowhp.w08.003"] = {
		"Tutto qui? La corteccia di Teldrassil mi ha dato schegge peggiori.",
		"Perdo sangue, ma non la partita. I kaldorei non cadono così facilmente.",
		"Ah. Le radici di Teldrassil mi hanno fatto inciampare peggio di così.",
	},
	["race.nightelf.lowhp.w08.004"] = {
		"barcolla, una mano premuta sulla ferita, la luce negli occhi che vacilla come una candela quasi consumata.",
		"cade su un ginocchio, il fiato corto, poi si rialza con la testardaggine di un vecchio albero che si rifiuta di cadere.",
	},
	["race.nightelf.lowhp.w08.005"] = {
		"Un kaldorei si aspetta secoli. Questo scontro sembra avere altri progetti.",
		"Strano quanto si rimpicciolisce il mondo con il sangue negli occhi. Diecimila anni di storia, e io vedo solo il prossimo respiro.",
		"Troppo presto. La vita breve il mio popolo la sta ancora imparando; io mi rifiuto di impararla tutta oggi.",
	},
	["race.nightelf.lowhp.w08.006"] = {
		"La luna è alta. Elune, se stai guardando, questo sarebbe un buon momento.",
		"Almeno sotto la luna. Se cado, cado dove lei può vedermi.",
	},
	["race.nightelf.lowhp.w08.007"] = {
		"Questa me la ricorderò. E io ricordo molto, molto a lungo.",
		"Hai versato sangue kaldorei. Il mio popolo non dimentica un debito così.",
		"Segnatelo: i kaldorei tengono conti lunghi.",
	},
	["race.nightelf.threat.w08.001"] = {
		"Una Sentinella avrebbe già scoccato. Ringrazia che ci sia solo io, e vattene.",
		"Il mio popolo ha difeso Ashenvale per diecimila anni da cose peggiori di te. Torna indietro.",
		"Ho la pazienza di un kaldorei, che dura secoli, e la sua collera, che si accende in un attimo. Scegli tu quale incontrare.",
	},
	["race.nightelf.threat.w08.002"] = {
		"Non mi vedrai arrivare. Non ci vedete mai arrivare. Questo è l'unico avvertimento.",
		"Ricordati la mia faccia. La prossima volta non avrai modo di vederla.",
		"I kaldorei svaniscono nella notte quando vogliono. Spera che io non lo voglia.",
	},
	["race.nightelf.victory.w08.001"] = {
		"Finita. Il mio popolo è sopravvissuto agli imperi; non potevi certo fare eccezione.",
		"A terra. Siamo sopravvissuti all'orgoglio degli Highborne e al fuoco della Legione. Non avevi speranze.",
		"Ecco. Il mio popolo ha visto cadere re e draghi. Perdonami se non mi fermo a stupirmi.",
	},
	["race.nightelf.victory.w08.002"] = {
		"Un'altra vita finita. Dopo Hyjal capisco meglio quanto costa, anche quella di chi giace qui.",
		"Prima che il dono dell'Albero del Mondo andasse perduto, il mio popolo poteva fingere che la morte fosse per gli altri. Non più. Nemmeno per chi giace qui.",
	},
	["race.nightelf.victory.w08.003"] = {
		"inclina il capo, in ascolto oltre lo scontro di qualunque altra cosa si muova, e solo allora abbassa la guardia.",
		"si raddrizza piano, il bagliore ancora acceso negli occhi, e lascia che il silenzio si posi.",
	},
	["race.nightelf.victory.w08.004"] = {
		"Elune, ti ringrazio. Fa' che mi guadagni anche la prossima.",
		"Elune ha vegliato su di me. Spero di non averle dato motivo di distogliere lo sguardo.",
		"Elune, eri vicina. L'ho sentito, o ho voluto sentirlo, e in battaglia è quasi la stessa cosa.",
	},
	["race.nightelf.victory.w08.005"] = {
		"Ah! Ditelo ai gufi. Adorano i pettegolezzi.",
		"Non male per chi preferirebbe starsene sotto un albero a non far niente.",
		"Fatto! Qualcuno lo dica agli ippogrifi: a me non credono mai.",
	},
	["race.nightelf.victory.w08.006"] = {
		"La foresta se lo riprenderà, come si riprende tutto. Non è crudeltà: è fare ordine in casa.",
		"Le foglie cadute nutrono la primavera dopo, insegnano i druidi di Darnassus. Anche questo nutrirà qualcosa.",
		"Foglia alla terra, terra alla radice. Il vecchio ciclo, con una piccola spinta.",
	},
	["race.nightelf.victory.w08.007"] = {
		"Una minaccia in meno per i boschi sacri. Le Sentinelle potranno dormire un po' più tranquille.",
		"Fatto. Dite a Darnassus che il mondo è un po' più sicuro di prima.",
		"Finita. I boschi sono un po' più quieti, come dev'essere.",
	},
	["race.nightelf.victory.w08.008"] = {
		"si scuote la battaglia dai lunghi capelli e lascia andare un respiro lento.",
		"piega le lunghe dita una per una, come per contarle, e sembra {g:soddisfatto|soddisfatta} del totale.",
	},
	["race.nightelf.victory.w08.009"] = {
		"Gli umani ci avrebbero già fatto una canzone entro domani. Il mio popolo se lo ricorderà e basta, il che è peggio.",
		"Chi vive poco si vanta dopo ogni scontro. Io questo me lo ricorderò per moltissimo tempo, che è anche peggio.",
		"Certi popoli lo inciderebbero nella pietra. Il mio non lo dimenticherà mai, e basta.",
	},
	["race.nightelf.victory.w08.010"] = {
		"Riposa. La lotta è finita, e non ho niente contro ciò che lasci dietro di te.",
		"Ishnu-alah. Qualunque cosa tu fossi, ora sii in pace.",
		"Vai in pace. Questa parte non mi dà gioia; solo il fatto che sia finita.",
	},
	["race.nightelf.victory.w08.011"] = {
		"Torna da dove vieni. Diecimila anni, e i kaldorei finiscono ancora quello che la Legione comincia.",
		"Un altro demone disfatto. La Guerra degli Antichi non è mai davvero finita, dicono le vecchie sentinelle: si è solo fatta più piccola.",
	},
	["race.nightelf.victory.w08.012"] = {
		"alza il viso verso la luna per un lungo momento, come se facesse rapporto a qualcuno.",
		"si volta verso la luna e china il capo: un piccolo grazie senza parole.",
	},
	["race.nightelf.victory.w08.013"] = {
		"Il cuore corre ancora. Un kaldorei dovrebbe essere calmo. Un kaldorei ha anche il diritto di respirare.",
		"Mani ferme, cuore che batte forte. Le Sentinelle dicono che il cuore non impara mai davvero a tacere.",
	},
	["race.nightelf.victory.w08.014"] = {
		"Il prossimo? I kaldorei non si stancano in fretta, e io ho appena cominciato.",
		"E uno. Il mio popolo conta a migliaia; c'è ancora posto sul conto.",
		"Ancora, se volete. Il mio popolo ha diecimila anni di pratica nel ricominciare.",
	},
	["race.nightelf.victory.w08.015"] = {
		"Le Sentinelle parlano dei loro caduti come se la foresta li custodisse ancora. Di questo non parlerà nessuno.",
		"Tanti morti nella lunga storia del mio popolo. Ne aggiungo uno ai margini, senza nome.",
	},
	["race.nightelf.victory.w08.016"] = {
		"Stai giù. Il Flagello un tempo è salito sul monte Hyjal e ha trovato i kaldorei ad aspettarlo. Come te.",
		"Torna a riposare. Chi ti ha rialzato non troverà più niente di te da usare.",
	},
	["race.tauren.battle.w08.001"] = {
		"Per Mulgore, e per ogni tauren che cammina lontano da lì!",
		"Per le pianure che mi hanno {g:cresciuto|cresciuta}, hai scelto la strada sbagliata!",
	},
	["race.tauren.battle.w08.002"] = {
		"La stazza non è tutto. Nel mio caso, però, è un buon inizio.",
		"{g:Grosso|Grossa}, sì. {g:Lento|Lenta}, no. Quasi tutti imparano la seconda cosa troppo tardi.",
		"Non farti ingannare dalla mole. Del resto, ci cascano tutti.",
	},
	["race.tauren.battle.w08.003"] = {
		"pesta una volta, forte, e il terreno risponde con un tonfo sordo che si sente fin sotto le suole di chi è vicino.",
		"lancia un ruggito cupo dal fondo del petto, una sfida vecchia quanto le pianure, e sposta tutto il peso in avanti.",
		"fa ruotare le spalle massicce e avanza col passo regolare, inarrestabile, di una mandria in fuga che ha deciso dove andare.",
	},
	["race.tauren.battle.w08.004"] = {
		"Respira come insegnano gli anziani di Mulgore: lento dentro dal naso, lento fuori. La lotta non arriva prima se hai fretta.",
		"Calma. Una mandria in corsa comincia da un solo zoccolo. Scegli dove posarlo.",
		"Prima la pazienza. Le pianure premiano chi aspetta la carica, non chi la comincia.",
	},
	["race.tauren.battle.w08.005"] = {
		"Madre Terra, chiunque cada qui, accoglilo con dolcezza. Preferirei non fossi io.",
		"Madre Terra, guarda. Mi piacerebbe darti qualcosa di cui andare fiera.",
		"Madre Terra, questo terreno è tuo. Che io non lo disonori.",
	},
	["race.tauren.battle.w08.006"] = {
		"Il mio popolo ha percorso Mulgore da un capo all'altro per generazioni. Io posso passare attraverso di te.",
		"I kodo non si fermano per le cose piccole. Nemmeno io.",
		"Fuori dalla mia strada. Un tauren in marcia è una valanga lenta.",
	},
	["race.tauren.battle.w08.007"] = {
		"Ah, compagnia. Cominciavano ad addormentarmisi gli zoccoli.",
		"Bene. I miei zoccoli scalpitavano.",
		"Stagione di caccia, allora. Solo che a scegliere sono io.",
	},
	["race.tauren.battle.w08.008"] = {
		"espira a lungo dalle narici dilatate, piano e a fondo, e si fa immobile prima del primo colpo.",
		"sbuffa un soffio breve, le orecchie appiattite, tutto il grande corpo raccolto come un toro davanti al cancello.",
		"abbassa la testa e soffia un lungo respiro verso terra, come un toro che decide come finirà la giornata.",
	},
	["race.tauren.battle.w08.009"] = {
		"Il mio popolo ha resistito ai centauri per generazioni. Io posso resistere a te per un minuto.",
		"Uomini-cinghiale, centauri, Grimtotem: ci hanno provato tutti. Aggiungiti alla lista.",
	},
	["race.tauren.battle.w08.010"] = {
		"Fare di me un muro. Tutto ciò che vuole passare deve prima attraversare un tauren.",
		"Tutto questo peso serve a qualcosa. Che serva a restare qui.",
		"Abbastanza {g:grosso|grossa} da bloccare una porta, abbastanza da bloccare anche questo. Piantarsi e tenere.",
	},
	["race.tauren.battle.w08.011"] = {
		"Senti? È il mio cuore che batte come un tamburo. Batte più forte del tuo.",
		"Il mio popolo ha i tamburi, per queste cose. Mi arrangerò col battito del cuore.",
	},
	["race.tauren.battle.w08.012"] = {
		"scuote la testa una volta, le corna che fendono l'aria, e tutta la pazienza delle pianure {g:gli|le} sparisce dagli occhi.",
		"prende fiato finché il petto non si tende come la pelle di un tamburo, poi lo libera in un ruggito che rotola lungo il terreno.",
	},
	["race.tauren.battle.w08.013"] = {
		"Se questa è la mia ultima caccia, la terra sa già dove trovarmi.",
		"Non ho paura dell'erba sopra di me. Solo che non la voglio ancora.",
		"Ogni caccia può essere l'ultima. Gli anziani dicono che per questo ci si entra a occhi aperti.",
	},
	["race.tauren.battle.w08.014"] = {
		"Un altro che pensa che un tauren sia un bersaglio lento. Lascio che si goda l'idea ancora un momento.",
		"Mirano sempre al centro. Con un tauren il centro è molto grande. Giusto, in effetti.",
	},
	["race.tauren.battle.w08.015"] = {
		"Thunder Bluff sta sulla roccia alta per un motivo. Anch'io.",
		"Non mi sposti. Vengo da una città costruita sulle rupi.",
		"Le rupi non si scansano. E nemmeno chi ci vive sopra.",
	},
	["race.tauren.battle.w08.016"] = {
		"Qui qualcosa morirà. La caccia insegna a ringraziarlo, chiunque di noi due sia.",
		"Qualunque cosa cada, dopo renderò grazie. È il patto che il mio popolo tiene con la caccia.",
	},
	["race.tauren.battle.w08.017"] = {
		"Mh. Non sei un plainstrider, ma andrai bene lo stesso.",
		"Non era quello che stavo cacciando, ma non sono {g:schizzinoso|schizzinosa}.",
	},
	["race.tauren.battle.w08.018"] = {
		"si pianta nel terreno come se ci mettesse radici, zoccoli larghi, testa bassa, in attesa.",
		"si abbassa un poco, il peso ripartito su entrambi gli zoccoli, {g:solido|solida} come una pietra eretta delle pianure.",
	},
	["race.tauren.lowhp.w08.001"] = {
		"Un tauren cade come un vecchio albero: piano, e non oggi.",
		"Ci vuole parecchio per abbattere qualcosa di questa stazza. Non ci sei ancora.",
		"{g:Ferito|Ferita}, sì. Ma c'è ancora tanto di me da attraversare.",
	},
	["race.tauren.lowhp.w08.002"] = {
		"Il terreno sembra così morbido, da qui. Non sdraiarti. Non azzardarti a sdraiarti.",
		"Le gambe chiedono di inginocchiarsi. Di' loro di no. Ci si inginocchia dopo, per ringraziare, non adesso.",
	},
	["race.tauren.lowhp.w08.003"] = {
		"Mi hai fatto arrabbiare e girare la testa insieme. Solo una delle due cose passerà.",
		"Va bene, sanguino. Hai fatto sanguinare un tauren, e di rado finisce bene per qualcuno.",
		"Questo è il momento in cui tutti si aspettano che un tauren crolli. Le aspettative non le ho mai sopportate.",
	},
	["race.tauren.lowhp.w08.004"] = {
		"ondeggia come un grande albero nel vento forte, poi pianta gli zoccoli e si rifiuta di cadere.",
		"respira a folate spezzate, il sangue che scurisce il pelo, ma la testa si rialza, corna comprese.",
		"barcolla di mezzo passo, ritrova il terreno con tutto il peso, e resta in piedi per pura testardaggine.",
	},
	["race.tauren.lowhp.w08.005"] = {
		"Madre Terra, non sono {g:pronto|pronta} a coricarmi in te. Aspettami ancora un po'.",
		"Madre di tutti noi, ti sento. Non adesso. Verrò da te un giorno sui miei zoccoli, non così.",
	},
	["race.tauren.lowhp.w08.006"] = {
		"Fai sanguinare un tauren e gli insegni solo a caricare più forte!",
		"Ecco il sangue. Adesso facciamo sul serio tutti e due.",
	},
	["race.tauren.lowhp.w08.007"] = {
		"Rallenta, dentro. Il panico è una mandria in fuga: travolge chi l'ha fatta partire.",
		"Le pianure insegnano almeno questo: quando sanguini, non correre alla cieca. Respira. Guarda. Scegli.",
	},
	["race.tauren.threat.w08.001"] = {
		"Le mandrie in fuga si dividono attorno a un tauren che resta fermo. E tu sei molto meno di una mandria.",
		"Vattene. Preferisco lasciarti all'erba piuttosto che metterti sotto.",
		"Allontanati. Un tauren avverte una volta sola; il secondo avvertimento lo danno gli zoccoli.",
	},
	["race.tauren.threat.w08.002"] = {
		"Alla fine la Madre Terra si riprende tutto. Non chiedermi di farle fretta.",
		"Girati e vattene, e oggi la terra non dovrà farti posto.",
	},
	["race.tauren.victory.w08.001"] = {
		"Grazie per la lotta. Il mio popolo chiude così una caccia, e non sarò io a perdere l'abitudine.",
		"Una parola di ringraziamento per ciò che è caduto. La caccia la chiede a ogni tauren, anche dopo una lotta che nessuno voleva.",
	},
	["race.tauren.victory.w08.002"] = {
		"resta un momento accanto a chi è caduto con una mano alzata, il palmo aperto, nel ringraziamento silenzioso delle pianure.",
		"china il capo su quell'immobilità per lo spazio di un respiro, poi si volta.",
	},
	["race.tauren.victory.w08.003"] = {
		"Ah. Hai combattuto come un uomo-cinghiale col dente avvelenato. Lo rispetto.",
		"Bella lotta. Mi ricorderò di te quando sarò {g:vecchio e noioso|vecchia e noiosa}.",
		"Fiato! Più fatica che rincorrere un kodo scappato.",
	},
	["race.tauren.victory.w08.004"] = {
		"Il cuore rallenta come rallenta una mandria: prima quelli in testa, poi gli altri. Dagli tempo.",
		"Il respiro mi torna a grandi sorsi lenti, come acqua che riempie l'impronta di uno zoccolo.",
		"Respiri lenti. Dentro dal naso, fuori come un kodo in cima alla salita della rupe.",
	},
	["race.tauren.victory.w08.005"] = {
		"Dillo agli altri che qui c'è un tauren. Che ci pensino due volte.",
		"Il prossimo farà bene a portarsi gli amici. Tanti amici.",
		"Giù, e resta giù. Le pianure crescono gente dura.",
	},
	["race.tauren.victory.w08.006"] = {
		"È finita. Nelle pianure non ci si vanta: si controlla il vento e si va avanti.",
		"Finita. Gli anziani direbbero: non restargli sopra troppo a lungo, o finisci per credere che il mondo giri grazie a te.",
	},
	["race.tauren.victory.w08.007"] = {
		"Ed ecco perché non si spaventa un tauren.",
		"Lezione per il prossimo: mai mettersi fra un tauren e la sua strada.",
		"Dovevi girarmi intorno. Quasi tutti lo fanno.",
	},
	["race.tauren.victory.w08.008"] = {
		"scuote la criniera e lascia che il calore della lotta {g:gli|le} evapori di dosso piano piano.",
		"pianta entrambi gli zoccoli e resta lì a respirare come un mantice, enorme e senza fretta.",
	},
	["race.tauren.victory.w08.009"] = {
		"Anche una morte necessaria pesa. Il mio popolo non finge il contrario, e io nemmeno.",
		"Ogni vita che la terra si riprende lascia un po' di peso su chi l'ha mandata là. Va bene. Il peso lo so portare.",
		"Finita. Ne porterò il peso per un po', come dicono gli anziani che un cacciatore deve fare, e poi lo poserò.",
	},
	["race.tauren.victory.w08.010"] = {
		"Cairne custodisce la pace del suo popolo. Qui ne ho custodita un po' anch'io.",
		"Un'altra storia per i narratori di Thunder Bluff, se la vogliono. Preferirei la raccontassero breve.",
	},
	["race.tauren.victory.w08.011"] = {
		"È andata bene. Sono {g:inciampato|inciampata} nei miei stessi zoccoli una volta sola, e nessuno ha visto.",
		"Niente male. Con un po' più di grazia mi scambierebbero per un elfo della notte. Un elfo della notte molto grosso.",
	},
	["race.tauren.victory.w08.012"] = {
		"Madre Terra, è finita. Volgi gli occhi altrove: qui non c'è più niente da vedere.",
		"È finita. Che An'she e Mu'sha guardino con benevolenza ciò che resta di questo posto.",
	},
	["race.tauren.victory.w08.013"] = {
		"Ogni lotta rende gli zoccoli un po' più sicuri. È così che un vitello impara il passo della mandria, dicono i mandriani.",
		"Una lotta in più, un po' di forza in più. Le pianure sono maestre pazienti, e non lasciano mai saltare una lezione.",
	},
	["race.tauren.victory.w08.014"] = {
		"Finita. La mandria non si ferma perché è caduto un lupo; nemmeno io.",
		"Bene. Si riprende a camminare. Un tauren è più contento con tante leghe sotto gli zoccoli.",
		"Sistemata. Allora, dove stavo andando? Ah, già. Avanti.",
	},
	["race.tauren.victory.w08.015"] = {
		"scuote un orecchio, come per scacciare una mosca, e si guarda intorno in cerca d'altro che abbia voglia di guai.",
		"inclina la testa verso il nemico caduto con blanda curiosità, come un kodo che guarda lo steccato appena attraversato.",
	},
	["race.tauren.victory.w08.016"] = {
		"Il vento passerà su questo punto come se niente fosse. Nelle pianure ho imparato a trovarlo consolante.",
		"Presto non ne resterà traccia. La terra dimentica le liti più in fretta di tutti noi. Il mio popolo lo chiama misericordia.",
	},
	["race.tauren.victory.w08.017"] = {
		"Zoccoli, corna e un brutto carattere. Li hai incontrati tutti e tre.",
		"Ecco cosa succede quando svegli il carattere di un tauren. Ci mette tanto a svegliarsi, e ancora di più a riaddormentarsi.",
	},
	["race.gnome.battle.w09.001"] = {
		"Per Tinker Town, e per ogni gnomo uscito dal buio!",
		"Anche gli esuli di Gnomeregan combattono! Vieni a scoprire come!",
		"Per l'Alto Inventore! Attento agli stinchi!",
	},
	["race.gnome.battle.w09.002"] = {
		"Sei proprio grosso. Vuol dire solo che c'è più roba da colpire.",
		"Grosso, lento e in mezzo ai piedi. Due su tre li posso sistemare.",
		"Accidenti, quanto sei alto. Le cose alte cadono da più in alto, sai.",
	},
	["race.gnome.battle.w09.003"] = {
		"Respira, misura, muoviti. Il panico è solo un calcolo fatto troppo in fretta.",
		"Rallenta i pensieri, accelera i piedi. Il trucco è tutto lì.",
		"Prima si misura. Alla paura lascio gli avanzi.",
	},
	["race.gnome.battle.w09.004"] = {
		"si abbassa sotto il primo colpo con due dita di margine, che per uno gnomo è un margine generoso.",
		"sguscia in un varco dove nessun combattente più alto riuscirebbe mai a passare.",
	},
	["race.gnome.battle.w09.005"] = {
		"Ottimo! Una prova pratica! Adoro le prove pratiche!",
		"Collaudo sul campo numero uno: si comincia!",
	},
	["race.gnome.battle.w09.006"] = {
		"I sopravvissuti raccontano che i trogg salirono dal profondo senza preavviso. Questo, almeno, ha avuto la creanza di farsi vedere.",
		"Gnomeregan è caduta per colpa di cose strisciate su dagli abissi. Questo invece mi sta davanti, in piena vista. Meglio.",
	},
	["race.gnome.battle.w09.007"] = {
		"Avanti, sottovalutami. Lo fanno tutti, una volta.",
		"Guarda quaggiù. Sì, quaggiù. È l'ultimo errore che ti concedo.",
	},
	["race.gnome.battle.w09.008"] = {
		"pianta gli stivaletti ben larghi e sorride al nemico dal basso, perché è l'unica direzione disponibile.",
		"si piazza sulle gambe, rovescia la testa all'indietro per incrociare lo sguardo del nemico e si rifiuta di sembrare {g:impressionato|impressionata}.",
	},
	["race.gnome.battle.w09.009"] = {
		"Uscite individuate: a sinistra, a destra, e dritto fra le sue gambe. Adesso cerchiamo di non usarle.",
		"Tre vie di fuga, contando quella che gli passa sotto. Gli gnomi contano sempre quella che passa sotto.",
	},
	["race.gnome.battle.w09.010"] = {
		"Il popolo di Mekkatorque non scappa! Al massimo si ricolloca tatticamente, e oggi nemmeno quello!",
		"Gli gnomi non si ritirano! Si riposizionano! E in questo momento non ci riposizioniamo affatto!",
	},
	["race.gnome.battle.w09.011"] = {
		"Le probabilità sono pessime. Bene. È nelle probabilità pessime che stanno i risultati interessanti.",
		"Sulla carta i numeri sono brutti. Ma la carta non tiene mai conto di uno gnomo testardo.",
	},
	["race.gnome.battle.w09.012"] = {
		"Avevo dei piani per la prossima ora. Piani dettagliati. Tu non c'eri.",
		"Questo non era in agenda, e la mia agenda è molto accurata.",
	},
	["race.gnome.battle.w09.013"] = {
		"corregge la posizione di un pollice appena, con cura, come chi tara uno strumento delicato.",
		"flette una volta le dita minute, rapide e precise, come si prova una molla prima di caricarla.",
	},
	["race.gnome.battle.w09.014"] = {
		"Facciamo in fretta. Ho lasciato a metà un pensiero ottimo.",
		"Sbrighiamoci, per favore. Ero nel bel mezzo di un'idea.",
	},
	["race.gnome.battle.w09.015"] = {
		"Combatti come se la città fosse ancora laggiù ad aspettarci. In un certo senso, lo è.",
		"Sotto le montagne, Gnomeregan aspetta ancora. Vorrei essere {g:vivo|viva}, il giorno che torneremo a prenderla.",
	},
	["race.gnome.battle.w09.016"] = {
		"Ironforge non ci ha aperto le porte perché io perdessi contro una cosa così. Concentrati.",
		"I nani hanno dato un tetto al mio popolo. Il minimo che posso fare è non farmi schiacciare all'aperto.",
	},
	["race.gnome.battle.w09.017"] = {
		"Basso, svelto e molto arrabbiato! Tocca a te!",
		"Avanti, allora! Piccolo e veloce batte grosso e lento!",
		"Ho metà della tua altezza e il doppio del tuo fegato! Vediamo!",
	},
	["race.gnome.battle.w09.018"] = {
		"Forza! Gomiti fuori, testa bassa, cervello acceso!",
		"Ci siamo! Prima l'ingegno, tutto il resto dopo!",
		"Tutte le mani sul problema! Be', le mie due!",
	},
	["race.gnome.battle.w09.019"] = {
		"Il cuore batte come un pistone allentato. Va bene. Anche un pistone allentato fa girare la ruota.",
		"Ho paura. Bene. Uno gnomo spaventato nota tutto, e notare è metà della vittoria.",
	},
	["race.gnome.battle.w09.020"] = {
		"squadra il nemico dalla testa ai piedi, cosa che richiede un bel po', e stringe gli occhi davanti a ciò che vede.",
		"studia il nemico che avanza con occhi vivi e svelti, come un rompicapo che ha avuto la sciocca idea di reagire.",
	},
	["race.gnome.battle.w09.021"] = {
		"Oh, magnifico. Un'altra cosa enorme senza alcun senso dello spazio personale.",
		"Possibile che quaggiù sia tutto grosso il doppio di me e di pessimo umore?",
	},
	["race.gnome.lowhp.w09.001"] = {
		"Rapporto danni: ovunque. Morale: chissà come, ancora in funzione.",
		"Ogni indicatore sul rosso. Be', almeno il rosso è un colore allegro.",
		"Troppe falle per contarle. Tappa la più grossa e con le altre discuti dopo.",
	},
	["race.gnome.lowhp.w09.002"] = {
		"Non adesso! Non ho provato neanche la metà delle cose che volevo provare!",
		"Assolutamente no! Ho una lista, e sono {g:lontanissimo|lontanissima} dalla fine!",
	},
	["race.gnome.lowhp.w09.003"] = {
		"Non qui. Gnomeregan ha già perso abbastanza gnomi.",
		"No. Il mio popolo non può permettersi di perderne un altro. In piedi, pensa, esci di qui.",
		"Ne abbiamo lasciati troppi sotto la montagna. Non mi aggiungo a quel conto.",
	},
	["race.gnome.lowhp.w09.004"] = {
		"vacilla, si riprende e sbatte forte le palpebre, come una lampada che decide se restare accesa.",
		"ondeggia sui piedi minuti e scuote la testa di scatto, come per rimettere al suo posto qualcosa che si è allentato.",
	},
	["race.gnome.lowhp.w09.005"] = {
		"Bersaglio piccolo, sempre più piccolo! Qualcuno mi dica che è un bene!",
		"Sono un bersaglio difficile, e sempre di più! Soprattutto perché di me ne resta meno!",
	},
	["race.gnome.lowhp.w09.006"] = {
		"Pensa. Una scivolata, una torsione, un varco in cui infilarsi. Gli gnomi escono dai posti stretti: è quello che facciamo.",
		"C'è sempre un'uscita per chi è abbastanza piccolo da trovarla. Trovala.",
	},
	["race.gnome.lowhp.w09.007"] = {
		"Non ancora! Prima devo rivedere Gnomeregan!",
		"Non ho finito! C'è una città sotto le montagne che mi aspetta!",
		"Non mi avrai! Qualcuno deve riprendersi Gnomeregan, e mi sono {g:offerto|offerta} io!",
	},
	["race.gnome.threat.w09.001"] = {
		"Vattene. Sono {g:piccolo|piccola}, sono {g:furbo|furba}, e non ho niente di meglio da fare che rovinarti la giornata.",
		"Sparisci. Mi manca l'altezza, non le idee.",
		"Pensaci bene. Quello che mi manca in portata lo recupero in dispetto.",
	},
	["race.gnome.threat.w09.002"] = {
		"I trogg ci hanno preso un'intera città. Tu da me non avrai neanche un palmo.",
		"Il mio popolo ha perso Gnomeregan. Da allora siamo diventati molto testardi sul perdere altro.",
	},
	["race.gnome.victory.w09.001"] = {
		"Ed eccolo giù. La fisica resta imbattuta.",
		"Quasi tutto il lavoro l'ha fatto la gravità. Il merito me lo prendo lo stesso.",
	},
	["race.gnome.victory.w09.002"] = {
		"Ecco il tremito, puntuale con un minuto buono di ritardo. I nervi non sono mai stati la parte meglio tarata di uno gnomo.",
		"Adesso le mani tremano, a cose fatte. Chi ha progettato i nervi non li ha mai collaudati sotto sforzo.",
	},
	["race.gnome.victory.w09.003"] = {
		"si spolvera le maniche e si erge in tutta la sua statura, cosa che non richiede alcun tempo.",
		"si raddrizza il colletto con grande dignità, tutta concentrata in una persona molto piccola.",
	},
	["race.gnome.victory.w09.004"] = {
		"Se solo i trogg fossero caduti con questa facilità. Un'intera città avrebbe ancora le sue lampade accese.",
		"Questo è stato facile. I trogg no, ed è per questo che combatto quassù invece di vivere laggiù.",
	},
	["race.gnome.victory.w09.005"] = {
		"Hai visto? Raccontalo a qualcuno alto: a lui crederanno.",
		"Spero che qualcuno l'abbia visto. Raccontatelo a qualcuno di alto, che si sente più lontano.",
	},
	["race.gnome.victory.w09.006"] = {
		"Annotato: si sbilanciava da un lato e abbassava la guardia nel girarsi. Il prossimo durerà meno.",
		"Dati utili. Annunciava ogni colpo grosso con largo anticipo. Lo schema me lo ricordo.",
	},
	["race.gnome.victory.w09.007"] = {
		"La prossima volta prenditela con qualcuno della tua taglia. Ah, già. Della mia taglia non c'è nessuno. Che fortuna.",
		"Ecco cosa succede a guardare la gente dall'alto in basso. Alla lettera, in questo caso.",
	},
	["race.gnome.victory.w09.008"] = {
		"osserva il nemico caduto con franco interesse scientifico, poi si ricorda delle buone maniere e distoglie lo sguardo.",
		"si accovaccia a studiare come è caduto il nemico, solo per ricerca, e si rialza prima che qualcuno possa commentare.",
	},
	["race.gnome.victory.w09.009"] = {
		"Un altro scontro vinto. Gli gnomi sono bravi con le piccole vittorie: perdere una città ti insegna a collezionarle.",
		"Una vittoria piccola. Il mio popolo ha imparato a impilarle con cura, come mattoni per più avanti.",
	},
	["race.gnome.victory.w09.010"] = {
		"Tutto qui? Avevo preparato almeno altre quattro idee.",
		"Oh. Già finito? Avevo pronto un intero piano di riserva.",
	},
	["race.gnome.victory.w09.011"] = {
		"Di nuovo silenzio. Un momento per controllare cosa fa male; il resto lo registro dopo.",
		"Finita. Inventario: tutto attaccato, qualche ammaccatura nuova, niente che non vada via con una lucidata.",
	},
	["race.gnome.victory.w09.012"] = {
		"Un altro punto per il conto degli esuli! A Tinker Town vorranno sapere il numero.",
		"Segnate questa per Gnomeregan! Noi teniamo il conto.",
	},
	["race.gnome.victory.w09.013"] = {
		"si lascia sfuggire una risatina breve ed euforica, metà sollievo e metà pura gioia perché il piano ha funzionato davvero.",
		"fa un saltello di trionfo minuscolo, poi finge con grande impegno che non sia mai successo.",
	},
	["race.gnome.victory.w09.014"] = {
		"I corpi piccoli si rompono facilmente. Per questo i piccoli imparano a pensare in fretta. Stavolta ha vinto il pensiero.",
		"In uno scontro non ho molta stazza da sprecare. Così spendo ingegno, e me ne resta ancora parecchio.",
	},
	["race.gnome.victory.w09.015"] = {
		"Che resti agli atti: l'avversario aveva più peso e più portata, non più cervello.",
		"Si metta a verbale: più {g:piccolo|piccola}, più {g:leggero|leggera}, e ancora in piedi.",
	},
	["race.gnome.victory.w09.016"] = {
		"I nani dicono che uno gnomo in combattimento è tutto gomiti. Oggi i gomiti se la sono cavata bene.",
		"A Ironforge scherzano che gli gnomi combattono come un meccanismo che si è spaventato. Il meccanismo spaventato ha appena vinto.",
	},
	["race.gnome.victory.w09.017"] = {
		"Splendido! Farei un giro d'onore, ma prima le mie gambe vorrebbero dire la loro.",
		"Ah! Qualcuno porti una cassa: questo merita un discorso da un'altezza adeguata.",
	},
	["race.gnome.victory.w09.018"] = {
		"Vinto. A Tinker Town in questo momento staranno armeggiando con qualche macchina, senza saperne niente. In qualche modo, mi piace.",
		"Finita. Lontano, a Ironforge, gli esuli continuano ad armeggiare e a sperare. Scontri come questo tengono aperte le strade per loro.",
	},
	["race.gnome.victory.w09.019"] = {
		"lascia cadere le spalle, prende tre respiri rapidi e passa in rassegna mani minute, braccia e ginocchia con un'ispezione sbrigativa.",
		"si ferma a riprendere fiato, poi si tasta da capo a piedi con cura, come un meccanico che conta i bulloni dopo un collaudo.",
		"si asciuga la fronte col dorso della manica e rivolge al nemico caduto un breve cenno, da professionista.",
	},
	["race.orc.battle.w09.001"] = {
		"Per Durotar, e per ogni orco che cammina libero!",
		"Un regalo da Durotar, caldo e pesante!",
		"Per Razor Hill e la terra rossa!",
	},
	["race.orc.battle.w09.002"] = {
		"Affrontami con onore, o non affrontarmi affatto.",
		"Resta e combatti sul serio. Ti renderò lo stesso onore.",
		"Combatti lealmente. Ti concedo questo e nient'altro.",
	},
	["race.orc.battle.w09.003"] = {
		"getta indietro la testa e lancia un urlo che si sentirebbe da un capo all'altro dei Barrens.",
		"punta le zanne in avanti e avanza lento e sicuro, come un lupo che stringe la preda.",
	},
	["race.orc.battle.w09.004"] = {
		"Prima la calma. Poi la forza. La rabbia può venire dopo, se serve, e solo se la chiamo io.",
		"Respira. Scegli il primo passo. Gli orchi che caricano alla cieca appartengono ai racconti degli anni bui.",
	},
	["race.orc.battle.w09.005"] = {
		"Ah, una lotta vera. Mi si stavano addormentando le braccia.",
		"Finalmente qualcosa che non è una cassa da trasportare.",
		"Ah, ecco l'esercizio della giornata.",
	},
	["race.orc.battle.w09.006"] = {
		"Avanti! A Orgrimmar amano le storie di lotta: guadagnati la tua parte!",
		"Fammi vedere cosa sai fare, e io ti farò vedere cosa sa fare un orco.",
	},
	["race.orc.battle.w09.007"] = {
		"Gli anziani dicono che il sangue del demone rendeva ogni battaglia una fame. Questa sembra lavoro. Meglio il lavoro.",
		"Nessun fuoco demoniaco dietro gli occhi, solo la mia rabbia, e so dove puntarla. La maledizione è spezzata; la scelta è mia.",
	},
	["race.orc.battle.w09.008"] = {
		"Demone! Hellscream ha saldato il nostro debito con la tua razza ad Ashenvale. Io sono qui per gli interessi!",
		"La tua razza ci ha nutriti di veleno chiamandolo forza. Eccoti la forza vera, scelta liberamente!",
	},
	["race.orc.battle.w09.009"] = {
		"E va bene. Sbrighiamoci prima che il cibo si freddi.",
		"Allora in fretta. Ho posti dove andare e tu sei in mezzo.",
		"Facciamo presto. Ho una strada lunga e la pazienza corta.",
	},
	["race.orc.battle.w09.010"] = {
		"grugnisce, pianta i piedi ben larghi e aspetta con pazienza pesante.",
		"abbassa la testa, zanne in avanti, e il corpo massiccio si fa immobile.",
		"sputa di lato, fa ruotare il collo robusto e si fa avanti.",
	},
	["race.orc.battle.w09.011"] = {
		"Antenati, guardate questa. Non vi farò vergognare.",
		"Spiriti della mia gente, vi darò qualcosa che valga la pena guardare.",
	},
	["race.orc.battle.w09.012"] = {
		"Gli orchi sono fatti per questo: il fare, non il pensare. Be', un pochino.",
		"C'è chi teme la battaglia. A me le spalle si rallegrano appena ne comincia una.",
	},
	["race.orc.battle.w09.013"] = {
		"Pelle verde, terra rossa, e nessuna paura. Fatti sotto!",
		"Hai cercato rissa con un orco. Che fegato. Mal speso, ma che fegato.",
		"Zanne in fuori, testa bassa. Arrivo!",
	},
	["race.orc.battle.w09.014"] = {
		"I Frostwolf combattono per la loro valle, i Warsong per il loro nome. Io combatto per ciò che ho alle spalle in questo momento.",
		"Ogni clan ha la sua ragione per combattere. La mia, oggi, è semplice: quello che ho alle spalle.",
	},
	["race.orc.battle.w09.015"] = {
		"Sembri un osso duro. Anch'io. Uno dei due sta mentendo.",
		"Ah! Un altro che pensa che gli orchi siano solo muscoli. Lo siamo. Che fortuna, eh.",
	},
	["race.orc.battle.w09.016"] = {
		"sorride attorno alle zanne, un sorriso brutto e sincero, e si fa sotto.",
		"lancia un grido breve e roco, di quelli a cui rispondono i lupi lontani.",
	},
	["race.orc.battle.w09.017"] = {
		"Combatto a mente lucida e cuore pulito. Vedrai che per te è peggio.",
		"Nessuna furia di demoni in me. Solo la mia, e basta e avanza.",
		"Occhi limpidi, mani ferme. Così combatte la libertà.",
	},
	["race.orc.battle.w09.018"] = {
		"Se questa è la battaglia che mi finisce, chi mi trova possa dire che l'ho affrontata.",
		"Nessun orco vive per sempre. I migliori si ricordano per come hanno affrontato giorni come questo.",
	},
	["race.orc.battle.w09.019"] = {
		"I guai non li cercavo. Ma non giro nemmeno al largo.",
		"Lo vuoi davvero? Bene. Gli orchi non hanno mai imparato a ritirarsi con garbo.",
	},
	["race.orc.battle.w09.020"] = {
		"Torna sotto terra! Gli orchi non si spaventano per quattro ossa.",
		"Marcisci e sferraglia pure. Ho visto di peggio in un nido di scorpidi.",
	},
	["race.orc.lowhp.w09.001"] = {
		"Quello per terra è il mio sangue. Vieni a vedere cosa fa un orco con quello che resta.",
		"Mi hai fatto sanguinare. Bene. Gli orchi combattono meglio quando hanno un debito da saldare.",
		"Ferita per ferita, allora. Me ne resta parecchio da scambiare.",
	},
	["race.orc.lowhp.w09.002"] = {
		"Respira e vai avanti. Il dolore è solo il corpo che parla, e io ho smesso di ascoltarlo.",
		"Fa male. Va bene. Se fa male, sono ancora qui a sentirlo.",
		"Ogni respiro adesso è una piccola battaglia. Ne ho vinte parecchie.",
	},
	["race.orc.lowhp.w09.003"] = {
		"barcolla, sputa rosso e pianta i piedi più larghi.",
		"vacilla, le zanne serrate, e nega alla terra la sua soddisfazione.",
		"cade su un ginocchio, poi si rimette su a forza con un ringhio.",
	},
	["race.orc.lowhp.w09.004"] = {
		"Tutto qui? Mi ha fatto più male un barile di grog di Razor Hill.",
		"Colpisci come una scottatura di Durotar: fastidiosa, e non basta.",
		"Il caldo di Durotar in piena estate fa più male di te.",
	},
	["race.orc.lowhp.w09.005"] = {
		"Se le canzoni dicono il vero, Hellscream è caduto in piedi. Io posso almeno restarci ancora un po'.",
		"Grom Hellscream ha pagato tutto per liberarci, dicono i guerrieri di Orgrimmar. Non sprecherò quella libertà con la faccia a terra.",
	},
	["race.orc.lowhp.w09.006"] = {
		"Lok'tar! Non ancora, non qui, non per mano tua!",
		"Non qui. Non per mano tua. Un orco sceglie dove cadere, e non è questo il posto!",
	},
	["race.orc.lowhp.w09.007"] = {
		"Tutto si fa sottile e lontano. Resta. Resta nella lotta, {g:orco|orchessa}.",
		"Orecchie che fischiano, gambe pesanti. Pianta i piedi. Gli orchi sono difficili da smuovere quando decidono di non muoversi.",
	},
	["race.orc.threat.w09.001"] = {
		"Vattene. Un orco avverte una volta sola, e solo perché lo chiede l'onore.",
		"Ecco il tuo unico avvertimento. L'onore mi obbliga a dartelo. Niente mi obbliga a dartene due.",
		"Girati e vattene. Questa cortesia te la concedo, e non un respiro di più.",
	},
	["race.orc.threat.w09.002"] = {
		"Le vedi queste zanne? Non servono a sorridere.",
		"Ti sto mostrando le zanne. Tra gli orchi, non è un sorriso.",
	},
	["race.orc.victory.w09.001"] = {
		"Va' dai tuoi antenati, se ne hai. Di' loro che ti ha mandato un orco, e lealmente.",
		"È stata una lotta leale, ed è finita. Riposa in pace.",
	},
	["race.orc.victory.w09.002"] = {
		"Finita. Controllo le mani, i piedi, le zanne. C'è tutto. Per chiunque, è una buona giornata.",
		"Conto veloce: braccia, gambe, zanne. Non manca niente. Vittoria doppia.",
	},
	["race.orc.victory.w09.003"] = {
		"Chi è il prossimo? In fila, con ordine, non faccio storie.",
		"C'è qualcun altro che aspetta? No? Peccato.",
		"Chi altro vuole un turno? Non fate i timidi.",
	},
	["race.orc.victory.w09.004"] = {
		"alza un pugno e lancia un grido breve e roco, il verso di un orco soddisfatto del lavoro della giornata.",
		"si asciuga la fronte col dorso del polso verde e sorride attorno alle zanne.",
	},
	["race.orc.victory.w09.005"] = {
		"Ha lottato per la sua vita, come avrei fatto io. Niente vanterie. Solo il silenzio dopo.",
		"Qualcosa è morto perché io potessi continuare a camminare. Gli orchi non fingono che non sia niente.",
	},
	["race.orc.victory.w09.006"] = {
		"Ah! Forza e onore, entrambi intatti!",
		"Vittoria, e neanche una goccia di vergogna!",
		"Vinta, e vinta pulita! Lok'tar!",
	},
	["race.orc.victory.w09.007"] = {
		"Mi è venuto un appetito. In questo mondo c'è un cinghiale che porta il mio nome.",
		"Combattere mette fame a un orco. Vincere, ancora di più.",
		"Una lotta prima di mangiare è il miglior condimento, dice la mia pancia.",
	},
	["race.orc.victory.w09.008"] = {
		"Antenati, questa era per voi.",
		"Spiriti, prendete nota. È stata fatta come si deve.",
	},
	["race.orc.victory.w09.009"] = {
		"Gli araldi di Orgrimmar dicono che il Capoguerra vuole un'Orda che combatte per proteggere, non per conquistare. Questa la posso sostenere.",
		"Non per conquistare, solo per la strada davanti. È l'Orda che chiede il Capoguerra, ed è quella in cui combatto.",
	},
	["race.orc.victory.w09.010"] = {
		"La prossima volta ti servirà un amico più grosso. Anzi, due.",
		"Dillo ai tuoi amici. Anzi no. Mi piacciono le sorprese.",
		"La prossima volta prenditela con qualcuno più piccolo. Ce n'è in abbondanza.",
	},
	["race.orc.victory.w09.011"] = {
		"sputa, si pulisce la bocca e si guarda intorno in cerca della prossima cosa, senza fretta.",
		"scuote le braccia per scacciare il formicolio e rivolge al nemico abbattuto un breve cenno di rispetto.",
	},
	["race.orc.victory.w09.012"] = {
		"Il sudore che brucia negli occhi, braccia pesanti come pietra. La paga onesta di un orco.",
		"Dolori dappertutto, ma il cuore batte. Sulla terra rossa lo chiamerebbero un buon giorno.",
		"Lividi, graffi, e la vittoria. Gli orchi sono fatti per giorni così.",
	},
	["race.orc.victory.w09.013"] = {
		"Torna nel Nether. Gli orchi hanno smesso di essere i tuoi cani.",
		"Un demone in meno. Hellscream ne avrebbe riso, dicono a Orgrimmar.",
	},
	["race.orc.victory.w09.014"] = {
		"Se qualcuno ha visto, voglio che si sappia che è sembrato facile. Altrimenti lo racconterò con generosità.",
		"Se nessuno ha visto, peccato. Più tardi la racconterò più grande: si può.",
	},
	["race.orc.victory.w09.015"] = {
		"Sistemato. Dov'è che stavo andando?",
		"Bene. Questa è chiusa. Avanti, si riparte.",
		"Bene. E adesso, dov'è finita la strada?",
	},
	["race.orc.victory.w09.016"] = {
		"Gli anziani di Orgrimmar dicono che la vecchia Orda vinceva le battaglie e perdeva sé stessa. Io ho vinto questa e ho tenuto stretto chi sono. È lo scambio migliore.",
		"Una vittoria che mi lascia uguale a prima. Gli anziani ammettono che l'Orda della loro giovinezza non sempre poteva dirlo.",
	},
	["race.orc.victory.w09.017"] = {
		"Così un orco sistema le cose: senza giri di parole, e per sempre.",
		"Semplice, e chiuso. Nessun altro modo merita questo nome.",
	},
	["race.scourge.battle.w09.001"] = {
		"Avanti, allora! Mi hanno già {g:ucciso|uccisa} avversari migliori di te, e mi sono {g:rialzato|rialzata}!",
		"Tenta pure la sorte! L'ultima cosa che mi ha ammazzato aspetta ancora che io resti a terra!",
		"Vuoi uccidermi? Mettiti in fila. È una fila lunga, e nessuno ci è riuscito come si deve.",
	},
	["race.scourge.battle.w09.002"] = {
		"Occhio. Qualunque cosa rompi, poi tocca a me ricucirla.",
		"Attenzione alle cuciture. Le ho appena fatte rifare.",
		"Dai, mira al cuore. Se lo trovi che fa qualcosa, fammelo sapere.",
	},
	["race.scourge.battle.w09.003"] = {
		"fa ruotare le spalle con un crepitio secco di vecchie giunture e si volta verso lo scontro senza fretta.",
		"piega la testa di lato, la mascella allentata che si assesta in una linea storta, e avanza.",
	},
	["race.scourge.battle.w09.004"] = {
		"Fermati un momento e impara qualcosa: io il morire l'ho già fatto, tu no.",
		"Morire è la parte facile. È rialzarsi dopo che richiede pratica.",
		"Paura? Di te? Ho visto l'altra parte, ed era soprattutto silenzio.",
	},
	["race.scourge.battle.w09.005"] = {
		"Sono {g:stato|stata} troppo a lungo l'arma di qualcun altro. Oggi combatto solo per ordine mio!",
		"Nessuno tira più i miei fili. Ogni colpo che do lo scelgo io, e scelgo te.",
		"Le mie mani si muovono perché glielo dico io. Già questo dovrebbe farti paura.",
	},
	["race.scourge.battle.w09.006"] = {
		"Una volta la paura arrivava prima del nemico. Ora non arriva proprio. Resta solo il lavoro.",
		"Ai vivi arriva prima un'ondata di terrore. A me la testa lucida e le mani fredde. Mi tengo lo scambio.",
	},
	["race.scourge.battle.w09.007"] = {
		"Per la Dama Oscura, e per il mio umore nero!",
		"Questo è per Undercity. Il resto è tutto per me.",
		"Per Sylvanas! Ci ha riscattato la libertà: spendiamone un po' qui!",
	},
	["race.scourge.battle.w09.008"] = {
		"Guardati, ancora al guinzaglio. Io il mio l'ho rosicchiato fino a spezzarlo.",
		"Veniamo dalla stessa tomba. Solo uno dei due se n'è andato con una volontà propria.",
	},
	["race.scourge.battle.w09.009"] = {
		"C'è in me una persona che sarebbe scappata. La tengo in fondo, dove non può intralciare.",
		"Chi ero una volta adesso tremerebbe. Ricordo il tremore meglio della faccia.",
	},
	["race.scourge.battle.w09.010"] = {
		"State indietro, potrebbe diventare sgradevole. Lo sgradevole è la mia specialità.",
		"Preparati. Sto per diventare la cosa peggiore che ti sia capitata questa settimana.",
		"Oh, bene. Speravo proprio che oggi qualcosa ci provasse.",
	},
	["race.scourge.battle.w09.011"] = {
		"fissa il nemico con uno sguardo piatto e immobile, uno sguardo che ha smesso di sussultare da tempo.",
		"si fa del tutto immobile, di un'immobilità che non ha niente di vivo, e poi scatta tutto in un colpo.",
	},
	["race.scourge.battle.w09.012"] = {
		"I morti di Lordaeron hanno la memoria lunga. Vediamo se meriti un ricordo!",
		"Avanti! I morti di Lordaeron non si spaventano facilmente, e non si arrendono mai!",
	},
	["race.scourge.battle.w09.013"] = {
		"Ti avverto: ho appetiti strani, e tu hai un'aria parecchio fresca.",
		"Non agitarti. I morti non sono schizzinosi a tavola, ma le buone maniere le apprezzano.",
	},
	["race.scourge.battle.w09.014"] = {
		"Il dolore mi arriva attutito, come una voce dietro una porta chiusa. Bene. Che bussi pure.",
		"Qualunque cosa faccia male, fa male da lontano. Ne uscirò prima che trovi la strada per entrare.",
	},
	["race.scourge.battle.w09.015"] = {
		"Sono {g:uscito|uscita} strisciando da una tomba per questo secondo tentativo. Non sarai tu ad accorciarlo.",
		"Questa seconda esistenza mi è costata cara. Non finirà per mano tua.",
	},
	["race.scourge.battle.w09.016"] = {
		"Va bene. Facciamola finita: ho posti dove marcire.",
		"Di nuovo? E sia. I morti non hanno altro che tempo, e un po' lo spenderò per te.",
	},
	["race.scourge.battle.w09.017"] = {
		"Per i Reietti! Liberi, e furiosi per questo!",
		"Per i Reietti! Non rispondiamo a nessun padrone, e di certo non a te!",
	},
	["race.scourge.battle.w09.018"] = {
		"Prima si combatte, poi si controlla se manca qualche pezzo. È il metodo dei Reietti.",
		"Se ci lascio un dito, lo metto tra le spese del mestiere.",
		"Cerca di non perdere niente che non potresti ritrovare. Buona regola, per chi è fatto come me.",
	},
	["race.scourge.battle.w09.019"] = {
		"lancia un grido aspro e rantolante che sembra trascinato su da una tomba, e carica.",
		"emette una risata roca e cava, di quelle che fanno indietreggiare i vivi, e si fa sotto.",
	},
	["race.scourge.battle.w09.020"] = {
		"Mi dispiace, davvero. Be', in parte.",
		"Niente di personale. I morti non portano rancore a lungo: dimentichiamo.",
	},
	["race.scourge.lowhp.w09.001"] = {
		"Ah. Quel pezzo reggeva qualcosa.",
		"Qualcosa di importante si è appena staccato. Scoprirò cosa più tardi.",
		"Aspetta, credo fosse il braccio buono.",
	},
	["race.scourge.lowhp.w09.002"] = {
		"Non così. Non mi sono {g:liberato|liberata} a unghiate dalla stretta del Re dei Lich per sfasciarmi in un fosso.",
		"Ho combattuto un re dentro il mio stesso cranio, e ho vinto. Questo è più piccolo. Tieni duro.",
	},
	["race.scourge.lowhp.w09.003"] = {
		"barcolla, qualcosa nell'ossatura scricchiola in modo udibile, e continua ad avanzare lo stesso.",
		"sbanda, con metà delle cuciture strappate, e semplicemente si rifiuta di accorgersene.",
	},
	["race.scourge.lowhp.w09.004"] = {
		"Ti serve di meglio. Sono {g:stato più morto|stata più morta} di così!",
		"Tutto qui? Sono {g:morto|morta} da anni: tu sei appena un fastidio.",
	},
	["race.scourge.lowhp.w09.005"] = {
		"Il dolore è lontano, ma i pezzi sono vicini. Troppo vicini a terra. Su.",
		"Morire di nuovo sarebbe uno spreco della prima volta. Muoviti.",
	},
	["race.scourge.lowhp.w09.006"] = {
		"E va bene! Prenditi il braccio! Il resto me lo tengo!",
		"Qualcuno si ricordi dov'è finito quel pezzo!",
	},
	["race.scourge.lowhp.w09.007"] = {
		"È la mia volontà a tenermi insieme. Per fortuna è testarda.",
		"Resisti, volontà. Hai già battuto un Re dei Lich. Batti anche questo.",
	},
	["race.scourge.lowhp.w09.008"] = {
		"ondeggia come uno spaventapasseri nel vento forte, {g:sorretto|sorretta} da nulla di visibile, e non cade.",
		"si piega sulle ginocchia, poi si raddrizza con l'ostinazione a scatti di chi è già morto una volta.",
	},
	["race.scourge.threat.w09.001"] = {
		"Vattene. Io non ho paura di morire, e tu hai tutte le ragioni per averne.",
		"Sparisci, adesso. I morti sono pazienti, e io aspetterei tutto il tempo che serve.",
		"Vai. Le tue minacce cercano qualcuno che abbia paura delle tombe.",
	},
	["race.scourge.threat.w09.002"] = {
		"Guardami bene. Ti sembro qualcuno che abbia ancora molto da perdere?",
		"Minacciare un cadavere? Coraggioso. Inutile, ma coraggioso.",
		"Prova a spaventarmi. Altri ci hanno provato: pare che la mia faccia si limiti a fissarli.",
	},
	["race.scourge.victory.w09.001"] = {
		"Stai giù. Un po' ti invidio, ed è strano provarlo per un cadavere.",
		"Ecco che se ne va anche l'ultimo filo. Adesso riposerai. Io non ci sono mai {g:riuscito|riuscita} del tutto.",
	},
	["race.scourge.victory.w09.002"] = {
		"Ed ecco perché non si attacca briga con chi è già morto.",
		"La prossima volta prenditela con qualcuno che ha il polso. Ti va meglio.",
		"Lezione imparata, spero: noi non restiamo a terra, tu sì.",
	},
	["race.scourge.victory.w09.003"] = {
		"abbassa lo sguardo sul nemico a terra con un'espressione che non dice niente, poi raddrizza una spalla cadente.",
		"si spolvera le maniche lacere, senza fretta, come se lo scontro fosse stato un piccolo ritardo lungo la strada.",
	},
	["race.scourge.victory.w09.004"] = {
		"Un altro per i Reietti. Contalo, Undercity.",
		"Questo è per il popolo della Dama Oscura. Quel che vinciamo, lo teniamo.",
		"Questo segnatelo per Sylvanas. Le piacciono i conti in ordine.",
	},
	["race.scourge.victory.w09.005"] = {
		"Lo scontro è finito, e il corpo non me lo dice. Devo guardarmi intorno e deciderlo da me.",
		"Dopo, niente in me trema o rallenta. Devo dirmelo io che è finita, come leggere un avviso su un muro.",
	},
	["race.scourge.victory.w09.006"] = {
		"Tutto qui? Mi ha fatto peggio uno spiffero a Undercity.",
		"Finito? L'umidità delle fogne fa più danni.",
		"Questo era lo scontro? Mi ha dato più guai un ginocchio rigido.",
	},
	["race.scourge.victory.w09.007"] = {
		"Ecco il silenzio, tutto per te. Io per ora non ti seguo.",
		"Vai avanti tu. Io ci sono già {g:stato|stata}, e non mi è piaciuto.",
	},
	["race.scourge.victory.w09.008"] = {
		"Finita. Lo ammetto, mi è passata per la testa l'idea di uno spuntino. Che passi oltre.",
		"Finito. Qualcuno di noi a questo punto mangerebbe. Ci sto pensando. Ci penso meno di una volta.",
	},
	["race.scourge.victory.w09.009"] = {
		"resta a lungo sopra il nemico a terra, come se cercasse di ricordare cosa si dovrebbe provare in un momento così.",
		"indugia accanto al corpo, la testa inclinata, con il vago disagio di chi sa fin troppo bene cosa si prova a stare a terra.",
	},
	["race.scourge.victory.w09.010"] = {
		"Vinta con la mia mano, per mia scelta. È una vittoria due volte.",
		"La mia volontà, la mia lotta, la mia vittoria. Scrivetelo sulla mia lapide, se mai ne avrò una.",
		"Ho combattuto perché l'ho scelto e ho vinto per testardaggine. A un Reietto servono tutte e due.",
	},
	["race.scourge.victory.w09.011"] = {
		"Ora vediamo cosa c'è di utile. I morti non sprecano: siamo già stati sprecati abbastanza.",
		"Frugare sul campo, ricucire quel che è strappato, ripartire. La morte mi ha reso {g:ordinato|ordinata}.",
	},
	["race.scourge.victory.w09.012"] = {
		"Ah! Anche da {g:morto|morta}, non ho perso il tocco. Qualunque sia.",
		"Niente male per qualcuno che è stato sottoterra.",
	},
	["race.scourge.victory.w09.013"] = {
		"Ogni scontro che vinco è uno scontro che il Re dei Lich non vince attraverso di me. Tengo il conto.",
		"Un'altra prova che appartengo a me {g:stesso|stessa}. Le colleziono.",
	},
	["race.scourge.victory.w09.014"] = {
		"Fatto. Qualcuno mi passi ago e filo: mi si è aperta una cucitura.",
		"Finito. Nessuno guardi il mio braccio sinistro finché non ci ho messo mano.",
		"Concluso. Se qualcuno trova un'unghia, è mia, e la rivoglio.",
	},
	["race.scourge.victory.w09.015"] = {
		"Riposa. Hai avuto quello che a me non è mai stato concesso: una fine come si deve.",
		"Ecco. Nessun padrone ti sveglierà più. Consideralo un favore da parte di qualcuno della tua stessa specie.",
	},
	["race.scourge.victory.w09.016"] = {
		"si toglie dalla spalla un brandello di qualcosa, lo esamina, decide che non è suo e lo getta via con un colpetto.",
		"nota un filo che pende da una cucitura del braccio e lo rimbocca dentro con lieve fastidio.",
	},
	["race.scourge.victory.w09.017"] = {
		"Buffo. I vivi combattono per restare vivi. Io non so bene per cosa combatto. Per restare me, forse. Basta così.",
		"Vinto di nuovo. I vivi la chiamerebbero sopravvivenza. Per me è più semplice: la volontà è ancora la mia.",
	},
	["race.scourge.victory.w09.018"] = {
		"La tomba ti manda i suoi saluti. Ti sta aspettando.",
		"Vai pure. Saluta il buio da parte mia: ci conosciamo da tempo.",
	},
	["race.troll.battle.w09.001"] = {
		"Per i Darkspear! Vieni a scoprire a cosa servono le braccia lunghe!",
		"Hai messo piede a portata di un troll. Passo sbagliato.",
		"Il popolo di Sen'jin non arretra. Fatti avanti, allora!",
	},
	["race.troll.battle.w09.002"] = {
		"Ah! Finalmente qualcosa da fare con le mani.",
		"Bene, bene. Cominciavo ad annoiarmi, e un troll annoiato è peggiore compagnia di uno arrabbiato.",
		"Vieni, balla con me. Conduco io.",
	},
	["race.troll.battle.w09.003"] = {
		"Respira piano. La prima mossa lasciala all'altro: nella giungla, chi caccia aspetta sempre.",
		"Calma. La rabbia fa rumore, e nella giungla chi fa rumore viene mangiato.",
	},
	["race.troll.battle.w09.004"] = {
		"scopre le zanne e lancia un grido di guerra acuto e vibrante, che arriva lontano.",
		"si distende in tutta la sua altezza da battaglia, le lunghe membra sciolte e pronte, gli occhi ridotti a fessure.",
		"fa ruotare le spalle una volta e sorride, come sorride un troll quando l'attesa è finalmente finita.",
	},
	["race.troll.battle.w09.005"] = {
		"Darkspear! Testa alta, zanne in fuori!",
		"Per Sen'jin, e per Vol'jin dopo di lui!",
		"Darkspear! Facciamo vedere come combatte la tribù di Vol'jin!",
	},
	["race.troll.battle.w09.006"] = {
		"Hai attaccato briga con un troll. Qualcuno avrebbe dovuto avvertirti.",
		"Un troll ha un sacco di braccia e di gambe. Non le vedrai arrivare tutte.",
		"Con braccia lunghe così, pensavi di stare fuori portata? Ripensaci.",
	},
	["race.troll.battle.w09.007"] = {
		"Loa, non vi chiedo aiuto. Guardate e basta, e ricordatevi chi era.",
		"Spiriti del mio popolo, tenetemi d'occhio. Se cado, che almeno valga un racconto.",
		"Una parolina svelta ai loa prima del primo colpo. A loro piace essere interpellati per primi.",
	},
	["race.troll.battle.w09.008"] = {
		"D'accordo, chiudiamo in fretta. Il pesce non si cuoce da solo.",
		"Calma. Niente fretta. Ho tutto il giorno e braccia lunghissime.",
	},
	["race.troll.battle.w09.009"] = {
		"mormora a mezza bocca una rapida parola di protezione, più per abitudine che per mojo, e si fa avanti.",
		"sputa una volta di lato, come per dire alla sfortuna di aspettare il suo turno, e avanza.",
	},
	["race.troll.battle.w09.010"] = {
		"Scegliti un posto dove cadere. Ti aiuto io ad arrivarci.",
		"I troll della giungla di Stranglethorn fanno più paura di te, e nemmeno loro mi spaventano.",
		"Avvicinati. Ti prometto che sarà una cosa rapida.",
	},
	["race.troll.battle.w09.011"] = {
		"Eccolo, quel calore sotto la pelle. I troll sono fatti per questo, dicono gli stregoni vudù. Lascialo salire, ma tieni le redini.",
		"Il sangue corre veloce e caldo. Bene. Veloce e caldo, ma non stupido.",
	},
	["race.troll.battle.w09.012"] = {
		"A dirla tutta, speravo che cominciassi tu.",
		"Ah, cerchi guai? I guai sono il mio piatto preferito.",
		"Finalmente! Pensavo che sarebbe passata tutta la giornata senza un po' di divertimento.",
	},
	["race.troll.battle.w09.013"] = {
		"I Darkspear stanno con l'Orda. Questo vuol dire che io sto proprio qui.",
		"Gli orchi di Thrall hanno dato una via d'uscita al mio popolo. Ogni battaglia che affronto, la affronto per questo.",
		"Per l'Orda che ci ha accolti! Avanti!",
	},
	["race.troll.battle.w09.014"] = {
		"si sporge in avanti sulle lunghe gambe, flessuoso come una canna nel vento, poi si fa immobile.",
		"flette le lunghe dita una alla volta, senza mai staccare gli occhi dal pericolo.",
	},
	["race.troll.battle.w09.015"] = {
		"Ridi. Il mio popolo ride quando va a combattere: turba chi sta dall'altra parte, e tiene la paura fuori dalla mia.",
		"Un sorriso prima del primo colpo. Gli stregoni vudù dicono che gli spiriti preferiscono chi ride.",
		"Prima sorridi, poi colpisci. Ai Darkspear piace così, e manda tutti in confusione.",
	},
	["race.troll.battle.w09.016"] = {
		"Va bene. L'hai voluto tu, non io.",
		"Dovevi tirare dritto. Ormai è tardi.",
		"D'accordo. Sbrighiamoci: ho altri posti dove andare.",
	},
	["race.troll.battle.w09.017"] = {
		"Ogni battaglia potrebbe essere quella. I loa sanno quale. Io preferisco non saperlo.",
		"Un tamburo, chissà dove, conta le mie battaglie. Questo non è l'ultimo colpo.",
	},
	["race.troll.battle.w09.018"] = {
		"Il mare di Sen'jin picchia più forte di te, e noi ci andiamo comunque a pescare ogni giorno.",
		"Le onde cercano di rovesciare i troll da prima che tu nascessi. Avanti, provaci.",
	},
	["race.troll.lowhp.w09.001"] = {
		"Ahi. D'accordo, questa l'ho sentita.",
		"Ah... c'è un bel po' di me per terra. Ricrescerà. Probabilmente.",
		"Non ho ancora finito. Ci manca poco, ma i troll sono negati ad arrendersi.",
	},
	["race.troll.lowhp.w09.002"] = {
		"I loa sono vicini. Li sento chinarsi su di me. Non ancora. Non ancora.",
		"Freddo ai margini. Gli spiriti aspettano in fondo a una lunga spiaggia, e oggi quella spiaggia non la percorro.",
	},
	["race.troll.lowhp.w09.003"] = {
		"Resisti. Dai un attimo alla carne e farà quello che fa la carne dei troll. Resisti e basta.",
		"Ogni respiro compra un po' di guarigione in più. Continua a respirare. Continua a comprare.",
	},
	["race.troll.lowhp.w09.004"] = {
		"barcolla, una lunga mano premuta sulla ferita, e in qualche modo sorride ancora.",
		"cade su un ginocchio, poi si rialza spingendo sulle lunghe gambe, zanne scoperte contro il dolore.",
		"ondeggia paurosamente, sanguinando senza ritegno, e pianta i piedi come se il terreno {g:gli|le} dovesse qualcosa.",
	},
	["race.troll.lowhp.w09.005"] = {
		"Adesso l'hai fatta grossa. Un troll ferito è il peggior tipo di troll!",
		"Credi che io sia {g:finito|finita}? È adesso che i troll diventano pericolosi!",
		"Fammi sanguinare, certo. Poi guarda cosa fa il sangue al mio carattere!",
	},
	["race.troll.lowhp.w09.006"] = {
		"Sen'jin non è scappato davanti alla sua fine, dicono gli anziani. Ma non è nemmeno andato a cercarla. Togliti di qui.",
		"Spiriti, se state contando, contate piano.",
		"Non su questa terra, loa. Chiedetemelo di nuovo in un posto più bello.",
	},
	["race.troll.lowhp.w09.007"] = {
		"Questo ha fatto male. Rifallo e vedi cosa succede.",
		"D'accordo, mi hai cavato un po' di sangue. Vuoi anche una ciotola?",
	},
	["race.troll.threat.w09.001"] = {
		"Occhio. I troll ridono fino al momento in cui smettono di ridere.",
		"Vattene adesso, finché sorrido ancora.",
		"Conosco uno stregone vudù che farebbe carte false per una testa rimpicciolita nuova. Continua pure.",
	},
	["race.troll.threat.w09.002"] = {
		"I Darkspear sono sopravvissuti a peggio di te. Indietro.",
		"Guarda queste zanne. Ora ripensaci.",
		"Un altro passo e conosci il troll con cui gli anziani spaventano i bambini.",
	},
	["race.troll.victory.w09.001"] = {
		"Ed ecco come si fa. Qualcuno prende appunti?",
		"Ah! Non mi è servito nemmeno il secondo fiato.",
		"Il prossimo! Ah. Non c'è un prossimo. Peccato.",
	},
	["race.troll.victory.w09.002"] = {
		"I loa possono prenderselo. Spero che lo trattino con più gentilezza di me.",
		"Finita. Non ci dico niente sopra. Gli spiriti non hanno bisogno delle mie parole per trovare la strada.",
		"Riposa, adesso. Qualunque spirito avessi, la lotta non lo trattiene più.",
	},
	["race.troll.victory.w09.003"] = {
		"fa una piroetta su un tallone, le lunghe braccia spalancate, e lancia una risata squillante.",
		"si pulisce le mani e rivolge a chi è caduto un inchino scanzonato.",
		"getta indietro la testa e ride, le zanne che luccicano.",
	},
	["race.troll.victory.w09.004"] = {
		"Vittoria dei Darkspear! Qualcuno se lo scriva!",
		"Un'altra per la tribù. Vol'jin ci farebbe un bel sorriso.",
		"Per il popolo di Sen'jin! Così chiudiamo i conti.",
	},
	["race.troll.victory.w09.005"] = {
		"Finita. Qualunque cosa mi abbia tolto, sta già tornando, piano piano.",
		"Fatto. Il corpo ronza un po', come quando è impegnato a ripararsi.",
	},
	["race.troll.victory.w09.006"] = {
		"Dovevi prendertela con qualcuno più basso.",
		"Lezione imparata, spero. Peccato che non potrai metterla in pratica.",
		"Dovevi restartene a casa. Ovunque sia la casa di una cosa come te.",
	},
	["race.troll.victory.w09.007"] = {
		"Un bel combattimento. I cacciatori della giungla ringraziano la preda. Non so se questa conti come preda, ma grazie lo stesso.",
		"I cacciatori del mio popolo ringraziano ciò che uccidono. Un'abitudine da tenere, ovunque si combatta.",
	},
	["race.troll.victory.w09.008"] = {
		"Combattere mette fame a un troll. Vincere gliene mette ancora di più.",
		"E questa è fatta. Qualcuno ha un pesce? Lo scambio con un racconto.",
		"Bel lavoro. Ora, dove lo trova un troll un fuoco e qualcosa da metterci sopra?",
	},
	["race.troll.victory.w09.009"] = {
		"Il sangue canta ancora. Gli ci vuole un momento per capire che non è rimasto nessuno da combattere.",
		"Calma, calma. È finita. La parte selvaggia di me ci mette sempre di più a sentirlo.",
	},
	["race.troll.victory.w09.010"] = {
		"si accovaccia per un momento accanto a chi è caduto e mormora una parola troppo bassa per essere udita, poi si rialza.",
		"traccia un piccolo segno per terra con un dito, poi lo cancella col tallone.",
	},
	["race.troll.victory.w09.011"] = {
		"I Darkspear mantengono le promesse fatte all'Orda. Questa era una di quelle.",
		"Thrall può stare tranquillo. Be'. Un po' più tranquillo.",
		"Un altro debito con l'Orda di Thrall saldato fino all'ultimo.",
	},
	["race.troll.victory.w09.012"] = {
		"L'impero Gurubashi combatteva per il sangue e per Hakkar. Io combatto per poter tornare a casa a mangiare. Le mie ragioni mi piacciono di più.",
		"I miei antenati avrebbero preso un trofeo. Io prendo fiato e vado avanti. I tempi cambiano, anche per i troll.",
	},
	["race.troll.victory.w09.013"] = {
		"Dovevi muoverti più in fretta.",
		"Hai combattuto bene. Non abbastanza, ma bene.",
		"Bel tentativo. Davvero. Non scherzo.",
	},
	["race.troll.victory.w09.014"] = {
		"Ho imparato qualcosa. Soprattutto su dove non mettermi.",
		"Ogni battaglia affila la prossima. Un troll che smette di imparare finisce come trofeo sulla parete di qualcuno.",
		"Questo mi ha insegnato qualcosa. Gli renderò l'onore di ricordarmelo.",
	},
	["race.troll.victory.w09.015"] = {
		"Un graffio. Guarda bene: già sparito.",
		"Mi hai lasciato un segno. Dagli un minuto e non avrai lasciato nemmeno quello.",
	},
	["band.b60.battle.w10.001"] = {
		"Avanti. Ho avuto una lunga strada per prepararmi a te.",
		"Prenditi il tuo tempo. Ho anni di pratica da spendere qui.",
		"Cominciamo. Preferirei non dedicarti tutta la strada.",
	},
	["band.b60.battle.w10.002"] = {
		"E va bene. Dimostrami che valevi il conto del fabbro.",
		"D'accordo. Cerca di non rovinarmi niente: le riparazioni costano care, di questi tempi.",
		"Tu e io, dunque. Uno dei due sta per pentirsene, e io ho fatto i compiti.",
	},
	["band.b60.battle.w10.003"] = {
		"Respira. Leggilo. Ogni scontro ti dice come finirà, se ascolti presto.",
		"Contagli le abitudini. Tutto ciò che combatte ne ha qualcuna.",
		"Piano. Lascia lavorare gli anni.",
	},
	["band.b60.battle.w10.004"] = {
		"entra nello scontro con l'economia di una lunga pratica, senza sprechi.",
		"affronta il nemico senza una parola, ogni gesto ridotto a ciò che funziona.",
		"si muove per {g:primo|prima}, e si muove bene, come chi ha smesso da tempo di tirare a indovinare.",
	},
	["band.b60.battle.w10.005"] = {
		"Fatti sotto! Non sono {g:salito|salita} fin quassù per fermarmi qui!",
		"Dammi tutto. Me ne accorgo, se ti trattieni.",
		"Colpisci forte quanto vuoi. Ci hanno provato cose migliori di te.",
	},
	["band.b60.battle.w10.006"] = {
		"Un altro. Ce n'è sempre un altro, ed è proprio per questo che qui deve esserci qualcuno di forte.",
		"Non per la gloria. Solo perché questa cosa non arrivi mai a qualcuno più debole.",
		"Meglio io che qualcuno appena partito.",
	},
	["band.b60.battle.w10.007"] = {
		"E va bene. Ma gli stivali te li metto in conto.",
		"E sia. In fretta, per favore: ho una lista.",
		"Possiamo farlo in modo efficiente? La giornata è lunga, e la mia lista pure.",
	},
	["band.b60.lowhp.w10.001"] = {
		"Ah! Finalmente qualcosa che sa quello che fa!",
		"Bene. Cominciavo a dimenticare che effetto facesse.",
		"Eccoti. Mi chiedevo quando sarebbe cominciato lo scontro vero.",
	},
	["band.b60.lowhp.w10.002"] = {
		"Male. Non il peggio. Ho imparato la differenza, e adesso è tutto.",
		"Calma. Il panico è per chi non c'è mai finito così dentro.",
		"Colpo duro. Va bene. Ragiona, non agitarti.",
	},
	["band.b60.lowhp.w10.003"] = {
		"barcolla, poi pianta i piedi con l'ostinazione di chi ha fatto troppa strada per cadere proprio qui.",
		"sanguina, respira e non cede di un passo.",
	},
	["band.b60.threat.w10.001"] = {
		"Pensa bene con chi stai attaccando briga. Poi scegline uno più piccolo.",
		"Guarda quanto è consumato questo equipaggiamento e chiediti come ci è arrivato.",
		"Non ti conviene. Te lo dico per cortesia.",
	},
	["band.b60.victory.w10.001"] = {
		"Sistemato. La lunga strada non si accorcia da sola.",
		"Ecco fatto. Avanti con la lunga lista.",
		"Finita. Rattoppo il graffio e vado avanti.",
	},
	["band.b60.victory.w10.002"] = {
		"Pulito. Anni fa mi sarebbe costato tutto quello che avevo.",
		"Non c'è stata partita. Ricordo un tempo in cui ci sarebbe stata.",
		"Facile, e non fingerò che lo sia sempre stato.",
	},
	["band.b60.victory.w10.003"] = {
		"abbassa la guardia solo dopo una lunga occhiata al caduto, con la prudenza di chi ha visto i morti rialzarsi.",
		"controlla il corpo, i dintorni e il proprio equipaggiamento, in quest'ordine, per lunga abitudine.",
		"si allontana dal nemico abbattuto ed è già con la testa al prossimo.",
	},
	["band.b60.victory.w10.004"] = {
		"Chiederei una vera sfida, ma in questo mondo di solito risponde un drago.",
		"Benissimo. Qualcuno può segnarsi che è andata bene? Non succede sempre.",
		"Finita, e neanche un graffio nuovo. Segnatelo sul calendario.",
	},
	["band.b60.victory.w10.005"] = {
		"Un altro nemico finito per mano mia. Il conto ha smesso da tempo di significare qualcosa, e questo mi preoccupa più del conto.",
		"È finita. Cerco ancora di accorgermi di ognuno; il giorno in cui non lo farò, qualcosa in me sarà morto prima.",
		"Finita. Ognuno riceve ancora da me un attimo di silenzio.",
	},
	["band.b60.victory.w10.006"] = {
		"La prossima volta mandate qualcosa che abbia sentito parlare di me.",
		"Che lo si racconti ovunque si radunino quelli come te.",
	},
	["ctype.beast.battle.w10.001"] = {
		"Tutto denti e niente buone maniere. Va bene, oggi sono dello stesso umore.",
		"Non sono cibo. Chiariamolo subito.",
		"Pasto sbagliato. Molto sbagliato.",
	},
	["ctype.beast.battle.w10.002"] = {
		"È il tuo territorio, lo so. Lo attraverso lo stesso.",
		"Lo segni, lo difendi, lo perdi. Così il selvatico tiene i suoi confini.",
	},
	["ctype.beast.battle.w10.003"] = {
		"Non mi odia. Ha solo deciso, più in fretta di qualunque persona, che sono un pericolo.",
		"Niente rancore in quegli occhi. Solo i conti semplici della fame.",
	},
	["ctype.beast.battle.w10.004"] = {
		"si abbassa all'altezza della bestia, occhi negli occhi, in attesa del primo balzo.",
		"resta immobile un battito più a lungo della bestia, e la lascia venire.",
	},
	["ctype.beast.battle.w10.005"] = {
		"Sì, sì, denti grandissimi. Ne ho già visti, di denti.",
		"Ringhia, soffia, fai quel che sai fare. Ho sentito di peggio davanti a una taverna.",
	},
	["ctype.beast.battle.w10.006"] = {
		"Le bestie non bluffano. Quando arriva, arriva dritta e tutta insieme. Preparati al tutto insieme.",
		"Questa non fa finte. Guarda come sposta il peso.",
	},
	["ctype.beast.battle.w10.007"] = {
		"Avanti, allora! Fammi vedere per cosa ti ha fatto il selvatico!",
		"Denti in fuori? Bene. Non facciamo finta che sia una chiacchierata.",
	},
	["ctype.beast.battle.w10.008"] = {
		"Ti avrei girato intorno, se me l'avessi lasciato fare.",
		"Niente rancore. Tanto in te non c'è posto per queste cose.",
	},
	["ctype.beast.battle.w10.009"] = {
		"Più vecchia di ogni strada, questa lite: qualcosa con i denti, qualcosa con una volontà, e un solo pezzo di terra.",
		"Denti contro ingegno. La lotta più vecchia che ci sia.",
	},
	["ctype.beast.battle.w10.010"] = {
		"Tu annusi me, io annuso te. Nessuno dei due ci fa una gran figura.",
		"Senti quest'odore? Sono io, non il pranzo.",
	},
	["ctype.beast.battle.w10.011"] = {
		"Tu hai la velocità, io ho la testa. Vediamo quale delle due conta.",
		"Veloce, eh? Veloce non vuol dire furbo.",
	},
	["ctype.beast.battle.w10.012"] = {
		"legge l'acquattarsi della bestia, la molla che si carica, e si toglie da dove intende atterrare.",
		"regge lo sguardo fisso della bestia senza distogliere gli occhi.",
	},
	["ctype.beast.battle.w10.013"] = {
		"Ogni bestia crede che la terra sotto le zampe sia sua. Questa, magari, ha pure ragione.",
		"Crede che questo pezzo di terra sia suo. Forse lo è davvero.",
	},
	["ctype.beast.lowhp.w10.001"] = {
		"Quello sui tuoi denti è il mio sangue. Che maleducazione.",
		"Non sono ancora la cena! Smetti di apparecchiare!",
		"{g:Masticato|Masticata} sì, {g:inghiottito|inghiottita} no.",
	},
	["ctype.beast.lowhp.w10.002"] = {
		"Adesso sente l'odore del sangue. Spingerà di più. Non mostrarle la schiena.",
		"Mai voltarsi e scappare davanti a una bestia. È lì che comincia davvero.",
	},
	["ctype.beast.lowhp.w10.003"] = {
		"Sanguinare non vuol dire essere vinti. Vieni a imparare la differenza!",
		"A brandelli sì, a terra no!",
	},
	["ctype.beast.lowhp.w10.004"] = {
		"preme una mano sul morso e tiene lo sguardo all'altezza di quello della bestia.",
		"sanguina da più di un punto, e ancora non mostra la schiena alla bestia.",
	},
	["ctype.beast.threat.w10.001"] = {
		"Sparisci, {target}. Da mangiare valgo meno dei guai che ti do.",
		"Sciò. Sono duro da masticare e di pessimo umore.",
	},
	["ctype.beast.threat.w10.002"] = {
		"Guardami. Oggi l'animale più grosso sono io.",
		"Fatti indietro. Il tuo istinto lo sa già che non sono una preda.",
	},
	["ctype.beast.victory.w10.001"] = {
		"Più in fretta che ho potuto. Non avevo altro da offrirti.",
		"È finita. Niente più caccia, per te.",
	},
	["ctype.beast.victory.w10.002"] = {
		"Il selvatico non la piangerà. Presto qualcos'altro si prenderà il suo pezzo di terra.",
		"Il suo posto non resterà vuoto. Nel selvatico non succede mai.",
	},
	["ctype.beast.victory.w10.003"] = {
		"si pulisce le mani e si allontana dalla carcassa, il fiato ancora corto.",
		"cerca morsi e graffi, ne trova qualcuno, e decide che possono aspettare.",
	},
	["ctype.beast.victory.w10.004"] = {
		"E adesso chi è il predatore? Non rispondere, era una domanda retorica.",
		"Non oggi, creatura. Prova con qualcuno più lento.",
	},
	["ctype.beast.victory.w10.005"] = {
		"Le bestie aprono sempre con la stessa mossa. La prossima non avrà imparato niente da questa.",
		"Sempre lo stesso balzo. L'istinto è onesto, e l'onestà si legge facile.",
	},
	["ctype.beast.victory.w10.006"] = {
		"Guarda qui. Segni di denti. Splendido.",
		"Qualcosa di mio è stato masticato. Scoprirò poi cosa.",
	},
	["ctype.beast.victory.w10.007"] = {
		"Ha lottato come se dopo non ci fosse niente. Per quella bestia, infatti, non c'era.",
		"Tutta quella furia, e adesso solo silenzio. Il selvatico spreca le sue vite.",
	},
	["ctype.beast.victory.w10.008"] = {
		"Denti contro volontà, e sono io ad andarmene sulle mie gambe.",
		"Il selvatico ha mandato il meglio che aveva. Non è bastato.",
	},
	["ctype.beast.victory.w10.009"] = {
		"china il capo un istante sulla bestia, come si saluta un rivale che non ha mai mentito.",
		"lascia passare in silenzio l'ultimo respiro della bestia, poi riparte.",
	},
	["ctype.beast.victory.w10.010"] = {
		"Il cuore corre ancora come se qualcosa lo inseguisse. Strano, cosa ti lascia addosso una bestia.",
		"Ancora sui nervi. Per un po' ogni fruscio sembra fatto di denti.",
	},
	["ctype.beast.victory.w10.011"] = {
		"La fame ti ha dato coraggio. In cambio ti ha tolto la prudenza.",
		"Dovevi tenerti alla larga. L'istinto te l'aveva detto.",
	},
	["ctype.demon.battle.w10.001"] = {
		"Ti nutri di paura. Qui resterai a digiuno.",
		"Hai fame di paura? Da me non ne avrai.",
	},
	["ctype.demon.lowhp.w10.001"] = {
		"Vuoi la mia anima? Vieni a guadagnartela.",
		"Da me non avrai niente. Nemmeno questo.",
	},
	["ctype.demon.victory.w10.001"] = {
		"Torna a casa, demone. Qui nessuno ti voleva.",
		"Qualunque patto ti abbia portato qui, ora non vale più.",
	},
	["ctype.demon.victory.w10.002"] = {
		"L'odore resterà addosso per ore. Si lasciano sempre dietro qualcosa.",
		"Sparito, ma il fetore resta. I demoni non se ne vanno mai puliti.",
	},
	["ctype.dragon.victory.w10.001"] = {
		"Ali chiuse per sempre. Le leggende restino leggende.",
		"Stirpe di drago, e a terra. Qualcuno dovrebbe scriverlo da qualche parte.",
		"Da quaggiù non fai poi tanta paura, eh?",
	},
	["ctype.elemental.battle.w10.001"] = {
		"Niente occhi da leggere, niente faccia da ingannare. Solo materia, e arrabbiata.",
		"Tutta furia e niente testa. Avanti, allora.",
		"Qualunque cosa ti tenga legato qui, io la sciolgo.",
	},
	["ctype.elemental.lowhp.w10.001"] = {
		"Non si stanca e non sanguina. Io faccio tutte e due le cose. Chiudila in fretta.",
		"Lui non si stanca. Io sì. Sbrigati.",
	},
	["ctype.elemental.victory.w10.001"] = {
		"Torna a essere materia e basta.",
		"Ecco. Resta solo ciò di cui eri fatto.",
		"Disfatto. Il mondo può riprendersi i suoi pezzi.",
	},
	["ctype.elemental.victory.w10.002"] = {
		"guarda la forma dell'elementale disfarsi e tornare qualcosa di semplice e innocuo.",
		"aspetta che della creatura non si muova più nulla, poi lascia andare il fiato.",
	},
	["ctype.giant.battle.w10.001"] = {
		"Bene. Attenti ai piedi, attenti alle mani, attenti a tutto.",
		"Ogni tuo passo vale dieci dei miei. Per fortuna sono {g:svelto|svelta}.",
	},
	["ctype.giant.victory.w10.001"] = {
		"È caduto su un bel pezzo di terra. E se l'è presa comoda.",
		"A terra. L'ha sentito perfino il suolo.",
		"Attenti, cade! Scusate, non ho resistito.",
	},
	["ctype.humanoid.battle.w10.001"] = {
		"Questa strada l'hai scelta tu. Puoi ancora sceglierne un'altra.",
		"Ultima occasione: posa tutto e vattene.",
	},
	["ctype.humanoid.battle.w10.002"] = {
		"Hai l'aria di chi ci ha pensato bene. Non è così.",
		"Piano audace. Vediamo se sopravvive all'incontro con me.",
	},
	["ctype.humanoid.battle.w10.003"] = {
		"Una bestia lotta per mangiare. Questo lotta perché qualcuno, a un certo punto, ha deciso così.",
		"Qualunque cosa li abbia portati qui, ormai è tardi per chiederlo.",
	},
	["ctype.humanoid.battle.w10.004"] = {
		"nota come l'avversario tiene l'arma, alta e nervosa, e scivola verso il lato scoperto.",
		"gira lentamente, lasciando che sia l'avversario a decidere troppo presto.",
	},
	["ctype.humanoid.battle.w10.005"] = {
		"Tu hai portato un piano. Io un caratteraccio peggiore.",
		"Fai pure i tuoi piani. Io mi sto già muovendo.",
	},
	["ctype.humanoid.battle.w10.006"] = {
		"Guarda le mani, non le urla. Chi ragiona mente con tutto tranne che con le mani.",
		"Arriva una finta. Quasi sempre fanno una finta, prima.",
	},
	["ctype.humanoid.battle.w10.007"] = {
		"Qualcuno non tornerà a casa. Vediamo chi.",
		"Da qui se ne va uno solo. Preferirei essere io.",
	},
	["ctype.humanoid.battle.w10.008"] = {
		"Oh, bene, uno che ragiona. Le bestie sono così ripetitive.",
		"Finalmente qualcuno che potrebbe sorprendermi.",
	},
	["ctype.humanoid.battle.w10.009"] = {
		"{target}. Sapevi dove stavi andando a cacciarti.",
		"Sapevi quanto costava questa strada. Lo sapevo anch'io.",
	},
	["ctype.humanoid.battle.w10.010"] = {
		"Peggio di qualunque bestia: questo può odiarmi, e ricordarsi il perché.",
		"Le bestie dimenticano. Le persone tengono il conto. Attenzione.",
	},
	["ctype.humanoid.battle.w10.011"] = {
		"coglie un lampo di dubbio nel nemico e non gli dà il tempo di crescere.",
		"serra la mascella mentre l'avversario avanza: non restano parole che cambierebbero qualcosa.",
	},
	["ctype.humanoid.battle.w10.012"] = {
		"Possiamo evitare? No? Va bene.",
		"Mi bastava un cenno di saluto. Decidi tu.",
	},
	["ctype.humanoid.battle.w10.013"] = {
		"In guardia, allora. Non facciamoci perdere tempo a vicenda.",
		"Basta fissarci. Fatti sotto.",
	},
	["ctype.humanoid.lowhp.w10.001"] = {
		"Allora sai quello che fai. Che seccatura.",
		"Qualcuno ti ha addestrato bene. Peccato.",
	},
	["ctype.humanoid.lowhp.w10.002"] = {
		"L'hanno visto. Adesso incalzeranno, come farei io. Non farti trovare dove se lo aspettano.",
		"Sentono la debolezza come qualsiasi bestia. Nascondila.",
	},
	["ctype.humanoid.lowhp.w10.003"] = {
		"Sanguino, sì. Mi arrendo, no.",
		"Ti serve ben altro per mettermi a terra.",
		"Non ancora. Non per mano tua.",
	},
	["ctype.humanoid.lowhp.w10.004"] = {
		"sputa sangue e torna a fronteggiare l'avversario, lo sguardo duro.",
		"arretra di un passo cauto, si guadagna un respiro, e osserva la prossima scelta dell'avversario.",
	},
	["ctype.humanoid.threat.w10.001"] = {
		"Puoi ancora voltarti. Quella porta si chiude presto.",
		"Vattene. Hai la scelta che a una bestia non tocca mai.",
	},
	["ctype.humanoid.threat.w10.002"] = {
		"Pensaci bene, {target}. Tu sei di quelli che possono.",
		"Usa la testa. Serve a questo.",
	},
	["ctype.humanoid.victory.w10.001"] = {
		"Qualcuno gli aveva insegnato a combattere così. Anni di lavoro, spariti in un attimo.",
		"Qualcuno gliel'aveva insegnato. Sprecato, adesso.",
	},
	["ctype.humanoid.victory.w10.002"] = {
		"Questa è chiusa. Avrei preferito parlarne.",
		"Finita. Potevi andartene.",
	},
	["ctype.humanoid.victory.w10.003"] = {
		"abbassa la guardia piano, come se l'avversario a terra potesse ancora cambiare idea.",
		"resta un momento accanto al nemico caduto, riprende fiato, non dice nulla.",
	},
	["ctype.humanoid.victory.w10.004"] = {
		"Buona tattica, pessimo tempismo. La prima parte me la tengo.",
		"Un'apertura furba. Me la prendo io.",
	},
	["ctype.humanoid.victory.w10.005"] = {
		"Ti conveniva startene a casa tua, ovunque fosse.",
		"La prossima volta, scegliti un mestiere più tranquillo.",
	},
	["ctype.humanoid.victory.w10.006"] = {
		"Nessun piacere. Solo il passo successivo della strada, e un peso da portare per un po'.",
		"Nessuna gioia, stavolta. Solo meno rumore.",
	},
	["ctype.humanoid.victory.w10.007"] = {
		"Questo sì che è stato uno scontro. Va riconosciuto: sapevi il fatto tuo.",
		"Onore al merito. Mi hai fatto sudare.",
	},
	["ctype.humanoid.victory.w10.008"] = {
		"allontana con un calcio l'arma caduta prima di ogni altra cosa, abitudine di chi combatte con prudenza.",
		"scosta col piede l'arma dell'avversario, per sicurezza.",
	},
	["ctype.humanoid.victory.w10.009"] = {
		"Una bestia la dimentico prima di cena. Le persone mi restano addosso un po' di più, che lo voglia o no.",
		"Le bestie svaniscono entro cena. Le persone no.",
	},
	["ctype.humanoid.victory.w10.010"] = {
		"Be', questa discussione l'ho vinta io.",
		"La prendo come una resa.",
	},
	["ctype.humanoid.victory.w10.011"] = {
		"Se altri come te stanno guardando: ecco come va a finire.",
		"Il prossimo prenda nota.",
	},
	["ctype.humanoid.victory.w10.012"] = {
		"Le mani almeno sono ferme. Un nemico che ragiona ti svuota più di qualunque artiglio.",
		"Ingegno contro ingegno. Sfinisce.",
	},
	["ctype.mechanical.battle.w10.001"] = {
		"Qualcuno ti ha costruito. Vediamo quanto bene.",
		"Ingranaggi e cattive intenzioni. Cerchiamo il bullone allentato.",
	},
	["ctype.mechanical.victory.w10.001"] = {
		"Rottame. Chissà dove, un ingegnere sta piangendo.",
		"Ha smesso di ticchettare. Bene.",
		"Tutti quei pezzi, e nessuno che servisse a pensare.",
	},
	["ctype.undead.lowhp.w10.001"] = {
		"Non mi unisco a voi. Non oggi, e non così.",
		"Non sono ancora dei vostri!",
	},
	["ctype.undead.lowhp.w10.002"] = {
		"Non ha più niente da perdere. Io sì. Ricordatelo, e muoviti.",
		"Dalla sua parte niente da perdere. Dalla mia, tutto.",
	},
	["ctype.undead.threat.w10.001"] = {
		"Torna nella tua fossa, finché c'è ancora posto.",
		"Sdraiati e resta lì. Ultima offerta.",
	},
	["ctype.undead.victory.w10.001"] = {
		"Giù nella terra, e stavolta niente passeggiate.",
		"La terra ti rivuole. Va'.",
	},
	["ctype.undead.victory.w10.002"] = {
		"Chi l'ha rialzato non gliel'ha mai chiesto. Ai morti nessuno chiede niente.",
		"Non ha mai scelto di camminare. È questo il peggio.",
	},
	["ctype.undead.victory.w10.003"] = {
		"si scosta dai resti e aspetta un momento, per essere {g:sicuro|sicura} che restino fermi.",
		"osserva i resti un respiro più del necessario. Con i morti, si impara.",
	},
}, "base_combat")
