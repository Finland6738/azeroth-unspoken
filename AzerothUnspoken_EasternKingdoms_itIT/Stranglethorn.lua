-- Italian texts of the regional pack eastern_stranglethorn (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Stranglethorn.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("stranglethornvale", "itIT", "eastern_stranglethorn", [==[
	["stv.h.attack.01"] = {
		"Questa giungla è già abbastanza affollata. Fai spazio!",
		"Lok'tar! Giù, tra le felci!",
	},
	["stv.h.attack.02"] = {
		"Non muoverti. Fa troppo caldo per inseguirti.",
		"Tieni, eccoti qualcosa di peggio del caldo.",
	},
	["stv.h.battle.01"] = {
		"Allora esci dal verde. Ti sento respirare.",
		"Basta nasconderti tra le felci. Fatti avanti.",
		"È da un pezzo che mi stai alle calcagna. Chiudiamola qui.",
	},
	["stv.h.battle.02"] = {
		"pianta i piedi nel fango molle e appiccicoso mentre l'attacco esplode dal sottobosco.",
		"scosta una cortina di rampicanti e si trova davanti il nemico che aspettava lì dietro.",
		"si volta di scatto allo schiocco di un ramo, il sudore che punge gli occhi, l'arma già alzata.",
	},
	["stv.h.battle.03"] = {
		"Troppo vicino, troppo veloce. In questo verde non li vedi mai finché non ti sono addosso.",
		"Niente spazio per colpire, niente spazio per fuggire. E va bene. Allora è qui.",
	},
	["stv.h.battle.04"] = {
		"Tieniti i tuoi trofei, Bloodscalp. Io nella collezione non ci entro.",
		"La mia testa resta sulle spalle, troll. La tua, vedremo.",
	},
	["stv.h.battle.05"] = {
		"La tua guerra è finita da anni, soldato. Nessuno te l'ha detto?",
		"Kurzen ti paga ancora? Ne dubito. Consideralo il tuo congedo.",
	},
	["stv.h.battle.06"] = {
		"Calma, bestia. Hai scelto il pasto sbagliato.",
		"Tutto denti e niente pazienza. Conosco il tipo.",
		"Avanti, allora. Fammi vedere perché questa giungla ha paura di te.",
	},
	["stv.h.battle.07"] = {
		"Fa troppo caldo per queste cose. Sbrighiamoci.",
		"D'accordo, ma con questo caldo io non corro da nessuna parte.",
		"Ma certo. Perché riposare al fresco quando si può fare a botte nel fango?",
	},
	["stv.h.journey.01"] = {
		"Da quassù Stranglethorn è un unico tetto verde senza fine, con qualche rovina grigia che spunta qua e là.",
		"Finalmente sopra le chiome. Quassù l'aria si muove. Avevo dimenticato che potesse farlo.",
		"Laggiù è tutto caldo e denti. Da questa altezza sembra quasi morbido, come il muschio su un sasso.",
	},
	["stv.h.journey.02"] = {
		"scivola giù dalla viverna in un'aria così densa e umida che sembra di entrare in una coperta bagnata.",
		"atterra, e il caldo della giungla si richiude addosso come l'acqua su un sasso caduto.",
	},
	["stv.h.landmark.01"] = {
		"{landmark}. Capanne, un muro di tronchi appuntiti e la torre dello zeppelin sopra gli alberi. Da queste parti, vale come una fortezza.",
		"Stendardi dell'Orda nell'aria umida, orchi al cancello. Grom'gol è piccola, ma è nostra.",
	},
	["stv.h.landmark.02"] = {
		"{landmark}. Occhio al borsello, e poi a dove metti i piedi sui pontili, in quest'ordine.",
		"Una città dentro una scogliera, piena di goblin e d'oro. Cosa mai potrebbe andare storto?",
	},
	["stv.h.lowhp.01"] = {
		"Il verde mi si stringe intorno, ai margini della vista. Resisti. Resisti.",
		"La giungla può aspettarmi ancora un po'. Da mangiare ne ha in abbondanza.",
		"Tutto si fa morbido e lontano. Su. Resta in piedi.",
	},
	["stv.h.lowhp.02"] = {
		"Sanguino con questo caldo? Allora chiudo la faccenda prima di seccarmi.",
		"Solo questo? Le zanzare di Stranglethorn mi hanno preso più sangue di te.",
	},
	["stv.h.lowhp.03"] = {
		"barcolla contro un tronco, {g:fradicio|fradicia} di sudore e di peggio, e tiene l'arma alzata.",
		"cade su un ginocchio nel fango per un istante, poi si rimette in piedi a fatica.",
	},
	["stv.h.muse.01"] = {
		"L'aria qui è così densa che potrei strizzarla, e avrei sete lo stesso.",
		"Ogni respiro, in questa giungla, è metà acqua e metà caldo. Nessuno dei due serve a niente.",
		"Ho smesso di sudare. Credo di aver cominciato a gocciolare e basta.",
	},
	["stv.h.muse.02"] = {
		"Volti di pietra sotto i rampicanti, ognuno più grande di una capanna. I troll che li scolpirono volevano essere ricordati. La giungla aveva altri progetti.",
		"Gradini che salgono verso il nulla, mura tenute insieme dalle radici. Un impero intero, e il verde se lo sta mangiando piano piano.",
		"Chi ha costruito queste terrazze voleva che durassero per sempre. Ma le radici hanno pazienza, e stanno vincendo.",
	},
	["stv.h.muse.03"] = {
		"si ferma sotto la volta degli alberi e ascolta: uccelli, insetti, foglie che gocciolano e, lontano, qualcosa di grosso che si apre la strada nella boscaglia.",
		"si arresta nella penombra verde, dove le foglie gocciolano senza sosta e la giungla non tace mai, nemmeno per un momento.",
	},
	["stv.h.muse.04"] = {
		"Grom'gol è una palizzata, una torre per lo zeppelin e qualche grunt stanco. Tutta la presa dell'Orda su questa giungla sta lì, e regge.",
		"Molto lontano da Orgrimmar, quel campo. Mura sottili, troll a due passi da ogni lato. Eppure gli stendardi restano su.",
		"Ogni asse di Grom'gol è arrivata sotto gli occhi di qualcuno che la voleva sparita. Lo si capisce da come le guardie fissano gli alberi.",
	},
	["stv.h.muse.05"] = {
		"A Booty Bay ti rivenderebbero il tuo stesso sudore, un tanto a bicchiere.",
		"I goblin hanno costruito una città intera dentro una scogliera solo per stare più vicini ai soldi. Bisogna riconoscerglielo.",
	},
	["stv.h.muse.06"] = {
		"I Bloodscalp appendono i loro trofei dove il sentiero curva, così li vedi prima ancora di vedere i troll. E funziona.",
		"Teschi sui pali al margine della radura. Un messaggio, e per niente sottile: questa è ancora terra dei Bloodscalp.",
	},
	["stv.h.muse.07"] = {
		"Un nano ha fatto tutta questa strada per sparare alle tigri e poi scriverne. Le tigri, immagino, la vedono in un altro modo.",
		"I cacciatori di Nesingwary continuano a contare pelli come se la giungla potesse restare senza denti. Non succederà.",
		"Chissà dove, una pagina del libro di quel vecchio cacciatore sta volando tra le felci. Qui dentro si perdono perfino le sue storie.",
	},
	["stv.h.muse.08"] = {
		"Da un po' qualcosa a strisce mi tiene il passo, appena dentro il fogliame. Io continuo a camminare. Anche lui.",
		"Ci sono occhi in quel sottobosco. Non li vedo. Però li sento, come si sente il calore che sale da una pietra.",
	},
	["stv.h.muse.09"] = {
		"Raptor. Sempre in coppia, sempre dal lato che non stai guardando.",
		"Se senti schioccare tra le felci, smetti di ammirare i fiori.",
		"I raptor cacciano come un branco di pessime idee: veloci, rumorosi e tutti insieme.",
	},
	["stv.h.muse.10"] = {
		"I gorilla di qui si battono il petto davanti a tutto ciò che si muove. Poi vengono a controllare se si muove ancora.",
		"Attenzione alle scimmie. Sono più sveglie di quanto sembrino, e sembrano già piuttosto sveglie.",
	},
	["stv.h.muse.11"] = {
		"passa una mano su un volto di pietra scolpita mezzo inghiottito da un albero, con la bocca spalancata ormai piena di muschio.",
		"aggira un idolo rovesciato nel sottobosco: gli occhi di gemme spariti da tempo, il ghigno ancora al suo posto.",
	},
	["stv.h.muse.12"] = {
		"La giungla corre fino alla sabbia e lì si ferma, come se perfino lei portasse rispetto al mare.",
		"Verde alle spalle, azzurro davanti, e una striscia di sabbia bianca nel mezzo. Per un attimo il caldo sembra quasi gentile.",
		"Oltre la risacca l'acqua ha un colore per cui non ho parole. La giungla le cede il passo senza combattere.",
	},
	["stv.h.muse.13"] = {
		"In questa giungla morde tutto. Le mosche, le piante, probabilmente anche il fango.",
		"Oggi sei tipi diversi di insetti hanno banchettato su di me, e nessuno ha detto grazie.",
		"Le zanzare di qui potrebbero portarsi via un goblin, e fargli pure pagare il viaggio.",
	},
	["stv.h.muse.14"] = {
		"I troll dell'Orda parlano dei Bloodscalp come si parla di un cugino che si è portato via i coltelli buoni.",
		"Chiedi a un Darkspear delle tribù della giungla e guardagli la faccia. Vecchia parentela, rancori ancora più vecchi, e niente di semplice.",
	},
	["stv.h.muse.15"] = {
		"Soldati umani che vivono in questa giungla come in una guerra mai finita. Qualunque cosa Kurzen avesse promesso loro, non era questo.",
		"Gli uomini di Kurzen portano uniformi diventate verdi di muffa. Sono venuti qui per combattere, e la giungla se li è tenuti.",
	},
	["stv.h.muse.16"] = {
		"Dietro le grandi mura di Zul'Gurub i Gurubashi invocano ancora qualcosa che beve sangue. Preferirei non incontrarlo.",
		"Le porte di Zul'Gurub restano chiuse, e dicono che i sacerdoti là dentro nutrano ancora un dio col sangue. Certe porte è meglio lasciarle stare.",
	},
	["stv.h.muse.17"] = {
		"Metà dei fiori qui sono bellissimi e l'altra metà ha fame. Tutto il trucco sta nel distinguerli.",
		"Quel rampicante si è mosso. Sono quasi {g:sicuro|sicura} che quel rampicante si è mosso.",
	},
	["stv.h.npc_meet.01"] = {
		"Una viverna quaggiù, in tutto questo caldo umido. Sembra contenta della giungla quanto lo sono io.",
		"Ali verso un posto più asciutto, e un pezzo di cielo aperto. Niente, in questa giungla, mi è sembrato così gentile.",
	},
	["stv.h.npc_meet.02"] = {
		"Hai qualcosa che tenga lontani gli insetti? Pago il doppio.",
		"Quanto costa una bevanda fresca, da queste parti? O è meglio non saperlo?",
		"Fammi vedere quello che non marcisce con quest'umido.",
	},
	["stv.h.npc_meet.03"] = {
		"fa un cenno alla guardia, che tiene gli occhi fissi sul margine degli alberi più che su chi arriva.",
		"passa accanto alla sentinella, che suda nel caldo senza smettere un attimo di sorvegliare la giungla.",
	},
	["stv.h.quest_complete.01"] = {
		"posa ciò che era stato chiesto, ancora umido e impregnato dell'odore della giungla.",
		"accetta la ricompensa con una mano scivolosa di sudore e un breve cenno del capo.",
		"si pulisce il palmo infangato sulla gamba prima di prendere ciò che è dovuto.",
	},
	["stv.h.quest_complete.02"] = {
		"Fatto. La giungla non me l'ha resa facile, e non se ne ricorderà nemmeno.",
		"Un lavoro chiuso. A Stranglethorn ce n'è sempre un altro che aspetta sotto le foglie.",
		"Sistemato. Ora un posto dove sedermi senza che niente mi morda.",
	},
	["stv.h.quest_complete.03"] = {
		"Fatto. Prendo la paga, e qualcosa di fresco, se qui qualcuno sa cosa vuol dire fresco.",
		"Finito. Mezza giungla mi è rimasta attaccata agli stivali, senza sovrapprezzo.",
	},
	["stv.h.quest_complete.04"] = {
		"Ogni incarico portato a termine in questa giungla fa sembrare le mura di Grom'gol un po' meno sottili.",
		"Un sentiero ripulito, una minaccia in meno. Il campo dell'Orda respira un po' meglio.",
	},
	["stv.h.quest_complete.05"] = {
		"Il sentiero aperto a colpi di lama per arrivarci sarà già richiuso. La giungla non porta rancore: cresce, e basta.",
		"Finito, e i rampicanti hanno già coperto le mie tracce. La giungla dimentica più in fretta di chiunque.",
	},
	["stv.h.quest_complete.06"] = {
		"ripone la ricompensa e scaccia uno scarafaggio dalla manica con un colpetto del dito.",
		"dà un'occhiata alla ricompensa, poi agita la mano contro i moscerini, che a quanto pare ne vogliono una parte.",
	},
	["stv.h.quest_progress.01"] = {
		"Una parte è fatta. Il resto sta chissà dove, sotto tutto questo verde.",
		"A metà strada, forse. A Stranglethorn è difficile capire quanto sia lontana qualunque cosa.",
	},
	["stv.h.quest_progress.02"] = {
		"C'è tutto. Ora devo trovare la via d'uscita da questo verde prima che lui trovi me.",
		"Tutto quanto. È ora di consegnarlo prima che marcisca con questo caldo.",
	},
	["stv.h.subzone_enter.01"] = {
		"si fa largo attraverso un muro di foglie larghe e sbuca in {subzone}, sbattendo le palpebre al cambio di luce.",
		"segue lo stretto sentiero mentre gli alberi si diradano un poco, e {subzone} appare tra i tronchi.",
	},
	["stv.h.subzone_enter.02"] = {
		"{subzone}. Nome diverso, stesso caldo, stessi denti tra le foglie.",
		"Un'altra parte della giungla, a quanto pare. Gli insetti non se ne sono accorti.",
	},
	["stv.h.subzone_enter.03"] = {
		"Quelli di Kurzen si trincerano come se eseguissero ancora gli ordini. Teniamoci bassi.",
		"Tieni gli occhi aperti. Questi uomini sanno come difendere un accampamento.",
	},
	["stv.h.victory.01"] = {
		"Fatto. Ora viene il difficile: tornare a respirare quest'aria.",
		"È a terra. Io sono ancora in piedi, e grondo sudore, e mi basta così.",
		"Finita. Il cuore mi batte più forte degli insetti.",
	},
	["stv.h.victory.02"] = {
		"Una cosa in meno, in questa giungla, che cerca di mangiarmi. Ne restano solo mille.",
		"Ecco. La giungla può riprenderselo.",
		"Resta giù. Fa troppo caldo per rifarlo.",
	},
	["stv.h.victory.03"] = {
		"si asciuga il sudore e aspetta che, poco a poco, uccelli e insetti riprendano il loro baccano.",
		"abbassa l'arma nel silenzio improvviso, finché la giungla decide che lo scontro è finito e ricomincia a chiacchierare.",
		"arretra dal nemico caduto mentre le felci smettono di tremare e il brusio verde della giungla ritorna.",
	},
	["stv.h.victory.04"] = {
		"Niente più incursioni su Booty Bay, per te, bucaniere.",
		"Una vela rossa in meno sull'acqua. Booty Bay può ringraziarmi offrendomi da bere.",
	},
	["stv.h.victory.05"] = {
		"Un animale splendido. Quelli di Nesingwary ne vorrebbero la pelle. Io vorrei soltanto che fosse servito a qualcosa.",
		"Ha combattuto come se la giungla fosse sua. In un certo senso, lo era.",
	},
	["stv.h.victory.06"] = {
		"Tra poco la giungla avrà nascosto questo corpo sotto le foglie. Qui niente resta a lungo allo scoperto.",
		"Già le formiche, e subito dietro le mosche. Con questo caldo niente aspetta di essere mangiato.",
	},
	["stv.h.weather_change.01"] = {
		"Finalmente la pioggia, che martella sulle foglie larghe come cento tamburi. Non rinfresca niente. Rende solo il caldo più bagnato.",
		"Ecco la pioggia, dritta e tiepida come l'acqua di un bagno. La giungla la beve e ne chiede ancora.",
		"La pioggia arriva tutta insieme, rumorosa sulle chiome, e l'intera giungla comincia a fumare.",
	},
	["stv.a.attack.01"] = {
		"Prendi questo, e di' alla giungla chi te l'ha mandato!",
		"Per l'Alleanza, e per un paio di stivali asciutti, un giorno!",
		"Eccoti qualcosa che punge più di una spina!",
	},
	["stv.a.battle.01"] = {
		"Fermati e affrontami. Non ho fatto tutta questa strada per finire in un'imboscata.",
		"D'accordo. Il terreno l'hai scelto tu. Adesso tienilo, se ci riesci.",
		"Avanti, allora. La giungla ci farà da pubblico.",
	},
	["stv.a.battle.02"] = {
		"alza l'arma proprio mentre l'aggressore sbuca da un paravento di foglie larghe, abbastanza vicino da poterlo toccare.",
		"allontana con un calcio un tronco marcio per farsi spazio sotto i piedi, e si volta incontro alla carica.",
		"si appoggia di schiena al tronco di un grande albero, così che qualunque cosa arrivi, arrivi da davanti.",
	},
	["stv.a.battle.03"] = {
		"Respira. Guarda i piedi, non le foglie. Le foglie si muovono sempre.",
		"Lascia perdere il chiasso della giungla. Adesso conta un rumore solo, e mi sta venendo addosso.",
	},
	["stv.a.battle.04"] = {
		"Splendido. Proprio pensavo che a questa passeggiata mancassero un po' di denti.",
		"Possibile che in questa giungla niente sappia limitarsi a salutare?",
	},
	["stv.a.battle.05"] = {
		"Tanti saluti da Booty Bay, pirata.",
		"Fila alle tue barche, Bloodsail. Questa spiaggia non è tua.",
	},
	["stv.a.battle.06"] = {
		"Calma. Guarda le spalle, non i denti. Sono le spalle a dirti quando salta.",
		"Va bene, bestia. Tu hai fame e io sono di mezzo. Chiudiamola qui.",
	},
	["stv.a.journey.01"] = {
		"si leva dal posatoio di Booty Bay in groppa al grifone, e il porto si restringe a un anello di alberi maestri e tetti nella mano verde della scogliera.",
		"si alza sopra la baia, col grifone che batte forte le ali contro l'aria pesante, finché la giungla non sprofonda là sotto.",
	},
	["stv.a.journey.02"] = {
		"A terra a Booty Bay. Il grifone si scrolla le ali e mi lancia un'occhiata che dice: il viaggio è stata un'idea tua, non mia.",
		"I piedi su assi ben piantate, sale, pesce e goblin che strillano tutt'intorno. Booty Bay: rumorosa, allegra e carissima.",
	},
	["stv.a.landmark.01"] = {
		"{landmark}. Non è nostra, non è dell'Orda: è solo dei goblin. Per l'Alleanza, quaggiù, più al sicuro di così non si sta.",
		"Lanterne, navi, buttafuori su ogni scala e un prezzo su ogni respiro. I goblin tengono la loro città in perfetto ordine.",
		"Terreno neutrale, lo chiamano. Vuol dire che i buttafuori prendono a randellate chiunque attacchi briga, e poi fanno pagare le bende a tutte e due le parti.",
	},
	["stv.a.lowhp.01"] = {
		"Non qui. Non ho intenzione di diventare un mucchietto sotto le felci entro la settimana prossima.",
		"In piedi. Se cado in mezzo a questo verde, nessuno troverà nemmeno le ossa.",
		"Continua a muoverti. La giungla sa aspettare, ma io non sono {g:pronto|pronta} a sfamarla.",
	},
	["stv.a.lowhp.02"] = {
		"Mi rattopperò dopo. Non adesso.",
		"Un po' di sangue. Ne ho ancora parecchio, qui dentro.",
	},
	["stv.a.muse.01"] = {
		"Il Rebel Camp è qualche tenda, un fuoco da campo e uomini che a Kurzen hanno detto di no. Quaggiù, più vicino di così a Stormwind non si arriva.",
		"Soldati che hanno voltato le spalle al loro colonnello e sono rimasti lo stesso nella giungla. Il Rebel Camp è testardo, e mi piace proprio per questo.",
		"Quattro tende ai margini della giungla, con Duskwood alle spalle. I ribelli tengono il loro angolo e non chiedono un grazie.",
	},
	["stv.a.muse.02"] = {
		"L'Alleanza ha un campo di ribelli a un capo di questa giungla e una città di goblin all'altro. Tutto quello che sta in mezzo è di chi morde per primo.",
		"A nord i ribelli. A sud Booty Bay, che non è di nessuno se non dei goblin. In mezzo, una lunga camminata nel verde, piena di denti.",
	},
	["stv.a.muse.03"] = {
		"Grom'gol se ne sta sulla costa occidentale, con la sua torre dello zeppelin. Ogni volta che un'aeronave ronza sopra le chiome, controllo l'arma.",
		"L'Orda ha un campo su questa costa, e i suoi zeppelin passano bassi sopra gli alberi. Quando ne passa uno, resto all'ombra e non mi muovo.",
	},
	["stv.a.muse.04"] = {
		"A Booty Bay io e un orco beviamo allo stesso bancone e facciamo finta di non vederci. I goblin la chiamano pace.",
		"A Booty Bay la pace la tengono i buttafuori, a randellate. Nessuno ama l'Orda, laggiù, ma nessuno colpisce per primo.",
	},
	["stv.a.muse.05"] = {
		"Le seghe della Venture Co. che stridono sotto le chiome. Questa giungla è sopravvissuta a troll, tigri e guerre. Ai goblin con un contratto in mano, chissà.",
		"La Venture Co. si è piantata qui, e taglia e scava come se la giungla fosse arrivata con tanto di ricevuta.",
	},
	["stv.a.muse.06"] = {
		"Gli ogre stanno a est, nel loro tumulo. I Mosh'Ogg li senti dall'odore molto prima di vederli, ed è l'unica cortesia che ti fanno.",
		"Se il vento gira e ti lacrimano gli occhi, non è la giungla. Sono gli ogre.",
	},
	["stv.a.muse.07"] = {
		"Basilischi sulle rocce, coi cristalli che spuntano dal dorso come vetri rotti. Qualunque cosa succeda, non lasciare che uno ti tenga lo sguardo addosso troppo a lungo.",
		"Basilischi stesi sulle pietre calde, come lucertole che si sono mangiate una cava. Il peggio di loro è lo sguardo.",
		"Cristalli sul dorso, pietra nella pelle e occhi che ti trattengono un istante di troppo. Ai basilischi lascio tutto lo spazio che vogliono.",
	},
	["stv.a.muse.08"] = {
		"Al largo di questa costa ci sono sempre vele rosse. I Bloodsail razziano le spiagge come se fossero loro, e Booty Bay paga caro per dire il contrario.",
		"Pirati accampati sulle spiagge, navi pirata in mare. I Bloodsail Buccaneers vogliono questa costa, e non lo nascondono di certo.",
	},
	["stv.a.muse.09"] = {
		"si inginocchia a stringere una fibbia dello stivale e trova una fila di formiche già in marcia sul cuoio, come se la giungla avesse mandato qualcuno a prendere le misure.",
		"si scrolla una foglia dalla spalla e scopre che non era una foglia. Se ne va senza fretta, tra le felci.",
	},
	["stv.a.muse.10"] = {
		"Metà dei nomi sulla mappa di questa giungla contengono la parola 'Ruins'. Un tempo i troll dovevano essere dappertutto.",
		"Rovine qui, rovine là, e dietro quelle rovine altre rovine. L'impero dei troll non ha lasciato molto in piedi, ma per terra ne ha lasciato tanto.",
	},
	["stv.a.muse.11"] = {
		"I Bloodscalp a nord, gli Skullsplitter più all'interno. Un tempo erano un solo impero. Adesso ogni tribù odia l'altra quasi quanto odia gli stranieri.",
		"I Gurubashi si sono spezzati in tribù tanto tempo fa, e le tribù non hanno mai smesso di contendersi i cocci. Alla giungla non importa chi vince.",
	},
	["stv.a.muse.12"] = {
		"Scommetto che a Stormwind c'è ancora uno scrivano che segna la spedizione di Kurzen come in servizio. Nessuno vuole essere quello che mette per iscritto cosa le ha fatto la giungla.",
		"Stormwind ha mandato soldati quaggiù per sistemare i troll. Alcuni seguono ancora Kurzen, gli altri vivono in tenda al Rebel Camp. I rapporti spediti a casa devono essere una lettura cupa.",
	},
	["stv.a.muse.13"] = {
		"Duskwood è subito a nord, tutta silenzio e penombra. Quaggiù invece niente sta mai zitto. Non so decidere cosa preferirei.",
		"Poco più a nord gli alberi si fanno neri e immobili, e Duskwood si inghiotte ogni suono. Qui la giungla urla dalla mattina alla sera. Nessuna delle due ti lascia riposare.",
	},
	["stv.a.muse.14"] = {
		"Da Booty Bay parte una nave per Ratchet. Fa piacere sapere che questa giungla ha una porta sul retro.",
		"I goblin salpano da Booty Bay e arrivano dritti fino a Kalimdor. Ogni trappola dovrebbe avere un'uscita.",
	},
	["stv.a.muse.15"] = {
		"Quella vecchia arena dei Gurubashi attira ancora gente. I troll ci combattevano per la gloria; adesso ci entra chiunque abbia un'arma e un occhio su un forziere di monete.",
		"Un'arena nel cuore della giungla, costruita dai troll e mandata avanti dall'avidità. C'è ancora chi ci si infila per ammazzarsi in cambio di un forziere. Certe usanze sopravvivono agli imperi.",
	},
	["stv.a.npc_meet.01"] = {
		"Un grifone appollaiato sopra un porto di goblin. Qualcuno, chissà dove, deve aver perso una scommessa.",
		"I grifoni qui stanno con la schiena rivolta alla giungla. Il volo verso nord è lungo, ma batte ogni singolo passo della camminata.",
	},
	["stv.a.npc_meet.02"] = {
		"Un letto con un tetto sopra e il mare subito fuori. Dopo la giungla, una locanda di goblin sembra una reggia, prezzi compresi.",
		"Un oste, uno sgabello, una bevanda quasi fresca. Booty Bay ha i suoi difetti, ma questo non è tra quelli.",
		"Una stanza, un letto e un tetto, e niente che ti cammini sul cuscino. Per questo pagherei prezzi da goblin. Anzi, sto per farlo.",
	},
	["stv.a.quest_complete.01"] = {
		"consegna quanto richiesto e sgranchisce le dita, rigide per la lunga marcia.",
		"prende la ricompensa, la conta una volta e la mette al riparo dall'umido.",
		"accenna appena col capo ai ringraziamenti e si toglie una spina dalla manica.",
	},
	["stv.a.quest_complete.02"] = {
		"Fatto, e pagato. Le mie gambe hanno delle opinioni su questa giungla che terrò per me.",
		"Un'altra commissione chiusa. La giungla si è presa il suo pedaggio in sudore e graffi, e io l'ho pagato.",
	},
	["stv.a.quest_complete.03"] = {
		"Ecco fatto. La prossima volta trovati qualcuno a cui piacciono le giungle.",
		"Fatto. Se c'è un altro lavoro, spero che preveda un po' d'ombra.",
	},
	["stv.a.quest_complete.04"] = {
		"La giungla non si accorgerà di quello che ho fatto oggi. Qualcuno che ci vive, sì.",
		"Una piccola cosa fatta bene in un posto grande e indifferente. Qualcosa vale.",
	},
	["stv.a.quest_complete.05"] = {
		"Così a sud l'Alleanza ha pochi amici. Ogni lavoro portato a termine qui gliene procura uno in più.",
		"Quaggiù l'Alleanza possiede un campo di tende e un po' di buona volontà. Oggi ho fatto crescere la buona volontà.",
	},
	["stv.a.quest_progress.01"] = {
		"Un passo avanti. Non ho finito, ma la giungla ha ceduto un po' di quello che nasconde.",
		"Si va avanti. Piano e sudando, ma si va avanti.",
		"C'è ancora da trovare. Occhi a terra, e un orecchio alle felci.",
	},
	["stv.a.subzone_enter.01"] = {
		"si china sotto un ramo basso, carico di muschio, e si ritrova in {subzone}; il nome cambia, il chiasso della giungla no.",
		"scende con cautela lungo un pendio di radici aggrovigliate, fino a {subzone}.",
		"scavalca un tronco caduto ricoperto di funghi, e il sentiero prosegue dentro {subzone}.",
	},
	["stv.a.subzone_enter.02"] = {
		"Rebel Camp. Qualche tenda, un fuoco da campo e soldati che sembrano contenti, per una volta, di vedere qualcuno dalla loro parte.",
		"Finalmente facce dell'Alleanza, e una sentinella che fa un cenno invece di mettere mano all'acciaio. Per questa giungla, è un'accoglienza calorosa.",
	},
	["stv.a.victory.01"] = {
		"Giù. Mi appoggio alle ginocchia e lascio che il cuore rallenti fino a qualcosa di simile a un passo.",
		"Finita. Adesso controllo i tagli, prima che li trovi la giungla.",
		"Finito. Ogni muscolo vuole sedersi, e sotto ogni tronco qui intorno c'è qualcosa di vivo.",
	},
	["stv.a.victory.02"] = {
		"Bene. Questo chiarisce chi resta a pancia vuota.",
		"Resta lì a riflettere sulle tue scelte.",
		"Ecco perché nella giungla non si salta addosso agli sconosciuti.",
	},
	["stv.a.victory.03"] = {
		"fa un passo indietro e si pulisce le mani su una foglia larga, l'unica cosa che in questa giungla non manca mai.",
		"tira un lungo respiro e guarda due uccelli dai colori accesi posarsi su un ramo lì accanto, per nulla turbati.",
	},
	["stv.a.victory.04"] = {
		"Sotto il marciume della giungla, quello un tempo era un soldato di Stormwind. Spero che chi l'ha mandato quaggiù non venga mai a sapere come è finito.",
		"Uno degli uomini di Kurzen. È arrivato in questa giungla con i nostri colori addosso. La giungla, o il colonnello, ne ha fatto un'altra cosa.",
	},
	["stv.a.victory.05"] = {
		"Di' al tuo caposquadra che il contratto è annullato.",
		"La Venture Co. può mandarmi il conto per questo.",
	},
	["stv.a.weather_change.01"] = {
		"solleva il viso verso la pioggia che scroscia giù dalle foglie più alte, tiepida come una minestra e del tutto inutile contro il caldo.",
		"si ripara sotto una foglia larga mentre la pioggia si rovescia attraverso le chiome, e tutta la giungla sibila come un bollitore.",
	},
]==])
