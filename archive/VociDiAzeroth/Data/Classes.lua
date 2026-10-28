-- Database di base: voci delle classi, su più eventi
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_classes",
	name = "Base: voci delle classi",
	phrases = {
		------------------------------------------------------------------
		-- Guerriero
		------------------------------------------------------------------
		{ id = "cls.war.battle.01", event = "battle", tone = "feroce", when = { class = "WARRIOR" },
			it = "Ho fatto la pace con la morte molto tempo fa. Ora tocca a te.",
			en = "I made peace with death long ago. Now it is your turn." },
		{ id = "cls.war.battle.02", event = "battle", tone = "eroico", when = { class = "WARRIOR", group = { "party", "raid" } },
			it = "Alzate gli scudi! Il muro siamo noi!",
			en = "Shields up! We are the wall!" },
		{ id = "cls.war.victory.01", event = "victory", tone = "solenne", when = { class = "WARRIOR" },
			it = "Un'altra tacca sull'elsa. Comincio a finire lo spazio.",
			en = "Another notch on the hilt. I am running out of room." },
		{ id = "cls.war.lowhp.01", event = "lowhp", tone = "eroico", when = { class = "WARRIOR" },
			it = "Ho ancora due mani e una lama. Basta e avanza.",
			en = "I still have two hands and a blade. More than enough." },
		{ id = "cls.war.muse.01", event = "muse", tone = "malinconico", when = { class = "WARRIOR" },
			it = "Un'arma non chiede mai perché. È per questo che pesa così tanto.",
			en = "A weapon never asks why. That is why it weighs so much." },
		{ id = "cls.war.lvl.01", event = "levelup", tone = "feroce", when = { class = "WARRIOR" },
			it = "Le braccia più forti, la rabbia più calma. Ecco cosa insegna la guerra.",
			en = "Stronger arms, calmer rage. That is what war teaches." },

		------------------------------------------------------------------
		-- Paladino
		------------------------------------------------------------------
		{ id = "cls.pal.battle.01", event = "battle", tone = "solenne", when = { class = "PALADIN", ctype = { "undead", "demon" } },
			it = "Le tenebre hanno molti volti. La Luce ne ha uno solo, e oggi è il mio.",
			en = "Darkness has many faces. The Light has but one, and today it is mine." },
		{ id = "cls.pal.battle.02", event = "battle", tone = "eroico", when = { class = "PALADIN" },
			it = "Non temo il buio. Lo porto via con me, un passo alla volta.",
			en = "I do not fear the dark. I carry it away, one step at a time." },
		{ id = "cls.pal.victory.01", event = "victory", tone = "solenne", when = { class = "PALADIN" },
			it = "Giustizia è fatta. Che la misericordia faccia il resto.",
			en = "Justice is done. Let mercy do the rest." },
		{ id = "cls.pal.lowhp.01", event = "lowhp", tone = "eroico", when = { class = "PALADIN" },
			it = "La Luce non mi ha mai promesso una vita lunga. Solo una vita giusta.",
			en = "The Light never promised me a long life. Only a righteous one." },
		{ id = "cls.pal.muse.01", event = "muse", tone = "malinconico", when = { class = "PALADIN" },
			it = "Il martello è facile da sollevare. È la fede che a volte pesa come una montagna.",
			en = "The hammer is easy to lift. It is faith that sometimes weighs like a mountain." },
		{ id = "cls.pal.heal.01", event = "heal", tone = "solenne", when = { class = "PALADIN" },
			it = "Non sei {g:solo|sola}. La Luce cammina con te, e io con lei.",
			en = "You are not alone. The Light walks with you, and I with it." },

		------------------------------------------------------------------
		-- Cacciatore
		------------------------------------------------------------------
		{ id = "cls.hun.battle.01", event = "battle", tone = "solenne", when = { class = "HUNTER", ctype = "beast" },
			it = "Ti rispetto, bestia. Per questo non sbaglierò il colpo.",
			en = "I respect you, beast. That is why I will not miss." },
		{ id = "cls.hun.battle.02", event = "battle", tone = "ironico", when = { class = "HUNTER" },
			it = "Lui morde, io tiro. Abbiamo un accordo.",
			en = "He bites, I shoot. We have an arrangement." },
		{ id = "cls.hun.victory.01", event = "victory", tone = "ironico", when = { class = "HUNTER" },
			it = "Bravo, compagno. Stasera la parte migliore è tua.",
			en = "Good work, friend. Tonight the best cut is yours." },
		{ id = "cls.hun.lowhp.01", event = "lowhp", tone = "eroico", when = { class = "HUNTER" },
			it = "Indietro, fratello! Tieni la posizione, io copro la fuga!",
			en = "Fall back, friend! Hold them, I'll cover the retreat!" },
		{ id = "cls.hun.muse.01", event = "muse", tone = "mistico", when = { class = "HUNTER" },
			it = "Le orme dicono la verità più dei re. Basta saperle leggere.",
			en = "Tracks tell more truth than kings. You only have to read them." },
		{ id = "cls.hun.zone.01", event = "zone", tone = "solenne", when = { class = "HUNTER", mood = { "forest", "jungle", "plains" } },
			it = "Selvaggina, acqua, riparo. E qualcosa di grosso che non vuole essere visto.",
			en = "Game, water, shelter. And something large that does not wish to be seen." },

		------------------------------------------------------------------
		-- Ladro
		------------------------------------------------------------------
		{ id = "cls.rog.battle.01", event = "battle", tone = "oscuro", when = { class = "ROGUE" },
			it = "Non è niente di personale. Di solito.",
			en = "It's nothing personal. Usually." },
		{ id = "cls.rog.battle.02", event = "battle", tone = "ironico", when = { class = "ROGUE", targetPlayer = true },
			it = "Bel borsello. Peccato che tu non ne avrai più bisogno.",
			en = "Nice purse. Shame you won't be needing it." },
		{ id = "cls.rog.victory.01", event = "victory", tone = "ironico", when = { class = "ROGUE" },
			it = "Pulito, silenzioso, e nessuno ha visto niente. Come piace a me.",
			en = "Clean, quiet, and nobody saw a thing. Just how I like it." },
		{ id = "cls.rog.lowhp.01", event = "lowhp", tone = "ironico", when = { class = "ROGUE" },
			it = "Momento perfetto per sparire. Se solo riuscissi a stare in piedi.",
			en = "Perfect time to vanish. If only I could stand up." },
		{ id = "cls.rog.muse.01", event = "muse", tone = "oscuro", when = { class = "ROGUE" },
			it = "Tutti hanno un segreto. Io vendo i loro.",
			en = "Everyone has a secret. I sell theirs." },
		{ id = "cls.rog.greet.01", event = "greet", tone = "ironico", when = { class = "ROGUE" },
			it = "Non mi hai visto arrivare? Bene. È il mio lavoro.",
			en = "Didn't see me coming? Good. That's my job." },

		------------------------------------------------------------------
		-- Sacerdote
		------------------------------------------------------------------
		{ id = "cls.pri.battle.01", event = "battle", tone = "solenne", when = { class = "PRIEST" },
			it = "Ho benedetto molte anime. Oggi ne congederò una.",
			en = "I have blessed many souls. Today I shall dismiss one." },
		{ id = "cls.pri.battle.02", event = "battle", tone = "oscuro", when = { class = "PRIEST", race = "Scourge" },
			it = "La Luce mi ha voltato le spalle una volta. L'Ombra, mai.",
			en = "The Light turned its back on me once. The Shadow never has." },
		{ id = "cls.pri.lowhp.01", event = "lowhp", tone = "solenne", when = { class = "PRIEST" },
			it = "Curo tutti. Chi cura me? Domanda vecchia, risposta sempre uguale.",
			en = "I heal everyone. Who heals me? An old question, always the same answer." },
		{ id = "cls.pri.heal.01", event = "heal", tone = "mistico", when = { class = "PRIEST" },
			it = "Respira. La Luce è paziente, e io anche.",
			en = "Breathe. The Light is patient, and so am I." },
		{ id = "cls.pri.rezo.01", event = "rezother", tone = "solenne", when = { class = "PRIEST" },
			it = "Luce, rimanda indietro questa anima. Non ha ancora finito di sbagliare.",
			en = "Light, send this soul back. It has not finished making mistakes." },
		{ id = "cls.pri.pray.01", event = "pray", tone = "malinconico", when = { class = "PRIEST" },
			it = "Luce, dammi la forza di consolare anche quando non ho più parole.",
			en = "Light, give me the strength to comfort even when I have no words left." },

		------------------------------------------------------------------
		-- Sciamano
		------------------------------------------------------------------
		{ id = "cls.sha.battle.01", event = "battle", tone = "mistico", when = { class = "SHAMAN" },
			it = "Gli spiriti sono inquieti. Li hai offesi tu, e ora rispondono.",
			en = "The spirits are restless. You offended them, and now they answer." },
		{ id = "cls.sha.victory.01", event = "victory", tone = "solenne", when = { class = "SHAMAN" },
			it = "L'equilibrio è tornato. Per ora.",
			en = "Balance has returned. For now." },
		{ id = "cls.sha.lowhp.01", event = "lowhp", tone = "mistico", when = { class = "SHAMAN" },
			it = "Antenati, prestatemi le vostre ossa. Le mie stanno cedendo.",
			en = "Ancestors, lend me your bones. Mine are failing." },
		{ id = "cls.sha.muse.01", event = "muse", tone = "mistico", when = { class = "SHAMAN" },
			it = "Il fuoco brucia, l'acqua lava, la terra regge, il vento porta. E noi impariamo da tutti.",
			en = "Fire burns, water cleanses, earth endures, wind carries. And we learn from them all." },
		{ id = "cls.sha.zone.01", event = "zone", tone = "mistico", when = { class = "SHAMAN", mood = { "fire", "plague", "ruin" } },
			it = "Gli elementi qui sono malati. Li sento gridare sotto la pelle della terra.",
			en = "The elements here are sick. I hear them screaming beneath the skin of the earth." },
		{ id = "cls.sha.atk.01", event = "attack", tone = "mistico", when = { class = "SHAMAN", element = "fire" },
			it = "Fuoco, spirito antico, mangia!",
			en = "Fire, ancient spirit, feed!" },

		------------------------------------------------------------------
		-- Mago
		------------------------------------------------------------------
		{ id = "cls.mag.battle.01", event = "battle", tone = "ironico", when = { class = "MAGE", targetWeaker = true },
			it = "Davvero? Non sprecherò neppure una formula difficile.",
			en = "Really? I won't even waste a difficult formula." },
		{ id = "cls.mag.battle.02", event = "battle", tone = "epico", when = { class = "MAGE", elite = true },
			it = "Finalmente un problema degno di una biblioteca intera.",
			en = "At last, a problem worthy of an entire library." },
		{ id = "cls.mag.victory.01", event = "victory", tone = "ironico", when = { class = "MAGE" },
			it = "Annotazione: il fuoco risolve quasi tutto. Il resto lo risolve più fuoco.",
			en = "Note: fire solves nearly everything. The rest is solved by more fire." },
		{ id = "cls.mag.lowhp.01", event = "lowhp", tone = "ironico", when = { class = "MAGE" },
			it = "Le vesti di seta erano una pessima idea. Lo dico ogni volta.",
			en = "Silk robes were a terrible idea. I say so every time." },
		{ id = "cls.mag.muse.01", event = "muse", tone = "mistico", when = { class = "MAGE" },
			it = "Ogni incantesimo è una domanda rivolta al mondo. A volte il mondo risponde male.",
			en = "Every spell is a question put to the world. Sometimes the world answers rudely." },
		{ id = "cls.mag.travel.01", event = "travel", tone = "ironico", when = { class = "MAGE", spell = { "teleport", "teletrasporto" } },
			it = "Le strade sono per chi non ha studiato.",
			en = "Roads are for people who didn't study." },

		------------------------------------------------------------------
		-- Stregone
		------------------------------------------------------------------
		{ id = "cls.wlk.battle.01", event = "battle", tone = "oscuro", when = { class = "WARLOCK", ctype = "demon" },
			it = "Inginocchiati, demone. Conosco il tuo vero nome.",
			en = "Kneel, demon. I know your true name." },
		{ id = "cls.wlk.battle.02", event = "battle", tone = "oscuro", when = { class = "WARLOCK" },
			it = "La tua anima ha un odore delizioso. Peccato sprecarla.",
			en = "Your soul smells delicious. A pity to waste it." },
		{ id = "cls.wlk.lowhp.01", event = "lowhp", tone = "oscuro", when = { class = "WARLOCK" },
			it = "Servo, fra me e la morte! Subito!",
			en = "Minion, between me and death! Now!" },
		{ id = "cls.wlk.muse.01", event = "muse", tone = "oscuro", when = { class = "WARLOCK", time = "night" },
			it = "Di notte le voci sono più gentili. È questo che mi preoccupa.",
			en = "At night the voices are kinder. That is what worries me." },
		{ id = "cls.wlk.lvl.01", event = "levelup", tone = "oscuro", when = { class = "WARLOCK" },
			it = "Un altro patto, un'altra cicatrice invisibile. Ne vale la pena. Credo.",
			en = "Another pact, another invisible scar. Worth it. I think." },
		{ id = "cls.wlk.greet.01", event = "greet", tone = "ironico", when = { class = "WARLOCK" },
			it = "Non badare al mio amico. Morde solo quando glielo chiedo.",
			en = "Don't mind my friend. He only bites when I ask." },

		------------------------------------------------------------------
		-- Druido
		------------------------------------------------------------------
		{ id = "cls.dru.battle.01", event = "battle", tone = "feroce", when = { class = "DRUID" },
			it = "Hai minacciato il bosco. Il bosco ha artigli.",
			en = "You threatened the forest. The forest has claws." },
		{ id = "cls.dru.victory.01", event = "victory", tone = "solenne", when = { class = "DRUID" },
			it = "Ciò che cade nutre ciò che nasce. Non è crudeltà: è il ciclo.",
			en = "What falls feeds what is born. It is not cruelty: it is the cycle." },
		{ id = "cls.dru.lowhp.01", event = "lowhp", tone = "mistico", when = { class = "DRUID" },
			it = "Pelle d'orso, cuore di quercia. Non mi spezzerai.",
			en = "Bear's hide, oaken heart. You will not break me." },
		{ id = "cls.dru.muse.01", event = "muse", tone = "mistico", when = { class = "DRUID" },
			it = "Ho dormito secoli nel Sogno. Il mondo sveglio mi sembra ancora troppo rumoroso.",
			en = "I slept for ages in the Dream. The waking world still seems too loud." },
		{ id = "cls.dru.zone.01", event = "zone", tone = "malinconico", when = { class = "DRUID", mood = { "plague", "fire", "ruin" } },
			it = "La terra qui soffre. Le radici mi chiamano, e non so come aiutarle.",
			en = "The land suffers here. The roots call to me, and I do not know how to help them." },
		{ id = "cls.dru.buff.01", event = "buff", tone = "mistico", when = { class = "DRUID" },
			it = "Che la pelle ti diventi corteccia e il cuore resti verde.",
			en = "May your skin turn to bark and your heart stay green." },
	},
})
