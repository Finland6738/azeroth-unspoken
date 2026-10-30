-- Italian texts of the regional pack Kalimdor (#101, ADR 0025). The rules are in AzerothUnspoken_Kalimdor/Exploration.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("kalimdor", "itIT", "kalimdor_exploration", function()
	return {
		["zone.barrens.01"] = {
			"{zone}. Qualcuno ha visto passare il tempo? Qui sembra fermo.",
			"{zone}. Erba secca, kodo e polvere. Mi è venuta sete solo a dirlo.",
		},
		["zone.darkshore.01"] = {
			{ "Darkshore. Alberi scuri fino alla battigia, e conchiglie rotte che scricchiolano sotto gli stivali.", depth = "natural" },
			"Il mare qui ha il colore del ferro vecchio, e gli alberi si piegano verso l'acqua come per ascoltarla.",
			{ "Lungo questa riva le rovine bevono la salsedine, e ogni onda porta via un poco della loro memoria.", depth = "elevated" },
		},
		["zone.desert.02"] = {
			"Terra rossa e dura. Come noi. Per questo l'abbiamo scelta.",
			"Polvere rossa sugli stivali. Che resti: è l'unica corona che ci serve.",
		},
		["zone.durotar.01"] = {
			"Durotar. Non è generosa, ma è nostra. E non ce la toglierà nessuno.",
			"Durotar. Roccia rossa, scorpioni e poco altro. E l'abbiamo fatta casa con le nostre mani.",
		},
		["zone.felwood.01"] = {
			"Un bosco avvelenato. Gli alberi piangono, se ascolti bene.",
			{ "Quell'acqua non la toccherei nemmeno con la punta dello stivale. È verde. Verde sbagliato.", depth = "natural" },
			{ "La corteccia si sfalda come pelle malata, e la linfa che cola ha un odore dolciastro che resta in gola.", depth = "literary" },
			{ "Un tempo i druidi cantavano a questa foresta; ora risponde con un lamento, e il suo fiato è veleno venuto da oltre il mondo.", depth = "elevated" },
		},
		["zone.forest.ashenvale"] = {
			{ "Ashenvale. Anche a mezzogiorno qui sotto c'è una luce da crepuscolo. Strano posto.", depth = "natural" },
			"Ceppi freschi ai margini del bosco, segatura nell'erba. Qualcuno qui abbatte, e qualcun altro conta ogni albero caduto.",
			{ "Fra questi tronchi immensi la notte non se ne va mai del tutto: si ritira appena, e aspetta dietro le foglie.", depth = "elevated" },
		},
		["zone.forest.feralas"] = {
			"Alberi così alti che per vederne la cima mi servirebbe un secondo collo.",
			"Muschio fino alle caviglie, ogre da qualche parte e qualcosa che ruggisce laggiù. Feralas, che accoglienza.",
		},
		["zone.moonglade.01"] = {
			"{zone}. Qui anche il silenzio ha un suono.",
			{ "Niente lame sguainate, niente urla. Anch'io parlo più piano, senza accorgermene.", depth = "natural" },
			{ "Il lago è così fermo che sembra un secondo cielo, rovesciato ai miei piedi.", depth = "literary" },
			{ "In questa radura custodita ogni foglia pare in attesa di un sogno, e anche il passo dello straniero impara la reverenza.", depth = "elevated" },
		},
		["zone.mulgore.01"] = {
			"Mulgore. Qui il vento ha il respiro lento della Madre Terra.",
			"Totem dipinti ai bordi dei sentieri, piume legate al legno. Qui anche la strada è una preghiera.",
		},
		["zone.silithus.01"] = {
			"Sotto i nostri piedi qualcosa ronza. Non è la sabbia.",
			"Guardate dove mettete i piedi. La sabbia qui ha delle tane, e le tane hanno mandibole.",
		},
		["zone.teldrassil.01"] = {
			"Le fronde dell'Albero del Mondo cantano. Solo i pazienti le sentono.",
			{ "Sembra un bosco appoggiato sopra un altro bosco. Meglio non pensare a quanto è alto.", depth = "natural" },
			{ "Lucine azzurre tra le felci, e un silenzio così pulito che sento battere il mio cuore.", depth = "literary" },
			{ "Su queste radici sospese tra cielo e mare la notte non è mai del tutto buia: veglia, gentile, su chi cammina.", depth = "elevated" },
		},
	}
end)
