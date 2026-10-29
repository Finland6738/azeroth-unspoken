-- Test di Core/Config.lua: predefiniti del GDD §11.4, merge, validazione, migrazioni
local NS = ...
local Config, Diagnostics = NS.Config, NS.Diagnostics

T.run("predefiniti", function()
	local db = NS.db
	T.eq(AzerothUnspokenDB.schemaVersion, 2, "schema globale")
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 2, "schema personaggio")
	T.ok(AzerothUnspokenDB.settings == db, "NS.db sono le impostazioni globali")
	T.eq(db.locale, "it", "lingua")
	T.eq(db.preset, "complete", "preset")
	T.eq(db.intensity, 50, "intensità")
	T.eq(db.proseDepth, "literary", "profondità")
	T.ok(db.modules.personal and db.modules.world and db.modules.npc and db.modules.memory, "moduli attivi")
	T.ok(db.modules.storyArcs and db.modules.social and db.modules.publicChat and db.modules.totalRP3, "moduli attivi 2")
	T.eq(db.modules.audio, false, "audio spento")
	T.eq(db.output.autoPublicSay, false, "niente /say automatico")
	T.eq(db.chat.mode, "PRIVATE", "modalità del Chat Gateway privata")
	T.eq(db.chat.channel, "auto", "canale automatico")
	T.eq(db.output.mode, nil, "output.mode non esiste più")
	T.eq(db.ui.wizardDone, false, "wizard da fare")
	T.eq(db.ui.narrator.duration, 8, "durata del narratore")
	T.eq(db.ui.narrator.fontSize, 14, "dimensione del testo")
	T.ok(db.output.privateNarrator and db.output.publicChatPreview, "uscita privata")
	T.eq(db.privacy.socialOptIn, false, "social opt-in spento")
	T.eq(db.privacy.shareMemories, false, "ricordi non condivisi")
	T.eq(db.privacy.acceptSceneInvites, false, "inviti non accettati")
	T.eq(db.pacing.globalCooldownSeconds, 45, "cooldown globale")
	T.eq(db.pacing.recentPhraseWindow, 30, "finestra anti-ripetizione")
	T.eq(db.pacing.suppressInHighDemand, true, "sospensione nei momenti impegnativi")
	T.ok(type(NS.cdb.memory.recent) == "table", "memoria per personaggio")
	T.ok(NS.cdb.memories and NS.cdb.arcs and NS.cdb.history and NS.cdb.personality, "spazi per S5-S9")
	db.modules.audio = true
	T.eq(Config.defaults.modules.audio, false, "i predefiniti non sono condivisi")
	db.modules.audio = false
end)

