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
]==])
