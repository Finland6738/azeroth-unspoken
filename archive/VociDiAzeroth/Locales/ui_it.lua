local ADDON, NS = ...

NS:RegisterLanguage("it", {
	name = "Italiano",
	ui = {
		-- nomi per i segnaposto {class} {race} {faction} {targettype}: { maschile, femminile }
		classNames = {
			WARRIOR = { "guerriero", "guerriera" }, PALADIN = { "paladino", "paladina" },
			HUNTER = { "cacciatore", "cacciatrice" }, ROGUE = { "ladro", "ladra" },
			PRIEST = { "sacerdote", "sacerdotessa" }, SHAMAN = { "sciamano", "sciamana" },
			MAGE = { "mago", "maga" }, WARLOCK = { "stregone", "strega" }, DRUID = { "druido", "druida" },
		},
		raceNames = {
			Human = { "umano", "umana" }, Dwarf = { "nano", "nana" },
			NightElf = { "elfo della notte", "elfa della notte" }, Gnome = { "gnomo", "gnoma" },
			Orc = { "orco", "orchessa" }, Scourge = { "non morto", "non morta" },
			Tauren = "tauren", Troll = "troll",
			BloodElf = { "elfo del sangue", "elfa del sangue" }, Draenei = "draenei", Goblin = "goblin",
		},
		factionNames = { Alliance = "Alleanza", Horde = "Orda" },
		creatureNames = {
			undead = "non morto", demon = "demone", dragon = "drago", elemental = "elementale",
			beast = "bestia", giant = "gigante", mechanical = "congegno", critter = "creatura",
			aberration = "aberrazione", humanoid = "mortale", other = "creatura",
		},

		send_error = "invio non riuscito (%s)",
		preview = "anteprima",
		on = "attivo", off = "spento",
		enabled = "attivato.", disabled = "disattivato.",
		button_idle = "Nessuna frase in attesa. Clic: improvvisa una frase adatta al momento.",
		button_hint = "Clic sinistro: pronuncia. Trascina col destro: sposta.",
		opt_enabled = "Addon", opt_language = "Lingua delle frasi", opt_mode = "Modalità",
		opt_cooldown = "Pausa tra le frasi", opt_button = "Pulsante 'pronuncia'",
		opt_rpname = "Nome da Total RP 3", opt_preview = "Anteprima nel chat",
		mode_auto = "automatica: emote nel mondo, /say nelle istanze e con i tasti",
		mode_emote = "solo emote narrative (/e)",
		mode_say = "solo /say (nel mondo aperto la frase aspetta il pulsante o il tasto)",
		mode_self = "solo anteprima, visibile solo a te",
		mode_now = "modalità: %s",
		lang_set = "lingua delle frasi: %s",
		lang_list = "lingue disponibili: %s. Uso: /voci lingua <codice>",
		cooldown_now = "pausa tra le frasi automatiche: %d secondi",
		no_phrase = "nessuna frase adatta per '%s' in questo momento.",
		ignored = "'%s' non produrrà più frasi.", unignored = "'%s' torna a produrre frasi.",
		stats = "%d frasi disponibili in %s.",
		memory_reset = "memoria delle frasi usate azzerata.",
		panel_help = "Frasi disponibili in questa lingua: %d, da %d pacchetti.\n\n"
			.. "Nel mondo aperto WoW permette /say solo dopo un tasto o un clic: in modalità automatica "
			.. "l'addon usa le emote narrative, oppure tiene pronta la frase per il pulsante o per il tasto "
			.. "assegnato in Opzioni > Comandi > AddOn.\n\nComandi: /voci aiuto",
		help = "comandi:\n"
			.. "/voci on | off - attiva o spegne le frasi automatiche\n"
			.. "/voci lingua [it|en] - lingua delle frasi\n"
			.. "/voci modo auto|emote|say|self - dove scrivere le frasi\n"
			.. "/voci dire - pronuncia la frase in attesa (anche da macro o tasto)\n"
			.. "/voci saluto | addio | brindisi | pensiero | minaccia | grido | preghiera | ringrazia | scherzo\n"
			.. "/voci incanta <incantesimo> - frase per un incantesimo (utile nelle macro)\n"
			.. "/voci prova <evento> - anteprima privata\n"
			.. "/voci prob <evento> <0-100> - probabilità di un evento\n"
			.. "/voci cooldown <secondi> | ignora <incantesimo> | pulsante\n"
			.. "/voci pacchetti | pacchetto <id> on|off | info | memoria | opzioni",
	},
})
