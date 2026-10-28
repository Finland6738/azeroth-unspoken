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
		button_idle = "No line waiting. Click: improvise a line that fits the moment.",
		button_hint = "Left click: speak. Right-drag: move.",
		opt_enabled = "Addon", opt_language = "Phrase language", opt_mode = "Mode",
		opt_cooldown = "Pause between lines", opt_button = "'Speak' button",
		opt_rpname = "Name from Total RP 3", opt_preview = "Preview in chat",
		mode_auto = "automatic: emotes in the world, /say only from the button or key",
		mode_emote = "narrative emotes only (/e)",
		mode_say = "/say only (in the open world the line waits for the button or key)",
		mode_self = "preview only, visible to you alone",
		mode_now = "mode: %s",
		lang_set = "phrase language: %s",
		lang_list = "available languages: %s. Usage: /au language <code>",
		cooldown_now = "pause between automatic lines: %d seconds",
		no_phrase = "no fitting line for '%s' right now.",
		ignored = "'%s' will no longer produce lines.", unignored = "'%s' produces lines again.",
		stats = "%d lines available in %s.",
		memory_reset = "memory of used lines cleared.",
		panel_help = "Lines available in this language: %d, from %d packs.\n\n"
			.. "In the open world WoW only allows /say after a key press or a click: in automatic mode "
			.. "the addon uses narrative emotes, or keeps the line ready for the button or for the key "
			.. "bound under Options > Keybindings > AddOns.\n\nCommands: /au help",
		help = "commands:\n"
			.. "/au on | off - enable or disable automatic lines\n"
			.. "/au debug [full|trace] - diagnostics: client capabilities, recent events, errors\n"
			.. "/au language [it|en] - phrase language\n"
			.. "/au mode auto|emote|say|self - where lines are written (default: self, only you)\n"
			.. "/au speak - say the waiting line (also from a macro or key)\n"
			.. "/au greet | farewell | toast | muse | threat | battlecry | pray | thanks | jest\n"
			.. "/au cast <spell> - a line for a spell (handy in macros)\n"
			.. "/au test <event> - private preview\n"
			.. "/au chance <event> <0-100> - probability of an event\n"
			.. "/au cooldown <seconds> | ignore <spell> | button\n"
			.. "/au packs | pack <id> on|off | stats | memory | options",

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