T.run("merge senza azzeramenti", function()
	AzerothUnspokenDB = { schemaVersion = 1, settings = {
		intensity = 70, modules = { audio = true }, custom = "x", chance = { battle = 10 },
	} }
	AzerothUnspokenCharacterDB = { schemaVersion = 1, memory = { uses = { a = 2 } } }
	Config:Load()
	T.eq(NS.db.intensity, 70, "valore salvato conservato")
	T.eq(NS.db.modules.audio, true, "valore annidato conservato")
	T.eq(NS.db.modules.world, true, "chiave mancante aggiunta")
	T.eq(NS.db.custom, "x", "chiave sconosciuta conservata")
	T.eq(NS.db.chance.battle, 10, "probabilità dell'utente conservata")
	T.eq(NS.db.pacing.recentPhraseWindow, 30, "tabella mancante aggiunta")
	T.eq(NS.cdb.memory.uses.a, 2, "memoria conservata")
	T.ok(type(NS.cdb.memory.recent) == "table", "memoria completata")
	T.eq(#Config.issues, 0, "nessun problema")
end)

T.run("validazione", function()
	AzerothUnspokenDB = { schemaVersion = 1, settings = {
		intensity = 250, proseDepth = "baroque", preset = 3, locale = "enUS",
		modules = "yes", chance = { battle = 150, zone = 20, victory = "molto" },
		output = { mode = "megafono", autoPublicSay = "sì" },
		pacing = { recentPhraseWindow = 12.4, globalCooldownSeconds = -5 },
		ignored = { fireball = true, frostbolt = 1 },
	} }
	AzerothUnspokenCharacterDB = { schemaVersion = 1, memory = "rotta" }
	Config:Load()
	local db = NS.db
	T.eq(db.intensity, 100, "intensità limitata a 100")
	T.eq(db.proseDepth, "literary", "profondità sconosciuta")
	T.eq(db.preset, "complete", "tipo sbagliato")
	T.eq(db.locale, "en", "enUS normalizzato")
	T.eq(type(db.modules), "table", "modules ripristinato")
	T.eq(db.modules.npc, true, "modules con i predefiniti")
	T.eq(db.chance.battle, nil, "probabilità fuori scala rimossa")
	T.eq(db.chance.victory, nil, "probabilità non numerica rimossa")
	T.eq(db.chance.zone, 20, "probabilità valida conservata")
	T.eq(db.chat.mode, "CONFIRM_TO_SEND", "vecchia modalità sconosciuta: mai pubblicazione automatica")
	T.eq(db.output.autoPublicSay, false, "booleano non valido")
	T.eq(db.pacing.recentPhraseWindow, 12, "intero arrotondato")
	T.eq(db.pacing.globalCooldownSeconds, 0, "minimo")
	T.eq(db.ignored.fireball, true, "voce valida conservata")
	T.eq(db.ignored.frostbolt, nil, "voce non valida rimossa")
	T.eq(type(NS.cdb.memory), "table", "memoria rotta ricostruita")
	T.ok(#Config.issues >= 8, "problemi annotati: " .. #Config.issues)

	AzerothUnspokenDB = { schemaVersion = 1, settings = { locale = "xx" } }
	Config:Load()
	T.eq(NS.db.locale, "it", "lingua sconosciuta")

	-- una lingua registrata da un pacchetto esterno dopo il caricamento resta quella scelta (issue #7)
	AzerothUnspokenDB = { schemaVersion = 2, settings = { locale = "de" } }
	Config:Load()
	T.eq(NS.db.locale, "it", "al caricamento 'de' non è ancora registrata")
	T.eq(NS:Lang(), "it", "NS:Lang ripiega sull'italiano finché la lingua manca")
	NS:RegisterLanguage("de", { name = "Deutsch", ui = {} })
	T.eq(NS.db.locale, "de", "registrata dal pacchetto: torna quella scelta")
	T.eq(NS:Lang(), "de", "NS:Lang la usa")
	NS.db.locale = "fr"
	T.eq(NS:Lang(), "it", "una lingua non registrata non rompe NS:Lang")
	NS:RegisterLanguage("fr", { name = "Français", ui = {} })
	T.eq(NS.db.locale, "fr", "una lingua scelta a mano resta com'è")
	T.eq(Config:ShortLocale("deDE"), "de", "ShortLocale deDE")
	T.ok(Config:ShortLocale("DE") == nil and Config:ShortLocale(3) == nil, "ShortLocale non accetta altro")
	NS.db.locale = "it"

	-- regole del Chat Gateway e del narratore, su dati già nello schema 2
	AzerothUnspokenDB = { schemaVersion = 2, settings = {
		chat = { mode = "megafono", channel = "telepatia", floodSeconds = 500, maxPerMinute = 0, autoMaxPerMinute = 99 },
		ui = { narrator = { duration = 1, alpha = 5, fontSize = 3, historySize = 0.4 } },
	} }
	Config:Load()
	local c, n = NS.db.chat, NS.db.ui.narrator
	T.eq(c.mode, "PRIVATE", "modalità chat sconosciuta")
	T.eq(c.channel, "auto", "canale sconosciuto")
	T.eq(c.floodSeconds, 60, "pausa anti-flood limitata")
	T.eq(c.maxPerMinute, 1, "minimo di invii")
	T.eq(c.autoMaxPerMinute, 10, "massimo di invii automatici")
	T.eq(n.duration, 2, "durata minima")
	T.eq(n.alpha, 1, "opacità massima")
	T.eq(n.fontSize, 10, "testo minimo")
	T.eq(n.historySize, 5, "cronologia minima")
end)

T.run("migrazioni", function()
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 2, "SavedVariables nuove")

	AzerothUnspokenDB = { settings = { intensity = 20 } }   -- senza schemaVersion
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 2, "versione assente -> 2")
	T.eq(NS.db.intensity, 20, "dati conservati")

	-- una migrazione futura gira una sola volta, in ordine
	local calls = 0
	Config.SCHEMA_VERSION = 3
	Config.migrations.global[3] = function(db)
		calls = calls + 1
		db.settings.intensity = db.settings.intensity + 1
	end
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 3, "migrazione applicata")
	T.eq(NS.db.intensity, 21, "migrazione eseguita")
	Config:Load()
	T.eq(calls, 1, "una sola volta")

	-- una migrazione che fallisce non rompe l'addon e non avanza la versione
	Config.SCHEMA_VERSION = 4
	Config.migrations.global[4] = function() error("migrazione rotta") end
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 3, "versione ferma dopo un errore")
	T.ok(NS.db and NS.db.intensity == 21, "impostazioni comunque disponibili")
	Config.migrations.global[3], Config.migrations.global[4] = nil, nil
	Config.SCHEMA_VERSION = 2

	-- dati da una versione più nuova: non si toccano
	AzerothUnspokenDB = { schemaVersion = 99, settings = { intensity = 60 }, futuro = true }
	AzerothUnspokenCharacterDB = nil
	local errors = #Diagnostics.errors
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 99, "versione futura conservata")
	T.ok(AzerothUnspokenDB.futuro, "dati futuri conservati")
	T.eq(NS.db.intensity, 60, "impostazioni lette")
	T.eq(#Diagnostics.errors, errors + 1, "avviso in diagnostica")
end)

