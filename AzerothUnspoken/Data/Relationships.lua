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
		perSession = 4, npcHours = 20, held = 3, variants = 2,
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
		variants = 2,
		oath = { band = "friend", curated = false },
		marks = { npcDays = 240, cityDays = 90, npcTrust = 0.25, cityTrust = 0.6 },
	},
})
