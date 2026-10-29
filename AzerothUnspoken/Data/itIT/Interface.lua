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

		on = "attivo", off = "spento",
		enabled = "attivato.", disabled = "disattivato.",
		button_idle = "Nessuna proposta in attesa. Clic: il narratore propone una frase adatta al momento.",
		button_hint = "Clic sinistro: conferma e pronuncia. Trascina col destro: sposta.",
		button_channel = "Canale: %s",

		-- le quattro voci (GDD §5.3)
		voice_narrator = "Narratore", voice_inner = "Voce interiore", voice_character = "Personaggio", voice_npc = "NPC",
		proposal_for = "proposta per %s", sent_to = "inviato in %s",
		btn_send = "Invia", btn_edit = "Modifica", btn_discard = "Scarta", btn_copy = "Nella chat",
		btn_another = "Un'altra", tip_another = "Cambia la frase proposta con un'altra per lo stesso momento (non invia nulla).",
		tip_copy = "Copia la frase nella casella della chat, già sul canale giusto: la invii tu con Invio.",
		tip_pause = "Pausa immediata (di nuovo per riprendere)", tip_history = "Cronologia recente",
		tip_close = "Nascondi (e scarta la proposta)", tip_channel = "Cambia canale",
		paused_on = "narratore in pausa. Premi di nuovo il tasto (o /au pausa) per riprendere.",
		paused_off = "narratore di nuovo attivo.",

		-- Chat Gateway
		gw_empty = "niente da inviare.",
		gw_reroll_empty = "nessuna proposta da cambiare.",
		gw_reroll_editing = "stai modificando la proposta: chiudi l'editor (Esc) prima di cambiare frase.",
		gw_reroll_kept = "la tua versione modificata è stata sostituita. Il testo era: %s",
		gw_no_chat_box = "il client non offre la casella della chat da riempire: usa Invia.",
		gw_copy_failed = "non sono riuscito ad aprire la casella della chat: usa Invia.",
		gw_needs_action = "per questo canale serve un'azione tua: premi il tasto o il pulsante 'pronuncia'.",
		gw_channel_unavailable = "canale non disponibile ora (gruppo, incursione, gilda o istanza mancanti).",
		gw_flood = "troppo ravvicinato: aspetta qualche secondo prima di inviare ancora.",
		gw_no_sender = "il client non offre un modo per inviare in chat.",
		gw_lockdown = "chat bloccata dal client in questo momento.",
		gw_error = "invio non riuscito (%s).",
		gw_review = "anteprima della proposta: %s\nPremi di nuovo per inviarla, oppure /au annulla.",
		gw_expired = "la proposta non c'è più (scaduta, scartata o sostituita): nulla è stato inviato. Il tuo testo: %s",
		gw_text_kept = "la proposta è sparita mentre la modificavi: nulla è stato inviato. Il tuo testo: %s",
		emote_says = "dice: «%s»",
		chat_auto_warning = "ATTENZIONE: nella modalità automatica emote (sempre) e /say (nelle istanze) partono da soli, a nome del tuo personaggio, senza che tu faccia nulla. Tutto il resto resta una proposta da confermare. Per attivarla conferma entro 10 secondi.",
		auto_repeat = "Per attivare l'invio automatico ripeti lo stesso comando entro 10 secondi; altrimenti non cambia nulla.",
		auto_confirm_again = "clic di nuovo per confermare",
		invalid_value = "valore non valido: '%s'. Valori ammessi: %s.",
		values_chat = "privato, anteprima, conferma, auto",
		values_channel = "auto, say, emote, gruppo, incursione, gilda, istanza",
		values_depth = "naturale, letterario, elevato",
		chatmode_PRIVATE_short = "solo narratore privato",
		chatmode_PREVIEW_short = "anteprima",
		chatmode_CONFIRM_TO_SEND_short = "conferma per inviare",
		chatmode_AUTO_ONLY_IF_ALLOWED_short = "automatica (dove permesso)",
		chatmode_PRIVATE_help = "Solo narratore privato (predefinita): le frasi compaiono nel riquadro e restano visibili solo a te. Nulla va in chat.",
		chatmode_PREVIEW_help = "Anteprima: le frasi del personaggio diventano proposte. Il tasto 'pronuncia' apre l'editor, dove puoi cambiarle e inviarle con Invio.",
		chatmode_CONFIRM_TO_SEND_help = "Conferma per inviare: la proposta è pronta, il tasto o il pulsante 'pronuncia' la invia con un solo gesto. Puoi sempre modificarla o scartarla.",
		chatmode_AUTO_ONLY_IF_ALLOWED_help = "Automatica dove permesso: le emote partono da sole e il /say nelle istanze; il resto resta una proposta. Poche al minuto, sempre. Si attiva solo con una conferma esplicita.",
		channel_auto = "automatico", channel_SAY = "/say", channel_EMOTE = "/emote", channel_PARTY = "gruppo",
		channel_RAID = "incursione", channel_GUILD = "gilda", channel_INSTANCE_CHAT = "istanza",

		-- impostazioni
		opt_enabled = "Addon", opt_language = "Lingua delle frasi",
		opt_intensity = "Intensità", opt_depth = "Profondità dello stile",
		opt_cooldown = "Pausa tra le frasi", opt_chatmode = "Chat", opt_auto = "Invio automatico",
		opt_channel = "Canale predefinito",
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
		wiz_depth_help = "Quanto deve essere elevato il linguaggio? Cambia quali frasi il narratore preferisce: le altre restano possibili, ma meno probabili.",
		wiz_modules_help = "Scegli i moduli. Quelli con * arriveranno nelle prossime versioni: li puoi già impostare. Il modulo Social non condivide nulla senza un tuo consenso esplicito, ed è spento per impostazione predefinita.",
		wiz_social_consent = "Social RP: partecipare a scene con altri giocatori sarà sempre un'adesione volontaria (opt-in) e non condivide ricordi né dati senza il tuo consenso.",
		wiz_trp3_help = "Total RP 3 è installato. L'addon può usare il nome del tuo profilo RP nelle frasi (solo il tuo, solo il nome). Funziona al 100% anche senza.",
		wiz_chat_help = "Cosa può arrivare in chat? Per impostazione predefinita nulla: il narratore resta privato. Qualunque modalità scegli, ogni invio a nome del tuo personaggio parte solo da un tuo gesto, tranne in 'automatica'.",
		wiz_test = "Prova il narratore",
		wiz_skip = "Salta", wiz_skip_tip = "Salta la procedura: restano i valori predefiniti, tutti sicuri. Si riapre con /au benvenuto.",
		wiz_back = "Indietro", wiz_next = "Avanti", wiz_finish = "Fine",
		wiz_done = "pronto. Il narratore è privato: nulla va in chat senza un tuo gesto. /au aiuto per i comandi, /au benvenuto per rifare la procedura.",

		-- Living Memory e diario (step S6)
		opt_journal = "Diario del personaggio...",
		mem_title = "Diario del personaggio",
		mem_intro = "I ricordi del tuo personaggio: solo momenti significativi, mai testo di chat. Puoi cancellarli o renderli permanenti; l'addon non scrive file, per esportarli copia il testo.",
		mem_kind_first_visit = "Prima visita", mem_kind_return = "Ritorno", mem_kind_death = "Morte",
		mem_kind_flight = "Fuga", mem_kind_level = "Livello raggiunto", mem_kind_story = "Storia",
		mem_tab_memories = "Ricordi", mem_tab_places = "Luoghi", mem_tab_flags = "Flag", mem_tab_session = "Sessione",
		mem_importance = "importanza %d", mem_level_short = "liv. %d", mem_first = "prima", mem_last = "ultima",
		mem_place_visits = "%d visite", mem_place_bad = "finita male",
		mem_export_title = "Azeroth Unspoken - diario di %s (esportato il %s)",
		mem_export_help = "Seleziona il testo e copialo con Ctrl+C. L'addon non può scrivere file.",
		mem_export = "Esporta", mem_reset = "Dimentica tutto", mem_reset_confirm_btn = "Conferma: dimentica", mem_close = "Chiudi",
		mem_prev = "<", mem_next = ">", mem_page = "pagina %d di %d", mem_empty = "Niente da mostrare.",
		mem_perm_tip = "Permanente: non si compatta mai.", mem_delete_tip = "Cancella.", mem_forget_tip = "Dimentica il luogo: la prossima volta sarà la prima visita.",
		mem_flag_tip = "Togli il flag.", mem_session_note = "Solo di questa sessione: si dimenticano alla chiusura.",
		mem_off = "la memoria è spenta (modulo 'memoria' nelle impostazioni).",
		mem_readonly = "i dati della memoria vengono da una versione più nuova dell'addon: si possono leggere, non cambiare.",
		mem_summary = "memoria: %d ricordi (%d permanenti), %d luoghi, %d flag.",
		mem_flags = "flag: %s", mem_none = "nessuno", mem_flag_invalid = "nome del flag non valido: '%s' (lettere, cifre e _).",
		mem_flag_on = "flag impostato: %s.", mem_flag_off = "flag tolto: %s.",
		mem_perm_on = "ricordo #%d permanente.", mem_perm_off = "ricordo #%d non più permanente.",
		mem_perm_limit = "troppi ricordi permanenti: toglierne qualcuno prima.", mem_missing = "non trovato: '%s'.",
		mem_deleted = "ricordo #%d cancellato.", mem_place_forgotten = "luogo dimenticato: %s.",
		mem_reset_confirm = "questo cancella la memoria (%s). Per confermare ripeti lo stesso comando entro 15 secondi.",
		mem_reset_done = "memoria azzerata (%d voci).",
		mem_help = "uso: /au diario [lista | luoghi | flag <nome> | esporta | permanente <n> | elimina <n> | dimentica <luogo> | reset [tutto|ricordi|ordinari|luoghi|flag]]",

		help = "comandi:\n"
			.. "/au on | off - attiva o spegne le frasi automatiche\n"
			.. "/au pausa - pausa immediata del narratore (anche col tasto assegnato)\n"
			.. "/au debug [full|trace] - diagnostica: capacità del client, ultimi eventi, errori\n"
			.. "/au lingua [it|en] - lingua delle frasi\n"
			.. "/au intensita <0-100> | profondita naturale|letterario|elevato\n"
			.. "/au chat privato|anteprima|conferma|auto - cosa può arrivare in chat (predefinito: privato; auto chiede conferma)\n"
			.. "/au canale auto|say|emote|gruppo|incursione|gilda|istanza\n"
			.. "/au dire - conferma la proposta in attesa (anche da macro o tasto)\n"
			.. "/au altra - cambia la proposta in attesa con un'altra frase (non invia nulla)\n"
			.. "/au annulla - scarta la proposta\n"
			.. "/au copia - copia la proposta nella casella della chat (la invii tu con Invio)\n"
			.. "/au narratore [cronologia|reset|pulisci] - riquadro del narratore\n"
			.. "/au anima [lista|neutro|archetipo <id>|trp3 on|off|<tratto> <valore>|evita <argomento>] - personalità del personaggio\n"
			.. "/au diario [lista|luoghi|flag <nome>|esporta|permanente <n>|elimina <n>|dimentica <luogo>|reset] - memoria e diario del personaggio\n"
			.. "/au relazioni [lista|persone|aggiungi <nome>|nota <nome> <testo>|esporta|...] - relazioni con NPC e giocatori\n"
			.. "/au luogo - dove sei: zona, mappa, tag, territorio, istanza (per verificare i dati dei luoghi)\n"
			.. "/au chi [trp3 on|off|tratto <tratto> <valore>] - chi hai davanti: ruolo, personalità, azioni recenti\n"
			.. "/au saluto | addio | brindisi | pensiero | minaccia | grido | vittoria | preghiera | ringrazia | scherzo\n"
			.. "/au evento <nome> - propone una frase per un evento (battle, zone, muse...)\n"
			.. "/au incanta <incantesimo> - frase per un incantesimo (utile nelle macro)\n"
			.. "/au prova <evento> - anteprima in chat locale\n"
			.. "/au prob <evento> <0-100> - probabilità di un evento\n"
			.. "/au cooldown <secondi> | ignora <incantesimo> | pulsante\n"
			.. "/au pacchetti | pacchetto <id> on|off | info | memoria | opzioni | benvenuto\n"
			.. "/au valida [tutto|<pacchetto>] - controlla i pacchetti di frasi (errori e avvisi)",

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

		validate_summary = "Validatore: %d frasi in %d pacchetti, %d varianti: %d errori, %d avvisi.",
		validate_ok = "Nessun problema trovato.",
		validate_more = "... e altri %d (usa /au valida tutto).",
		validate_nopack = "pacchetto sconosciuto: %s",

		-- Character Soul (step S5): tratti, archetipi, profilo
		opt_soul = "Anima del personaggio...",
		soul_title = "Anima del personaggio",
		soul_intro = "Tutto facoltativo: senza scelte il narratore resta neutro. I tratti pesano le frasi, non le impongono; gli argomenti da evitare e la voce interiore spenta non si contraddicono mai.",
		soul_summary = "anima del personaggio, archetipo: %s",
		soul_none = "non impostato",
		soul_src_explicit = "scelta", soul_src_trp3 = "Total RP 3", soul_src_game = "gioco", soul_src_neutral = "neutro",
		soul_archetype = "Archetipo", soul_reset = "Profilo neutro", soul_close = "Chiudi",
		soul_clear_tip = "Togli la scelta: il tratto torna ai valori di Total RP 3 (se consenti), del gioco o neutri.",
		soul_avoid_title = "Argomenti da evitare (mai nelle frasi)",
		soul_reset_done = "profilo neutro: nessuna scelta sui tratti.",
		soul_arch_list = "archetipi: %s",
		soul_arch_set = "archetipo scelto: %s. Vale subito.",
		soul_value = "%s: %s",
		soul_set = "%s: %s. Vale subito.",
		soul_cleared = "%s: scelta tolta.",
		soul_avoid_on = "da ora eviti: %s.",
		soul_avoid_off = "non eviti più: %s.",
		soul_trp3_state = "tratti da Total RP 3: %s",
		soul_trp3_absent = "Total RP 3 non è installato: non c'è nulla da leggere. L'anima funziona lo stesso.",
		soul_trp3_consent = "Tratti da Total RP 3",
		soul_trp3_tip = "Legge i tratti psicologici PUBBLICI del tuo profilo in Total RP 3 (solo il tuo, solo in lettura) e li usa dove non hai scelto tu. Le tue scelte hanno sempre la precedenza.",
		soul_help = "uso: /au anima [lista | neutro | archetipo <id> | trp3 on|off | <tratto> <valore|-> | evita <argomento>]. Tratti: temperamento, morale, curiosita, fede, motivazione, ironia, voce, evita.",
		soul_arch_custom = "Personalizzato", soul_arch_custom_help = "Le tue scelte, che non coincidono con un archetipo.",
		soul_arch_neutral = "Neutro", soul_arch_neutral_help = "Nessun tratto: il narratore non sceglie il carattere per te.",
		soul_arch_veteran = "Veterano disilluso", soul_arch_veteran_help = "Stoico e stanco, ha visto abbastanza da non fidarsi delle promesse.",
		soul_arch_traveler = "Viaggiatore ottimista", soul_arch_traveler_help = "Allegro e curioso, trova speranza a ogni svolta della strada.",
		soul_arch_guardian = "Custode devoto", soul_arch_guardian_help = "Misericordioso e saldo nella fede, protegge chi non può farlo da sé.",
		soul_arch_rogue = "Furfante arguto", soul_arch_rogue_help = "Burbero e pragmatico, l'ironia è la sua armatura.",
		soul_arch_scholar = "Studioso", soul_arch_scholar_help = "Stoico, scettico e curiosissimo: ogni rovina è una biblioteca.",
		soul_arch_avenger = "Vendicatore", soul_arch_avenger_help = "Feroce e combattuto, un'unica ragione lo tiene in cammino.",
		soul_arch_penitent = "Penitente", soul_arch_penitent_help = "Malinconico e in cerca di redenzione, porta con sé un debito.",
		trait_temperament = "Temperamento", trait_temperament_resolute = "Risoluto", trait_temperament_merciful = "Misericordioso",
		trait_temperament_stoic = "Stoico", trait_temperament_cheerful = "Allegro", trait_temperament_melancholic = "Malinconico",
		trait_temperament_gruff = "Burbero", trait_temperament_fierce = "Feroce",
		trait_morality = "Morale", trait_morality_righteous = "Retto", trait_morality_pragmatic = "Pragmatico",
		trait_morality_conflicted = "Combattuto", trait_morality_disillusioned = "Disilluso", trait_morality_hopeful = "Speranzoso",
		trait_curiosity = "Curiosità", trait_curiosity_low = "scarsa", trait_curiosity_mid = "media", trait_curiosity_high = "alta",
		trait_faith = "Fede", trait_faith_devout = "Devoto", trait_faith_spiritual = "Spirituale", trait_faith_doubting = "Dubbioso",
		trait_faith_skeptic = "Scettico",
		trait_motivation = "Motivazione", trait_motivation_duty = "Dovere", trait_motivation_vengeance = "Vendetta",
		trait_motivation_glory = "Gloria", trait_motivation_knowledge = "Conoscenza", trait_motivation_redemption = "Redenzione",
		trait_motivation_freedom = "Libertà", trait_motivation_protection = "Protezione",
		trait_irony = "Ironia", trait_irony_low = "scarsa", trait_irony_mid = "media", trait_irony_high = "alta",
		trait_innerVoice = "Voce interiore", trait_innerVoice_off = "spenta", trait_innerVoice_quiet = "discreta",
		trait_innerVoice_present = "presente", trait_innerVoice_vivid = "vivida",
		trait_avoid = "Argomenti da evitare", trait_avoid_death = "morte", trait_avoid_blood = "sangue",
		trait_avoid_betrayal = "tradimento", trait_avoid_family = "famiglia", trait_avoid_religion = "religione",
		trait_avoid_undead = "non morti", trait_avoid_demons = "demoni", trait_avoid_romance = "amore",
	},
})
