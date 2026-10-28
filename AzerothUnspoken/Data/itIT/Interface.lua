-- Azeroth Unspoken: testi dell'interfaccia in italiano
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
		button_idle = "Nessuna proposta in attesa. Clic: il narratore propone una frase adatta al momento.",
		button_hint = "Clic sinistro: conferma e pronuncia. Trascina col destro: sposta.",
		button_channel = "Canale: %s",

		-- le quattro voci (GDD §5.3)
		voice_narrator = "Narratore", voice_inner = "Voce interiore", voice_character = "Personaggio", voice_npc = "NPC",
		proposal_for = "proposta per %s", sent_to = "inviato in %s",
		btn_send = "Invia", btn_edit = "Modifica", btn_discard = "Scarta",
		tip_pause = "Pausa immediata (di nuovo per riprendere)", tip_history = "Cronologia recente",
		tip_close = "Nascondi (e scarta la proposta)", tip_channel = "Cambia canale",
		paused_on = "narratore in pausa. Premi di nuovo il tasto (o /au pausa) per riprendere.",
		paused_off = "narratore di nuovo attivo.",

		-- Chat Gateway
		gw_empty = "niente da inviare.",
		gw_needs_action = "per questo canale serve un'azione tua: premi il tasto o il pulsante 'pronuncia'.",
		gw_channel_unavailable = "canale non disponibile ora (gruppo, incursione, gilda o istanza mancanti).",
		gw_flood = "troppo ravvicinato: aspetta qualche secondo prima di inviare ancora.",
		gw_no_sender = "il client non offre un modo per inviare in chat.",
		gw_lockdown = "chat bloccata dal client in questo momento.",
		gw_error = "invio non riuscito (%s).",
		gw_review = "anteprima della proposta: %s\nPremi di nuovo per inviarla, oppure /au annulla.",
		chat_auto_warning = "ATTENZIONE: in questa modalità emote (sempre) e /say (nelle istanze) partono da soli, a nome del tuo personaggio. Tutto il resto resta una proposta da confermare.",
		chatmode_PRIVATE_short = "solo narratore privato",
		chatmode_PREVIEW_short = "anteprima",
		chatmode_CONFIRM_TO_SEND_short = "conferma per inviare",
		chatmode_AUTO_ONLY_IF_ALLOWED_short = "automatica (dove permesso)",
		chatmode_PRIVATE_help = "Solo narratore privato (predefinita): le frasi compaiono nel riquadro e restano visibili solo a te. Nulla va in chat.",
		chatmode_PREVIEW_help = "Anteprima: le frasi del personaggio diventano proposte. Il tasto 'pronuncia' apre l'editor, dove puoi cambiarle e inviarle con Invio.",
		chatmode_CONFIRM_TO_SEND_help = "Conferma per inviare: la proposta è pronta, il tasto o il pulsante 'pronuncia' la invia con un solo gesto. Puoi sempre modificarla o scartarla.",
		chatmode_AUTO_ONLY_IF_ALLOWED_help = "Automatica dove permesso: le emote partono da sole e il /say nelle istanze; il resto resta una proposta. Poche al minuto, sempre.",
		channel_auto = "automatico", channel_SAY = "/say", channel_EMOTE = "/emote", channel_PARTY = "gruppo",
		channel_RAID = "incursione", channel_GUILD = "gilda", channel_INSTANCE_CHAT = "istanza",

		-- impostazioni
		opt_enabled = "Addon", opt_language = "Lingua delle frasi",
		opt_intensity = "Intensità", opt_depth = "Profondità dello stile",
		opt_cooldown = "Pausa tra le frasi", opt_chatmode = "Chat", opt_channel = "Canale predefinito",
		opt_button = "Pulsante 'pronuncia'", opt_rpname = "Nome da Total RP 3",
		opt_pause = "Metti in pausa il narratore", opt_resume = "Riprendi il narratore",
		opt_wizard = "Riapri la procedura guidata",
		opt_narrator = "Riquadro del narratore", opt_duration = "Durata del testo",
		opt_alpha = "Opacità", opt_fontsize = "Dimensione del testo", opt_locked = "Posizione bloccata",
		opt_resetpos = "Riporta il riquadro al centro", opt_history = "Cronologia", opt_test = "Prova il narratore",
		opt_modules = "Moduli (* = in arrivo, non ancora attivo)",
		module_personal = "Personale", module_world = "Mondo", module_npc = "Dialoghi NPC", module_memory = "Memoria",
		module_storyArcs = "Storie", module_social = "Social", module_publicChat = "Proposte in chat", module_audio = "Audio",
		depth_natural = "Naturale", depth_literary = "Letterario", depth_elevated = "Elevato",
		depth_natural_example = "Quotidiano e conciso. «Queste mura sono qui da secoli. Chissà chi ci viveva.»",
		depth_literary_example = "Evocativo ma leggibile. «Le pietre custodiscono ancora le tracce di chi chiamava questo luogo casa.»",
		depth_elevated_example = "Solenne e cerimoniale. «Caddero le torri e tacquero le voci, ma le pietre ancora vegliano sui giorni perduti.»",
		preset_complete = "Completo", preset_complete_help = "Tutti i moduli: persona, mondo, NPC, memoria, storie.",
		preset_personal = "RPG personale", preset_personal_help = "Il tuo personaggio: pensieri, ricordi, storie personali.",
		preset_world = "Mondo narrativo", preset_world_help = "Luoghi, atmosfera e NPC, meno introspezione.",
		preset_social = "Social RP", preset_social_help = "Per giocare con altri. Nulla si condivide senza il tuo consenso.",
		preset_custom = "Personalizzato",

		mode_now = "chat: %s",
		channel_now = "canale predefinito: %s",
		intensity_now = "intensità: %d (0 = narratore muto per gli eventi spontanei, 50 = bilanciato, 100 = intenso)",
		depth_now = "profondità dello stile: %s",
		lang_set = "lingua delle frasi: %s",
		lang_list = "lingue disponibili: %s. Uso: /au lingua <codice>",
		cooldown_now = "pausa tra le frasi automatiche: %d secondi",
		no_phrase = "nessuna frase adatta per '%s' in questo momento.",
		ignored = "'%s' non produrrà più frasi.", unignored = "'%s' torna a produrre frasi.",
		stats = "%d frasi disponibili in %s.",
		memory_reset = "memoria delle frasi usate azzerata.",
		panel_help = "Frasi disponibili in questa lingua: %d, da %d pacchetti.\n\n"
			.. "Nel mondo aperto WoW permette /say solo dopo un tasto o un clic: l'addon non scrive mai in chat "
			.. "da solo, salvo la modalità 'automatica' che hai scelto tu. Il tasto 'pronuncia' e la pausa "
			.. "immediata si assegnano in Opzioni > Comandi > AddOn.\n\nComandi: /au aiuto",

		-- procedura guidata (GDD §12.1)
		wiz_title = "Azeroth Unspoken", wiz_step = "passo %d di %d",
		wiz_step_language = "Lingua", wiz_step_preset = "Che esperienza vuoi?", wiz_step_intensity = "Intensità",
		wiz_step_depth = "Stile", wiz_step_modules = "Moduli", wiz_step_trp3 = "Total RP 3", wiz_step_chat = "Chat e prova",
		wiz_language_help = "In che lingua vuoi leggere le frasi del narratore? Non dipende dalla lingua del client.",
		wiz_preset_help = "Sono combinazioni dei moduli: potrai cambiarle quando vuoi.",
		wiz_intensity_help = "Quanto spesso deve farsi sentire il narratore? Cambia la frequenza, non la lunghezza né lo stile.",
		intensity_band_0 = "0 - Narratore muto: parla solo se glielo chiedi tu.",
		intensity_band_1 = "10-20 - Molto discreto: un pensiero nei luoghi importanti.",
		intensity_band_2 = "30-40 - Discreto: rari commenti ambientali e qualche evento speciale.",
		intensity_band_3 = "50-60 - Bilanciato: atmosfera, ricordi e lunghi silenzi.",
		intensity_band_4 = "70-80 - Vivace: più scene leggere.",
		intensity_band_5 = "90-100 - Intenso: molte occasioni, sempre con le pause anti-spam.",
		wiz_suggested = "(valore consigliato)",
		wiz_depth_help = "Quanto deve essere elevato il linguaggio? Con i testi di oggi cambia poco; la scelta vale per i contenuti futuri.",
		wiz_modules_help = "Scegli i moduli. Quelli con * arriveranno nelle prossime versioni: li puoi già impostare. Il modulo Social non condivide nulla senza un tuo consenso esplicito, ed è spento per impostazione predefinita.",
		wiz_social_consent = "Social RP: partecipare a scene con altri giocatori sarà sempre un'adesione volontaria (opt-in) e non condivide ricordi né dati senza il tuo consenso.",
		wiz_trp3_help = "Total RP 3 è installato. L'addon può usare il nome del tuo profilo RP nelle frasi (solo il tuo, solo il nome). Funziona al 100% anche senza.",
		wiz_chat_help = "Cosa può arrivare in chat? Per impostazione predefinita nulla: il narratore resta privato. Qualunque modalità scegli, ogni invio a nome del tuo personaggio parte solo da un tuo gesto, tranne in 'automatica'.",
		wiz_test = "Prova il narratore",
		wiz_skip = "Salta", wiz_skip_tip = "Salta la procedura: restano i valori predefiniti, tutti sicuri. Si riapre con /au benvenuto.",
		wiz_back = "Indietro", wiz_next = "Avanti", wiz_finish = "Fine",
		wiz_done = "pronto. Il narratore è privato: nulla va in chat senza un tuo gesto. /au aiuto per i comandi, /au benvenuto per rifare la procedura.",

		help = "comandi:\n"
			.. "/au on | off - attiva o spegne le frasi automatiche\n"
			.. "/au pausa - pausa immediata del narratore (anche col tasto assegnato)\n"
			.. "/au debug [full|trace] - diagnostica: capacità del client, ultimi eventi, errori\n"
			.. "/au lingua [it|en] - lingua delle frasi\n"
			.. "/au intensita <0-100> | profondita naturale|letterario|elevato\n"
			.. "/au chat privato|anteprima|conferma|auto - cosa può arrivare in chat (predefinito: privato)\n"
			.. "/au canale auto|say|emote|gruppo|incursione|gilda|istanza\n"
			.. "/au dire - conferma la proposta in attesa (anche da macro o tasto)\n"
			.. "/au annulla - scarta la proposta\n"
			.. "/au narratore [cronologia|reset|pulisci] - riquadro del narratore\n"
			.. "/au saluto | addio | brindisi | pensiero | minaccia | grido | preghiera | ringrazia | scherzo\n"
			.. "/au incanta <incantesimo> - frase per un incantesimo (utile nelle macro)\n"
			.. "/au prova <evento> - anteprima in chat locale\n"
			.. "/au prob <evento> <0-100> - probabilità di un evento\n"
			.. "/au cooldown <secondi> | ignora <incantesimo> | pulsante\n"
			.. "/au pacchetti | pacchetto <id> on|off | info | memoria | opzioni | benvenuto",

		debug_title = "diagnostica",
		debug_config = "Configurazione",
		debug_no_db = "configurazione non caricata: l'avvio non è riuscito, vedi gli errori con /au debug.",
		debug_caps = "Capacità",
		debug_events = "Eventi",
		debug_published = "pubblicati",
		debug_dedup = "doppioni scartati",
		debug_dropped = "scaduti in coda",
		debug_errors = "Errori intercettati",
		debug_no_errors = "Nessun errore intercettato.",
		debug_phrases = "Frasi: %d nella lingua scelta, da %d pacchetti.",
		debug_trace = "traccia degli eventi: %s",
	},
})