T.run("Get e Set", function()
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	local ok, v = Config:Set("intensity", "80")
	T.ok(ok and v == 80, "numero da testo")
	ok, v = Config:Set("intensity", 500)
	T.ok(ok and v == 100, "numero limitato")
	T.ok(not Config:Set("proseDepth", "barocco"), "valore fuori elenco")
	T.ok(Config:Set("proseDepth", "elevated"), "valore nell'elenco")
	ok, v = Config:Set("modules.audio", "on")
	T.ok(ok and v == true and NS.db.modules.audio, "booleano da testo")
	T.ok(not Config:Set("nonEsiste", 1), "chiave sconosciuta")
	T.ok(not Config:Set("modules", 1), "tabella intera")
	T.ok(not Config:Set("output.autoPublicSay", "forse"), "booleano non valido")
	ok, v = Config:Set("locale", "itIT")
	T.ok(ok and v == "it", "lingua normalizzata")
	T.eq(Config:Get("pacing.globalCooldownSeconds"), 45, "Get annidato")
	T.eq(Config:Get("pacing.nonEsiste.x"), nil, "Get assente")
end)

T.run("migrazione 1 -> 2: output.mode diventa chat.mode", function()
	local function Migrate(output)
		AzerothUnspokenDB = { schemaVersion = 1, settings = { output = output } }
		AzerothUnspokenCharacterDB = nil
		Config:Load()
		return NS.db
	end
	local db = Migrate({ mode = "self" })
	T.eq(db.chat.mode, "PRIVATE", "self -> PRIVATE")
	T.eq(db.output.mode, nil, "output.mode rimosso")
	T.eq(AzerothUnspokenDB.schemaVersion, 2, "versione")
	for _, old in ipairs({ "auto", "emote", "say", "boh" }) do
		db = Migrate({ mode = old, autoPublicSay = true })
		T.eq(db.chat.mode, "CONFIRM_TO_SEND", old .. " -> proposta da confermare")
		T.eq(db.output.autoPublicSay, false, old .. ": autoPublicSay spento")
	end
	db = Migrate({})
	T.eq(db.chat.mode, "PRIVATE", "senza modalità: privato")
	-- chi aveva già scelto la modalità nuova non viene toccato
	AzerothUnspokenDB = { schemaVersion = 1, settings = { output = { mode = "say" }, chat = { mode = "PREVIEW" } } }
	Config:Load()
	T.eq(NS.db.chat.mode, "PREVIEW", "chat.mode già presente conservata")
	-- impostazioni nuove: nessun output da migrare
	AzerothUnspokenDB = nil
	Config:Load()
	T.eq(NS.db.chat.mode, "PRIVATE", "nuova installazione privata")
end)

T.run("preset e Set del Chat Gateway", function()
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	T.ok(Config:ApplyPreset("personal"), "preset personale")
	T.eq(NS.db.preset, "personal", "preset salvato")
	T.ok(NS.db.modules.personal and not NS.db.modules.world and not NS.db.modules.social, "moduli del preset personale")
	T.ok(NS.db.modules.publicChat and NS.db.modules.totalRP3, "publicChat e TRP3 non toccati")
	T.ok(Config:ApplyPreset("complete") and NS.db.modules.world and NS.db.modules.social, "preset completo")
	T.ok(not Config:ApplyPreset("inesistente"), "preset sconosciuto")
	T.ok(Config:Set("chat.mode", "PREVIEW") and NS.db.chat.mode == "PREVIEW", "chat.mode valido")
	T.ok(not Config:Set("chat.mode", "preview"), "chat.mode distingue le maiuscole")
	T.ok(Config:Set("ui.narrator.alpha", 0.5) and NS.db.ui.narrator.alpha == 0.5, "opacità")
	local ok, v = Config:Set("ui.narrator.fontSize", 99)
	T.ok(ok and v == 28, "dimensione limitata")
end)
