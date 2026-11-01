-- Test di Core/Config.lua: predefiniti del GDD §11.4, merge, validazione, migrazioni
local NS = ...
local Config, Diagnostics = NS.Config, NS.Diagnostics

T.run("predefiniti", function()
	local db = NS.db
	T.eq(AzerothUnspokenDB.schemaVersion, 7, "schema globale")
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 7, "schema personaggio")
	T.ok(AzerothUnspokenDB.settings == db, "NS.db sono le impostazioni globali")
	T.eq(db.locale, "en", "lingua predefinita: inglese (#132)")
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
	T.eq(NS.db.locale, "en", "lingua sconosciuta: torna all'inglese")

	-- una lingua registrata da un pacchetto esterno dopo il caricamento resta quella scelta (issue #7)
	AzerothUnspokenDB = { schemaVersion = 2, settings = { locale = "de" } }
	Config:Load()
	T.eq(NS.db.locale, "en", "al caricamento 'de' non è ancora registrata")
	T.eq(NS:Lang(), "en", "NS:Lang ripiega sull'inglese finché la lingua manca")
	NS:RegisterLanguage("de", { name = "Deutsch", ui = {} })
	T.eq(NS.db.locale, "de", "registrata dal pacchetto: torna quella scelta")
	T.eq(NS:Lang(), "de", "NS:Lang la usa")
	NS.db.locale = "fr"
	T.eq(NS:Lang(), "en", "una lingua non registrata non rompe NS:Lang")
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
	T.eq(AzerothUnspokenDB.schemaVersion, 7, "SavedVariables nuove")

	AzerothUnspokenDB = { settings = { intensity = 20 } }   -- senza schemaVersion
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 7, "versione assente -> 7")
	T.eq(NS.db.intensity, 20, "dati conservati")

	-- una migrazione futura gira una sola volta, in ordine
	local calls = 0
	Config.SCHEMA_VERSION = 8
	Config.migrations.global[8] = function(db)
		calls = calls + 1
		db.settings.intensity = db.settings.intensity + 1
	end
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 8, "migrazione applicata")
	T.eq(NS.db.intensity, 21, "migrazione eseguita")
	Config:Load()
	T.eq(calls, 1, "una sola volta")

	-- una migrazione che fallisce non rompe l'addon e non avanza la versione
	Config.SCHEMA_VERSION = 9
	Config.migrations.global[9] = function() error("migrazione rotta") end
	Config:Load()
	T.eq(AzerothUnspokenDB.schemaVersion, 8, "versione ferma dopo un errore")
	T.ok(NS.db and NS.db.intensity == 21, "impostazioni comunque disponibili")
	Config.migrations.global[8], Config.migrations.global[9] = nil, nil
	Config.SCHEMA_VERSION = 7

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

-- #132: l'inglese è la lingua di un'installazione nuova; chi ha già scelto l'italiano la tiene
T.run("lingua: installazione nuova in inglese, impostazioni salvate con l'italiano conservate", function()
	AzerothUnspokenDB = nil
	AzerothUnspokenCharacterDB = nil
	Config:Load()
	T.eq(NS.db.locale, "en", "nessuna variabile salvata: inglese")
	T.eq(NS:Lang(), "en", "NS:Lang: inglese")
	T.eq(Config.defaults.locale, "en", "predefinito")
	-- chi aveva già l'italiano (schemi precedenti compresi) lo conserva
	for _, schema in ipairs({ 2, 3, 4, 5, 6 }) do
		AzerothUnspokenDB = { schemaVersion = schema, settings = { locale = "it", intensity = 70 } }
		Config:Load()
		T.eq(NS.db.locale, "it", "schema " .. schema .. ": l'italiano scelto resta")
		T.eq(NS:Lang(), "it", "schema " .. schema .. ": NS:Lang")
	end
	-- il codice completo del client si normalizza, ma resta italiano
	AzerothUnspokenDB = { schemaVersion = 6, settings = { locale = "itIT" } }
	Config:Load()
	T.eq(NS.db.locale, "it", "itIT -> it")
	-- chi aveva l'inglese lo tiene; chi non aveva salvato la lingua parte in inglese
	AzerothUnspokenDB = { schemaVersion = 6, settings = { locale = "en" } }
	Config:Load()
	T.eq(NS.db.locale, "en", "l'inglese scelto resta")
	AzerothUnspokenDB = { schemaVersion = 6, settings = { intensity = 40 } }
	Config:Load()
	T.eq(NS.db.locale, "en", "lingua assente nel salvato: inglese")
	T.eq(NS.db.intensity, 40, "le altre scelte restano")
	-- la scelta fatta nel gioco si salva e si rilegge
	NS.db.locale = "it"
	T.eq(AzerothUnspokenDB.settings.locale, "it", "la scelta è nelle variabili salvate")
	Config:Load()
	T.eq(NS.db.locale, "it", "al caricamento successivo l'italiano resta")
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	NS.db.locale = "it"
end)

