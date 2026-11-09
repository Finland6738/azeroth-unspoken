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
	["battle.w12.cries.001"] = {
		"Ho piantato i piedi. Ti servirà una leva.",
		"Piedi a terra e mento alto. Porta una leva, se vuoi smuovermi.",
		"Ho messo radici. Vai a prendere una leva, ti aspetto.",
	},
	["battle.w12.cries.002"] = {
		"Senti? Ti sembra la voce di chi trema?",
		"Ascolta bene. Ha l'aria di una voce che trema, questa?",
	},
	["battle.w12.cries.003"] = {
		"Incontriamoci a metà strada! La mia metà l'ho già fatta!",
		"A metà strada, allora! La mia parte l'ho percorsa, il resto tocca a te!",
	},
	["battle.w12.cries.004"] = {
		"Passo su passo! Per ognuno che fai, ne faccio uno anch'io!",
		"Tienimi testa passo dopo passo, se ne hai il fegato!",
		"Ti muovi tu, mi muovo io. Un passo per uno, fino in fondo!",
	},
	["battle.w12.cries.005"] = {
		"In piedi e fatevi contare! ...Solo io? Allora contatemi due volte!",
		"Chi resta, si faccia avanti! ...Va bene. Valgo per parecchi.",
	},
	["battle.w12.cries.006"] = {
		"La mia risposta è no! Qualunque fosse la domanda, no!",
		"No! Qualunque cosa tu voglia chiedermi, la risposta è no!",
		"Mettila come vuoi, la risposta non cambia: no!",
	},
	["battle.w12.cries.007"] = {
		"Vuoi questo pezzo di terra? Pagalo palmo a palmo!",
		"Questa terra non è in vendita. E comunque ogni palmo ti costerà caro!",
	},
	["battle.w12.cries.008"] = {
		"Qui! Da questa parte! Sì, sono io che urlo!",
		"Di qua! No, non lì. Qui, dove c'è tutto il baccano!",
		"Da questa parte! Segui il chiasso, sono io!",
	},
	["battle.w12.cries.009"] = {
		"Bene! Era da un pezzo che tenevo da parte questa rabbia!",
		"Finalmente qualcosa su cui sfogare tutta questa collera!",
		"Era ora! Tutta questa rabbia non sapeva dove andare!",
	},
	["battle.w12.cries.010"] = {
		"Qualcuno tenga il conto! Voglio che questa sia ricordata come si deve!",
		"Qualcuno guarda? Bene. Guardate attentamente!",
	},
	["battle.w12.cries.011"] = {
		"Forte e chiaro, perché non ci siano equivoci: io non me ne vado!",
		"Che non ci siano malintesi: io resto, e tu te la sbrighi!",
	},
	["battle.w12.cries.012"] = {
		"Ho una voce e due mani, e stai per conoscerle tutte e tre!",
		"Due mani e una boccaccia. Le conoscerai tutte!",
	},
	["battle.w12.cries.013"] = {
		"Se cado, cadrò urlando!",
		"Comunque vada, nessuno dirà che me ne sono {g:andato|andata} in silenzio!",
		"In silenzio? Mai. Qualunque cosa venga, verrà con un gran rumore!",
	},
	["battle.w12.cries.014"] = {
		"Questo scontro non me lo regala nessuno. Me lo prendo!",
		"Nessuno mi ha dato questa battaglia. Me la prendo io, e lo dico forte!",
	},
	["battle.w12.cries.015"] = {
		"Non mi tiro indietro, non tratto e non mollo prima del tempo!",
		"Niente passi indietro, niente patti, niente resa!",
	},
	["battle.w12.cries.016"] = {
		"Una sfida? Accettata prima ancora che finissi di lanciarla!",
		"Accetto! Qualunque cosa fosse, accetto!",
		"Sfida ricevuta, sfida raccolta, e niente ripensamenti!",
	},
	["battle.w12.cries.017"] = {
		"Hai tracciato una linea. E io ci sto sopra!",
		"Ecco il tuo confine. L'ho appena scavalcato.",
	},
	["battle.w12.cries.018"] = {
		"Raddrizzati! O no, fa' come vuoi: ti affronto a qualunque altezza!",
		"Che tu sia una torre o un sasso, ti affronto lo stesso!",
	},
	["battle.w12.cries.019"] = {
		"Uno o cento, di qualunque stazza: la risposta è la stessa, più in là no!",
		"Quanti che siate, di qualunque taglia: qui ci si ferma!",
	},
	["battle.w12.cries.020"] = {
		"Che la terra ricordi chi l'ha tenuta!",
		"Che il suolo serbi memoria di chi non ha ceduto!",
	},
	["battle.w12.cries.021"] = {
		"Fino all'ultima oncia di me!",
		"Fino all'ultima goccia, e anche un po' oltre!",
		"Tutto quello che sono, fino all'ultimo briciolo!",
	},
	["battle.w12.cries.022"] = {
		"Ti avverto una volta, a voce alta. Di cortesia non ne resta altra.",
		"Ecco il mio unico avvertimento. Poi basta con le buone maniere!",
	},
	["battle.w12.cries.023"] = {
		"C'è qualcuno qui vicino che dorme? Scusate! Sarà rumoroso!",
		"Chiedo scusa a tutte le orecchie nei paraggi! Non sarà una cosa silenziosa!",
	},
	["battle.w12.cries.024"] = {
		"Tutta questa strada per poi fermarmi davanti a te? Scordatelo!",
		"Ho camminato troppo per farmi fermare qui!",
		"Con tutta la strada che ho alle spalle, credi che mi fermi proprio qui?",
	},
	["battle.w12.cries.025"] = {
		"Ogni livido che mi fai te lo restituisco con gli interessi!",
		"Lasciami un livido e te lo ripago, interessi compresi!",
	},
	["battle.w12.cries.026"] = {
		"Una volontà, due mani, nessuna ritirata!",
		"Due mani, una volontà, e nessuna via di fuga!",
	},
	["battle.w12.cries.027"] = {
		"Coraggio, {g:sciocco|sciocca}! ...Parlavo a me, non a te.",
		"Fatti forza, {g:testone|testona}! ...Dicevo a me {g:stesso|stessa}.",
		"Su la testa, {g:fifone|fifona}! ...Scusa, ce l'avevo con me.",
	},
	["battle.w12.cries.028"] = {
		"Date l'allarme! Ah, no, aspetta. L'allarme sono io.",
		"Qualcuno dia l'allarme! Lascia stare, la voce ce l'ho io.",
	},
	["battle.w12.cries.029"] = {
		"Semplice come il pane: tu o io, e preferirei io!",
		"Pane al pane, e senza giri di parole: sono qui per affrontarti!",
	},
	["battle.w12.cries.030"] = {
		"Non qui, non oltre me, non finché posso alzare una mano!",
		"Di qui non passa niente, finché ho una mano da alzare!",
	},
	["battle.w12.cries.031"] = {
		"Sulla mia sola parola, e su nient'altro, mi oppongo a te!",
		"Sulla parola di nessuno, se non la mia, mi schiero contro di te!",
	},
	["battle.w12.cries.032"] = {
		"Ho ancora troppo da fare per fermarmi qui per te!",
		"Ho un mucchio di cose da fare, e nessuna aspetta te!",
		"Ho le giornate piene, io. Dovrai trovarti un buco!",
	},
	["battle.w12.cries.033"] = {
		"Hai un grido tutto tuo? Sentiamolo! Il mio è più forte!",
		"Rispondi! Urla, ringhia, sibila, fa' quello che sai fare! Io lo farò più forte!",
		"Fai il verso che fai. Poi senti il mio!",
	},
	["battle.w12.cries.034"] = {
		"Non risparmiarti per riguardo a me! Io di certo non mi risparmio!",
		"Dai tutto quello che hai. Io non mi tengo niente!",
	},
	["battle.w12.cries.035"] = {
		"Ultima occasione per andartene! ...No? Bene. Non volevo che lo facessi.",
		"Torna indietro finché puoi! ...No? Speravo proprio in questa risposta.",
	},
	["battle.w12.cries.036"] = {
		"Guadagnatelo! Qualunque cosa tu voglia da me, guadagnatela tutta!",
		"Qui niente è gratis! Ogni briciola che prendi dovrai meritarla!",
	},
	["battle.w12.cries.037"] = {
		"Il primo colpo è mio! ...O tuo. Non sono {g:schizzinoso|schizzinosa}!",
		"Il primo colpo a chi lo vuole! Non ci tengo!",
	},
	["battle.w12.cries.038"] = {
		"Ho le mani ferme e il carattere no! Scegli tu cosa preferisci incontrare!",
		"Mani ferme, pazienza corta. Le avrai entrambe!",
	},
	["battle.w12.cries.039"] = {
		"Senti come sbatacchia la mia roba? È il rumore di me che non scappo!",
		"Tutto questo fracasso? Sono io che non me la do a gambe!",
	},
	["battle.w12.cries.040"] = {
		"Qualunque cosa tu cerchi, dovrai passare da me!",
		"Tutto quello che vuoi oltre questo punto passa prima da me!",
		"Vuoi passare? La strada passa per me!",
	},
	["battle.w12.cries.041"] = {
		"Hai appena finito la mia pazienza. Tutta, in un colpo!",
		"Ecco, la pazienza è finita. Ora ti tocca quello che viene dopo!",
	},
	["battle.w12.cries.042"] = {
		"Segnatevi il posto! Sta per succedere qualcosa da ricordare!",
		"Ricordati di questo posto. Ho intenzione di renderlo famoso!",
	},
	["battle.w12.cries.043"] = {
		"Preparati, perché io lo sono già!",
		"Hai finito di prepararti? Non importa. Io ho finito!",
		"Prenditi tutto il tempo che vuoi. Io sono a posto da un pezzo!",
	},
	["battle.w12.cries.044"] = {
		"Che lo sappia chiunque sia a portata d'orecchio: non ho tremato!",
		"Che si senta lontano: io non arretro!",
	},
	["battle.w12.cries.045"] = {
		"Denti in mostra e collera al massimo! Il chiasso l'hai voluto tu!",
		"Ghigno da {g:matto|matta} e voce doppia! Ecco!",
	},
	["battle.w12.cries.046"] = {
		"Vince chi urla di più! ...Non funziona così? Troppo tardi, ho già cominciato!",
		"Ho deciso che vince chi grida più forte. Obiezioni? Alzate la voce!",
	},
	["battle.w12.cries.047"] = {
		"Qualcuno deve mettersi di traverso. Tocca a me!",
		"Qualcuno deve dire di no. Mi offro io, e a voce alta!",
		"Serviva un muro. Piacere, eccomi!",
	},
	["battle.w12.cries.048"] = {
		"Meglio far chiasso da folli che tacere da vigliacchi! Eccomi!",
		"Dammi pure del folle: ma del folle che si fa sentire!",
	},
	["battle.w12.cries.049"] = {
		"Questo è stato il tuo errore! E questa è la mia risposta!",
		"Hai fatto la tua mossa. Ecco la mia replica, forte e chiara!",
	},
	["battle.w12.cries.050"] = {
		"Scappare non l'ho mai imparato. Troppo tardi per cominciare!",
		"Fuggire non è mai stato il mio forte. Combattere, invece!",
	},
	["battle.w12.cries.051"] = {
		"{g:Sveglio|Sveglia}, {g:arrabbiato|arrabbiata} e proprio qui!",
		"Ben {g:sveglio|sveglia}, di pessimo umore, e proprio davanti a te!",
	},
	["battle.w12.cries.052"] = {
		"Non sarò io a battere ciglio per {g:primo|prima}!",
		"Battere ciglio per {g:primo|prima}? Non io. Mai io!",
	},
	["battle.w12.cries.053"] = {
		"Hai svegliato qualcosa che dovevi lasciar dormire!",
		"Pessima idea, stuzzicarmi! Pessima davvero!",
		"Dovevi lasciarmi in pace! Ormai è tardi!",
	},
	["battle.w12.cries.054"] = {
		"Chi è qui intorno, sia testimone: la sfida è arrivata, e io ho risposto!",
		"Sia noto a tutti: c'è stata una sfida, e io ho risposto presente!",
	},
	["battle.w12.cries.055"] = {
		"Prima il grido, poi lo scontro. Così si è sempre fatto.",
		"Il grido viene prima, lo scontro dopo: è l'ordine più antico.",
	},
	["battle.w12.cries.056"] = {
		"Avevo pronto un grido di guerra migliore. Questo dovrà bastare: AH!",
		"Mi ero {g:preparato|preparata} qualcosa di solenne. È uscito un «EHI!»",
	},
	["battle.w12.cries.057"] = {
		"Ovunque tu stia andando, ci sono io di mezzo!",
		"Qualunque fosse il tuo piano, io sono la parte che non avevi previsto!",
	},
	["battle.w12.cries.058"] = {
		"Adesso basta! Ora mi senti!",
		"Basta così! Tocca a me farmi sentire!",
		"Fine del silenzio! Senti un po' questa!",
	},
	["battle.w12.cries.059"] = {
		"Ho paura di un sacco di cose. Tu non sei nella lista!",
		"Di cose che mi spaventano ce ne sono tante. Dovrai impegnarti di più!",
	},
	["battle.w12.cries.060"] = {
		"Ascoltate, voi che potete: io resto in piedi, e non mi inginocchio!",
		"Non mi inginocchierò. Che lo senta chiunque abbia orecchie!",
	},
	["battle.w12.cries.061"] = {
		"Di fronte o di sbieco, provaci come ti pare!",
		"Da qualunque lato tu venga, mi troverai di fronte!",
		"Davanti, di fianco, fa lo stesso: io sono qui!",
	},
	["battle.w12.cries.062"] = {
		"Questo momento si merita un grido. Ecco il mio!",
		"Un momento così merita un ruggito come si deve! Ecco!",
	},
	["battle.w12.cries.063"] = {
		"I dubbi a dopo! Adesso sono {g:tutto|tutta} certezza e rumore!",
		"Niente ripensamenti! Solo primi pensieri, e pure rumorosi!",
	},
	["battle.w12.cries.064"] = {
		"Cercavi guai? I guai sono qui, e gridano!",
		"Volevi grane? Eccole, e fanno un baccano!",
	},
	["battle.w12.cries.065"] = {
		"Una volta, chiaramente, perché resti detto: non cederò!",
		"Lo dico ad alta voce, così mi vincola: non cedo!",
		"Ad alta voce, così non si torna indietro: io tengo!",
	},
	["battle.w12.cries.066"] = {
		"Interrompi i miei pensieri? Che maleducazione! Eccotene uno ad alta voce!",
		"Stavo pensando! Adesso sto urlando! Colpa tua!",
	},
	["battle.w12.cries.067"] = {
		"Niente nascondigli, niente fughe, niente sussurri! Eccomi, a piena voce!",
		"Allo scoperto, e senza farne un segreto! Qui!",
	},
	["battle.w12.cries.068"] = {
		"Se questa è la via difficile, allora via difficile sia!",
		"La via difficile, dunque! Di quella facile non mi sono mai {g:fidato|fidata}!",
	},
	["battle.w12.cries.069"] = {
		"Fa' che ne valga la pena! Odio sprecare un urlo come si deve!",
		"Vali il chiasso che faccio? Non ruggisco per niente!",
	},
	["battle.w12.cries.070"] = {
		"Hai bussato! Rispondo! Ad alta voce!",
		"Bussa a questa porta e vedi chi viene ad aprire!",
		"Qualcuno ha bussato? Ecco chi apre!",
	},
	["battle.w12.cries.071"] = {
		"Ah! Finalmente una conversazione in cui me la cavo!",
		"Era ora, qualcosa che non devo dire con garbo!",
	},
	["battle.w12.cries.072"] = {
		"Collera sciolta e mani pronte! Vediamo!",
		"Via il guinzaglio, tutto quanto! Prendi questo!",
	},
	["battle.w12.cries.073"] = {
		"Ma guarda che stazza! Bene, più difficile mancarti!",
		"Questa sì che è una sfida! Meglio: c'è più roba con cui prendersela!",
	},
	["battle.w12.cries.074"] = {
		"Finalmente qualcosa di degno! Facciamo chiasso!",
		"Finalmente una sfida che merita un grido come si deve!",
	},
	["battle.w12.cries.075"] = {
		"Più forte di me? E io farò più chiasso, e non mollerò!",
		"Mi superi in forza. Non in voce!",
	},
	["battle.w12.cries.076"] = {
		"Più forte di me? Bene. Mi seccherebbe sprecare un grido per meno!",
		"Tu hai la forza, io la faccia tosta. Vediamo!",
	},
	["battle.w12.cries.077"] = {
		"Nessuna vergogna in una sfida piccola. Rispondo per intero!",
		"Sei in svantaggio e ti fai avanti lo stesso? Allora ti meriti il mio grido intero!",
	},
	["battle.w12.cries.078"] = {
		"{target}! Dico a te! Affrontami!",
		"Ehi! Tu! Di qua, e in fretta!",
	},
	["battle.w12.cries.079"] = {
		"Ascoltami, {target}! Adesso te la vedi con me!",
		"Lascia perdere tutto il resto: ora il conto è con me!",
	},
	["battle.w12.cries.080"] = {
		"{target}! Quel nome me lo ricorderò, comunque finisca!",
		"Comunque vada a finire, questo me lo ricorderò!",
	},
	["battle.w12.cries.081"] = {
		"{target}, eh? Bene. Ora so cosa gridare!",
		"Ecco! Adesso so con chi prendermela!",
	},
	["battle.w12.cries.082"] = {
		"Da me! Fate baccano, tutti!",
		"Tutti, con la voce più forte che avete! Che ci sentano arrivare!",
	},
	["battle.w12.cries.083"] = {
		"Gridate con me! Una voce sola, tutti!",
		"Tutti insieme, e forte! Se entriamo, entriamo ruggendo!",
	},
	["battle.w12.cries.084"] = {
		"Grida. Non è per il nemico, è per le gambe, così restano ferme.",
		"Fai rumore. Le gambe ci credono anche quando io no.",
	},
	["battle.w12.cries.085"] = {
		"Un grido è solo coraggio detto ad alta voce prima che cambi idea.",
		"Prima dì la cosa coraggiosa. Il resto di me si adeguerà.",
	},
	["battle.w12.cries.086"] = {
		"Più forte di come mi sento. Tutto il trucco è lì.",
		"Far sembrare la voce più grande di me. Un vecchio trucco, e funziona anche su di me.",
		"Che la voce sia più coraggiosa di me. Lei non sa la differenza.",
	},
	["battle.w12.cries.087"] = {
		"Qualunque cosa mi esca di bocca adesso, che almeno suoni coraggiosa.",
		"Che il primo suono sia coraggioso. Gli altri, come vengono.",
	},
	["battle.w12.cries.088"] = {
		"Niente parole furbe. Una sola, forte, e via.",
		"Lascia stare i discorsi. Un bell'urlo e dentro.",
	},
	["battle.w12.cries.089"] = {
		"Ce l'ho, un grido di guerra, dentro di me. Sarebbe il momento di tirarlo fuori.",
		"Ovunque si sia nascosto il mio grido di guerra, farebbe bene a uscire adesso.",
	},
	["battle.w12.cries.090"] = {
		"Urlare non mi rende più forte. Mi fa dimenticare la paura, che è quasi lo stesso.",
		"L'urlo non colpisce più forte. Tiene solo occupata la paura.",
	},
	["battle.w12.cries.091"] = {
		"Tanto forte che il dubbio non riesca più a sentirsi pensare.",
		"Affoga il dubbio. Ruggiscigli sopra.",
	},
	["battle.w12.cries.092"] = {
		"La mia voce entra per prima. Il resto di me la segue.",
		"Manda avanti il grido, come un esploratore. Poi seguilo.",
		"Il grido fa strada. A me tocca solo stargli dietro.",
	},
	["battle.w12.cries.093"] = {
		"Se devo fare {g:lo sciocco|la sciocca}, almeno a tutto volume.",
		"{g:Sciocco|Sciocca}, forse. Ma {g:rumoroso|rumorosa} di sicuro.",
		"Meglio una follia rumorosa che una silenziosa.",
	},
	["battle.w12.cries.094"] = {
		"Dillo come se ci credessi, e magari ci crederò.",
		"Gridalo come se ne fossi {g:convinto|convinta}. La convinzione arriverà dopo.",
	},
	["battle.w12.cries.095"] = {
		"Troppo tardi per il silenzio. Tanto vale ruggire.",
		"Il silenzio è andato. Meglio riempire il vuoto con qualcosa di feroce.",
		"Il silenzio ha avuto la sua occasione. Adesso, rumore.",
	},
	["battle.w12.cries.096"] = {
		"Annunciarmi, anche se non capirà. Capirò io.",
		"Non serve che sappia il mio nome. Serve a me sentirmelo dire.",
	},
	["battle.w12.cries.097"] = {
		"Un grido pulito. Se di tutto questo resterà qualcosa, che sia quello.",
		"Che il grido sia buono. Potrebbe essere la parte che si ricorda.",
	},
	["battle.w12.cries.098"] = {
		"Fai uscire la rabbia dalla bocca, prima che arrivi alle mani.",
		"La collera esca prima come rumore. Meglio lì che nella presa.",
	},
	["battle.w12.cries.099"] = {
		"I gridi di guerra che conosco sono troppo lunghi, o di qualcun altro. Improvvisa.",
		"Niente gridi presi in prestito. Quello che esce è mio.",
	},
	["battle.w12.cries.100"] = {
		"getta indietro la testa e lancia un grido che arriva lontano.",
		"piega la testa all'indietro e manda avanti un lungo grido.",
	},
	["battle.w12.cries.101"] = {
		"si batte un pugno sul petto e grida qualcosa di feroce, senza parole.",
		"si colpisce il petto due volte e lancia un ruggito.",
	},
	["battle.w12.cries.102"] = {
		"pesta il piede una volta, forte, e ruggisce una sfida.",
		"batte forte un piede a terra e urla all'avversario di farsi sotto.",
		"batte il piede a terra e lancia un verso breve e provocatorio.",
	},
	["battle.w12.cries.103"] = {
		"allarga le braccia, una sfida aperta, e grida all'avversario di provarci.",
		"apre le braccia come a dire «eccomi», e poi lo urla davvero.",
	},
	["battle.w12.cries.104"] = {
		"scopre i denti in un ghigno che è quasi tutto sfida.",
		"mostra i denti e ringhia di rimando, più forte.",
		"arriccia le labbra e ringhia, prima piano, poi a gola spiegata.",
	},
	["battle.w12.cries.105"] = {
		"lancia un urlo che è metà risata e metà sfida.",
		"caccia un grido selvaggio, a metà tra una risata e un guanto di sfida.",
		"ride forte, e a metà strada la risata diventa una sfida.",
	},
	["battle.w12.cries.106"] = {
		"urla una parola sola, e somiglia moltissimo a un «no».",
		"scaglia contro l'avversario una parola breve. Non è una parola gentile.",
	},
	["battle.w12.cries.107"] = {
		"invita l'avversario a farsi avanti con due dita piegate e un grido.",
		"fa segno all'avversario con un dito e lancia un insulto allegro.",
	},
	["battle.w12.cries.108"] = {
		"alza il mento e chiama fuori l'avversario, a voce abbastanza alta da farsi sentire lontano.",
		"si mette in posizione, il mento alto, e lancia una sfida che non trema.",
	},
	["battle.w12.cries.109"] = {
		"caccia un urlo roco che non lascia dubbi su quel che succederà.",
		"manda un grido ruvido, e con quello lo scontro è cominciato.",
	},
	["battle.w12.cries.110"] = {
		"alza una mano aperta, poi la chiude a pugno con un grido.",
		"mostra il palmo all'avversario, poi lo stringe, urlando.",
	},
	["battle.w12.cries.111"] = {
		"si raddrizza in tutta la sua altezza e si annuncia all'avversario.",
		"si fa più {g:alto|alta} che può e chiama a voce chiara e ferma.",
	},
	["battle.w12.cries.112"] = {
		"lascia uscire la sfida in un solo grido, rauco e furioso.",
		"mette tutto in un unico urlo furibondo.",
	},
	["battle.w12.cries.113"] = {
		"batte le mani una volta, secco come una porta sbattuta, e chiama l'avversario.",
		"batte un colpo di mani, forte, e grida all'avversario di sbrigarsi.",
	},
	["battle.w12.cries.114"] = {
		"sorride e grida qualcosa di poco adatto alle persone educate.",
		"urla una sfida che nessuno ripeterebbe a tavola.",
	},
	["battle.w12.cries.115"] = {
		"ruggisce, più forte di quanto chiunque lì vicino si sarebbe aspettato.",
		"lascia andare un ruggito molto più grande di quanto serva.",
	},
	["battle.w12.dread.001"] = {
		"Ho paura, e resto qui. Le due cose stanno insieme.",
		"Paura, sì. Andarmene, no.",
		"Spaventarmi mi spavento, ma non mi muovo da qui. Buffo, eh?",
	},
	["battle.w12.dread.002"] = {
		"Mi fai paura. Non cambia niente.",
		"Mi fai paura, sì. Eppure eccomi qua, no?",
		"Sì, mi spaventi. I piedi però non si spostano di un dito.",
	},
	["battle.w12.dread.003"] = {
		"Le ginocchia hanno votato per andarsene. Voto respinto.",
		"Gambe, vi sento. Richiesta respinta.",
		"Le ginocchia vorrebbero filarsela. Le ginocchia non decidono.",
	},
	["battle.w12.dread.004"] = {
		"Se questo dev'essere il mio ultimo scontro, farà rumore.",
		"Se devo finire qui, nessuno potrà dire che sia stato in silenzio.",
	},
	["battle.w12.dread.005"] = {
		"Fortuna, stammi vicino. Più vicino di così.",
		"Fortuna, se sei nei paraggi, questo sarebbe il momento giusto.",
		"C'è un po' di fortuna avanzata? La prenderei adesso, grazie.",
	},
	["battle.w12.dread.006"] = {
		"Comunque vada, che qualcuno se lo ricordi: non ho girato le spalle.",
		"Qualcuno se lo segni: da qui non mi ha mosso nessuno.",
	},
	["battle.w12.dread.007"] = {
		"Piano, adesso. Nessuno va nel panico. Men che meno io.",
		"Calma. Calma. L'ho detto, calma, o no?",
		"Niente panico. A quanto pare, la calma qui la porto io.",
	},
	["battle.w12.dread.008"] = {
		"Non so se da te me ne andrò sulle mie gambe. Scopriamolo.",
		"Non so dire se uscirò da questa in piedi. Vediamo.",
	},
	["battle.w12.dread.009"] = {
		"Senza paura? No. Solo qui.",
		"Nessun eroe. Solo qualcuno che non se n'è andato.",
		"Impavido? Macché. Presente, però.",
	},
	["battle.w12.dread.010"] = {
		"Luce, spiriti, Madre Terra, chiunque stia ascoltando: un piccolo aiuto.",
		"A chiunque vegli sugli sciocchi come me: guarda bene, adesso.",
	},
	["battle.w12.dread.011"] = {
		"Se urlo, è un grido di battaglia. Ufficialmente.",
		"Qualsiasi urlo tu senta è puramente tattico.",
	},
	["battle.w12.dread.012"] = {
		"La morte aspetti il suo turno. La fila è lunga.",
		"La morte si metta in coda come tutti.",
		"In fila, morte. Non tocca a te.",
	},
	["battle.w12.dread.013"] = {
		"Potrei ancora andarmene. Ricordati che non l'ho fatto.",
		"Sarei in tempo a tirarmi indietro. Scelgo di no.",
		"La via d'uscita è aperta. Non la prendo.",
	},
	["battle.w12.dread.014"] = {
		"Paura, ti presento la mia testardaggine. Non andrete d'accordo.",
		"Paura, questa è la mia cocciutaggine. Vi detesterete.",
	},
	["battle.w12.dread.015"] = {
		"Vorrei tornare ad annoiarmi presto. Prestissimo.",
		"Alla noia: che si sbrighi a tornare.",
	},
	["battle.w12.dread.016"] = {
		"Domanda veloce, prima di cominciare: a chi vanno le mie cose?",
		"Se va male, qualcuno faccia qualcosa di buono con il mio zaino.",
		"Prima di iniziare: non ho ancora deciso a chi lasciare i calzini.",
	},
	["battle.w12.dread.017"] = {
		"Piedi, restate dove vi ho messi.",
		"Fermi, piedi. Voi non andate da nessuna parte.",
		"Piedi, voi restate. È un ordine.",
	},
	["battle.w12.dread.018"] = {
		"D'accordo, vocina che vuole scappare. Preso nota. Ignorata.",
		"Sì, sì, la parte di me che vuole fuggire. Ti ho sentita.",
	},
	["battle.w12.dread.019"] = {
		"Se sarai tu a finirmi, te lo sarai guadagnato.",
		"Farmi fuori ti costerà caro. Questo te lo prometto.",
		"Chiudere i conti con me non sarà a buon mercato. Contaci.",
	},
	["battle.w12.dread.020"] = {
		"Il prezzo per stare qui è la paura. Pagato per intero.",
		"Avere paura è solo la tassa d'ingresso. Saldata.",
	},
	["battle.w12.dread.021"] = {
		"Non sono {g:pronto|pronta}. Nessuno lo è mai. Cominciamo.",
		"A questo non si è mai pronti. Si comincia lo stesso.",
		"Se sono {g:pronto|pronta}? No. Se si comincia? Sì.",
	},
	["battle.w12.dread.022"] = {
		"Dall'altra parte di questo c'è un'ora tranquilla che mi aspetta. La voglio.",
		"Oltre questo scontro c'è un po' di pace. Ho intenzione di riscuoterla.",
	},
	["battle.w12.dread.023"] = {
		"Potrebbe far male. A me, intendo. Andiamo.",
		"Diciamolo: brucerà un po'. Soprattutto a me. Si parte.",
	},
	["battle.w12.dread.024"] = {
		"Chiunque tenga i nomi dei caduti, il mio lo lasci fuori ancora un po'.",
		"A chi conta i caduti: non me. Non adesso.",
		"Se qualcuno tiene il conto dei morti, il mio nome lo salti, per ora.",
	},
	["battle.w12.dread.025"] = {
		"Tu mi fai paura. Scappare me ne fa di più.",
		"Affrontarti mi spaventa. Fuggire mi spaventerebbe peggio.",
		"Scappare mi fa più paura di te. Quindi, eccomi.",
	},
	["battle.w12.dread.026"] = {
		"Tieni duro. La paura passa, tu resti.",
		"Resta lì. La paura se ne andrà prima di te.",
	},
	["battle.w12.dread.027"] = {
		"Che sia una di quelle facili. Per favore.",
		"Per una volta, che sia più semplice di come sembra.",
		"Facile, per favore. Solo stavolta.",
	},
	["battle.w12.dread.028"] = {
		"Potresti farmi fuori. Ma dovrai farlo davvero.",
		"Forse hai la forza per finirmi. Allora guadagnatela.",
		"Sì, sei più forte. Ma la forza il lavoro deve farlo lo stesso.",
	},
	["battle.w12.dread.029"] = {
		"Sei fuori dalla mia portata. Lo so. Sono qui lo stesso.",
		"Più forte di me di parecchio. Ai miei piedi non l'ha detto nessuno.",
	},
	["battle.w12.dread.030"] = {
		"Quello lì è di quelli che mettono fine alla gente. Occhi aperti.",
		"Attenzione. È così che le storie si interrompono.",
		"Roba che chiude la storia alla gente, quella. Attenti.",
	},
	["battle.w12.dread.031"] = {
		"Se cado, non fermatevi per me. Finite il lavoro.",
		"Se dovessi cadere, andate avanti. Guai a voi se vi fermate.",
	},
	["battle.w12.dread.032"] = {
		"Restate vicino. Con qualcuno accanto il coraggio mi viene meglio.",
		"State vicini. Il mio coraggio ama la compagnia.",
	},
	["battle.w12.dread.033"] = {
		"{target}, eh? Mi seccherebbe che fosse l'ultimo nome che imparo.",
		"Ecco con chi ho a che fare. Spero non sia l'ultima cosa che imparo.",
	},
	["battle.w12.dread.034"] = {
		"Mortale, e lo so. Allora che conti qualcosa.",
		"Solo un mortale. Basta e avanza. Che valga qualcosa.",
	},
	["battle.w12.dread.035"] = {
		"Sverrei, ma il momento è pessimo.",
		"Svenire sarebbe comodissimo. Ma non adesso.",
		"Pessimo momento per uno svenimento. Lo rimando a dopo.",
	},
	["battle.w12.dread.036"] = {
		"Il coraggio non è una sensazione. È questo passo. Guarda.",
		"Coraggio? Non ce l'ho. Lo faccio. È diverso.",
		"Non si possiede, il coraggio. Si fa. Così.",
	},
	["battle.w12.dread.037"] = {
		"Non diventerò la storia che si racconta per mettere in guardia.",
		"Non voglio finire come l'esempio di quello che non si fa.",
	},
	["battle.w12.dread.038"] = {
		"Un altro giorno qualunque, dopo questo. Non chiedo altro.",
		"Concedetemi un domani noioso e qualunque. Il desiderio è tutto qui.",
	},
	["battle.w12.dread.039"] = {
		"L'ultimo scontro di chiunque comincia come tutti gli altri. Il guaio è questo.",
		"A nessuno viene detto quale sarà lo scontro finale.",
		"L'ultimo scontro non si annuncia. Comincia e basta, così.",
	},
	["battle.w12.dread.040"] = {
		"La paura fa rumore. Ma il rumore non le dà ragione.",
		"Grida, la paura. Ma gridare non vuol dire avere ragione.",
		"Fare chiasso non è avere ragione. Lei non l'ha mai capito.",
	},
	["battle.w12.dread.041"] = {
		"I coraggiosi sono gente spaventata che si è mossa per prima.",
		"Il coraggio è paura che ha fatto lo stesso un passo avanti.",
	},
	["battle.w12.dread.042"] = {
		"C'è una versione di questa storia in cui non mi rialzo. Non guardarla.",
		"Nei prossimi istanti c'è anche il modo in cui finisce male. Guarda altrove.",
		"In uno dei modi in cui può andare, resto giù. Non pensarci.",
	},
	["battle.w12.dread.043"] = {
		"Tutte le cose che volevo fare mi stanno vicinissime, in questo momento.",
		"Ogni progetto lasciato a metà mi si è appena stretto alle spalle.",
	},
	["battle.w12.dread.044"] = {
		"Avere paura vuol dire solo che mi importa di come finisce.",
		"Paura. Ovvio. Sarebbe strano fregarsene.",
		"Paura, perché conta. Giusto così.",
	},
	["battle.w12.dread.045"] = {
		"La Luce, gli spiriti, la Madre Terra. Almeno uno starà guardando da questa parte.",
		"Ci sono tante potenze, al mondo. Una potrebbe anche voltarsi verso di me.",
		"Elune, i loa, la Luce. Qualcuno, da qualche parte, si annoierà abbastanza da guardare.",
	},
	["battle.w12.dread.046"] = {
		"Se finisce qui, avrei preferito un panorama migliore.",
		"Non è un gran posto per finire. E allora niente fine.",
	},
	["battle.w12.dread.047"] = {
		"Potrei starmene in un posto tranquillo a non fare niente. Un giorno ci starò. Non così.",
		"Un giorno resterò immobile per sempre. Non qui. Non in questo modo.",
	},
	["battle.w12.dread.048"] = {
		"Che la paura serva a qualcosa: a tenermi gli occhi aperti.",
		"E sia, paura. Renditi utile e controlla i lati.",
	},
	["battle.w12.dread.049"] = {
		"Qualunque sia la mia stoffa, sto per scoprirla.",
		"È qui che scopro cosa ho dentro. Che sia qualcosa di buono.",
	},
	["battle.w12.dread.050"] = {
		"Che nei prossimi istanti io sia qualcuno di cui non vergognarmi.",
		"Un piccolo desiderio: non deludermi.",
		"Solo questo: che dopo io possa guardarmi in faccia.",
	},
	["battle.w12.dread.051"] = {
		"Tutto ciò che muore credeva di avere più tempo.",
		"Niente di ciò che cade pensa che il suo tempo sia finito.",
	},
	["battle.w12.dread.052"] = {
		"Forse c'è chi aspetta di vedermi entrare. Non deluderlo.",
		"Se qualcuno mi aspetta, che non aspetti invano.",
	},
	["battle.w12.dread.053"] = {
		"La paura dice il vero sul pericolo. Su di me, mente.",
		"Sul pericolo la paura ha ragione; su cosa farò io, torto.",
	},
	["battle.w12.dread.054"] = {
		"Pensiero strano, proprio adesso: chi se ne accorgerebbe?",
		"Se andasse male, quanto ci vorrebbe prima che qualcuno lo sapesse?",
		"Che cosa va a venirmi in mente: qualcuno ne avrebbe notizia?",
	},
	["battle.w12.dread.055"] = {
		"Vecchia quanto la gente, la paura. E il passo avanti lo è altrettanto.",
		"Da sempre i mortali esitano su quest'orlo. E da sempre lo superano.",
	},
	["battle.w12.dread.056"] = {
		"Ecco il buon senso che se la svigna dalla porta di dietro. I piedi però sono rimasti.",
		"Il buon senso è appena uscito dalla porta. Il resto di me no.",
	},
	["battle.w12.dread.057"] = {
		"Ah. Eccola, la vocina che chiede se sarà questo, l'ultimo.",
		"Ed ecco la domanda sottovoce: sarà questo, lo scontro?",
	},
	["battle.w12.dread.058"] = {
		"Nessuno mi ha promesso che ne uscirò in piedi. Allora me lo prometto da me.",
		"Nessuna garanzia. Pazienza: me la invento io.",
	},
	["battle.w12.dread.059"] = {
		"Della paura mi occupo dopo. Adesso non c'è posto.",
		"Più tardi potrò andare in pezzi. Adesso no.",
		"Metto la paura in lista per dopo. Adesso non ci sta.",
	},
	["battle.w12.dread.060"] = {
		"Strano come il mondo si faccia nitido proprio prima.",
		"Sull'orlo tutto diventa chiarissimo. Ogni minima cosa.",
	},
	["battle.w12.dread.061"] = {
		"Vorrei una vita lunga e noiosa. Questo è d'intralcio.",
		"Una vita lunga, perlopiù noiosa: questo è il piano. Questo scontro no.",
	},
	["battle.w12.dread.062"] = {
		"Il mondo non si ferma per la mia paura. E nemmeno io.",
		"Niente si mette in pausa perché ho paura. Quindi neanch'io.",
		"Nessuno ferma il mondo per chi ha paura. Stagli dietro.",
	},
	["battle.w12.dread.063"] = {
		"Se cado qui, almeno le ginocchia smetteranno di lamentarsi.",
		"Il lato buono del morire: basta mal di schiena. Grazie, passo.",
		"L'unico vantaggio di finire: niente più piedi doloranti. No, grazie.",
	},
	["battle.w12.dread.064"] = {
		"La morte è paziente. Che si eserciti.",
		"Aspetta tutti, la morte. Può aspettare me ancora un po'.",
		"Tutto il tempo che esiste è della morte. Me ne può lasciare un po'.",
	},
	["battle.w12.dread.065"] = {
		"Con la paura tutto accelera, tranne me. Muoviti.",
		"Tutto corre tranne i miei piedi. Muovili.",
	},
	["battle.w12.dread.066"] = {
		"Nessuna vergogna ad avere paura. Solo a lasciarla decidere.",
		"Spaventarsi è permesso. Farsi scegliere da lei, no.",
		"Parlare, la paura può. Scegliere, no.",
	},
	["battle.w12.dread.067"] = {
		"Che il prossimo istante sia gentile. Solo il prossimo.",
		"Un istante benevolo. Poi ne chiederò un altro.",
		"Un istante clemente, nient'altro. A quello dopo ci penso poi.",
	},
	["battle.w12.dread.068"] = {
		"I mortali combattono perché possono perdere. È questo a dargli peso.",
		"Se non potessi cadere, niente di tutto questo avrebbe senso.",
	},
	["battle.w12.dread.069"] = {
		"Questa paura la vedo solo io. E così resta.",
		"La faccia può mentire ancora un po'. La paura è affar mio.",
	},
	["battle.w12.dread.070"] = {
		"Qualunque cosa ci sia dopo la fine, può aspettare. Ho da fare.",
		"Ciò che sta oltre, stavolta, resterà a mani vuote.",
	},
	["battle.w12.dread.071"] = {
		"Calma. Il peggio è l'istante prima. È questo.",
		"Questo pezzo qui, prima che cominci, è il peggiore.",
		"L'istante prima è sempre il più pesante. Eccolo, dunque.",
	},
	["battle.w12.dread.072"] = {
		"Ricorda: qui ci sono per scelta mia, non per forza.",
		"Mi ci hanno portato i miei piedi. Mi fiderò di loro ancora un po'.",
	},
	["battle.w12.dread.073"] = {
		"Ah, il terrore. Non bussa mai.",
		"Il terrore entra senza bussare. Che maleducato.",
	},
	["battle.w12.dread.074"] = {
		"Da ogni scontro qualcuno se ne va sulle sue gambe. Tanto vale che sia io.",
		"Qualcuno ne esce sempre. Mi piace pensare di essere quel qualcuno.",
	},
	["battle.w12.dread.075"] = {
		"Forse è troppo forte per me. Mi aggrappo tutto a quel forse.",
		"Probabilmente è fuori dalla mia portata. Probabilmente non vuol dire di sicuro.",
	},
	["battle.w12.dread.076"] = {
		"Sento quanto sono in svantaggio. Sentirlo non è perdere.",
		"Svantaggio netto. L'ho capito subito. Non vuol dire che sia finita.",
		"Troppo per me, dice ogni istinto. Ma l'istinto non è la sentenza.",
	},
	["battle.w12.dread.077"] = {
		"Quella è roba che mette fine alla gente. E io sono gente. Attenzione.",
		"Avversari così scrivono finali brevi. Non dargli la penna.",
	},
	["battle.w12.dread.078"] = {
		"Se qualcuno di noi cade qui, che non sia perché mi sono {g:bloccato|bloccata}.",
		"Chiunque vada giù, che non sia colpa della mia esitazione.",
	},
	["battle.w12.dread.079"] = {
		"Il mio nome non è ancora inciso da nessuna parte. Teniamo pulita la pietra.",
		"Finora nessuna lapide porta il mio nome. Mi piacerebbe che restasse liscia.",
	},
	["battle.w12.dread.080"] = {
		"Il panico è una porta. Non aprirla.",
		"Il panico è lì, una porta socchiusa. Tienila chiusa.",
		"C'è una porta con scritto panico. Tira dritto.",
	},
	["battle.w12.dread.081"] = {
		"Coraggio per un istante. Poi per quello dopo. Il trucco è tutto qui.",
		"Il coraggio deve durare solo un momento. E poi un altro.",
	},
	["battle.w12.dread.082"] = {
		"Dopo: qualcosa da mangiare, un posto per sedersi. Tienilo stretto.",
		"Cibo e un posto dove sedersi, dopo. Pensa a quello.",
		"Pane e una panca, dall'altra parte. Pensa al pane.",
	},
	["battle.w12.dread.083"] = {
		"Strano quanto sembri piccola una vita, vista da qui.",
		"Una vita intera, e ci sta tutta in questo istante.",
	},
	["battle.w12.dread.084"] = {
		"La paura non combatte al posto mio. Può solo intralciare. Spostala.",
		"Qui, della paura, non me ne faccio niente. Girale intorno.",
	},
	["battle.w12.dread.085"] = {
		"Qualunque cosa venga a prendermi, che mi trovi a faccia a faccia.",
		"Se qualcosa vuole portarmi via, dovrà guardarmi negli occhi.",
	},
	["battle.w12.dread.086"] = {
		"La fortuna non mi deve niente. Glielo chiedo con gentilezza lo stesso.",
		"La fortuna non tiene i conti. Comunque, un piccolo prestito, grazie.",
	},
	["battle.w12.dread.087"] = {
		"Anche gli eroi delle vecchie storie avevano paura proprio qui. Le storie lo tacciono.",
		"Ogni racconto eroico salta questo pezzo, quello in cui l'eroe vorrebbe scappare.",
	},
	["battle.w12.dread.088"] = {
		"Se nel mondo c'è un po' di clemenza in giro, un pizzico potrebbe cadere qui.",
		"Di tutta la misericordia che gira per il mondo, me ne basterebbe una briciola.",
	},
	["battle.w12.dread.089"] = {
		"Odio questo momento. Lo odierò sempre. Eccolo.",
		"Questo istante non mi piacerà mai. Arriva lo stesso.",
	},
	["battle.w12.dread.090"] = {
		"Se cado, che sia con la faccia in avanti.",
		"Se vado giù, che sia di fronte e non con le spalle girate.",
	},
	["battle.w12.dread.091"] = {
		"Troppo tardi per la prudenza. Tanto vale il coraggio.",
		"La saggezza andava usata prima. Adesso resta solo il coraggio.",
	},
	["battle.w12.dread.092"] = {
		"Ci sono troppe cose che non ho fatto perché finisca qui.",
		"Troppo lasciato a metà per fermarsi adesso.",
	},
	["battle.w12.dread.093"] = {
		"Sotto la paura c'è un angolo quieto. Mettiti lì.",
		"Sotto tutto il rumore della paura, un posto fermo. Vai lì.",
		"Sotto, la paura ha un fondo calmo. Appoggia i piedi lì.",
	},
	["battle.w12.dread.094"] = {
		"lancia un'occhiata sola verso la via di fuga, poi più nessuna.",
		"guarda alle proprie spalle una volta soltanto, poi tiene gli occhi avanti.",
	},
	["battle.w12.dread.095"] = {
		"chiude gli occhi per un istante, li riapre e avanza.",
		"stringe forte le palpebre, appena un attimo, e le riapre sullo scontro.",
	},
	["battle.w12.dread.096"] = {
		"arretra di mezzo passo, si ferma, e non ne fa un altro.",
		"cede terreno di un palmo, poi se lo riprende.",
		"ondeggia appena all'indietro, poi si piega in avanti, verso lo scontro.",
	},
	["battle.w12.dread.097"] = {
		"borbotta qualche parola che potrebbe essere un desiderio o un'imprecazione.",
		"dice qualcosa a mezza voce, troppo piano per capire se sia una supplica o un giuramento.",
	},
	["battle.w12.dread.098"] = {
		"sfiora una cinghia sul petto, come fa chi cerca un po' di fortuna.",
		"batte una volta sola sulla fibbia più vicina, come si tocca qualcosa per scaramanzia.",
	},
	["battle.w12.dread.099"] = {
		"si lascia sfuggire un suono breve che potrebbe essere una risata. O forse no.",
		"emette un versetto, metà risata e metà qualcos'altro.",
	},
	["battle.w12.dread.100"] = {
		"resta immobile, poi si costringe a muoversi.",
		"si irrigidisce per un istante, poi spinge avanti i piedi a forza.",
		"si blocca, solo per un istante, e poi si muove lo stesso.",
	},
	["battle.w12.dread.101"] = {
		"alza appena il mento, come si fa prima di una cosa difficile.",
		"solleva il mento e lo tiene alto.",
	},
	["battle.w12.dread.102"] = {
		"si porta due dita alla fronte, un piccolo segno tutto suo, e avanza.",
		"preme un attimo una nocca sulla fronte, un'abitudine privata, e alza lo sguardo.",
	},
	["battle.w12.dread.103"] = {
		"guarda l'avversario come si guarda un salto nel vuoto, e avanza lo stesso.",
		"fissa l'avversario come il ciglio di un dirupo, poi gli va incontro.",
	},
	["battle.w12.dread.104"] = {
		"distende le dita finché non smettono di contrarsi, e si mette in guardia.",
		"apre e chiude le mani finché non obbediscono.",
		"scuote le mani come per liberarle da qualcosa, e si prepara.",
	},
	["battle.w12.dread.105"] = {
		"muove le labbra su una parola sola, senza suono, che non è per nessuno.",
		"dice una parola a nessuno, così piano che quasi non esiste.",
	},
	["battle.w12.dread.106"] = {
		"guarda la terra sotto i piedi come se la misurasse per qualcosa, e distoglie in fretta gli occhi.",
		"fissa il suolo un istante più del necessario, poi rialza lo sguardo.",
	},
	["battle.w12.dread.107"] = {
		"squadra l'avversario da capo a piedi e, per un istante onesto, non muove un muscolo.",
		"prende atto di quanto sia grosso ciò che ha di fronte e, per un attimo, resta solo a guardare.",
	},
	["battle.w12.dread.108"] = {
		"lascia cadere le spalle, come chi posa una paura troppo pesante per combatterci.",
		"abbassa le spalle, scrollandosi di dosso qualcosa di più pesante dell'equipaggiamento.",
	},
	["battle.w12.dread.109"] = {
		"lancia uno sguardo agli altri, come per fissarsene in mente i volti, poi si volta verso il nemico.",
		"dà un'occhiata rapida a ciascun compagno prima di girarsi verso il nemico.",
	},
	["battle.w12.grit.001"] = {
		"Stanchezza, sì. Ma stanchezza non vuol dire resa.",
		"Le gambe sono stanche. Il resto di me non ne è stato informato.",
		"Un conto è essere logori, un altro essere finiti. E io non lo sono.",
	},
	["battle.w12.grit.002"] = {
		"Buttami giù e mi rialzo. Non c'è altro da sapere.",
		"Mi rialzerò ogni volta che mi butti a terra. Conta pure, se ti va.",
		"Finire a terra, per me, è solo una pausa.",
	},
	["battle.w12.grit.003"] = {
		"Non sto urlando. Dovrebbe preoccuparti.",
		"Senti che silenzio? È la parte arrabbiata di me.",
		"Hai notato che ho smesso di parlare? Per te non è un buon segno.",
	},
	["battle.w12.grit.004"] = {
		"Qualcuno deve occuparsi di te. Tanto vale che sia io.",
		"Va fatto, e qui ci sono io.",
		"Qualcuno deve farlo. A quanto pare, quel qualcuno sono io.",
	},
	["battle.w12.grit.005"] = {
		"Ogni passo che vuoi, dovrai strapparmelo.",
		"Questo spazio è mio. Vieni a discuterne, se hai coraggio.",
	},
	["battle.w12.grit.006"] = {
		"Stavo per sedermi. Adesso sono in piedi, e di pessimo umore.",
		"Mi hai rubato una sosta. Vengo a riprendermela.",
		"Mi ero già {g:scelto|scelta} dove sedermi. Al suo posto, adesso, ho un diavolo per capello.",
	},
	["battle.w12.grit.007"] = {
		"Basta. Di spintoni ne ho presi abbastanza.",
		"Questo è l'ultimo spintone che accetto, da chiunque.",
		"Spingi, spingi, spingi. Adesso tocca a me.",
	},
	["battle.w12.grit.008"] = {
		"Prova pure. Di testardaggine ne ho da vendere.",
		"Mettimi alla prova. La cocciutaggine è l'unica cosa che non mi manca mai.",
		"La testardaggine è la mia dote migliore. Stai per conoscerla.",
	},
	["battle.w12.grit.009"] = {
		"Il dovere non chiede se ne ho voglia. E nemmeno tu.",
		"Il momento non l'avrei scelto io. Pazienza: sono qui.",
		"Scomodo, non voluto, e tocca a me. Dentro.",
	},
	["battle.w12.grit.010"] = {
		"Ogni palmo ti costerà fatica.",
		"Qui niente si regala. Io men che meno.",
		"Ogni spanna ha un prezzo, e il prezzo lo decido io.",
	},
	["battle.w12.grit.011"] = {
		"L'hai cominciata tu. Non aspettarti che io lasci perdere.",
		"Un'idea tua, questa lotta. Adesso è anche mia, tutta quanta.",
		"Hai cominciato tu. Adesso io non mollo più.",
	},
	["battle.w12.grit.012"] = {
		"Mi fanno male le ginocchia, la schiena, e vengo avanti lo stesso.",
		"Mi fa male tutto. Meglio: mi tiene {g:sveglio|sveglia}.",
		"Dolori dappertutto. Non abbastanza da fermarmi.",
	},
	["battle.w12.grit.013"] = {
		"Piegami, se ci riesci. Spezzarmi non è in programma.",
		"Mi piego. Non mi spezzo. Impara la differenza.",
		"Ciò che si piega torna su. Guarda.",
	},
	["battle.w12.grit.014"] = {
		"Non mi fermo a metà. Né per te, né per nessun altro.",
		"Le cose a metà non le lascio dietro di me.",
		"Quello che comincio lo porto a termine. Anche questo.",
	},
	["battle.w12.grit.015"] = {
		"Rabbia e calma insieme. Per te, il peggio dei due mondi.",
		"Testa lucida e rabbia piena. Scegli tu quale incontrare prima.",
	},
	["battle.w12.grit.016"] = {
		"Quanto ci vorrà, ci vorrà. Io ho più tempo di te.",
		"Prenditi tutto il tempo che vuoi. Io da qui non mi sposto.",
		"Tirala per le lunghe, se ti va. La pazienza costa meno di quanto credi.",
	},
	["battle.w12.grit.017"] = {
		"Io non me ne vado. Tanto vale cominciare.",
		"Aspettare non mi farà sparire. Datti una mossa.",
		"Io resto dove sono. A te la mossa.",
	},
	["battle.w12.grit.018"] = {
		"A terra ci vado malvolentieri. Tienilo a mente.",
		"Se mi vuoi a terra, dovrai guadagnartelo.",
		"La terra può aspettarmi. Aspetterà parecchio.",
	},
	["battle.w12.grit.019"] = {
		"Troppa testardaggine per cadere, troppa stanchezza per scappare. Resta solo l'avanti.",
		"Per scappare servono forze che non ho. Per lottare, a quanto pare, sì.",
	},
	["battle.w12.grit.020"] = {
		"È il lavoro, e il lavoro non aspetta il momento giusto.",
		"Nessuno ha chiesto se mi andava bene. Il lavoro è il lavoro.",
		"Brontola dopo. Adesso fai il lavoro.",
	},
	["battle.w12.grit.021"] = {
		"Adesso è una questione personale.",
		"Ora è personale. Ricordati che l'hai scelto tu.",
		"Bene. Da qui in poi è una faccenda tra te e il mio caratteraccio.",
	},
	["battle.w12.grit.022"] = {
		"Ogni colpo che metti a segno avrà una risposta. Ognuno.",
		"Colpiscimi pure. Tengo il conto, e restituisco tutto.",
		"Restituisco quel che ricevo, con gli interessi.",
	},
	["battle.w12.grit.023"] = {
		"C'è sempre un ultimo fondo di grinta. L'hai trovato tu.",
		"Raschia il barile e un po' di grinta ci resta. Eccola.",
	},
	["battle.w12.grit.024"] = {
		"Più forte, d'accordo. La forza si stanca. La testardaggine no.",
		"Il peso ce l'hai tu. Io ho la voglia di restare. Vediamo cosa conta.",
		"Più muscoli di me, te lo concedo. Ma i muscoli non sono tenacia.",
	},
	["battle.w12.grit.025"] = {
		"So bene quanto sei più forte di me. Vado lo stesso.",
		"Troppo per me? Forse. I piedi non l'hanno saputo.",
		"Più forte di me. Annotato. Ignorato.",
	},
	["battle.w12.grit.026"] = {
		"Questo sarà un lavoro pesante. Ci entro comunque.",
		"Si preannuncia dura. Le cose dure sono il mio pane.",
		"Lavoro pesante, questo. Spalle, sapete cosa fare.",
	},
	["battle.w12.grit.027"] = {
		"Restate qui con me. Nessuno cede un palmo.",
		"Piantate i piedi, tutti. Ce ne andiamo a lavoro finito, non prima.",
	},
	["battle.w12.grit.028"] = {
		"Se la fatica vi pesa, appoggiatevi a me. Pesa anche a me, e vado avanti.",
		"Stanchezza? Ce l'abbiamo tutti. Restate in piedi.",
	},
	["battle.w12.grit.029"] = {
		"Nessuno arretra finché non arretro io. E non ho intenzione di farlo.",
		"Il primo che cede terreno paga da bere. Non sarò io.",
	},
	["battle.w12.grit.030"] = {
		"I miei piedi sono piantati. Il resto seguirà.",
		"Qui pongo i piedi, e qui restano.",
		"Ho messo radici. Prova a spostare una radice.",
	},
	["battle.w12.grit.031"] = {
		"{target}. Una lunga giornata, e tu sei la fine della mia pazienza.",
		"Con te, il carico è al completo. Tieniti forte.",
	},
	["battle.w12.grit.032"] = {
		"{target}, da me non avrai terreno.",
		"Niente terreno per te, {target}. Neanche un palmo.",
		"Quel che vuoi, non l'avrai a buon mercato.",
	},
	["battle.w12.grit.033"] = {
		"Bene, {target}. Hai svegliato la parte testarda di me.",
		"Hai svegliato la mia parte testarda. Non si riaddormenta facilmente.",
	},
	["battle.w12.grit.034"] = {
		"La pazienza mi è appena finita. Tu eri lì, a portata.",
		"Fine della pazienza. Peccato per te, che passavi di qui.",
	},
	["battle.w12.grit.035"] = {
		"Arrendermi non fa per me.",
		"Mollare non è una cosa che so fare.",
		"Arrendermi? Non ho mai imparato come si fa.",
	},
	["battle.w12.grit.036"] = {
		"I lividi passano. Essersi tirati indietro, no.",
		"Le botte guariscono. Aver ceduto ti resta addosso.",
		"Il dolore passa. Una resa, invece, te la porti dietro.",
	},
	["battle.w12.grit.037"] = {
		"C'è chi mi aspetta. Non sarai tu a trattenermi.",
		"C'è gente che conta su di me. Tu non sei tra loro, quindi fatti da parte.",
	},
	["battle.w12.grit.038"] = {
		"Qualunque cosa tu abbia, la riceverò in piedi.",
		"Tutto quanto, allora. Mi troverai in piedi per ogni pezzo.",
		"Dammi il peggio che hai. Lo incasso senza piegarmi.",
	},
	["battle.w12.grit.039"] = {
		"Spingimi, e scopri cosa spinge indietro.",
		"Spingi pure. Io rispondo.",
		"Mettimi le mani addosso e vedrai quanto ti costa.",
	},
	["battle.w12.grit.040"] = {
		"Preferirei riposare. Riposerò dopo.",
		"Il riposo, dopo. Che bella parola, dopo.",
		"C'è un pisolino che mi aspetta. Dopo.",
	},
	["battle.w12.grit.041"] = {
		"Non mi serve che sia rapido. Mi serve che sia fatto.",
		"Lento o veloce, lo porto a termine.",
	},
	["battle.w12.grit.042"] = {
		"Le buone maniere sono finite. Quel che resta non è educato.",
		"Ci ho provato, con la pazienza. È esaurita.",
	},
	["battle.w12.grit.043"] = {
		"Non ti volterò le spalle. Una promessa che faccio a me {g:stesso|stessa}.",
		"La faccia resta rivolta a te. È una promessa.",
	},
	["battle.w12.grit.044"] = {
		"Mento alto. Nessuna ritirata.",
		"Testa alta, talloni piantati.",
		"Occhi avanti, talloni giù, nessun passo indietro.",
	},
	["battle.w12.grit.045"] = {
		"Sono {g:consumato|consumata}, non {g:finito|finita}.",
		"Un po' di logorio ai bordi. Il cuore della cosa tiene.",
		"Il tessuto è liso, forse. Ma regge.",
	},
	["battle.w12.grit.046"] = {
		"Vuoi una lotta? Te ne do una che non conosce resa.",
		"Bene. In me non troverai cedimenti.",
	},
	["battle.w12.grit.047"] = {
		"Se cado, cado in avanti.",
		"Se dovessi cadere, sarà con la faccia verso di te.",
		"Succeda quel che succeda, le mie spalle non le vedrà nessuno.",
	},
	["battle.w12.grit.048"] = {
		"Non riguarda te. Riguarda il non mollare.",
		"Non ho niente contro di te. È che io le cose non le mollo.",
	},
	["battle.w12.grit.049"] = {
		"Che tu sia più debole non cambia niente. Non faccio le cose a metà.",
		"Scontro più piccolo, stesso impegno. È la mia natura.",
	},
	["battle.w12.grit.050"] = {
		"Lunga o corta, ci sto fino all'ultimo.",
		"Comunque vada, resto fino alla fine.",
	},
	["battle.w12.grit.051"] = {
		"Io i rancori li conservo. Questo lo terrò a lungo.",
		"Da adesso ti porto rancore. E il rancore lo conservo bene.",
		"Complimenti. Sei nella lista delle cose che non perdono.",
	},
	["battle.w12.grit.052"] = {
		"Le ritirate non fanno per me. Le pause, a malapena.",
		"Indietreggiare non è nella mia natura. Purtroppo, nemmeno stare {g:fermo|ferma}.",
	},
	["battle.w12.grit.053"] = {
		"Ho detto che sarei {g:arrivato|arrivata} in fondo. Dirlo era la parte facile.",
		"Le parole costano poco. Restare qui è il pagamento.",
		"La mia parola mi ha {g:portato|portata} fin qui. I piedi faranno il resto.",
	},
	["battle.w12.grit.054"] = {
		"Dovrai staccarmi a forza. Io non mollo la presa.",
		"Afferro e non lascio. Tutta la mia arte è qui.",
		"Scuoti pure. La presa resta.",
	},
	["battle.w12.grit.055"] = {
		"Gambe come corde bagnate. Non importa: mi porteranno.",
		"Tutto pesa. Braccia, occhi, tutto quanto. Vai comunque.",
		"Piombo negli stivali. Cammina lo stesso.",
	},
	["battle.w12.grit.056"] = {
		"Le mie spalle non le vedrà. Non stavolta.",
		"Qualunque cosa sia, vedrà la mia faccia, non i miei talloni.",
	},
	["battle.w12.grit.057"] = {
		"Tieni la rabbia fredda. La rabbia fredda dura.",
		"Che bruci piano, non a fiammata. Il fuoco lento dura di più.",
		"La rabbia calda trabocca. Tienila fredda e ferma.",
	},
	["battle.w12.grit.058"] = {
		"Nessuno lo farà al posto mio.",
		"Questo tocca a me portarlo. Sollevalo.",
		"Il mio carico. Lo sollevo io. Nessun altro.",
	},
	["battle.w12.grit.059"] = {
		"Non contare niente. Vai avanti finché non finisce.",
		"Non pensare alla fine. Pensa al pezzo che viene.",
		"Il prossimo istante. Poi quello dopo. Nient'altro.",
	},
	["battle.w12.grit.060"] = {
		"Ho paura e sono {g:furioso|furiosa}. Vince la furia.",
		"La paura dice vattene. La rabbia dice resta. Ascolto la rabbia.",
	},
	["battle.w12.grit.061"] = {
		"Se devo essere {g:testardo|testarda} su qualcosa, che sia su questo.",
		"Ora la testardaggine. Il buon senso, più tardi.",
		"La testardaggine ha i suoi usi. Eccone uno.",
	},
	["battle.w12.grit.062"] = {
		"Eccolo, il nodo caldo dietro gli occhi. Usalo.",
		"La rabbia, proprio dove l'avevo lasciata. Bene. Puntala avanti.",
	},
	["battle.w12.grit.063"] = {
		"Il corpo presenta reclami. Ricevuti. Respinti.",
		"Ogni articolazione ha qualcosa da dire. Dopo.",
	},
	["battle.w12.grit.064"] = {
		"Non lo voglio. Volere non c'entra.",
		"Nessuno mi ha chiesto cosa volevo. Di solito nessuno lo chiede.",
	},
	["battle.w12.grit.065"] = {
		"Tieni. Solo tieni. Il resto verrà.",
		"Metti radici. Sii la cosa che non si muove.",
		"Resta. Qualunque cosa spinga, resta.",
	},
	["battle.w12.grit.066"] = {
		"Mi resta poco. Per cominciare, poco basta.",
		"Avanzi di forza. Andranno bene gli avanzi.",
		"Anche i fondi si bevono.",
	},
	["battle.w12.grit.067"] = {
		"Più cresce la rabbia, più abbasso la voce. Tienila bassa.",
		"La rabbia che urla si consuma. Quella che aspetta resta.",
	},
	["battle.w12.grit.068"] = {
		"Che stanchezza, tutto questo. Eppure ci entro, come sempre.",
		"Stanchezza fino alle ossa, e ci vado lo stesso. Ovvio.",
	},
	["battle.w12.grit.069"] = {
		"Arrivi quel che arrivi, incassalo a testa alta.",
		"Il primo colpo, prenderlo in piedi. È tutto quello che mi chiedo.",
	},
	["battle.w12.grit.070"] = {
		"Se non io, chi? Va bene. Io.",
		"Potrei andarmene. Non lo farò. È tutto qui.",
	},
	["battle.w12.grit.071"] = {
		"Dormire dopo. Il sonno è un premio per il dopo.",
		"Il letto è lontano. Questo, invece, è qui.",
	},
	["battle.w12.grit.072"] = {
		"Mi hanno stancato le lotte che non scelgo. Allora questa la faccio bene.",
		"Se proprio devo, allora fino in fondo.",
	},
	["battle.w12.grit.073"] = {
		"C'è qualcosa in me che non si inginocchia. Lascia che guidi lui.",
		"Ho una radice testarda, dentro. Appoggiati a quella.",
	},
	["battle.w12.grit.074"] = {
		"Durare più a lungo. Qualunque cosa succeda, durare.",
		"Prima resistere. Tutto il resto dopo.",
	},
	["battle.w12.grit.075"] = {
		"La seccatura è troppa per lasciare spazio alla paura. Che fortuna.",
		"L'irritazione batte la paura. E di irritazione sono {g:pieno|piena}.",
		"Non c'è posto per la paura. Il fastidio ha preso tutto lo spazio.",
	},
	["battle.w12.grit.076"] = {
		"Le promesse non si mantengono da sole.",
		"Tutte le promesse che ho fatto sono qui, alle mie spalle.",
	},
	["battle.w12.grit.077"] = {
		"Mani che tremano, piedi saldi. Basta così.",
		"Che tremino pure le mani. I piedi restano dove sono.",
		"Tremare è permesso. Arretrare no.",
	},
	["battle.w12.grit.078"] = {
		"Stringi i denti. I denti servono a questo.",
		"Mascella serrata, testa decisa. Vai.",
		"Stringi forte e vai.",
	},
	["battle.w12.grit.079"] = {
		"Anche le mani stanche si chiudono a pugno.",
		"Stanchezza non vuol dire vuoto.",
	},
	["battle.w12.grit.080"] = {
		"Che venga. Ho deciso di non lasciarmi smuovere.",
		"La decisione è presa. Ora c'è solo da tenere.",
	},
	["battle.w12.grit.081"] = {
		"Ho più rabbia di quanta dovrei. Va bene, spendila qui.",
		"Troppa rabbia per un giorno solo. Ecco dove metterla.",
	},
	["battle.w12.grit.082"] = {
		"Giusto o no, tocca a me.",
		"Né giusto né facile, ma comunque mio.",
		"Mio, che mi piaccia o no.",
	},
	["battle.w12.grit.083"] = {
		"Costi quel che costi, pago e vado avanti.",
		"Paga il prezzo e prosegui. Si tratta dopo.",
	},
	["battle.w12.grit.084"] = {
		"Si scappa quando non resta niente. E resta parecchio.",
		"Niente più forze? Sbagliato. Guarda meglio: ce n'è in abbondanza.",
	},
	["battle.w12.grit.085"] = {
		"Ogni parte di me vuole sedersi. Quella che decide dice di no.",
		"Il corpo vota per il riposo. La volontà ha il diritto di veto.",
	},
	["battle.w12.grit.086"] = {
		"Contano su di me perché io tenga. E io tengo.",
		"Qualcuno dietro di me ha bisogno che vada bene. Pianta i piedi.",
	},
	["battle.w12.grit.087"] = {
		"Sii la roccia con cui discute l'acqua.",
		"L'acqua spinge, la roccia resta. Sii roccia.",
	},
	["battle.w12.grit.088"] = {
		"Me lo ricorderò. Tutto quanto.",
		"Segnatelo: non dimentico chi ha cominciato.",
		"Ogni sgarbo viene annotato. Qui dentro.",
	},
	["battle.w12.grit.089"] = {
		"È qui che non mi arrendo. Proprio qui.",
		"Se c'è una linea, è questa, e io non la riattraverso.",
	},
	["battle.w12.grit.090"] = {
		"Fame, dolori e nessuna voglia. Perfetto.",
		"Stomaco vuoto, pazienza corta. Brutto miscuglio, per chiunque sia.",
	},
	["battle.w12.grit.091"] = {
		"Spalle indietro. Non mostrare altro che decisione.",
		"Non lasciare appigli. Niente dubbi, niente tentennamenti.",
	},
	["battle.w12.grit.092"] = {
		"raddrizza le spalle come chi si carica un peso tutt'altro che leggero.",
		"serra la mascella e non arretra di un passo.",
		"porta indietro le spalle come per scrollarsi di dosso un cappotto pesante, e resta dov'è.",
	},
	["battle.w12.grit.093"] = {
		"digrigna i denti una volta, piano, e smette di sembrare {g:stanco|stanca}.",
		"lascia cadere la stanchezza dal viso come un mantello posato.",
	},
	["battle.w12.grit.094"] = {
		"si raddrizza piano, ogni dolore rimandato a più tardi.",
		"passa con una spinta da una postura stanca a una pronta.",
	},
	["battle.w12.grit.095"] = {
		"si fa immobile, e quell'immobilità ha tutta l'aria della rabbia.",
		"non dice nulla; la piega della bocca basta e avanza.",
	},
	["battle.w12.grit.096"] = {
		"punta i talloni e si sporge in avanti, verso quel che viene.",
		"abbassa la testa e si butta, {g:testardo|testarda} come un mulo.",
	},
	["battle.w12.grit.097"] = {
		"apre e chiude i pugni, una volta, due, e li tiene chiusi.",
		"chiude entrambe le mani a pugno e le tiene così, senza fretta.",
	},
	["battle.w12.grit.098"] = {
		"si lascia scappare una risata stanca e va avanti lo stesso.",
		"scuote la testa per il tempismo, poi la rialza per andare incontro allo scontro.",
	},
	["battle.w12.grit.099"] = {
		"si massaggia una spalla dolorante, poi se ne scorda del tutto.",
		"scioglie una spalla rigida e si mette in guardia.",
	},
	["battle.w12.grit.100"] = {
		"pianta sull'avversario uno sguardo piatto, senza battere ciglio, e non cede di un palmo.",
		"accoglie l'avversario con uno sguardo che non ha più niente da trattare.",
	},
	["battle.w12.grit.101"] = {
		"abbassa il mento e ci si appoggia, come chi spinge una porta incastrata.",
		"porta avanti una spalla, come se ci fosse da sfondare una porta bloccata.",
	},
	["battle.w12.grit.102"] = {
		"borbotta qualcosa di breve e irripetibile, poi si mette all'opera.",
		"ringhia piano, un suono che non concede nulla.",
	},
	["battle.w12.grit.103"] = {
		"sta un po' più {g:dritto|dritta} di quanto la stanchezza dovrebbe permettere.",
		"si tira su a forza di puro rifiuto.",
	},
	["battle.w12.grit.104"] = {
		"si volta ad affrontare il guaio di petto, senza fretta e senza dubbi.",
		"affronta il guaio di petto, come se farsi da parte non fosse mai stato inventato.",
	},
	["battle.w12.grit.105"] = {
		"annuisce una volta, con aria cupa, come chi accetta una corvée.",
		"accetta lo scontro con un breve cenno, come si accetta una commissione pesante.",
	},
	["battle.w12.grit.106"] = {
		"stringe gli occhi a fessura; il viso intorno resta calmissimo.",
		"assume uno sguardo duro e paziente che non promette nulla di gentile.",
	},
	["battle.w12.grit.107"] = {
		"posa la stanchezza come uno zaino lasciato sulla soglia, e si fa avanti.",
		"mette da parte la fatica come chi si toglie un fardello, e avanza.",
	},
	["battle.w12.measure.001"] = {
		"Lento va bene. È di fretta che si finisce a terra.",
		"Niente fretta sulla prima mossa. Gli errori nascono lì.",
	},
	["battle.w12.measure.002"] = {
		"Un'occhiata al terreno, una sola. Radici, sassi, pendenza. Poi fidati.",
		"Punti molli, punti che cedono: trovali adesso, non a metà.",
		"Sapere cosa c'è sotto i piedi, prima che si metta a dire la sua.",
	},
	["battle.w12.measure.003"] = {
		"Tutto ha un ritmo. Trovo il suo prima che trovi il mio.",
		"Sotto ogni scontro batte un tempo. Prima ascoltalo.",
	},
	["battle.w12.measure.004"] = {
		"Anche aspettare è una mossa. Forse la migliore che ho.",
		"Aspettare conta. Aspettare bene conta il doppio.",
	},
	["battle.w12.measure.005"] = {
		"Silenzio nella testa. Il rumore resti fuori.",
		"Che tutto taccia, tranne questo.",
		"Abbassa il volume del resto del mondo. Solo questo, adesso.",
	},
	["battle.w12.measure.006"] = {
		"Quanti? Dove? Chi si muove per primo? Poi vai.",
		"Contare, piazzare, scegliere. In quest'ordine.",
	},
	["battle.w12.measure.007"] = {
		"Niente sta in equilibrio perfetto. Scopri da che parte pende.",
		"Tutto si appoggia più da un lato. Scopri quale.",
		"Da qualche parte pende. Pende sempre.",
	},
	["battle.w12.measure.008"] = {
		"Non la prima mossa. È la seconda a dire la verità.",
		"Lascia perdere l'apertura. È quello che segue a mostrare cosa c'è di vero.",
		"Le aperture sono vetrina. Aspetta quello che viene dopo.",
	},
	["battle.w12.measure.009"] = {
		"Non spendere tutto all'inizio. Tieni una riserva.",
		"Tieni qualcosa da parte. Gli scontri durano più di quanto sembri.",
	},
	["battle.w12.measure.010"] = {
		"Mani ferme. Il resto può fare quello che vuole.",
		"Le mani stiano quiete. Il resto tremi pure, se gli va.",
		"Tieni calme le mani. Tutto il resto faccia come crede.",
	},
	["battle.w12.measure.011"] = {
		"Cosa c'è alle mie spalle? Bene. Adesso dimenticalo.",
		"Un'occhiata indietro. Niente. Occhi avanti.",
	},
	["battle.w12.measure.012"] = {
		"Non tutti i varchi sono veri. Qualcuno è lasciato lì apposta.",
		"Una porta aperta può essere una trappola. Prima guarda i cardini.",
	},
	["battle.w12.measure.013"] = {
		"Il primo istante non va vinto. Basta non perderlo.",
		"Il primo momento non serve a vincere. Serve a non perdere.",
	},
	["battle.w12.measure.014"] = {
		"Piedi sotto di me, occhi aperti. Il resto sono dettagli.",
		"Appoggio e occhi. Tutto il resto aspetti il suo turno.",
	},
	["battle.w12.measure.015"] = {
		"Chi ha fretta si legge come un libro aperto. Non esserlo.",
		"La fretta ti scrive addosso la prossima mossa. Non regalarla.",
	},
	["battle.w12.measure.016"] = {
		"Tutto in me dice adesso. Non ancora. Non proprio ancora.",
		"Non ancora. Non ancora... Ecco.",
	},
	["battle.w12.measure.017"] = {
		"I passi piccoli tengono l'equilibrio. Quelli lunghi sono per dopo.",
		"Passetti, per ora. Le falcate quando è deciso.",
	},
	["battle.w12.measure.018"] = {
		"Quello che fa due volte lo rifarà una terza. Aspetta la terza.",
		"Le abitudini si vedono al secondo tentativo. Aspetta che si vedano.",
	},
	["battle.w12.measure.019"] = {
		"La rabbia è veloce. La calma, alla lunga, di più.",
		"La rabbia arriva prima, la calma arriva giusta.",
		"La collera corre. La calma arriva.",
	},
	["battle.w12.measure.020"] = {
		"Sciogli la mascella. A denti stretti non pensa bene nessuno.",
		"Mascella morbida, spalle morbide, testa lucida.",
	},
	["battle.w12.measure.021"] = {
		"Un solo compito, adesso: vedere chiaro. Il resto viene dopo.",
		"Prima si guarda. Tutto il resto fa la fila.",
	},
	["battle.w12.measure.022"] = {
		"Ogni scontro ha una forma. Trovane i bordi.",
		"Prima i bordi. Il centro si sistema da solo.",
	},
	["battle.w12.measure.023"] = {
		"Prima il terreno. Chi ha l'appoggio ha il momento dopo.",
		"Un buon appoggio è mezza risposta. Trovalo.",
		"Sistema il terreno, e tutto il resto avrà dove posare.",
	},
	["battle.w12.measure.024"] = {
		"Qualunque cosa succeda, non farti chiudere in un angolo. Tieniti una via.",
		"Lasciarmi spazio. Lasciarmi sempre spazio.",
		"Avere spazio per muoversi vale più di qualsiasi idea brillante.",
	},
	["battle.w12.measure.025"] = {
		"Conta fino a tre. Non a voce alta. Quanto basta per assestarti.",
		"Uno, due, tre. Ecco. A posto.",
		"Una breve conta in testa, e il tremito trova un altro posto dove stare.",
	},
	["battle.w12.measure.026"] = {
		"Non guardare il rumore. Guarda quello che sta zitto.",
		"La parte rumorosa di rado è quella pericolosa.",
		"Chiunque faccia il chiasso, il guaio di solito sta altrove.",
	},
	["battle.w12.measure.027"] = {
		"Più largo. Guarda tutto il campo, non solo la cosa più vicina.",
		"Non fissare. Fissare restringe. Guarda largo.",
	},
	["battle.w12.measure.028"] = {
		"Il piano dura finché non si muove. Va bene, poi ne avrò un altro.",
		"Pianificare quanto basta per sbagliare in modo utile.",
		"Ogni piano incontra la prima mossa e perde. Fanne uno che costi poco.",
	},
	["battle.w12.measure.029"] = {
		"Impara qualcosa. Comunque vada, impara qualcosa.",
		"Occhi aperti. Questa è una lezione, qualunque altra cosa sia.",
	},
	["battle.w12.measure.030"] = {
		"Troppa voglia. Tirala indietro di una tacca. Ecco.",
		"Piano. La smania porta distrazione. Molla un po'.",
	},
	["battle.w12.measure.031"] = {
		"Guarda dove vuole portarmi. Poi vai da un'altra parte.",
		"Se mi vuole lì, io voglio essere ovunque tranne lì.",
	},
	["battle.w12.measure.032"] = {
		"Non sono qui per fare {g:il coraggioso|la coraggiosa}. Sono qui per non sbagliare.",
		"Il coraggio costa poco. Non sbagliare costa di più e rende meglio.",
	},
	["battle.w12.measure.033"] = {
		"Lo scontro mi sta già dicendo qualcosa. Silenzio, e ascolta.",
		"Ogni scontro comincia con una piccola confessione. Stai a sentire.",
	},
	["battle.w12.measure.034"] = {
		"Qualcosa si tradisce sempre. Un lato preferito, un'abitudine, una fretta.",
		"C'è sempre un segnale. Trovalo prima che impari a nascondersi.",
	},
	["battle.w12.measure.035"] = {
		"Non devo essere veloce. Devo essere puntuale.",
		"La velocità è sopravvalutata. Il tempismo è tutto.",
		"La velocità è una vanteria. Il tempismo è un mestiere.",
	},
	["battle.w12.measure.036"] = {
		"Che mi mostri il suo meglio. Così saprò dov'è il soffitto.",
		"Prima il suo sforzo migliore. Poi saprò quanto è alto il soffitto.",
	},
	["battle.w12.measure.037"] = {
		"Cominciare è facile, finire bene no. Pensa alla fine adesso.",
		"Comincia pensando alla fine. Dove voglio trovarmi, quando si ferma?",
	},
	["battle.w12.measure.038"] = {
		"Due cose da sapere: come si muove e come rispondo io. Nient'altro.",
		"Come si muove. Come rispondo. Fine dell'elenco.",
	},
	["battle.w12.measure.039"] = {
		"Con la coda dell'occhio, tutto il resto. C'è sempre un resto.",
		"Occhio ai lati. Quello che hai davanti di rado è tutto.",
		"Il davanti, certo. Ma anche i fianchi. Le sorprese adorano i fianchi.",
	},
	["battle.w12.measure.040"] = {
		"{g:Testardo|Testarda} posso esserlo dopo. Adesso devo essere {g:furbo|furba}.",
		"Prima l'astuzia. La testardaggine è per quando l'astuzia finisce.",
	},
	["battle.w12.measure.041"] = {
		"La prima cosa che fa è quella di cui si fida di più. Prendine nota.",
		"Con cosa apre, di quello si fida. Ricordalo.",
	},
	["battle.w12.measure.042"] = {
		"O il passo lo detto io, o me lo dettano. Preferisco dettarlo io.",
		"Chi detta il passo detta quasi tutto il resto.",
	},
	["battle.w12.measure.043"] = {
		"Mani quiete, piedi quieti, occhi svegli.",
		"Mani immobili, piedi immobili, occhi al lavoro.",
	},
	["battle.w12.measure.044"] = {
		"Non sobbalzare al primo rumore. I rumori mentono.",
		"Il primo rumore di uno scontro non vuol dire niente. Non saltarci sopra.",
	},
	["battle.w12.measure.045"] = {
		"Pensa alla seconda mossa adesso, finché la prima costa poco.",
		"Due mosse avanti. La prima è già in ritardo.",
	},
	["battle.w12.measure.046"] = {
		"La paura vuole una risposta rapida. Lo scontro ne vuole una giusta.",
		"Lo spavento corre. Non devo per forza corrergli dietro.",
	},
	["battle.w12.measure.047"] = {
		"Qualunque cosa costi, che costi per quello che ho scelto, non per quello che mi è sfuggito.",
		"Pagare per ciò che decido, non per ciò che non ho visto.",
	},
	["battle.w12.measure.048"] = {
		"Morbidezza. Un corpo rigido si muove tardi.",
		"La rigidità rende lenti. Via, scrollala di dosso.",
	},
	["battle.w12.measure.049"] = {
		"Su, fammi vedere come ti muovi.",
		"Vediamo prima come ti muovi.",
		"Muoviti. Voglio guardarti mentre lo fai.",
	},
	["battle.w12.measure.050"] = {
		"Nessuna fretta. Ho tutto il tempo che serve.",
		"Prenditi il tuo tempo. Io mi prendo il mio.",
		"Io non ho fretta. Tu sì?",
	},
	["battle.w12.measure.051"] = {
		"Calma. Calma... ecco.",
		"Piano. Piano, adesso. Ora.",
		"Tieni. Tieni... sì.",
	},
	["battle.w12.measure.052"] = {
		"Prima tu. Voglio vedere con cosa apri.",
		"Comincia pure. Mi interessa sapere su cosa conti.",
	},
	["battle.w12.measure.053"] = {
		"Occhio al terreno. Io ci ho già pensato.",
		"Attenzione a dove ti metti. Il mio posto l'ho scelto.",
	},
	["battle.w12.measure.054"] = {
		"D'accordo. Ti ho preso le misure. Cominciamo.",
		"Misure prese. Si comincia.",
	},
	["battle.w12.measure.055"] = {
		"La pazienza a me non costa niente. A te?",
		"Io so aspettare. E tu?",
		"Aspettare è gratis. Vediamo chi se lo può permettere.",
	},
	["battle.w12.measure.056"] = {
		"Aspetta. Aspetta... aspetta.",
		"Non ancora. Ancora un attimo.",
	},
	["battle.w12.measure.057"] = {
		"Calma. Non tu, io. Tu fai pure come ti pare.",
		"Piano, piano. Parlavo con me, non con te.",
	},
	["battle.w12.measure.058"] = {
		"Buon terreno, questo. Me lo tengo.",
		"Questo posto va bene. Lo tengo io.",
		"Appoggio decente. Adesso è mio.",
	},
	["battle.w12.measure.059"] = {
		"Piano e con cura. Vediamo cosa sai fare.",
		"Inizio con prudenza. Prima di fidarmi di qualcosa voglio conoscerti.",
	},
	["battle.w12.measure.060"] = {
		"Ti vedo. Ogni tua mossa.",
		"Oh, ti vedo bene. Fino all'ultimo scatto.",
	},
	["battle.w12.measure.061"] = {
		"Un'occhiata, poi il lavoro.",
		"Prima un'occhiata. Poi si lavora.",
		"Guardato. Adesso si lavora.",
	},
	["battle.w12.measure.062"] = {
		"Prendo quello che viene. Tutto, in ordine.",
		"Una cosa dopo l'altra. L'ordine lo so tenere.",
	},
	["battle.w12.measure.063"] = {
		"Bene. Io so dove sto. E tu?",
		"Il mio terreno lo conosco. E tu il tuo?",
	},
	["battle.w12.measure.064"] = {
		"Mm. Fatti guardare un momento.",
		"Un momento, non muoverti. Sto guardando.",
	},
	["battle.w12.measure.065"] = {
		"Quando vuoi. Io ci sono già.",
		"Quando ti pare. Sono a posto.",
	},
	["battle.w12.measure.066"] = {
		"Io non faccio la prima mossa. Faccio quella giusta.",
		"La prima mossa è tua. Quella giusta è mia.",
	},
	["battle.w12.measure.067"] = {
		"Prudenza. È con la prudenza che si invecchia.",
		"Prudente non vuol dire vigliacco. Vuol dire arrivare a vecchi.",
	},
	["battle.w12.measure.068"] = {
		"Con calma. Niente si decide al primo istante.",
		"Rallenta. Il primo istante non decide niente.",
		"Non serve vincere l'apertura. È solo l'apertura.",
	},
	["battle.w12.measure.069"] = {
		"Hai uno schema. Ce l'hanno tutti. Lo troverò.",
		"C'è uno schema, lì dentro. Dammi un momento.",
		"Gli schemi sono ovunque. Il tuo non ci metterà molto.",
	},
	["battle.w12.measure.070"] = {
		"Voi guardate i lati, io il centro. Dite cosa vedete.",
		"Occhi dappertutto. Chi vede qualcosa lo dica.",
	},
	["battle.w12.measure.071"] = {
		"Nessuno si butti dentro. Lasciamo che ci mostri cosa fa.",
		"Aspettate un momento. Prima impariamo come si muove, poi andiamo.",
	},
	["battle.w12.measure.072"] = {
		"Allargatevi un po'. Un bersaglio solo è un bersaglio facile.",
		"Non state ammucchiati. Ammucchiati si è facili.",
	},
	["battle.w12.measure.073"] = {
		"Roba grossa. Prima impara il suo ritmo, poi mettilo alla prova.",
		"Più grande del solito. Guarda un po', prima di fidarti di una mossa.",
	},
	["battle.w12.measure.074"] = {
		"Più forte di me. Va bene. Anche la forza deve arrivare a segno.",
		"La forza ce l'hai. Vediamo se hai anche il tempismo.",
	},
	["battle.w12.measure.075"] = {
		"Sulla carta sono in vantaggio. Non è un motivo per distrarmi.",
		"Più debole o no, non mi metto a fare le cose a metà.",
	},
	["battle.w12.measure.076"] = {
		"{target}. Guardo come ti porti.",
		"Vedo come ti porti. Mi basta per cominciare.",
	},
	["battle.w12.measure.077"] = {
		"Prima ti imparo. Poi il resto.",
		"Prima si impara. Poi si fa.",
	},
	["battle.w12.measure.078"] = {
		"Bene. Il terreno è mio, il passo pure. A te la mossa.",
		"Il mio passo, il mio terreno. Tocca a te.",
		"Dove e quanto in fretta l'ho scelto io. Il quando lo scegli tu.",
	},
	["battle.w12.measure.079"] = {
		"Non così in fretta. Prima diamoci un'occhiata come si deve.",
		"Piano, lì. Non ha senso correre.",
	},
	["battle.w12.measure.080"] = {
		"Mi stai già dicendo un sacco di cose. Continua così.",
		"Ogni tua mossa mi racconta qualcosa. Grazie.",
	},
	["battle.w12.measure.081"] = {
		"Non badare a me. Sto solo contando.",
		"Fai finta di niente. Sto facendo due conti.",
	},
	["battle.w12.measure.082"] = {
		"Mm. Interessante. Molto bene.",
		"Interessante. E va bene.",
	},
	["battle.w12.measure.083"] = {
		"Terreno fermo, mani ferme.",
		"Il terreno tiene. Io pure.",
	},
	["battle.w12.measure.084"] = {
		"Qualunque cosa tu abbia, fammela vedere. La metto in ordine io.",
		"Tira fuori tutto. Lo smisto man mano che arriva.",
	},
	["battle.w12.measure.085"] = {
		"Terra sotto, occhi avanti, pazienza nel mezzo.",
		"La terra sotto di me, l'avversario davanti, e tempo per entrambi.",
	},
	["battle.w12.measure.086"] = {
		"Attenzione, adesso. Il primo passo nessuno lo fa due volte.",
		"Di inizio ce n'è uno solo. Non sprechiamolo.",
	},
	["battle.w12.measure.087"] = {
		"Un attimo di silenzio. Devo sentirmi pensare.",
		"Sst. Sto pensando.",
	},
	["battle.w12.measure.088"] = {
		"struscia il piede sul terreno, una volta, per sentire quanto tiene.",
		"saggia il terreno con un piede prima di affidargli tutti e due.",
	},
	["battle.w12.measure.089"] = {
		"lancia un'occhiata alle spalle, una sola.",
		"guarda indietro una volta, poi soltanto avanti.",
		"controlla cosa c'è alle spalle con un rapido giro di testa, e chiude la faccenda.",
	},
	["battle.w12.measure.090"] = {
		"si fa immobile, ogni cosa raccolta nell'attesa.",
		"si ferma del tutto, attenzione pura, come una nota tenuta.",
	},
	["battle.w12.measure.091"] = {
		"scuote le mani e poi le lascia pendere, sciolte e pronte.",
		"dà una scrollata alle mani e le lascia quietare.",
		"apre e chiude le mani un paio di volte, poi le lascia tranquille.",
	},
	["battle.w12.measure.092"] = {
		"inclina appena la testa, osservando come si muove l'avversario.",
		"piega il capo di lato e segue con cura il primo movimento dell'avversario.",
	},
	["battle.w12.measure.093"] = {
		"abbassa il mento e si gira un poco di lato, per offrire meno.",
		"si mette di tre quarti, mento basso, concedendo il meno possibile.",
	},
	["battle.w12.measure.094"] = {
		"si sposta di un paio di passi, lo sguardo un attimo a terra, scegliendo dove stare.",
		"sceglie un punto con una rapida occhiata a terra e lo fa suo.",
	},
	["battle.w12.measure.095"] = {
		"muove le labbra senza suono, contando qualcosa che conosce solo {g:lui|lei}.",
		"conta in silenzio, a fior di labbra, gli occhi sull'avversario.",
	},
	["battle.w12.measure.096"] = {
		"aspetta senza fretta che l'avversario si sbilanci.",
		"lascia che sia l'avversario a scoprirsi per primo, e osserva con attenzione.",
		"si trattiene, senza fretta, finché l'avversario non rivela le sue intenzioni.",
	},
	["battle.w12.measure.097"] = {
		"scioglie la mascella con uno sforzo e lascia cadere le spalle.",
		"abbassa le spalle di un dito, e la rigidità se ne va con loro.",
	},
	["battle.w12.measure.098"] = {
		"squadra l'avversario da cima a fondo, come chi stima il prezzo di un cavallo.",
		"rivolge all'avversario un lungo sguardo da intenditore, come un compratore davanti a un mulo.",
	},
	["battle.w12.measure.099"] = {
		"socchiude gli occhi un istante, poi li riapre, limpidi.",
		"sbatte le palpebre una volta, lentamente, e gli occhi che si riaprono sono calmi.",
	},
	["battle.w12.measure.100"] = {
		"stringe una cinghia allentata con uno strattone, senza abbassare lo sguardo.",
		"dà un ultimo strattone a una cinghia: niente deve penzolare.",
		"controlla una fibbia al tatto, senza distogliere lo sguardo.",
	},
	["battle.w12.measure.101"] = {
		"abbraccia in un lungo sguardo il terreno, l'avversario e lo spazio in mezzo.",
		"misura con un'occhiata lo spazio che {g:lo|la} separa dall'avversario.",
	},
	["battle.w12.measure.102"] = {
		"piega appena le ginocchia, per poter andare dove andrà lo scontro.",
		"si abbassa di un soffio sulle ginocchia, per poter partire in ogni direzione.",
	},
	["battle.w12.measure.103"] = {
		"lascia passare il primo istante senza muoversi, a leggerlo.",
		"lascia scorrere un momento senza toccarlo, studiando l'avversario.",
	},
	["battle.w12.measure.104"] = {
		"si strofina le mani, una volta e con energia, e si mette al lavoro.",
		"si scuote la polvere dalle mani e si volta verso l'avversario.",
	},
	["battle.w12.measure.105"] = {
		"segue l'avversario con gli occhi soltanto; il resto è immobile.",
		"insegue l'avversario con lo sguardo e basta, senza muovere nient'altro.",
	},
	["battle.w12.measure.106"] = {
		"aggrotta la fronte, non per rabbia: come davanti a un conto.",
		"corruga la fronte, come se l'avversario fosse una somma da fare.",
		"stringe le labbra, come davanti a un registro che non torna.",
	},
	["battle.w12.measure.107"] = {
		"annuisce piano tra sé, come se qualcosa fosse stato confermato.",
		"fa un piccolo cenno del capo, rivolto a nessuno, e si mette in posizione.",
	},
	["battle.w12.measure.108"] = {
		"guarda a sinistra, guarda a destra, e solo allora guarda l'avversario.",
		"controlla entrambi i lati prima di dedicare all'avversario tutta la sua attenzione.",
	},
	["battle.w12.measure.109"] = {
		"si raccoglie senza fretta, come una parola scelta con cura.",
		"si prende un istante per raccogliersi, senza alcuna fretta visibile.",
	},
	["battle.w12.measure.110"] = {
		"tiene le mani basse e morbide, senza lasciar trapelare nulla.",
		"lascia le mani giù, quiete, e non tradisce niente.",
	},
	["battle.w12.measure.111"] = {
		"guarda per un attimo oltre l'avversario, a quello che c'è dietro, e poi torna a lui.",
		"concede un'occhiata a ciò che sta oltre l'avversario, poi torna a fissarlo.",
	},
	["battle.w12.measure.112"] = {
		"dondola una volta sui piedi, a saggiare l'equilibrio.",
		"ondeggia appena, avanti e indietro, cercando il punto d'equilibrio.",
		"trova il proprio centro con un piccolo spostamento e lo tiene lì.",
	},
	["battle.w12.measure.113"] = {
		"osserva con intensità, cogliendo ogni piccolo movimento prima che finisca.",
		"strizza gli occhi, cogliendo ogni minimo spostamento dell'avversario.",
	},
	["battle.w12.measure.114"] = {
		"non fa la prima mossa, e non ne fa mistero.",
		"resta dov'è e lascia l'apertura all'avversario.",
	},
	["battle.w12.measure.115"] = {
		"raddrizza le spalle e livella lo sguardo.",
		"mette le spalle in squadra e punta uno sguardo fermo sull'avversario.",
	},
	["battle.w12.wit.001"] = {
		"Scusa il disordine. Non aspettavo visite.",
		"Perdona come mi trovi. Nessuno mi aveva annunciato ospiti.",
		"Ospiti? E nessuno ha messo in ordine.",
	},
	["battle.w12.wit.002"] = {
		"Hai un appuntamento? Non ti trovo sull'agenda.",
		"Si riceve solo su appuntamento, temo. Non te l'ha detto nessuno?",
	},
	["battle.w12.wit.003"] = {
		"È per qualcosa che ho detto? Non ho ancora aperto bocca.",
		"Ho detto qualcosa di male? Mi pare proprio di non aver detto niente.",
	},
	["battle.w12.wit.004"] = {
		"Ho detto ad alta voce 'cos'altro può andare storto'. Colpa mia.",
		"Mai chiedersi a voce alta se può andare peggio. Lezione presa.",
		"Qualcuno ha chiesto cosa mai potesse succedere. Io. L'ho chiesto io.",
	},
	["battle.w12.wit.005"] = {
		"rotea gli occhi con tanta convinzione che vale quasi come esercizio.",
		"rotea gli occhi per l'interruzione, poi si mette al lavoro.",
	},
	["battle.w12.wit.006"] = {
		"Ti devo dei soldi? Credo che me lo ricorderei.",
		"Se è per un debito, prima vorrei vedere le carte.",
		"Qualunque cosa ti debba, dev'esserci un errore.",
	},
	["battle.w12.wit.007"] = {
		"La mia fortuna ha dato un'occhiata e se n'è andata prima.",
		"La fortuna è uscita a fare due passi. Mai presente quando arriva il conto.",
	},
	["battle.w12.wit.008"] = {
		"Ah. Qualcuno si offre.",
		"Guarda un po': qualcuno si fa avanti. Nessuno l'aveva chiesto.",
		"Che zelo, farsi avanti così. Quasi commovente.",
	},
	["battle.w12.wit.009"] = {
		"Ero nel bel mezzo di un nulla importantissimo.",
		"Non facevo niente, e lo facevo benissimo. Rovinato tutto.",
		"E dire che il far niente stava andando così bene.",
	},
	["battle.w12.wit.010"] = {
		"Direi che è un piacere. Non lo è, ma lo direi.",
		"{g:Lietissimo|Lietissima}, davvero. Non è vero, ma l'educazione è educazione.",
	},
	["battle.w12.wit.011"] = {
		"Ogni scontro comincia con un piccolo 'oh no' nella mia testa. Tradizione.",
		"Eccolo, il piccolo 'oh no' interiore. Non manca mai.",
	},
	["battle.w12.wit.012"] = {
		"Rapina, faida o passatempo? Lo chiedo per i miei registri.",
		"Rancore, fame o semplice noia? Mi piace tenere il conto.",
		"Per te è lavoro o piacere?",
	},
	["battle.w12.wit.013"] = {
		"alza un dito come per sollevare un'obiezione, poi ci ripensa.",
		"apre la bocca per lamentarsi, la richiude e si mette in guardia.",
	},
	["battle.w12.wit.014"] = {
		"Aspetta, non ero {g:pronto|pronta}. ...Va bene, ora sì. Più o meno.",
		"Un attimo, un attimo, non avevo... no, lascia stare. Prego.",
	},
	["battle.w12.wit.015"] = {
		"Calma. Calma perfetta. Nessuno è mai stato più tranquillo di così.",
		"Tutto a posto. Del tutto, sospettosamente a posto.",
	},
	["battle.w12.wit.016"] = {
		"Accetto l'invito. Con riserva. Molte riserve.",
		"Invito accettato, sotto protesta. Annotalo.",
	},
	["battle.w12.wit.017"] = {
		"Cervello, qualcosa di utile, grazie. Cervello? ...Si improvvisa, allora.",
		"Pensieri, in fila. Pensieri? Spariti. Vado d'istinto.",
	},
	["battle.w12.wit.018"] = {
		"Addio buonumore. Ha avuto vita breve.",
		"E il buonumore se n'è andato. Lo conoscevo appena.",
	},
	["battle.w12.wit.019"] = {
		"Piccole grazie: almeno non sono scale.",
		"Poteva andare peggio. Poteva essere una scala a pioli.",
		"Almeno non è una porta chiusa a chiave. Quelle mi battono sempre.",
	},
	["battle.w12.wit.020"] = {
		"Le presentazioni dopo. Prima le lamentele.",
		"I nomi possono aspettare. Ho una lista di rimostranze da smaltire.",
	},
	["battle.w12.wit.021"] = {
		"Adesso? Davvero? Fra tutti i momenti possibili?",
		"Con tutti i momenti che c'erano al mondo, proprio questo.",
		"Questo minuto? Proprio questo?",
	},
	["battle.w12.wit.022"] = {
		"riserva all'avversario lo sguardo che di solito tocca al sassolino nello stivale.",
		"guarda il guaio come si guarda un sasso nella scarpa: con un disprezzo stanco.",
	},
	["battle.w12.wit.023"] = {
		"È troppo tardi per far finta di non averti visto?",
		"Potrei fingere di non averti notato? Troppo tardi: notato.",
	},
	["battle.w12.wit.024"] = {
		"Chiunque tenga il conto delle mie giornate storte, ne aggiunga una.",
		"Il registro delle mie giornate storte ha appena guadagnato una riga.",
	},
	["battle.w12.wit.025"] = {
		"La mia offerta: te ne vai e io dimentico tutto. Rifiutata? Ne prendo nota.",
		"Condizioni generose: giri i tacchi adesso e io non porto rancore.",
		"Vattene e dirò a tutti che hai vinto tu. Affare fatto?",
	},
	["battle.w12.wit.026"] = {
		"Ti do tre monete di rame se te ne vai. Quattro, se ti sbrighi.",
		"Tre monete di rame se sparisci subito. Nessuno ci sta?",
	},
	["battle.w12.wit.027"] = {
		"Promemoria: smettere di sembrare così avvicinabile.",
		"Devo avere una faccia cordiale. Ci lavorerò su.",
	},
	["battle.w12.wit.028"] = {
		"Mai pensato a un passatempo più tranquillo? Il ricamo, per dire?",
		"Hai mai considerato altri interessi? La ceramica rilassa tantissimo.",
	},
	["battle.w12.wit.029"] = {
		"Hai il senso del tempo. Pessimo, ma ce l'hai.",
		"Tempismo impeccabile. Impeccabilmente pessimo.",
		"Il tuo tempismo è un dono. Un dono maledetto.",
	},
	["battle.w12.wit.030"] = {
		"Quando lo racconterò sarò più {g:alto|alta} e molto più {g:calmo|calma}.",
		"Lo racconterò più coraggioso di com'è stato. Tanto vale cominciare subito.",
	},
	["battle.w12.wit.031"] = {
		"Spero che tu sia in forma. Io per niente.",
		"Hai fatto qualche preparativo? Io nessuno.",
	},
	["battle.w12.wit.032"] = {
		"Ahi. In anticipo. Tanto per dirlo.",
		"Mi porto avanti con le lamentele: ahi.",
	},
	["battle.w12.wit.033"] = {
		"Aria sicura. Aria sicura. Aria... be', un'aria qualsiasi.",
		"Faccia, fai qualcosa di coraggioso. Ecco... più o meno.",
	},
	["battle.w12.wit.034"] = {
		"Non badare alla mia faccia. È quella dei pensieri. E anche quella delle preoccupazioni.",
		"Questa espressione? Concentrazione. Per lo più.",
	},
	["battle.w12.wit.035"] = {
		"Non sono in vena. A quanto pare non cambia niente.",
		"Nessuno ha chiesto se fossi in vena. Nessuno lo chiede mai.",
		"Umore: assente. Rissa: presente. Tipico.",
	},
	["battle.w12.wit.036"] = {
		"Ogni storia decente comincia con la pessima idea di qualcuno.",
		"Le belle storie cominciano con una decisione sbagliata. Questa parte alla grande.",
	},
	["battle.w12.wit.037"] = {
		"Arrivo anche da te. C'è una lista, ma arrivo.",
		"Mettiti in fila con i problemi della settimana. Verso il fondo, mi spiace.",
		"Adesso sei sulla lista. Non è una bella lista.",
	},
	["battle.w12.wit.038"] = {
		"borbotta una lamentela breve e sentita, rivolta a nessuno in particolare.",
		"brontola qualcosa sul tempismo che nessuno dovrebbe sentire.",
	},
	["battle.w12.wit.039"] = {
		"Grido prima io o preferisci cominciare tu?",
		"Chi urla per primo? A me va bene il secondo turno.",
	},
	["battle.w12.wit.040"] = {
		"Se ne esco, mi compro qualcosa di bello.",
		"Sopravvivi, e poi un regalo. Questo è il patto.",
	},
	["battle.w12.wit.041"] = {
		"Nessun preavviso? Nemmeno un colpo di tosse?",
		"Un po' di preavviso sarebbe stato gradito. Un fruscio, qualcosa.",
	},
	["battle.w12.wit.042"] = {
		"E va bene, eccoti lo scontro. Ma tengo il muso dall'inizio alla fine.",
		"D'accordo. Ma sappi che tengo il broncio.",
	},
	["battle.w12.wit.043"] = {
		"Perché sempre io? Ho un cartello sulla schiena?",
		"Ho un cartello sulla schiena, vero? 'Per guai, rivolgersi qui.'",
	},
	["battle.w12.wit.044"] = {
		"Con educazione, se si può. In fretta, se no.",
		"Della cortesia sarebbe gradita. Della brevità, ancor di più.",
	},
	["battle.w12.wit.045"] = {
		"fa un inchino, minimo e molto sarcastico.",
		"rivolge all'avversario un inchino storto e minuscolo, per nulla gentile.",
		"accenna un inchinetto beffardo.",
	},
	["battle.w12.wit.046"] = {
		"Applausi per l'entrata in scena. Molto teatrale.",
		"Bell'ingresso. Un po' eccessivo, ma bello.",
	},
	["battle.w12.wit.047"] = {
		"Magnifico. Alla giornata mancava giusto un disastro.",
		"Bene. Per un attimo ho temuto che le cose filassero lisce.",
		"Splendido. Le cose andavano fin troppo bene.",
	},
	["battle.w12.wit.048"] = {
		"Fammi indovinare: anche tu hai avuto una giornata lunga.",
		"Giornataccia? Pure io. Il mondo è piccolo.",
	},
	["battle.w12.wit.049"] = {
		"Se è un malinteso, questo è il momento di dirlo.",
		"Ci sono speranze che sia un equivoco? Parla adesso.",
	},
	["battle.w12.wit.050"] = {
		"Potrei scappare. Non lo farò. Ma il pensiero me lo tengo in tasca.",
		"La fuga resta un'opzione. Vergognosa. Archiviata per dopo.",
	},
	["battle.w12.wit.051"] = {
		"Se vendi qualcosa, non compro.",
		"No, grazie, non mi serve niente. Qualunque cosa sia.",
	},
	["battle.w12.wit.052"] = {
		"Rivoglio indietro questa interruzione, con gli interessi.",
		"Mi devi un momento di pace. Passo a riscuoterlo adesso.",
		"Quella che hai appena rotto era la mia pace.",
	},
	["battle.w12.wit.053"] = {
		"Qualunque sia il motivo, non ne vale la pena. Ma va bene.",
		"Dubito che convenga a qualcuno. Comunque. Eccolo qua.",
	},
	["battle.w12.wit.054"] = {
		"Niente smorfie. ...Ecco, smorfia fatta.",
		"Faccia seria. Seria. Oh, lascia stare.",
	},
	["battle.w12.wit.055"] = {
		"Un'idea sola in testa, ed è pessima. La uso.",
		"Il mio unico piano è terribile. Ottimo: almeno un piano c'è.",
	},
	["battle.w12.wit.056"] = {
		"Non prenderla sul personale. O prendila pure. Scegli tu.",
		"Personale o no, prendila come ti pare.",
	},
	["battle.w12.wit.057"] = {
		"Mi era stata promessa una passeggiata tranquilla. Da me. Ho mentito.",
		"Chi aveva detto che sarebbe stata una passeggiata in pace? Ah, già. Io.",
		"Una gita tranquilla, mi dicevo. Ingenuità mia.",
	},
	["battle.w12.wit.058"] = {
		"Occhio. Quando mi interrompono divento mordace. In senso figurato. Quasi sempre.",
		"Se mi interrompi divento intrattabile. Ecco, ora lo sai.",
	},
	["battle.w12.wit.059"] = {
		"Questa è la parte in cui te ne vai. Hai perso l'attacco.",
		"Qui dovresti voltarti e andare. No? Con le battute non ci sai fare.",
	},
	["battle.w12.wit.060"] = {
		"Resta in quella posa. Anzi no, mette i brividi.",
		"Posa interessante. Inquietante, ma interessante.",
	},
	["battle.w12.wit.061"] = {
		"Qualcuno, chissà dove, mi trova {g:spassosissimo|spassosissima}.",
		"Chi organizza le mie giornate ha un senso dell'umorismo crudele.",
	},
	["battle.w12.wit.062"] = {
		"Che fortuna. Che fortuna sfacciata.",
		"Ma guarda che sorte. Che sorte straordinaria.",
		"La fortuna mi sorride. Con tutti i denti.",
	},
	["battle.w12.wit.063"] = {
		"Prima lo spuntino, poi la zuffa, avevo detto. Nessuno ascolta.",
		"Avevo lo spuntino a metà strada verso la bocca. A metà strada!",
	},
	["battle.w12.wit.064"] = {
		"Ma certo. Ma certo che succede adesso.",
		"Ovviamente. Ovviamente proprio adesso.",
		"Ovvio che adesso. E quando, se no?",
	},
	["battle.w12.wit.065"] = {
		"si tasta le tasche come in cerca di pazienza, e ne trova pochissima.",
		"cerca un po' di pazienza in una tasca, la trova quasi vuota e si arrangia.",
	},
	["battle.w12.wit.066"] = {
		"scuote piano la testa, il ritratto di chi aveva sperato di meglio.",
		"scuote la testa adagio, come un oste che guarda il fango portato sul pavimento pulito.",
		"ha l'aria rassegnata di chi è stato interrotto troppe volte.",
	},
	["battle.w12.wit.067"] = {
		"arriccia il naso per l'interruzione, poi si mette all'opera.",
		"fa la faccia di chi si vede consegnare un conto da pagare, e si volta a saldarlo.",
	},
	["battle.w12.wit.068"] = {
		"mima con le labbra un commento muto e piuttosto scortese all'avversario.",
		"dice qualcosa di molto maleducato senza emettere un suono.",
	},
	["battle.w12.wit.069"] = {
		"Sì, sì, ti vedo. Difficile non vederti.",
		"Ti vedo, ti vedo. Non c'è bisogno di fare tutte queste storie.",
	},
	["battle.w12.wit.070"] = {
		"Potevi scegliere un momento peggiore? Sul serio, provaci.",
		"Se esisteva un momento peggiore, l'avresti trovato.",
	},
	["battle.w12.wit.071"] = {
		"Smettila di raccontartela e fa' qualcosa.",
		"Meno commenti, più fatti. Parola del commento.",
	},
	["battle.w12.wit.072"] = {
		"Si può saltare dritti alla fine? Pagherei.",
		"Esiste una versione breve di questa faccenda? Prendo quella.",
	},
	["battle.w12.wit.073"] = {
		"Vorrei scambiare due parole con chi risponde di te.",
		"Chi ti manda? Vorrei sporgere reclamo.",
	},
	["battle.w12.wit.074"] = {
		"Sia messo agli atti che mi facevo gli affari miei.",
		"Per la cronaca: io ero qui prima, e in silenzio.",
	},
	["battle.w12.wit.075"] = {
		"Udite, udite: obietto. È tutto.",
		"Si sappia che obietto, a gran voce e senza alcun risultato.",
		"Obiezione formale registrata. Da me, per me.",
	},
	["battle.w12.wit.076"] = {
		"Ah. Un contrattempo.",
		"Mh. Un intoppo. Piuttosto vivace.",
		"Mm. Un ostacolo. Con delle opinioni.",
	},
	["battle.w12.wit.077"] = {
		"Bastava una lettera.",
		"Sinceramente, sarebbe bastato un biglietto severo.",
	},
	["battle.w12.wit.078"] = {
		"Deve per forza finire tutto a botte? A quanto pare sì.",
		"Non c'è niente, a questo mondo, che si limiti a salutare?",
	},
	["battle.w12.wit.079"] = {
		"Non dovevo alzarmi. Me lo segno per la prossima volta.",
		"Alzarmi è stato l'errore. Tutto il resto ne è la conseguenza.",
	},
	["battle.w12.wit.080"] = {
		"Vorrei un rimborso per tutta questa gita.",
		"Si può rendere questo viaggio? È arrivato rovinato.",
	},
	["battle.w12.wit.081"] = {
		"Un po' di musica eroica aiuterebbe. Qualunque cosa eroica aiuterebbe.",
		"Con dei tamburi in sottofondo andrebbe meglio. Come quasi tutto.",
	},
	["battle.w12.wit.082"] = {
		"La pazienza è una virtù, mi dicono. La mia è appena finita.",
		"Prima la pazienza ce l'avevo. L'ho spesa tutta per qualcosa di più piccolo.",
	},
	["battle.w12.wit.083"] = {
		"Ah, sei tu. Chiunque tu sia.",
		"Eccoti. Non so chi tu sia, ma eccoti.",
	},
	["battle.w12.wit.084"] = {
		"Coraggio, presentarsi in prima fila. Coraggio? Qualcuno?",
		"Il coraggio in prima linea, prego. ...Arriverà.",
	},
	["battle.w12.wit.085"] = {
		"Decisione interessante. Io ne avrei presa un'altra.",
		"Non è la scelta che avrei fatto io. Ma è tua.",
	},
	["battle.w12.wit.086"] = {
		"Prego, prima tu. No, davvero, insisto.",
		"Comincia tu. Non vorrei essere scortese.",
		"L'età prima della bellezza. Vai pure.",
	},
	["battle.w12.wit.087"] = {
		"Tutto questo mondo, e tu scegli proprio qui.",
		"Il mondo è grande. Non abbastanza da evitarti, a quanto pare.",
		"Strade infinite là fuori, e tu hai scelto la mia.",
	},
	["battle.w12.wit.088"] = {
		"No. No, grazie. ...Ah, non era una domanda.",
		"Declino. Con garbo. Come, non si può declinare?",
	},
	["battle.w12.wit.089"] = {
		"Me ne lamenterò per giorni. Qualcosa di bello da aspettare.",
		"Giorni di brontolii in vista. Almeno avrò materiale.",
	},
	["battle.w12.wit.090"] = {
		"Niente panico. Per me vale doppio.",
		"Calma. Nessuno si agiti. Io meno di tutti.",
	},
	["battle.w12.wit.091"] = {
		"Quello sguardo l'hai provato a lungo, vero? Ti riesce bene.",
		"Che minaccia. Il massimo dei voti per la minaccia.",
	},
	["battle.w12.wit.092"] = {
		"Cose che vogliono farmi male: in aumento. Cose che mi offrono un tè: nessuna.",
		"Un sacco di cose vogliono fare a botte con me. Nessuna vuole due chiacchiere.",
	},
	["battle.w12.wit.093"] = {
		"Troppo {g:stanco|stanca} per questo. Eppure eccolo qui.",
		"Così {g:stanco|stanca} da dormire in piedi. A quanto pare non è permesso.",
	},
	["battle.w12.wit.094"] = {
		"I piedi hanno presentato reclamo. Respinto.",
		"Gambe, lo so. Lo so. Solo questo.",
	},
	["battle.w12.wit.095"] = {
		"Sono più {g:coraggioso|coraggiosa} di quanto sembri. Per forza.",
		"L'apparenza inganna. La mia ci spera proprio.",
	},
	["battle.w12.wit.096"] = {
		"Ah, il comitato di benvenuto. E la torta?",
		"Un ricevimento di benvenuto. Che pensiero gentile. Ma niente torta.",
		"Un'accoglienza tutta per me? Non dovevi. Davvero.",
	},
	["battle.w12.wit.097"] = {
		"Avevo chiesto che succedesse qualcosa. Dovevo essere più {g:preciso|precisa}.",
		"Desideravo un po' di movimento. Devo formulare meglio i desideri.",
	},
	["battle.w12.wit.098"] = {
		"Pensa a una battuta brillante. Niente? Allora si passa ai fatti.",
		"Una frase arguta, una frase arguta... sparita. Pazienza.",
	},
	["battle.w12.wit.099"] = {
		"Dammi tempo. Alla fine ci si affeziona a me. Qualcuno.",
		"Dicono che con la conoscenza io migliori. Lentamente.",
	},
	["battle.w12.wit.100"] = {
		"fa scrocchiare le nocche con un gesto teatrale, più che altro di scena.",
		"fa scrocchiare le nocche, fa una smorfia e se ne pente all'istante.",
	},
	["battle.w12.wit.101"] = {
		"si spazzola un granello di polvere dalla manica, come se lo scontro dovesse almeno {g:trovarlo|trovarla} in ordine.",
		"raddrizza con gran cura una cinghia storta, e solo dopo alza lo sguardo.",
	},
	["battle.w12.wit.102"] = {
		"si lascia sfuggire una risata breve e per nulla divertita.",
		"fa una risatina secca, senza un briciolo di allegria.",
	},
	["battle.w12.wit.103"] = {
		"si guarda intorno in cerca di qualcuno con cui lamentarsi, poi ci rinuncia e affronta l'avversario.",
		"cerca con gli occhi un testimone di questa ingiustizia, non ne trova uno all'altezza e si volta.",
	},
	["battle.w12.wit.104"] = {
		"inarca entrambe le sopracciglia verso l'avversario: un discorso intero in uno sguardo.",
		"alza un solo sopracciglio, per nulla {g:colpito|colpita} dall'accoglienza.",
	},
	["battle.w12.wit.105"] = {
		"Ah, {target}. Speravo di non incrociarti.",
		"Tu. Fra tutti quelli che potevo incontrare, proprio tu.",
	},
	["battle.w12.wit.106"] = {
		"{target}. Mi segno il nome, per il reclamo.",
		"Un nome mi servirebbe. Per il reclamo, capisci.",
	},
	["battle.w12.wit.107"] = {
		"{target}, dunque? Avevo in mente tutt'altro.",
		"Buffo. Nella mia testa avevi tutt'altro aspetto.",
	},
	["battle.w12.wit.108"] = {
		"Più forte di me? Che sbruffonata.",
		"Ah, sei del tipo tosto. Magnifico. Davvero magnifico.",
	},
	["battle.w12.wit.109"] = {
		"D'accordo, sei più forte. Io però sono molto più irritante. Conta anche quello.",
		"La forza è tua. La molestia testarda è tutta mia.",
	},
	["battle.w12.wit.110"] = {
		"Spirito ammirevole. Aritmetica discutibile.",
		"Adoro l'entusiasmo. Sui conti ho qualche dubbio.",
	},
	["battle.w12.wit.111"] = {
		"Ci hai pensato bene? Lo chiedo per te.",
		"Prenditi un momento, pensaci. ...Ecco, il momento è passato.",
	},
	["battle.w12.wit.112"] = {
		"Oh. Oh, questo è un bel fagotto di guai.",
		"Questo è... parecchio più di quanto avessi ordinato.",
	},
	["battle.w12.wit.113"] = {
		"Sei la versione grande, vero? Ma certo.",
		"Fra tutte le taglie disponibili, la più grossa. Naturalmente.",
	},
	["battle.w12.wit.114"] = {
		"Chi ha cominciato? Qualcuno ha cominciato.",
		"Su, confessate. Di chi è stata l'idea?",
	},
	["battle.w12.wit.115"] = {
		"Non guardate me. Non ho cominciato io.",
		"Per una volta non è colpa mia. Credo.",
	},
	["victory.w13.pride.001"] = {
		"Ah! Che si senta fin dove arriva.",
		"Che risuoni pure fin dove ha voglia di arrivare.",
		"Ah! Che l'eco vada dove le pare.",
	},
	["victory.w13.pride.002"] = {
		"Venga il prossimo. La testardaggine non mi è ancora passata.",
		"Arrivi pure il seguito. Di ostinazione ne ho da vendere.",
		"Testardaggine intatta, e me ne vanto. Il prossimo prenda nota.",
	},
	["victory.w13.pride.003"] = {
		"A terra o in fuga, hai il mio saluto.",
		"Ti saluto, comunque sia finita. Mi hai affrontato, ed è già qualcosa.",
		"Qualunque strada tu abbia preso, saluto l'incontro.",
	},
	["victory.w13.pride.004"] = {
		"Questa finisce nelle memorie. A lettere grandi.",
		"Da mettere nelle memorie, con un bel disegno accanto.",
		"Memorie, pagina chissà: un trionfo. Sottolineato due volte.",
	},
	["victory.w13.pride.005"] = {
		"Manda quello che vuoi, mondo. Ti aspetto sulla soglia.",
		"Il mondo mandi pure ciò che ha in mente. A rispondere ci sarò io.",
		"Tocca a te, mondo. La mia mossa era questa.",
	},
	["victory.w13.pride.006"] = {
		"Avevo giurato di uscirne sulle mie gambe. Giuramento rispettato.",
		"Una promessa fatta a me: andarmene coi miei piedi. Rispettata.",
		"La parola che mi ero data ha tenuto. E io con lei.",
	},
	["victory.w13.pride.007"] = {
		"Il mio mestiere. Lo conosco.",
		"Questo è il mio mestiere, e il mestiere lo so.",
		"È il lavoro per cui esisto, e si vede.",
	},
	["victory.w13.pride.008"] = {
		"Un applauso sarebbe gradito. Da chiunque. Da qualunque cosa.",
		"Mi applaudirei da me, ma non sta bene. Applaudo dentro.",
		"Nessuna ovazione? Pazienza. Mi festeggio da me, a bassa voce.",
	},
	["victory.w13.pride.009"] = {
		"Il prossimo turno è libero. Chi lo vuole?",
		"Chi vuole il turno dopo? Sono in vena.",
		"C'è posto per un altro. Fatti sotto.",
	},
	["victory.w13.pride.010"] = {
		"Di me si dica quel che si vuole, ma non che ho voltato le spalle.",
		"Mi diano pure mille nomi: nessuno vorrà dire fuga.",
		"Parlate pure. La schiena non l'ho mai mostrata.",
	},
	["victory.w13.pride.011"] = {
		"Sia messo agli atti: non ho ceduto terreno.",
		"Per la cronaca: i piedi sono andati avanti, mai indietro.",
		"Scrivetelo chiaro: avanti, a ogni passo.",
	},
	["victory.w13.pride.012"] = {
		"Oh, che soddisfazione. Che soddisfazione davvero.",
		"Questa sensazione andrebbe messa in bottiglia.",
		"Oh, ne avevo bisogno. Più di quanto sapessi.",
	},
	["victory.w13.pride.013"] = {
		"Alla mia salute. Qualcuno deve pur dirlo.",
		"Un brindisi a me, senza un boccale da alzare. Conta il pensiero.",
		"A me, allora. Il brindisi lo faccio io.",
	},
	["victory.w13.pride.014"] = {
		"Sto migliorando. Il prossimo se ne accorgerà.",
		"Ho più filo di prima. Il prossimo scontro avrà la versione migliore.",
		"Meglio a ogni scontro, e questo ne è la prova.",
	},
	["victory.w13.pride.015"] = {
		"Merita un cenno di approvazione. Anzi, due.",
		"Approvato. Da me, l'unico giudice che conti.",
		"Lo metterei in cornice, se gli scontri ci entrassero.",
	},
	["victory.w13.pride.016"] = {
		"Ecco la mia risposta a chi mi mette alla prova.",
		"Chi mi mette alla prova riceve la stessa replica.",
		"Provaci, e torna indietro questo.",
	},
	["victory.w13.pride.017"] = {
		"A me il terreno, a te il mio rispetto.",
		"Il mio rispetto ti accompagna. Il terreno resta a me.",
		"Tu te ne vai col mio rispetto. Io resto col terreno.",
	},
	["victory.w13.pride.018"] = {
		"Qualunque cosa venga, mi troverà con i piedi ben piantati.",
		"Sono {g:pronto|pronta} a quello che viene. Che si sbrighi.",
		"Che arrivi il seguito. Ho i piedi piantati.",
	},
	["victory.w13.pride.019"] = {
		"Ma guarda! Sono {g:bravo|brava}, eh.",
		"Lavoro fatto come si deve, guardate qua.",
		"Guardatemi, a fare le cose per bene.",
	},
	["victory.w13.pride.020"] = {
		"Suonino i corni, se qualcuno ne ha uno.",
		"Qualcuno suoni un corno. Me lo sono guadagnato.",
		"Qui ci starebbe una fanfara. Qualcuno la canticchi.",
	},
	["victory.w13.pride.021"] = {
		"E questo, per i curiosi, è il modo giusto di farlo.",
		"Prendete appunti, se c'è chi ascolta. Il metodo è questo.",
		"Lezione finita. Non ci sarà interrogazione.",
	},
	["victory.w13.pride.022"] = {
		"Non ho finito. Non finisco mai.",
		"Finito? Nemmeno per idea.",
		"{g:Stanco|Stanca}? Io? Chiedimelo più tardi.",
	},
	["victory.w13.pride.023"] = {
		"Onore a te, che mi hai affrontato. Il resto dell'onore lo tengo io.",
		"Un po' d'onore anche a te. Il grosso me lo tengo.",
		"L'onore lo dividiamo, io e te. La fetta grossa la prendo io.",
	},
	["victory.w13.pride.024"] = {
		"Che si sappia: questa è opera mia.",
		"Lo si sappia ovunque: opera mia.",
		"Fatelo sapere in giro. Questa porta la mia firma.",
	},
	["victory.w13.pride.025"] = {
		"Bene. Mi piace così.",
		"Bene. Proprio come volevo.",
		"Sì. Così. Esattamente così.",
	},
	["victory.w13.pride.026"] = {
		"Mettetevi in fila. Di tempo ne ho quanto ne voglio.",
		"In fila, chiunque sia il prossimo. Non ho fretta.",
		"Da soli o in folla, che vengano. Mi va bene in tutti e due i modi.",
	},
	["victory.w13.pride.027"] = {
		"La modestia mi vieterebbe di commentare. Per fortuna non ne ho.",
		"Sarei {g:modesto|modesta}, ma perché cominciare proprio adesso?",
	},
	["victory.w13.pride.028"] = {
		"Che venga scritto da qualche parte. Ovunque. Va bene anche un muro.",
		"Qualcuno lo metta per iscritto. Su qualsiasi cosa.",
	},
	["victory.w13.pride.029"] = {
		"Se la morte mi vuole, prenda appuntamento. Prima no.",
		"La morte si metta in coda. Ho l'agenda piena.",
		"Sulla lista della morte non ci sono ancora. Ho controllato.",
	},
	["victory.w13.pride.030"] = {
		"Avevo detto che avrei vinto, e ho vinto. I dubbi teneteveli.",
		"L'avevo detto. L'ho fatto. Prossima domanda.",
	},
	["victory.w13.pride.031"] = {
		"Non c'è niente di paragonabile. Proprio niente.",
		"Nessuna sensazione al mondo è come questa.",
		"Tra tutte le sensazioni che esistono, questa vince.",
	},
	["victory.w13.pride.032"] = {
		"Alzo la mano per te. Buon cammino, ovunque tu sia adesso.",
		"Una mano alzata per te, ovunque ti trovi ora.",
	},
	["victory.w13.pride.033"] = {
		"Chiunque venga dopo, guardi bene prima.",
		"Il prossimo si ricordi com'è andata a questo.",
		"Chi sta guardando, impari da questo.",
	},
	["victory.w13.pride.034"] = {
		"Faccio un inchino. Piccolo. Va bene, grande.",
		"Un inchino per chi ha vinto. Sarei io. Grazie, grazie.",
	},
	["victory.w13.pride.035"] = {
		"Io non mi spezzo. Spargi la voce.",
		"Niente mi spezza. Ricordatelo, qualunque cosa tu sia.",
	},
	["victory.w13.pride.036"] = {
		"Questo sì che è un finale come si deve.",
		"Un bel finale. Preciso, a regola d'arte.",
	},
	["victory.w13.pride.037"] = {
		"Questa è mia. Nessuno me la toglie.",
		"Mia. Questa vittoria è mia e resta mia.",
	},
	["victory.w13.pride.038"] = {
		"Chi ha visto, lo racconti giusto.",
		"Se qualcuno ha visto, lo racconti com'è stato. Non serve abbellirlo.",
	},
	["victory.w13.pride.039"] = {
		"Ah. Ecco a cosa serve la rabbia.",
		"Quella furia è servita. Che non si spenga.",
		"Una buona collera. Si è guadagnata il pane.",
	},
	["victory.w13.pride.040"] = {
		"Mh. Soddisfacente.",
		"Mh. Mi concedo un attimo di compiacimento.",
		"Mh. Contento di così. Contento davvero.",
	},
	["victory.w13.pride.041"] = {
		"Un po' più forte di un'ora fa. Me ne accorgo.",
		"Più forte di un attimo fa. Lo sento nelle mani.",
	},
	["victory.w13.pride.042"] = {
		"Vittoria. Detta piano: vit-to-ria.",
		"Vittoria. Mi piace il sapore di questa parola.",
	},
	["victory.w13.pride.043"] = {
		"Nessun rancore. La vittoria è mia, il rancore di nessuno.",
		"La vittoria me la tengo, il rancore lo lascio qui.",
		"I rancori pesano. Preferisco portarmi la vittoria.",
	},
	["victory.w13.pride.044"] = {
		"E diranno che è stata fortuna. Lascia che lo dicano.",
		"Fortuna? Chiamala come vuoi. Io la chiamo mia.",
		"Fortuna? Può darsi. La fortuna sta spesso accanto ai testardi.",
	},
	["victory.w13.pride.045"] = {
		"Mento alto. Ho il diritto di pavoneggiarmi un po'.",
		"Un po' di pavoneggiamento è concesso. Ho verificato le regole.",
	},
	["victory.w13.pride.048"] = {
		"Di poco. Ma il poco va nella mia colonna.",
		"{g:Malconcio|Malconcia}, sì. {g:Battuto|Battuta}, no.",
		"C'è andato vicino. Ma vicino resta dalla mia parte della linea.",
	},
	["victory.w13.pride.049"] = {
		"Fa male dappertutto, e ne vado {g:fiero|fiera}.",
		"Ogni livido di questo scontro lo porterò come una medaglia.",
	},
	["victory.w13.pride.050"] = {
		"Vinto. Ahi. Però vinto.",
		"Ho vinto. Festeggerei, se qualcosa smettesse di fare male.",
	},
	["victory.w13.pride.051"] = {
		"Bel lavoro, tutti quanti. Questa vittoria è nostra.",
		"È di tutti noi. A testa alta.",
		"Ce la siamo meritata uno per uno. Portiamola con orgoglio.",
	},
	["victory.w13.pride.052"] = {
		"Pugni in alto, tutti quanti. Ce la siamo guadagnata.",
		"In alto i pugni. Questa resta nostra per sempre.",
	},
	["victory.w13.pride.053"] = {
		"Mica male, noi. Mica male davvero.",
		"Insieme ce la caviamo piuttosto bene, no?",
	},
	["victory.w13.pride.054"] = {
		"L'ho fatto io. Voglio ricordarmi questa sensazione.",
		"Opera mia. Questa sensazione la conservo per dopo.",
		"Merito mio. Voglio tenermi stretta questa sensazione.",
	},
	["victory.w13.pride.055"] = {
		"Qualcosa, là fuori, ha appena imparato il mio nome. Bene.",
		"La voce girerà. Che giri pure.",
		"Da qualche parte, qualcosa si sta segnando il mio nome. Giusto così.",
	},
	["victory.w13.pride.056"] = {
		"Un piccolo bagliore, da qualche parte dentro. Orgoglio, credo. Me lo concedo.",
		"Quella luce quieta, dentro, ha un nome: orgoglio. Che si trattenga un po'.",
	},
	["victory.w13.pride.057"] = {
		"Ogni vittoria insegna qualcosa alle mani. Le mie imparano in fretta.",
		"Le mani stanno imparando. Le sento più sicure.",
		"Le mani sanno più di prima. Brave mani.",
	},
	["victory.w13.pride.058"] = {
		"Che la rabbia si spenga piano: voglio godermela.",
		"La furia si ritira. Un po' mi mancherà.",
	},
	["victory.w13.pride.059"] = {
		"Spero che da fuori sembrasse bello quanto lo era da dentro.",
		"Se qualcosa guardava, spero abbia colto il mio profilo migliore.",
	},
	["victory.w13.pride.060"] = {
		"Qualunque cosa arrivi, troverà la versione di me che ha appena vinto.",
		"Il seguito aspetterà. Per adesso, la vittoria è mia.",
	},
	["victory.w13.pride.061"] = {
		"Mi hai messo alla prova, e l'ho superata. Grazie, in un certo senso.",
		"Ti ricorderò come chi mi ha costretto a dimostrarlo.",
		"Una prova, superata. Il voto me lo tengo.",
	},
	["victory.w13.pride.062"] = {
		"C'è una persona che voglio diventare. Questo era un passo verso di lei.",
		"Un passo in più verso chi voglio essere.",
	},
	["victory.w13.pride.063"] = {
		"La paura è venuta, e le ho detto di aspettare fuori. Ha obbedito.",
		"La paura ha bussato. Non le ho aperto.",
		"La paura voleva parlarmi. Le ho detto dopo.",
	},
	["victory.w13.pride.064"] = {
		"Non serve gridarlo. Basta un cenno, tra me e me.",
		"Anche l'orgoglio silenzioso è orgoglio. Un cenno, uno solo.",
	},
	["victory.w13.pride.065"] = {
		"I racconti non dicono mai quanto sia dolce questo momento.",
		"Questa è la parte che nei racconti non mettono mai: quanto è bello.",
	},
	["victory.w13.pride.066"] = {
		"Il mondo continua a mandarmi contro qualcosa. Io continuo a rimandarlo indietro.",
		"Lui lancia, io rispondo. Questi sono i patti.",
	},
	["victory.w13.pride.067"] = {
		"Sarò insopportabile, con questa storia. Lo sento arrivare.",
		"Avviso per chiunque incontri da qui in poi: ne sentirà parlare.",
	},
	["victory.w13.pride.068"] = {
		"Le ginocchia non hanno ceduto. Nemmeno il coraggio.",
		"Ho retto. Ogni parte di me ha retto.",
		"In me non ha ceduto niente. Neanche un pezzo.",
	},
	["victory.w13.pride.069"] = {
		"Orgoglio sì, ma un orgoglio gentile.",
		"L'orgoglio va bene. Il gongolare no. Conosco la differenza.",
		"Orgoglio, ma sottovoce. Non serve cantare vittoria.",
	},
	["victory.w13.pride.070"] = {
		"I guai conoscono il mio indirizzo. Che passino pure.",
		"Chi cerca guai sa dove trovarli, adesso.",
	},
	["victory.w13.pride.071"] = {
		"Niente araldi, niente trombe. La vittoria conta lo stesso.",
		"Nessuno l'ha annunciata, ma la vittoria c'è, ed è mia.",
	},
	["victory.w13.pride.072"] = {
		"Ecco quanto valgo, almeno per ora. Non è una cattiva misura.",
		"Questo è il mio valore, adesso. Mi va bene.",
	},
	["victory.w13.pride.073"] = {
		"La promessa era di non cedere. Mantenuta.",
		"Non cedere, mi dicevo. Ho dato retta.",
		"Neanche un palmo, avevo promesso. E palmo non è stato.",
	},
	["victory.w13.pride.074"] = {
		"Vorrei una statua. Modesta. A grandezza naturale. Magari un filo più alta.",
		"Una statua sarebbe troppo. Una targa, allora.",
	},
	["victory.w13.pride.075"] = {
		"Per poco non mi ha preso. «Per poco» è la parola più bella che conosca.",
		"Quasi non basta, per battermi. Ricordatelo, mondo.",
	},
	["victory.w13.pride.076"] = {
		"Da dove vengo, sarebbero orgogliosi. Lo sono io per loro.",
		"La gente che ho lasciato approverebbe con un cenno. Lo faccio io al posto loro.",
	},
	["victory.w13.pride.077"] = {
		"Per tutto lo scontro ho avuto certezza. Mi piace averne.",
		"Nessun dubbio, in me. Nemmeno un guizzo.",
	},
	["victory.w13.pride.078"] = {
		"Concedo a questa vittoria un momento tutto suo, prima di muovermi.",
		"Una vittoria merita una pausa in suo onore. Eccola.",
	},
	["victory.w13.pride.079"] = {
		"Bella compagnia. Starei accanto a loro in qualunque momento.",
		"Mi fa onore stare fra loro. Davvero.",
	},
	["victory.w13.pride.081"] = {
		"Niente in me voleva arrendersi. Me lo ricorderò.",
		"Ho imparato una cosa: non mollo. Buono a sapersi.",
		"Arrendermi non mi è mai passato per la testa. Bello scoprirlo.",
	},
	["victory.w13.pride.082"] = {
		"alza il mento e lascia che un sorriso soddisfatto si allarghi piano.",
		"si raddrizza, con un mezzo sorriso all'angolo della bocca.",
		"sorride, largo e senza fretta, a niente in particolare.",
	},
	["victory.w13.pride.083"] = {
		"alza un pugno verso niente di preciso e lo tiene lì un istante.",
		"dà un pugno all'aria, uno solo, secco.",
		"scuote il pugno una volta, poi lo abbassa con un cenno soddisfatto.",
	},
	["victory.w13.pride.084"] = {
		"fa un piccolo inchino formale verso il punto dove tutto è successo.",
		"accenna un inchino cortese verso il punto in cui l'avversario stava poco fa.",
	},
	["victory.w13.pride.085"] = {
		"pianta i piedi ben larghi e si guarda intorno come se tutto ciò che vede fosse suo.",
		"resta a gambe larghe e si guarda attorno, come a sfidare chiunque altro a provarci.",
	},
	["victory.w13.pride.086"] = {
		"annuisce una volta, con decisione, come chi firma una lettera finita.",
		"fa un solo cenno secco di approvazione, rivolto a nessuno in particolare.",
		"annuisce tra sé, un piccolo sigillo di approvazione.",
	},
	["victory.w13.pride.087"] = {
		"getta indietro la testa e lancia una risata breve e squillante.",
		"ride ad alta voce, una volta sola, un suono limpido e senza vergogna.",
	},
	["victory.w13.pride.088"] = {
		"raddrizza le spalle e si guarda attorno, come in attesa di quel che verrà.",
		"porta indietro le spalle e si volta verso qualunque cosa possa arrivare.",
	},
	["victory.w13.pride.089"] = {
		"si tocca la tempia con due dita, un rapido saluto al momento.",
		"rivolge un saluto netto al punto in cui tutto è finito.",
		"alza la mano aperta verso il punto in cui è finita, palmo in avanti: un saluto.",
	},
	["victory.w13.pride.090"] = {
		"si spolvera l'equipaggiamento con cura esagerata, come davanti a un pubblico.",
		"si dà una ripassata all'equipaggiamento con un gesto teatrale.",
	},
	["victory.w13.pride.091"] = {
		"resta {g:dritto|dritta} un momento più del necessario, prima di muoversi.",
		"mantiene a lungo una posa fiera, poi la lascia andare.",
	},
	["victory.w13.pride.093"] = {
		"si volta verso i compagni con un sorriso fiero, di approvazione.",
		"batte una mano sulla spalla più vicina e fa un cenno a ogni compagno.",
	},
	["victory.w13.pride.094"] = {
		"si erge in tutta la sua altezza e si prende il momento.",
		"si allunga verso l'alto, braccia larghe, poi le lascia ricadere.",
	},
	["victory.w13.pride.095"] = {
		"si batte due volte il pugno sul petto, un piccolo saluto privato.",
		"si dà un colpo sul petto, con la mano chiusa.",
	},
	["victory.w13.pride.096"] = {
		"canticchia qualche nota trionfale, stonata.",
		"canticchia tra sé un pugno di note fiere e senza melodia.",
	},
	["victory.w13.still.001"] = {
		"Le mani aspettano che sia finita per mettersi a tremare. Gentili, a modo loro.",
		"Adesso tremano, queste mani. Neanche un fremito quando serviva.",
	},
	["victory.w13.still.002"] = {
		"resta immobile, la testa inclinata, ad ascoltare i piccoli rumori che tornano uno a uno.",
		"non si muove e ascolta, come se aspettasse che la quiete dicesse qualcosa.",
		"non muove un muscolo, la testa piegata, come chi conta i rumori man mano che tornano.",
	},
	["victory.w13.still.003"] = {
		"Il silenzio torna a strati. Prima il mio rumore, poi quello del mondo.",
		"Il fischio se ne va, e sotto c'è tutta una quiete che non avevo sentito.",
		"I suoni tornano piano, come la sensibilità in una mano intorpidita.",
	},
	["victory.w13.still.004"] = {
		"Un momento. Prima tutto deve smettere di muoversi.",
		"Aspetta. Il mondo deve smettere di pendere da una parte.",
		"Per un po', nemmeno una parola. Neanche da parte mia.",
	},
	["victory.w13.still.005"] = {
		"apre e chiude le mani, piano, aspettando che il tremito passi.",
		"preme i palmi contro le ginocchia finché non smettono di tremare.",
		"si strofina i palmi, piano, finché il tremito non si calma.",
	},
	["victory.w13.still.006"] = {
		"Qui vicino qualcosa di minuscolo ricomincia a frinire. Ha capito che è finita.",
		"Riparte un rumorino lì accanto, un insetto forse. Il segnale del mondo che è tutto a posto.",
	},
	["victory.w13.still.007"] = {
		"Proprio adesso mi prude il collo. Dieci secondi fa non avrebbe osato.",
		"Adesso mi prude il naso. Ha aspettato educatamente la fine.",
		"Ovvio che adesso mi prude un orecchio. Almeno ha avuto il buon gusto di aspettare.",
	},
	["victory.w13.still.008"] = {
		"si siede lì dove si trova, senza cerimonie, e ci resta.",
		"si lascia andare a terra e resta lì un poco, senza fare assolutamente nulla.",
		"si siede a terra con un grugnito e non accenna a rialzarsi.",
	},
	["victory.w13.still.009"] = {
		"Comunque sia andata, la quiete di dopo è solo mia. Nessun altro la sente uguale.",
		"Ognuno sente un silenzio diverso, dopo uno scontro. Questo è il mio.",
		"In qualunque modo sia andata, questo silenzio di dopo è una faccenda privata. Me lo tengo.",
	},
	["victory.w13.still.010"] = {
		"È durata tanto o poco? Un'eternità e un attimo, tutte e due insieme.",
		"Non saprei dire quanto sia durata. Il tempo è andato chissà dove e solo adesso torna.",
		"Secondi o minuti, non saprei. Lo scontro ha un orologio tutto suo.",
	},
	["victory.w13.still.011"] = {
		"rimette a posto una cinghia attorcigliata, poi si ferma e resta a guardarla.",
		"raddrizza una cinghia storta con dita non del tutto ferme.",
		"armeggia con una fibbia che non ha bisogno di niente, solo per dare un compito alle mani.",
	},
	["victory.w13.still.012"] = {
		"Sst. Ascolta. Ecco. Tutto riprende.",
		"Senti? Niente. Bellissimo, no?",
		"Piano, adesso. Lascia che per un po' ci sia silenzio.",
	},
	["victory.w13.still.013"] = {
		"I dolori si presentano uno per uno, come ospiti arrivati tutti alla stessa porta.",
		"Prima la spalla, poi il ginocchio, poi qualcosa nella schiena. Si presentano a turno.",
		"I dolori arrivano in ordine di importanza. Il ginocchio insiste per passare davanti.",
	},
	["victory.w13.still.014"] = {
		"Tutto torna normale, e così in fretta. Il mondo non mi tiene da parte l'attimo.",
		"Un attimo fa contava tutto. Adesso è solo un posto, e io ci sto in piedi in mezzo.",
		"Torna tutto semplice così in fretta. Nessuno segna il punto.",
	},
	["victory.w13.still.015"] = {
		"fa un primo passo, poi un secondo, saggiandoli come se la terra potesse essere cambiata.",
		"fa qualche passo lento, per controllare che le gambe accettino ancora di andare avanti.",
	},
	["victory.w13.still.016"] = {
		"La parte migliore, a dirla tutta, è questa. Non la vittoria: la quiete dopo.",
		"Buffo. Il momento che preferisco è questo, quando non succede proprio niente.",
		"Se dovessi tenere una cosa sola di tutto questo, terrei il minuto in cui niente si muove.",
	},
	["victory.w13.still.017"] = {
		"Ho un motivetto in testa. Da dove arriva, e perché proprio adesso?",
		"Mi gira in testa una canzoncina sciocca. A quanto pare la mia testa si riprende così.",
		"La testa canticchia qualcosa. Non una canzone che conosco. Canticchia e basta.",
	},
	["victory.w13.still.018"] = {
		"chiude gli occhi per un momento e ascolta il niente.",
		"tiene gli occhi chiusi e resta così un poco, lasciando che il mondo si rimetta in ordine.",
		"abbassa le palpebre e resta così, lasciando entrare solo i suoni.",
	},
	["victory.w13.still.019"] = {
		"Ginocchia, potete smettere. È finita. Davvero.",
		"D'accordo, gambe: il tremito è stato registrato. Grazie.",
		"Mani, calmatevi. Nessuno vi chiede altro.",
	},
	["victory.w13.still.020"] = {
		"Le orecchie hanno ancora dentro lo scontro. Tutto il resto è già andato avanti.",
		"Il rumore se n'è andato, ma alle orecchie non l'ha detto nessuno.",
		"Il frastuono è sparito dappertutto, tranne che dentro la mia testa.",
	},
	["victory.w13.still.021"] = {
		"scuote le mani dai polsi, scrollandosi di dosso la rigidità.",
		"piega e distende le dita, una mano per volta, finché non rispondono come devono.",
		"allarga le dita, le tiene così e le guarda calmarsi.",
	},
	["victory.w13.still.022"] = {
		"Strano, cosa noto adesso. Un graffio sulla manica. Un filo che pende. Un colore.",
		"Tutt'a un tratto saltano fuori le piccole cose: un orlo sfilacciato, un taglietto nuovo nell'equipaggiamento, una macchia di chissà cosa.",
		"Adesso gli occhi sono avidi di piccolezze. Ogni piega, ogni granello.",
	},
	["victory.w13.still.023"] = {
		"Così. Silenzio. Me lo tengo.",
		"E adesso la quiete. È la parte che vale.",
		"Quiete, finalmente. Bene.",
	},
	["victory.w13.still.024"] = {
		"Che si faccia silenzio. Fuori, e anche dentro di me.",
		"Per un momento non voglio niente. Nemmeno vincere. Solo questo.",
		"Niente da fare. Niente da essere. Solo questo minuto, e io dentro.",
	},
	["victory.w13.still.025"] = {
		"si volta lentamente tutt'intorno, guardando ogni cosa come se la vedesse per la prima volta.",
		"si guarda attorno con una cura lenta, quasi perplessa, come chi si è appena svegliato.",
		"sbatte le palpebre un paio di volte e si guarda intorno, come se il mondo fosse stato spostato di poco mentre aveva da fare.",
	},
	["victory.w13.still.026"] = {
		"C'è mancato poco. Tutto è troppo nitido, troppo forte, e meravigliosamente qui.",
		"Troppo vicino al limite. Adesso ogni piccola cosa sembra dipinta.",
		"Per un pelo. Il mondo si è fatto così vivido che quasi fa male guardarlo.",
	},
	["victory.w13.still.027"] = {
		"Le mani non si fermano. Sanno meglio di me quanto ci è mancato poco.",
		"Il tremito adesso non è paura. È il resto di me che si mette in pari con la notizia.",
	},
	["victory.w13.still.028"] = {
		"si lascia cadere su un ginocchio e resta lì, gli occhi socchiusi, finché il mondo smette di ondeggiare.",
		"si piega in avanti, le mani sulle ginocchia, e aspetta prima di fidarsi delle gambe.",
	},
	["victory.w13.still.029"] = {
		"Non è il momento, a quanto pare. Non stavolta.",
		"Quindi il mondo mi tiene ancora un po'. Buono a sapersi.",
		"Piano. Piano. È finita, e io sono dalla parte giusta.",
	},
	["victory.w13.still.030"] = {
		"Si muovono tutti? Tutti. Allora posso lasciar entrare la quiete.",
		"Conto le voci attorno a me prima di concedermi di stare {g:fermo|ferma}.",
	},
	["victory.w13.still.031"] = {
		"incrocia lo sguardo di qualcuno lì vicino e si scambiano un piccolo cenno stanco.",
		"si siede in mezzo agli altri senza dire una parola, nella quiete di tutti.",
	},
	["victory.w13.still.032"] = {
		"Sentite? Niente. Un po' di niente ce lo siamo guadagnato.",
		"Stiamo qui un momento, tutti. E nessuno dica niente di spiritoso.",
	},
	["victory.w13.still.035"] = {
		"Il primo pensiero lucido, dopo: questa cinghia era allentata da prima. Eroico.",
		"Tutto questo, e la prima cosa che mi viene in mente è che ho il colletto storto.",
		"La prima cosa che noto, a cose fatte, è una piega sulla manica. Che priorità.",
	},
	["victory.w13.still.036"] = {
		"si toglie un granello di qualcosa dalla manica con estrema serietà.",
		"si spazzola una spalla, accigliandosi per una macchia che non vuole andare via.",
		"rimbocca un lembo sfuggito con una cura pignola, come se fosse importantissimo.",
	},
	["victory.w13.still.037"] = {
		"La quiete non è vuota. È piena di piccole cose che aspettano il loro turno per farsi sentire.",
		"Non è silenzio. È una folla di rumorini che lo scontro copriva con la sua voce.",
		"Ascolta abbastanza a lungo e scopri che la quiete è piena di faccende.",
	},
	["victory.w13.still.038"] = {
		"Siediti prima di cadere. Ottimo consiglio. Lo seguo.",
		"Giù. La terra è stata paziente; può reggermi per un po'.",
		"Le gambe hanno votato, e hanno deciso di sedersi.",
	},
	["victory.w13.still.039"] = {
		"La terra sotto di me non si è accorta di niente. Ne ha retti di momenti, più quieti e più rumorosi.",
		"Qualunque cosa sia successa, la terra non ha preso le parti di nessuno. Ha retto e basta.",
	},
	["victory.w13.still.040"] = {
		"posa il palmo sulla terra per un momento, come per sentirla calmarsi anche lei.",
		"appoggia una mano a terra lì accanto, per tenersi, e aspetta.",
		"sfiora la terra con la punta delle dita, leggera come si tocca chi dorme.",
	},
	["victory.w13.still.041"] = {
		"Un attimo fa era tutto in gioco. Adesso è solo un minuto qualunque.",
		"Strano quanto in fretta un momento di vita o di morte diventa un minuto come gli altri.",
		"Da tutto a quasi niente, nel giro di un momento.",
	},
	["victory.w13.still.042"] = {
		"Dovunque tu sia adesso, spero che ci sia questa stessa quiete.",
		"Che ci sia silenzio anche per te, ovunque tu sia.",
		"Che dalla tua parte ci sia la stessa calma che c'è dalla mia.",
	},
	["victory.w13.still.043"] = {
		"La stanchezza aspettava fuori dallo scontro. Adesso entra, pulendosi le scarpe.",
		"La fatica è rimasta alla porta per tutto il tempo. Adesso è entrata da sola.",
	},
	["victory.w13.still.044"] = {
		"sorride al niente per un momento, poi sembra accorgersene e smette.",
		"fa un piccolo sorriso storto, rivolto a nessuno in particolare.",
		"ridacchia piano, per qualche pensiero tutto suo.",
	},
	["victory.w13.still.045"] = {
		"Dopo uno scontro i colori sembrano più forti. O forse solo ora li guardo.",
		"Le cose hanno di nuovo i loro contorni. Durante lo scontro ce n'era una sola.",
		"Il mondo torna largo. Un attimo fa era grande quanto un avversario.",
	},
	["victory.w13.still.046"] = {
		"Si è fatto tutto così silenzioso, o sono io che ci sento meno?",
		"O il mondo si è zittito di colpo, o le mie orecchie si sono licenziate.",
	},
	["victory.w13.still.047"] = {
		"alza appena il viso, come se l'aria stessa fosse cambiata.",
		"solleva la testa e resta così, in ascolto di ogni piccolo rumore.",
		"volta piano la testa verso un piccolo rumore, poi la distoglie.",
	},
	["victory.w13.still.048"] = {
		"Questo me lo concedo. Un minuto di niente. Nessuno me lo porta via.",
		"Questo minuto è mio, e non mi chiede niente. Abbastanza raro da accorgersene.",
		"Un minuto intero in cui nessuno ha bisogno di niente da me. Me lo tengo stretto.",
	},
	["victory.w13.still.049"] = {
		"Gambe come corda bagnata. Hanno tenuto quando serviva, quindi le perdono.",
		"Le ginocchia sono diventate molli come pane. Pane fedele, però: hanno retto.",
		"Queste gambe traballano come quelle di un puledro appena nato. Va bene: il traballare se lo sono meritato.",
	},
	["victory.w13.still.050"] = {
		"E basta così. Un po' di silenzio, e poi il resto del mondo.",
		"Buffo come finisce. Non con qualcosa: con un vuoto dove c'era il rumore.",
	},
	["victory.w13.still.051"] = {
		"scioglie la rigidità del collo, una lenta inclinazione dopo l'altra.",
		"si massaggia la nuca con una mano, lo sguardo perso nel vuoto.",
		"fa ruotare piano la testa, con una smorfia a un punto rigido.",
	},
	["victory.w13.still.052"] = {
		"C'è una quiete che arriva solo dopo. Nient'altro la produce.",
		"Questo silenzio non si trova. Bisogna lottare per averlo, e poi arriva da sé.",
	},
	["victory.w13.still.053"] = {
		"Poco fa ero solo denti e nervi. Adesso sono quasi soltanto ginocchia.",
		"Un attimo fa ero una corda tesa. Adesso sono un mucchio di giunture sciolte.",
		"Pochi istanti fa avevo ogni nervo teso. Adesso si è srotolato tutto.",
	},
	["victory.w13.still.054"] = {
		"resta esattamente dov'è, come se muoversi potesse rovinare qualcosa.",
		"rimane immobile a lungo, come se non volesse essere la causa del primo rumore.",
		"resta immobile a lungo, come se la quiete fosse fragile.",
	},
	["victory.w13.still.055"] = {
		"Non ne ricordo metà. Mancano dei pezzi, come pagine strappate da un libro.",
		"Lo scontro si sta già sfocando. Non saprò mai bene cosa abbiano fatto le mie mani, là dentro.",
		"Si sta già annebbiando ai bordi, come un sogno appena svegli.",
	},
	["victory.w13.still.056"] = {
		"Che adesso se lo prenda la quiete. Doveva andare così.",
		"Riposa, tutto quanto. Che la quiete faccia il suo turno.",
		"Entra pure, quiete. Sei stata paziente abbastanza.",
	},
	["victory.w13.still.057"] = {
		"La testa è sveglissima, il resto è sfinito. Strana coppia.",
		"La testa corre ancora, molto dopo che le gambe si sono sedute.",
		"Troppo sfinimento per muovermi, troppa lucidità per riposare. Resto qui con entrambi.",
	},
	["victory.w13.still.058"] = {
		"si pianta le mani sui fianchi e osserva la quiete con la fronte aggrottata.",
		"si gratta la testa, strizza gli occhi verso il niente e borbotta qualcosa.",
		"incrocia le braccia e resta lì, a squadrare la quiete come se fosse in debito.",
	},
	["victory.w13.still.059"] = {
		"Ogni cosa è scivolata di nuovo al suo posto. Più o meno, almeno.",
		"Il mondo torna al suo posto come una spalla rimessa in sede.",
		"Piano piano il mondo riprende la sua forma giusta.",
	},
	["victory.w13.still.060"] = {
		"Calma. È finita. Lascia andare le mani.",
		"Non resta altro da fare che stare qui. E allora ci sto.",
	},
	["victory.w13.still.061"] = {
		"Nella quiete di dopo tutto mi pare enorme, e io poca cosa. Non in senso brutto.",
		"Tutto si ingrandisce, in questa quiete, e io rimpicciolisco. Stranamente, riposa.",
	},
	["victory.w13.still.062"] = {
		"lascia ricadere la testa all'indietro e guarda in alto a lungo.",
		"piega la testa all'indietro, gli occhi socchiusi, e non aspetta niente di preciso.",
	},
	["victory.w13.still.063"] = {
		"Qualcosa mi preme sul fianco. A quanto pare c'era per tutto lo scontro.",
		"Una fibbia mi morde le costole da chissà quanto. Solo adesso si degna di far male.",
	},
	["victory.w13.still.064"] = {
		"Oh. Oh, che silenzio.",
		"Com'è diventato silenzioso. Quasi maleducato.",
		"Questo sì che è silenzio. Silenzio vero.",
	},
	["victory.w13.still.065"] = {
		"Solo nella quiete di dopo mi accorgo di vivere. Durante, non c'è spazio.",
		"La vita la sento solo quando tutto il resto si ferma.",
		"Durante, non c'è tempo per vivere. Dopo, non c'è altro.",
	},
	["victory.w13.still.066"] = {
		"scioglie la mascella serrata, e sembra richiedere un certo sforzo.",
		"allenta finalmente i denti stretti, muovendo la mascella da una parte all'altra.",
	},
	["victory.w13.still.067"] = {
		"Conto fino a dieci. Poi decido se muovermi. Nessuna fretta, né per l'una né per l'altra.",
		"Dieci conti lenti prima di tutto il resto. Il mondo può aspettare fino a dieci.",
	},
	["victory.w13.still.068"] = {
		"Adesso è tutto così calmo. Sospettosamente calmo. Lo concedo.",
		"Calma. Tanta calma. Non me ne fido, ma me la godo lo stesso.",
	},
	["victory.w13.still.069"] = {
		"osserva un insetto minuscolo che passa, e lo lascia andare per la sua strada.",
		"nota un piccolo insetto lì vicino e ne segue il cammino con un'attenzione curiosa.",
		"si china a guardare qualcosa di piccolo che zampetta via, e per un po' non guarda altro.",
	},
	["victory.w13.still.070"] = {
		"Quel che vive qui intorno ricomincia a uscire. Aspettava che il rumore finisse, come me.",
		"Le piccole vite qui vicino riprendono da dove avevano lasciato. Più coraggiose di quanto sembrino.",
	},
	["victory.w13.still.071"] = {
		"Qualunque fosse il motivo dello scontro, alla quiete non importa. Perdona tutti allo stesso modo.",
		"Non sta con nessuno, la quiete. Copre allo stesso modo chi vince e chi perde.",
	},
	["victory.w13.still.072"] = {
		"si tasta i fianchi distrattamente, poi sembra dimenticare perché.",
		"allunga una mano verso qualcosa, si ferma a metà e la lascia ricadere.",
		"sembra sul punto di parlare, poi lascia alla quiete il suo posto.",
	},
	["victory.w13.still.073"] = {
		"Ho le spalle all'altezza delle orecchie. Non ce le ho messe io. Giù.",
		"Solo adesso mi accorgo di avere le spalle tutte contratte. Scioglietevi, piano.",
	},
	["victory.w13.still.074"] = {
		"Toh. Guarda un po'. È tutto normale.",
		"Incredibile come torna tutto normale, e in fretta.",
	},
	["victory.w13.still.075"] = {
		"La quiete dopo uno scontro è antica. Più antica di chiunque abbia mai combattuto.",
		"Ogni scontro del mondo è finito in questo stesso silenzio. Il mio si mette in fila.",
	},
	["victory.w13.still.076"] = {
		"china brevemente il capo verso il punto dove tutto è successo, poi si volta.",
		"rivolge un cenno del capo alla quiete, come si saluta un anziano.",
		"resta un momento con gli occhi bassi, come alla fine di una cerimonia.",
	},
	["victory.w13.still.077"] = {
		"Quando finisce, il mondo mi restituisce le piccole cose. Finora l'ha sempre fatto.",
		"Quello che mi resterà non sarà lo scontro. Sarà questa quiete, e un rumore che non so nominare.",
	},
	["victory.w13.still.078"] = {
		"Adagio. Niente movimenti bruschi. Lascia che tutto si rimetta in pari.",
		"Con calma. Lascia che le cose ritrovino il loro posto.",
		"Calma, calma. Per ora non c'è niente da fare.",
	},
	["victory.w13.still.079"] = {
		"si accovaccia, gli avambracci sulle ginocchia, e lascia che il momento si allunghi.",
		"si abbassa sulle gambe e resta lì un poco, lo sguardo che vaga da una cosa all'altra.",
	},
	["victory.w13.still.080"] = {
		"Ho la testa bianca come una pagina nuova. Neanche un pensiero. Riposante, a dire il vero.",
		"In testa non c'è niente. Vuota come un pavimento appena spazzato. Potrei abituarmici.",
	},
	["victory.w13.still.081"] = {
		"segue il niente con lo sguardo, come si guarda scorrere l'acqua.",
		"lascia vagare lo sguardo, sfocato, finché non si posa su niente.",
	},
	["victory.w13.still.082"] = {
		"Tutto ha continuato a succedere per tutto il tempo. Ero io a non ascoltare.",
		"Il mondo non si è mai fermato. L'unica a uscire per un momento è stata la mia testa.",
	},
	["victory.w13.still.083"] = {
		"Mh. E poi niente. Mi sorprende sempre, quel niente.",
		"Tutto quel rumore, e poi si ferma. Ogni volta, si ferma e basta.",
	},
	["victory.w13.still.084"] = {
		"Troppo vicino. Mi siedo qui a stupirmi per un po', prima di qualunque altra cosa.",
		"Ci è andata vicina. Adesso tutto sembra prezioso, e un po' ridicolo.",
	},
	["victory.w13.still.085"] = {
		"si stende sulla schiena e guarda in alto, immobile, per un lungo momento.",
		"si lascia cadere a sedere, di peso, e per ora non prova a rialzarsi.",
	},
	["victory.w13.still.086"] = {
		"Nessuno si muova. Soprattutto io.",
		"Terra, tienimi un minuto. Poi ti lascio stare.",
	},
	["victory.w13.still.087"] = {
		"Qualcuno qui vicino ride, con la voce che trema. Mi unirei, se le ginocchia me lo permettessero.",
		"Gli altri parlano già. Li raggiungo appena il mondo smette di ronzare.",
	},
	["victory.w13.still.089"] = {
		"Torna un odore che avevo smesso di sentire. L'aria e basta, con quel che porta.",
		"Prima gli odori, stranamente. Poi i suoni. La vista se la prende comoda, come se tenesse il broncio.",
		"L'aria ha di nuovo un odore normale. Non sapevo che il normale avesse un odore.",
	},
	["victory.w13.still.090"] = {
		"canticchia qualche nota senza meta, poi si perde nel silenzio.",
		"mormora qualcosa a nessuno, troppo piano per capirlo, e lascia che svanisca.",
		"fa schioccare piano la lingua, un rumorino per mettere alla prova la quiete.",
	},
	["victory.w13.still.091"] = {
		"Sembra una promessa, questa quiete. Niente di grande: solo che il prossimo minuto potrebbe essere gentile.",
		"Questo silenzio è il modo del mondo per dire: per adesso, basta così.",
	},
	["victory.w13.still.092"] = {
		"Silenzio, ora. È terminato, e alla quiete va dato ciò che le spetta.",
		"Pace, per un poco. Che parli prima la quiete.",
	},
	["victory.w13.still.093"] = {
		"si stira con le braccia in alto finché qualcosa nella schiena non fa un clic soddisfacente.",
		"si stiracchia, piano e con cura, come chi si alza da un lungo sonno.",
		"inarca la schiena in una lunga stiracchiata soddisfatta.",
	},
	["victory.w13.still.094"] = {
		"Dopo uno scontro parlo più da {g:solo|sola}. Qualcuno dovrà pur dire qualcosa.",
		"La mia voce, dopo, suona strana, come quella di qualcun altro nella stanza accanto.",
		"Dire qualsiasi cosa fa uno strano effetto. La voce esce arrugginita.",
	},
	["victory.w13.still.095"] = {
		"Senti un po': calma piatta, e io che parlo da {g:solo|sola}. Che bellezza.",
		"Chiacchiero con nessuno. Dev'essere proprio finita.",
	},
	["victory.w13.tally.001"] = {
		"Mani, piedi, zaino. C'è tutto.",
		"Conta veloce: due mani, due piedi, uno zaino. Può bastare.",
		"Vediamo cosa resta di me. Le mani, sì. Il senno, più o meno.",
	},
	["victory.w13.tally.002"] = {
		"Rivediamola una volta, piano. Dove ho perso il primo secondo?",
		"Ripassala finché è fresca: l'inizio, il mezzo, il momento in cui è girata.",
		"Ripercorrila pezzo per pezzo, finché il ricordo è nitido.",
	},
	["victory.w13.tally.003"] = {
		"tira una dopo l'altra le cinghie dell'equipaggiamento, per sentire quale ha ceduto.",
		"passa il pollice su ogni fibbia, una per una, in cerca di quella allentata.",
		"controlla le chiusure dell'equipaggiamento con dita rapide e metodiche.",
	},
	["victory.w13.tally.004"] = {
		"Prima si mangia. Poi si discute.",
		"Non parlo di niente finché non ho messo qualcosa sotto i denti.",
		"Prima datemi da mangiare. Dopo sarò di compagnia. Forse.",
	},
	["victory.w13.tally.005"] = {
		"Ho sete. È la prima cosa sincera che sento da un pezzo.",
		"Ho la bocca secca come cuoio vecchio. Prima l'acqua; il resto si metta in fila.",
		"Acqua. Ho più voglia d'acqua che di pensare a qualsiasi cosa.",
	},
	["victory.w13.tally.006"] = {
		"Lezione: prima i miei piedi ben piantati. Tutto il resto viene dopo.",
		"Appunto per la prossima: piantare bene i piedi prima di fare i furbi.",
		"Prima sistema i piedi. Il resto viene da lì.",
	},
	["victory.w13.tally.007"] = {
		"trova qualcosa di solido su cui sedersi e ci resta un minuto, i gomiti sulle ginocchia.",
		"si siede dov'è e si concede un minuto, niente di più.",
	},
	["victory.w13.tally.008"] = {
		"Qualcuno dovrebbe inventare uno scontro che si rimette in ordine da solo.",
		"Lo scontro dura poco. È il riordino di dopo che si mangia tutto il tempo.",
	},
	["victory.w13.tally.009"] = {
		"Nello zaino c'è qualcosa che sbatacchia e non dovrebbe. Controllo prima di ripartire.",
		"Quel tintinnio nello zaino prima non c'era. Meglio guardare adesso che dopo.",
	},
	["victory.w13.tally.010"] = {
		"tampona un graffio fresco con l'angolo di un panno, guardandolo storto come un conto salato.",
		"esamina una sbucciatura nuova sull'avambraccio, decide che può aspettare e riabbassa la manica.",
		"si lecca una nocca sbucciata e scuote la mano con aria di sufficienza.",
	},
	["victory.w13.tally.011"] = {
		"Vediamo i danni. Gomiti... ginocchia... sì, quello si lamenterà.",
		"Rapporto danni: un ginocchio, un gomito e una spalla che fa il broncio.",
		"Lividi in tre punti. Quattro, se contiamo l'orgoglio.",
	},
	["victory.w13.tally.012"] = {
		"La stanchezza aspetta che sia tutto tranquillo. Gentile da parte sua, immagino.",
		"Strano come la fatica se ne stia in disparte finché il lavoro non è finito, e poi piombi addosso tutta insieme.",
		"Adesso che è finita, arriva la stanchezza. Bussa sempre a lavoro fatto.",
	},
	["victory.w13.tally.013"] = {
		"Da che parte stavo andando, prima di tutto questo? Ragiona.",
		"Ho perso l'orientamento. Ritrovalo prima di fare un passo.",
		"Primo: capire dove guardo. Secondo: ricordare dove andavo.",
	},
	["victory.w13.tally.014"] = {
		"Vinto lo scontro, perso un bottone. Scambio onesto, direi.",
		"Una vittoria, al netto di un bottone e di buona parte del mio contegno.",
		"Bilancio: uno scontro vinto, una manica strappata, la pazienza un po' sfilacciata.",
	},
	["victory.w13.tally.015"] = {
		"fa un lento giro d'orizzonte, un lato dopo l'altro, prima di concedersi di rilassarsi.",
		"guarda a sinistra, a destra e alle spalle, come chi controlla di aver chiuso la porta.",
	},
	["victory.w13.tally.016"] = {
		"Prima l'equipaggiamento. I sentimenti dopo, se avanza tempo.",
		"Prima la roba. Un pensiero o due me lo concedo quando le cinghie sono a posto.",
		"L'equipaggiamento, poi l'acqua, poi i pensieri. I pensieri per ultimi.",
	},
	["victory.w13.tally.017"] = {
		"Ho aspettato troppo a cominciare. La prossima volta la prima mossa è mia.",
		"Ho esitato all'inizio. Quell'attimo è costato più di tutto il resto.",
		"Troppi pensieri prima della prima mossa. Decidi più in fretta.",
	},
	["victory.w13.tally.018"] = {
		"Bende: qualcuna. Acqua: abbastanza. Cibo: meno di quanto vorrei. Preso nota.",
		"Controllo provviste. Acqua a posto, bende a posto, cibo agli sgoccioli.",
		"Conta le provviste prima che arrivi il prossimo guaio. È il cibo che scarseggia.",
	},
	["victory.w13.tally.019"] = {
		"apre e chiude una mano finché la rigidità non cede, poi passa all'altra.",
		"si scioglie un crampo dalle dita, nocca dopo nocca.",
	},
	["victory.w13.tally.020"] = {
		"Acqua. Poi altra acqua. Poi, forse, tornerò a ragionare.",
		"Prima si beve. L'intelligenza arriva dopo il sorso.",
		"In bocca ho il sapore di tutto lo scontro. Acqua, per favore, chiunque.",
	},
	["victory.w13.tally.021"] = {
		"Inutile giudicarla mentre le mani tremano ancora. Fra un'ora ci penso.",
		"Troppo presto per dire cosa ho sbagliato. Fra un'ora sarà evidente.",
		"Le lezioni si conservano. Lasciale raffreddare, poi passale al setaccio.",
	},
	["victory.w13.tally.022"] = {
		"Nessuno verrà a sistemare al posto mio. Diamoci da fare.",
		"Niente scudiero, niente servitù, nessuno che raccolga la mia roba. Solo io. Va bene.",
	},
	["victory.w13.tally.023"] = {
		"Stavolta la distanza l'ho tenuta bene. Ricordati com'era.",
		"Le distanze erano giuste. Qualunque cosa abbia fatto con i piedi, continua così.",
	},
	["victory.w13.tally.024"] = {
		"avvolge una striscia di stoffa attorno a una nocca sbucciata e la annoda coi denti.",
		"fascia un piccolo taglio con cura semplice e senza fretta, e ne rimbocca il capo.",
		"chiude una benda attorno al polso e dà al nodo uno strattone deciso.",
	},
	["victory.w13.tally.025"] = {
		"Lezione imparata. Avrei preferito impararla da un libro.",
		"Questa me la ricorderò. Sinceramente, avrei preferito leggerla da qualche parte.",
	},
	["victory.w13.tally.026"] = {
		"Se è rimasto indietro qualcosa che valga la pena, lo prendo. Se no, niente di perso.",
		"Un'occhiata in giro per qualcosa di utile. Poi via.",
	},
	["victory.w13.tally.027"] = {
		"Bene. Dove stavo andando? Ah, sì. Si riparte.",
		"Torno a quello che stavo facendo prima di questa interruzione così maleducata.",
		"A che punto ero? Qualcosa a proposito di arrivare da qualche parte. Vado a scoprirlo.",
	},
	["victory.w13.tally.028"] = {
		"Tutto ciò che porto pesa più di un minuto fa. Stesso zaino; è cambiato chi lo porta.",
		"Lo zaino sembra ingrassato. Non è vero: sono io che ho speso qualcosa.",
	},
	["victory.w13.tally.029"] = {
		"fa ruotare piano una caviglia, la mette alla prova e brontola alla risposta.",
		"carica il peso su una gamba, poi sull'altra, come per chiedere a ciascuna un rapporto.",
		"batte una volta ogni piede per terra, per sentire se c'è qualcosa di storto.",
	},
	["victory.w13.tally.030"] = {
		"Va bene. Qualcuno scriva che ho vinto, e anche che è stato un pasticcio.",
		"Agli atti: una vittoria. Brutta, ma una vittoria.",
		"Mettetelo a registro. Una vittoria, con annotazioni.",
	},
	["victory.w13.tally.031"] = {
		"Ho voltato le spalle troppo presto, una volta. Una sola. Basta una volta perché vada storta.",
		"Mi sono {g:girato|girata} prima che fosse davvero finita. Quel vizio devo togliermelo.",
		"Mai voltarsi finché non è finita davvero. Scrivilo da qualche parte.",
	},
	["victory.w13.tally.032"] = {
		"Prossima cosa: un posto per sedermi, qualcosa da mangiare, poi decido.",
		"Piano: mangiare, rattoppare, poi scegliere una direzione. In quest'ordine.",
		"Ordine del giorno: rattoppare, mangiare, camminare.",
	},
	["victory.w13.tally.033"] = {
		"raccoglie quello che è caduto dallo zaino durante la mischia, un oggetto dopo l'altro.",
		"si china a raccattare qualche cosa caduta durante lo scontro e la rimette al suo posto.",
	},
	["victory.w13.tally.034"] = {
		"Combattere mi mette appetito. A dire il vero, quasi tutto mi mette appetito.",
		"Ho fame. Lo scontro fa questo effetto. Anche camminare. Anche stare seduti, a dirla tutta.",
		"Lo stomaco ha messo in chiaro cosa viene dopo.",
	},
	["victory.w13.tally.035"] = {
		"Non perfetto. Abbastanza buono da insegnarmi qualcosa, che è il genere utile.",
		"Qualcosa era giusto e qualcosa no. Tieni il primo, butta il secondo.",
	},
	["victory.w13.tally.036"] = {
		"Cinghie. Fibbie. Zaino. Bene. Si va.",
		"Stringi qui, allenta là, e si riparte.",
		"Tutto allacciato? Tutto allacciato. Via.",
	},
	["victory.w13.tally.037"] = {
		"Quello che viene dopo non aspetterà i miei comodi. Preparati lo stesso.",
		"La prossima cosa arriva quando le pare. Meglio rimettersi in sesto prima.",
	},
	["victory.w13.tally.038"] = {
		"pesca dallo zaino qualcosa da mangiare e lo mastica in piedi.",
		"fruga nello zaino con la determinazione di chi, all'improvviso, ha una gran fame.",
		"mastica qualcosa preso dallo zaino, continuando a guardarsi intorno.",
	},
	["victory.w13.tally.039"] = {
		"E adesso la parte affascinante: raccattare roba da terra.",
		"Finito l'eroismo. Si passa alle faccende di casa.",
		"Qualcuno deve raccogliere tutto questo. Quel qualcuno sono io.",
	},
	["victory.w13.tally.040"] = {
		"Il ritmo l'ha deciso l'altro e io l'ho seguito. La prossima volta lo decido io.",
		"Ho combattuto al suo ritmo invece che al mio. Da correggere.",
	},
	["victory.w13.tally.041"] = {
		"Una spalla che non si alza fino in fondo. Per un po' dovrò lavorarci intorno.",
		"Qualcosa si è tirato nel fianco. Non strappato, credo. Solo tirato. Con calma.",
		"Quel polso si è girato male per un attimo. Trattalo con riguardo per un po'.",
	},
	["victory.w13.tally.042"] = {
		"Sedersi, bere, rialzarsi. Due minuti. Non di più.",
		"Due minuti a riposo, un sorso d'acqua, e riparto.",
	},
	["victory.w13.tally.043"] = {
		"sciacqua un graffio con un goccio dalla borraccia e scuote la mano per scacciare il bruciore.",
		"versa un po' d'acqua su un taglio, lo osserva e decide che è abbastanza pulito.",
	},
	["victory.w13.tally.044"] = {
		"Partenza più lenta, chiusura più pulita. Ricordatelo.",
		"La pazienza all'inizio ha pagato alla fine. Da rifare.",
		"Me la sono presa con calma, e ha pagato. Tienilo a mente.",
	},
	["victory.w13.tally.045"] = {
		"Qualcosa nell'equipaggiamento andrà rattoppato. C'è sempre qualcosa.",
		"Ogni scontro costa un punto di cucitura o una cinghia. Vediamo quale stavolta.",
		"Controlla le cuciture. Sono sempre le prime a cedere.",
	},
	["victory.w13.tally.046"] = {
		"Lo scontro è finito. Adesso tocca a me contro il nodo di questa cinghia.",
		"Ma certo che la fibbia si è incastrata. Aspetta sempre che lo scontro sia finito.",
		"Lo scontro lo gestisco. Questo nodo no.",
	},
	["victory.w13.tally.047"] = {
		"Nessuno ti dice quanto di questa vita sia rimettere in ordine dopo.",
		"I racconti saltano questa parte. Lo stare seduti, il riordinare, i piccoli dolori.",
	},
	["victory.w13.tally.048"] = {
		"si mette lo zaino in spalla, lo assesta e cerca la direzione che stava seguendo.",
		"si tira su lo zaino, sceglie una direzione e riparte senza cerimonie.",
	},
	["victory.w13.tally.049"] = {
		"Adesso so una cosa che prima non sapevo. Utile.",
		"Ho imparato qualcosa. Non saprei ancora dire cosa, ma l'ho sentito entrare.",
		"Ogni scontro è una lezione, si dice. Stavolta ho anche prestato attenzione.",
	},
	["victory.w13.tally.050"] = {
		"Troppo slancio. Sono {g:entrato|entrata} prima di aver visto abbastanza. Stavolta non è costato niente; la prossima, chissà.",
		"Ho avuto fretta. Ha funzionato, ed è questo il guaio della fretta.",
	},
	["victory.w13.tally.051"] = {
		"Sistemato. Qual è la prossima cosa?",
		"Sistemato. Allora, cos'altro c'è da fare?",
		"Bene. Avanti la prossima cosa.",
	},
	["victory.w13.tally.052"] = {
		"Prima le mani ferme. Poi si cammina. Nessuno ha mai guadagnato niente a ripartire barcollando.",
		"Aspetta che il tremito lasci le mani. Se ne va sempre, se lo lascio fare.",
	},
	["victory.w13.tally.053"] = {
		"si spazzola via lo sporco di dosso con colpi secchi e seccati, come se fosse un'offesa personale.",
		"si scuote lo sporco da maniche e ginocchia, senza grande entusiasmo per il risultato.",
	},
	["victory.w13.tally.054"] = {
		"Tutto si piega ancora nel verso giusto. Ho controllato due volte, per sicurezza.",
		"Articolazioni tutte presenti, e si piegano dalla parte giusta. Ottimo risultato.",
		"Contati i pezzi. Ci sono tutti.",
	},
	["victory.w13.tally.055"] = {
		"Prima di fidarmi di questa calma, un'occhiata lunga tutt'intorno.",
		"Della quiete fidati solo dopo averla guardata da ogni lato.",
	},
	["victory.w13.tally.056"] = {
		"Il ginocchio dice di no. Il ginocchio può presentare reclamo.",
		"Quel ginocchio avrà parecchio da dirmi. Lo ascolterò quando avrò tempo.",
		"Il gomito protesta. Preso nota. Ignorato, per ora.",
	},
	["victory.w13.tally.057"] = {
		"apre lo zaino e controlla che dentro non si sia rotto niente.",
		"sbircia nello zaino, lo scuote piano e tende l'orecchio a qualcosa di incrinato.",
		"svuota una tasca nel palmo, ne fa la cernita e rimette tutto a posto.",
	},
	["victory.w13.tally.058"] = {
		"Per metà del tempo ho guardato la cosa sbagliata. La prossima volta, occhi su ciò che conta.",
		"Fissavo il pericolo evidente e mi è sfuggito quello silenzioso. Da annotare.",
	},
	["victory.w13.tally.059"] = {
		"Basta stare impalati. C'è da fare e da camminare.",
		"Inutile trattenersi. C'è parecchio cammino da fare.",
	},
	["victory.w13.tally.060"] = {
		"Fame, sete, dolori, e la vita. Tre guai e una fortuna.",
		"Dolori, fame, e la vita ancora addosso. Ai primi due posso rimediare.",
	},
	["victory.w13.tally.061"] = {
		"beve un lungo sorso d'acqua e si pulisce la bocca con la manica.",
		"beve a fondo dalla borraccia, si ferma, poi ne manda giù un altro po'.",
		"stappa la borraccia e beve senza nemmeno sedersi.",
	},
	["victory.w13.tally.062"] = {
		"Buon appoggio, buon tempismo. Ne bastava uno su due; me li prendo tutti e due.",
		"Tempo giusto, appoggio giusto. Non abituartici.",
	},
	["victory.w13.tally.063"] = {
		"Bendalo adesso, finché è piccolo. Le cose piccole crescono se le ignori.",
		"Un graffio lasciato a sé diventa un guaio entro la settimana. Curalo subito.",
		"Pulisci, fascia, e solo dopo dimenticalo.",
	},
	["victory.w13.tally.064"] = {
		"Mi ritroverò pezzi di questo scontro nell'equipaggiamento per giorni.",
		"Non so come, mezzo scontro mi è finito dentro il colletto.",
		"L'equipaggiamento ha l'aria di chi ha perso. Ho vinto io, sia chiaro.",
	},
	["victory.w13.tally.065"] = {
		"ripete un momento dello scontro con piccoli movimenti delle mani, correggendo l'angolo.",
		"rifà un passo dello scontro, lo corregge di poco e annuisce, come chi prende un appunto.",
	},
	["victory.w13.tally.066"] = {
		"Qualunque cosa stessi facendo prima, va ancora fatta. Riprendila.",
		"La faccenda non si cura dell'interruzione. Rimettiti sotto.",
	},
	["victory.w13.tally.067"] = {
		"Muoviti, prima che s'irrigidisca tutto.",
		"Se mi fermo troppo, si incolla tutto. Meglio smaltirlo camminando.",
	},
	["victory.w13.tally.068"] = {
		"Un po' meglio di prima. Lo sento nelle mani. Poco, ma c'è.",
		"Qualcosa sta diventando più fluido. Non molto. Abbastanza da accorgermene.",
		"Meglio di com'ero. Non di molto, ma meglio.",
	},
	["victory.w13.tally.069"] = {
		"si preme il palmo sul fianco, aspetta e conclude che non c'è niente di rotto.",
		"si tasta una costola dolente, fa una smorfia, la tasta un'altra volta e rinuncia a saperne di più.",
	},
	["victory.w13.tally.070"] = {
		"Un problema in meno, un livido in più. Mi sta bene.",
		"Tolto un guaio, guadagnato un livido. Siamo pari.",
	},
	["victory.w13.tally.071"] = {
		"A metà ho smesso di pensare e ho solo reagito. A volte è la cosa giusta.",
		"La parte in cui ho smesso di fare piani è andata meglio di quella in cui li facevo. C'è da rifletterci.",
	},
	["victory.w13.tally.072"] = {
		"Non c'è tempo per ammirare. Raccogli e vai.",
		"Non c'è niente da ammirare. Si raccatta e si va.",
		"Rimetti tutto nello zaino. Ammirare si fa dopo.",
	},
	["victory.w13.tally.073"] = {
		"fa un rapido inventario delle provviste, muovendo le labbra in silenzio mentre conta.",
		"dispone qualche provvista per terra, la conta e la rimette nello zaino.",
	},
	["victory.w13.tally.074"] = {
		"Ogni parte di me vuole una lunga sosta. Si accontenti di una breve.",
		"Tutto in me vota per sdraiarsi. Voto registrato e respinto.",
	},
	["victory.w13.tally.075"] = {
		"Sopravvivere allo scontro: fatto. Ora sopravvivere fino a un posto dove si mangia.",
		"La vittoria va benissimo, ma adesso la scambierei con un piatto caldo.",
		"Ho vinto. Dov'è il cibo che dovrebbe venire con la vittoria?",
	},
	["victory.w13.tally.076"] = {
		"Conta quello che ha funzionato. Conta quello che no. Non barare col conto.",
		"Bilancio onesto: due mosse buone, una scarsa, e per il resto fortuna.",
	},
	["victory.w13.tally.077"] = {
		"scruta il terreno intorno in cerca di qualcosa di caduto, poi si raddrizza con un breve cenno.",
		"controlla il punto dove è cominciato lo scontro, come se lì potesse esserci ancora qualcosa.",
	},
	["victory.w13.tally.078"] = {
		"Si riposa quando si è al sicuro. Qui lo si è abbastanza. Dunque: riposo.",
		"È abbastanza tranquillo per sedersi. E io mi siedo.",
	},
	["victory.w13.tally.079"] = {
		"Cucitura strappata sulla cinghia. Da rammendare alla prima sosta tranquilla, o cede del tutto.",
		"Quella cucitura è andata. Ago e filo alla prossima fermata.",
		"Una fibbia si è piegata. Per ora regge, poi smetterà di farlo.",
	},
	["victory.w13.tally.080"] = {
		"Imparala una volta, per bene, così non serve rinsegnartela.",
		"Qualunque cosa mi abbia insegnato, la lezione preferisco non pagarla due volte.",
	},
	["victory.w13.tally.081"] = {
		"si accovaccia e fissa il vuoto per un po', poi si rimette all'opera.",
		"si ferma con le mani sulle ginocchia, poi si raddrizza e torna alle sue faccende.",
	},
	["victory.w13.tally.082"] = {
		"Alzarsi, raccogliere, andare avanti. Quasi tutta la vita sta in queste tre cose.",
		"Gran parte di questa vita è rialzarsi e raccattare le proprie cose. Gli scontri sono i pezzetti brevi in mezzo.",
	},
	["victory.w13.tally.083"] = {
		"Qualcosa da mangiare. Qualsiasi cosa. Adesso non sto a fare storie.",
		"Mangerei di tutto, in questo momento. Possibilmente cibo.",
	},
	["victory.w13.tally.084"] = {
		"Ho speso troppo e troppo presto. Tieni qualcosa da parte per la fine.",
		"Ho dato tutto all'inizio e alla fine mi restava poco. Dosati.",
		"La prossima volta dosati. Uno scontro ha una fine, e vorrei arrivarci in forze.",
	},
	["victory.w13.tally.085"] = {
		"riallaccia una fibbia che si era sganciata, borbottando contro chi l'ha fabbricata.",
		"riannoda un laccio sfilacciato con più forza che abilità.",
	},
	["victory.w13.tally.086"] = {
		"Bene. Si riprende il passo, occhi avanti.",
		"Si torna al passo di marcia. Occhi aperti.",
		"Chiusa lì. Occhi su, gambe in moto.",
	},
	["victory.w13.tally.087"] = {
		"Prima le bende. Poi si pensa. Camminare viene molto dopo.",
		"Questo va fasciato prima di tutto. Il resto può aspettare.",
		"Sederti prima di cadere. Fasciarti prima di camminare.",
	},
	["victory.w13.tally.088"] = {
		"Troppo vicino. Siediti, rattoppati, mangia, e non cercare altri guai finché non hai fatto tutte e tre le cose.",
		"Ci è mancato poco. La regola, dopo uno così: niente guai nuovi finché le ferite non sono chiuse.",
	},
	["victory.w13.tally.089"] = {
		"si lascia scendere a terra con cautela e comincia a stabilire quale ferita curare per prima.",
		"si siede a fatica, srotola una benda e comincia dalla ferita peggiore.",
	},
	["victory.w13.tally.090"] = {
		"Si è arrivati troppo vicino. La prossima volta mi tiro indietro prima, non dopo.",
		"Sono {g:rimasto|rimasta} dentro troppo a lungo. La prossima volta mi sfilo prima: l'orgoglio guarisce più piano dei tagli.",
	},
	["victory.w13.tally.091"] = {
		"Mi serve un momento. E una benda. E forse un ricambio di tutto.",
		"Situazione: in piedi, qualche perdita, suggerimenti graditi.",
	},
	["victory.w13.tally.092"] = {
		"Controllate tutti l'equipaggiamento. Se qualcosa è rotto, ditelo adesso, non dopo.",
		"Controllo dell'equipaggiamento, tutti quanti. Meglio scoprire la cinghia rotta qui che nel prossimo scontro.",
	},
	["victory.w13.tally.093"] = {
		"Acqua, bende, una breve sosta. Poi si riparte. Nessuno si allontana.",
		"Rattoppatevi in fretta. Si parte quando è pronto l'ultimo.",
	},
	["victory.w13.tally.094"] = {
		"Prima di tutto, guarda gli altri. Qualcuno nasconde un'andatura zoppicante; c'è sempre qualcuno.",
		"Conta gli altri, poi conta i loro graffi. I miei possono aspettare un minuto.",
	},
	["victory.w13.tally.095"] = {
		"squadra gli altri a uno a uno, in cerca di chi zoppica, prima di dire una parola.",
		"passa la borraccia alla persona più vicina e aspetta che gliela restituisca.",
	},
	["victory.w13.weight.001"] = {
		"Volevi vivere quanto me. Tutto qui.",
		"Lo stesso desiderio da entrambe le parti: uscirne. È stato esaudito solo il mio.",
		"Due desideri per la stessa cosa. Poteva avverarsene uno solo.",
	},
	["victory.w13.weight.002"] = {
		"Di vittorioso, in me, non sento niente. Solo ciò che è avanzato.",
		"Vincere è una parola grossa, per questo. Sono ciò che restava quando la lotta si è fermata.",
		"Chiamatela vittoria, se volete. A me pare di essere l'avanzo.",
	},
	["victory.w13.weight.003"] = {
		"china il capo verso chi è caduto e lascia passare un momento senza una parola.",
		"si fa silenzioso sul punto in cui la lotta è finita, il mento basso, prima di riprendere il cammino.",
	},
	["victory.w13.weight.004"] = {
		"Se avessi girato le spalle, ti avrei lasciato andare. Vorrei che lo sapessi.",
		"C'era una via d'uscita, per te. Te l'avrei lasciata libera.",
		"Scappare mi sarebbe andato benissimo. Non ti avrei inseguito.",
	},
	["victory.w13.weight.005"] = {
		"Quando toccherà a me, spero che chi resta in piedi si fermi un momento così.",
		"Un giorno a non rialzarmi sarò io. Spero che chi resta sappia essere gentile.",
		"Chi mi darà la fine, si fermi un attimo dopo. Non chiederei altro.",
	},
	["victory.w13.weight.006"] = {
		"Che non diventi mai una cosa normale. Guai.",
		"Il giorno in cui questo non mi farà più niente, smetto. Questa è la regola.",
		"Se un giorno smetterà di pesare, vorrà dire che in me qualcosa è andato a male.",
	},
	["victory.w13.weight.007"] = {
		"Avrei preferito che non si arrivasse a questo. Ci si è arrivati comunque, e ho risposto.",
		"Non l'avevo cercato. Ma è venuto a cercarmi, e non ho voltato le spalle.",
	},
	["victory.w13.weight.008"] = {
		"Che ciò che viene dopo ti sia lieve. Non dirò male di te.",
		"Qualunque cosa ci sia oltre, che sia più mite di me.",
		"Ciò che sta oltre ti tratti con bontà. Meglio di quest'ora.",
	},
	["victory.w13.weight.009"] = {
		"Poco fa, in questa faccenda, le vite erano due. Adesso c'è solo la mia, e sembra presa in prestito.",
		"{g:Vivo|Viva}. Continuo a rigirarmi la parola, come se potesse essere uno sbaglio.",
	},
	["victory.w13.weight.010"] = {
		"si volta una volta verso chi è caduto, poi una seconda, più a lungo.",
		"lancia a chi è caduto uno sguardo lungo, senza più traccia di rabbia.",
		"fa per andarsene, si ferma, e resta a guardare indietro da sopra la spalla.",
	},
	["victory.w13.weight.011"] = {
		"Queste non le vince nessuno. Qualcuno perde solo un po' meno.",
		"Vinto? Diciamo perso di meno. Chiamiamo le cose col loro nome.",
		"Vittoria. Parola elegante per chi ha perso un po' meno dell'altro.",
	},
	["victory.w13.weight.012"] = {
		"Sarebbe bastato un passo falso per ribaltare tutto. Mio o dell'altra parte. Non è stato mio.",
		"Non il coraggio, non la giustizia. L'ha deciso un attimo di fortuna, ed è caduto dalla mia parte.",
	},
	["victory.w13.weight.013"] = {
		"Se gli spiriti raccolgono ciò che cade, che lo raccolgano con mano leggera.",
		"Chiunque vegli su chi cade, vegli anche su chi è caduto adesso.",
		"Se qualcosa si prende cura dei caduti, la Luce o gli spiriti, che passi di qui.",
	},
	["victory.w13.weight.014"] = {
		"Stavolta non c'era spazio per la pietà. Mi piace pensare che l'avrei concessa.",
		"In quella lotta non c'è stato un attimo per la clemenza. L'ho cercato.",
		"La pietà ha bisogno di un attimo in cui stare. Quella lotta non ne ha offerto nessuno.",
	},
	["victory.w13.weight.015"] = {
		"Mi dispiace. Per quel che vale, e adesso vale poco.",
		"Mi dispiace che sia andata così. Lo direi più forte, se servisse.",
		"Per quel poco di conforto che porta: mi dispiace.",
	},
	["victory.w13.weight.016"] = {
		"Perché deve sempre finire così? Non ho mai una risposta, solo la prossima lotta.",
		"Qualcuno dovrebbe chiedersi perché cominciano, le lotte. Mai chi ha un'arma in mano, a quanto pare.",
		"Perché sempre questo? Nessuna risposta. Solo il prossimo.",
	},
	["victory.w13.weight.017"] = {
		"si porta due dita alla fronte: un piccolo saluto, tutto privato, a chi è caduto.",
		"alza una mano, il palmo aperto, verso chi è caduto: un congedo senza parole.",
	},
	["victory.w13.weight.018"] = {
		"Non combatto perché mi piace. Che resti detto, qui.",
		"Non per il gusto di farlo. Mai per quello.",
		"Di qualsiasi cosa si trattasse, non era per divertimento.",
	},
	["victory.w13.weight.019"] = {
		"Ogni lotta da cui esco è una in meno tra me e l'ultima. Il conto non lo conosco.",
		"Un'ultima lotta mi aspetta, prima o poi. Non era questa. È tutto quel che mi è dato sapere.",
		"Una in meno tra me e l'ultima. Quante ne restino, non si sa.",
	},
	["victory.w13.weight.020"] = {
		"In vita. Niente congratulazioni, per favore: non so bene cosa ho fatto per meritarlo.",
		"L'ho scampata. Se me lo meritassi, chiedimelo più tardi.",
	},
	["victory.w13.weight.021"] = {
		"Il silenzio dopo una lotta è il promemoria più chiaro che conosca: finisce, per tutti.",
		"Tutto ciò che vive ha un'ultima lotta. Ne ho appena vista una. Forse più d'una.",
		"Ogni vita arriva alla sua ultima lotta. Per qualcuno è arrivata adesso. Non per me.",
	},
	["victory.w13.weight.022"] = {
		"Va' avanti. Uno di questi anni ti seguirò, e saremo pari.",
		"Fai strada. Arriverò anch'io, col tempo. Non resta nessuno.",
		"Tienimi un posto. Da parte mia, nessuna fretta.",
	},
	["victory.w13.weight.023"] = {
		"Qualcosa che voleva continuare a vivere adesso non vive più. E la ragione sono io.",
		"Voleva l'ora successiva quanto la volevo io. Me la sono presa.",
		"In tutto quello c'era una gran voglia di andare avanti. Sono io ad averla spenta.",
	},
	["victory.w13.weight.024"] = {
		"piega le dita una a una, guardandole come se appartenessero a un estraneo.",
		"si accovaccia un momento, immobile, come in ascolto di qualcosa che non arriva.",
	},
	["victory.w13.weight.025"] = {
		"Non è rimasta rabbia. Dopo non ce n'è mai. Strano.",
		"Tutta quella furia, e dopo niente. Nemmeno antipatia.",
		"Curioso come l'odio se ne vada per primo. Resta solo stanchezza, e un po' di dispiacere.",
	},
	["victory.w13.weight.026"] = {
		"Mi dico che era necessario. Certi giorni ci credo perfino.",
		"Necessario. Continuerò a usare questa parola finché non smetterà di suonare vuota.",
		"Andava fatto. Dirlo non lo rende più leggero, solo vero.",
	},
	["victory.w13.weight.027"] = {
		"Non ancora. Non io. Non stavolta.",
		"Non tocca a me. Qualcuno tiene una lista, e il mio nome non c'è. Per ora.",
		"Chiunque stia facendo l'appello, il mio nome non l'ha chiamato. Non stavolta.",
	},
	["victory.w13.weight.028"] = {
		"Tutto ciò che vive è in prestito. Il mio non è stato reclamato. Non in quest'ora.",
		"La vita è un prestito, e chi presta non segue un calendario che io sappia leggere.",
		"Tempo in prestito, tutto quanto. Chi l'ha prestato mi lascia il mio ancora per un po'.",
	},
	["victory.w13.weight.029"] = {
		"mormora qualche parola sommessa su chi è caduto, di quelle che chiunque direbbe per chiunque.",
		"dice una breve parola per chi è caduto, troppo bassa per arrivare lontano, e la lascia andare.",
	},
	["victory.w13.weight.030"] = {
		"Meglio se non fosse caduto nessuno. Lo dico sul serio.",
		"Una lotta può finire in due modi, e io avrei scelto quello in cui non cade nessuno.",
		"La lotta migliore è quella da cui se ne vanno tutti. Questa no.",
	},
	["victory.w13.weight.031"] = {
		"Ogni lotta è una moneta lanciata. Questa è caduta dalla mia parte, e non era altro.",
		"La fortuna ha la memoria lunga e la pazienza corta. Cerco di non appoggiarmici.",
		"Stavolta è uscita la mia faccia. Alla moneta non importa chi la chiama.",
	},
	["victory.w13.weight.032"] = {
		"Posto sbagliato, momento sbagliato, per tutti e due. Solo io posso pentirmene.",
		"Sfortuna da entrambe le parti. La mia era appena un po' migliore.",
	},
	["victory.w13.weight.033"] = {
		"Forse qualcosa aspetta che torni. Forse niente. Non saprò mai quale delle due.",
		"Se qualcosa aspettava il suo ritorno, adesso aspetta il nulla.",
	},
	["victory.w13.weight.034"] = {
		"resta immobile, come in ascolto, per accertarsi che il mondo l'abbia {g:tenuto|tenuta} con sé.",
		"chiude gli occhi per il tempo di qualche lenta conta, poi li riapre sul mondo.",
		"resta un momento a occhi chiusi, come chi controlla che una porta sia ancora sbarrata.",
	},
	["victory.w13.weight.035"] = {
		"Ti ricorderò. È il massimo che posso darti, e te lo do.",
		"Il tuo nome non lo saprò. La lotta, quella, la terrò. È ciò che ho da offrire.",
		"Qualcuno dovrebbe ricordarti. Tanto vale che sia io.",
	},
	["victory.w13.weight.036"] = {
		"È bastato così poco, perché finisse. È questa la parte che continuo a guardare.",
		"Quanto poco ci vuole. Un attimo, un passo sbagliato, e un'intera vita è chiusa.",
		"Tra andare avanti e smettere c'è così poco. Un capello. Meno.",
	},
	["victory.w13.weight.037"] = {
		"Andarsene sulle proprie gambe è un privilegio. Cerco di ricordarmelo.",
		"Andarsene, dopo, è un regalo. Non tutti lo ricevono.",
		"Me ne vado con le mie forze. Molti non ci riescono. Non lo dimenticherò.",
	},
	["victory.w13.weight.038"] = {
		"C'è una parte di me che vorrebbe non sentire niente, dopo. La tengo al guinzaglio corto.",
		"Un pezzo di me smetterebbe volentieri di farci caso. Non gli lascio campo libero.",
		"Non sentire niente sarebbe più comodo. È così che comincia.",
	},
	["victory.w13.weight.039"] = {
		"gira con cura attorno a chi è caduto, come si fa con qualcosa che dorme.",
		"passa alla larga da chi è caduto, senza volersi avvicinare troppo.",
	},
	["victory.w13.weight.040"] = {
		"Dovrai aspettarmi, Morte. Ho ancora delle faccende da sbrigare.",
		"Morte, prendi appuntamento. Ho da fare.",
		"Tu no, Morte. Non ancora. Va' a disturbare qualcuno con meno impegni.",
	},
	["victory.w13.weight.041"] = {
		"Ogni vita finisce in un punto preciso. La mia lo sta ancora cercando. Non la aiuterò.",
		"La mia fine è là fuori, che sceglie il suo terreno. Non ha scelto questo.",
	},
	["victory.w13.weight.042"] = {
		"Piano. È finita. Da me non arriva più niente.",
		"Basta. Con te ho chiuso. Va' dove devi andare.",
		"Tra te e me è chiusa. Che resti chiusa.",
	},
	["victory.w13.weight.043"] = {
		"Dentro di me qualcuno tiene un conto, e non è quello delle vittorie.",
		"Quello che conto non sono le vittorie. Non so cosa sia. Qualcosa di più pesante.",
	},
	["victory.w13.weight.044"] = {
		"lascia passare un lungo momento prima di voltarsi, come ci si allontana da una tomba.",
		"fa un passo lento all'indietro da chi è caduto, poi un altro, prima di girarsi.",
	},
	["victory.w13.weight.045"] = {
		"Doveva farlo qualcuno. L'ho fatto io. Me lo porto addosso.",
		"Qualcuno doveva. Non l'avrei lasciato fare a un altro.",
		"Toccava a me farlo, tocca a me portarlo. A nessun altro.",
	},
	["victory.w13.weight.046"] = {
		"La Luce, gli spiriti, la Madre Terra: qualcuno deve pur tenere il conto. Preferisco non vedere il registro.",
		"Molti credono che qualcosa pesi ogni vita. Se è così, che pesi con mano leggera.",
	},
	["victory.w13.weight.047"] = {
		"Per poco non è andata dall'altra parte. L'ho sentita pendere.",
		"Così vicino può arrivare, dunque. Non avevo bisogno di saperlo.",
		"Quello era l'orlo. Adesso l'ho visto. Avrei preferito di no.",
	},
	["victory.w13.weight.048"] = {
		"Per poco a restare indietro ero io. Non credo che dimenticherò quanto poco.",
		"Mezzo attimo in più, e a pensare questo ci sarebbe qualcun altro. O nessuno.",
	},
	["victory.w13.weight.049"] = {
		"si lascia andare su un ginocchio e resta così, una mano premuta a terra come per tenersi al mondo.",
		"resta lì, sulle gambe incerte, ad aspettare che il mondo smetta di pendere da un lato.",
	},
	["victory.w13.weight.050"] = {
		"Contiamoci. Ci siamo tutti? Allora una parola per chi stava dall'altra parte.",
		"Camminiamo tutti. Tenetevelo stretto. Non è dovuto a nessuno.",
	},
	["victory.w13.weight.051"] = {
		"Tutti i volti che conosco sono ancora qui. Non fingerò che sia altro che fortuna.",
		"Dei nostri non manca nessuno. Dall'altra parte, il conto è diverso.",
	},
	["victory.w13.weight.052"] = {
		"Abbiamo combattuto l'uno per l'altro. Se qualcuno lo chiede, che sia questa la ragione.",
		"Se avevamo un motivo, ci stava proprio accanto.",
	},
	["victory.w13.weight.053"] = {
		"Qualcosa di così forte meriterebbe di essere ricordato da più di una persona.",
		"Qui è caduto qualcosa di grande. Comunque la si pensi, merita un attimo di silenzio.",
	},
	["victory.w13.weight.054"] = {
		"Qualcosa di così forte non si aspettava di cadere. Nemmeno io me lo aspetterò, quando toccherà a me.",
		"Un avversario più grande, e dopo un silenzio più grande. Non so perché l'uno porti l'altro.",
	},
	["victory.w13.weight.055"] = {
		"resta a lungo davanti a ciò che è caduto, come si sta davanti a qualcosa che non tornerà.",
		"china il capo, piano e a fondo, verso la cosa possente che è caduta.",
	},
	["victory.w13.weight.056"] = {
		"Qualche bardo, un giorno, la farà sembrare nobile. Non lo era. Era solo questo.",
		"Se qualcuno la canterà, lascerà fuori il punto in cui qualcosa ha smesso di vivere.",
	},
	["victory.w13.weight.057"] = {
		"Non provavo odio. Voglio che sia chiaro, anche solo a me.",
		"Nessun odio, da parte mia. Solo la lotta, e poi la sua fine.",
		"Rancore non ne avevo. Che almeno questo resti agli atti.",
	},
	["victory.w13.weight.058"] = {
		"A nessuno è promessa l'ora successiva. Questa ce l'ho, e la spenderò bene.",
		"Un'ora in più, non meritata. Meglio che valga qualcosa.",
		"Un'ora che non mi spettava. Meglio non sprecarla a rimuginare.",
	},
	["victory.w13.weight.059"] = {
		"La regola più antica che ci sia: uno prosegue, uno si ferma. Nessuno ne ha trovata una più gentile.",
		"Uno riprende il cammino, uno riposa. La regola è più vecchia di chiunque viva, e non più mite.",
	},
	["victory.w13.weight.060"] = {
		"si strofina il viso con entrambe le mani, come per togliersi di dosso qualcosa che non viene via.",
		"si preme a lungo la base dei palmi sugli occhi.",
		"si passa le mani sul viso, dall'alto in basso, e le tiene lì, ferme.",
	},
	["victory.w13.weight.061"] = {
		"Non era per la gloria. Se era per qualcosa, che fosse per qualcosa di buono.",
		"Che sia servito a qualcosa. È tutto ciò che gli chiedo.",
		"La gloria non c'entrava. Spero che c'entrasse qualcosa di meglio.",
	},
	["victory.w13.weight.062"] = {
		"Sono {g:vivo|viva} grazie a cose che non ho scelto: un appoggio, un istante, un colpo di fortuna.",
		"Di metà del perché sono in vita non ho alcun merito. Dell'altra metà non c'è da vantarsi.",
	},
	["victory.w13.weight.063"] = {
		"Che la terra ti accolga con dolcezza.",
		"Nessuno ti insegue più. Riposa, se ci riesci.",
		"Niente più fretta, per te. Riposa in pace.",
	},
	["victory.w13.weight.064"] = {
		"Chi ha deciso che doveva succedere? Non io. Nemmeno dall'altra parte, credo. Eppure è successo.",
		"Nessuno l'ha scelto, non davvero. È arrivato e basta, come arrivano queste cose.",
	},
	["victory.w13.weight.065"] = {
		"si prende un momento prima di muoversi, lo sguardo basso, come in attesa del permesso di andare avanti.",
		"tarda a voltarsi, e tarda ancora di più a muovere il primo passo.",
		"indugia, gli occhi a terra, più a lungo di quanto servirebbe.",
	},
	["victory.w13.weight.066"] = {
		"Mi tengo il fatto di essere in vita e non gli faccio troppe domande.",
		"Strano regalo, ricevere la vita da una lotta. Me lo tengo lo stesso.",
	},
	["victory.w13.weight.067"] = {
		"Se ci sarà una prossima volta, che finisca con qualcuno che indietreggia. Lo lascerei fare.",
		"Preferisco sempre che qualcuno se ne vada. Meno silenzi come questo in cui stare.",
		"La prossima volta, che una delle due parti ci ripensi. Non mi offenderei se fosse l'altra.",
	},
	["victory.w13.weight.068"] = {
		"A chi rispondevi, la Luce, gli spiriti o nessuno: va' da loro, adesso.",
		"Torna a ciò che ti ha fatto, allora. Qualunque cosa sia, ti aspetta.",
	},
	["victory.w13.weight.069"] = {
		"C'è un vuoto grande esattamente quanto ciò che è caduto. Ne vedo quasi i contorni.",
		"Lo spazio che occupava è ancora lì. Solo che adesso dentro non c'è niente.",
	},
	["victory.w13.weight.070"] = {
		"posa per un momento il palmo aperto a terra, come per sentire se gira ancora.",
		"si accovaccia e preme una mano sul terreno, appena un attimo, poi si rialza.",
	},
	["victory.w13.weight.071"] = {
		"Nessuno esce da queste cose migliore di come c'è entrato. Esce, e basta.",
		"Fuori. Né meglio né peggio. Solo fuori.",
	},
	["victory.w13.weight.072"] = {
		"Solo quando non c'è altro modo: è la regola che cerco di rispettare. C'era, stavolta?",
		"La domanda c'è sempre: c'era un'altra via? Continuerò a farmela, anche quando la risposta è no.",
		"C'era un'altra via? Dopo, arriva sempre questa domanda.",
	},
	["victory.w13.weight.073"] = {
		"Uno in meno al mondo. Non mi è concesso rallegrarmene.",
		"Il mondo è un po' più vuoto. L'ho fatto io. Me ne prendo carico.",
	},
	["victory.w13.weight.074"] = {
		"Che qualcuno lo noti o no, qui è finito qualcosa, e contava.",
		"Contava. Piccolo, senza canzoni, eppure contava lo stesso.",
		"Nessuno tiene memoria di lotte come questa. Qualcosa, però, ci è finito dentro.",
	},
	["victory.w13.weight.075"] = {
		"resta senza muoversi, nell'immobilità di chi veglia per poco.",
		"veglia un breve istante, immobile, prima di lasciar rientrare il mondo.",
	},
	["victory.w13.weight.076"] = {
		"Felice di essere in vita. Mi dispiace per quel che è costato. Le due cose insieme, chissà come.",
		"Sollievo e rimpianto nello stesso boccone. Strano sapore.",
	},
	["victory.w13.weight.077"] = {
		"Ogni cammino finisce alla stessa porta. Il mio ha ancora qualche passo. Tutto qui.",
		"C'è una porta in fondo a ogni cosa. Le sono {g:passato|passata} accanto, abbastanza vicino da vederne il chiavistello.",
	},
	["victory.w13.weight.078"] = {
		"Ecco. Niente più dolore, per te. Almeno questo potevo dartelo.",
		"Per te è finita, adesso. Niente più sofferenza.",
		"Ciò che ti faceva male adesso non può più raggiungerti.",
	},
	["victory.w13.weight.079"] = {
		"Fame, paura, terreno, ordini. Le lotte cominciano per motivi piccoli e finiscono in cose grandi.",
		"Quasi tutte le lotte cominciano per qualcosa di piccolo. Finiscono tutte in qualcosa che non lo è.",
	},
	["victory.w13.weight.080"] = {
		"Perdonami. O no, come preferisci. In ogni caso, mi dispiace.",
		"Non ti chiedo perdono. Dico solo che avrei voluto un altro modo.",
		"Se c'è un perdono da avere, lo accetto. Se no, capisco.",
	},
	["victory.w13.weight.081"] = {
		"C'è chi direbbe una preghiera, adesso. Per questa volta, dovrà bastare un momento di silenzio.",
		"Le parole che i devoti dicono in momenti così: che le sostituisca questo silenzio.",
	},
	["victory.w13.weight.082"] = {
		"Che pesi su di me, non su chi verrà dopo.",
		"Spetta a me portarlo. Meglio io che chi ha meno forza da spendere.",
		"Mettilo sul mio conto. Questa non deve pagarla nessun altro.",
	},
	["victory.w13.weight.083"] = {
		"si siede pesantemente lì dov'è e resta a lungo a guardare il punto della lotta.",
		"si lascia scendere a terra e resta così, i gomiti sulle ginocchia, in silenzio.",
		"si siede lì dov'è e per un po' non fa proprio niente.",
	},
	["victory.w13.weight.084"] = {
		"Ogni vita che vedo finire rende la mia più piccola e più cara, nello stesso momento.",
		"Strano come una vita persa dia più valore all'altra. Alla mia, intendo.",
	},
	["victory.w13.weight.085"] = {
		"Non lo volevo. L'ho finito lo stesso. Tutte e due le cose restano mie.",
		"Che lo volessi o no, è chiusa, e tocca a me risponderne.",
	},
	["victory.w13.weight.086"] = {
		"Questa me la dimenticherò. È la cosa che mi turba di più: quante ne dimenticherò.",
		"Fra una settimana sarà una lotta tra tante. Meriterebbe di più, e non lo avrà.",
	},
	["victory.w13.weight.087"] = {
		"Ciò che vive finisce. Ciò che finisce si ricorda, oppure no. Va', in ogni caso.",
		"La vita finisce. Questo non è mai stato in dubbio. Solo il quando.",
	},
	["victory.w13.weight.088"] = {
		"Non ne farò un racconto. Non mi appartiene abbastanza da poterlo narrare.",
		"Certe cose non sono mie da vantare. Questa è una di quelle.",
		"Non è una storia da raccontare accanto al fuoco. La tengo per me.",
	},
	["victory.w13.weight.089"] = {
		"si ferma, poi accenna un leggero inchino verso ciò che è caduto, quello che si fa a un proprio pari.",
		"rivolge un piccolo inchino rigido verso chi è caduto, senza fretta e senza enfasi.",
	},
	["victory.w13.weight.090"] = {
		"Troppo vicino. Sentivo la fine allungare la mano verso di me.",
		"Qualcosa mi ha messo una mano sulla spalla, poco fa. Non mi sono {g:voltato|voltata} a guardare.",
		"Così vicino alla fine, e mi ha lasciato andare. Non sprecherò quello che mi ha reso.",
	},
	["victory.w13.weight.091"] = {
		"Qualunque cosa mi abbia tenuto in piedi, la Luce, la fortuna o la pura testardaggine, le devo qualcosa.",
		"Ho appena contratto un debito. Non so con chi, ma intendo pagarlo.",
	},
	["victory.w13.weight.092"] = {
		"Prima di andare: un momento per ciò che è caduto. È il minimo che dobbiamo.",
		"Noi andiamo avanti. Chi è caduto no. Pensateci un istante, prima di muovervi.",
	},
	["victory.w13.weight.093"] = {
		"Le mani sono ferme. Quasi preferirei che tremassero: sembrerebbe più giusto.",
		"Mani ferme, dopo una cosa così. Non so cosa dica di me.",
	},
	["victory.w13.weight.094"] = {
		"Che sia l'ultima per un po'. Per favore.",
		"Basta per un po'. Dico sul serio, a chiunque stia ascoltando.",
	},
	["victory.w13.weight.095"] = {
		"si tocca il petto, poi il viso, come per accertarsi di sé.",
		"si passa lentamente una mano lungo il braccio, come si controlla che qualcosa ci sia ancora.",
		"si posa una mano sulla spalla, per un attimo, quasi con gentilezza.",
	},
	["victory.w13.wit.001"] = {
		"Sia messo agli atti che ho vinto. Il come, lasciamolo fuori.",
		"Scrivete pure: vittoria. I particolari, per favore, lasciateli in bianco.",
		"Per la cronaca: ho prevalso. Sul metodo, nessun commento.",
	},
	["victory.w13.wit.002"] = {
		"Grazie della visita. Non tornare, per favore.",
		"Grazie di esserti fatto vivo. L'uscita è ovunque, tranne qui.",
		"Bella visita. Evitiamo di ripeterla.",
	},
	["victory.w13.wit.003"] = {
		"Da adesso accetto complimenti. Da chiunque. Da qualunque cosa.",
		"I complimenti si depongono ai miei piedi. Quando fa comodo.",
		"L'ammirazione è gradita. Sulla provenienza non faccio storie.",
	},
	["victory.w13.wit.004"] = {
		"Molto istruttivo. Per uno dei due, perlomeno.",
		"Una lezione per tutti e due. Solo che non ho capito quale.",
	},
	["victory.w13.wit.005"] = {
		"Vorrei sporgere reclamo. A chi, non saprei.",
		"Qualcuno mi deve delle scuse. Va bene da parte di chiunque.",
		"Chi è il responsabile di tutto questo? Avrei delle osservazioni.",
	},
	["victory.w13.wit.006"] = {
		"Addio. Non sentirti in obbligo di scrivere.",
		"Arrivederci, allora. Meglio non farne un'abitudine.",
		"Vai pure. Non serve che scrivi.",
	},
	["victory.w13.wit.007"] = {
		"È finita? Sembra finita. Decido io che è finita.",
		"Con la presente dichiaro chiusa la faccenda. Obiezioni per iscritto.",
		"Finita? Finita. Bene, cominciava ad annoiarmi.",
	},
	["victory.w13.wit.008"] = {
		"Delizioso, davvero. Il bis lo lascio volentieri ad altri.",
		"Un'esperienza indimenticabile. Preferirei non replicarla per intero.",
		"Grazie, no. Una porzione è stata più che sufficiente.",
	},
	["victory.w13.wit.009"] = {
		"Nessuno ha bisogno di sapere com'è andata. Nemmeno io.",
		"Com'è andata è una faccenda privata fra me e i miei lividi.",
	},
	["victory.w13.wit.010"] = {
		"Dunque. Qualcun altro? No? Splendido.",
		"Altre questioni all'ordine del giorno? Nessuna? Allora la seduta è tolta.",
		"Il prossimo, prego. Nessuno? Che pace.",
	},
	["victory.w13.wit.011"] = {
		"Ogni mossa era voluta. Qualcuna voluta male, ma voluta.",
		"Tutto calcolato. Soprattutto le parti venute bene.",
		"Tecnica pura. In parte perfino mia.",
	},
	["victory.w13.wit.012"] = {
		"Sto bene. Alcune parti di me stanno bene. Qualcuna.",
		"Tutto a posto. Mi stendo un attimo qui e continuo a stare bene.",
		"Niente storie. Sono qui, in buona parte.",
	},
	["victory.w13.wit.013"] = {
		"Vinto. Ai punti. Pochissimi punti.",
		"Una vittoria, tecnicamente. E quel 'tecnicamente' sta faticando parecchio.",
		"Vinto per un pelo. Un pelo sottile e malconcio.",
	},
	["victory.w13.wit.014"] = {
		"Ben combattuto. Chiunque fosse a strillare, non ero io.",
		"Bel lavoro, tutti quanti. Non ditemi che faccia facevo.",
	},
	["victory.w13.wit.015"] = {
		"Ottimo lavoro di squadra. Suppongo. Non stavo guardando nessuno di voi.",
		"Che bella coordinazione, gente. Quasi tutta per caso, sospetto.",
	},
	["victory.w13.wit.017"] = {
		"Nessun rancore. Be', un pochino. Piccolo piccolo.",
		"Rancore, nessuno. Una lagnanza modesta, forse. Formato tascabile.",
		"Niente di personale. Anzi, un po' personale. Passiamo oltre.",
	},
	["victory.w13.wit.018"] = {
		"Splendido. Prima di tutto questo stavo andando da qualche parte. Chissà dove.",
		"Ottimo. Prima di tutto questo avevo un programma. Adesso è sparito.",
		"Bene. Che stavo facendo prima dell'interruzione?",
	},
	["victory.w13.wit.019"] = {
		"Calma, su. Hai vinto. Comportati di conseguenza.",
		"Contegno, per favore. La vittoria è tua. Datti un tono.",
		"Su la testa. Chi vince non si ingobbisce. Non troppo.",
	},
	["victory.w13.wit.020"] = {
		"Qualcuno chiami un cronista. Uno che costi poco.",
		"Che lo si registri come impresa eroica. Breve.",
	},
	["victory.w13.wit.021"] = {
		"Grazie, grazie. Niente applausi.",
		"Vi prego, niente applausi. O qualcuno. Un pochino non guasterebbe.",
		"Troppo gentili, troppo gentili. Nessuno ha detto niente, ma troppo gentili.",
	},
	["victory.w13.wit.022"] = {
		"Serviva più dignità e qualche gomito in meno.",
		"La prossima volta: stesso risultato, meno gomiti.",
	},
	["victory.w13.wit.023"] = {
		"Ho vinto. Qualcuno suoni qualcosa.",
		"Vittoria! Una campana, qualcuno. Una qualsiasi. Va bene, canticchio io.",
	},
	["victory.w13.wit.024"] = {
		"Non è il mio capolavoro. Forse non è nemmeno un lavoro.",
		"Capolavoro, no di certo. Uno schizzo alla buona, semmai.",
		"Efficace. Bello da vedere, no di certo.",
	},
	["victory.w13.wit.025"] = {
		"Basta così, grazie. Davvero, ne ho a sufficienza.",
		"Per me è abbastanza, grazie. Non ne prendo più.",
	},
	["victory.w13.wit.026"] = {
		"Diciamo che siamo pari. Tu non lo dirai, ma io sì.",
		"È stato un piacere. Soprattutto mio.",
		"Pari, allora. Secondo i miei conti, non i tuoi.",
	},
	["victory.w13.wit.027"] = {
		"Ahi. Vittoria. Ahi.",
		"Vittoria, certo. Emotivamente, però, sono a pezzi.",
	},
	["victory.w13.wit.028"] = {
		"Chi aveva scommesso contro di me? Pagate. Avete perso.",
		"Chi ha scommesso che toccava prima a me, adesso paga da bere a tutti.",
	},
	["victory.w13.wit.029"] = {
		"Ah. Ah ah. Sì. Ora la smetto.",
		"Eh eh. Scusa, eh. Sono i nervi. Li fa molto ridere.",
	},
	["victory.w13.wit.030"] = {
		"Di questo non si parlerà. Da parte mia, perlomeno.",
		"Consideratelo mai avvenuto. Ufficialmente, avevo altro da fare.",
		"Questa finisce nel cassetto delle cose di cui non parlo.",
	},
	["victory.w13.wit.031"] = {
		"Ah, il fascino dell'avventura.",
		"Questa è la parte che nei discorsi di reclutamento si guardano bene dal dire.",
		"Avventura e fascino. Almeno uno dei due si è presentato.",
	},
	["victory.w13.wit.032"] = {
		"Altro? Adesso ci ho preso gusto.",
		"Ce n'è altro? L'idea comincia a piacermi.",
	},
	["victory.w13.wit.033"] = {
		"E dicevano che non avrei combinato niente. Nessuno l'ha mai detto. Comunque.",
		"Chi dubitava di me? Nessuno? Bene. Allora gongolo davanti a nessuno.",
	},
	["victory.w13.wit.034"] = {
		"Onore al merito: ci hai provato. Il merito finisce lì.",
		"Hai insistito parecchio. Questo te lo concedo, e nient'altro.",
		"Punti per l'impegno. Nessuno per il risultato.",
	},
	["victory.w13.wit.035"] = {
		"Devo avere un aspetto spaventoso. Non dirmelo, me lo sento.",
		"Ho la faccia al suo posto? Mi sembra montata di traverso.",
	},
	["victory.w13.wit.036"] = {
		"Scusate le urla. Erano tutte strettamente necessarie.",
		"Perdonate il baccano. Pare che aiuti.",
		"Le urla erano tattiche. Quasi tutte.",
	},
	["victory.w13.wit.037"] = {
		"Mi devi un pisolino. Me lo riscuoto per conto mio.",
		"I miei nervi vorrebbero dirti due parole. Anzi, parecchie.",
	},
	["victory.w13.wit.038"] = {
		"Ottimo lavoro, io. Mi ringrazierò di persona.",
		"Ben fatto. La modestia mi impedirebbe di aggiungere altro. La modestia è in minoranza.",
		"Complimenti a me. Sinceri.",
	},
	["victory.w13.wit.039"] = {
		"Se l'eroismo da vicino è questo, le canzoni sono molto generose.",
		"Le canzoni non parlano di quel gran sbracciarsi. Adesso capisco perché.",
		"Nessuno canta la parte in cui si cerca soltanto di non far cadere niente.",
	},
	["victory.w13.wit.040"] = {
		"Vittoria ottenuta. Dignità in arrivo.",
		"Vinto. La dignità arriverà poi, con calma sua.",
	},
	["victory.w13.wit.041"] = {
		"A un certo punto ho fatto un verso che non ammetterò mai.",
		"Lì in mezzo c'è stato un suono. Non un suono coraggioso. Il mio.",
		"Lì in mezzo mi è scappato uno squittio. Resta fra me e lo squittio.",
	},
	["victory.w13.wit.042"] = {
		"Il piano era vincere. Piano eseguito. Che stratega.",
		"Strategia: uscirne in piedi. Esecuzione: impeccabile, a guardarla di sbieco.",
		"Tattica: insistere finché non è finita. Geniale, davvero.",
	},
	["victory.w13.wit.043"] = {
		"La mia roba ha l'aria di chi ha perso. Le spiegherò io come stanno le cose.",
		"Tutto quello che porto addosso adesso è un po' storto. Anche chi lo porta.",
	},
	["victory.w13.wit.044"] = {
		"Lo racconterei a casa, ma poi dovrei spiegare la parte di mezzo.",
		"Vale un racconto, se salto il pezzo in cui le cose si sono fatte disordinate.",
	},
	["victory.w13.wit.045"] = {
		"La mia faccia sta facendo qualcosa. Preferisco non sapere cosa.",
		"Dovrebbe esserci una parola per la faccia che sto facendo. Non una parola gentile.",
		"Sto facendo quella faccia. Quella che preferirei non vedere.",
	},
	["victory.w13.wit.046"] = {
		"Qualcosa fa male. L'orgoglio, invece, gode di ottima salute.",
		"Qualche punto dolente. Nessuno sull'amor proprio.",
	},
	["victory.w13.wit.047"] = {
		"Verdetto sul combattere, dopo attenta riflessione: continua a non piacermi.",
		"È finita, e la mia opinione sulle zuffe non si è mossa. Bassa, e stabile.",
		"Combattere: resta sopravvalutato.",
	},
	["victory.w13.wit.048"] = {
		"Superato, credo. La commissione se n'è andata senza commenti.",
		"Se era un esame, prima di festeggiare voglio vedere il voto.",
	},
	["victory.w13.wit.049"] = {
		"Regola uno: vincere. Regola due: sembrare che fosse voluto. Sono a metà strada.",
		"Vincere: fatto. Sembrare che non sia costato fatica: ci sto lavorando.",
	},
	["victory.w13.wit.050"] = {
		"Festeggerei, ma prima dovrei raddrizzarmi.",
		"I festeggiamenti sono rinviati finché la schiena non dà il suo consenso.",
		"Trionfo. Da un momento all'altro avrò anche l'aria trionfante.",
	},
	["victory.w13.wit.051"] = {
		"C'è gente, in giro, seduta a non far niente. Beata lei.",
		"In questo preciso istante qualcuno si sta annoiando in pace. Lo invidio.",
	},
	["victory.w13.wit.052"] = {
		"Vinto per testardaggine. Poco elegante. Efficace.",
		"Il mio contributo principale è stato non smettere. Vale lo stesso.",
		"Testardaggine: imbattuta, anche se poco ammirata.",
	},
	["victory.w13.wit.053"] = {
		"Qualunque cosa fossi, avevi un tempismo pessimo.",
		"Momento sbagliato, persona sbagliata. Sfortuna per tutti, soprattutto per te.",
		"Fra tutti i momenti per incrociarmi, hai scelto proprio quello.",
	},
	["victory.w13.wit.054"] = {
		"Lo chiamano emozionante. Io lo chiamerei un ottimo argomento a favore delle sedie.",
		"Dicono che a questo punto ci si senta euforici. Io sento il bisogno di una sedia.",
	},
	["victory.w13.wit.055"] = {
		"L'eroismo: novanta parti di fegato e dieci di non cadere per terra.",
		"Metà del coraggio è restare in piedi. Quella metà mi è riuscita.",
	},
	["victory.w13.wit.056"] = {
		"Sembra tutto ancora attaccato. Il conteggio preciso lo faccio dopo.",
		"Così vicino da leggere le clausole in piccolo. Non mi sono piaciute per niente.",
		"Inventario: io, per la maggior parte. Dettagli a seguire.",
	},
	["victory.w13.wit.057"] = {
		"Appunto: prenderle è meno divertente dell'alternativa.",
		"Ho imparato una cosa sul prendere colpi: non fa per me.",
	},
	["victory.w13.wit.058"] = {
		"Abbiamo vinto. Lascerò credere agli altri che sia stato merito loro.",
		"Il mio ruolo: stare dove mi dicevano. Fondamentale, senza dubbio.",
		"Vittoria per comitato. Io ero nel comitato.",
	},
	["victory.w13.wit.060"] = {
		"Un ringraziamento alle ginocchia, che hanno collaborato quasi sempre.",
		"Grazie al piede sinistro. Il destro sa benissimo cosa ha fatto.",
		"I piedi hanno fatto del loro meglio. Un meglio un po' altalenante.",
	},
	["victory.w13.wit.061"] = {
		"Nella versione ufficiale ero {g:magnifico|magnifica}.",
		"Prima di raccontarla, la rivedrò. E parecchio.",
		"Quando lo racconterò, ci sarà molta più grazia. Molta, molta di più.",
	},
	["victory.w13.wit.062"] = {
		"Fra tutti i modi di passare un momento, non è tra i miei dieci preferiti.",
		"Ho avuto momenti migliori, e peggiori. Il prossimo lo vorrei più noioso.",
	},
	["victory.w13.wit.063"] = {
		"Chi decide che queste cose capitino proprio a me? Vorrei scambiarci due parole.",
		"Deve esistere un ufficio che organizza le mie zuffe. Ed è gestito malissimo.",
	},
	["victory.w13.wit.064"] = {
		"Il coraggio, dicono, è farlo comunque. Tanto coraggio. Pochissima voglia.",
		"Coraggio, sì. Entusiasmo, non particolarmente.",
	},
	["victory.w13.wit.065"] = {
		"Un preavviso sarebbe stato gentile. Lo farò presente a nessuno.",
		"Nessun preavviso, nessuna presentazione. Che maniere, da ogni parte.",
		"Nemmeno un saluto, prima. Che maniere.",
	},
	["victory.w13.wit.066"] = {
		"E come prossimo numero: starmene immobile a lamentarmi.",
		"Prossimo punto del programma: una lunga seduta e un breve brontolio.",
	},
	["victory.w13.wit.067"] = {
		"La vittoria sa d'imbarazzo, con un filo di sollievo.",
		"Trionfo, lo chiamano. Il mio ha un retrogusto vagamente imbarazzato.",
	},
	["victory.w13.wit.068"] = {
		"Immagino che valga come storia. Corta, e senza battute memorabili.",
		"Se è un racconto, è un racconto magro. Nessuno chiederà il bis.",
		"Una storia, sì. Di quelle che chi ascolta pianta a metà.",
	},
	["victory.w13.wit.069"] = {
		"{g:Eroe|Eroina}, in via provvisoria. In attesa di verifica.",
		"Mi chiamerò {g:eroe|eroina} finché qualcuno non mi corregge.",
		"{g:Eroe|Eroina}, fino a nuovo avviso.",
	},
	["victory.w13.wit.070"] = {
		"Se qualcuno lo chiede, la calma non mi ha mai lasciato.",
		"Calma e nervi saldi dall'inizio alla fine. Così lo ricorderò, vero o no che sia.",
		"Imperturbabile. Userò questa parola. Nessuno può dimostrare il contrario.",
	},
	["victory.w13.wit.071"] = {
		"Ho qualcosa nell'orecchio. Non voglio sapere cosa.",
		"Durante la mischia mi è entrato qualcosa nel colletto. Ci resta per dispetto.",
	},
	["victory.w13.wit.072"] = {
		"A pensarci bene, avrei preferito una lettera di protesta.",
		"Io avrei preferito chiudere la questione con un sopracciglio alzato.",
		"Sarebbe bastato un biglietto cortese. O un colpo di tosse.",
	},
	["victory.w13.wit.073"] = {
		"In mezzo a tutto ho perso un pensiero bellissimo. Riguardava il cibo.",
		"Prima stavo pensando a qualcosa di piacevole. Sparito. Grazie tante.",
	},
	["victory.w13.wit.074"] = {
		"Ora viene il difficile: andarsene come se niente fosse.",
		"Prossima prova: un'uscita disinvolta. Nessuno ha visto niente. Io meno di tutti.",
	},
	["victory.w13.wit.075"] = {
		"Dovrei far pagare il biglietto. Anche se poi chi pagherebbe?",
		"Un bello spettacolo. Biglietti venduti, purtroppo, zero.",
	},
	["victory.w13.wit.076"] = {
		"La mia razione di emozioni è al completo. Mandatemi un po' di noia.",
		"Di brividi ne ho fatto scorta per un pezzo. Adesso gradirei un po' di tedio.",
		"Emozioni: ricevute per intero. Altre non servono, grazie.",
	},
	["victory.w13.wit.077"] = {
		"Superata, con danni lievi solo all'opinione che ho di me.",
		"Tutto intero, più o meno. L'autostima ha preso una piccola ammaccatura.",
	},
	["victory.w13.wit.078"] = {
		"fa un inchino a nessuno in particolare, e nessuno ricambia.",
		"rivolge un piccolo inchino all'aria, poi ne disapprova la maleducazione.",
		"si inchina appena al mondo in generale, che non se ne accorge.",
	},
	["victory.w13.wit.079"] = {
		"controlla l'equipaggiamento pezzo per pezzo, trova tutto e sembra quasi {g:deluso|delusa}.",
		"si tasta l'equipaggiamento senza trovare nulla che manchi, e una bella lamentela va sprecata.",
	},
	["victory.w13.wit.080"] = {
		"si raddrizza con grande dignità, che dura fino al passo successivo.",
		"assume una posa nobile e la mantiene per quasi un istante intero.",
		"si erge con gran cerimonia, poi si assesta un po' più in basso.",
	},
	["victory.w13.wit.081"] = {
		"si guarda intorno, come sperando che qualcuno abbia visto. O che nessuno abbia visto.",
		"cerca testimoni con un'espressione che potrebbe voler dire tutto e il contrario.",
	},
	["victory.w13.wit.082"] = {
		"fa un cenno secco verso lo spazio vuoto dove prima c'erano guai.",
		"congeda con un breve cenno il punto in cui prima stavano i guai.",
	},
	["victory.w13.wit.083"] = {
		"alza una mano in saluto allo scontro, come a un ospite che si è trattenuto troppo.",
		"saluta lo scontro con garbo, come si accompagna alla porta una visita noiosa.",
	},
	["victory.w13.wit.084"] = {
		"pesca dall'equipaggiamento un oggettino inspiegabile e lo guarda con sospetto.",
		"scuote una manica, fissa con sospetto quel che ne cade e decide di non indagare.",
	},
	["victory.w13.wit.085"] = {
		"borbotta una lamentela a nessuno, con dovizia di particolari.",
		"comincia a brontolare, ci ripensa, e brontola lo stesso.",
		"elenca qualche lagnanza a nessuno, contandole sulle dita.",
	},
	["victory.w13.wit.086"] = {
		"riordina l'equipaggiamento con cura esagerata, come chi rassetta dopo ospiti sgraditi.",
		"sistema ogni cinghia con pignoleria, come se dovessero arrivare visite.",
	},
	["victory.w13.wit.087"] = {
		"si tasta dalla testa ai piedi, contando, e il conto torna.",
		"passa in rassegna gli arti, con evidente soddisfazione per il totale.",
	},
	["victory.w13.wit.088"] = {
		"si guarda le mani come un premio ricevuto per sbaglio.",
		"si osserva le mani con lieve stupore, come se avessero agito senza chiedere il permesso.",
	},
	["victory.w13.wit.089"] = {
		"tenta una posa eroica, la tiene un istante e la lascia andare con un'alzata di spalle.",
		"prende una posa trionfale, non trova nessuno ad ammirarla e ci rinuncia.",
		"prova ad assumere un'aria vittoriosa, arriva più o meno a metà e se ne accontenta.",
	},
	["victory.w13.wit.090"] = {
		"si schiarisce la gola come per un discorso, poi ci ripensa.",
		"si raddrizza per dire qualcosa di memorabile, e non dice proprio niente.",
	},
	["victory.w13.wit.091"] = {
		"esamina i danni con aria severa, come se si potessero rimproverare.",
		"squadra ogni livido nuovo con disapprovazione, uno dopo l'altro e con calma.",
		"elenca ad alta voce i nuovi dolori, in ordine di maleducazione.",
	},
	["victory.w13.wit.092"] = {
		"fa agli altri un cenno che vuol dire ben fatto, e dimenticate quel che avete visto.",
		"scambia con gli altri uno sguardo che dice: della parte centrale non si parla.",
	},
	["victory.w13.wit.094"] = {
		"si spolvera le spalle con solennità, anche se non c'è niente da spolverare.",
		"toglie dalla manica un granello immaginario con grande formalità.",
		"si aggiusta una corona immaginaria, poi si ricorda che non c'è.",
	},
	["victory.w13.wit.095"] = {
		"batte un piede, aspettando che succeda qualcos'altro. Non succede niente.",
		"aspetta un attimo un bis che non arriva, con aria sollevata.",
		"si guarda attorno, in attesa per metà di applausi e per metà di altri guai. Non arriva né l'una né l'altra cosa.",
	},
	["victory.w13.wit.096"] = {
		"osserva il risultato con l'espressione di chi legge un conto inatteso.",
		"considera l'intera faccenda con la faccia di chi assaggia una minestra riuscita male.",
		"contempla la scena con la pazienza di chi si lamenterà dopo.",
	},
}, "base_combat")
