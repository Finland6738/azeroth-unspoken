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
		-- #122, #123 (ADR 0044): a piece the songbook says was heard comes back as a memory, in a recall or reading frame.
		-- The Director offers it with the quiet moments of `literary.recall.moments`; it is a literary form (category lore)
		lore_recall = { category = "lore", chance = 30, cooldown = 1800 },
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
	-- literary forms (#119, #120, ADR 0043): the closed vocabularies of the rule fields `genre` (the form) and `purpose`
	-- (what the piece is for), the genre x situation matrix and the warning words. `origin` is `common`, `personal` or
	-- `culture:<people>` (D17: matched against the culture the user chooses, never against race). The matrix and the
	-- words give warnings only: a piece may break one on purpose, the review says why. They name facts of a rule:
	-- `event=`, `style=`, `tag=`, `genre=`, `purpose=` and its conditions as `name` (asked, not false) or `name=value`,
	-- with `place.` or `other.` in front of the conditions inside those tables; `not` and `any` guarantee nothing and
	-- are not read. The authoring archive reads this same table (tools/archive/literary.py).
	literary = {
		genres = {
			"verse",      -- verses said or remembered, not sung
			"song",       -- sung: a refrain, a tune, a hymn, a lament
			"formula",    -- a fixed form of words: a saying, a proverb, a blessing, a vow
			"epigraph",   -- words carved or written on a place or a thing
			"prose",      -- a short passage in prose: a page, a letter, a chronicle
			"tale",       -- a story told by someone, always attributed (D7)
		},
		purposes = {
			"remember",   -- keeps a past, a place, the dead
			"mourn",      -- grief, a lament
			"amuse",      -- a joke, a tavern rhyme, play
			"accompany",  -- keeps company on the road
			"bless",      -- a prayer, a blessing, a protection
			"warn",       -- a warning, a caution
			"advise",     -- a lesson, a piece of advice
			"celebrate",  -- a feast, a victory, a meeting
		},
		-- `never`: none of these facts may hold; `needs`: at least one must hold
		matrix = {
			{ id = "amuse_in_grief", purpose = "amuse",
				never = { "place.tags=dark", "place.tags=plague", "place.tags=cursed", "mood=dark", "mood=plague",
					"mood=cursed", "place.mood=dark", "place.mood=plague", "place.mood=cursed", "event=death", "event=rez",
					"event=rezother", "event=encounter_end", "lastVisitBad", "tag=topic:death" } },
			{ id = "mourn_lightly", purpose = "mourn", never = { "style=ironic", "style=everyday" } },
			{ id = "epigraph_without_stone", genre = "epigraph",
				needs = { "place.tags=ruin", "place.tags=sacred", "place.tags=monument", "landmark", "event=landmark" } },
			{ id = "accompany_standing_still", purpose = "accompany", needs = { "event=travel", "event=journey" } },
		},
		-- words that ask a condition: a piece that names them is said only when its rule guarantees one of `needs`
		words = {
			{ id = "night", en = { "night", "tonight", "midnight", "nightfall" },
				it = { "notte", "stanotte", "mezzanotte", "nottata" },
				needs = { "time=night", "time=dusk", "dayTime=false", "hour", "event=dusk" } },
			{ id = "snow", en = { "snow", "snows", "snowfall", "snowflakes" }, it = { "neve", "nevica", "nevicata", "nevi" },
				needs = { "weather=snow", "place.tags=snow", "place.tags=winter", "place.tags=frozen" } },
			{ id = "return", en = { "return", "returned", "returning", "came back", "come back home" },
				it = { "ritorno", "tornato", "tornata", "tornati", "tornare a casa" },
				needs = { "event=memory_return", "repeatVisit", "visitsMin", "daysSinceLastVisit", "lastVisitBad",
					"remembered" } },
			{ id = "faith", en = { "faith", "faithful", "prayer", "prayers", "holy" },
				it = { "fede", "fedele", "preghiera", "preghiere", "santo", "santa" },
				needs = { "event=pray", "tag=topic:religion", "tag=faith:devout", "place.tags=sacred" } },
		},
		-- #124 (D17, ADR 0044): the cultures of origin the user may choose in the character soul, by hand, never deduced
		-- from race or class (a human raised among the kaldorei chooses kaldorei). A piece `culture:<people>` names one of
		-- them. `culture` is the factor of such a piece: `own` when it is the chosen culture, `heard` for another
		-- culture in a voice that is not the character's (an NPC sings it, the narrator reads it), `other` for another
		-- culture in the first person (the inner voice, the character). No culture chosen: no `culture:` piece at all
		cultures = { "human", "dwarf", "gnome", "kaldorei", "queldorei", "orc", "troll", "tauren", "forsaken" },
		culture = { own = 1.4, heard = 0.8, other = 0 },
		-- #122, #123 (ADR 0044): the recall of a piece the songbook confirms. `moments`: the events with which the
		-- Director offers `lore_recall`; `minAge`: seconds since the piece was heard before it may come back; `learned`
		-- and `favourite`: weights of a piece learned by heart or marked by the user
		recall = { moments = { "rest_enter", "journey", "dusk", "night", "weather_change" }, minAge = 21600, learned = 1.5,
			favourite = 2 },
	},
})
