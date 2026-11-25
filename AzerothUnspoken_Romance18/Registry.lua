-- Azeroth Unspoken - Romance 18+ (ADR 0061, step R4): the rules of the sample pack `romance18_base`, tier 3 (Explicit).
-- The texts are in Texts_enUS.lua and Texts_itIT.lua, the flirt answers in Flirts.lua. How to write a pack like this:
-- README.md in this folder.
--
-- The three locks (docs/specs/romance.md, point 12.2):
--   1. loading: this folder is LoadOnDemand; the base addon loads it only with the 18+ consent on and the tone Explicit;
--   2. silence: every part registers through Romance:Register18, which runs it only while the 18+ consent is on and
--      drops it (rules, texts, flirts) when the consent goes off; a tier-3 line is picked only at tier 3;
--   3. content: `romance18 = true`, every rule a romance event with romanceTier = 3 (the validator checks it).
-- Editorial rules: adults only, consent always (the NPC may say no, and a no is respected), nothing about a minor,
-- never a graphic description of sex: mature, and the scene fades out. Romance is private narration: never chat.
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("romance18_base", function()
	AU:RegisterPack({
		id = "romance18_base",
		name = "Romance 18+: samples",
		languages = { "itIT", "enUS" },
		romance18 = true,
		-- the events are the base addon's (base_romance declares them): an 18+ pack declares none of its own
		registry = {
			["r18.welcome.t3.n1"] = { event = "npcd_romance_welcome", speaker = "npc", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 1,
				conditions = { romanceTier = 3 } },
			["r18.welcome.t3.n2"] = { event = "npcd_romance_welcome", speaker = "npc", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 1,
				conditions = { romanceTier = 3 } },
			["r18.welcome.t3.beloved"] = { event = "npcd_romance_welcome", speaker = "npc", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 3,
				conditions = { romanceTier = 3, romanceBeloved = true } },
			["r18.cold.t3.n1"] = { event = "npcd_romance_cold", speaker = "npc", styles = { "everyday" },
				tags = { "topic:romance" }, theme = "fellowship", weight = 1,
				conditions = { romanceTier = 3 } },
			["r18.refuse.t3.n1"] = { event = "npcd_romance_refuse", speaker = "npc", styles = { "everyday" },
				tags = { "topic:romance" }, theme = "fellowship", weight = 1,
				conditions = { romanceTier = 3 } },
			["r18.scene.vow.open.t3"] = { event = "romance_scene", speaker = "narrator", form = "say", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 1,
				conditions = { romanceTier = 3, romanceMoment = "vow", romancePhase = "open" } },
			["r18.scene.vow.welcome.t3"] = { event = "romance_scene", speaker = "narrator", form = "say", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 1,
				conditions = { romanceTier = 3, romanceMoment = "vow", romancePhase = "welcome" } },
			["r18.inner.welcome.t3"] = { event = "romance_inner", speaker = "inner", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "home", weight = 1,
				conditions = { romanceTier = 3, romanceOutcome = "welcome" } },
			["r18.inner.refuse.t3"] = { event = "romance_inner", speaker = "inner", styles = { "intimate" },
				tags = { "topic:romance" }, theme = "hope", weight = 1,
				conditions = { romanceTier = 3, romanceOutcome = { "cold", "refuse" } } },
		},
	})
end)
