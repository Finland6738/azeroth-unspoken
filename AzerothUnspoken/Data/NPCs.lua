-- Registro curato degli NPC (S6c, condiviso con S8 "NPC Alive") e tendenze deboli dell'interlocutore.
-- Solo dati: li legge Systems/Interlocutor.lua (NS:RegisterNPCs, NS:RegisterTendencies).
--
-- NPC per npcID (il sesto campo del GUID "Creature-0-..."): ruolo, temperamento, morale, obiettivi, modo di parlare.
-- Fonte 3 della lista di priorità: valgono di meno di ciò che sceglie l'utente e del profilo Total RP 3, di più del
-- ruolo ricavato da un'interazione. Gli npcID vengono dalla numerazione di Classic Era e NON sono ancora verificati nel
-- client Forever: se un numero non corrisponde, la voce semplicemente non scatta (nessun danno). La prova si fa in
-- gioco con `/au who` davanti all'NPC (docs/G1_checklist.md). La personalità qui è un'interpretazione atmosferica
-- dell'addon, non lore: per i personaggi canonici si dice solo il ruolo (GDD §5.4).
local ADDON, NS = ...

NS:RegisterNPCs({
	-- locandieri e osti delle prime zone
	[295] = { name = "Innkeeper Farley", role = "innkeeper", temperament = "cheerful", speech = "jovial", goals = "profit" },
	[6740] = { name = "Innkeeper Allison", role = "innkeeper", speech = "warm", goals = "profit" },
	[5111] = { name = "Innkeeper Firebrew", role = "innkeeper", temperament = "cheerful", speech = "jovial" },
	[6929] = { name = "Innkeeper Gryshka", role = "innkeeper", temperament = "gruff", speech = "terse", goals = "profit" },
	[6746] = { name = "Innkeeper Pala", role = "innkeeper", temperament = "stoic", speech = "warm" },
	[5688] = { name = "Innkeeper Renee", role = "innkeeper", temperament = "melancholic", speech = "plain" },
	-- guardie e ufficiali di villaggio
	[240] = { name = "Marshal Dughan", role = "guard", temperament = "resolute", speech = "formal", goals = "duty" },
	[823] = { name = "Deputy Willem", role = "guard", speech = "formal", goals = "duty" },
	-- guardie di città (S8): solo il ruolo, perché il registro le riconosce con certezza per npcID; nessun carattere
	-- inventato. Numeri della numerazione di Classic Era, da verificare in gioco con `/au who` (issue #36)
	[68] = { name = "Stormwind City Guard", role = "guard" },
	[5595] = { name = "Ironforge Guard", role = "guard" },
	[3296] = { name = "Orgrimmar Grunt", role = "guard" },
	-- capi delle capitali: solo il ruolo
	[1748] = { name = "Highlord Bolvar Fordragon", role = "leader" },
	[2784] = { name = "King Magni Bronzebeard", role = "leader" },
	[7999] = { name = "Tyrande Whisperwind", role = "leader" },
	[4949] = { name = "Thrall", role = "leader" },
	[3057] = { name = "Cairne Bloodhoof", role = "leader" },
	[10181] = { name = "Lady Sylvanas Windrunner", role = "leader" },
})

-- Tendenze DEBOLI (fonte 5): solo un piccolo aumento di peso per le frasi con il tag corrispondente
-- (Interlocutor.TENDENCY_MATCH), mai un valore di ctx.other, mai una condizione, mai una morale.
-- La razza e la fazione restano vuote di proposito: nell'ambientazione ogni popolo ha individui di ogni carattere,
-- e il GDD (§5.4) esclude decisioni morali per razza, fazione o classe. La classe suggerisce appena che cosa una
-- persona insegue, per mestiere; un pacchetto può aggiungerne con NS:RegisterTendencies.
NS:RegisterTendencies({
	class = {
		PRIEST = { goals = "faith" },
		PALADIN = { goals = "duty" },
		MAGE = { goals = "knowledge" },
		WARLOCK = { goals = "power" },
		DRUID = { goals = "peace" },
		SHAMAN = { goals = "peace" },
		WARRIOR = { goals = "glory" },
		HUNTER = { goals = "freedom" },
		ROGUE = { goals = "profit" },
	},
	race = {},
	faction = {},
})
