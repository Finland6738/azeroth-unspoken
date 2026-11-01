-- Azeroth Unspoken: dati delle relazioni (S6b, GDD §7.4, ADR 0018). Qui stanno gli assi, le etichette narrative
-- derivate, la disposizione complessiva, il registro (dal formale all'intimo) e gli incrementi degli NPC.
-- Il motore (Systems/Relationships.lua) non contiene etichette né numeri: legge questa tabella. Per cambiare un
-- incremento, una soglia o un nome basta modificare qui; un pacchetto può aggiungere etichette con
-- NS:RegisterRelationData({ labels = { ... } }) (stessa forma).
--
-- Etichette (`labels`): la prima, in ordine di priorità decrescente, le cui condizioni `when` valgono per tutti gli
-- assi è l'etichetta derivata. `when = { asse = { min =, max = } }` (estremi inclusi). Un asse spento (attrazione)
-- non ha valore e fa fallire la regola che lo cita. `stranger` è il ripiego, senza condizioni.
-- Nomi: `name = { it = "...", en = "..." }`. Una lingua con il genere scrive un elenco { maschile, femminile }:
-- `it = { "amico", "amica" }` (#41); la forma si sceglie dal sesso della persona (ctx.other.sex), il ripiego è la prima.
-- Un'etichetta scelta a mano ha la precedenza sulla derivata.
local ADDON, NS = ...

NS.Relationships:RegisterData({
	-- Assi indipendenti: non c'è un'unica barra amico/nemico. `bands` serve ai tag delle frasi (rel.trust:high).
	axes = {
		{ id = "familiarity", min = 0, max = 100, name = { it = "Familiarità", en = "Familiarity" },
			help = { it = "quanto ci si conosce", en = "how well you know each other" } },
		{ id = "trust", min = -100, max = 100, name = { it = "Fiducia", en = "Trust" },
			help = { it = "quanto ci si affida", en = "how much you rely on them" } },
		{ id = "respect", min = -100, max = 100, name = { it = "Rispetto", en = "Respect" },
			help = { it = "stima per ciò che sono e fanno", en = "esteem for who they are and what they do" } },
		{ id = "affection", min = -100, max = 100, name = { it = "Affetto", en = "Affection" },
			help = { it = "calore o astio; sotto lo zero, rancore e odio", en = "warmth or ill will; below zero, grudge and hatred" } },
		{ id = "fear", min = 0, max = 100, name = { it = "Timore", en = "Fear" },
			help = { it = "quanto li si teme", en = "how much you fear them" } },
		{ id = "loyalty", min = -100, max = 100, name = { it = "Lealtà", en = "Loyalty" },
			help = { it = "quanto si è disposti a restare al loro fianco", en = "how far you would stand by them" } },
		-- facoltativo: spento per impostazione predefinita (relations.attraction nelle impostazioni)
		{ id = "attraction", min = 0, max = 100, optional = true, name = { it = "Attrazione", en = "Attraction" },
			help = { it = "asse facoltativo: attrazione romantica", en = "optional axis: romantic attraction" } },
	},

	-- Etichette narrative derivate (GDD §7.4): fiducia e affetto alti → amico; fiducia e lealtà alte → compagno
	-- d'armi; fiducia bassa e rispetto alto → rivale rispettato; affetto molto negativo → nemico; valori vicini a
	-- zero → indifferente; familiarità bassa → sconosciuto.
	labels = {
		{ id = "lover", priority = 95, name = { it = { "amato", "amata" }, en = "beloved" },
			when = { affection = { min = 50 }, attraction = { min = 50 }, trust = { min = 10 } } },
		{ id = "enemy", priority = 90, name = { it = { "nemico", "nemica" }, en = "enemy" },
			when = { affection = { max = -60 } } },
		-- #109: a label only the user can give ("manualOnly": the addon never derives it, so no existing relation changes
		-- label). Someone who stands on your side for a cause, without the long familiarity of a comrade in arms.
		{ id = "ally", priority = 78, manualOnly = true, name = { it = { "alleato", "alleata" }, en = "ally" },
			when = { trust = { min = 30 }, loyalty = { min = 30 } } },
		{ id = "comrade", priority = 80, name = { it = { "compagno d'armi", "compagna d'armi" }, en = "comrade in arms" },
			when = { trust = { min = 50 }, loyalty = { min = 50 }, familiarity = { min = 40 } } },
		{ id = "rival", priority = 75, name = { it = { "rivale rispettato", "rivale rispettata" }, en = "respected rival" },
			when = { trust = { max = 10 }, respect = { min = 40 }, familiarity = { min = 20 } } },
		{ id = "feared", priority = 70, name = { it = { "temuto", "temuta" }, en = "feared one" },
			when = { fear = { min = 60 } } },
		{ id = "friend", priority = 60, name = { it = { "amico", "amica" }, en = "friend" },
			when = { trust = { min = 30 }, affection = { min = 30 }, familiarity = { min = 30 } } },
		{ id = "disliked", priority = 55, name = { it = { "inviso", "invisa" }, en = "disliked" },
			when = { affection = { max = -25 } } },
		{ id = "wary", priority = 50, name = { it = "diffidente", en = "distrusted" },
			when = { trust = { max = -30 } } },
		{ id = "indifferent", priority = 30, name = { it = "indifferente", en = "indifferent" },
			when = { familiarity = { min = 20 }, trust = { min = -10, max = 10 }, respect = { min = -10, max = 10 },
				affection = { min = -10, max = 10 }, loyalty = { min = -10, max = 10 } } },
		{ id = "acquaintance", priority = 20, name = { it = "conoscente", en = "acquaintance" },
			when = { familiarity = { min = 20 } } },
		{ id = "stranger", priority = 0, name = { it = { "sconosciuto", "sconosciuta" }, en = "stranger" }, when = {} },
	},

	-- Feelings in words (#109): chosen by the user, up to two per person, never by the addon. They add the tag
	-- rel.feeling:<id> and the condition `feeling` to the lines. `preset` is the typical level of the axes for that
	-- feeling: the user can ask for it (a button, `feeling <name> <feeling> preset`) and then adjust the sliders; it is
	-- only ever raised where the axis is weaker, never lowered over a stronger value the user set.
	feelings = {
		{ id = "trust", name = { it = "fiducia", en = "trust" },
			help = { it = "ti affidi a lei o a lui", en = "you rely on them" },
			preset = { trust = 50, familiarity = 25 } },
		{ id = "liking", name = { it = "simpatia", en = "liking" },
			help = { it = "ti sta simpatica o simpatico", en = "you like them" },
			preset = { affection = 45, trust = 30, familiarity = 30 } },
		{ id = "wariness", name = { it = "diffidenza", en = "wariness" },
			help = { it = "non ti fidi del tutto", en = "you do not quite trust them" },
			preset = { trust = -45, familiarity = 20 } },
		{ id = "fear", name = { it = "paura", en = "fear" },
			help = { it = "ti mette a disagio o ti spaventa", en = "they unsettle or frighten you" },
			preset = { fear = 65, familiarity = 20 } },
		{ id = "resentment", name = { it = "rancore", en = "resentment" },
			help = { it = "un torto che non hai perdonato", en = "a wrong you have not forgiven" },
			preset = { affection = -70, trust = -25, familiarity = 20 } },
		{ id = "gratitude", name = { it = "gratitudine", en = "gratitude" },
			help = { it = "ti hanno aiutato e non lo dimentichi", en = "they helped you and you remember it" },
			preset = { affection = 30, loyalty = 35, respect = 25, familiarity = 25 } },
	},

	-- Disposizione complessiva su una scala -100…100: media pesata degli assi di valore (il timore non è una
	-- valenza e non entra), più un piccolo calore di chi si conosce bene. `max` è l'estremo superiore incluso.
	disposition = {
		weights = { affection = 0.40, trust = 0.25, respect = 0.15, loyalty = 0.20 },
		familiarityWarmth = 12,   -- punti aggiunti con familiarità 100, solo se la media non è negativa
		bands = {
			{ id = "hated", max = -75, name = { it = "Odiato", en = "Hated" } },
			{ id = "enemy", max = -50, name = { it = "Nemico", en = "Hostile" } },
			{ id = "unfriendly", max = -25, name = { it = "Antipatico", en = "Unfriendly" } },
			{ id = "suspicious", max = -8, name = { it = "Sospettoso", en = "Suspicious" } },
			{ id = "neutral", max = 12, name = { it = "Neutrale", en = "Neutral" } },
			{ id = "acquaintance", max = 30, name = { it = "Conoscente", en = "Acquaintance" } },
			{ id = "friend", max = 55, name = { it = "Amico", en = "Friend" } },
			{ id = "close", max = 80, name = { it = "Grande amico", en = "Close friend" } },
			{ id = "bond", max = 100, name = { it = "Legame profondo", en = "Deep bond" } },
		},
	},

	-- Una persona è "conosciuta" (condizione isKnown) da questa familiarità, o se l'utente ha scelto un'etichetta.
	knownMin = 15,

	-- Il registro cambia con la familiarità: dal formale all'intimo. Il primo gradino con `max` >= familiarità
	-- aggiunge le sue preferenze al StyleResolver (registri: Engine/StyleResolver.lua). La disposizione ne aggiunge.
	register = {
		{ max = 14, styles = { "ceremonial" } },
		{ max = 39, styles = { "everyday" } },
		{ max = 69, styles = { "everyday", "ironic" } },
		{ max = 100, styles = { "intimate" } },
	},
	dispositionStyles = {
		hated = { "tragic" }, enemy = { "epic", "tragic" }, unfriendly = { "ironic" },
		close = { "intimate" }, bond = { "intimate", "ceremonial" },
	},

	-- Incrementi automatici degli NPC (identità: npcID dal GUID). Per fonte:
	--   gain   punti per asse a ogni interazione
	--   decay  rendimento decrescente: l'n-esima interazione del giorno vale gain × decay^(n-1)
	--   cap    tetto giornaliero, per asse, di questa fonte con questo NPC
	-- Più un ammorbidimento sul totale (lifetimeSoftness): più l'asse è alto, meno cresce. I valori sono dati:
	-- regolabili senza toccare il codice.
	increments = {
		gossip = { gain = { familiarity = 3 }, decay = 0.6, cap = { familiarity = 6 } },
		-- dialogo ambientale dell'addon (S8): aprirlo e scegliere una risposta. Poco e con tetti bassi: una
		-- chiacchierata simulata vale meno di un'interazione vera con l'NPC
		ambient = { gain = { familiarity = 1.5, trust = 0.5 }, decay = 0.6, cap = { familiarity = 3, trust = 1 } },
		ambient_talk = { gain = { familiarity = 1, trust = 1, affection = 0.5 }, decay = 0.7,
			cap = { familiarity = 2.5, trust = 2.5, affection = 1.5 } },
		quest_accept = { gain = { familiarity = 4, trust = 3, respect = 1 }, decay = 0.7,
			cap = { familiarity = 8, trust = 6, respect = 2 } },
		quest_turnin = { gain = { familiarity = 5, trust = 6, respect = 3, affection = 2 }, decay = 0.7,
			cap = { familiarity = 10, trust = 12, respect = 6, affection = 4 } },
		merchant = { gain = { familiarity = 2 }, decay = 0.5, cap = { familiarity = 3 } },
		merchant_buy = { gain = { familiarity = 1.5, trust = 1 }, decay = 0.8, cap = { familiarity = 4, trust = 3 } },
		merchant_sell = { gain = { familiarity = 1, trust = 0.5 }, decay = 0.8, cap = { familiarity = 3, trust = 2 } },
		merchant_repair = { gain = { familiarity = 1, trust = 2, respect = 1 }, decay = 0.5,
			cap = { familiarity = 2, trust = 3, respect = 1.5 } },
		taxi = { gain = { familiarity = 1 }, decay = 0.5, cap = { familiarity = 2 } },
		trainer = { gain = { familiarity = 2, respect = 1.5 }, decay = 0.6, cap = { familiarity = 4, respect = 3 } },
		binder = { gain = { familiarity = 2, trust = 1, affection = 1 }, decay = 0.5,
			cap = { familiarity = 3, trust = 1.5, affection = 1.5 } },
		-- N4 (#216): the word given with a quest. These are not meetings: they change the axes of the quest giver
		-- without counting an interaction. A negative gain is never capped; the temperament scales it too.
		promise_broken = { gain = { trust = -6, respect = -2 }, decay = 0.8 },
		oath_broken = { gain = { trust = -35, loyalty = -25, affection = -20, respect = -10 }, decay = 1 },
		oath_kept = { gain = { trust = 3, loyalty = 4 }, decay = 0.7, cap = { trust = 6, loyalty = 8 } },
		-- N5 (#217): a favour done for an NPC (not a meeting, like the rows above)
		favour_done = { gain = { trust = 4, affection = 4, loyalty = 2 }, decay = 0.7,
			cap = { trust = 8, affection = 8, loyalty = 4 } },
		-- N6 (#218): an NPC notices that you grew close to their rival (`rivalries` below). Not a meeting either.
		rival_noticed = { gain = { affection = -4, trust = -2 }, decay = 1 },
	},
	lifetimeSoftness = 0.5,

	-- Solo la familiarità decade (lentamente) e solo per gli NPC calcolati dall'addon: i giocatori li decide
	-- l'utente. Dopo `graceDays` giorni senza incontri cala di `perDay` al giorno, mai sotto `floor`.
	decay = { graceDays = 14, perDay = 0.5, floor = 3 },

	-- Etichette per cui si lascia un ricordo nel diario (una sola volta per persona e per etichetta)
	memorable = { friend = true, comrade = true, lover = true, rival = true, enemy = true, feared = true },

	-- N2 (#214): temperament. Each NPC warms up at its own pace: a multiplier on every automatic gain AND on its daily
	-- cap, in both directions (a slow NPC also sours slowly). Narration only: nothing changes how the NPC behaves.
	--   gain   = (the curated `warmth` of Data/NPCs.lua, else roles[role] x temperaments[temperament]) x races[race].gain
	--   forget = (the curated `forget`, else 1) x races[race].forget: multiplies the familiarity lost per day and divides
	--            the days of grace before it starts (long-lived peoples remember longer)
	-- A role, temperament or race that is not listed counts 1. Both results stay within `min` and `max`.
	-- The race is that of the curated entry, or the one the client gave at a meeting (it rarely does for NPCs).
	temperament = {
		min = 0.4, max = 2,
		roles = { innkeeper = 1.3, guard = 0.7, leader = 0.6, banker = 0.85, flightmaster = 1, merchant = 1,
			questgiver = 1, trainer = 1 },
		-- the personality of the NPC (Data/NPCs.lua `temperament`, or what the user chose for them)
		temperaments = { cheerful = 1.15, merciful = 1.1, gruff = 0.8, stoic = 0.85, fierce = 0.8, melancholic = 0.9,
			resolute = 0.95 },
		-- in the spirit of the long-lived peoples: slower to warm and slower to forget, both ways
		races = {
			NightElf = { gain = 0.75, forget = 0.5 },
			Draenei = { gain = 0.75, forget = 0.5 },
			BloodElf = { gain = 0.85, forget = 0.6 },
			Dwarf = { gain = 0.9, forget = 0.75 },
		},
		-- the words of the Relationships window: the first step whose `max` is >= the multiplier
		pace = { { id = "slow", max = 0.8 }, { id = "steady", max = 1.12 }, { id = "quick", max = 99 } },
	},

	-- N2 (#214): visible levels. The levels are the disposition bands above, in order (Hated is level 1, Deep bond 9).
	-- When an NPC moves to another band through an interaction, the private narrator says so: at most `perSession`
	-- times in a session and once in `npcHours` hours for the same NPC, never in combat (a notice held in combat waits
	-- for the fight to end, at most `held` of them). Reaching a `memorable` band leaves a journal line, once per NPC
	-- and band. The texts are rel_level_up_N and rel_level_down_N of Data/<lang>/RelationsUI.lua (`variants` each).
	levels = {
		perSession = 4, npcHours = 20, held = 3, variants = 3,
		memorable = { friend = true, close = true, bond = true, enemy = true, hated = true },
	},

	-- N4 (#216): promises and oaths. Accepting a quest from an NPC is a word given to them; only the quest id, the
	-- giver's npcID and times are kept (never a quest title or text).
	--   maxDays      an open promise older than this is forgotten without a word (the end of the quest was missed)
	--   max          open promises kept at most (the oldest go first; the quest log holds far fewer)
	--   settle       seconds to wait after a quest leaves the log for its turn-in before calling it abandoned
	--   remindDays   a promise open this long: the giver reminds you of it when you meet them
	--   remindHours  the same promise is not recalled again for this many hours
	--   lateDays     a promise kept after this many days brings relief, if you hand it to the giver
	--   perSession   the promise notices of a session (reminders, relief, broken words, oaths remembered)
	--   variants     the texts rel_promise_*_N and rel_oath_*_N of Data/<lang>/RelationsUI.lua
	-- An oath: a promise to an NPC already at `oath.band` or above. With `oath.curated` only the NPCs of the curated
	-- register (Data/NPCs.lua) swear oaths; otherwise any NPC whose name the addon kept. Breaking one leaves a mark on
	-- the NPC (`marks.npcDays`, divided by the NPC's `forget`: long-lived peoples remember longer) and on the map where
	-- it was sworn, their town or city (`marks.cityDays`). A mark fades evenly to nothing; while it lasts, the trust
	-- that the NPC (`npcTrust`) or anyone met on that map (`cityTrust`) can gain is multiplied by down to that factor.
	-- Narration only: the marks change the addon's own numbers and words, never how anyone behaves in the game.
	promises = {
		maxDays = 120, max = 40, settle = 3, remindDays = 7, remindHours = 20, lateDays = 7, perSession = 4,
		variants = 3,
		oath = { band = "friend", curated = false },
		marks = { npcDays = 240, cityDays = 90, npcTrust = 0.25, cityTrust = 0.6 },
	},

	-- N3 (#215): romance with an NPC. Only with the optional attraction axis on (relations.attraction, off by default).
	-- Two fixed rules that no setting changes (owner decision of 2026-11-01): the NPC is of the opposite sex to the
	-- character (UnitSex of both, read from the client: an unknown sex gives nothing) and is humanoid (UnitCreatureType).
	-- Attraction grows slowly and only from a positive interaction with an NPC that was already at `minLevel` or above
	-- before it; a source that is not in `gain` (every merchant source, the flight master) gives none. The temperament
	-- of the NPC multiplies the gain and the cap, as for the other axes. Narration only: nothing changes in the game.
	--   gain     attraction points per interaction, by source (config.increments)
	--   decay    diminishing returns within the day, over all the sources together
	--   cap      daily cap of attraction with one NPC
	--   humanoid UnitCreatureType's second value (the creature type id) or its name, for a client that gives only that
	--   vow      the top of the romance: with `attraction` or more and the derived label `label`, a private vow is
	--            written in the journal once per NPC, and the private narrator says it once (rel_vow_N, `variants`)
	romance = {
		minLevel = "friend",
		gain = { gossip = 0.6, quest_accept = 0.8, quest_turnin = 1.2, binder = 0.6, trainer = 0.3, ambient_talk = 0.5 },
		decay = 0.6, cap = 2,
		humanoid = { id = 7, names = { "Humanoid", "Umanoide" } },
		vow = { attraction = 80, label = "lover", variants = 3 },
	},

	-- N5 (#217): favours. A named NPC at `band` or above may ask a small favour when you meet them (with `chance`), one
	-- the game can check by itself through events the addon already listens to. It completes by itself: a reward in the
	-- relationship (the `reward` row of increments, or the template's own) and a journal line. At most one open favour
	-- per NPC and `max` in all; `perSession` asks in a session; after a favour (done or lapsed) the same NPC waits
	-- `restDays` days before asking again. A favour not done within its `days` lapses without a word and without a cost.
	-- Narration only: the NPC never behaves differently in the game, and nothing goes to chat.
	-- Templates: `id` (the texts rel_favour_ask_<id>_N, rel_favour_done_<id>_N and rel_favour_what_<id> of
	-- Data/<lang>/RelationsUI.lua, `variants` each), `kind` (what the engine checks, below), `days` (the time to do it),
	-- `wait` (hours before it can be done), `roles` (only NPCs with one of these roles ask it; none = anyone).
	--   return  come back: a meeting with the same NPC from `wait` hours on ("come back tomorrow")
	--   buy     buy from me: a purchase from the same NPC from `wait` hours on (only a merchant's role asks it)
	--   rest    rest at my inn: the character is resting on the map where it was asked, from `wait` hours on (at a login
	--           or when the rested state begins), as when you stay the night (only an innkeeper asks it)
	--   visit   go to a zone of `places` (on the asking NPC's continent, for the character's level, not the zone you
	--           are in), then come back to the NPC: entering the zone is noted, the next meeting completes it
	-- `places`: zone names of the English client (as in Data/Places.lua, which gives the continent) and a level range.
	favours = {
		band = "friend", chance = 0.35, perSession = 2, max = 3, restDays = 3, variants = 3, reward = "favour_done",
		templates = {
			{ id = "return", kind = "return", days = 3, wait = 18 },
			{ id = "buy", kind = "buy", days = 4, wait = 1, roles = { "merchant" } },
			{ id = "rest", kind = "rest", days = 3, wait = 6, roles = { "innkeeper" } },
			{ id = "visit", kind = "visit", days = 7 },
		},
		places = {
			{ zone = "Elwynn Forest", min = 1, max = 12 }, { zone = "Dun Morogh", min = 1, max = 12 },
			{ zone = "Tirisfal Glades", min = 1, max = 12 }, { zone = "Westfall", min = 9, max = 20 },
			{ zone = "Loch Modan", min = 9, max = 20 }, { zone = "Silverpine Forest", min = 9, max = 20 },
			{ zone = "Redridge Mountains", min = 14, max = 26 }, { zone = "Duskwood", min = 18, max = 32 },
			{ zone = "Wetlands", min = 20, max = 32 }, { zone = "Hillsbrad Foothills", min = 20, max = 34 },
			{ zone = "Arathi Highlands", min = 28, max = 42 }, { zone = "Stranglethorn Vale", min = 30, max = 47 },
			{ zone = "The Hinterlands", min = 40, max = 52 }, { zone = "Stormwind City", min = 1, max = 60 },
			{ zone = "Ironforge", min = 1, max = 60 }, { zone = "Undercity", min = 1, max = 60 },
			{ zone = "Durotar", min = 1, max = 12 }, { zone = "Mulgore", min = 1, max = 12 },
			{ zone = "Teldrassil", min = 1, max = 12 }, { zone = "Darkshore", min = 10, max = 22 },
			{ zone = "The Barrens", min = 10, max = 27 }, { zone = "Ashenvale", min = 18, max = 32 },
			{ zone = "Stonetalon Mountains", min = 15, max = 28 }, { zone = "Thousand Needles", min = 24, max = 37 },
			{ zone = "Desolace", min = 30, max = 42 }, { zone = "Dustwallow Marsh", min = 35, max = 47 },
			{ zone = "Feralas", min = 40, max = 52 }, { zone = "Tanaris", min = 40, max = 52 },
		},
	},

	-- N5 (#217): nicknames. A named NPC at `band` or above gives the character a nickname once, when you meet them: the
	-- private narrator says it and the journal keeps it. It is kept with the NPC (its id) and their lines use it with
	-- the placeholder {nickname} (the condition relNick). Chosen from curated lists: the deeds first (every group whose
	-- `when` holds: `quests` handed to this NPC, `favours` done for them, the character's `level`, `days` since you
	-- met), otherwise the lists of the character's class and race together with `any`. The same NPC always picks the
	-- same entry of a list. A language with gender writes { masculine, feminine }; the character's sex chooses.
	nicknames = {
		band = "close", variants = 3,
		deeds = {
			{ when = { favours = 3 }, names = {
				{ id = "good_turn", en = "Good Turn", it = "Buonafatta" },
				{ id = "ready_hand", en = "Ready-Hand", it = "Manolesta" } } },
			{ when = { quests = 8 }, names = {
				{ id = "errand_runner", en = "Errand-Runner", it = { "Galoppino", "Galoppina" } },
				{ id = "never_late", en = "Never-Late", it = "Puntuale" } } },
			{ when = { level = 50, days = 60 }, names = {
				{ id = "old_road", en = "Old Road", it = "Vecchia Strada" } } },
		},
		classes = {
			WARRIOR = { { id = "anvil", en = "Anvil", it = "Incudine" }, { id = "iron_shins", en = "Iron-Shins", it = "Stinchi di Ferro" } },
			PALADIN = { { id = "lantern", en = "Lantern", it = "Lanterna" }, { id = "bright_shield", en = "Bright-Shield", it = "Scudo Lucente" } },
			HUNTER = { { id = "far_eye", en = "Far-Eye", it = "Occhio Lungo" }, { id = "quiet_step", en = "Quiet-Step", it = "Passo Lieve" } },
			ROGUE = { { id = "shadow_coin", en = "Shadow-Coin", it = "Moneta d'Ombra" }, { id = "light_fingers", en = "Light-Fingers", it = "Dita Leste" } },
			PRIEST = { { id = "candle", en = "Candle", it = "Candela" }, { id = "kind_word", en = "Kind-Word", it = "Buona Parola" } },
			SHAMAN = { { id = "storm_child", en = "Storm-Child", it = { "Figlio della Tempesta", "Figlia della Tempesta" } },
				{ id = "stone_listener", en = "Stone-Listener", it = "Ascoltapietre" } },
			MAGE = { { id = "spark", en = "Spark", it = "Scintilla" }, { id = "ink_sleeves", en = "Ink-Sleeves", it = "Maniche d'Inchiostro" } },
			WARLOCK = { { id = "ember", en = "Ember", it = "Brace" }, { id = "night_reader", en = "Night-Reader", it = { "Lettore Notturno", "Lettrice Notturna" } } },
			DRUID = { { id = "oak_heart", en = "Oak-Heart", it = "Cuor di Quercia" }, { id = "moss_cloak", en = "Moss-Cloak", it = "Manto di Muschio" } },
		},
		races = {
			Human = { { id = "plough_born", en = "Plough-Born", it = { "Figlio dei Campi", "Figlia dei Campi" } },
				{ id = "lamplighter", en = "Lamplighter", it = "Accendilume" } },
			Dwarf = { { id = "stout_heart", en = "Stout-Heart", it = "Cuor Saldo" }, { id = "firm_foot", en = "Firm-Foot", it = "Piè Fermo" } },
			NightElf = { { id = "moon_walker", en = "Moon-Walker", it = "Camminaluna" }, { id = "long_memory", en = "Long-Memory", it = "Memoria Lunga" } },
			Gnome = { { id = "cog", en = "Cog", it = "Ingranaggio" }, { id = "pocket_giant", en = "Pocket-Giant", it = "Gigante Tascabile" } },
			Orc = { { id = "red_tusk", en = "Red-Tusk", it = "Zanna Rossa" }, { id = "stone_laugh", en = "Stone-Laugh", it = "Risata di Pietra" } },
			Scourge = { { id = "cold_hands", en = "Cold-Hands", it = "Mani Fredde" }, { id = "night_owl", en = "Night-Owl", it = { "Nottambulo", "Nottambula" } } },
			Tauren = { { id = "tall_grass", en = "Tall-Grass", it = "Erba Alta" }, { id = "long_stride", en = "Long-Stride", it = "Passo Lungo" } },
			Troll = { { id = "loose_tide", en = "Loose-Tide", it = "Marea Sciolta" }, { id = "quick_grin", en = "Quick-Grin", it = "Sorriso Lesto" } },
			BloodElf = { { id = "gilded", en = "Gilded", it = { "Dorato", "Dorata" } } },
			Draenei = { { id = "far_star", en = "Far-Star", it = "Stella Lontana" } },
		},
		any = {
			{ id = "wanderer", en = "Wanderer", it = "Viandante" },
			{ id = "dust_boots", en = "Dust-Boots", it = "Stivali Impolverati" },
			{ id = "stranger_no_more", en = "Stranger-No-More", it = { "Non Più Straniero", "Non Più Straniera" } },
			{ id = "rain_cloak", en = "Rain-Cloak", it = "Mantello di Pioggia" },
			{ id = "road_friend", en = "Road-Friend", it = { "Amico di Strada", "Amica di Strada" } },
		},
	},

	-- N6 (#218): local reputation. Narration only: nothing here changes how anyone behaves in the game.
	-- A town is where you meet an NPC: the subzone (Goldshire), or the whole city in a capital (`capital` in
	-- Data/Places.lua). In the open (no subzone) and in instances there is none. `aliases` folds a building that the
	-- client names on its own into its town (English client names, from Classic Era: to verify in Forever with /au place).
	-- At most `max` towns are remembered (the oldest without a title go first).
	--   word     word gets around: `share` of every change an interaction or a promise makes to an NPC's `axes` goes to
	--            the word of their town, both ways, never beyond `limit` per axis (sources in `skip` do not spread).
	--            The other NPCs of the town hear it the next time you meet them, a newcomer all of it at the first
	--            meeting, multiplied by their temperament. The word is `good` (or `bad`) from a disposition of
	--            `notice` (or -`notice`): a newcomer then greets you warmer (or colder), and the narrator may say so.
	--   esteem   the sum of the disposition of the NPCs of the town (each counted within -`perNpc`..`perNpc`) plus
	--            `perQuest` for each quest turned in there.
	--   titles   honorary titles in the spirit of the thanes: the highest whose `esteem` is reached, with at least
	--            `minNpcs` NPCs known there. A title is kept while the esteem stays above `keep` x its threshold; a town
	--            that remembers a broken oath (N4 `promises.marks.cityDays`) withholds it while the mark lasts, and
	--            gives no new one. `name`: the title, %s is the town (a language with gender lists { male, female }).
	--   perSession, variants  the private notices of a session (word, title, rival) and the texts rel_word_*_N,
	--            rel_title_N, rel_rival_*_N of Data/<lang>/RelationsUI.lua
	towns = {
		max = 60, perSession = 3, variants = 3,
		aliases = {
			["Lion's Pride Inn"] = "Goldshire",
			["Scarlet Raven Tavern"] = "Darkshire",
			["Thunderbrew Distillery"] = "Kharanos",
			["Stoutlager Inn"] = "Thelsamar",
			["Gallows' End Tavern"] = "Brill",
		},
		word = { share = 0.25, limit = 15, notice = 6,
			axes = { trust = true, respect = true, affection = true, loyalty = true },
			skip = { rival_noticed = true } },
		esteem = { perNpc = 60, perQuest = 4, minNpcs = 3, keep = 0.75 },
		titles = {
			{ id = "friend", esteem = 120, name = { en = "Friend of %s", it = { "Amico di %s", "Amica di %s" } } },
			{ id = "champion", esteem = 280, name = { en = "Champion of %s", it = { "Campione di %s", "Campionessa di %s" } } },
		},
	},

	-- N6 (#218): NPC rivalries. The pairs are curated in Data/NPCs.lua (NS:RegisterRivalries). When you meet an NPC
	-- whose rival is already at `band` or above with you, they notice, once for that rival: `rival_noticed` of
	-- `increments` above (their own numbers only) and a private notice, ironic from a temperament in `ironic`, jealous
	-- otherwise (rel_rival_ironic_N, rel_rival_jealous_N). The condition `relRival` lasts `days` days after.
	rivalries = {
		band = "friend", days = 30,
		ironic = { cheerful = true, merciful = true, melancholic = true },
	},
})
