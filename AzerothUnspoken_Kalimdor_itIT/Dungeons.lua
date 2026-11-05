-- Italian texts of the regional pack kalimdor_dungeons (content wave W03). The rules are in AzerothUnspoken_Kalimdor/Dungeons.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("kalimdor", "itIT", "kalimdor_dungeons", [==[
	["bfd.battle.01"] = {
		"Fuori dall'acqua nera, allora. Fatti vedere.",
		"Pietra viscida e qualcosa di arrabbiato. Niente di nuovo.",
	},
	["bfd.muse.01"] = {
		"Un tempo gli elfi della notte alzarono qui un tempio, in riva al mare. Ora l'acqua siede nelle sue sale e i cultisti accendono candele a qualcos'altro.",
		"Lune scolpite sui pilastri, mezze sommerse nell'acqua nera. Chi pregava qui non riconoscerebbe più il posto.",
	},
	["bfd.muse.02"] = {
		"scruta la pozza nera, dove qualcosa di grosso si muove sotto la superficie e scompare.",
		"ascolta sul bordo dell'acqua profonda, dove i cultisti del Twilight's Hammer cantano a ciò che dorme là sotto.",
		"si accovaccia accanto all'acqua; la superficie è piatta e nera, e il canto del culto vi scivola sopra.",
	},
	["bfd.victory.01"] = {
		"Giù. Qui, prima o poi, l'acqua si prende tutto.",
		"Silenzio, a parte lo sgocciolio. Questo tempio ha inghiottito di peggio.",
	},
	["drm.battle.01"] = {
		"Pietra vecchia, sangue nuovo. Avanti.",
		"Esci dalle rovine. Per arrivare qui ho attraversato di peggio.",
		"Qualunque cosa tu sia, in queste sale non c'entri più di me.",
	},
	["drm.lowhp.01"] = {
		"Non qui. Queste rovine hanno già abbastanza fantasmi.",
		"Resisti. Eldre'Thalas non ha bisogno di un altro nome nella sua lunga lista.",
	},
	["drm.muse.01"] = {
		"Eldre'Thalas. Gli highborne la costruirono perché durasse più di tutto, e quasi ci sono riusciti. Ora nei cortili si accampano gli ogre.",
		"Una città degli antichi highborne, più vecchia di quasi tutti i regni. I Gordunni usano le sue sale come tana.",
	},
	["drm.muse.02"] = {
		"Gli Shen'dralar vivono ancora nell'ala occidentale, nutrendosi di un demone che tengono in catene. A volte sopravvivere ha una brutta faccia.",
		"Un ultimo pugno di highborne, tenuto in vita dal potere di un prigioniero che non osano liberare. Immol'thar paga ogni anno che durano.",
	},
	["drm.muse.03"] = {
		"passa sotto un arco spezzato scolpito di foglie e di lune, la pietra ancora aggraziata sotto secoli di muschio.",
		"si ferma in una sala in rovina dove le colonne stanno ancora dritte, eleganti e pazienti, molto dopo le voci che la riempivano.",
	},
	["drm.muse.04"] = {
		"Ogre nel cortile, satiri nei giardini, fantasmi nelle sale. Qualcuno dovrebbe parlarne col padrone di casa.",
		"Bella città antica. Peccato per tutti gli inquilini, nessuno escluso.",
	},
	["drm.victory.01"] = {
		"Silenzio. Le vecchie sale non ci fanno caso: hanno sepolto imperi.",
		"Fatto. Diecimila anni di pietra, e questo scontro non ci lascerà nemmeno un graffio.",
		"Tutto fermo. Il muschio coprirà anche questo, come copre tutto qui.",
	},
	["mrd.battle.01"] = {
		"Qui combattono persino le rocce. E va bene.",
		"Avanti, allora. Maraudon non mi ha ancora {g:sepolto|sepolta}.",
		"Fuori dai cristalli, dritto nello scontro. Mostrati.",
	},
	["mrd.lowhp.01"] = {
		"Non qui. Non ho intenzione di finire nella tomba di Zaetar, accanto a lui.",
		"Il terreno è morbido e molto paziente. Alzati prima che decida lui.",
	},
	["mrd.muse.01"] = {
		"Zaetar amava Theradras, e i centauri erano i loro figli. Gli stessi figli che l'hanno ucciso. Questa grotta è la sua tomba.",
		"Un figlio di Cenarius e una principessa della terra. Da loro vennero i centauri, e dai centauri la sua morte.",
	},
	["mrd.muse.02"] = {
		"si ferma a fissare cristalli grandi come alberi, che brillano viola e arancio nelle pareti della caverna.",
		"segue un ruscello che scorre luccicante e sbagliato nella roccia, l'acqua macchiata da qualcosa che marcisce più a monte.",
	},
	["mrd.muse.03"] = {
		"Bellissimo, se ignori il veleno, i satiri e le rocce che mordono.",
		"Cristalli splendidi. Me ne porterei a casa uno, se i muri non cercassero di uccidermi.",
	},
	["mrd.muse.04"] = {
		"I clan dei centauri considerano questo luogo sacro e infestato insieme. Capisco perché.",
		"Sacro ai centauri, maledetto dalla terra stessa. Quaggiù le due cose sembrano vere entrambe.",
	},
	["mrd.victory.01"] = {
		"Torna alla terra, allora. È l'unica cosa che questo posto sa fare con i morti.",
		"Tutto fermo. La grotta continua a ronzare, e i cristalli tengono la loro luce come se non se ne fossero accorti.",
		"Altro da dare al buio di Theradras. Non ringrazierà.",
	},
	["rfc.battle.01"] = {
		"Quaggiù, con questo caldo? E va bene. Facciamola breve.",
		"Hai scelto un posto caldo per morire.",
	},
	["rfc.muse.01"] = {
		"Sopra c'è un'intera città. Spero che qualcuno lassù sappia cosa brucia in cantina.",
		"Orgrimmar sopra la testa, cultisti e lava sotto i piedi. Qualcuno dovrebbe dare un'occhiata alle fondamenta.",
		"Tutta quella pietra lassù, e proprio sotto un covo di cultisti che si scaldano le mani sulla lava.",
	},
	["rfc.muse.02"] = {
		"si asciuga il sudore dalla fronte; qui la roccia arde di rosso nelle crepe, e l'aria sa di zolfo.",
		"si ferma sul bordo di un canale di lava e la guarda scorrere, lenta e densa, mentre illumina la grotta dal basso.",
	},
	["rfc.victory.01"] = {
		"Uno in meno. Al caldo non importa: continua a premermi sul petto.",
		"Fatto. Se solo la lava smettesse di soffiarmi sul collo.",
	},
	["rfd.battle.01"] = {
		"Che tu respiri o no, mi sbarri la strada.",
		"Altre ossa per il mucchio. Avanti.",
	},
	["rfd.muse.01"] = {
		"Qui i quilboar si inchinano a un lich. Amnennar ha promesso loro qualcosa, e le ossa fra le spine mostrano il prezzo.",
		"Ossa appese ai rovi come trofei. Il Flagello è arrivato fin quaggiù, così a sud.",
	},
	["rfd.muse.02"] = {
		"rabbrividisce in un freddo improvviso che nelle Barrens non dovrebbe esistere, e vede il proprio fiato restare sospeso nell'aria.",
		"scavalca un osso rosicchiato, poi un altro, e smette di contarli.",
		"si fa strada fra spine e vecchie ossa, dove persino la terra sa di tomba.",
	},
	["rfd.victory.01"] = {
		"lascia chi è caduto fra spine e ossa, dove un corpo in più cambia ben poco l'aspetto del luogo.",
		"si raddrizza nel freddo, in ascolto; quaggiù i morti non restano sempre a terra a lungo.",
	},
	["rfk.muse.01"] = {
		"Spine grosse come il mio braccio, e i quilboar ci vivono dentro come fosse un letto di piume.",
		"A ogni curva di questi cunicoli c'è una spina che aspetta la mia manica. I quilboar devono adorarlo.",
		"Charlga Razorflank regna su un labirinto di rovi e lo chiama casa. Io vorrei delle cesoie più grandi.",
	},
	["wlc.battle.01"] = {
		"Esci dal verde, allora. Per questo posto non mi è rimasta pazienza.",
		"La caverna ne ha mandato un altro. Bene.",
		"E va bene. Mordi tu, se proprio devi. Poi tocca a me.",
	},
	["wlc.lowhp.01"] = {
		"Non qui. Non sarò un'altra cosa che dorme in queste grotte.",
		"In piedi. Questo posto si tiene quello che ci cade dentro, e lo storce.",
	},
	["wlc.muse.01"] = {
		"Il lamento viene dalle fessure nella roccia. Lo so. Sembra comunque qualcuno che piange in una stanza lontana.",
		"È solo aria che sospira tra le crepe, tutto qui. Saperlo non mi fa riabbassare i peli sulle braccia.",
		"Ogni soffio in queste fenditure sembra una voce. Le caverne il loro nome se lo sono guadagnato.",
	},
	["wlc.muse.02"] = {
		"Qui sotto Naralex dorme ancora, e qualunque cosa sogni filtra nei muri.",
		"Un druido sognava di guarire le Barrens, e il sogno gli si è rivoltato contro. Tutto ciò che qui è storto è nato da quel sonno.",
	},
	["wlc.muse.03"] = {
		"Raptor deviati. Serpenti deviati. Tutto deviato. Qui dentro niente è cresciuto normale.",
		"Ho smesso di chiedermi perché le lucertole hanno quel colore. La risposta è sempre la caverna.",
	},
	["wlc.victory.01"] = {
		"guarda ciò che giace immobile, e le caverne riprendono il loro lamento come se nulla fosse.",
		"fa un passo indietro, respirando l'aria umida, mentre lontano, nella roccia, il lungo sospiro ricomincia.",
		"abbassa la guardia; restano soltanto lo sgocciolio e il lamento lontano.",
	},
	["zfk.battle.01"] = {
		"Sabbia rovente, pazienza corta. Avanti.",
		"E va bene. Oggi Zul'Farrak avrà il suo scontro.",
	},
	["zfk.battle.02"] = {
		"Continua a muoverti. Con questo caldo cadono i più lenti.",
		"Respiri corti. Non lasciare al caldo quello che il nemico non riesce a prendersi.",
	},
	["zfk.encounter_end.01"] = {
		"Giù. Zul'Farrak ha un padrone in meno davanti a cui inchinarsi.",
		"{encounter} non si muove più, e la città sembra d'un tratto un po' più piccola.",
	},
	["zfk.lowhp.01"] = {
		"Non nella sabbia. Non andrò a riempire le tombe di questa città.",
		"Ancora in piedi. Il deserto dovrà aspettare.",
	},
	["zfk.muse.01"] = {
		"I Sandfury hanno costruito la loro città dove il deserto incontra la pietra, e l'hanno tenuta in piedi contro ben più della sabbia.",
		"Mura più vecchie di qualunque troll vivente, e la sabbia non le ha ancora sepolte.",
	},
	["zfk.muse.02"] = {
		"Sabbia negli stivali, sabbia fra i denti, troll su ogni gradino. Ecco a voi Zul'Farrak.",
		"Mi scuoto la sabbia dal colletto da quando ho passato le porte. Ai troll non sembra dare fastidio.",
	},
	["zfk.muse.03"] = {
		"costeggia un cimitero dove la sabbia si muove in modo piccolo e sbagliato, come se qualcosa là sotto si stesse svegliando.",
		"si tiene alla larga dalle tombe dei troll; i morti di Zul'Farrak hanno l'abitudine di uscirne.",
	},
	["zfk.muse.04"] = {
		"Tengono una bestia nella vasca sacra e la chiamano con un maglio. Gahz'rilla. Certi nomi sono già un avvertimento.",
		"Un'idra in una vasca dietro le mura, venerata come un dio. Preferirei non essere io a richiamarla.",
	},
	["zfk.muse.05"] = {
		"In cima a tutto questo siede il capo Ukorz Sandscalp, dietro le sue mura e i suoi guerrieri. Qualcuno dovrà salire fino a lui.",
		"Ogni scala qui porta verso Ukorz. E salire è l'unica direzione che conti.",
	},
	["zfk.subzone_enter.01"] = {
		"passa in {subzone}, dove volti di troll scolpiti osservano dai muri con occhi piatti e ostili.",
		"arriva in {subzone} con una mano vicino all'arma; questi muri hanno troppi posti dove nascondere una lancia.",
	},
	["zfk.victory.01"] = {
		"resta fra i caduti mentre la sabbia, senza fretta, comincia a posarsi su di loro.",
		"butta fuori un lungo respiro d'aria calda e guarda la sabbia scivolare sulle pietre, come a rimettere in ordine.",
	},
	["zfk.victory.02"] = {
		"Una cosa in meno che mi soffia contro con questo caldo.",
		"Bene. Ora, qualcuno in questa città ha un po' d'ombra, d'acqua o di buone maniere?",
	},
]==])
