-- Azeroth Unspoken: interface texts in English
local ADDON, NS = ...

NS:RegisterLanguage("en", {
	name = "English",
	ui = {
		classNames = {
			WARRIOR = "warrior", PALADIN = "paladin", HUNTER = { "hunter", "huntress" }, ROGUE = "rogue",
			PRIEST = { "priest", "priestess" }, SHAMAN = "shaman", MAGE = "mage", WARLOCK = "warlock", DRUID = "druid",
		},
		raceNames = {
			Human = "human", Dwarf = "dwarf", NightElf = "night elf", Gnome = "gnome", Orc = "orc",
			Scourge = "Forsaken", Tauren = "tauren", Troll = "troll", BloodElf = "blood elf",
			Draenei = "draenei", Goblin = "goblin",
		},
		factionNames = { Alliance = "Alliance", Horde = "Horde" },
		creatureNames = {
			undead = "dead thing", demon = "demon", dragon = "dragon", elemental = "elemental",
			beast = "beast", giant = "giant", mechanical = "contraption", critter = "creature",
			aberration = "aberration", humanoid = "mortal", other = "creature",
		},

		send_error = "could not send (%s)",
		preview = "preview",
		on = "on", off = "off",
		enabled = "enabled.", disabled = "disabled.",
		button_idle = "No proposal waiting. Click: the narrator proposes a line that fits the moment.",
		button_hint = "Left click: confirm and speak. Right-drag: move.",
		button_channel = "Channel: %s",

		-- the four voices (GDD §5.3)
		voice_narrator = "Narrator", voice_inner = "Inner voice", voice_character = "Character", voice_npc = "NPC",
		proposal_for = "proposal for %s", sent_to = "sent to %s",
		btn_send = "Send", btn_edit = "Edit", btn_discard = "Discard",
		tip_pause = "Pause right now (again to resume)", tip_history = "Recent history",
		tip_close = "Hide (and discard the proposal)", tip_channel = "Change channel",
		paused_on = "narrator paused. Press the key again (or /au pause) to resume.",
		paused_off = "narrator active again.",

		-- Chat Gateway
		gw_empty = "nothing to send.",
		gw_needs_action = "this channel needs an action from you: press the 'speak' key or button.",
		gw_channel_unavailable = "channel not available right now (no party, raid, guild or instance).",
		gw_flood = "too fast: wait a few seconds before sending again.",
		gw_no_sender = "the client offers no way to send to chat.",
		gw_lockdown = "chat is locked by the client right now.",
		gw_error = "could not send (%s).",
		gw_review = "proposal preview: %s\nPress again to send it, or /au cancel.",
		chat_auto_warning = "WARNING: in this mode emotes (always) and /say (in instances) are sent by themselves, in your character's name. Everything else stays a proposal to confirm.",
		chatmode_PRIVATE_short = "private narrator only",
		chatmode_PREVIEW_short = "preview",
		chatmode_CONFIRM_TO_SEND_short = "confirm to send",
		chatmode_AUTO_ONLY_IF_ALLOWED_short = "automatic (where allowed)",
		chatmode_PRIVATE_help = "Private narrator only (default): lines appear in the box and stay visible to you alone. Nothing goes to chat.",
		chatmode_PREVIEW_help = "Preview: the character's lines become proposals. The 'speak' key opens the editor, where you can change them and send with Enter.",
		chatmode_CONFIRM_TO_SEND_help = "Confirm to send: the proposal is ready and the 'speak' key or button sends it in one gesture. You can always edit or discard it.",
		chatmode_AUTO_ONLY_IF_ALLOWED_help = "Automatic where allowed: emotes go out by themselves, and /say in instances; the rest stays a proposal. A few per minute, always.",
		channel_auto = "automatic", channel_SAY = "/say", channel_EMOTE = "/emote", channel_PARTY = "party",
		channel_RAID = "raid", channel_GUILD = "guild", channel_INSTANCE_CHAT = "instance",

		-- settings
		opt_enabled = "Addon", opt_language = "Phrase language",
		opt_intensity = "Intensity", opt_depth = "Style depth",
		opt_cooldown = "Pause between lines", opt_chatmode = "Chat", opt_channel = "Default channel",
		opt_button = "'Speak' button", opt_rpname = "Name from Total RP 3",
		opt_pause = "Pause the narrator", opt_resume = "Resume the narrator",
		opt_wizard = "Reopen the setup guide",
		opt_narrator = "Narrator box", opt_duration = "Text duration",
		opt_alpha = "Opacity", opt_fontsize = "Text size", opt_locked = "Position locked",
		opt_resetpos = "Move the box back to the middle", opt_history = "History", opt_test = "Try the narrator",
		opt_modules = "Modules (* = coming, not active yet)",
		module_personal = "Personal", module_world = "World", module_npc = "NPC dialogues", module_memory = "Memory",
		module_storyArcs = "Stories", module_social = "Social", module_publicChat = "Chat proposals", module_audio = "Audio",
		depth_natural = "Natural", depth_literary = "Literary", depth_elevated = "Elevated",
		depth_natural_example = "Everyday and concise. \"These walls have stood for centuries. I wonder who lived here.\"",
		depth_literary_example = "Evocative but readable. \"The stones still keep the traces of those who called this place home.\"",
		depth_elevated_example = "Solemn and ceremonial. \"The towers fell and the voices went quiet, yet the stones still keep watch over the lost days.\"",
		preset_complete = "Complete", preset_complete_help = "All modules: character, world, NPCs, memory, stories.",
		preset_personal = "Personal RPG", preset_personal_help = "Your character: thoughts, memories, personal stories.",
		preset_world = "Narrative world", preset_world_help = "Places, atmosphere and NPCs, less introspection.",
		preset_social = "Social RP", preset_social_help = "For playing with others. Nothing is shared without your consent.",
		preset_custom = "Custom",

		mode_now = "chat: %s",
		channel_now = "default channel: %s",
		intensity_now = "intensity: %d (0 = narrator silent for spontaneous events, 50 = balanced, 100 = intense)",
		depth_now = "style depth: %s",
		lang_set = "phrase language: %s",
		lang_list = "available languages: %s. Usage: /au language <code>",
		cooldown_now = "pause between automatic lines: %d seconds",
		no_phrase = "no fitting line for '%s' right now.",
		ignored = "'%s' will no longer produce lines.", unignored = "'%s' produces lines again.",
		stats = "%d lines available in %s.",
		memory_reset = "memory of used lines cleared.",
		panel_help = "Lines available in this language: %d, from %d packs.\n\n"
			.. "In the open world WoW only allows /say after a key press or a click: the addon never writes to "
			.. "chat on its own, except in the 'automatic' mode you chose yourself. The 'speak' key and the "
			.. "immediate pause are bound under Options > Keybindings > AddOns.\n\nCommands: /au help",

		-- setup guide (GDD §12.1)
		wiz_title = "Azeroth Unspoken", wiz_step = "step %d of %d",
		wiz_step_language = "Language", wiz_step_preset = "What experience do you want?", wiz_step_intensity = "Intensity",
		wiz_step_depth = "Style", wiz_step_modules = "Modules", wiz_step_trp3 = "Total RP 3", wiz_step_chat = "Chat and test",
		wiz_language_help = "Which language should the narrator's lines be in? It does not depend on the client language.",
		wiz_preset_help = "These are combinations of the modules: you can change them any time.",
		wiz_intensity_help = "How often should the narrator speak up? It changes frequency, not length or style.",
		intensity_band_0 = "0 - Narrator silent: it speaks only when you ask.",
		intensity_band_1 = "10-20 - Very discreet: one thought in important places.",
		intensity_band_2 = "30-40 - Discreet: rare ambient comments and the odd special event.",
		intensity_band_3 = "50-60 - Balanced: atmosphere, memories and long silences.",
		intensity_band_4 = "70-80 - Lively: more light scenes.",
		intensity_band_5 = "90-100 - Intense: many chances, always with the anti-spam pauses.",
		wiz_suggested = "(suggested value)",
		wiz_depth_help = "How elevated should the language be? With today's lines it changes little; the choice applies to future content.",
		wiz_modules_help = "Pick the modules. Those marked * arrive in later versions: you can already set them. The Social module shares nothing without your explicit consent and is off by default.",
		wiz_social_consent = "Social RP: joining scenes with other players will always be voluntary (opt-in) and shares no memories or data without your consent.",
		wiz_trp3_help = "Total RP 3 is installed. The addon can use your RP profile's name in lines (yours only, name only). It works 100% without it too.",
		wiz_chat_help = "What may reach chat? By default nothing: the narrator stays private. Whatever you pick, every send in your character's name starts only from a gesture of yours, except in 'automatic'.",
		wiz_test = "Try the narrator",
		wiz_skip = "Skip", wiz_skip_tip = "Skip the guide: the defaults stay, all of them safe. Reopen it with /au welcome.",
		wiz_back = "Back", wiz_next = "Next", wiz_finish = "Finish",
		wiz_done = "ready. The narrator is private: nothing goes to chat without a gesture from you. /au help for commands, /au welcome to redo the guide.",

		help = "commands:\n"
			.. "/au on | off - enable or disable automatic lines\n"
			.. "/au pause - pause the narrator immediately (also with the bound key)\n"
			.. "/au debug [full|trace] - diagnostics: client capabilities, recent events, errors\n"
			.. "/au language [it|en] - phrase language\n"
			.. "/au intensity <0-100> | depth natural|literary|elevated\n"
			.. "/au chat private|preview|confirm|auto - what may reach chat (default: private)\n"
			.. "/au channel auto|say|emote|party|raid|guild|instance\n"
			.. "/au speak - confirm the waiting proposal (also from a macro or key)\n"
			.. "/au cancel - discard the proposal\n"
			.. "/au narrator [history|reset|clear] - the narrator box\n"
			.. "/au greet | farewell | toast | muse | threat | battlecry | pray | thanks | jest\n"
			.. "/au cast <spell> - a line for a spell (handy in macros)\n"
			.. "/au test <event> - preview in the local chat\n"
			.. "/au chance <event> <0-100> - probability of an event\n"
			.. "/au cooldown <seconds> | ignore <spell> | button\n"
			.. "/au packs | pack <id> on|off | stats | memory | options | welcome",

		debug_title = "diagnostics",
		debug_config = "Configuration",
		debug_no_db = "configuration not loaded: start-up failed, see the errors with /au debug.",
		debug_caps = "Capabilities",
		debug_events = "Events",
		debug_published = "published",
		debug_dedup = "duplicates dropped",
		debug_dropped = "expired in queue",
		debug_errors = "Caught errors",
		debug_no_errors = "No caught errors.",
		debug_phrases = "Lines: %d in the chosen language, from %d packs.",
		debug_trace = "event trace: %s",
	},
})
