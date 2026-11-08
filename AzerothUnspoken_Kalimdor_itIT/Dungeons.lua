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
	["ony.battle.01"] = {
		"La sua tana, la sua covata, le sue regole. Sono {g:venuto|venuta} a spezzarle tutte e tre.",
		"Quaggiù la terra è del drago. Io ci cammino sopra lo stesso.",
	},
	["ony.muse.01"] = {
		"La figlia di Deathwing aspetta in fondo a questa caverna, sulle ossa di chi è venuto prima.",
		"Draghetti in ogni fessura, uova negli anfratti, e un odore di zolfo e di carne vecchia. Questo è un nido, come lo intendono i draghi.",
		"Si dice che il drago laggiù porti un altro volto a Stormwind, quello di una dama al fianco del reggente. Difficile immaginarlo, qui, nella sua vera casa.",
	},
	["ony.muse.02"] = {
		"ascolta il respiro profondo e lento che risale la galleria dalla caverna in basso, come aria in un mantice crepato.",
		"passa con cautela accanto a gusci d'uovo spaccati e ossa annerite all'imbocco della grande caverna.",
	},
	["ony.victory.01"] = {
		"Fatta. La caverna puzza di scaglie bruciate, e la cenere si sta ancora posando.",
		"Finita. Mi fischiano le orecchie e il pavimento è caldo, ma sono in piedi.",
	},
	["raq.battle.01"] = {
		"Fuori dalla sabbia. Ho attraversato tutto il deserto per questo.",
		"Torna sotto la sabbia, oppure resta e cadi qui.",
	},
	["raq.muse.01"] = {
		"Mille anni fa gli elfi della notte e i draghi sigillarono questo posto dietro lo Scarab Wall. Ora le porte sono di nuovo aperte, e le rovine brulicano.",
		"Colonne spezzate mezze sepolte nella sabbia, incisioni che nessuno dei vivi sa leggere. I Qiraji costruivano in grande, e per durare.",
		"Qui la sabbia suona vuota sotto i piedi. Chissà quanta parte della vecchia città ci giace sotto, in attesa.",
	},
	["raq.muse.02"] = {
		"Sabbia negli stivali, sabbia fra i denti, e qualcosa con troppe zampe dietro ogni colonna.",
		"Belle rovine. Peccato per gli inquilini.",
	},
	["raq.victory.01"] = {
		"si scrolla la sabbia da un guanto e guarda i cortili in rovina, dove la sabbia che scivola ricopre già i caduti.",
		"resta fra le colonne abbattute, a riprendere fiato nell'aria secca e calda.",
	},
	["taq.battle.01"] = {
		"Fuori dal tuo alveare e a portata delle mie armi. Avanti.",
		"Ho passato lo Scarab Wall per arrivare fin qui. Non aspettarti che mi fermi per te.",
	},
	["taq.muse.01"] = {
		"Sotto la sabbia, sotto il tempio, qualcosa di più vecchio degli dèi di qualunque popolo io conosca sta sognando. I Qiraji si limitano a servirlo.",
		"Più il tempio scende, più le pareti sembrano cresciute anziché costruite. Come camminare dentro qualcosa di vivo.",
		"I Qiraji non sono mai stati altro che un'arma, dice il Cenarion Circle. La mano che la impugna è quaggiù, sul fondo.",
	},
	["taq.muse.02"] = {
		"si ferma in una sala di pietra curva e nervata; molto più in basso, un battito lento attraversa il pavimento come quello di un cuore.",
		"si scuote la sabbia dalla manica e guarda giù per il lungo passaggio buio, dove le pareti luccicano come se respirassero.",
	},
	["taq.victory.01"] = {
		"A terra, e le pareti continuano a pulsare come se niente fosse. Questo posto non piange i suoi.",
		"Uno in meno. Il tempio non se ne accorgerà: nel buio ne ha a migliaia.",
	},
	["wsg.battle.01"] = {
		"Da questa gola non passi. Non finché ci sono io.",
		"Girati e torna di corsa alla tua base. È l'unico modo per restare in piedi.",
		"Vuoi la bandiera? Prima devi passare da me.",
	},
	["wsg.lowhp.01"] = {
		"Non adesso, non con la bandiera ancora là fuori.",
		"Mi restano gli avanzi, ma la gola non te la lascio.",
	},
	["wsg.muse.01"] = {
		"Due basi, una gola, due bandiere. Tutta la lite per Ashenvale, piegata così piccola da poterla attraversare di corsa.",
		"Avanti e indietro per la gola, con un pezzo di stoffa portato come una corona. Eppure sembra che conti davvero.",
		"Gli alberi ai margini della gola hanno visto questa lotta mille volte. Neanche loro scelgono da che parte stare.",
	},
	["wsg.muse.02"] = {
		"controlla le fibbie dell'equipaggiamento al riparo della base, con gli occhi sul lungo tratto scoperto della gola più avanti.",
		"guarda la gola in tutta la sua lunghezza, dove l'erba è consumata fino alla terra lungo i sentieri che tutti percorrono.",
	},
	["wsg.muse.03"] = {
		"Occhi aperti. C'è sempre qualcuno che prova dal tunnel.",
		"Tenete sgombro il centro e fate correre la bandiera. Tutto il trucco è questo.",
	},
	["wsg.victory.01"] = {
		"A terra. E adesso, dov'è la bandiera? Sempre, per prima cosa: dov'è la bandiera?",
		"Uno in meno, almeno per un po'. Conta i secondi, poi cerca chi porta la bandiera.",
		"Bene. Un paio di mani in meno fra la bandiera e casa.",
	},
	["drm.attack.w10.001"] = {
		"Fuori dalle rovine, e giù!",
		"Torna fra l'edera!",
	},
	["drm.attack.w10.002"] = {
		"Eccoti un tributo!",
		"Paga, e fino all'ultimo!",
	},
	["drm.battle.w10.001"] = {
		"Queste sale sono sopravvissute a un impero. Sopravvivranno anche a te.",
		"Togliti di mezzo. Non ho attraversato Feralas per fermarmi davanti a te.",
		"Pietra elfica, puzza d'ogre, e tu. Avanti.",
	},
	["drm.battle.w10.002"] = {
		"Torna nel buco da cui ti hanno tirato fuori gli Highborne!",
		"Evocazione vecchia, tomba nuova. Vieni qui.",
	},
	["drm.battle.w10.003"] = {
		"Belle rovine. Peccato per l'accoglienza.",
		"Qualcuno chiami il maggiordomo: ho un reclamo.",
	},
	["drm.battle.w10.004"] = {
		"pianta i piedi sulle piastrelle elfiche crepate e regge l'urto.",
		"si apre un varco fra i rampicanti e finisce dritto nello scontro.",
	},
	["drm.battle.w10.005"] = {
		"Magia antica in questi muri. Che non sia l'ultima cosa che sento.",
		"Ogni pietra qui ha visto uno scontro. Che questo duri poco.",
	},
	["drm.encounter_end.w10.001"] = {
		"Con {encounter} è finita. Eldre'Thalas ha sepolto cose più grandi, e seppellirà anche questa.",
		"Fatta, con {encounter}. Le sale accolgono anche questo come tutto il resto: in silenzio.",
		"Finita. Anche {encounter} è solo una nota a margine, in una città così vecchia.",
	},
	["drm.encounter_end.w10.002"] = {
		"Va bene. Di nuovo fra i rampicanti, e riproviamo con la testa a posto.",
		"Giù tutti quanti. Ci raduniamo, ci ragioniamo sopra, e si riparte.",
	},
	["drm.lowhp.w10.001"] = {
		"Non fra le rovine. Non diventerò un'altra statua, qui.",
		"Indietro. Queste pietre sono sopravvissute a tutti; non devo dimostrare niente a loro.",
	},
	["drm.lowhp.w10.002"] = {
		"Non a Feralas, non così!",
		"Tiratemi fuori da questi rampicanti!",
	},
	["drm.muse.w10.001"] = {
		"Il principe Tortheldrin governa quel che resta degli Highborne, qui, e lo governa come chi sorveglia una camera blindata. Ogni pergamena è contata due volte.",
		"Nell'ala ovest gli ultimi Highborne custodiscono i loro libri e i loro segreti. Vedrebbero bruciare Feralas piuttosto che spartire gli uni o gli altri.",
		"Gli Shen'dralar non sono sopravvissuti al loro impero per fortuna. Ci sono riusciti aggrappandosi a ogni briciolo di potere, senza mai mollarlo.",
	},
	["drm.muse.w10.002"] = {
		"si china sotto una radice grossa come una colonna, che ha attraversato un muro elfico da parte a parte e ha continuato a crescere.",
		"attraversa un cortile dove un albero ha spaccato in due il lastricato, i rami impigliati negli archi scolpiti lassù.",
		"passa accanto a una fontana soffocata dai rampicanti, la vasca crepata, il bordo scolpito ancora liscio al tatto.",
	},
	["drm.muse.w10.003"] = {
		"I Gordok incoronano chi uccide il loro re. Politica da ogre: semplice, onesta, e parecchio dura per i re.",
		"In Feralas si dice che se batti il re dei Gordok, gli ogre ti consegnano il suo tributo e ti chiamano capo. Ho sentito di governi peggiori.",
		"Gli ogre dell'ala nord hanno un re, un trono, e la tradizione di perderli entrambi contro chi picchia più forte. Come tradizione, non manca di coraggio.",
	},
	["drm.muse.w10.004"] = {
		"Immol'thar è prigioniero qui da più tempo di quanto esista la maggior parte delle nazioni. Chissà se ricorda ancora cos'era prima della gabbia.",
		"Piloni e guardiani tengono il demone in gabbia, e gli Highborne bevono quel che filtra dalle sbarre. Qui nessuno è innocente in quel patto.",
		"Un demone in una cella, un principe che ci campa sopra. Difficile dire quale dei due sia più prigioniero.",
	},
	["drm.muse.w10.005"] = {
		"Satiri nei giardini orientali, ancora a saltellare fra le rovine del popolo che hanno tradito. Non hanno mai avuto il buon gusto di andarsene.",
		"Si dice che i satiri fossero elfi, prima di vendersi alla Legione. Hanno tenuto le corna e perso tutto il resto.",
		"Marciume vile nell'ala est, satiri fra l'edera, imp sotto le scale. Qualunque cosa gli Highborne abbiano evocato qui, non è mai tornata davvero a casa.",
	},
	["drm.muse.w10.006"] = {
		"fa scorrere un dito su uno scaffale di libri elfici ammorbiditi dall'umido, i titoli in una scrittura più vecchia di qualunque regno vivente.",
		"si ferma mentre una figura pallida in vesti di corte attraversa la sala e passa dentro un muro, ancora intenta a qualche commissione del vecchio impero.",
		"nota che le lampade di questa sala ardono ancora, anche se da moltissimo tempo nessun vivente ne pareggia lo stoppino.",
	},
	["drm.muse.w10.007"] = {
		"Tutta Feralas attraversata per una rovina piena di ogre. Spero almeno che il panorama ne valga la pena.",
		"Eldre'Thalas. Ne avevo sentito parlare nelle storie. Le storie non dicevano niente degli ogre.",
		"Attenti agli scalini. Li hanno fatti per gli elfi, che avevano gambe più lunghe e più pazienza.",
	},
	["drm.muse.w10.008"] = {
		"Questa era un gioiello dell'impero di Azshara, una città di studiosi lontana dalla capitale. La distanza l'ha salvata quando il resto è finito sotto il mare.",
		"Eldre'Thalas fu costruita per custodire il sapere. Ci è riuscita, a modo suo. Solo che non ha mai deciso per chi custodirlo.",
		"Sotto questi rampicanti ci sono gli archivi di un impero annegato. Ogni ogre qui dentro dorme sopra un libro di storia.",
	},
	["drm.subzone_enter.w10.001"] = {
		"entra in {subzone}, dove colonne elfiche scolpite si alzano da un groviglio di radici e foglie cadute.",
		"arriva in {subzone} sotto un arco spezzato, la vecchia pietra che ronza appena di qualcosa che non se n'è andato del tutto.",
		"entra in {subzone}; l'aria sa di foglie schiacciate e di qualcosa di più antico, come incenso lasciato bruciare per un'era.",
	},
	["drm.subzone_enter.w10.002"] = {
		"{subzone}. Ogni sala era pensata per l'ammirazione degli studiosi di un impero. Il pubblico, da allora, è cambiato parecchio.",
		"{subzone}. Qui persino gli stipiti hanno più intagli di tanti templi. Gli elfi non facevano mai le cose a metà.",
	},
	["drm.threat.w10.001"] = {
		"Girati. In queste sale c'è posto per un'altra rovina.",
		"Vattene. Sono qui per quel che c'è dentro, non per te.",
	},
	["drm.threat.w10.002"] = {
		"Va' ad avvisare chi comanda. Io aspetto.",
		"Sparisci. Trovati qualcosa di più antico dietro cui nasconderti: qui ce n'è in abbondanza.",
	},
	["drm.victory.w10.001"] = {
		"Giù, fra le vecchie piastrelle. I rampicanti se lo prenderanno presto.",
		"Un altro caduto in una città che ne ha visti a migliaia.",
		"Fatto. Feralas ci crescerà sopra prima che qualcuno lo racconti.",
	},
	["drm.victory.w10.002"] = {
		"torna su un mosaico elfico, ora con una crepa in più, e guarda in fondo alla sala in cerca della prossima sagoma.",
		"riprende fiato sotto un arco spezzato, ascoltando cadere le foglie.",
	},
	["drm.victory.w10.003"] = {
		"Il prossimo! A Eldre'Thalas gli ospiti non finiscono mai.",
		"Un altro capitolo che gli Shen'dralar non metteranno per iscritto.",
	},
	["drm.victory.w10.004"] = {
		"Torna nel vuoto, o dovunque finiscano i demoni. Non è affar mio.",
		"Una cosa in meno di cui gli Highborne devono rispondere.",
	},
	["ony.attack.w11.001"] = {
		"Fuori dal nido!",
		"Torna nel tuo uovo!",
	},
	["ony.battle.w11.001"] = {
		"Torna nelle fessure, draghetto!",
		"Piccolo e irascibile. Proprio come tua madre.",
	},
	["ony.battle.w11.002"] = {
		"Qui il pavimento si spacca e sputa fuoco. Continua a muoverti.",
		"Resta ai margini della sua portata. Mai stare davanti a un drago.",
	},
	["ony.encounter_end.w11.001"] = {
		"{encounter} è a terra tra le sue stesse ossa. La caverna sembra già grande il doppio.",
		"Con {encounter} è finita. Ascolta: perfino i draghetti nelle pareti tacciono.",
	},
	["ony.lowhp.w11.001"] = {
		"Non in questa caverna! Qualcuno mi rimetta in piedi!",
		"Una cura, qui! Non finirò nella sua dispensa!",
		"Troppo vicino al fuoco. Indietro, indietro!",
	},
	["ony.muse.w11.001"] = {
		"Fuori è tutto fango e mosche che pungono. Qualche centinaio di passi dentro, la palude si arrende e comincia il paese del drago.",
		"Il fango del Wyrmbog mi segue nella caverna su ogni stivale. Da qui in poi è l'unica cosa quaggiù che non sia sua.",
		"Le canne e le rane di Dustwallow finiscono all'imbocco della caverna, come una riga tracciata per terra. Oltre, non vive niente di piccolo e verde.",
	},
	["ony.muse.w11.002"] = {
		"Qualcuno tenga d'occhio le grotte laterali. Quelle uova non restano uova a lungo.",
		"I draghetti sono piccoli, lo so. Anche le scintille in un fienile.",
		"Contate le uova, se vi va. Io preferisco contare le uscite.",
	},
	["ony.muse.w11.003"] = {
		"Chi arriva fin quaggiù scopre il segreto della corte: la dama al fianco del reggente e il drago di questa caverna hanno la stessa mente fredda.",
		"Una nobildonna a Stormwind, una madre di covata in una palude. Chi sa giura che siano la stessa, e la caverna rende facile crederci.",
	},
	["ony.subzone_enter.w11.001"] = {
		"segue la galleria in discesa, oltre cavità dove qualcosa di piccolo raspa e soffia contro la luce.",
		"scende nell'ampia gola della caverna, dove l'aria si fa tiepida e sa di ossa bruciate.",
	},
	["ony.threat.w11.001"] = {
		"Va' a nasconderti dietro tua madre, draghetto.",
		"Torna al nido. Lei non ti salverà.",
	},
	["ony.victory.w11.001"] = {
		"Una bocca in meno nel nido.",
		"Questa covata non crescerà.",
		"Via uno. Avanti il prossimo draghetto.",
	},
	["raq.attack.w11.001"] = {
		"Guscio o non guscio, arriva lo stesso!",
		"Via da queste rovine, insetto!",
	},
	["raq.battle.w11.001"] = {
		"Che arrivi pure lo sciame. Lo sfoltisco io.",
		"Insetti, insetti e altri insetti. Va bene. Il prossimo!",
	},
	["raq.battle.w11.002"] = {
		"Teneteli lontani dai guaritori!",
		"Occhio alla sabbia alle nostre spalle, salgono da sotto!",
	},
	["raq.encounter_end.w11.001"] = {
		"Tutti in piedi. Questo giro l'hanno vinto le rovine, e la sabbia sta già coprendo le nostre tracce.",
		"A terra fino all'ultimo. Scuotete via la sabbia e ci riproviamo, più piano.",
	},
	["raq.lowhp.w11.001"] = {
		"Non in questa sabbia. Non mi restituirebbe più.",
		"Resisti. Il deserto può aspettare le mie ossa.",
		"Lo sciame non mi trascina sotto. Tieni duro.",
	},
	["raq.muse.w11.001"] = {
		"Il Cenarion Circle tiene lo sciame lontano da Cenarion Hold da anni, con troppe poche braccia. È in queste rovine che spera di poterlo finalmente respingere.",
		"Gli esploratori del Cenarion Circle dicono che i silitidi non si ritirano mai: si riorganizzano e basta. Finora niente, qui fuori, ha dato loro torto.",
		"Druidi e soldati partiti da Cenarion Hold entrano nelle rovine accanto a chiunque sia venuto. È una guerra, e loro lo sanno.",
	},
	["raq.muse.w11.002"] = {
		"Il generale di queste rovine porta un nome che vuol dire: mai ferito. Gli esploratori dicono che nessuna lama l'ha ancora segnato, e che i vecchi cristalli qui intorno sono l'unica cosa che teme.",
		"Ossirian the Unscarred. Un nome così o è una vanteria o è un avvertimento, e qui fuori nessuno spreca fiato a vantarsi.",
	},
	["raq.muse.w11.003"] = {
		"In ogni buco di questa sabbia vive qualcosa. Ho smesso di mettere i piedi nei buchi.",
		"I silitidi scavano più in fretta di quanto io cammini. Non è una gara che ho intenzione di perdere.",
		"Contare gli insetti? Ci ho provato. Poi il terreno si è messo a contare me.",
	},
	["raq.subzone_enter.w11.001"] = {
		"{subzone}. Metà sotto la sabbia, metà brulicante di zampe. Come il resto di queste rovine.",
		"{subzone}. Un nome per un posto che la sabbia si sta ancora mangiando.",
	},
	["raq.threat.w11.001"] = {
		"Torna a scavare giù. Vivrai di più.",
		"Va' a dire all'alveare che le rovine sono chiuse.",
	},
	["raq.victory.w11.001"] = {
		"Una bocca in meno da sfamare per l'alveare.",
		"E uno. Il Circle può segnarlo sulla mappa.",
		"Crac. Fatto. Il prossimo guscio.",
	},
	["taq.attack.w11.001"] = {
		"Lo senti attraverso il carapace?",
		"Eccone una che agli imperatori non piacerà!",
	},
	["taq.battle.w11.001"] = {
		"Le porte adesso sono aperte. Errore vostro, non mio.",
		"Esci dalle pareti. Ho finito di aspettare.",
	},
	["taq.battle.w11.002"] = {
		"Non guardare le pareti. Guarda gli artigli.",
		"Calma. Qualunque cosa sussurri, non è qui per aiutare.",
	},
	["taq.encounter_end.w11.001"] = {
		"{encounter} non si muove più. Più in basso, qualcosa di immenso se ne sarà accorto di sicuro.",
		"Con {encounter} è chiusa. A ogni passo più in giù il tempio si fa più silenzioso, e mi piace sempre meno.",
	},
	["taq.lowhp.w11.001"] = {
		"Non così in fondo. Nessuno mi ritroverebbe più.",
		"Indietro, indietro. Questo tempio si tiene tutto quello che prende.",
		"Troppo sotto la sabbia per crollare adesso.",
	},
	["taq.muse.w11.001"] = {
		"I draghi di bronzo sigillarono questo tempio e si fidarono del deserto perché lo tenesse sepolto. Il deserto ha mantenuto la parola per molto tempo.",
		"Qualcuno della Brood of Nozdormu monta ancora la guardia in queste sale. Sentinelle sopravvissute alla loro guerra, che a casa non sono mai potute tornare.",
		"La guerra che chiuse questo posto è di mille anni fa. Chi potrebbe raccontarla di persona oggi è morto, oppure è un drago.",
	},
	["taq.muse.w11.002"] = {
		"I Qiraji costruiscono, marciano e muoiono in un ordine perfetto. Un ordine così perfetto ha bisogno di una volontà dietro, e quella volontà sta in fondo a questo posto.",
		"Ogni tanto le pareti sembrano dire una parola appena sotto la soglia dell'udito. Non rispondo. Non credo che a parlare siano le pareti.",
		"Il Cenarion Circle non pronuncia il nome di ciò che dorme sotto il tempio. I suoi esploratori lo chiamano l'occhio, e la chiudono lì.",
	},
	["taq.muse.w11.003"] = {
		"Due imperatori, gemelli, un trono solo. Mi piacerebbe vedere come decidono chi si prende la sedia buona.",
		"Un impero che ha bisogno di due imperatori e di un dio di sotto. C'è chi proprio non riesce a decidere da solo.",
	},
	["taq.subzone_enter.w11.001"] = {
		"passa in {subzone}, dove il pavimento scende in pendenza e re-insetto scolpiti osservano da ogni colonna.",
		"arriva in {subzone}; la sabbia sotto i piedi lascia il posto a pietra levigata da innumerevoli zampe artigliate.",
	},
	["taq.threat.w11.001"] = {
		"Resta al buio. Ti si addice più di me.",
		"Torna dai tuoi imperatori finché puoi.",
	},
	["taq.victory.w11.001"] = {
		"I gemelli hanno appena perso un altro soldato.",
		"A terra. Se il tempio vuole, se ne faccia crescere un altro.",
		"Ahn'Qiraj è un po' più vuota. Bene.",
	},
	["wsg.attack.w11.001"] = {
		"Oltre la rampa non passi!",
		"Fermate chi corre!",
		"Dritto per il centro!",
	},
	["wsg.battle.w11.001"] = {
		"Molla la bandiera, e forse te ne vai sulle tue gambe.",
		"Quella bandiera non esce dalla gola sulle tue spalle.",
		"Non un passo di più verso la stanza della bandiera.",
	},
	["wsg.battle.w11.002"] = {
		"Vai di fretta? La gola è più lunga di quanto sembri.",
		"Campo lungo, questo, per chi corre piano.",
		"Bella giornata per una corsa. Peccato che la tua finisca qui.",
	},
	["wsg.battle.w11.003"] = {
		"taglia per il prato e si mette fra chi porta la bandiera e la via di casa.",
		"scatta fuori dall'imboccatura del tunnel dritto nella mischia.",
	},
	["wsg.battle.w11.004"] = {
		"Fermali prima della rampa. Dopo la rampa è troppo tardi.",
		"Colpisci chi porta la bandiera. Tutto il resto è rumore.",
	},
	["wsg.encounter_end.w11.001"] = {
		"Respinti alla rampa. Fate muovere la bandiera.",
		"Scontro finito. Chi ha la bandiera vada: al centro ci pensiamo noi.",
	},
	["wsg.encounter_end.w11.002"] = {
		"Spazzati via dal centrocampo, tutti insieme. La bandiera è andata: tocca riprenderla.",
		"Persa in campo aperto. La prossima volta si combatte vicino a un riparo, non in mezzo all'erba.",
	},
	["wsg.lowhp.w11.001"] = {
		"Non posso crollare qui. Sono {g:lontano|lontana} da tutti e due i cimiteri.",
		"Corri. La stanza della bandiera è più vicina del cimitero.",
		"Tieni duro. Qualcuno deve ancora riportare a casa quello straccio.",
	},
	["wsg.muse.w11.001"] = {
		"Ruba la bandiera lontana, difendi quella vicina, torna a casa di corsa. I bambini ci giocano coi bastoni. Solo che i bambini smettono quando qualcuno si fa male.",
		"Regole semplici. Difficili da rispettare, e ancora di più con le frecce nella schiena.",
		"Due bandiere, due basi e un prato nel mezzo. Magari tutte le guerre fossero così facili da spiegare.",
	},
	["wsg.muse.w11.002"] = {
		"Gli orchi del Warsong sono venuti per il legname, le Silverwing Sentinels per difendere gli alberi. La gola è quello che resta fra le due ragioni.",
		"Ogni ceppo ai margini di questa gola è legname per una parte e lutto per l'altra.",
	},
	["wsg.muse.w11.003"] = {
		"Due nella stanza della bandiera, sempre. Uno si annoia, l'altro resta sveglio.",
		"Non correte tutti a centrocampo. La bandiera sparisce mentre tutti si godono lo scontro.",
	},
	["wsg.muse.w11.004"] = {
		"alza lo sguardo sui grandi alberi di Ashenvale chini sulla gola, come se tenessero il conto.",
		"posa una mano sul muro della base e guarda il terreno scoperto più avanti.",
	},
	["wsg.muse.w11.005"] = {
		"Portare la bandiera è un onore. Come essere l'unica cosa che tutto il campo vuole ammazzare.",
		"Offriti di portare la bandiera, dicevano. Sarai {g:famoso|famosa} per trenta secondi, dicevano.",
		"La porto io. Ho sempre sognato di essere la persona più ricercata della gola.",
	},
	["wsg.muse.w11.006"] = {
		"Quel tratto d'erba scoperta nel mezzo è la passeggiata più lunga di Ashenvale, quando hai una bandiera sulle spalle.",
		"A metà strada con una bandiera si sta nel posto peggiore della gola: troppo avanti per tornare, troppo lontano dal riparo.",
	},
	["wsg.muse.w11.007"] = {
		"Qui nessuno vince da solo. Chi porta la bandiera corre, ma la gola la vince chi gli corre accanto.",
		"La gloria va alla bandiera. La cattura, però, è di chi cura e di chi si stacca di dosso gli inseguitori.",
	},
	["wsg.muse.w11.008"] = {
		"Ogni volta che qualcuno grida che sono nel tunnel, tutti si girano a guardare la rampa.",
		"Tunnel, rampa, tetto. Tre vie per la stanza della bandiera, e il nemico ne trova sempre una quarta.",
	},
	["wsg.muse.w11.009"] = {
		"si toglie una lappola dalla manica, le orecchie tese verso le grida che arrivano dall'altro capo della gola.",
		"tamburella con le dita sullo stipite della stanza della bandiera, in attesa del prossimo grido d'allarme.",
	},
	["wsg.muse.w11.010"] = {
		"Tre catture. Basta questo, eppure ci vuole un'eternità.",
		"Vince chi arriva prima a tre. Il numero è piccolo; la distanza fra le basi no.",
	},
	["wsg.muse.w11.011"] = {
		"La foresta continua a ricrescere sui sentieri fra le basi. Dalle una stagione tranquilla e la gola si scorderebbe di noi.",
		"Muschio sulle pietre, radici sotto la terra battuta. Ashenvale è paziente: aspetta che ce ne torniamo tutti a casa.",
	},
	["wsg.subzone_enter.w11.001"] = {
		"entra in {subzone}, le dita strette sull'arma, in ascolto di passi di corsa.",
		"raggiunge {subzone} e controlla ogni angolo prima di fidarsi.",
	},
	["wsg.subzone_enter.w11.002"] = {
		"{subzone}. Chi c'è, chi arriva, e dov'è la bandiera?",
		"{subzone}. Buon posto per aspettare, pessimo per farsi sorprendere.",
	},
	["wsg.threat.w11.001"] = {
		"Questa è la stanza della bandiera. Chi entra se ne va senza quello che cercava.",
		"Il tunnel è stretto. Come le tue possibilità.",
		"Girati. Il campo alle tue spalle è tutto libero.",
	},
	["wsg.victory.w11.001"] = {
		"A terra. Adesso torna alla base, prima che qualcuno si accorga che la porta è aperta.",
		"Un corridore in meno. La stanza della bandiera non si difende da sola.",
		"Bene. Torna al centro prima della prossima ondata.",
	},
	["wsg.victory.w11.002"] = {
		"Il cimitero è lontano da qui. Goditi gli alberi.",
		"Vai ad aspettare la prossima ondata. Avrai compagnia.",
		"Questo giro lo salti. La bandiera non ha bisogno di te.",
	},
	["wsg.victory.w11.003"] = {
		"si scuote i semi d'erba dagli stivali e cerca la bandiera con lo sguardo lungo la gola.",
		"si piega, una mano sul ginocchio, gli occhi già sul tunnel lontano.",
	},
]==])
