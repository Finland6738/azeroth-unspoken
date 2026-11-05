-- Italian texts of the regional pack eastern_wetlands (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Wetlands.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("wetlands", "itIT", "eastern_wetlands", [==[
	["wet.attack.01"] = {
		"Non muoverti, si scivola già abbastanza!",
		"Da Menethil Harbor, con tanti saluti!",
		"Prendi questa, e portatela nella palude!",
	},
	["wet.battle.01"] = {
		"Fatti sotto, e occhio al fango. Non sta dalla tua parte nemmeno lui.",
		"Va bene. Comunque finisca, il fango vince di sicuro.",
		"Hai scelto un posto ben fradicio per attaccar briga. Farò in fretta.",
	},
	["wet.battle.croc"] = {
		"Tutto denti e niente maniere. Vieni qua.",
		"Non sono la tua cena, crocolisco. Sono la tua indigestione.",
	},
	["wet.battle.dragonmaw"] = {
		"Dragonmaw! I tuoi draghi se ne sono andati. Dovevi andartene con loro.",
		"Niente più catene, niente più prigionieri. Il tempo del tuo clan è finito.",
		"Tornatene a Grim Batol, Dragonmaw, e portati via i tuoi tamburi di guerra!",
	},
	["wet.battle.narr"] = {
		"si puntella sul terreno molle per reggere l'attacco, col fango che risucchia gli stivali.",
		"cerca un appoggio più saldo tra le canne e si volta ad affrontare ciò che arriva.",
	},
	["wet.battle.raptor"] = {
		"Raptor. Veloce, furbo, e ha già deciso dove mordere. Non dargli la gamba.",
		"Occhio agli artigli, occhio alla coda, e per carità, occhio al secondo.",
	},
	["wet.journey.arrival"] = {
		"scende dal grifone a Menethil Harbor e respira sale, catrame e l'odore verde della palude oltre le mura.",
		"atterra vicino al porto, dove i gabbiani girano sopra gli alberi delle navi e l'umido si infila dappertutto in un colpo.",
		"smonta dal grifone sulla pietra bagnata, e il vento del mare strattona il mantello.",
	},
	["wet.landmark.dunmodr"] = {
		"si ferma sotto le mura spezzate di Dun Modr, dove ora si aggirano i nani Dark Iron, tra pietre che altri nani tagliarono con cura.",
		"avanza tra le macerie di Dun Modr, una rocca nanica caduta in rovina, col grande ponte che si alza oltre, verso nord.",
	},
	["wet.landmark.menethil"] = {
		"Menethil Harbor. Navi, gabbiani, marinai che litigano sui moli. Dopo la palude, sembra musica.",
		"Ecco il porto: mura di pietra, aria salmastra e una rocca che sorveglia questa baia da moltissimo tempo.",
	},
	["wet.lowhp.01"] = {
		"Non in questo fango. Nessuno mi ripescherà da una palude.",
		"L'acqua è fredda e il terreno non regge. Nemmeno io reggerò ancora per molto. Muoviti.",
		"Sangue nell'acqua. Il mio. Ogni cosa in questa palude ne sentirà l'odore.",
	},
	["wet.lowhp.02"] = {
		"Morsi, acqua e botte, e sto ancora in piedi!",
		"Tutto qui? Le zanzare pungono più forte.",
	},
	["wet.muse.01"] = {
		"Acqua dappertutto, ma nessuna che abbia fretta di andare da qualche parte. Questa terra non scola: se ne sta lì a pensare.",
		"Canne, pozze nere, fango che tira gli stivali. Ogni passo qui è una trattativa.",
		"Piatto, fradicio, grigioverde fin dove arriva lo sguardo. Questo posto non ha ancora deciso se vuole diventare un lago.",
	},
	["wet.muse.02"] = {
		"Le calze asciutte, qui, sono una leggenda. Ho smesso di crederci.",
		"Il fango di qui ha le sue idee. Soprattutto quella di tenersi i miei stivali.",
	},
	["wet.muse.03"] = {
		"Lontano, a est, Grim Batol si staglia scura contro il cielo. Anche da qui la montagna ha l'aria di ricordare qualcosa di brutto.",
		"Grim Batol. I nani che l'hanno costruita se ne sono andati da tempo, e chi è venuto dopo è una compagnia peggiore.",
		"I draghi incatenati in quella montagna sono liberi da anni, racconta chi sa. La montagna non sembra crederci.",
	},
	["wet.muse.04"] = {
		"Menethil Harbor è l'unico posto asciutto per miglia e miglia, e ne hanno costruito mezzo sull'acqua lo stesso. Marinai.",
		"Alle mie spalle ci sono le lanterne di Menethil Harbor e la sua taverna. Fa piacere sapere che in capo a tutto questo fango c'è un focolare.",
	},
	["wet.muse.05"] = {
		"Ci sono ancora orchi Dragonmaw acquattati su queste colline. Nessuno gli ha detto che la guerra è finita?",
		"I Dragonmaw hanno perso i loro draghi e si sono tenuti il caratteraccio. Pessimo affare.",
	},
	["wet.muse.06"] = {
		"si ferma sul bordo di una pozza dove un trampoliere se ne sta su una zampa sola, indifferente, come se tutta la palude fosse sua.",
		"si apre un passaggio cauto tra le canne, saggiando ogni ciuffo d'erba prima di affidargli il proprio peso.",
	},
	["wet.muse.07"] = {
		"Quel tronco ha i denti. Quel tronco mi sta guardando. Che bel posto.",
		"Crocolischi in acqua, raptor sulle colline. Questa palude ha qualcosa di affamato per ogni tipo di terreno.",
		"Qualcosa è scivolato giù dalla sponda proprio mentre mi avvicinavo. Non ho visto cosa. Preferisco non saperlo.",
	},
	["wet.muse.08"] = {
		"A nord, oltre le vecchie rovine dei nani, il Thandol Span scavalca la gola verso gli Arathi Highlands. Un ponte così grande l'ha costruito gente convinta di andare e venire per mille anni.",
		"La strada sale a nord attraverso la palude, verso il grande ponte. Un tempo qualcuno la teneva lastricata. Ora la tiene il fango.",
	},
	["wet.muse.09"] = {
		"Dal porto partono navi per Theramore e per Auberdine. Mezza Alleanza passa per questo fango diretta in posti migliori.",
		"Ogni marinaio di Menethil Harbor sa di catrame e di sale, e si lamenta della palude. Capisco perché.",
	},
	["wet.muse.10"] = {
		"Di notte la palude è rumorosa: rane, insetti, il tonfo di qualcosa in acqua. Il silenzio farebbe più paura, credo.",
		"Al buio le pozze trattengono le stelle e le canne ci sussurrano sopra. Bello, se non penso ai crocolischi.",
	},
	["wet.muse.11"] = {
		"Acqua fino alle ginocchia, fino alla cintura quando il guado va storto. Il freddo passa il cuoio e ci resta.",
		"Ogni pozza sembra bassa, finché non lo è più. Le mie ginocchia continuano a imparare la differenza.",
	},
	["wet.muse.12"] = {
		"Gnoll negli acquitrini, murloc sulla costa. Pare che questa palude raccolga ogni creatura che nessun altro voleva.",
		"Murloc che gorgogliano lungo la riva. Non esiste al mondo un suono che arrivi così lontano.",
	},
	["wet.muse.13"] = {
		"Un tempo i nani hanno costruito in tutta questa palude. Qua e là le loro pietre spuntano ancora dal fango, con gli intagli consumati dall'acqua e dal muschio.",
		"Vecchie opere di pietra dei nani, mezze inghiottite dalla palude. Chi viveva qui ha rinunciato a restare all'asciutto molto prima di me.",
	},
	["wet.npc_meet.flightmaster"] = {
		"Un grifone, in alto e all'asciutto, il più lontano possibile da questo fango.",
		"Per Thelsamar, grazie. Un posto qualsiasi dove le colline restino ferme sotto i piedi.",
	},
	["wet.npc_meet.innkeeper"] = {
		"Una stanza col pavimento asciutto, se ne avete una. Per l'asciutto pago volentieri di più.",
		"Qualcosa di caldo, per favore, e un posto vicino al fuoco dove i miei stivali possano fumare in pace.",
		"Qual è la cosa più forte che versate a chi è appena uscito dalla palude?",
	},
	["wet.quest_complete.01"] = {
		"Fatto. A Menethil Harbor qualcuno mi deve un asciugamano asciutto.",
		"Sistemato. Adesso un fuoco e una lunga chiacchierata con i miei stivali.",
		"Finito, e con appena un po' d'umido addosso. Da queste parti è un primato.",
	},
	["wet.quest_complete.02"] = {
		"Il porto tiene insieme tutta questa costa, e il porto ha bisogno di aiuto per reggere. Fa piacere darne un po'.",
		"Menethil Harbor tiene aperta la via del mare per l'Alleanza. Ogni lavoro fatto qui la rende un po' più sicura.",
	},
	["wet.quest_complete.03"] = {
		"strizza l'orlo del mantello e lascia che la soddisfazione di un lavoro finito pesi più dell'umido.",
		"si scuote l'acqua dalle maniche e guarda la palude, col lavoro finalmente alle spalle.",
	},
	["wet.quest_complete.04"] = {
		"Un lavoretto in una palude enorme. Eppure la gente del porto dormirà un po' più tranquilla.",
		"Non è un lavoro glorioso. È un lavoro bagnato. Ma andava fatto, e adesso è fatto.",
	},
	["wet.quest_progress.ready"] = {
		"Ecco tutto. Ora da chi me l'ha chiesto, prima che la palude si inghiotta le prove.",
		"Fatto. Adesso tocca rifarsi tutta la strada a mollo.",
		"Finito. Spero che chi aspetta notizie abbia un fuoco acceso.",
	},
	["wet.subzone_enter.bluegill"] = {
		"si addentra nella palude, dove le canne crescono fitte e l'acqua porta da vicino il gorgoglio dei murloc.",
		"mette piede sulle distese fradice, dove reti da pesca pendono dai pali e la riva è tutta segnata da impronte palmate.",
	},
	["wet.subzone_enter.whelgar"] = {
		"Uno scavo, e degli scavatori nessuna traccia. Solo segni di artigli. Non mi piace come tornano i conti.",
		"Picconi abbandonati, tende strappate, impronte di raptor ovunque. Qualcuno se n'è andato di qui in gran fretta.",
	},
	["wet.victory.01"] = {
		"Giù nel fango. Ti ci troverai benissimo.",
		"Fatto. E adesso, in quale di queste pozzanghere ho lasciato la mia dignità?",
	},
	["wet.victory.02"] = {
		"Finita. Acqua negli stivali, braccia indolenzite, e la palude che già richiude le orme.",
		"Anche questa è fatta. Le rane hanno ripreso a cantare, come se niente fosse.",
		"Respira. Asciugati la faccia. Trova un sasso asciutto, se questo posto ne ha uno.",
	},
	["wet.victory.dragonmaw"] = {
		"Un predone in meno sulla strada di Menethil Harbor.",
		"I Dragonmaw continuano a scendere dalle colline. E continuano a restare a terra.",
	},
	["wet.victory.narr"] = {
		"abbassa l'arma e ascolta i rumori della palude che riprendono piano piano, un gracidio dopo l'altro.",
		"si rimette su un terreno più solido e si gratta via dagli stivali il grosso del fango.",
		"resta in piedi tra le canne calpestate, col fiato grosso, mentre l'acqua scura si posa.",
	},
	["wet.weather_change.rain"] = {
		"alza il viso verso la pioggia, che non cambia granché, con tutta l'acqua che ha già addosso.",
		"guarda la pioggia punteggiare le pozze nere e piegare le canne: altra acqua, su una terra fatta quasi solo d'acqua.",
	},
]==])
