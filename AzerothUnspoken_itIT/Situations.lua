-- Testi in italiano delle frasi delle situazioni composte (#100). Le regole stanno in Data/RegistrySituations.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["sit.closecall.inner"] = {
		"Ancora in piedi. Non so bene nemmeno io come.",
		"È andata più vicina di quanto mi piaccia. Solo ora le mani si ricordano di tremare.",
		"Un colpo in più e a terra ci sarei {g:rimasto|rimasta} io. Respira. Respira e basta.",
	},
	["sit.closecall.say"] = {
		"Non oggi. Non per mano tua.",
		"Ho sanguinato più di così, e sono {g:tornato|tornata} a casa sulle mie gambe.",
		"Vicino. Vicino non conta niente, amico.",
	},
	["sit.secondwind.say"] = {
		"A terra una volta. Era l'unica che ti spettava.",
		"Dovevi assicurarti che restassi nella polvere.",
	},
	["sit.secondwind.inner"] = {
		"Poco fa ero un corpo a terra. Adesso questo. Il mondo è strano, e io ci sono ancora dentro.",
		"Appena {g:tornato|tornata} dal buio, e già vinco di nuovo. Me lo prendo.",
	},
	["sit.hardlevel.inner"] = {
		"Ecco quanto è costato. Va bene così. Sono più forte, e le cicatrici ne sono la ricevuta.",
		"Lì dietro ho quasi perso tutto, e ne sono {g:uscito|uscita} più di quello che ero.",
	},
	["sit.hardlevel.say"] = {
		"Quello che non mi uccide farebbe meglio a cominciare a correre.",
		"Questa l'ho imparata a mie spese. Non mi servirà impararla due volte.",
	},
	["sit.woundedarrival.inner"] = {
		"Terra nuova, e ci arrivo zoppicando. Non è l'ingresso che avrei scelto.",
		"{zone}. La ammirerei di più se ogni passo non facesse male.",
	},
	["sit.woundedarrival.e"] = {
		"entra in {zone} lentamente, una mano premuta sul fianco.",
		"arriva risparmiando una gamba, ancora col fiato corto per l'ultimo scontro.",
	},
	["mem.ret.sit.rain.inner"] = {
		"Di nuovo qui, {g:fradicio|fradicia} fino alle ossa, con il giorno che se ne va. Per questo posto, chissà perché, è giusto così.",
		"Anche l'ultima volta pioveva, o così lo ricordo. La luce se ne va; la strada la conosco lo stesso.",
	},
	["mem.ret.sit.rain.e"] = {
		"torna sotto la pioggia mentre la luce cala, e ritrova i vecchi sentieri a memoria.",
		"abbassa il cappuccio e percorre la strada nota nel crepuscolo bagnato.",
	},
}, "base_situations")
