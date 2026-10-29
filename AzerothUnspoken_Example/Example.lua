-- Pacchetto di esempio per Azeroth Unspoken (schema v2).
-- Copia questa cartella, rinominala e modifica: il motore non va toccato.
-- Il pacchetto mostra come aggiungere un evento, frasi con più varianti, condizioni anche scritte in Lua,
-- luoghi precisi, varianti per profondità e traduzioni di frasi di altri pacchetti. La guida completa
-- è AzerothUnspoken/FORMATO_PACCHETTI.md; con /au valida il validatore controlla il pacchetto.
local V = AzerothUnspoken

-- 1) Un tipo di incantesimo nuovo: quando lanci un incantesimo il cui nome contiene "fishing" o "pesca",
--    il motore cerca frasi con event = "fishing". L'evento si dichiara nel pacchetto (events = ...) più sotto.
V:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })

V:RegisterPack({
	id = "example",
	name = "Esempio: pesca e luoghi",
	languages = { "itIT", "enUS" },          -- ogni frase del pacchetto deve avere il testo in queste lingue

	-- 2) Eventi nuovi: categoria, probabilità (%) e pausa (secondi) predefinite. Le scelte dell'utente (/au prob) prevalgono.
	events = { fishing = { category = "exploration", chance = 20, cooldown = 300 } },

	-- 3) Le regole: una voce per frase, senza testi. speaker: narrator | inner | character | npc.
	--    styles: registri (ancient, epic, tragic, intimate, everyday, ironic, ceremonial); depth: natural | literary | elevated.
	registry = {
		["example.fish.01"] = { event = "fishing", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary" } },
		["example.fish.02"] = { event = "fishing", speaker = "character", styles = { "ironic", "everyday" },
			depth = { "natural", "literary" } },
		["example.fish.03"] = { event = "fishing", speaker = "inner", styles = { "ancient", "ironic" },
			conditions = { time = "night" } },
		-- un'emote è narrativa, in terza persona, senza il nome: il gioco lo antepone
		["example.fish.e.01"] = { event = "fishing", speaker = "narrator", styles = { "ancient" } },

		-- Una condizione scritta in Lua: solo a pieno vigore, di sera, in gruppo
		["example.script.01"] = { event = "victory", speaker = "character", styles = { "epic" }, weight = 2,
			conditions = {
				group = { "party", "raid" },
				func = function(ctx) return (ctx.hp or 0) > 0.9 and ctx.time == "dusk" end,
			} },

		-- Frasi legate a un luogo preciso (zona o sottozona, col nome del client)
		["example.place.01"] = { event = { "zone", "muse" }, speaker = "character", styles = { "ironic" },
			conditions = { zone = "Booty Bay" } },
		["example.place.02"] = { event = "muse", speaker = "inner", styles = { "ancient" },
			conditions = { zone = "Thunder Bluff" } },
	},

	-- 4) I testi per lingua, con una o più varianti per id. Le varianti dicono la stessa cosa con parole diverse:
	--    il motore non ripete subito l'ultima usata. Una variante può essere { "testo", depth = "elevated" }.
	texts = {
		itIT = {
			["example.fish.01"] = {
				"L'acqua non ha fretta. Forse dovrei imparare da lei.",
				{ "L'acqua aspetta senza chiedere nulla. Io, che chiedo sempre, ho ancora molto da imparare.", depth = "elevated" },
			},
			["example.fish.02"] = {
				"Abbocca, per favore. Ho promesso una cena a gente armata.",
				"Dai, pesciolino. La mia reputazione di cuoco dipende da te.",
			},
			["example.fish.03"] = { "Di notte i pesci sognano la luna. Io sogno loro, in padella." },
			["example.fish.e.01"] = { "lancia la lenza e resta immobile, come se il mondo intero potesse aspettare." },
			["example.script.01"] = { "Nemmeno un graffio, e il sole che tramonta. Ricorderò questa sera." },
			["example.place.01"] = { "Baia del Bottino: qui tutto ha un prezzo, compresa la verità." },
			["example.place.02"] = { "Dalle alture il vento porta il canto dei tamburi. Anche il cielo, qui, è più vicino." },
		},
		enUS = {
			["example.fish.01"] = {
				"The water is in no hurry. Perhaps I should learn from it.",
				{ "The water waits and asks for nothing. I, who always ask, still have much to learn.", depth = "elevated" },
			},
			["example.fish.02"] = {
				"Bite, please. I promised supper to armed people.",
				"Come on, little fish. My reputation as a cook depends on you.",
			},
			["example.fish.03"] = { "At night the fish dream of the moon. I dream of them, in a pan." },
			["example.fish.e.01"] = { "casts the line and stays perfectly still, as if the whole world could wait." },
			["example.script.01"] = { "Not a scratch, and the sun going down. I will remember this evening." },
			["example.place.01"] = { "Booty Bay: here everything has a price, the truth included." },
			["example.place.02"] = { "The wind carries the song of drums from the heights. Even the sky is closer here." },
		},
	},

	-- 5) Traduzioni o frasi in più per ids di altri pacchetti (anche di quello di base): si aggiungono come varianti.
	--    Per rendere selezionabile una lingua nuova serve anche V:RegisterLanguage("de", { name = "Deutsch", ui = {...} }).
	-- texts = { deDE = { ["battle.gen.12"] = "Keinen Schritt zurück. Keinen einzigen!" } },
})
