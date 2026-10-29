-- Frasi di esempio con affinità di personalità (Character Soul, step S5). Bastano a provare il sistema: i
-- contenuti estesi arrivano con lo step S7. Solo le regole; i testi stanno in Data/itIT/Soul.lua e Data/enUS/Soul.lua.
--
-- Tag di affinità (vedi Engine/Traits.lua):
--   trait:valore       affinità morbida (tono): il peso sale con quel tratto, scende con un altro
--   req:trait:valore   requisito rigido: la frase afferma qualcosa del personaggio, esce solo se il profilo lo dice
--   topic:argomento    esclusione rigida se il giocatore ha scelto di evitare quell'argomento
-- Regola editoriale: una frase che afferma un credo o un passato (la fede, la vendetta) usa req:; un modo di dire
-- le stesse cose (temperamento, ironia) usa l'affinità morbida. Così il profilo neutro non sente mai una storia
-- che non ha scelto, e nessuna frase contraddice un tratto esclusivo.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_soul",
	name = "Base: personalità",
	languages = { "itIT", "enUS" },
	registry = {
		-- ritorno in una città: lo stesso evento, due caratteri (GDD §7.1)
		["soul.zone.veteran"] = { event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "literary" },
			tags = { "req:morality:disillusioned", "temperament:stoic" }, conditions = { mood = "city" } },
		["soul.zone.hopeful"] = { event = "zone", speaker = "inner", styles = { "ceremonial", "intimate" },
			depth = { "literary" }, tags = { "req:morality:hopeful", "temperament:cheerful" },
			conditions = { mood = "city" } },
		-- contro un non morto: la misericordia e la risolutezza parlano diversamente (GDD §5.2)
		["soul.battle.merciful"] = { event = "battle", speaker = "character", styles = { "ceremonial" },
			depth = { "literary", "elevated" }, tags = { "temperament:merciful", "topic:undead" },
			conditions = { ctype = "undead" } },
		["soul.battle.resolute"] = { event = "battle", speaker = "character", styles = { "epic" },
			tags = { "temperament:resolute", "topic:undead" }, conditions = { ctype = "undead" } },
		-- fede
		["soul.pray.devout"] = { event = "pray", speaker = "character", styles = { "ceremonial" },
			tags = { "req:faith:devout", "topic:religion" } },
		["soul.pray.skeptic"] = { event = "pray", speaker = "inner", styles = { "intimate", "ironic" },
			tags = { "req:faith:skeptic", "topic:religion" } },
		-- motivazione
		["soul.muse.vengeance"] = { event = "muse", speaker = "inner", styles = { "tragic" },
			tags = { "req:motivation:vengeance", "topic:betrayal" } },
		["soul.muse.knowledge"] = { event = "muse", speaker = "inner", styles = { "ancient" },
			tags = { "req:motivation:knowledge", "curiosity:high" } },
		["soul.victory.glory"] = { event = "victory", speaker = "character", styles = { "epic", "ironic" },
			tags = { "motivation:glory", "irony:mid" } },
		-- argomenti che il giocatore può scegliere di evitare
		["soul.muse.family"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			tags = { "topic:family" }, depth = { "natural", "literary" } },
		["soul.lowhp.blood"] = { event = "lowhp", speaker = "character", styles = { "tragic" },
			tags = { "topic:blood", "topic:death" } },
		-- ironia: la stessa morte, detta con arguzia o con sobrietà
		["soul.death.wry"] = { event = "death", speaker = "character", styles = { "ironic" },
			tags = { "irony:high" }, depth = { "natural", "literary" } },
		["soul.death.sober"] = { event = "death", speaker = "character", styles = { "epic" },
			tags = { "irony:low", "temperament:resolute" } },
		-- temperamento
		["soul.thanks.gruff"] = { event = "thanks", speaker = "character", styles = { "everyday", "ironic" },
			tags = { "temperament:gruff" }, depth = { "natural", "literary" } },
		["soul.greet.cheerful"] = { event = "greet", speaker = "character", styles = { "everyday" },
			tags = { "temperament:cheerful" }, depth = { "natural", "literary" } },
		["soul.muse.melancholic"] = { event = "muse", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "temperament:melancholic" }, depth = { "literary", "elevated" } },
	},
})
