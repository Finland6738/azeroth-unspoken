-- English interface texts for the ambient dialogues (S8): label, buttons, the reasons there is no dialogue and the
-- /au npc command. The lines themselves are in Data/enUS/Dialogues.lua.
local ADDON, NS = ...

NS:RegisterLanguage("en", {
	ui = {
		npc_badge = "addon ambient dialogue",
		npc_badge_tip = "This conversation is made up by the addon: it is not the real NPC speaking, it never appears in chat and it changes no quests, vendors or other game windows. Close it whenever you like.",
		npc_btn_open = "Listen (ambient dialogue)",
		npc_btn_close = "Close",
		npc_tip_close = "Close the dialogue now",
		npc_test_name = "Test innkeeper",
		npc_test_tag = "test",
		mem_kind_npc_talk = "A chat",
		-- why there is no dialogue (identity)
		npc_no_no_target = "No NPC in front of you: select one, or open their vendor, flight or training window.",
		npc_no_secret = "The game hides this NPC's identity: no dialogue.",
		npc_no_player = "Ambient dialogues are only with NPCs, never with other players.",
		npc_no_hostile = "There is no dialogue with a hostile creature.",
		npc_no_dead = "There is no dialogue with someone who cannot answer.",
		npc_no_uncertain = "I am not sure who this is, and I will not guess: no dialogue. Open their vendor, flight or training window, or tell me yourself with /au npc role <role>.",
		npc_no_no_script = "I do not have a dialogue for this NPC yet.",
		npc_no_unknown = "No dialogue is possible right now.",
		-- why it does not open (permissions)
		npc_refused_disabled = "The addon is off.",
		npc_refused_module = "NPC dialogues are off (settings, the \"NPC dialogues\" module).",
		npc_refused_no_ui = "The dialogue window could not be built (see /au debug).",
		npc_refused_screen = "Not during a cinematic.",
		npc_refused_combat = "Not during combat.",
		npc_refused_dead = "Not while dead.",
		npc_refused_busy = "A dialogue is already open.",
		npc_refused_no_line = "I have nothing to say right now.",
		npc_refused_not_offered = "No dialogue to open.",
		npc_refused_not_choosing = "You cannot choose right now.",
		npc_refused_no_choice = "That answer is not there.",
		npc_refused_no_script = "I do not have a dialogue for this NPC yet.",
		npc_refused_paused = "The narrator is paused.",
		npc_refused_silent = "Intensity is zero: dialogues open only by hand.",
		npc_refused_no_auto = "The automatic offer is off.",
		npc_refused_unknown = "The dialogue cannot open right now.",
		-- /au npc command
		npc_none_open = "No dialogue is open.",
		npc_already_open = "A dialogue is already open: /au npc close closes it.",
		npc_offer_on = "When you open a vendor, flight or training window or talk to a known NPC, the ambient dialogue button appears.",
		npc_offer_off = "The ambient dialogue button no longer appears by itself: open it with /au npc or the key binding.",
		npc_role_bad = "Roles: innkeeper, merchant, guard, flightmaster, trainer, banker.",
		npc_role_set = "Understood: for the addon this is \"%s\". It counts as your classification; change it with /au who trait role <role>.",
		npc_not_listed = "This NPC is not in the relations list yet: talk to them once with the Blizzard dialogue and try again.",
	},
})
