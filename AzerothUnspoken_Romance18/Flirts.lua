-- Azeroth Unspoken - Romance 18+ (ADR 0061, step R4): the flirt answers of tier 3 (spec point 4.1). Offered only
-- with the 18+ consent on, the tone Explicit and an intimate moment (a declared or vowed NPC, at night at an inn or
-- rested): every lock of Registry.lua holds for them too. A label is what the player does, at most 70 bytes, no
-- placeholders, in every language of the addon.
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("romance18_base", function()
	AU:RegisterDialogues({
		pack = "romance18_base",
		romance18 = true,
		flirts = {
			{ id = "r18_whisper", kind = "compliment", stage = { "declared", "vowed" }, tier = 3,
				label = { en = "Whisper in their ear how much you want them.", it = "Sussurra all'orecchio il tuo desiderio." } },
			{ id = "r18_stay", kind = "invite", stage = { "declared", "vowed" }, tier = 3, when = { romanceNight = true },
				label = { en = "Ask them to stay the night with you.", it = "Chiedi di restare con te stanotte." } },
			{ id = "r18_look", kind = "glance", stage = { "declared", "vowed" }, tier = 3,
				label = { en = "Give a look that says the rest of the evening is theirs.", it = "Con uno sguardo, offri il resto della serata." } },
		},
	})
end)
