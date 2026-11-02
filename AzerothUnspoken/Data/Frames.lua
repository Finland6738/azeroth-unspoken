-- Cornici narrative: trasformano una frase parlata in un'emote.
-- {line} è la frase scelta; il gioco antepone il nome del personaggio.
-- R3 (#90, ADR 0029): a frame may declare `styles` (it tells only phrases of a near register) and `themes` (only
-- phrases of one of those themes, and it is preferred for them). A frame used in the last interventions weighs less,
-- whatever the event. "says" and "murmurs" are the plain fallback: light, and tied to the registers they suit.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_frames",
	name = "Base: cornici narrative",
	frames = {
		-- valide per ogni evento: le più neutre, di ripiego
		{ id = "frame.says", styles = { "everyday", "epic", "ceremonial" }, it = "dice: «{line}»", en = "says, \"{line}\"",
			weight = 0.15 },
		{ id = "frame.murmurs", styles = { "intimate", "tragic", "ancient" }, it = "mormora: «{line}»",
			en = "murmurs, \"{line}\"", weight = 0.15 },

		-- valide per ogni evento, legate al registro (#90)
		{ id = "frame.shrug", styles = { "ironic" }, it = "alza le spalle. «{line}»", en = "shrugs. \"{line}\"" },
		{ id = "frame.grin", styles = { "ironic" }, it = "fa un mezzo sorriso storto. «{line}»", en = "gives a crooked half smile. \"{line}\"" },
		{ id = "frame.gaze", styles = { "tragic", "intimate" }, it = "abbassa lo sguardo. «{line}»", en = "lowers {g:his|her} gaze. \"{line}\"" },
		{ id = "frame.face", styles = { "intimate" }, it = "si passa una mano sul viso. «{line}»", en = "passes a hand over {g:his|her} face. \"{line}\"" },
		{ id = "frame.voice", styles = { "epic" }, it = "alza la voce, perché tutti sentano. «{line}»", en = "raises {g:his|her} voice for all to hear. \"{line}\"" },
		{ id = "frame.far", styles = { "ancient" }, it = "guarda lontano, oltre le cose vicine. «{line}»", en = "looks far off, past what is near. \"{line}\"" },
		{ id = "frame.neck", styles = { "everyday" }, it = "si gratta la nuca. «{line}»", en = "scratches the back of {g:his|her} neck. \"{line}\"" },
		{ id = "frame.formal", styles = { "ceremonial" }, it = "china il capo, con voce misurata. «{line}»", en = "bows {g:his|her} head and speaks with measured words. \"{line}\"" },

		-- valide per ogni evento, legate al tema (#90): preferite per le frasi di quel tema
		{ id = "frame.silence", themes = { "loss", "mortality" }, styles = { "tragic", "intimate", "ancient" }, it = "resta in silenzio a lungo, poi: «{line}»", en = "is silent for a long moment, then: \"{line}\"" },
		{ id = "frame.shoulders", themes = { "courage", "duty", "glory" }, styles = { "epic", "ceremonial" }, it = "raddrizza le spalle. «{line}»", en = "squares {g:his|her} shoulders. \"{line}\"" },
		{ id = "frame.heart", themes = { "faith", "hope" }, styles = { "ceremonial", "ancient", "intimate" }, it = "posa una mano sul cuore. «{line}»", en = "lays a hand upon {g:his|her} heart. \"{line}\"" },
		{ id = "frame.eyes", themes = { "faith", "magic", "mystery" }, it = "chiude gli occhi un istante. «{line}»", en = "closes {g:his|her} eyes for an instant. \"{line}\"" },
		{ id = "frame.laugh", themes = { "humour" }, it = "trattiene a stento una risata. «{line}»", en = "barely holds back a laugh. \"{line}\"" },
		{ id = "frame.nearby", themes = { "fellowship", "home" }, styles = { "everyday", "intimate", "ironic" }, it = "sorride a chi ha vicino. «{line}»", en = "smiles at those nearby. \"{line}\"" },
		{ id = "frame.away", themes = { "memory", "home", "solitude" }, it = "per un attimo sembra altrove. «{line}»", en = "for a moment seems far away. \"{line}\"" },
		{ id = "frame.teeth", themes = { "wrath" }, it = "stringe i denti. «{line}»", en = "grits {g:his|her} teeth. \"{line}\"" },
		{ id = "frame.shoulder", themes = { "fear" }, it = "si guarda alle spalle. «{line}»", en = "glances over {g:his|her} shoulder. \"{line}\"" },
		{ id = "frame.breath", themes = { "fatigue" }, it = "riprende fiato prima di parlare. «{line}»", en = "catches {g:his|her} breath before speaking. \"{line}\"" },
		{ id = "frame.air", themes = { "nature", "landscape" }, it = "respira a fondo l'aria del luogo. «{line}»", en = "breathes deep of the air here. \"{line}\"" },
		{ id = "frame.strap", themes = { "journey" }, it = "si sistema la cinghia della sacca. «{line}»", en = "adjusts the strap of {g:his|her} pack. \"{line}\"" },
		{ id = "frame.palm", themes = { "magic", "growth" }, it = "si guarda il palmo della mano. «{line}»", en = "studies the palm of {g:his|her} hand. \"{line}\"" },

		-- battaglia
		{ event = { "battle", "threat" }, it = "snuda l'arma, e la sua voce si alza sopra il fragore: «{line}»", en = "bares steel, and {g:his|her} voice rises above the din: \"{line}\"" },
		{ event = { "battle", "threat" }, it = "pianta i piedi nella terra e grida: «{line}»", en = "plants {g:his|her} feet in the earth and roars, \"{line}\"" },
		{ event = { "battle", "threat" }, it = "fissa il nemico senza battere ciglio. «{line}»", en = "stares down the foe without blinking. \"{line}\"" },
		{ event = "battle", when = { class = "WARRIOR" }, it = "batte l'arma contro lo scudo, una volta, due volte. «{line}»", en = "strikes weapon against shield, once, twice. \"{line}\"" },
		{ event = "battle", when = { class = "MAGE" }, it = "intreccia le dita, e l'aria intorno a {g:lui|lei} crepita. «{line}»", en = "weaves {g:his|her} fingers, and the air around {g:him|her} crackles. \"{line}\"" },
		{ event = "battle", when = { class = "WARLOCK" }, it = "sorride, e per un istante la sua ombra non {g:lo|la} segue. «{line}»", en = "smiles, and for a moment {g:his|her} shadow does not follow. \"{line}\"" },
		{ event = "battle", when = { class = "PRIEST" }, it = "alza una mano, e una luce fredda si accende nel suo palmo. «{line}»", en = "raises a hand, and a cold light kindles in the palm. \"{line}\"" },
		{ event = "battle", when = { class = "PALADIN" }, it = "solleva il martello verso il cielo. «{line}»", en = "lifts {g:his|her} hammer toward the sky. \"{line}\"" },
		{ event = "battle", when = { class = "ROGUE" }, it = "fa roteare un pugnale tra le dita e sussurra: «{line}»", en = "spins a dagger between {g:his|her} fingers and whispers, \"{line}\"" },
		{ event = "battle", when = { class = "HUNTER" }, it = "incocca senza fretta, come chi ha già scelto il punto. «{line}»", en = "nocks an arrow without haste, as one who has already chosen the spot. \"{line}\"" },
		{ event = "battle", when = { class = "SHAMAN" }, it = "batte il piede, e la terra risponde con un brontolio. «{line}»", en = "stamps once, and the earth answers with a rumble. \"{line}\"" },
		{ event = "battle", when = { class = "DRUID" }, it = "china il capo; qualcosa di selvatico si muove nei suoi occhi. «{line}»", en = "lowers {g:his|her} head; something wild stirs in {g:his|her} eyes. \"{line}\"" },

		-- vittoria
		{ event = "victory", it = "abbassa l'arma e riprende fiato. «{line}»", en = "lowers {g:his|her} weapon and catches {g:his|her} breath. \"{line}\"" },
		{ event = "victory", it = "pulisce la lama sull'erba, lentamente. «{line}»", en = "wipes the blade on the grass, slowly. \"{line}\"" },
		{ event = "victory", it = "guarda i caduti a lungo prima di parlare. «{line}»", en = "looks long upon the fallen before speaking. \"{line}\"" },

		-- ferite gravi
		{ event = "lowhp", it = "barcolla, si porta una mano al fianco, e stringe i denti. «{line}»", en = "staggers, presses a hand to {g:his|her} side, and grits {g:his|her} teeth. \"{line}\"" },
		{ event = "lowhp", it = "sputa sangue e si rialza a fatica. «{line}»", en = "spits blood and drags {g:himself|herself} up. \"{line}\"" },

		-- incantesimi
		{ event = { "attack", "heal", "buff" }, it = "pronuncia l'incantesimo, e le parole antiche bruciano nell'aria. «{line}»", en = "speaks {spell}, and the old words burn in the air. \"{line}\"" },
		{ event = "heal", it = "posa una mano su {target}. «{line}»", en = "lays a hand upon {target}. \"{line}\"" },
		{ event = "rezother", it = "si inginocchia accanto a {target} e chiama nel buio. «{line}»", en = "kneels beside {target} and calls into the dark. \"{line}\"" },

		-- viaggio, livello, esplorazione, momenti sociali
		{ event = "travel", it = "chiude gli occhi, mentre il mondo si scolora. «{line}»", en = "closes {g:his|her} eyes as the world fades. \"{line}\"" },
		{ event = "levelup", it = "chiude il pugno, sentendo una forza nuova. «{line}»", en = "closes {g:his|her} fist, feeling a new strength. \"{line}\"" },
		{ event = { "zone", "muse" }, it = "si ferma a guardare l'orizzonte. «{line}»", en = "pauses to look at the horizon. \"{line}\"" },
		{ event = { "zone", "muse" }, it = "parla piano, più a sé che agli altri. «{line}»", en = "speaks softly, more to {g:himself|herself} than to anyone. \"{line}\"" },
		{ event = "toast", it = "alza il boccale. «{line}»", en = "raises {g:his|her} tankard. \"{line}\"" },
		{ event = "greet", it = "china il capo in segno di saluto. «{line}»", en = "inclines {g:his|her} head in greeting. \"{line}\"" },
		{ event = "farewell", it = "si volta un'ultima volta prima di andare. «{line}»", en = "turns back one last time before leaving. \"{line}\"" },
		{ event = "pray", it = "si inginocchia e abbassa la voce. «{line}»", en = "kneels and lowers {g:his|her} voice. \"{line}\"" },
		{ event = "jest", it = "sogghigna. «{line}»", en = "smirks. \"{line}\"" },

		-- #123 (ADR 0044): recall and reading frames. A literary piece the songbook says was heard (or read) comes back
		-- as a memory, in the inner voice, with the same id and the same text: the frame takes the place of the piece's
		-- first line (its attribution) and {line} is the rest, verse by verse. `mode`: recall (heard: said or sung) or
		-- reading (read: carved or written); `genres`: the genres it brings back; `styles`: the registers it suits
		-- (StyleResolver:Compatible). Never an emote, never in chat (D16). First person, like the inner voice.
		{ id = "frame.recall.kept", mode = "recall", genres = { "verse", "formula", "song" },
			styles = { "intimate", "everyday", "ancient" },
			en = "Words I heard once come back whole, without my looking for them:\n{line}",
			it = "Tornano parole sentite una volta, intere, senza che le cerchi:\n{line}" },
		{ id = "frame.recall.tune", mode = "recall", genres = { "song" }, styles = { "everyday", "ironic", "intimate" },
			en = "A tune I heard somewhere starts up again in my head:\n{line}",
			it = "Un motivo sentito chissà dove mi riprende in testa:\n{line}" },
		{ id = "frame.recall.solemn", mode = "recall", genres = { "song", "verse", "formula" },
			styles = { "ceremonial", "tragic", "epic", "ancient" },
			en = "From further back than this road, the words return:\n{line}",
			it = "Da più lontano di questa strada, le parole tornano:\n{line}" },
		{ id = "frame.recall.told", mode = "recall", genres = { "tale", "prose" },
			en = "A story I heard once comes back, the way it was told:\n{line}",
			it = "Torna una storia sentita una volta, così come fu raccontata:\n{line}" },
		{ id = "frame.reading.stone", mode = "reading", genres = { "epigraph" }, styles = { "ancient", "ceremonial", "intimate" },
			en = "The words cut in that stone come back to me, letter by letter:\n{line}",
			it = "Le parole incise in quella pietra mi tornano, lettera per lettera:\n{line}" },
		{ id = "frame.reading.page", mode = "reading", genres = { "epigraph", "prose" }, styles = { "intimate", "everyday", "tragic" },
			en = "Lines I read once, somewhere, come back as they were written:\n{line}",
			it = "Righe lette una volta, chissà dove, tornano come erano scritte:\n{line}" },
	},
})
