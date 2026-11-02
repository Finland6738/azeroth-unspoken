-- Closed vocabularies of themes and motifs (#90, ADR 0029), the direction data of the selection: the related-event
-- fallbacks (#89), the per-session category quotas and hunger (#91) and the categories with their own pacing (#118).
-- A theme is the idea a phrase is about (one per rule); a motif is a concrete image the phrase shows (zero to three).
-- The validator rejects a theme or a motif that is not declared here or by a pack (`themes = {}`, `motifs = {}`).
-- The selection remembers, for the session only, the themes, motifs, voices, openings and frames of the last
-- interventions and weighs down what came back too soon (factor N). How to choose them: CONTRIBUTING.md.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_direction",
	name = "Base: themes, motifs and direction",
	themes = {
		"courage",     -- resolve, standing firm, defiance
		"duty",        -- oaths, protecting others, honour
		"glory",       -- triumph, renown, pride in a deed
		"wrath",       -- anger, vengeance, hatred of the foe
		"fear",        -- dread, doubt, the will to flee
		"fatigue",     -- weariness, wounds, endurance, the body
		"mortality",   -- one's own death, the price, fragility
		"loss",        -- the fallen, grief, what is gone
		"hope",        -- a better tomorrow, mercy, a second chance
		"faith",       -- the Light, gods, spirits, prayer, blessings
		"magic",       -- the arcane, power, spells and their cost
		"nature",      -- the living wild, beasts, seasons
		"landscape",   -- what a place looks like: horizon, weather, light
		"home",        -- belonging, hearth, kin, a return
		"journey",     -- the road, distance, wandering, arrival
		"memory",      -- the past, history, ruins, remembrance
		"fellowship",  -- companions, friendship, hospitality, bonds
		"growth",      -- learning, becoming stronger, a lesson
		"mystery",     -- the unknown, secrets, omens
		"solitude",    -- being alone, silence, the self
		"humour",      -- wit, irony, a joke at one's own expense
	},
	motifs = {
		-- arms and war
		"blade", "shield", "armour", "banner", "horn", "drum", "arrow", "scar", "wound", "blood", "bone",
		-- elements and sky
		"fire", "ash", "smoke", "light", "shadow", "sun", "moon", "star", "sky", "wind", "rain", "storm", "snow",
		"ice", "water", "sea", "river",
		-- land
		"stone", "earth", "dust", "sand", "mountain", "tree", "roots", "leaf", "flower", "grass",
		-- creatures
		"wolf", "bird", "beast", "dragon",
		-- people and things
		"hand", "eye", "breath", "voice", "song", "heart", "tears", "bread", "ale", "hearth", "coin", "book", "crown",
		"bell", "door", "road", "grave", "mask", "chain", "candle",
		-- time
		"dawn", "dusk", "night", "season",
	},
	-- related-event fallback (#89): when an event has no eligible phrase, the selection tries this one (one hop at a
	-- time, at most three, never back to an event already tried)
	events = {
		rezother = { fallback = "heal" },
		threat = { fallback = "battle" },
	},
	-- categories with their own pacing (#118, ADR 0042): the literary forms (verses, songs, inscriptions, tales) are
	-- rare. At intensity 50 at most one in 25 minutes and a pause of 20 minutes; at any intensity never two within ten
	-- minutes. Their phrases are paced wherever they speak; the setting "literary forms" (never / rare / normal) scales
	-- them and a fight closes them
	categories = {
		lore = { budget = 1, window = 1500, cooldown = 1200, minCooldown = 600 },
	},
	-- per-session category quotas (#91): a category may take at most `share` of the last `window` spontaneous
	-- interventions; exceptional moments (death, resurrection, level up) are never refused
	quotas = {
		combat = { share = 0.4, window = 10 },
		spellcraft = { share = 0.3, window = 10 },
	},
	-- hunger (#91): a category silent for a while gets a higher chance and goes first among candidates of the same
	-- priority. `factor` is the most it can multiply the chance by, reached after `after` seconds of silence
	hunger = {
		exploration = { factor = 2.0, after = 600 },
		reflection = { factor = 1.5, after = 900 },
	},
	-- composite situations (#100, ADR 0032): when the Director's winner is the `lead` event and the other events were
	-- offered in the last `within` seconds (all of `with`, one of `withAny`), or its context matches `when`, the lines
	-- written for the situation (condition `situation`, Data/RegistrySituations.lua) speak first. Still one line; with
	-- no fitting line the ordinary pick follows. An offer is merged into a situation once.
	situations = {
		-- a victory with low health earlier in the same fight: a hard-won victory
		close_call = { lead = "victory", with = { "lowhp" }, within = 30 },
		-- a victory soon after getting up again
		second_wind = { lead = "victory", with = { "rez" }, within = 240 },
		-- a level reached right after a hard fight or a death
		hard_won_level = { lead = "levelup", withAny = { "lowhp", "death" }, within = 180 },
		-- a new zone entered still wounded from a fight
		wounded_arrival = { lead = "zone", with = { "lowhp" }, within = 120 },
		-- a return in the rain as the light goes
		rain_dusk_return = { lead = "memory_return", when = { weather = { "rain", "storm" }, time = "dusk" } },
	},
})
