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
		mode_auto = "automatic: emotes in the world, /say in instances and on key press",
		mode_emote = "narrative emotes only (/e)",
		mode_say = "/say only (in the open world the line waits for the button or key)",
		mode_self = "preview only, visible to you alone",
		mode_now = "mode: %s",
		lang_set = "phrase language: %s",
		lang_list = "available languages: %s. Usage: /voci language <code>",
		cooldown_now = "pause between automatic lines: %d seconds",
		no_phrase = "no fitting line for '%s' right now.",
		ignored = "'%s' will no longer produce lines.", unignored = "'%s' produces lines again.",
		stats = "%d lines available in %s.",
		memory_reset = "memory of used lines cleared.",
		panel_help = "Lines available in this language: %d, from %d packs.\n\n"
			.. "In the open world WoW only allows /say after a key press or a click: in automatic mode "
			.. "the addon uses narrative emotes, or keeps the line ready for the button or for the key "
			.. "bound under Options > Keybindings > AddOns.\n\nCommands: /voci help",
		help = "commands:\n"
			.. "/voci on | off - enable or disable automatic lines\n"
			.. "/voci language [it|en] - phrase language\n"
			.. "/voci mode auto|emote|say|self - where lines are written\n"
			.. "/voci speak - say the waiting line (also from a macro or key)\n"
			.. "/voci greet | farewell | toast | muse | threat | battlecry | pray | thanks | jest\n"
			.. "/voci cast <spell> - a line for a spell (handy in macros)\n"
			.. "/voci test <event> - private preview\n"
			.. "/voci chance <event> <0-100> - probability of an event\n"
			.. "/voci cooldown <seconds> | ignore <spell> | button\n"
			.. "/voci packs | pack <id> on|off | stats | memory | options",
	},
})
