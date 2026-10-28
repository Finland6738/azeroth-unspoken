-- Cornici narrative: trasformano una frase parlata in un'emote.
-- {line} è la frase scelta; il gioco antepone il nome del personaggio.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_frames",
	name = "Base: cornici narrative",
	frames = {
		-- valide per ogni evento
		{ it = "dice: «{line}»", en = "says, \"{line}\"", weight = 0.6 },
		{ it = "mormora: «{line}»", en = "murmurs, \"{line}\"", weight = 0.5 },

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
		{ event = { "attack", "heal", "buff" }, it = "pronuncia {spell}, e le parole antiche bruciano nell'aria. «{line}»", en = "speaks {spell}, and the old words burn in the air. \"{line}\"" },
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
	},
})