-- issue #3: i dati di uno schema più nuovo non si riscrivono nemmeno con valori che questa versione non conosce
T.run("schema più nuovo: nessuna modifica ai dati salvati (Merge e Validate su una copia)", function()
	AzerothUnspokenDB = { schemaVersion = 77, settings = { chat = { mode = "FUTURE_MODE" }, intensity = 150,
		proseDepth = "cosmic", nuovo = { a = 1 } }, futuro = true }
	AzerothUnspokenCharacterDB = { schemaVersion = 77, memory = "altro formato", arcs = 5 }
	local errors = #Diagnostics.errors
	Config:Load()
	local g, c = AzerothUnspokenDB, AzerothUnspokenCharacterDB
	-- il file salvato è identico
	T.eq(g.settings.chat.mode, "FUTURE_MODE", "chat.mode futuro conservato")
	T.eq(g.settings.intensity, 150, "intensità fuori scala conservata")
	T.eq(g.settings.proseDepth, "cosmic", "profondità sconosciuta conservata")
	T.eq(g.settings.locale, nil, "nessun predefinito aggiunto al salvato")
	T.eq(g.settings.modules, nil, "nessuna tabella aggiunta al salvato")
	T.eq(g.settings.nuovo.a, 1, "chiavi sconosciute conservate")
	T.eq(g.schemaVersion, 77, "versione conservata")
	T.eq(c.memory, "altro formato", "memoria del personaggio conservata")
	T.eq(c.personality, nil, "nessun predefinito aggiunto al personaggio")
	T.eq(c.schemaVersion, 77, "versione del personaggio conservata")
	-- l'addon lavora su una copia valida
	T.ok(NS.db ~= g.settings, "NS.db è una copia")
	T.ok(NS.cdb ~= c, "NS.cdb è una copia")
	T.eq(NS.db.chat.mode, "PRIVATE", "la copia in uso ha valori validi")
	T.eq(NS.db.intensity, 100, "e limitati")
	T.ok(NS.cdb.memory and NS.cdb.memory.uses, "memoria utilizzabile")
	T.ok(Config.readOnly.global and Config.readOnly.character, "segnalato come sola lettura")
	T.eq(#Diagnostics.errors, errors + 2, "due avvisi in diagnostica (account e personaggio)")
	-- le modifiche di questa sessione non arrivano al salvato
	NS.db.intensity = 10
	NS.db.chat.mode = "PREVIEW"
	T.eq(g.settings.intensity, 150, "le modifiche restano nella copia")
	T.eq(g.settings.chat.mode, "FUTURE_MODE", "anche quelle del Chat Gateway")

	-- una versione corrente torna alla scrittura normale
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	T.ok(not Config.readOnly.global and AzerothUnspokenDB.settings == NS.db, "schema corrente: NS.db è il salvato")
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
	T.eq(AzerothUnspokenDB.schemaVersion, 7, "versione")
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
	T.ok(Config:Set("ui.narrator.alpha", 0.7) and NS.db.ui.narrator.alpha == 0.7, "opacità")
	-- #173: the background never goes under 0.55
	local okA, a = Config:Set("ui.narrator.alpha", 0.2)
	T.ok(okA and a == 0.55, "opacità dello sfondo almeno 0.55")
	-- #177: the new settings and their limits
	T.eq(Config.defaults.ui.narrator.readingSpeed, 14, "velocità di lettura predefinita: circa 0.07 s per carattere")
	T.eq(Config.defaults.ui.narrator.reduceMotion, false, "dissolvenza accesa di base")
	local okR, r = Config:Set("ui.narrator.readingSpeed", 1)
	T.ok(okR and r == 5, "velocità di lettura minima")
	T.ok(Config:Set("chat.pendingSeconds", 0) and NS.db.chat.pendingSeconds == 0, "attesa: finché non la chiudi (0)")
	local okW, w = Config:Set("chat.pendingSeconds", 500)
	T.ok(okW and w == 120, "attesa massima 120 s")
	NS.db.chat.pendingSeconds = 25
	NS.db.ui.narrator.alpha = 0.8
	local ok, v = Config:Set("ui.narrator.fontSize", 99)
	T.ok(ok and v == 28, "dimensione limitata")
end)

-- #49: l'anti-ripetizione e la posizione del pulsante rovinate non fermano l'addon a ogni avvio
T.run("anti-ripetizione rovinata: le voci malformate si scartano e le scelte funzionano", function()
	local Engine = NS.Engine
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	local good = next(Engine.byId)
	NS.cdb.memory = {
		uses = { [good] = 2, a = "x", b = {}, c = 0 / 0, d = math.huge, [5] = 1 },
		last = { [good] = 100, e = "y", f = -5 },
		recent = { battle = "stringa", zone = { "x", 5, {}, "y" }, [7] = { "z" }, victory = 3 },
		lastTone = { battle = "epic", zone = 5, [3] = "x" },
		variant = { [good] = 2, g = "1", h = 1.5, i = 0, [4] = 1, gone_phrase = 3 },
	}
	NS.Diagnostics.errors = {}
	local dropped = Engine:SanitizeMemory()
	T.ok(dropped > 0, "voci scartate: " .. dropped)
	local mem = NS.cdb.memory
	T.eq(mem.uses[good], 2, "uso valido conservato"); T.eq(mem.uses.a, nil, "uso stringa scartato")
	T.eq(mem.uses.b, nil, "uso tabella scartato"); T.eq(mem.uses.c, nil, "uso NaN scartato")
	T.eq(mem.uses.d, nil, "uso infinito scartato"); T.eq(mem.uses[5], nil, "chiave non stringa scartata")
	T.eq(mem.last[good], 100, "ultimo uso valido"); T.eq(mem.last.e, nil, "ultimo uso stringa scartato"); T.eq(mem.last.f, nil, "negativo scartato")
	T.eq(mem.recent.battle, nil, "recent: una stringa al posto della lista è scartata")
	T.eq(table.concat(mem.recent.zone, ","), "x,y", "recent: solo le stringhe")
	T.eq(mem.recent[7], nil, "recent: chiave non stringa scartata"); T.eq(mem.recent.victory, nil, "recent numerico scartato")
	T.eq(mem.lastTone.battle, "epic", "tono valido"); T.eq(mem.lastTone.zone, nil, "tono numerico scartato")
	T.eq(mem.variant[good], 2, "variante valida"); T.eq(mem.variant.g, nil, "variante stringa scartata")
	T.eq(mem.variant.h, nil, "variante frazionaria scartata"); T.eq(mem.variant.i, nil, "variante zero scartata")
	-- il decadimento all'avvio e le scelte non falliscono, anche con una voce rovinata arrivata dopo
	NS.cdb.memory.uses.a = "x"; NS.cdb.memory.recent.battle = "stringa"
	local ok, err = pcall(function() Engine:DecayMemory() end)
	T.ok(ok, "DecayMemory non fallisce: " .. tostring(err))
	T.eq(NS.cdb.memory.variant.gone_phrase, nil, "varianti di frasi sparite rimosse")
	local ok2, err2 = pcall(function() return Engine:Pick("battle", NS:BuildContext()) end)
	T.ok(ok2, "Pick non fallisce: " .. tostring(err2))
	-- l'ultimo uso di una frase sparita si toglie; di una voce di vocabolario restano gli usi, non l'ultimo uso, che
	-- serve solo alle voci con un cooldown (#86)
	local vocabId
	for _, list in pairs(Engine.vocab) do vocabId = list[1] and list[1].id; if vocabId then break end end
	NS.cdb.memory.last.ghost = 5; NS.cdb.memory.uses.ghost = 3
	if vocabId then NS.cdb.memory.last[vocabId] = 7; NS.cdb.memory.uses[vocabId] = 3 end
	Engine:DecayMemory()
	-- an id not registered now may be in a regional pack not loaded yet (#101): its uses decay like the others, its
	-- last use stays at most Engine.DORMANT_LAST_MAX seconds (here it is decades old)
	T.eq(NS.cdb.memory.last.ghost, nil, "ultimo uso di una frase sparita: via")
	T.eq(NS.cdb.memory.uses.ghost, 2.25, "usi di una frase sparita: attenuati come gli altri")
	if vocabId then
		T.ok(NS.cdb.memory.uses[vocabId] ~= nil, "gli usi del vocabolario restano")
		T.eq(NS.cdb.memory.last[vocabId], nil, "l'ultimo uso di una voce senza cooldown non si conserva")
	end
	NS.cdb.memory.last.ghost = time() - 60
	Engine:DecayMemory()
	T.ok(NS.cdb.memory.last.ghost ~= nil, "ultimo uso recente di una frase non registrata: resta (pacchetto regionale)")
	for _ = 1, 10 do Engine:DecayMemory() end
	T.eq(NS.cdb.memory.uses.ghost, nil, "usi di una frase sparita: via dopo qualche accesso")
	-- il pulsante con una posizione rovinata si crea comunque
	for _, bad in ipairs({ 5, "x", true, { 1 }, { "CENTER", "CENTER", "a", "b" } }) do
		NS.db.ui.buttonPos = bad
		local okb, errb = pcall(function() NS.modules.speakButton:OnInit() end)
		T.ok(okb, "buttonPos " .. tostring(type(bad)) .. ": " .. tostring(errb))
	end
	NS.db.ui.buttonPos = nil
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
end)

-- #51: valori numerici non validi
T.run("valori numerici: comandi con gli stessi limiti delle impostazioni, schemaVersion intero", function()
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
	local function Cmd(text) SlashCmdList.AZEROTHUNSPOKEN(text) end
	Cmd("cooldown 99999"); T.eq(NS.db.pacing.globalCooldownSeconds, 3600, "cooldown limitato a 3600")
	Cmd("cooldown inf"); T.eq(NS.db.pacing.globalCooldownSeconds, 3600, "cooldown inf: 3600")
	Cmd("cooldown 1e999"); T.eq(NS.db.pacing.globalCooldownSeconds, 3600, "cooldown 1e999: 3600")
	Cmd("cooldown nan"); T.eq(NS.db.pacing.globalCooldownSeconds, 3600, "cooldown nan: non cambia")
	Cmd("cooldown -4"); T.eq(NS.db.pacing.globalCooldownSeconds, 0, "negativo: 0")
	Cmd("cooldown 30"); T.eq(NS.db.pacing.globalCooldownSeconds, 30, "valore valido")
	Cmd("cooldown abc"); T.eq(NS.db.pacing.globalCooldownSeconds, 30, "testo: non cambia")
	NS.db.chance.battle = 40
	Cmd("chance battle nan"); T.eq(NS.db.chance.battle, 40, "prob nan: non cambia")
	Cmd("chance battle inf"); T.eq(NS.db.chance.battle, 40, "prob inf: non cambia")
	Cmd("chance battle -inf"); T.eq(NS.db.chance.battle, 40, "prob -inf: non cambia")
	Cmd("chance battle 250"); T.eq(NS.db.chance.battle, 100, "prob 250: 100")
	Cmd("chance battle 25"); T.eq(NS.db.chance.battle, 25, "prob valida")
	-- schemaVersion non intero, NaN, negativo: le migrazioni girano e lo schema corrente viene scritto
	for _, bad in ipairs({ 2.5, 0 / 0, -3, "x", 4.999, math.huge, -math.huge }) do
		AzerothUnspokenDB = { schemaVersion = bad, settings = {} }
		AzerothUnspokenCharacterDB = { schemaVersion = bad, memory = {} }
		Config:Load()
		T.eq(AzerothUnspokenDB.schemaVersion, Config.SCHEMA_VERSION, "globale con " .. tostring(bad))
		T.eq(AzerothUnspokenCharacterDB.schemaVersion, Config.SCHEMA_VERSION, "personaggio con " .. tostring(bad))
	end
	-- una versione più nuova, anche frazionaria, resta in sola lettura; l'infinito è un valore rovinato, non una versione (#154)
	AzerothUnspokenDB = { schemaVersion = Config.SCHEMA_VERSION + 1.5, settings = { intensity = 7 } }
	AzerothUnspokenCharacterDB = { schemaVersion = Config.SCHEMA_VERSION + 1, memory = {} }
	Config:Load()
	T.eq(Config.readOnly.global, true, "una versione più nuova resta in sola lettura")
	T.eq(Config.readOnly.character, true, "anche quella del personaggio")
	AzerothUnspokenDB = { schemaVersion = math.huge, settings = { intensity = 7 } }
	AzerothUnspokenCharacterDB = { schemaVersion = math.huge, memory = {} }
	Config:Load()
	T.eq(Config.readOnly.global, false, "infinito: un valore rovinato, non una versione più nuova")
	T.eq(Config.readOnly.character, false, "infinito anche per il personaggio")
	T.eq(AzerothUnspokenDB.settings.intensity, 7, "e le scelte restano")
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
end)

-- #154: le migrazioni sono idempotenti sui dati che hanno già la forma corrente (uno schemaVersion perso le rigira)
T.run("schemaVersion perso: le migrazioni non rifanno ciò che è già fatto", function()
	for _, lost in ipairs({ false, -1, math.huge, 0 / 0, "x" }) do
		AzerothUnspokenDB = { schemaVersion = lost or nil, settings = { chat = { mode = "AUTO_ONLY_IF_ALLOWED" },
			output = { autoPublicSay = true }, intensity = 61 } }
		AzerothUnspokenCharacterDB = { schemaVersion = lost or nil,
			personality = { version = 2, archetype = "custom", legacy = { temperament = "stoic" },
				traits = { stoicism = 95 }, trp3 = false },
			relationships = { version = 2, npcs = {}, players = { ["Aldric-Stormrage"] = { user = { note = "n" }, seen = { first = 1, last = 2, count = 3 } } } } }
		Config:Load()
		local g, c = AzerothUnspokenDB.settings, AzerothUnspokenCharacterDB
		T.eq(g.chat.mode, "AUTO_ONLY_IF_ALLOWED", tostring(lost) .. ": the chat mode is kept")
		T.eq(g.output.autoPublicSay, true, tostring(lost) .. ": the second consent already given is not taken back")
		T.eq(c.personality.version, 2, tostring(lost) .. ": the personality keeps its version")
		T.eq(c.personality.legacy.temperament, "stoic", tostring(lost) .. ": and its legacy choices")
		T.eq(c.personality.traits.stoicism, 95, tostring(lost) .. ": and its edited intensity")
		T.eq(c.relationships.players["Aldric-Stormrage"].user.note, "n", tostring(lost) .. ": the relationships")
		T.eq(AzerothUnspokenDB.schemaVersion, Config.SCHEMA_VERSION, tostring(lost) .. ": the schema is written")
	end
	-- a section written by a newer version of its module is not completed or validated
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	AzerothUnspokenCharacterDB = { schemaVersion = Config.SCHEMA_VERSION, personality = { version = 3, trp3 = "future" },
		emotion = { version = 2, values = "future" }, relationships = { version = 7, players = "future" } }
	Config:Load()
	local c = AzerothUnspokenCharacterDB
	T.eq(c.personality.trp3, "future", "personality v3: a value this version does not know is not reset")
	T.eq(c.personality.traits, nil, "and no field is added")
	T.eq(c.emotion.values, "future", "emotion v2 untouched")
	T.eq(c.relationships.players, "future", "relationships v4 untouched")
	T.ok(c.memory ~= nil and c.memories.version == 2, "the other sections are completed as usual")
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = nil, nil
	Config:Load()
end)
