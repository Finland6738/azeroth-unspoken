-- Italian texts of the regional pack eastern_alterac (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/Alterac.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("alteracmountains", "itIT", "eastern_alterac", [==[
	["alt.a.battle.01"] = {
		"Mani gelate, caratteraccio. Fatti sotto.",
		"Non è posto da lunghe battaglie. Facciamola breve.",
		"Alterac ha seppellito gente migliore di te.",
	},
	["alt.a.battle.02"] = {
		"pianta i piedi nel terreno gelato mentre l'ogre avanza, enorme e urlante.",
		"si sposta di lato mentre l'ogre Crushridge avanza pesante, cercando un varco oltre quella mole.",
	},
	["alt.a.journey.01"] = {
		"Le colline restano alle spalle e la strada diventa roccia nuda. Alterac, dunque.",
		"Dal paese verde su verso il freddo. A ogni passo l'aria si fa più sottile e più cattiva.",
	},
	["alt.a.lowhp.01"] = {
		"Non qui. Nessuno mi troverebbe prima del disgelo.",
		"In piedi. Se non mi finisce il nemico, ci penserà il freddo.",
	},
	["alt.a.muse.01"] = {
		"Nella Seconda Guerra Alterac tradì l'Alleanza. Il regno non è sopravvissuto alla vergogna, e le montagne si sono tenute le rovine.",
		"Un re che patteggiò con l'Orda, e un regno che ne pagò il prezzo. Alterac è ciò che resta dopo un tradimento.",
		"Il regno dei Perenolde. Perfino le montagne sembrano tenersi alla larga da quel che ne rimane.",
	},
	["alt.a.muse.02"] = {
		"Il Syndicate rivuole Alterac. A guardarla, non sono {g:sicuro|sicura} che la voglia qualcun altro.",
		"Nobili eredi di Alterac, si fanno chiamare. Eredi di una rovina gelida e di un brutto nome.",
	},
	["alt.a.muse.03"] = {
		"Fa freddo quassù, così freddo che respirare sembra una fatica. Alle montagne non importa chi le rivendica.",
		"Roccia grigia, pendii bianchi e un'aria che trova ogni spiraglio nei miei vestiti.",
		"Quassù perfino i pini sembrano ingobbirsi per il freddo.",
	},
	["alt.a.muse.04"] = {
		"batte i piedi per scacciare il freddo dagli stivali e alza lo sguardo alle vette, bianche e indifferenti.",
		"si stringe il bavero mentre l'aria di montagna morde, e continua a salire.",
	},
	["alt.a.npc_meet.01"] = {
		"Qualcuno che ha del lavoro per me, così in alto nel freddo. Dev'essere un lavoro che nessun altro voleva.",
		"Un incarico offerto ad Alterac. So già che non sarà in un posto caldo.",
	},
	["alt.a.quest_complete.01"] = {
		"Fatto. Qualunque cosa marcisca su queste montagne, adesso marcisce un po' meno.",
		"Finito. Quassù anche una piccola vittoria va strappata al gelo.",
	},
	["alt.a.quest_complete.02"] = {
		"prende la ricompensa con le dita intorpidite e si soffia sulle mani prima di metterla via.",
		"intasca le monete e alza gli occhi alle vette grigie, come se lassù ci fosse altro lavoro ad aspettare.",
	},
	["alt.a.subzone_enter.01"] = {
		"si fa strada fra le rovine della vecchia capitale, dove torri spezzate si chinano su strade soffocate dalle macerie.",
		"passa sotto la porta crollata della città di Alterac, le pietre scolpite scheggiate e annerite.",
	},
	["alt.a.victory.01"] = {
		"Fatto. Il freddo torna a insinuarsi appena lo scontro finisce.",
		"Finita. Il fiato resta sospeso nell'aria, e nient'altro si muove.",
	},
	["alt.a.victory.02"] = {
		"I tuoi padroni fra le rovine possono contare un erede in meno.",
		"Ecco cosa resta della nobile casata di Alterac.",
	},
	["alt.h.battle.01"] = {
		"Quassù ogni scontro è anche uno scontro col freddo. Sbrighiamoci.",
		"Scendi da quel sasso e facciamola finita.",
		"Alterac è lontana da chiunque sentirebbe la tua mancanza.",
	},
	["alt.h.battle.02"] = {
		"Syndicate! Il tuo regno l'hai già perso. Ora perderai anche il resto.",
		"Pelliccia al collo e mani lunghe. Molto Alterac.",
	},
	["alt.h.journey.01"] = {
		"si lascia alle spalle le colline verdi e comincia a salire fra le montagne, dove la strada si stringe e l'aria si fa tagliente.",
		"risale l'ultimo tratto di strada verso l'alta montagna, e il freddo di Alterac l'accoglie come una porta chiusa.",
	},
	["alt.h.lowhp.01"] = {
		"Non su questa montagna. Fa troppo freddo per morire come si deve.",
		"Ah. Ci vuole ben altro, e il freddo lo sa.",
	},
	["alt.h.muse.01"] = {
		"Nella Seconda Guerra il re di Alterac tradì i propri alleati per l'Orda. Un traditore è un pessimo amico per chiunque.",
		"I nobili di Alterac hanno tradito tutti, una volta. Adesso derubano i viandanti su questi pendii e la chiamano una causa.",
		"Un regno che ha cambiato bandiera e ha perso tutto. Le montagne hanno l'aria accogliente quanto quella storia.",
	},
	["alt.h.muse.02"] = {
		"Laggiù, presso il Lordamere, Dalaran se ne sta sotto la sua cupola viola. I maghi lì dentro si nascondono, o ricostruiscono. Con i maghi è difficile dirlo.",
		"Quella cupola viola sulla riva del lago. Qualunque cosa facciano là sotto i maghi degli umani, non vogliono visite.",
	},
	["alt.h.muse.03"] = {
		"Ogni grotta quassù ha il suo yeti, ogni rovina il suo ogre, ogni villaggio il suo ladro. Alterac affitta tutto.",
		"Freddo, ripido e pieno di ogre. Chi ha tracciato i confini di Alterac non ha fatto un favore a nessuno.",
		"Belle montagne, viste da lontano. Da vicino mordono.",
	},
	["alt.h.muse.04"] = {
		"soffia fuori una nuvola bianca e strizza gli occhi verso le vette frastagliate.",
		"si fa strada con cautela sulla roccia grigia e scivolosa, gli occhi sulla cresta più in alto.",
	},
	["alt.h.npc_meet.01"] = {
		"Fin quassù per vendere? O è coraggio, o sono prezzi molto alti.",
		"Qualcosa di caldo in quella bisaccia? Pago prezzi di montagna.",
	},
	["alt.h.quest_complete.01"] = {
		"Fatto. Festeggerei, ma ho le mani troppo gelate per reggere un boccale.",
		"Finito. Alterac può tenersi il resto dei suoi guai.",
	},
	["alt.h.quest_complete.02"] = {
		"Fatto, e con la paga in tasca. Su queste montagne prendo qualunque calore trovi, anche quello delle monete.",
		"Un altro nodo di Alterac sciolto. Alle montagne ne restano parecchi.",
	},
	["alt.h.subzone_enter.01"] = {
		"Un'altra piega di queste montagne, un altro tratto di roccia che mi vuole via.",
		"Rocce diverse, stesso freddo. Qui vicino, qualcosa osserva dalle rocce.",
	},
	["alt.h.victory.01"] = {
		"si raddrizza nell'aria sottile, il fiato che fuma, e ascolta l'eco spegnersi fra le vette.",
		"si scrolla la brina dalle maniche e si guarda intorno in cerca di qualcos'altro che abbia voglia di battersi.",
	},
	["alt.h.victory.02"] = {
		"Un Crushridge in meno. La montagna sembra già più leggera.",
		"Tanto rumore, tanta stazza, e adesso a terra. Gli ogre sono fatti così.",
	},
]==])
