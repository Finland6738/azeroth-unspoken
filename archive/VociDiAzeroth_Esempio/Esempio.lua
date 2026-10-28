-- Pacchetto di esempio per Voci di Azeroth.
-- Copia questa cartella, rinominala e modifica le frasi: il motore non va toccato.
local V = VociDiAzeroth

-- 1) Un evento nuovo: quando lanci un incantesimo il cui nome contiene "fishing" o "pesca",
--    il motore cerca frasi con event = "fishing".
V:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })
V:SetEventDefaults("fishing", 20, 300)   -- 20% di probabilità, al massimo una volta ogni 5 minuti

V:RegisterPack({
	id = "esempio",
	name = "Esempio: pesca e luoghi",
	phrases = {
		{ id = "esempio.fish.01", event = "fishing", tone = "malinconico",
			it = "L'acqua non ha fretta. Forse dovrei imparare da lei.",
			en = "The water is in no hurry. Perhaps I should learn from it." },
		{ id = "esempio.fish.02", event = "fishing", tone = "ironico",
			it = "Abbocca, per favore. Ho promesso una cena a gente armata.",
			en = "Bite, please. I promised supper to armed people." },
		{ id = "esempio.fish.03", event = "fishing", tone = "mistico", when = { time = "night" },
			it = "Di notte i pesci sognano la luna. Io sogno loro, in padella.",
			en = "At night the fish dream of the moon. I dream of them, in a pan." },
		{ id = "esempio.fish.e.01", event = "fishing", form = "emote", tone = "solenne",
			it = "lancia la lenza e resta immobile, come se il mondo intero potesse aspettare.",
			en = "casts the line and stays perfectly still, as if the whole world could wait." },

		-- 2) Una regola scritta in Lua: solo a pieno vigore, di sera, in gruppo
		{ id = "esempio.script.01", event = "victory", tone = "eroico", weight = 2,
			when = {
				group = { "party", "raid" },
				func = function(ctx) return (ctx.hp or 0) > 0.9 and ctx.time == "dusk" end,
			},
			it = "Nemmeno un graffio, e il sole che tramonta. Ricorderò questa sera.",
			en = "Not a scratch, and the sun going down. I will remember this evening." },

		-- 3) Frasi legate a un luogo preciso (zona o sottozona, col nome del client)
		{ id = "esempio.place.01", event = { "zone", "muse" }, tone = "ironico", when = { zone = "Booty Bay" },
			it = "Baia del Bottino: qui tutto ha un prezzo, compresa la verità.",
			en = "Booty Bay: here everything has a price, the truth included." },
		{ id = "esempio.place.02", event = "muse", tone = "solenne", when = { zone = "Thunder Bluff" },
			it = "Dalle alture il vento porta il canto dei tamburi. Anche il cielo, qui, è più vicino.",
			en = "The wind carries the song of drums from the heights. Even the sky is closer here." },
	},

	-- 4) Traduzioni aggiunte per frasi di altri pacchetti (stesso id): per esempio il tedesco.
	--    Per rendere selezionabile una lingua nuova serve anche V:RegisterLanguage("de", { name = "Deutsch", ui = {...} }).
	-- translations = { de = { ["battle.gen.12"] = "Keinen Schritt zurück. Keinen einzigen!" } },
})
