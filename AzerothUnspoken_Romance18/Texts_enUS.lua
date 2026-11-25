-- English texts of the Romance 18+ samples (ADR 0061, step R4); the rules are in Registry.lua. Mature, never
-- graphic: adults only, consent always, nothing about a minor. The NPC's lines fit an NPC of either sex; {other} is
-- the NPC's name.
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("romance18_base", function()
	AU:AddTexts("enUS", {
		["r18.welcome.t3.n1"] = {
			"Bar the door and leave the candle. I have wanted this since supper, and I am done pretending otherwise. Come here.",
			"Yes. Come closer, slowly. Tonight I want to learn the rhythm of your breath against my neck.",
			"The inn is asleep. Stay, and let the night be ours until the window turns gray.",
		},
		["r18.welcome.t3.n2"] = {
			"You took your time asking. I was about to blow out the candle and ask you myself.",
			"Your armor first, then mine. I will not be kissed through a breastplate tonight.",
			"Is that an invitation? Good. I accept, and I am not planning on much sleep.",
		},
		["r18.welcome.t3.beloved"] = {
			"Come to bed, my heart. Every night with you still feels like the first, only surer.",
			"My love. Let the world wait outside the door; in here there is only you, and all of me.",
			"I vowed you my days. The nights were always yours. Come, and take your time.",
		},
		["r18.cold.t3.n1"] = {
			"Not tonight, love. The road took everything I had. Lie with me and just hold me; the rest will keep.",
			"I want you, I do, but I can barely keep my eyes open. Ask me again at dawn, and I may ask first.",
			"Tomorrow, I promise. Tonight, only your warmth beside me, and sleep.",
		},
		["r18.refuse.t3.n1"] = {
			"No, love. Not this, not tonight. Nothing between us is lessened by it; sit with me a while, and that is enough.",
			"I am saying no, and I know you will hear it. I love you exactly as much as I did a moment ago.",
			"No. Tonight I would rather just talk, by the fire. Stay, if you like; I would like that very much.",
		},
		["r18.scene.vow.open.t3"] = {
			"The inn has gone quiet below, and the last candle throws your shadows long across the boards. {other} sits on the edge of the bed, armor laid aside, watching you with a look you have never seen before: open, unguarded, waiting. The words you have carried for days are right there. You cross the room, take {other}'s hands in yours, and the question rises between you like breath on a cold night: will you have me, for good?",
			"Rain ticks against the shutters, and the fire has burned down to a red glow. {other} has been quiet beside you a long while, close enough that you feel every breath. You have never wanted anything the way you want this: not one night, but all of them. Your heart is loud in the hush. You turn, meet {other}'s eyes, and let the promise take shape in the dark between you, unfinished, waiting for an answer.",
		},
		["r18.scene.vow.welcome.t3"] = {
			"{other} answers before you can finish, a yes breathed against your lips and then a kiss in no hurry to end. Hands find buckles you forgot you wore; soft, unsteady laughter when one sticks. The candle gutters. You are drawn into warmth, into the slow certainty of someone who has chosen you and means it, and the night closes over you both like deep water. Whatever else is said, it is said without words.",
			"The yes comes as a laugh, bright and wet-eyed, and then {other} is kissing you as if to seal the vow before the world can hear it. Someone reaches for the lamp; no one gets there. Cloaks fall where they fall. There is the warmth of {other} against you, your name in a whisper, the inn hushed around you like a held breath, and then only the dark and the two of you in it, unhurried, until the moon slides past the window.",
		},
		["r18.inner.welcome.t3"] = {
			"Wanted. Not just for tonight; wanted. You hold the thought close, like a coal in cupped hands.",
			"Slow down. Remember this. Every breath of it.",
			"So this is what it is to be chosen, and to choose back.",
		},
		["r18.inner.refuse.t3"] = {
			"Not tonight, then. You find you do not mind; holding and being held is its own kind of answer.",
			"A no, said with love. You take it as it was given, and love back the same.",
			"There will be other nights. This one can simply be kind.",
		},
	}, "romance18_base")
end)
