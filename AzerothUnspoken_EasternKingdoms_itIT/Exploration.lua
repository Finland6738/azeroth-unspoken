-- Italian texts of the regional pack Eastern Kingdoms (#101, ADR 0025). The rules are in AzerothUnspoken_EasternKingdoms/Exploration.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("eastern", "itIT", "eastern_exploration", function()
	return {
		["zone.dunmorogh.01"] = {
			"Dun Morogh. Neve, pietra e il profumo delle forge. Casa.",
			"Dun Morogh! Birra scura, pietra salda e neve fino alle ginocchia. Che altro serve?",
		},
		["zone.duskwood.01"] = {
			"Qui il sole non tramonta: si arrende.",
			{ "Ululati, laggiù tra gli alberi. E non sono lupi qualunque, ci scommetto.", depth = "natural" },
			{ "I rami si chiudono sopra la strada come dita. Anche a mezzogiorno, qui, si cammina al crepuscolo.", depth = "literary" },
			{ "Croci storte nei campi e lanterne che nessuno spegne: Duskwood veglia sui suoi morti, e non dorme mai.", depth = "elevated" },
		},
		["zone.elwynn.01"] = {
			"Elwynn. Odora ancora di pane e di casa, nonostante tutto.",
			{ "Il mulino gira, i campi sono gialli e una guardia sbadiglia al suo posto. Che pace.", depth = "natural" },
			{ "Fumo di legna dai camini, il tonfo lontano di un'ascia. Elwynn lavora, e non si lamenta.", depth = "literary" },
			{ "Elwynn, verde guanciale ai piedi della città bianca: qui il mondo ricorda ancora come si fa a essere gentili.", depth = "elevated" },
		},
		["zone.forest.hinterlands"] = {
			"Ascoltate: grifoni, lassù sopra le creste. Questa terra ha ancora le ali.",
			"Pietre scolpite mezze inghiottite dal muschio, a ogni curva. Chi le ha messe qui sapeva il fatto suo.",
		},
		["zone.stv.01"] = {
			"Spine, tigri, pirati e troll. Che posto incantevole.",
			"Liane alle caviglie e pantere sui rami. Lama in pugno, e occhi in alto.",
		},
		["zone.tirisfal.01"] = {
			"Tirisfal. Qui i morti si sono svegliati, e hanno deciso di restare.",
			"Zucche marce negli orti, mulini fermi, e corvi che non si scompongono quando passi.",
		},
	}
end)
