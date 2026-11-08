-- Italian texts of the regional pack eastern_dungeons (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/Dungeons.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("eastern", "itIT", "eastern_dungeons", [==[
	["brd.attack.01"] = {
		"Rinfrescati un po'!",
		"Un ricordino dalla superficie!",
	},
	["brd.battle.01"] = {
		"La montagna ne manda un altro. Bene, mi sono già {g:scaldato|scaldata}.",
		"Sale roventi, nemici duri. Avanti, allora.",
		"Fermati e combatti. Quaggiù non c'è un angolo fresco dove scappare.",
	},
	["brd.battle.02"] = {
		"pianta i piedi sulla pietra rovente e affronta l'attacco nel bagliore rosso delle forge.",
		"si gira verso la carica, il sudore che già cola, la sala intera accesa come l'interno di una fornace.",
	},
	["brd.encounter_end.01"] = {
		"Con {encounter} è finita. La montagna si tenga il suo calore: io mi tengo questa.",
		"Giù. Un altro nome che i Dark Iron dovranno smettere di gridare.",
	},
	["brd.lowhp.01"] = {
		"Non qui. Non finirò come un altro grumo di scorie.",
		"Resisti. Il caldo peggiora tutto. Resisti lo stesso.",
	},
	["brd.muse.01"] = {
		"Un'intera città scavata sotto la montagna, forge e sale e strade. L'hanno costruita i Dark Iron, e l'hanno costruita bene.",
		"Shadowforge City. Dite quel che volete della gente di Thaurissan, ma la pietra la sanno tagliare.",
		"Strade, statue, una sala del trono sotto una montagna di fuoco. I Dark Iron quaggiù non si sono nascosti: hanno regnato.",
	},
	["brd.muse.02"] = {
		"strizza gli occhi contro il calore che sale dal pavimento stesso, da qualcosa di immenso che brucia molto più in basso.",
		"si ferma a un parapetto sopra un fiume di roccia fusa, e sente il calore della montagna premere sul viso come una mano.",
	},
	["brd.muse.03"] = {
		"Thaurissan evocò Ragnaros dal profondo, e da allora i Dark Iron servono il fuoco. Il fuoco non ringrazia mai.",
		"Sotto i miei stivali c'è il Signore del Fuoco in persona. Cerco di non pensarci, e non ci riesco.",
	},
	["brd.muse.04"] = {
		"Una taverna. Quaggiù, in mezzo a tutto questo, i Dark Iron si sono tenuti una taverna. Lo rispetto.",
		"Certo che c'è una taverna. Ogni città dei nani ne ha una, persino quella costruita sopra un vulcano.",
	},
	["brd.muse.05"] = {
		"L'imperatore Dagran Thaurissan siede sul suo trono, più avanti. Ogni sala che libero me lo avvicina.",
		"Al cuore di tutta questa pietra e di tutto questo fuoco c'è un nano su un trono. È lui quello che conta.",
	},
	["brd.subzone_enter.01"] = {
		"entra in {subzone}, dove la luce rossa della lava getta lunghe sagome mobili sulla pietra scolpita.",
		"mette piede in {subzone}; il suono dei martelli lontani cambia tono, come se la città se ne fosse accorta.",
	},
	["brd.threat.01"] = {
		"Sono {g:sceso|scesa} fin quaggiù da molto lontano. Non costringermi a passare sopra di te.",
		"Fatti da parte. Il caldo è già abbastanza senza che ti ci metta anche tu.",
	},
	["brd.victory.01"] = {
		"Fatto. La mia roba scotta tanto da poterci cucinare sopra.",
		"Un nemico in meno. Darei ogni moneta che ho per qualcosa di fresco da bere.",
	},
	["brd.victory.02"] = {
		"fa un passo indietro mentre chi è caduto si posa sulla pietra rovente, e lontano le forge della città continuano a battere.",
		"riprende fiato nel bagliore della lava, mentre la cenere scende sull'immobilità come piume grigie.",
	},
	["brs.attack.01"] = {
		"Ecco il tuo tributo!",
		"Giù dalla montagna!",
	},
	["brs.battle.01"] = {
		"Vuoi la guglia? Vieni a tenertela.",
		"Ho fatto troppa salita per fermarmi davanti a te.",
		"Avanti. Sei solo un altro gradino.",
	},
	["brs.battle.02"] = {
		"Respira. Occhio ai bordi. Qui una caduta è lunga.",
		"Attenzione alla sporgenza. Alla guglia non serve uccidermi: le basta lasciarmi cadere.",
		"Spalle al muro. Troppi strapiombi, troppo fumo.",
	},
	["brs.encounter_end.01"] = {
		"{encounter} non terrà più questa sala. Una cosa in meno fra me e la cima.",
		"Fatta. Più in alto, i draghi l'avranno sentito.",
	},
	["brs.lowhp.01"] = {
		"Non qui. Non per il portinaio di un drago.",
		"Sono {g:salito|salita} troppo in alto per cadere adesso.",
		"Respiro ancora. Sono ancora {g:arrabbiato|arrabbiata}. Avanti.",
	},
	["brs.muse.01"] = {
		"Furono i Dark Iron a scolpire questa guglia, tanto tempo fa. Ora la tengono gli orchi, e sopra di loro i draghi neri.",
		"Prima fortezza dei nani, poi roccaforte degli orchi, ora nido dello stormo nero. La montagna continua a cambiare padrone.",
	},
	["brs.muse.02"] = {
		"Lassù Rend Blackhand si fa chiamare Capoguerra. Thrall avrebbe qualcosa da dire in proposito.",
		"Una Dark Horde sotto un falso capoguerra, a guardia della guglia per conto di un drago. Nel caldo crescono strane fedeltà.",
	},
	["brs.muse.03"] = {
		"alza lo sguardo nel fumo, dove sagome nere e alate si spostano su cornicioni molto più in alto.",
		"sente dall'alto il raspare di grandi artigli, e il brontolio di qualcosa che respira come una forgia.",
		"si ferma su una sporgenza di roccia nera mentre un'aria calda sale dal profondo, portando odore di zolfo.",
	},
	["brs.muse.04"] = {
		"Orchi, ogre, troll, ragni e draghi. Chiunque si occupi delle assunzioni, qui, non dice mai di no.",
		"Pare che ogni razza con un rancore abbia una stanza, in questo posto.",
	},
	["brs.muse.05"] = {
		"In cima aspetta il generale Drakkisath, un drago con la forma di un soldato. Fra me e lui ci sono solo scale.",
		"Più la guglia sale, più i draghi si avvicinano. Drakkisath è solo il primo.",
	},
	["brs.muse.06"] = {
		"Fumo in gola, calore sul viso, la montagna che ronza sotto i piedi. Questo posto ti logora senza alzare un dito.",
		"Qui respirare è una fatica. Ogni boccata sa di cenere e di ferro vecchio.",
	},
	["brs.subzone_enter.01"] = {
		"sale in {subzone}, dove la pietra nera è bruciata e ogni porta sembra sorvegliata.",
		"si spinge in {subzone}; l'aria si fa più calda, e gli echi di artigli e stivali arrivano da ogni parte insieme.",
	},
	["brs.threat.01"] = {
		"Fatti da parte. Io salgo: attraverso di te o accanto a te, scegli.",
		"Corri a dire alla cima della guglia che sto arrivando.",
	},
	["brs.victory.01"] = {
		"resta fra i caduti nel fumo, mentre la roccia nera scricchiola raffreddandosi tutt'intorno.",
		"abbassa la guardia e ascolta: più su nella guglia, qualcosa risponde al silenzio con un ruggito.",
		"riprende fiato contro un pilastro di pietra nera, il sudore che punge negli occhi.",
	},
	["brs.victory.02"] = {
		"Il prossimo. La guglia ne ha in abbondanza, ne sono {g:sicuro|sicura}.",
		"E uno. La montagna ne ha ancora qualche migliaio, ma intanto è uno.",
	},
	["ddm.battle.01"] = {
		"Cunicoli stretti, poca luce. A me va benissimo.",
		"Avanti, allora. In questa miniera non c'è più un posto dove nasconderti.",
		"Fuori dall'ombra, dentro la luce delle lanterne. Voglio vederti in faccia.",
	},
	["ddm.lowhp.01"] = {
		"Non in una miniera. Mi rifiuto di farmi trovare dal prossimo turno di minatori.",
		"Reggo ancora. I Defias dovranno impegnarsi di più.",
	},
	["ddm.muse.01"] = {
		"I muratori di VanCleef hanno ricostruito Stormwind e non sono mai stati pagati. Questa miniera è ciò che è diventato quel debito.",
		"Scalpellini truffati dai nobili, e ora una confraternita di ladri sotto le colline. Le paghe mancate fanno una miccia lunga.",
	},
	["ddm.muse.02"] = {
		"Una nave intera, nascosta in una grotta sotto Westfall. Bisogna ammirarne la faccia tosta.",
		"Hanno costruito una nave sottoterra. In una miniera. Ho visto piani più stupidi, ma pochi.",
	},
	["ddm.muse.03"] = {
		"si china sotto un puntello che cede, dove le lanterne dei Defias illuminano cunicoli pieni di polvere e segatura.",
		"si ferma ad ascoltare; dal fondo della miniera arrivano il clangore degli attrezzi e il sibilo delle macchine dei goblin.",
	},
	["ddm.muse.04"] = {
		"Oltre questi cunicoli, Edwin VanCleef aspetta sulla sua nave. Westfall ha pagato il suo rancore abbastanza a lungo.",
		"Ogni Defias di Westfall, alla fine, risponde all'uomo che sta in fondo a questa miniera.",
	},
	["ddm.victory.01"] = {
		"lascia andare un respiro che solleva la polvere, e ascolta la miniera scricchiolare e assestarsi.",
		"si allontana da chi è caduto, tossendo per la segatura, mentre più avanti una macchina dei goblin continua a macinare.",
		"si pulisce lo sporco dal viso; le lanterne oscillano, e tutto tace.",
	},
	["gnm.battle.01"] = {
		"Ingranaggi, denti o tutti e due? Fa lo stesso. Avanti.",
		"Qualunque cosa tu sia sotto tutta quella sporcizia, mi sei d'intralcio.",
	},
	["gnm.muse.01"] = {
		"Questa era una città. Gli gnomi dormivano in queste stanze e litigavano su questi banchi da lavoro. Ora qui dormono i trogg.",
		"Intere strade di ottone e tubature, costruite con amore, e tutto consegnato ai trogg da una sola scelta sbagliata.",
		"Officine, case, le mani ingegnose di un'intera città, e ora solo trogg e ruggine.",
	},
	["gnm.muse.02"] = {
		"si copre la bocca contro l'aria stantia e metallica; le radiazioni hanno lasciato in queste sale più della ruggine.",
		"aggira una pozza che brilla appena di verde, e non guarda troppo a lungo ciò che vi galleggia.",
	},
	["gnm.victory.01"] = {
		"Giù. Fra un attimo controllo di avere ancora tutte le dita.",
		"Una cosa in meno che sferraglia o ringhia al buio. Gnomeregan non ne sentirà la mancanza.",
	},
	["sch.battle.01"] = {
		"Ecco una lezione che qui sotto non ti hanno mai insegnato.",
		"Comincia la lezione. Non ti piacerà l'insegnante.",
	},
	["sch.battle.02"] = {
		"Qualunque cosa questa scuola abbia fatto di te, cadrai come tutto il resto.",
		"Ossa o carne o qualcosa nel mezzo. Va giù tutto allo stesso modo.",
	},
	["sch.encounter_end.01"] = {
		"{encounter} non farà più parte delle lezioni di questa scuola. È già qualcosa.",
		"Un orrore in meno nell'orario delle lezioni.",
	},
	["sch.lowhp.01"] = {
		"Non farò da lezione a nessuno.",
		"Non qui. Userebbero quel che resta di me.",
	},
	["sch.muse.01"] = {
		"Una scuola. Qui insegnano la morte come altrove si insegna a leggere, con lezioni e compiti.",
		"Aule, leggii, studenti che prendono appunti. Solo che la materia è rialzare cadaveri.",
	},
	["sch.muse.02"] = {
		"I Barov hanno venduto Caer Darrow al Cult of the Damned. Chissà se quell'oro valeva la pena.",
		"Una famiglia nobile ha ceduto il proprio castello ai negromanti in cambio di un prezzo. Il prezzo cammina ancora per i corridoi.",
	},
	["sch.muse.03"] = {
		"passa accanto a un tavolo di ossa disposte in file ordinate, come esemplari in attesa di una lezione.",
		"si ferma sulla soglia di un'aula, dove banchi vuoti guardano una cattedra scurita da vecchi lavori.",
	},
	["sch.muse.04"] = {
		"Darkmaster Gandling dirige una scuola severa. Qui le punizioni sono per sempre.",
		"Non vorrei vedere cosa ti danno qui per un esame andato male.",
	},
	["sch.muse.05"] = {
		"A sentire tutti, Caer Darrow un tempo era un bel posto. Un lago, un'isola, un castello. Poi sono arrivati i negromanti.",
		"Un castello su un'isola, in un lago tranquillo. E sotto, la peggior scuola del mondo.",
	},
	["sch.subzone_enter.01"] = {
		"scende in {subzone}; qui il freddo è quello delle cantine, umido e vecchio, e sa vagamente di sostanze chimiche.",
		"arriva in {subzone}, dove le torce ardono basse e i muri trattengono il mormorio di lezioni date tanto tempo fa.",
	},
	["sch.victory.01"] = {
		"La classe può andare.",
		"Bocciatura. Non provare a ripetere l'esame.",
	},
	["sch.victory.02"] = {
		"si allontana da chi è caduto e si pulisce le mani, come se in questa scuola qualcosa potesse mai tornare pulito.",
		"resta immobile nella sala fredda, in ascolto; lontano una porta si chiude senza fretta, come alla fine di una lezione.",
	},
	["sfk.battle.01"] = {
		"Avanti, allora. Questo castello ha avuto fin troppi padroni.",
		"Fuori dal buio. Ti sento.",
	},
	["sfk.muse.01"] = {
		"Arugal chiamò i worgen per combattere il Flagello. Ora il castello è loro, e lui, a quanto dicono, anche.",
		"Un mago di Dalaran portò i lupi per salvare Silverpine. I lupi sono rimasti, e il mago è impazzito in mezzo a loro.",
	},
	["sfk.muse.02"] = {
		"si ferma sotto un freddo arco di pietra, dove gli arazzi pendono a brandelli e qualcosa ulula lassù nelle torri.",
		"ascolta il vecchio castello scricchiolare tutt'intorno; oltre la prossima porta, artigli ticchettano sulla pietra.",
		"passa una mano su un muro segnato da graffi lunghi e profondi, troppo in alto per un cane qualunque.",
	},
	["sfk.victory.01"] = {
		"scavalca chi è caduto e tende l'orecchio; più in alto, un altro ululato risponde al silenzio.",
		"si raddrizza fra la polvere e i mobili rotti, ascoltando il castello che tace, per ora.",
	},
	["smn.attack.01"] = {
		"Ecco la tua penitenza!",
		"In ginocchio!",
	},
	["smn.battle.01"] = {
		"Risparmiami la predica. L'ho già sentita.",
		"Al rogo, dici? Prima devi prendermi.",
		"Tabarro rosso, lama alzata, e nemmeno un dubbio in testa. Avanti.",
	},
	["smn.battle.02"] = {
		"Calma. Sale strette, pavimento duro, nessun posto dove scappare. Vale per tutti e due.",
		"E va bene. Il monastero vuole uno scontro, e lo avrà.",
	},
	["smn.encounter_end.01"] = {
		"guarda {encounter} a terra, poi la volta sopra di sé, dove l'eco dello scontro si sta ancora spegnendo.",
		"resta nel silenzio che segue lo scontro, e tutto quel drappo rosso intorno sembra d'un tratto molto ordinario.",
	},
	["smn.lowhp.01"] = {
		"Non sul tuo pavimento pulito. Non oggi.",
		"Ti servirà più della fede per finirmi.",
	},
	["smn.muse.01"] = {
		"Stendardi rossi, pavimenti puliti, candele accese in fila. Qui è tutto in ordine, tranne le persone.",
		"Tanta cura nella pietra, tanto odio nelle mani che la custodiscono.",
		"I crociati hanno tenuto gli inni e hanno perso la pietà per strada.",
	},
	["smn.muse.02"] = {
		"Posto incantevole. Pavimenti lucidi, candele nuove, e tutti qui dentro mi vogliono al rogo.",
		"Ho avuto accoglienze più calde dai lupi. Almeno i lupi non fanno la predica prima.",
	},
	["smn.muse.03"] = {
		"si ferma sotto una volta dove ogni candela arde dritta e immobile, come se avesse paura di tremolare.",
		"cammina piano su una pietra consumata dalle ginocchia dei devoti, e non ne trae alcun conforto.",
	},
	["smn.muse.04"] = {
		"Epurerebbero tutto Lordaeron pur di essere sicuri del Flagello. Anche me, senza pensarci due volte.",
		"Lo zelo è un fuoco che non chiede cosa brucia. Questa gente ha smesso di chiederlo da tempo.",
	},
	["smn.muse.05"] = {
		"Libri, reliquie, armature, una cattedrale. I crociati accumulano il passato come gli avari accumulano monete.",
		"Quanta roba custodita dietro queste mura: libri vecchi, lame vecchie, preghiere vecchie. Custodita, non condivisa.",
	},
	["smn.subzone_enter.01"] = {
		"entra in {subzone}, dove la pietra è strofinata a fondo e l'aria sa di cera e di vecchio incenso.",
		"si inoltra in silenzio in {subzone}; le sale portano avanti ogni passo come un avvertimento.",
	},
	["smn.threat.01"] = {
		"Fammi un'altra predica e vedrai dove ti porta.",
		"Tanta fede, e nessuno di voi si chiede se valga la pena morire per me.",
	},
	["smn.victory.01"] = {
		"si allontana da chi è caduto, e le candele vicine continuano ad ardere, ferme e indifferenti.",
		"abbassa la guardia lentamente; la sala tace, e il pavimento di pietra ha una macchia in più da strofinare.",
	},
	["smn.victory.02"] = {
		"Finalmente silenzio. Questo posto urla più di quanto dovrebbe una casa santa.",
		"Giù. Qualcuno dovrà strofinare quel pavimento, e non sarò io.",
	},
	["stk.muse.01"] = {
		"Una prigione nel cuore di Stormwind, e la tengono i prigionieri. Qualcuno, di sopra, sta passando una settimana pessima.",
		"Le celle sono aperte e i detenuti comandano. Alla faccia delle serrature.",
		"Sbarre di ferro, muri di pietra, e dietro una rivolta. Le guardie saranno entusiaste.",
	},
	["str.battle.01"] = {
		"Torna nella cenere.",
		"Il tuo tempo è finito da un pezzo. Giù.",
	},
	["str.battle.02"] = {
		"Qualcos'altro esce dalle rovine. Avanti, allora.",
		"Strade in fiamme, muri crollati, e tu. Facciamola finita.",
	},
	["str.encounter_end.01"] = {
		"resta in piedi sopra {encounter} mentre la cenere scende, e per un momento la città in fiamme sembra un po' più quieta.",
		"lascia che il silenzio dopo lo scontro si posi, e guarda le rovine come per contare ciò che resta.",
	},
	["str.lowhp.01"] = {
		"Non qui. Chi cade a Stratholme si rialza, e non è più se stesso.",
		"In piedi. Non mi unirò ai morti di questa città.",
	},
	["str.muse.01"] = {
		"Stratholme ha bruciato una volta e non ha mai smesso. I fuochi ardono ancora, e non è rimasto nessuno a spegnerli.",
		"Una grande città di Lordaeron, ormai cenere e braci. Persino le insegne delle strade sono annerite.",
	},
	["str.muse.02"] = {
		"Arthas purgò questa città per fermare la piaga. Ora il barone Rivendare la tiene per il Flagello. I morti se la sono presa comunque.",
		"Tutti quelli che vivevano qui sono stati uccisi per sottrarli al Flagello, e il Flagello se li è presi lo stesso.",
	},
	["str.muse.03"] = {
		"aggira un mucchio di travi carbonizzate, e da lì sale l'odore di fumo vecchio e di morte ancora più vecchia.",
		"si ferma in una strada in rovina dove le braci brillano ancora sotto le macerie, e l'immobilità ha un suono tutto suo.",
	},
	["str.muse.04"] = {
		"Mezza città è del Flagello, mezza dei crociati, ed entrambe le metà mi vogliono {g:morto|morta}. Almeno su qualcosa vanno d'accordo.",
		"Non-morti da una parte, fanatici dall'altra. Stratholme non ha mai avuto fortuna con i vicini.",
	},
	["str.muse.05"] = {
		"Qualcuno deve a questa città una fine degna. Tanto vale che sia io.",
		"Stratholme non si può salvare. Ma si può ancora chiudere come si deve.",
	},
	["str.subzone_enter.01"] = {
		"imbocca {subzone}, dove muri anneriti si sporgono vicini e non si muove nulla di ciò che dovrebbe.",
		"avanza con cautela in {subzone}; ogni porta è buia, e ogni finestra è rotta da tempo.",
	},
	["str.victory.01"] = {
		"fa un passo indietro mentre chi è caduto si affloscia a terra, una sagoma in più in una città che ne è già piena.",
		"abbassa la guardia e ascolta; l'intera città in rovina sembra trattenere il fiato, poi riprende a covare sotto la cenere.",
	},
	["str.victory.02"] = {
		"Un'altra vita spesa in questa città. Ne ha spese così tante.",
		"Fatto. Qui non sembra di vincere. Sembra di mettere in ordine una tomba.",
	},
	["tah.battle.01"] = {
		"Acqua alta, appoggio pessimo, compagnia peggiore. Avanti.",
		"Fango fino alle ginocchia e qualcosa di arrabbiato davanti. Ma certo.",
	},
	["tah.muse.01"] = {
		"Gli Atal'ai cercarono di chiamare Hakkar nel mondo, e per questo Ysera affogò il loro tempio nella palude. Ci stanno ancora provando.",
		"Un tempio intero spinto sotto la palude per fermare un solo rituale, e i sacerdoti là sotto non hanno mai smesso di cantare.",
	},
	["tah.muse.02"] = {
		"avanza nell'acqua fino alle ginocchia fra le statue sommerse, mentre qualcosa di alato si agita nella penombra in alto.",
		"si ferma su una scala coperta di muschio e mezza affogata nell'acqua verde; i draghi di guardia qui sembrano stanchi quanto la pietra.",
		"ascolta il lento gocciolare dalla volta, e sotto, appena udibile, un canto in lingua troll.",
	},
	["tah.victory.01"] = {
		"Silenzio. Solo lo sgocciolio, e il canto più in fondo. Qui non smette mai davvero.",
		"Questa è fatta. Il tempio continua a mormorare fra sé, sotto tutta quell'acqua.",
	},
	["uld.battle.01"] = {
		"In fila. Quaggiù tutti vogliono il loro turno con me.",
		"A Uldaman ognuno vuole un pezzo di me. Prendi il numero.",
	},
	["uld.muse.01"] = {
		"Queste cripte erano antiche prima che i nani avessero un nome. L'Explorers' League darebbe la barba per leggere ogni parete.",
		"Pietra dei titani: senza giunture, fredda, enorme. Chi l'ha costruita non ragionava a misura d'uomo.",
	},
	["uld.muse.02"] = {
		"si ferma davanti a una grande figura scolpita nella parete, con la sgradevole impressione che i suoi occhi di pietra ne seguano ogni passo.",
		"guarda la polvere che scende dalla volta, dove statue più alte di una casa attendono nelle loro nicchie.",
		"passa il palmo sulla parete e non trova una commessura, un giunto, niente che un muratore riconoscerebbe.",
	},
	["uld.victory.01"] = {
		"Silenzio. La vecchia pietra ha visto mille scontri come questo e non ne ha tenuto nessuno.",
		"Fatto. La cripta non se ne accorge: c'era prima dello scontro e ci sarà molto dopo.",
	},
	["abg.battle.01"] = {
		"Questo stendardo resta del colore che ha.",
		"Vuoi questa base? Allora pagala.",
		"Allontanati dallo stendardo. Finché ci sono io non lo prende nessuno.",
	},
	["abg.lowhp.01"] = {
		"Non ancora. Qualcuno deve tenere questa base finché non arrivano rinforzi.",
		"Ho preso un colpo, non una sconfitta. Lo stendardo è ancora su.",
	},
	["abg.muse.01"] = {
		"Cinque posti che vale la pena tenere: una stalla, una fattoria, una forgia, una segheria e una miniera. Strano come ogni guerra si riduca a pane, ferro e legname.",
		"Un tempo questa era buona terra da coltivare. Adesso è una scacchiera, e i pezzi portano la spada.",
		"Dalla segheria sulla collina si vede tutto il bacino: ogni stendardo, ogni staffetta, ogni decisione sbagliata.",
	},
	["abg.muse.02"] = {
		"guarda gli stendardi del bacino cambiare colore uno dopo l'altro, come se tutta la valle respirasse.",
		"si ferma sul bordo della strada, lo sguardo che corre da uno stendardo all'altro attraverso la valle.",
	},
	["abg.muse.03"] = {
		"Qualcuno tenga d'occhio la forgia. Tutti si dimenticano della forgia.",
		"Non correte tutti dietro allo stesso scontro. Una base che nessuno sorveglia è una base persa.",
	},
	["abg.victory.01"] = {
		"A terra. Controlla lo stendardo, poi controlla la strada.",
		"E uno. Adesso: di che colore è lo stendardo?",
		"Libero, per un momento. In questa valle un momento è tutto quello che si ottiene.",
	},
	["avl.battle.01"] = {
		"Questa strada è presidiata. Torna indietro, o finisci nella neve.",
		"Al generale non ci arrivi passando da me.",
		"Un altro passo su per questa valle ti costa tutto. Fallo, allora.",
	},
	["avl.lowhp.01"] = {
		"Resisti. La neve qui è soffice, ma non ho intenzione di sdraiarmici.",
		"Non qui. La valle è lunga, e voglio vederne la fine.",
	},
	["avl.muse.01"] = {
		"Un'intera valle di neve e di torri, e due eserciti che giurano entrambi che era loro per primi. Alle montagne non importa di chi fosse.",
		"Torri, bunker, cimiteri, miniere. Prendere questa valle non è una battaglia: è una lunga stagione fredda di battaglie.",
		"Qui la lotta dura ore, su e giù per la stessa strada gelata. Certe battaglie si vincono dimenticando quanto si è stanchi.",
	},
	["avl.muse.02"] = {
		"si soffia nelle mani a coppa e scruta la lunga valle bianca, dove le torri lontane si stagliano scure contro i campi di neve.",
		"batte i piedi per scacciare il freddo e alza gli occhi verso i fianchi della montagna, bianchi e silenziosi sopra il fragore della battaglia.",
	},
	["avl.muse.03"] = {
		"Neve fino alle ginocchia e un esercito per parte. Posto ideale per un picnic.",
		"Chiunque abbia pianificato questa guerra non ha mai dovuto farla a piedi.",
	},
	["avl.victory.01"] = {
		"si raddrizza dopo lo scontro, il fiato che fuma nel freddo, e cerca con gli occhi dove si sia spostata la battaglia.",
		"copre di neve con un calcio le macchie scure sul terreno calpestato e prosegue giù per la valle.",
		"si appoggia a un palo dello steccato, inghiottendo aria gelata, mentre il rumore dei combattimenti sale da più giù nella valle.",
	},
	["bwl.battle.01"] = {
		"Servi un drago che ti mangerebbe in una giornata fiacca. Fatti da parte o cadi qui.",
		"Servitori di Nefarian, tutti quanti. Venite a guadagnarvi la paga.",
		"Sono {g:arrivato|arrivata} fin quassù, e credi di essere tu a fermarmi?",
	},
	["bwl.lowhp.01"] = {
		"Non nell'officina di un drago. Non finirò come pezzi di ricambio per qualcuno.",
		"Resisti. Qualunque cosa Nefarian faccia con chi cade, non voglio scoprirlo.",
	},
	["bwl.muse.01"] = {
		"Nefarian tiene la sua tana sopra il fuoco della montagna, e tutto ciò che lo serve sulle scale più in basso.",
		"Quassù Nefarian incrocia draghi di ogni colore per farne uno solo. Basta il pensiero per rivoltare lo stomaco.",
		"Questo posto ha la crudeltà ordinata di un'officina. Gabbie, vasche, l'odore di qualcosa cotto troppo a lungo. Qui si sono fabbricati draghi, e senza delicatezza.",
	},
	["bwl.muse.02"] = {
		"alza gli occhi verso le alte volte nere, dove il raspare di artigli sulla pietra va e viene come una lenta marea.",
		"sente l'odore di scaglie bruciate e di fumo vecchio che scende lungo il corridoio, e stringe la presa.",
	},
	["bwl.muse.03"] = {
		"Un drago con un laboratorio. Mi piacevano di più quando se ne stavano sdraiati sull'oro.",
		"Ingegneri goblin al servizio di un drago. Pagherei bene per leggere quel contratto.",
	},
	["bwl.victory.01"] = {
		"scavalca i caduti, badando al pavimento bruciato, e guarda avanti verso la prossima porta nera.",
		"tira un lungo respiro mentre gli echi si spengono lungo le sale di pietra scura, dove di certo qualcosa di più grande sta ascoltando.",
		"si toglie la fuliggine dal viso col dorso del guanto; la tana tace, ma solo per ora.",
	},
	["mc.battle.01"] = {
		"Brucia quanto ti pare. Non risalgo finché qui non ho finito.",
		"Avanti, tizzone. Vediamo chi dei due si raffredda per primo.",
	},
	["mc.battle.02"] = {
		"Guarda il pavimento, non solo il nemico. Quaggiù combatte anche il terreno.",
		"Attenzione alla lava alle spalle. Un passo sbagliato e lo scontro non conterà più niente.",
	},
	["mc.encounter_end.01"] = {
		"Con {encounter} è finita. Il caldo non è calato di un grado, ma qualcosa quaggiù si è fatto più silenzioso.",
		"{encounter} non brucerà più per nessuno. Questo scontro me lo ricorderò anche solo per il caldo.",
	},
	["mc.lowhp.01"] = {
		"Non qui. Non diventerò un'altra bruciatura su questo pavimento.",
		"Sono {g:sceso|scesa} troppo in fondo per spegnermi adesso.",
	},
	["mc.muse.01"] = {
		"Qui vive Ragnaros, sotto Blackrock, fra fiumi di pietra diventata liquida. Il mondo non era fatto per avere una cantina così.",
		"Fiumi di roccia fusa, pareti che brillano da dentro, aria che tremola. Oltre tutto questo, Ragnaros aspetta.",
		"Gli elementali di qui erano già vecchi quando il primo nano impugnò un piccone. Per loro non sono nemmeno un nemico, solo una scintilla che non si è ancora spenta.",
	},
	["mc.muse.02"] = {
		"si asciuga il sudore dagli occhi col dorso del polso; il calore sale dalla lava a ondate che fanno ondeggiare la parete in fondo.",
		"guarda scorrere un lento fiume di roccia fusa, così vicino da sentirsi tirare la pelle del viso.",
		"respira attraverso un panno contro lo zolfo, gli occhi socchiusi per il riverbero che sale dal basso.",
	},
	["mc.muse.03"] = {
		"Porta una borraccia, mi hanno detto. Intendevano dieci.",
		"La prossima volta che qualcuno si lamenta del caldo del deserto, me lo porto quaggiù.",
		"Be', nessuno potrà dire che qui ci sono spifferi.",
	},
	["mc.subzone_enter.01"] = {
		"si addentra ancora nel Core, dove i passaggi si aprono su caverne illuminate di rosso dal basso e la roccia scotta anche attraverso gli stivali.",
		"passa in un'altra sala del profondo infuocato, con l'aria densa di zolfo e il rombo della lava che scorre.",
	},
	["mc.victory.01"] = {
		"fa un passo indietro mentre la cosa caduta sibila e fuma, e il suo bagliore si spegne in un rosso cupo e poi nel nulla.",
		"abbassa l'arma, ancora calda al tatto, e aspetta che il sibilo finisca.",
	},
	["mc.victory.02"] = {
		"Spento. Se solo il resto di questo posto capisse l'antifona.",
		"Un fuoco in meno. Il resto della montagna non sembra essersene accorto.",
	},
	["nax.muse.01"] = {
		"Un'intera necropoli sospesa nel cielo sopra le Plaguelands, e io ci sono dentro. Il pavimento è così freddo che lo si sente attraverso gli stivali.",
		"La cittadella di Kel'Thuzad. Ogni corridoio sa di tavolo d'obitorio e di ago da cucitura.",
		"Qui i morti non si custodiscono, si fabbricano, con cura e a centinaia. Le Plaguelands là sotto sono solo il posto dove li mandano a camminare.",
	},
	["zg.battle.01"] = {
		"Il tuo dio del sangue può aspettare il suo turno. Prima tocca a te.",
		"Esci dal verde, allora. Non sono qui per il panorama.",
	},
	["zg.muse.01"] = {
		"L'antica capitale dei Gurubashi, invasa dalla vegetazione e di nuovo sveglia. I suoi sacerdoti rivogliono il loro dio del sangue, e non lo chiedono con le buone.",
		"Liane sui gradini, serpenti nelle liane, sacerdoti in cima ai gradini. La città di Hakkar si risveglia, e la giungla tutt'intorno resta immobile.",
		"In cima a questi templi, i sacerdoti cercano di fare un dio col sangue. L'aria ne ha già il sapore.",
	},
	["zg.muse.02"] = {
		"Pipistrelli, tigri, raptor e sacerdoti che sanguinano apposta. Stranglethorn si è tenuta il meglio per la fine.",
		"Qui ogni liana potrebbe essere un serpente. Più o meno la metà lo è.",
	},
	["zg.victory.01"] = {
		"ascolta il rumore dello scontro che si perde nella giungla, mentre più in alto i tamburi continuano a battere senza perdere un colpo.",
		"torna sul vecchio sentiero di pietra, scostandosi le liane dalle spalle, e alza lo sguardo verso i templi.",
	},
	["brd.attack.w10.001"] = {
		"Eccone una per il Ring of Law!",
		"Mettilo sul conto dell'imperatore!",
	},
	["brd.battle.w10.001"] = {
		"Per l'imperatore? Non si accorgerà neanche che non ci sei più.",
		"Avanti, allora. Thaurissan può fare a meno di un'altra guardia.",
	},
	["brd.battle.w10.002"] = {
		"Possibile che questa città non si possa attraversare senza una rissa?",
		"Prima la rissa, poi da bere. Mi dicono che qui usa così.",
		"Calma! Sono qui solo per la birra!",
	},
	["brd.battle.w10.003"] = {
		"si pianta sulle lastre calde e riceve l'attacco nel bagliore rosso.",
		"accoglie la carica, mentre il clangore dei martelli della città prosegue dietro ogni colpo.",
	},
	["brd.battle.w10.004"] = {
		"Non ho fatto tutta questa strada per finire nelle vostre celle.",
		"Catene? Non oggi. E nemmeno domani.",
		"Rinchiudermi? Ti servirà più gente di quella che hai.",
	},
	["brd.battle.w10.005"] = {
		"Lontano dai bordi. Quaggiù un passo falso finisce nella lava.",
		"Guarda le mani. In questa città il fuoco esce da tutte.",
	},
	["brd.encounter_end.w10.001"] = {
		"{encounter} è a terra. Qualcuno dica all'imperatore che la sua corte si è ristretta.",
		"La città continua a martellare, ma {encounter} non la sentirà più.",
	},
	["brd.encounter_end.w10.002"] = {
		"Giù tutti. Le forge non si sono nemmeno fermate. In piedi, e di nuovo.",
		"Una sconfitta, sotto gli occhi dei Dark Iron. Capiamo l'errore, poi torniamo.",
	},
	["brd.lowhp.w10.001"] = {
		"Non così. Nel loro blocco di prigioni non ci finisco.",
		"Tiratemi fuori dal fuoco prima che ci finisca dentro!",
	},
	["brd.lowhp.w10.002"] = {
		"Troppo caldo per pensare. Indietro, subito.",
		"Se crollo qui, i Dark Iron mi fondono l'equipaggiamento entro cena.",
		"Respira. Piano. Il caldo vuole farmi andare nel panico.",
	},
	["brd.muse.w10.001"] = {
		"Tre clan di nani si fecero guerra per Ironforge, e i vinti scavarono fin quaggiù per riprendersela. Trovarono qualcosa di peggio della sconfitta.",
		"Bronzebeard, Wildhammer, Dark Iron. I primi due litigano ancora davanti a una birra. Il terzo ha il fuoco per padrone di casa.",
		"Ogni Dark Iron quaggiù si porta dentro la vecchia sconfitta come un tizzone in petto. Li ha tenuti al caldo per moltissimo tempo.",
	},
	["brd.muse.w10.002"] = {
		"Birra dei Dark Iron. Fatta sopra la lava, servita da gente che ti ammazzerebbe volentieri. Dev'essere buona per forza.",
		"In questa città, nel bel mezzo di una guerra, c'è un nano che spilla birra. O è follia, o è la cosa più nanica che abbia mai visto.",
	},
	["brd.muse.w10.003"] = {
		"In questa città c'è un blocco di prigioni, e non tutti quelli nelle celle sono criminali. Alcuni hanno solo preso la strada sbagliata attraverso la Searing Gorge.",
		"I Dark Iron tengono i prigionieri come tengono tutto il resto: in catene, contati e lontani dalla porta.",
		"Chi è rinchiuso in quelle celle sente solo martelli da chissà quanto tempo. Io vorrei che qualcuno venisse a prendermi.",
	},
	["brd.muse.w10.004"] = {
		"ascolta la città: martelli, mantici, il sibilo del ferro temprato, tutto che sale e scende come un respiro.",
		"si accorge che qui ogni superficie è calda, la ringhiera, la pietra, l'aria stessa, e che niente si raffredda mai.",
	},
	["brd.muse.w10.005"] = {
		"Qui fanno i processi in un'arena e la chiamano legge. Il verdetto è chi ne esce sulle sue gambe.",
		"Il Ring of Law: una folla, un giudice e un cancello che si apre sulla bestia scelta per te. Giustizia alla maniera dei Dark Iron.",
		"Un'arena con il giudice in tribuna. Qui un processo è uno scontro con il pubblico, e il pubblico ha già deciso.",
	},
	["brd.muse.w10.006"] = {
		"Nel Lyceum i bracieri restano accesi per i padroni, e ogni fiamma arde per il fuoco di sotto. In questa città niente fa soltanto luce.",
		"Qui gli stregoni Dark Iron studiano il fuoco come altrove gli studiosi studiano le stelle. Solo che il loro maestro risponde.",
		"Una specie di scuola sotto un vulcano. Chissà cosa imparano prima i Dark Iron: a leggere o a bruciare.",
	},
	["brd.muse.w10.007"] = {
		"Creature di fuoco camminano per queste sale accanto ai nani come capisquadra. I Dark Iron non comandano da soli, qui, checché ne pensi l'imperatore.",
		"I servitori del fuoco quaggiù non guardano i nani come alleati. Li guardano come combustibile che parla.",
	},
	["brd.muse.w10.008"] = {
		"Golem, forge, forzieri pieni d'oro. I Dark Iron saranno anche maledetti, ma poveri no.",
		"Un'intera città di nani che non smettono mai di lavorare. Ironforge dovrebbe preoccuparsi, o essere invidiosa.",
		"Perfino l'armatura delle loro guardie è un'opera d'arte. Peccato per chi la indossa.",
	},
	["brd.muse.w10.009"] = {
		"La figlia di Magni Bronzebeard è quaggiù, al fianco dell'imperatore. Rapita o sposa, a seconda di chi lo racconta.",
		"Una principessa Bronzebeard accanto a un trono Dark Iron. Ironforge lo chiama rapimento. Chissà come lo chiama lei.",
		"Thaurissan porta la corona di un popolo sconfitto, e la porta con orgoglio. Forse quell'orgoglio è tutto ciò che il fuoco gli ha lasciato.",
	},
	["brd.muse.w10.010"] = {
		"passa una mano sul volto scolpito di qualche signore Dark Iron di tanto tempo fa, coi lineamenti mezzo fusi dal calore dei secoli.",
		"si ferma davanti alla statua di un re nanico, così annerita dalla fuliggine che solo la corona riflette ancora la luce.",
	},
	["brd.muse.w10.011"] = {
		"Lunga la strada per scendere, più lunga quella per tornare. Almeno la compagnia è meglio della gente del posto.",
		"Teniamoci vicini quaggiù. In una città così grande, perdersi vuol dire farsi trovare dalle persone sbagliate.",
	},
	["brd.muse.w10.012"] = {
		"In questa città c'è una tomba dove si dice che si aggirino sette stregoni Dark Iron. Aprirono la porta al fuoco, e il fuoco non li ha più lasciati andare.",
		"Sotto la città la montagna si apre su qualcosa che temono perfino i Dark Iron. Il calore viene da lì, e anche l'obbedienza.",
		"Più in basso di questa città arde un fuoco con un suo signore. Spero di non avere mai motivo di andare a vedere.",
	},
	["brd.subzone_enter.w10.001"] = {
		"entra in {subzone}; la pietra è tagliata con la cura pesante e squadrata dei Dark Iron, e annerita da tutto ciò che è venuto dopo.",
		"passa in {subzone}, e il caldo segue come un cane alle calcagna.",
	},
	["brd.subzone_enter.w10.002"] = {
		"{subzone}. I Dark Iron danno a tutto nomi solenni. Di solito vuol dire altre guardie.",
		"{subzone}. Un'altra sala di una città che non andava mai costruita sotto un vulcano.",
	},
	["brd.threat.w10.001"] = {
		"Indietro. L'imperatore non ti paga abbastanza per questo.",
		"Fatti da parte, o finisci nel mucchio delle scorie.",
		"Ho attraversato mezza città. Non sarai tu a fermarmi.",
	},
	["brd.victory.w10.001"] = {
		"Un cliente in meno per il Grim Guzzler.",
		"Qualcuno versi un goccio per quello lì. Birra dei Dark Iron, possibilmente.",
	},
	["brd.victory.w10.002"] = {
		"abbassa la guardia mentre il caduto comincia a fumare appena sulla pietra calda.",
		"si allontana dal caduto; da qualche parte dietro le pareti, le forge non hanno perso un colpo.",
	},
	["brd.victory.w10.003"] = {
		"Ho la gola secca come un mantice.",
		"Questa città ha guardie come la montagna ha caldo: senza fine.",
	},
	["brd.victory.w10.004"] = {
		"Dite al vostro imperatore che veniamo a prenderci il trono.",
		"A Thaurissan stanno finendo i soldati.",
	},
	["brd.victory.w10.005"] = {
		"Qualunque cosa fosse, serviva il fuoco. E il fuoco non lo piangerà.",
		"Un altro servitore della montagna messo a tacere. La montagna non se ne accorgerà neppure.",
		"È caduto per un imperatore che non ne ha mai imparato il nome.",
	},
	["brs.attack.w10.001"] = {
		"Giù dalla scala!",
		"Fate largo, sto salendo!",
	},
	["brs.attack.w10.002"] = {
		"Coi complimenti della guglia!",
		"Ecco qualcosa da far vedere a Rend!",
	},
	["brs.battle.w10.001"] = {
		"Questa Rend può guardarsela dalla tribuna.",
		"Un altro avanzo di Blackhand. Vieni qua.",
	},
	["brs.battle.w10.002"] = {
		"Ma in questa guglia non bussa mai nessuno?",
		"Bene, altra compagnia. La guglia non ne resta mai senza.",
		"Orco, ogre, troll, ragno... ho smesso di chiedere quale.",
	},
	["brs.battle.w10.003"] = {
		"Occhi in alto. Qui la roba ti piomba addosso dalle sporgenze.",
		"Uno scontro in fondo alla scala, e il prossimo che la sta già scendendo.",
	},
	["brs.battle.w10.004"] = {
		"pianta i piedi sulla pietra bruciata e li affronta a viso aperto.",
		"si volta incontro alla carica, e a ogni passo la polvere nera si solleva intorno agli stivali.",
	},
	["brs.battle.w10.005"] = {
		"Nessun galoppino di un drago mi ferma qui.",
		"Drakkisath non ti ringrazierà. Quassù nessuno ringrazia nessuno.",
	},
	["brs.battle.w10.006"] = {
		"La guerra della Dark Horde è finita anni fa. Vuoi sapere come?",
		"La vecchia Orda non c'è più da un pezzo. A te la notizia non è mai arrivata.",
	},
	["brs.battle.w10.007"] = {
		"Fa già abbastanza caldo senza di te. Sbrighiamoci.",
		"Niente come una rissa dentro una fornace per svegliarsi per bene.",
	},
	["brs.battle.w10.008"] = {
		"Respira e tira avanti. Qui il fumo fa più male di qualunque lama.",
		"La salita mi toglie più forze dei combattimenti. Avanti.",
		"Braccia pesanti, aria rada e calda. Combatti lo stesso.",
	},
	["brs.encounter_end.w10.001"] = {
		"{encounter} è a terra. Un altro piano di questa montagna è nostro.",
		"Acqua, un respiro, e si sale. {encounter} non ci verrà dietro.",
	},
	["brs.encounter_end.w10.002"] = {
		"{encounter} giace nel fumo. Mi fischiano ancora le orecchie.",
		"Finita. La guglia tace, come se decidesse cosa mandare dopo.",
	},
	["brs.encounter_end.w10.003"] = {
		"Di nuovo alle scale, allora. La guglia non scappa.",
		"Tutti a terra. La prossima volta più piano, e nessuno insegue niente su per le scale.",
	},
	["brs.lowhp.w10.001"] = {
		"Non su queste scale. Non per Rend.",
		"Non sarò l'ennesimo corpo che i draghi scavalcano.",
	},
	["brs.lowhp.w10.002"] = {
		"Troppo fumo, troppo poco fiato. Indietro, subito.",
		"Il caldo e le ferite insieme. Se crollo qui, nessuno mi riporta giù per tutte quelle scale.",
	},
	["brs.lowhp.w10.003"] = {
		"Rimettetemi in sesto prima che diventi parte dell'arredamento!",
		"Aiuto! Non finirò come trofeo sulla parete di Rend.",
	},
	["brs.muse.w10.001"] = {
		"Rend si è tenuto il nome di suo padre e la guerra di suo padre. Lui la chiama fedeltà. Il resto dell'Orda è andato avanti senza di lui.",
		"Il figlio di Blackhand, seduto su una montagna piena degli stendardi del padre, ad aspettare una guerra finita da anni.",
		"La Dark Horde dipinge ancora il vecchio segno del clan su ogni scudo. C'è chi non sopporta di essere altro da ciò che era.",
	},
	["brs.muse.w10.002"] = {
		"Alcuni di questi orchi sono troppo giovani per ricordare la vecchia Orda. Combattono per lei lo stesso, perché è la storia che gli hanno messo in mano.",
		"Ogni soldato della Dark Horde, quassù, combatte come una bestia messa all'angolo. Mi chiedo se qualcuno di loro abbia mai avuto scelta.",
		"Altrove gli orchi ormai coltivano e commerciano. Quassù dormono ancora con l'armatura addosso, in attesa che la vecchia guerra li richiami.",
	},
	["brs.muse.w10.003"] = {
		"Ogre a guardia delle porte per conto di orchi che rispondono a un drago. Qualcuno paga benissimo, o mente benissimo.",
		"Gli ogre quassù hanno perfino un loro gran signore. Chissà se sa chi comanda davvero.",
		"Una clava, nessun dubbio e la ferma convinzione che una porta sia una cosa da attraversare. Gli ogre di qui fanno una vita semplice.",
	},
	["brs.muse.w10.004"] = {
		"Gli orchi hanno lasciato le gallerie di sotto ai ragni e fanno finta che sia stata un'idea loro. Con un nido di quelle dimensioni non discute nessuno.",
		"In ogni ragnatela che ho visto qui dentro c'è qualcosa di avvolto. Ho smesso di provare a indovinare cosa.",
		"Un ragno grande come un carro, che cova la sua nidiata sotto una fortezza di orchi. Persino la Dark Horde gli gira alla larga.",
	},
	["brs.muse.w10.005"] = {
		"Lassù da qualche parte c'è una covata, file di uova nere tenute al caldo dalla montagna stessa. Un'intera generazione, in attesa.",
		"Lo stormo nero non si limita a sorvegliare questo posto. Qui si riproduce. È questo che mi fa andare avanti.",
		"Uova a centinaia nel calore delle sale alte, e ognuna è un drago che prima o poi qualcuno dovrà affrontare.",
	},
	["brs.muse.w10.006"] = {
		"Gli orchi tengono una creatura di fuoco incatenata nella parte alta della guglia e la nutrono di calore come una forgia. Un giorno le catene non reggeranno, e preferirei non essere nella stanza.",
		"Legare il fuoco con catene e cantilene. La Dark Horde ha un talento per trattenere cose che non andrebbero trattenute.",
		"Lassù un essere di fiamma viva tira contro i suoi legami. Tutta la guglia vibra per lo sforzo.",
	},
	["brs.muse.w10.007"] = {
		"Rend si è costruito un'arena nella guglia. Ovvio. Un Capoguerra che nessuno ha scelto ha bisogno di una folla che gli dica che esiste.",
		"Lassù in cima c'è uno stadio dove la Dark Horde guarda morire le cose per divertimento. Posti a sedere a volontà. Preferirei non occuparne uno.",
		"Una fortezza di orchi con dentro uno stadio. Qualunque cosa manchi alla Dark Horde, non è il gusto dello spettacolo.",
	},
	["brs.muse.w10.008"] = {
		"Sotto la vernice degli orchi la muratura è nanica, squadrata e paziente. I Dark Iron l'hanno costruita per durare, e ha retto. Solo che tenersela non ci sono riusciti.",
		"Sopra certe porte restano ancora rune naniche, mezze grattate via dalle asce degli orchi. La montagna si ricorda chi l'ha scavata.",
		"Gli orchi dormono in sale scavate dai nani, e le ossa della prima guarnigione sono probabilmente ancora murate da qualche parte.",
	},
	["brs.muse.w10.009"] = {
		"posa una mano sulla parete nera e la ritrae: la pietra è calda, come il fianco di un enorme animale addormentato.",
		"ascolta la guglia scricchiolare e assestarsi nel calore, come se l'intera montagna spostasse il proprio peso.",
		"si asciuga la fronte e si ritrova le dita nere di fuliggine, come tutto, qui, prima o poi.",
	},
	["brs.muse.w10.010"] = {
		"La parte bassa della guglia è orchi, ogre e i loro battibecchi. Più in alto le cose si fanno ordinate, ed è proprio l'ordine che mi preoccupa.",
		"Ogni scala qui porta in su, e ogni piano è più cattivo di quello di sotto. Qualcuno l'ha voluto così.",
		"Prendere una fortezza dal basso è un modo da sciocchi. È anche l'unico modo, e quindi eccomi.",
	},
	["brs.muse.w10.011"] = {
		"I draghi neri hanno già usato gli orchi, e lo stanno rifacendo. Rend crede di essere un alleato. È un attrezzo con un titolo.",
		"Drakkisath maneggia gli orchi come un fabbro le tenaglie: con cura, e senza mai chiedere il loro parere.",
		"Chi comanda davvero a Blackrock Spire vive sopra tutto questo fumo e non scende mai. Qualcosa vorrà pur dire.",
	},
	["brs.muse.w10.012"] = {
		"Contiamoci a ogni pianerottolo. Questo posto perde gente fra un gradino e l'altro.",
		"Non allontanatevi. Alla guglia piace dividere un gruppo e sbrigarsela con i pezzi.",
		"Acqua, bende, pazienza. Prima della cima ci serviranno tutte e tre.",
	},
	["brs.muse.w10.013"] = {
		"Orgrim Doomhammer era un Blackrock. Il suo martello è passato a Thrall. Al clan è rimasta solo la montagna.",
		"Il clan Blackrock ha dato alla vecchia Orda i suoi capoguerra. Ora offre una montagna piena di orchi arrabbiati a chiunque voglia guidarli.",
		"Stendardi dei Blackrock su ogni parete. Qualunque cosa sia diventata l'Orda là fuori, qui dentro è ancora l'anno in cui si aprì il Dark Portal.",
	},
	["brs.muse.w10.014"] = {
		"Draghetti fra i piedi, mezzi draghi sulle scale e qualcosa di più grosso che russa al piano di sopra. È un asilo con la guarnigione.",
		"Cercavo orchi e ho trovato draghi. La prossima volta chiedo l'elenco prima di salire.",
		"Ogni drago di questa guglia è figlio di qualcuno. Preferirei non conoscere i genitori.",
	},
	["brs.subzone_enter.w10.001"] = {
		"entra in {subzone}, dove gli stendardi della Dark Horde pendono sopra porte scolpite un tempo dai nani.",
		"entra in {subzone}; più avanti un orco abbaia un ordine, e l'eco fa il resto.",
	},
	["brs.subzone_enter.w10.002"] = {
		"{subzone}. Un altro nome lungo la salita. Questo me lo ricorderò per il caldo.",
		"{subzone}. La guglia dà un nome alle sue stanze, come se qui qualcuno avesse bisogno di indicazioni.",
	},
	["brs.subzone_enter.w10.003"] = {
		"passa in {subzone} attraverso uno sbuffo di fumo, e l'aria cambia sapore: più ferro, più cenere.",
		"sale in {subzone}, dove la pietra nera è solcata da segni che nessun piccone ha mai fatto.",
	},
	["brs.threat.w10.001"] = {
		"Torna indietro. La strada per scendere è più breve di quanto credi.",
		"Torna dal tuo Capoguerra. Digli che le scale sono occupate.",
	},
	["brs.threat.w10.002"] = {
		"Non ti conviene. Guarda quanta salita ho già fatto.",
		"Un altro passo e scendi per la via più rapida.",
	},
	["brs.victory.w10.001"] = {
		"Uno in meno all'appello di Rend.",
		"Qualcuno dica a Rend che gli manca un soldato.",
	},
	["brs.victory.w10.002"] = {
		"allontana con un calcio l'arma caduta, che rimbalza via sulla pietra nera.",
		"si raddrizza nella fuliggine che vortica, lo sguardo già alla prossima scala.",
	},
	["brs.victory.w10.003"] = {
		"Silenzio, per ora. Un respiro, finché la guglia lo permette.",
		"Un altro pianerottolo ripulito. Le gambe li contano, anche se io no.",
	},
	["brs.victory.w10.004"] = {
		"Piano successivo. La cima si avvicina.",
		"Lassù questa la verranno a sapere.",
		"La guglia si è appena accorciata un po'.",
	},
	["brs.victory.w10.005"] = {
		"Un altro morto per la guerra di Rend. Lui non ne saprà nemmeno il nome.",
		"Per qualunque cosa combattesse, combatteva per il rancore di qualcun altro.",
	},
	["brs.victory.w10.006"] = {
		"Bene. Ora, se qualcuno potesse aprire una finestra.",
		"Fatto, e fa ancora caldo. Le vittorie non sono più quelle di una volta.",
	},
	["brs.victory.w10.007"] = {
		"scavalca il caduto su lastre che i nani posarono tanto tempo fa.",
		"si appoggia un attimo a un pilastro scolpito dai nani, mentre sopra di esso gli stendardi degli orchi si muovono nella corrente calda.",
		"guarda il caduto, poi l'intaglio nanico alle sue spalle, che finora è sopravvissuto a ogni padrone di questo posto.",
	},
	["sch.attack.w10.001"] = {
		"Torna nell'ossario!",
		"Nel mucchio con gli altri!",
	},
	["sch.attack.w10.002"] = {
		"Il voto, stavolta, mettitelo tu!",
		"Prendi nota di questo!",
	},
	["sch.battle.w10.001"] = {
		"Cucito o evocato, ti smonti allo stesso modo!",
		"Di qualunque cosa ti abbiano fatto, ti riporto a pezzi.",
		"Ossa, fil di ferro e cattive intenzioni. Vieni qui.",
	},
	["sch.battle.w10.002"] = {
		"Metti giù il libro e combatti.",
		"I tuoi studi finiscono qui.",
	},
	["sch.battle.w10.003"] = {
		"Non pensare di cosa è fatto. Combatti e basta.",
		"Non è il momento di chiedersi di chi fossero quelle ossa.",
	},
	["sch.battle.w10.004"] = {
		"si mette con le spalle a un muro di pietra gelido e affronta ciò che arriva dalla porta accanto.",
		"si fa forza contro il gelo della sala e va incontro all'attacco.",
	},
	["sch.battle.w10.005"] = {
		"È un esame? Nessuno mi aveva detto che c'era un esame.",
		"Un altro progetto del preside. Delizioso.",
	},
	["sch.battle.w10.006"] = {
		"Questa scuola non avrà un altro corpo.",
		"Con me questo posto non recluta nessuno.",
	},
	["sch.encounter_end.w10.001"] = {
		"guarda {encounter}, poi la stanza fredda tutt'intorno, come per controllare che nient'altro abbia intenzione di rialzarsi.",
		"resta sopra {encounter} mentre le candele tremolano, e lascia che il silenzio della scuola torni a chiudersi.",
		"si allontana da {encounter} e ascolta; più in alto, le sale continuano il loro lavoro come se niente fosse.",
	},
	["sch.lowhp.w10.001"] = {
		"Non qui. Mi metterebbero su un banco da lavoro prima ancora che mi raffreddi.",
		"Fuori portata. Respira. Non dargli il materiale.",
		"Troppo vicino. Questa scuola non spreca niente, e io non mi offro {g:volontario|volontaria}.",
	},
	["sch.lowhp.w10.002"] = {
		"Non sarò l'esemplare di nessuno!",
		"Sul vostro tavolo, mai.",
	},
	["sch.muse.w10.001"] = {
		"Il nome dei Barov è inciso su metà delle porte, qui. Una famiglia che ha venduto la propria casa, e ci ha messo pure lo stemma sulla ricevuta.",
		"Lord e Lady Barov abitano ancora queste sale, dice la gente, per modo di dire. L'affare comprendeva l'alloggio.",
		"Gli eredi dei Barov, a quanto sento, litigano ancora su chi sia il padrone di Caer Darrow. Nessuno dei due ha fretta di venire a reclamarlo.",
	},
	["sch.muse.w10.002"] = {
		"Nessuno sa dire con certezza dove si trovi Gandling, qui dentro. Si dice che ogni stanza sia sua, e che lui scelga soltanto in quale stare.",
		"Si racconta che Darkmaster Gandling possa spostare chiunque fra queste mura da una stanza all'altra con un pensiero. Preferisco camminare.",
		"Sopra o sotto di me, il preside ascolta. Scuole come questa non hanno bisogno di campanelle: hanno lui.",
	},
	["sch.muse.w10.003"] = {
		"aggira un costrutto lasciato a metà, accasciato contro un muro, con le costole legate col fil di ferro e prese da più di un corpo.",
		"si ferma davanti a un banco da lavoro di arti cuciti e barattoli etichettati, e quell'ordine è peggio di qualunque disordine.",
		"vede uno scheletro appeso a una rastrelliera contrarsi una volta, come se qualcuno l'avesse lasciato a metà con l'idea di tornare.",
	},
	["sch.muse.w10.004"] = {
		"Gli studenti sono venuti qui di proposito. Qualcuno ha fatto domanda, per così dire, per imparare questo.",
		"Ogni apprendista di queste sale aveva un motivo. Ambizione, lutto, un debito. Nessuno abbastanza valido.",
		"Quasi tutti questi studenti avevano una vita normale, un tempo. Poi qualcuno ha offerto loro il potere, e hanno detto di sì.",
	},
	["sch.muse.w10.005"] = {
		"Sotto la scuola c'è un ossario, ordinato per misura e per tipo. Qualcuno ha il compito di smistare le ossa, e si presenta al lavoro.",
		"Scaffali di teschi in file ordinate, con l'etichetta. Qui anche i morti sono archiviati.",
		"Ossa a carrettate nelle cantine. A Scholomance non si spreca niente, ed è proprio questo l'orrore.",
	},
	["sch.muse.w10.006"] = {
		"Il freddo di queste sale non viene da fuori. Trasuda dalla pietra, come se ai muri avessero insegnato a essere crudeli.",
		"Brina sul lato interno di una porta, e nessuna finestra nei paraggi. Qui sotto qualcuno lavora il freddo come un fabbro lavora il fuoco.",
		"Nei corridoi il fiato si condensa. Qualunque cosa tenga così fredde queste sale, non è il lago.",
	},
	["sch.muse.w10.007"] = {
		"Qualcuno qui ha scritto un manuale su come rialzare i morti. Vorrei scambiare due parole con l'editore.",
		"Non toccate gli appunti sui banchi. Sono abbastanza {g:sicuro|sicura} che i compiti mordano.",
		"Una biblioteca, un refettorio, dei dormitori. Togli i cadaveri ed è quasi una scuola rispettabile.",
	},
	["sch.muse.w10.008"] = {
		"Il Cult of the Damned non è nato coi soldati. È nato con gli insegnanti, ed è qui che si formano ancora i prossimi.",
		"Al culto di Kel'Thuzad servivano negromanti a centinaia, e i negromanti devono pur imparare in qualche posto. Qui, a quanto pare.",
	},
	["sch.muse.w10.009"] = {
		"sente una penna grattare dietro una porta chiusa, regolare e senza fretta, e decide di non bussare.",
		"nota una lavagna coperta di disegni accurati di una gabbia toracica e, sotto, in una grafia ordinata, l'elenco di cosa sostituire.",
	},
	["sch.muse.w10.010"] = {
		"I morti chiedono soltanto di essere lasciati in pace, e tutta questa scuola si regge sul negarglielo.",
		"I morti hanno sempre voluto una cosa sola: restare giù. Questo posto esiste per dirgli di no.",
		"C'è una tomba aperta, chissà dove, perché a uno studente serviva fare pratica. Vorrei restituire le ossa.",
	},
	["sch.subzone_enter.w10.001"] = {
		"entra in {subzone} oltre una fila di banchi vuoti, tutti rivolti verso lo stesso leggio bruciacchiato.",
		"entra in {subzone}; l'aria è più fredda di un soffio, e sa di sego e carta vecchia.",
	},
	["sch.subzone_enter.w10.002"] = {
		"{subzone}. Ogni stanza di questa scuola ha uno scopo, e indovinare quello di questa non mi piace.",
		"{subzone}. Qualcuno ha progettato questo ambiente con cura. Qui non è mai una buona notizia.",
	},
	["sch.threat.w10.001"] = {
		"Indietro, o ti raccoglieranno con la scopa per l'ossario.",
		"Vattene. Mi spiacerebbe dare a questa scuola altro materiale.",
	},
	["sch.threat.w10.002"] = {
		"Va' a dire al tuo preside che arrivo. Prendi la strada lunga.",
		"Corri in classe. Arrivo subito.",
	},
	["sch.victory.w10.001"] = {
		"Una cosa in meno che i negromanti possano rattoppare e rimandare in giro.",
		"Giù. E stavolta nessuno lo ricucirà.",
		"Fatto. Che provino a rimetterlo insieme.",
	},
	["sch.victory.w10.002"] = {
		"sparpaglia i pezzi con un calcio, per sicurezza: che nessuno li rimetta insieme.",
		"scavalca i resti e si ferma ad ascoltare le sale, dove in lontananza un libro cade a terra.",
	},
	["sch.victory.w10.003"] = {
		"Fuori dalla scuola.",
		"Un diplomato in meno.",
	},
	["sch.victory.w10.004"] = {
		"Silenzio, di nuovo. Non mi fido: questo posto non resta mai vuoto a lungo.",
		"Niente si muove. Eppure, chissà dove, una porta si apre.",
		"Fatto, e il freddo torna a insinuarsi come se avesse aspettato.",
	},
	["str.attack.w10.001"] = {
		"Per la gente di questa città!",
		"Via dalla mia strada, e via da Stratholme!",
	},
	["str.attack.w10.002"] = {
		"Occhio alla cenere. Ah, troppo tardi.",
		"Eccoti qualcosa di più caldo delle braci.",
	},
	["str.battle.w10.001"] = {
		"Un altro che esce dalla cenere. Avanti!",
		"Fuori dalle macerie e dentro lo scontro. Fatti sotto.",
		"Questa città è fatta di cenere. Va' ad aggiungerti al mucchio.",
	},
	["str.battle.w10.002"] = {
		"Purifica questo, se ci riesci.",
		"La tua Crociata ha sbagliato città, e adesso sbaglia anche scontro.",
	},
	["str.battle.w10.003"] = {
		"Il barone può contarti fra le perdite.",
		"Va' a dire a Rivendare che ha un servo in meno.",
	},
	["str.battle.w10.004"] = {
		"Chiunque tu fossi, mi dispiace. Non abbastanza da fermarmi.",
		"Il vicino di qualcuno, un tempo. Non più.",
	},
	["str.battle.w10.005"] = {
		"pianta i piedi sul selciato bruciato e va incontro alla carica.",
		"scavalca una trave caduta ed entra nello scontro, la cenere che si alza a ogni passo.",
	},
	["str.battle.w10.006"] = {
		"Ogni strada di questa città ha il suo comitato d'accoglienza.",
		"Città vivace, per essere morta.",
	},
	["str.encounter_end.w10.001"] = {
		"Con {encounter} è finita. Stratholme non ne sentirà la mancanza: la città ha smesso da tempo di sentire la mancanza di qualcuno.",
		"{encounter} non c'è più. Un padrone in meno per una città che non ne ha mai chiesti.",
	},
	["str.encounter_end.w10.002"] = {
		"Questo giro l'ha vinto la città. Sono anni che vince giri.",
		"Stesi fra i tizzoni, tutti quanti. Stratholme ci sa fare; noi dovremo farlo meglio.",
	},
	["str.lowhp.w10.001"] = {
		"Non in questa strada. Non sotto gli occhi del barone.",
		"Respira. Fuori dal fumo. Pensa.",
		"Troppo, troppo in fretta. Questa città non mi avrà.",
	},
	["str.lowhp.w10.002"] = {
		"Non diventerò parte del paesaggio!",
		"Non qui. Non sarò un altro corpo per queste strade.",
	},
	["str.muse.w10.001"] = {
		"Ogni casa qui ha ancora la sua porta. Quasi nessuna è stata chiusa: la gente è scappata di corsa, oppure non è scappata affatto.",
		"Porte spalancate lungo tutta la strada. Nessuno ha avuto il tempo di chiudere a chiave, e nessuno è tornato a provarci.",
		"Un vaso di fiori sul davanzale, secchi da anni e mai spostati. Chi abitava in quella casa contava di restare.",
	},
	["str.muse.w10.002"] = {
		"I pochi usciti vivi da Lordaeron sono d'accordo su una cosa: la città fu passata a fil di spada prima che la piaga potesse finirla. Di chi fosse la spada, qualcuno ancora non lo dice.",
		"Chiedi di Stratholme a un profugo del nord e guarda come gli si chiude la faccia. Un'epurazione, dicono, e un principe che la ordinò. Poi cambiano discorso.",
		"Quelli dell'Argent Dawn non parlano dell'epurazione davanti a un boccale, e davanti a un boccale parlano quasi di tutto.",
	},
	["str.muse.w10.003"] = {
		"La Scarlet Crusade ha fortificato il suo angolo di una città morta e l'ha chiamato bastione. Fra tutti i posti dove resistere, ha scelto quello già perduto.",
		"Stendardi scarlatti sulla porta di una città bruciata. Qualcuno in quell'ordine proprio non sa quando una battaglia è finita.",
	},
	["str.muse.w10.004"] = {
		"Il Gran Crociato Dathrohan guida i fanatici di questa città. C'è chi dice che l'uomo sia morto anni fa, e che ciò che ne porta il volto risponda a un nome più antico.",
		"Fra quelli dell'Argent Dawn gira voce che il comandante della Crociata, qui, non sia affatto un uomo. Se è vero, i fanatici si inginocchiano davanti al padrone sbagliato.",
		"I crociati seguono Dathrohan senza fare domande. C'è chi dice che una avrebbero dovuto farla: di chi sia davvero la voce che parla attraverso di lui.",
	},
	["str.muse.w10.005"] = {
		"Il barone Rivendare ha venduto il suo nome al Flagello quando il cuore gli batteva ancora. Ora tiene l'altra metà della città come un signore tiene la sua tenuta.",
		"Il barone governa le rovine da dietro uno ziggurat e un cancello. Nobile fino in fondo, anche da morto: si è assicurato di avere ancora dei servi.",
		"Rivendare era un signore di Lordaeron, un tempo. Ha barattato la sua gente per un posto alla tavola del Flagello, e quella tavola è tutta ossa.",
	},
	["str.muse.w10.006"] = {
		"si ferma mentre una figura pallida attraversa la strada più avanti, un cittadino a giudicare dagli abiti, intento a una commissione finita anni fa.",
		"sente una voce di donna chiamare un nome fra le rovine, e quando si volta non trova nessuno.",
		"guarda una figura trasparente chinarsi su un banco del mercato che non esiste più, raccogliere il nulla e proseguire.",
	},
	["str.muse.w10.007"] = {
		"La cenere qui si infila dappertutto: nei capelli, nel cibo, nelle pieghe di una mappa. Fra una settimana troverò ancora Stratholme nelle tasche.",
		"Ogni respiro in questa città sa di tizzoni. Smetterei di respirare, se fosse un'opzione.",
		"Grano bruciato, legno bruciato, e qualcos'altro di bruciato che non voglio nominare. Dopo un'ora il naso smette di lamentarsi, ed è peggio.",
	},
	["str.muse.w10.008"] = {
		"Attenti al selciato. Metà delle pietre balla, e l'altra metà era qualcuno.",
		"Se qualcuno vede una strada che non fuma, me lo dica. Vorrei starci un minuto.",
		"Mai fermarsi troppo. Questa città ha il vizio di tenersi ciò che smette di muoversi.",
	},
	["str.muse.w10.009"] = {
		"L'Argent Dawn manda gente in queste rovine sapendo bene chi torna. E continua a mandarla. Fede o testardaggine: ho smesso di vederci la differenza.",
		"Non lontano da qui una cappella tiene la linea con la preghiera e l'acciaio. Qui dentro non c'è una linea da tenere, solo una città da attraversare e da cui uscire.",
	},
	["str.muse.w10.010"] = {
		"alza lo sguardo verso gli ziggurat che si innalzano oltre i tetti lontani, pietra estranea accovacciata nel mezzo di una città umana.",
		"segue con gli occhi un rigagnolo scuro che scorre verso la parte della città in mano al Flagello, e decide di non chiedersi cosa l'abbia reso scuro.",
		"si ferma accanto a un carro di cadaveri lasciato a un angolo di strada, mai ritirato, e lo aggira senza una parola.",
	},
	["str.muse.w10.011"] = {
		"Cominciò col grano: casse intere, spedite a nord per sfamare la gente. Il trucco più crudele del Cult of the Damned fu un regalo.",
		"Un granaio di questa città teneva la piaga nei sacchi, e i fornai fecero il resto senza saperlo. Qui il pane non riesco a guardarlo allo stesso modo.",
	},
	["str.muse.w10.012"] = {
		"Fornai, scrivani e bambini, un tempo. La cosa più gentile che resta da dargli è una seconda fine, più quieta.",
		"Qualunque cosa siano adesso, la gente di questa città si è guadagnata un po' di riposo. Ogni corpo che rimetto a terra se ne riprende un poco.",
	},
	["str.subzone_enter.w10.001"] = {
		"entra in {subzone}; qui il fumo si dirada un poco, quanto basta per vedere quanto è andato perduto.",
		"arriva in {subzone} oltre un carro rovesciato, le pietre sotto i piedi nere e spaccate.",
	},
	["str.subzone_enter.w10.002"] = {
		"{subzone}. Un nome sulle vecchie mappe, e un tempo un motivo per venirci. È rimasto solo il nome.",
		"{subzone}. Qui la gente si incontrava, contrattava, spettegolava. Adesso qui aspetta qualcos'altro.",
	},
	["str.threat.w10.001"] = {
		"Vattene. I fuochi di questa città avrebbero bisogno di un altro ceppo.",
		"Torna indietro. Questa città ha sepolto gente migliore di te.",
		"Un passo ancora e finisci fra le macerie.",
	},
	["str.threat.w10.002"] = {
		"Prega pure. Ti aspetto, ma non a lungo.",
		"La tua Crociata ha già perso questa città. Non perderti insieme a lei.",
	},
	["str.victory.w10.001"] = {
		"Una cosa in meno che cammina per queste strade.",
		"Giù. Se lo tengano le rovine.",
		"Fatto. Prima o poi Stratholme si riprende tutto; questo può prenderselo adesso.",
	},
	["str.victory.w10.002"] = {
		"Mettetelo sul conto del barone.",
		"Il prossimo. Questa città non ne resta mai senza.",
	},
	["str.victory.w10.003"] = {
		"si scuote la cenere dalle spalle e guarda lungo la strada in cerca della prossima sagoma che si muove nel fumo.",
		"scosta col piede un'asse fumante e prosegue senza voltarsi.",
	},
	["str.victory.w10.004"] = {
		"Tutta quella fede, e finisce su una strada come tante.",
		"La Scarlet Crusade parlerà di martirio. Io parlerei di fanatismo andato a cercarsi rogne.",
	},
	["str.victory.w10.005"] = {
		"Stai giù, adesso. Qui nessuno ti sveglierà più.",
		"Ecco. Adesso non appartieni più a nessuno.",
	},
	["uld.battle.w10.001"] = {
		"Pietra o carne, vi spezzate allo stesso modo.",
		"Trogg davanti, statue dietro e io nel mezzo. Va bene. Fatevi sotto.",
	},
	["uld.encounter_end.w10.001"] = {
		"{encounter} è immobile. La volta custodisce i suoi segreti, con un guardiano in meno.",
		"Finita. Qualunque cosa {encounter} sorvegliasse, l'ha sorvegliata molto a lungo.",
	},
	["uld.lowhp.w10.001"] = {
		"Non diventerò l'ennesimo reperto per il prossimo scavo.",
		"Tieni duro! Le mie ossa ai trogg da rosicchiare non le lascio.",
	},
	["uld.muse.w10.001"] = {
		"In queste volte, da qualche parte, ci sono dei dischi che raccontano da dove vengono i nani. Certe verità stanno sotto tanta pietra per un motivo.",
		"I nani scavano in mezzo mondo per trovare le proprie origini, ed eccole qui, sotto le Badlands, sorvegliate da cose che non si stancano mai.",
	},
	["uld.muse.w10.002"] = {
		"Trogg nelle sale di sotto, scavatori Dark Iron nei corridoi, statue che si alzano e camminano. Proprio un bel posto per uno scavo.",
		"Quaggiù scavano tutti per qualcosa. I trogg per mangiare, i Dark Iron per il tesoro, e la polvere finisce dappertutto.",
	},
	["uld.subzone_enter.w10.001"] = {
		"entra in {subzone}, dove file di rune dei titani corrono lungo le pareti come un registro che nessuno scrivano vivente sa leggere.",
		"passa in {subzone}; l'aria è secca e immobile, e ogni passo vi rimbomba fin troppo.",
	},
	["uld.victory.w10.001"] = {
		"Torna alla polvere. Qui ti troverai benissimo.",
		"Una cosa in meno a girare per la volta. Gli archeologi mi ringrazieranno dopo.",
	},
]==])
