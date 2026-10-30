-- Frasi di esempio con affinità di personalità (Character Soul, step S5). Bastano a provare il sistema: i
-- contenuti estesi arrivano con lo step S7. Solo le regole; i testi stanno in AzerothUnspoken_itIT/Soul.lua e AzerothUnspoken_enUS/Soul.lua.
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
			conditions = { ctype = "undead", ["not"] = { race = "Scourge" } } },
		["soul.battle.resolute"] = { event = "battle", speaker = "character", styles = { "epic" },
			tags = { "temperament:resolute", "topic:undead" }, conditions = { ctype = "undead", ["not"] = { race = "Scourge" } } },
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
			tags = { "irony:high", "topic:death" }, depth = { "natural", "literary" } },
		["soul.death.sober"] = { event = "death", speaker = "character", styles = { "epic" },
			tags = { "irony:low", "temperament:resolute", "topic:death" } },
		-- temperamento
		["soul.thanks.gruff"] = { event = "thanks", speaker = "character", styles = { "everyday", "ironic" },
			tags = { "temperament:gruff" }, depth = { "natural", "literary" } },
		["soul.greet.cheerful"] = { event = "greet", speaker = "character", styles = { "everyday" },
			tags = { "temperament:cheerful" }, depth = { "natural", "literary" } },
		["soul.muse.melancholic"] = { event = "muse", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "temperament:melancholic" }, depth = { "literary", "elevated" } },
		-- S7: il profilo nelle scene comuni (luogo, scontro, vittoria, ritorno in vita, riflessione)
		-- curiosità: un tono, non una storia
		["soul.zone.curious"] = { event = "zone", speaker = "inner", styles = { "intimate", "everyday" },
			depth = { "natural", "literary", "elevated" }, tags = { "curiosity:high" } },
		-- libertà: spazi aperti
		["soul.zone.freedom"] = { event = "zone", speaker = "inner", styles = { "intimate", "epic" },
			depth = { "natural", "literary" }, tags = { "motivation:freedom" },
			conditions = { mood = { "plains", "coast", "mountain", "desert" } } },
		-- temperamento in battaglia
		["soul.battle.fierce"] = { event = "battle", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" }, tags = { "temperament:fierce" } },
		["soul.battle.protect"] = { event = "battle", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" }, tags = { "motivation:protection", "temperament:resolute" },
			conditions = { group = { "party", "raid" } } },
		-- morale dopo la vittoria: il pragmatico la chiude in fretta, il tormentato se la porta dietro
		["soul.victory.pragmatic"] = { event = "victory", speaker = "inner", styles = { "everyday" },
			depth = { "natural", "literary" }, tags = { "morality:pragmatic", "temperament:stoic" } },
		["soul.victory.conflicted"] = { event = "victory", speaker = "inner", styles = { "intimate", "tragic" },
			depth = { "literary", "elevated" }, tags = { "req:morality:conflicted" } },
		-- ritorno in vita: il dovere (tono) e gli spiriti (credo)
		["soul.rez.duty"] = { event = "rez", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" }, tags = { "motivation:duty", "temperament:resolute" } },
		["soul.rez.spiritual"] = { event = "rez", speaker = "inner", styles = { "ancient", "intimate" },
			depth = { "literary", "elevated" }, tags = { "req:faith:spiritual", "topic:death" } },
		-- riflessione: un passato da riscattare, una fede che vacilla (affermazioni: req)
		["soul.muse.redemption"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			depth = { "literary", "elevated" }, tags = { "req:motivation:redemption", "morality:hopeful" } },
		["soul.muse.doubting"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			depth = { "natural", "literary" }, tags = { "req:faith:doubting", "topic:religion" } },
	},
})
