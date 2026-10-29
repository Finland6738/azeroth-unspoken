-- Testi di esempio in italiano per la Living Memory (step S6). Le regole stanno in Data/RegistryMemory.lua.
local ADDON, NS = ...

NS:AddTexts("itIT", {
	["mem.first.forest.01"] = {
		"Mai prima d'ora i miei passi hanno toccato questo suolo. Eppure gli alberi sembrano attendermi da sempre.",
		"Una foresta che non conosco. Che il bosco mi accolga, o almeno mi lasci passare.",
	},
	["mem.first.forest.02"] = {
		"Prima volta in questi boschi. Ricorderò questa strada.",
		"Non sono mai {g:stato|stata} qui. Il sentiero comincia adesso.",
	},
	["mem.first.gen.01"] = {
		"{zone}. Un nome nuovo nel libro dei miei viaggi.",
		"Non conosco {zone}. È già un buon motivo per esplorarla.",
	},
	["mem.first.gen.02"] = {
		"Mai {g:stato|stata} qui. Vediamo cosa ha da dirmi {zone}.",
	},
	["mem.first.capital"] = {
		"Le mura di {zone}. Qui il mondo intero sembra darsi appuntamento.",
		"{zone} si apre davanti a me per la prima volta. Quante storie dietro quelle porte.",
	},

	["mem.ret.gen"] = {
		"{zone} di nuovo. Alcuni luoghi tornano a chiamarti, che tu lo voglia o no.",
		"Ci sono già {g:stato|stata}, in {zone}. Il ritorno ha un altro sapore.",
	},
	["mem.ret.forest.01"] = {
		"Di nuovo tra questi alberi. La prima volta li guardavo da {g:straniero|straniera}; ora conoscono il mio passo.",
		"Il bosco non è cambiato. Sono io a tornare diverso.",
	},
	["mem.ret.forest.02"] = {
		"Rieccomi. Questa foresta mi conosce già.",
		"Ancora tra queste fronde. Quasi quasi mi sento a casa.",
	},
	["mem.ret.capital"] = {
		"Le strade di {zone}, di nuovo. Quasi come tornare a casa.",
	},
	["mem.ret.long"] = {
		"Passano i giorni, ma i luoghi restano dove li ho lasciati. {zone} mi aspettava.",
		"Da quanto mancavo da {zone}? Abbastanza perché valga la pena di rivederla.",
	},
	["mem.ret.often"] = {
		"Quante volte, ormai, in {zone}? Comincio a conoscerne ogni sasso.",
	},
	["mem.ret.bad.death"] = {
		"L'ultima volta che ho messo piede in {zone} sono {g:caduto|caduta}. Non accadrà di nuovo.",
		"{zone} mi ha già chiesto un prezzo, una volta. Ricordo bene quanto.",
	},
	["mem.ret.bad.flight"] = {
		"Da {zone} me ne andai di corsa, l'ultima volta. Oggi non ho fretta di fuggire.",
		"Ricordo la fretta con cui la lasciai. Ora torno con più calma.",
	},
	["mem.ret.firstdeath"] = {
		"Da quando la morte mi ha toccato la prima volta, ogni ritorno ha un altro sapore.",
	},
})
