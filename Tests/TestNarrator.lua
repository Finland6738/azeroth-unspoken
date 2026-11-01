-- Test di UI/NarratorFrame.lua, SpeakButton, SettingsFrame, Wizard e Bindings: tutto ciò che il giocatore vede
local NS = ...
local Gateway, Narrator, Director = NS.Gateway, NS.Narrator, NS.Director
local frame = Narrator:GetFrame()

local function Reset()
	SENT = {}
	HW = false
	P.instance, P.group = false, false
	NS.db.chat.mode, NS.db.chat.channel = "PRIVATE", "auto"
	NS.db.output.privateNarrator = true
	NS.db.output.autoPublicSay = false
	NS.db.chat.floodSeconds = 4
	Gateway.sendLog = {}
	Gateway:Discard()
	Director:SetPaused(false)
	Narrator:Clear()
	Narrator:ClearHistory()
	NS.db.ui.narrator.historySize = 30
	NS.db.ui.narrator.duration, NS.db.ui.narrator.readingSpeed, NS.db.ui.narrator.reduceMotion = 8, 14, false
	NS.db.chat.pendingSeconds = 25
	frame._s.mouseOver = false
	ADVANCE(100)
end
local CTX = { player = "Garrosh" }
local function Rec(form, speaker, text)
	return { text = text or "Il vento porta voci lontane.", form = form or "say", event = "muse",
		speaker = speaker or (form == "emote" and "narrator" or "character") }
end

T.run("il riquadro esiste ed è discreto", function()
	T.ok(frame ~= nil, "riquadro costruito")
	T.ok(Narrator:GetFrame().header ~= nil, "intestazione")
	T.ok(not frame:IsShown(), "nascosto finché non c'è nulla da dire")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore di costruzione")
	-- solo l'intestazione e i pulsanti ricevono il mouse: il testo lascia passare i clic
	T.ok(frame.text ~= nil and frame.header ~= nil, "testo e intestazione separati")
end)

T.run("etichette delle quattro voci", function()
	Reset()
	local expected = { narrator = "Narratore", inner = "Voce interiore", character = "Personaggio", npc = "NPC" }
	NS.db.locale = "it"
	for speaker, label in pairs(expected) do
		Gateway:Propose(Rec("say", speaker), CTX, {})
		T.ok(frame.label:GetText():find(label, 1, true), speaker .. ": etichetta " .. label)
		T.ok(frame:IsShown(), speaker .. ": visibile")
	end
	NS.db.locale = "en"
	Gateway:Propose(Rec("say", "inner"), CTX, {})
	T.ok(frame.label:GetText():find("Inner voice", 1, true), "etichetta in inglese")
	NS.db.locale = "it"
	-- il testo: emote con il nome, parlato tra virgolette
	Gateway:Propose(Rec("emote", nil, "guarda l'orizzonte"), CTX, {})
	T.eq(frame.text:GetText(), "Garrosh guarda l'orizzonte", "emote con il nome")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	T.eq(frame.text:GetText(), "«Andiamo.»", "parlato tra virgolette")
end)

T.run("durata e dissolvenza", function()
	Reset()
	NS.db.ui.narrator.duration = 8
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	-- #177: 8 s plus 16 characters at 14 a second
	T.ok(math.abs(Narrator.remaining - (8 + 16 / 14)) < 1e-9, "durata: base più tempo di lettura")
	UPDATE(5)
	T.ok(frame:IsShown(), "ancora visibile dopo 5 s")
	T.eq(frame:GetAlpha(), 1, "il riquadro è pieno finché non sbiadisce (#173)")
	UPDATE(Narrator.remaining - 5 - 0.5)
	T.ok(frame:IsShown() and frame:GetAlpha() < 1, "in dissolvenza verso la fine")
	UPDATE(5)
	T.ok(not frame:IsShown(), "sparisce da solo")
	-- la durata è regolabile
	NS.db.ui.narrator.duration = 20
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	UPDATE(15)
	T.ok(frame:IsShown(), "con durata 20 resta più a lungo")
	UPDATE(10)
	T.ok(not frame:IsShown(), "poi sparisce")
	NS.db.ui.narrator.duration = 8
end)

T.run("opacità e dimensione del testo", function()
	Reset()
	-- #173: the setting is the background's opacity, once; the text keeps full opacity
	local bgAlpha
	frame.bg.SetColorTexture = function(_, _, _, _, a) bgAlpha = a end
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.9, 20
	Narrator:ApplySettings()
	local _, size = frame.text:GetFont()
	T.eq(size, 20, "dimensione del testo applicata")
	T.eq(bgAlpha, 0.9, "opacità applicata allo sfondo, una volta sola")
	Gateway:Propose(Rec("say", "inner"), CTX, {})
	UPDATE(0.1)
	T.eq(frame:GetAlpha(), 1, "il testo non sbiadisce con l'opacità")
	-- a value under 0.55 (saved before #173) never makes the background thinner than 0.55
	NS.db.ui.narrator.alpha = 0.2
	Narrator:ApplySettings()
	T.eq(bgAlpha, 0.55, "sfondo almeno 0.55")
	-- the voice label is 12 px or more
	for _, fontSize in ipairs({ 10, 14, 20 }) do
		NS.db.ui.narrator.fontSize = fontSize
		Narrator:ApplySettings()
		local _, labelSize = frame.label:GetFont()
		T.ok(labelSize >= 12, "etichetta della voce di almeno 12 px (testo " .. fontSize .. "): " .. labelSize)
	end
	frame.bg.SetColorTexture = nil
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.8, 14
	Narrator:ApplySettings()
end)

T.run("cronologia recente", function()
	Reset()
	NS.db.ui.narrator.historySize = 5
	for i = 1, 8 do Gateway:Propose(Rec("say", "inner", "frase " .. i), CTX, {}) end
	T.eq(#Narrator.history, 5, "al massimo historySize voci")
	T.eq(Narrator.history[1].text, "frase 4", "le più vecchie escono")
	T.eq(Narrator.history[5].text, "frase 8", "la più recente è in fondo")
	Narrator:ToggleHistory()
	T.ok(Narrator.historyFrame:IsShown(), "cronologia aperta")
	Narrator:ToggleHistory()
	T.ok(not Narrator.historyFrame:IsShown(), "cronologia chiusa")
	-- la cronologia non si salva: nessuna traccia nei dati del personaggio
	T.eq(#NS.cdb.history, 0, "history del personaggio resta vuota (è per S6)")
	T.eq(#SENT, 0, "e non finisce in chat")
	Narrator:ClearHistory()
	T.eq(#Narrator.history, 0, "svuotata")
end)

T.run("pausa immediata", function()
	Reset()
	NS.db.chance.battle = 100
	NS.db.pacing.globalCooldownSeconds = 0
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, {})
	T.ok(Gateway:GetPending() ~= nil and frame:IsShown(), "proposta visibile")
	AzerothUnspoken_TogglePause()
	T.ok(NS.paused, "in pausa")
	T.eq(Gateway:GetPending(), nil, "la proposta viene scartata")
	T.ok(not frame:IsShown(), "il riquadro si chiude subito")
	T.eq(frame.pauseBtn:GetText(), ">", "il pulsante indica la ripresa")
	-- niente frasi spontanee in pausa
	local n = #Narrator.history
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED"); P.combat = false
	T.eq(#Narrator.history, n, "nessuna frase spontanea in pausa")
	-- le richieste dirette del giocatore restano possibili
	T.ok(NS:Trigger("greet"), "una richiesta esplicita funziona anche in pausa")
	AzerothUnspoken_TogglePause()
	T.ok(not NS.paused, "ripresa")
	T.eq(frame.pauseBtn:GetText(), "II", "pulsante di pausa")
	-- #175: "|" is the client's escape character: "||" shows a single bar
	T.ok(not frame.pauseBtn:GetText():find("|", 1, true), "il simbolo della pausa non contiene |")
	-- il pulsante del riquadro
	frame.pauseBtn:Click()
	T.ok(NS.paused, "il pulsante del riquadro mette in pausa")
	frame.pauseBtn:Click()
	T.ok(not NS.paused, "e riprende")
	-- il pulsante "pronuncia" si spegne in pausa
	NS.paused = false
end)

T.run("proposta: non svanisce, il pulsante x la scarta", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, {})
	UPDATE(20)
	T.ok(frame:IsShown(), "una proposta in attesa non svanisce")
	ADVANCE(30)           -- la proposta scade
	UPDATE(1)
	T.eq(Gateway:GetPending(), nil, "scaduta")
	UPDATE(10)
	T.ok(not frame:IsShown(), "e il riquadro si chiude")
	Gateway:Propose(Rec("say"), CTX, {})
	local closeBtn
	for _, c in ipairs(frame.header.children) do
		if c:GetText() == "x" then closeBtn = c end
	end
	T.ok(closeBtn ~= nil, "pulsante di chiusura")
	closeBtn:Click()
	T.eq(Gateway:GetPending(), nil, "x scarta la proposta")
	T.ok(not frame:IsShown(), "e nasconde il riquadro")
end)

T.run("ripiego sulla chat locale se il riquadro è spento", function()
	Reset()
	NS.db.output.privateNarrator = false
	Gateway:Propose(Rec("say", "inner", "Resto solo con me."), CTX, {})
	T.ok(not frame:IsShown(), "il riquadro resta chiuso")
	T.ok(T.sentContains("Resto solo con me."), "la frase compare nella chat locale")
	local s = SENT[#SENT]
	T.ok(s:find("^PRINT:"), "è un messaggio locale, non un invio")
	T.eq(#Narrator.history, 1, "e finisce comunque in cronologia")
	NS.db.output.privateNarrator = true
end)

T.run("posizione e blocco", function()
	Reset()
	NS.db.ui.narrator.pos = nil
	NS.db.ui.narrator.locked = true
	frame.header.scripts.OnDragStart(frame.header)
	T.ok(not frame._s.moving, "bloccato: non si sposta")
	NS.db.ui.narrator.locked = false
	frame.header.scripts.OnDragStart(frame.header)
	T.ok(frame._s.moving, "sbloccato: si sposta")
	frame.header.scripts.OnDragStop(frame.header)
	local pos = NS.db.ui.narrator.pos
	T.ok(type(pos) == "table" and #pos == 4, "posizione salvata")
	Narrator:ResetPosition()
	T.eq(NS.db.ui.narrator.pos, nil, "posizione ripristinata")
end)

T.run("#177: un avviso delle storie dura come le altre frasi ed entra in cronologia", function()
	Reset()
	local n = #Narrator.history
	Narrator:Notice("Una storia attende la tua scelta.")
	T.ok(frame:IsShown() and frame.text:GetText() == "Una storia attende la tua scelta.", "avviso mostrato")
	T.eq(Narrator.remaining, Narrator:ReadingTime("Una storia attende la tua scelta."), "durata normale")
	T.ok(Narrator.remaining >= NS.db.ui.narrator.duration, "non più corta della durata scelta")
	T.eq(#Narrator.history, n + 1, "entra in cronologia")
	T.ok(Narrator.history[#Narrator.history].notice, "segnato come avviso")
	-- with the box off it still reaches the history, and nothing is printed
	NS.db.output.privateNarrator = false
	SENT = {}
	Narrator:Notice("Un'altra storia.")
	T.eq(#Narrator.history, n + 2, "in cronologia anche col riquadro spento")
	T.eq(#SENT, 0, "nessun messaggio")
	NS.db.output.privateNarrator = true
end)

T.run("pulsante 'pronuncia' e tasti", function()
	Reset()
	local f = FindWidgets(function(w) return w.name == "AzerothUnspokenButton" end)[1]
	T.ok(f ~= nil, "pulsante creato")
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, {})
	HW = true
	f:Click()
	HW = false
	T.eq(SENT[#SENT], "SAY: Il vento porta voci lontane.", "il clic è la conferma")
	-- il file dei tasti dichiara pronuncia e pausa
	T.eq(type(AzerothUnspoken_Speak), "function", "funzione del tasto 'pronuncia'")
	T.eq(type(AzerothUnspoken_TogglePause), "function", "funzione del tasto di pausa")
	T.ok(BINDING_NAME_AZEROTHUNSPOKEN_SPEAK and BINDING_NAME_AZEROTHUNSPOKEN_PAUSE, "nomi dei tasti")
end)

T.run("pannello delle impostazioni: ogni pulsante funziona", function()
	Reset()
	local rows = FindWidgets(function(w) return w.kind == "Button" and w.scripts.OnClick end)
	T.ok(#rows > 20, "pulsanti del pannello: " .. #rows)
	local before = #NS.Diagnostics.errors
	-- si clicca tutto ciò che è del pannello, del wizard o del narratore, e non deve esserci alcun errore
	for _, b in ipairs(rows) do
		if b.name ~= "AzerothUnspokenButton" then
			local ok, err = pcall(b.scripts.OnClick, b, "LeftButton")
			T.ok(ok, "clic senza errori: " .. tostring(err))
		end
	end
	T.eq(#NS.Diagnostics.errors, before, "nessun errore in diagnostica")
	for _, s in ipairs(SENT) do
		T.ok(s:find("^PRINT:"), "nessun invio dai pulsanti delle impostazioni: " .. s)
	end
	-- dopo aver cliccato tutto lo stato resta valido
	T.ok(NS.Config:Get("intensity") >= 0 and NS.Config:Get("intensity") <= 100, "intensità valida")
	T.ok(NS.db.ui.narrator.alpha >= 0.2 and NS.db.ui.narrator.alpha <= 1, "opacità valida")
	T.ok(NS.db.ui.narrator.fontSize >= 10 and NS.db.ui.narrator.fontSize <= 28, "dimensione valida")
	T.eq(#NS.Config:Validate(NS.db), 0, "tutte le impostazioni passano la validazione")
	NS.db.locale = "it"
	NS.paused = false
end)

-- clicca ogni pulsante della pagina del wizard in primo piano (non Salta, Indietro, Avanti)
local function ClickPage(w)
	local clicked = 0
	for _, b in ipairs(w.content.children) do
		if b:IsShown() then
			for _, x in ipairs(b.children) do
				if x.kind == "Button" and x.scripts.OnClick then
					x.scripts.OnClick(x, "LeftButton")
					clicked = clicked + 1
				end
			end
		end
	end
	return clicked
end

T.run("wizard del primo avvio", function()
	Reset()
	NS.db.ui.wizardDone = false
	NS.db.locale = "it"
	NS.db.intensity = 50
	AddOn_TotalRP3 = nil
	T.ok(NS.Wizard:Open(), "si apre")
	T.ok(NS.Wizard:IsOpen(), "visibile")
	local w = _G.AzerothUnspokenWizard
	T.ok(w.count:GetText():find("1 di 7", 1, true), "primo passo di sette: " .. w.count:GetText())
	-- avanti fino alla fine, provando i pulsanti di ogni pagina
	local steps, clicks = 0, 0
	while NS.Wizard:IsOpen() and steps < 12 do
		steps = steps + 1
		clicks = clicks + ClickPage(w)
		w.next:Click()
	end
	T.ok(clicks >= 15, "pulsanti provati: " .. clicks)
	T.eq(steps, 7, "sette passi senza Total RP 3")
	T.ok(not NS.Wizard:IsOpen(), "si chiude alla fine")
	T.ok(NS.db.ui.wizardDone, "segnato come fatto")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
	T.eq(#Gateway.sendLog, 0, "il wizard non ha inviato nulla in chat")
	T.eq(NS.db.privacy.socialOptIn, false, "il wizard non attiva la partecipazione social")
	NS.db.chat.mode = "PRIVATE"
	NS.db.locale = "it"

	-- con Total RP 3 presente i passi sono sette
	AddOn_TotalRP3 = {}
	NS.db.ui.wizardDone = false
	NS.Wizard:Open()
	steps = 0
	while NS.Wizard:IsOpen() and steps < 12 do
		steps = steps + 1
		w.next:Click()
	end
	T.eq(steps, 8, "otto passi con Total RP 3")
	AddOn_TotalRP3 = nil

	-- Indietro funziona
	NS.db.ui.wizardDone = false
	NS.Wizard:Open()
	w.next:Click(); w.next:Click()
	T.ok(w.count:GetText():find("3 di 7", 1, true), "terzo passo")
	w.back:Click()
	T.ok(w.count:GetText():find("2 di 7", 1, true), "indietro")

	-- Salta: chiude subito e lascia i valori predefiniti
	NS.db.ui.wizardDone = false
	NS.Wizard:Open()
	T.ok(NS.Wizard:IsOpen(), "riaperto")
	w.skip:Click()
	T.ok(not NS.Wizard:IsOpen() and NS.db.ui.wizardDone, "Salta chiude e conclude")
end)

T.run("wizard: le scelte arrivano alle impostazioni", function()
	Reset()
	NS.db.modules.audio = false
	NS.db.locale = "it"
	NS.db.intensity = 50
	NS.db.proseDepth = "literary"
	NS.db.chat.mode = "PRIVATE"
	NS.Wizard:Open()
	local w = _G.AzerothUnspokenWizard
	local function Find(text)
		for _, p in ipairs(w.content.children) do
			for _, x in ipairs(p.children) do
				if x.kind == "Button" and x:GetText():find(text, 1, true) then return x end
			end
		end
	end
	-- passo 1: lingua inglese
	Find("English"):Click()
	T.eq(NS.db.locale, "en", "lingua")
	w.next:Click()
	-- passo 2: preset personale (nella lingua scelta)
	Find("Personal RPG"):Click()
	T.eq(NS.db.preset, "personal", "preset")
	T.ok(not NS.db.modules.world, "preset applicato ai moduli")
	w.next:Click()
	-- passo 3: intensità +10
	Find("+"):Click()
	T.eq(NS.db.intensity, 60, "intensità")
	w.next:Click()
	-- passo 4: profondità elevata
	Find("Elevated"):Click()
	T.eq(NS.db.proseDepth, "elevated", "profondità")
	w.next:Click()
	-- passo 5: un modulo. L'asterisco segna solo i moduli senza effetto (#77): NPC e Storie funzionano
	T.ok(not Find("NPC dialogues"):GetText():find("*", 1, true), "NPC dialogues non ha l'asterisco")
	T.ok(not Find("Stories"):GetText():find("*", 1, true), "Stories non ha l'asterisco")
	T.ok(Find("Social *"), "Social ha l'asterisco")
	T.ok(Find("Audio"):GetText():find("*", 1, true), "Audio ha l'asterisco")
	for module in pairs(NS.Config.MODULE_LIVE) do
		T.ok(NS.db.modules[module] ~= nil, "il modulo '" .. module .. "' esiste nelle impostazioni")
	end
	Find("Audio"):Click()
	T.eq(NS.db.modules.audio, true, "modulo audio")
	T.eq(NS.db.preset, "custom", "preset personalizzato dopo la modifica a mano")
	NS.db.modules.audio = false
	w.next:Click()
	-- passo 6: la chat resta privata finché non la cambi, e il consenso social non si tocca
	T.eq(NS.db.chat.mode, "PRIVATE", "chat privata")
	Find("confirm to send"):Click()
	T.eq(NS.db.chat.mode, "CONFIRM_TO_SEND", "scelta della modalità chat")
	T.eq(NS.db.output.autoPublicSay, false, "senza invio automatico")
	T.eq(NS.db.privacy.socialOptIn, false, "social opt-in invariato")
	Find("Try the narrator"):Click()
	T.ok(frame:IsShown(), "la prova mostra il narratore")
	T.eq(Gateway:GetPending(), nil, "la prova non crea proposte")
	w.next:Click()
	T.ok(NS.Wizard:IsOpen(), "l'ultima pagina: tasti, pulsante e impostazioni")
	w.next:Click()
	T.ok(not NS.Wizard:IsOpen(), "fine")
	NS.db.locale = "it"
	NS.db.intensity = 50
	NS.db.proseDepth = "literary"
	NS.Config:ApplyPreset("complete")
	NS.db.chat.mode = "PRIVATE"
end)

---------------------------------------------------------------------------
-- Regressioni di Q2 (issue #4, #8, #11, #14, #17), con timer e tempo veri
---------------------------------------------------------------------------
local function Press()
	HW = true
	AzerothUnspoken_Speak()
	HW = false
end

-- il riquadro "vive" davvero: il tempo passa e si ridisegna a ogni frame
local function Tick(seconds, step)
	step = step or 0.5
	local t = 0
	while t < seconds do
		ADVANCE(step)
		UPDATE(step)
		t = t + step
	end
end

T.run("#4: l'editor non scade e il testo scritto non si perde", function()
	Reset()
	NS.db.chat.pendingSeconds = 25
	Gateway:SetMode("PREVIEW")
	Gateway:Propose(Rec("say"), CTX, {})
	Tick(20)
	Press()   -- apre l'editor dopo 20 s
	T.ok(frame.editor:IsShown(), "editor aperto")
	T.ok(Narrator:IsEditing() and Gateway.editing, "il narratore e il Gateway lo sanno")
	Tick(40)  -- oltre pendingSeconds
	T.ok(frame.editor:IsShown(), "dopo 40 s l'editor è ancora aperto")
	T.ok(Gateway:GetPending() ~= nil, "la proposta è ancora in attesa")
	HW = true
	frame.editor:TypeEnter("Che il vento ci sia amico.")
	HW = false
	T.eq(SENT[#SENT], "SAY: Che il vento ci sia amico.", "l'Invio spedisce il testo modificato")
	T.eq(Gateway:GetPending(), nil, "proposta chiusa")
	T.ok(not frame.editor:IsShown() and not Gateway.editing, "editor chiuso")
end)

T.run("#4: chiuso l'editor con Esc, l'attesa riparte da zero", function()
	Reset()
	Gateway:SetMode("PREVIEW")
	Gateway:Propose(Rec("say"), CTX, {})
	Tick(20)
	Press()
	Tick(60)
	frame.editor.scripts.OnEscapePressed(frame.editor)
	T.ok(not frame.editor:IsShown(), "editor chiuso")
	T.ok(Gateway:GetPending() ~= nil, "la proposta non è scaduta mentre si scriveva")
	Tick(10)
	T.ok(Gateway:GetPending() ~= nil, "10 s dopo la chiusura è ancora lì")
	Tick(20)
	T.eq(Gateway:GetPending(), nil, "scade 25 s dopo la chiusura dell'editor")
end)

T.run("#4: senza proposta, Invio avvisa invece di non fare nulla", function()
	Reset()
	Gateway:SetMode("PREVIEW")
	Gateway:Propose(Rec("say"), CTX, {})
	Press()
	T.ok(frame.editor:IsShown(), "editor aperto")
	-- la proposta sparisce da sotto (qui: scartata dal comando /au annulla)
	frame.editor:SetText("Il mio testo scritto a mano")
	SENT = {}
	Gateway:Discard()
	T.ok(not frame.editor:IsShown(), "l'editor si chiude")
	T.ok(T.sentContains("Il mio testo scritto a mano"), "il testo scritto torna in chat locale: non si perde in silenzio")
	-- Invio con nessuna proposta
	SENT = {}
	HW = true
	frame.editor:TypeEnter("Testo senza proposta")
	HW = false
	T.ok(T.sentContains("Testo senza proposta") and T.sentContains("nulla è stato inviato"), "avviso e testo restituito")
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "nulla in chat pubblica: " .. s) end
end)

T.run("#4: una richiesta del giocatore sostituisce la proposta ma restituisce il testo; la frase spontanea no", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, "Prima."), CTX, {})
	T.ok(Narrator:OpenEditor(), "editor aperto")
	frame.editor:SetText("Qualcosa che sto scrivendo")
	-- evento spontaneo: non cambia la proposta sotto le dita
	local shown = Gateway:Propose(Rec("say", nil, "Spontanea."), CTX, { auto = true })
	T.ok(shown == false, "frase spontanea scartata durante la modifica")
	T.eq(Gateway:GetPending().text, "Prima.", "la proposta è la stessa")
	T.ok(frame.editor:IsShown() and frame.editor:GetText() == "Qualcosa che sto scrivendo", "l'editor e il testo sono intatti")
	-- richiesta esplicita (tasto, comando): la nuova proposta vince, il testo scritto torna in chat locale
	SENT = {}
	Gateway:Propose(Rec("say", nil, "Richiesta."), CTX, {})
	T.eq(Gateway:GetPending().text, "Richiesta.", "la richiesta esplicita sostituisce")
	T.ok(not frame.editor:IsShown(), "editor chiuso")
	T.ok(T.sentContains("Qualcosa che sto scrivendo"), "ma il testo scritto non va perso")
end)

T.run("#17: il mouse sopra il riquadro lo tiene visibile", function()
	Reset()
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})   -- privata: nessuna proposta
	local remaining = Narrator.remaining
	-- senza il mouse la frase svanisce
	Tick(remaining + 2)
	T.ok(not frame:IsShown(), "senza il mouse svanisce")
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	remaining = Narrator.remaining
	frame._s.mouseOver = true
	Tick(remaining + 10)
	T.ok(frame:IsShown(), "con il mouse sopra resta visibile oltre la durata")
	T.ok(Narrator.elapsed <= remaining, "il tempo resta fermo")
	T.eq(frame:GetAlpha(), 1, "e non sbiadisce")
	-- #21: tolto il mouse, il riquadro sbiadisce (non sparisce a opacità piena)
	frame._s.mouseOver = false
	Tick(0.1)
	T.ok(frame:IsShown(), "tolto il mouse: ancora visibile per la dissolvenza")
	T.ok(frame:GetAlpha() < 1 and frame:GetAlpha() > 0, "tolto il mouse: opacità in calo")
	Tick(3)
	T.ok(not frame:IsShown(), "tolto il mouse svanisce")
	-- nessun metodo né funzione globale: il riquadro funziona come prima (falso)
	T.ok(not NS.Compat:IsMouseOver(nil), "senza frame: falso")
	T.ok(not NS.Compat:IsMouseOver({}), "senza il metodo: falso")
	local saved = MouseIsOver
	MouseIsOver = function() return true end
	T.ok(NS.Compat:IsMouseOver({}), "ripiego su MouseIsOver se c'è")
	MouseIsOver = saved
end)

T.run("#8: l'invio automatico richiede due gesti, da comando, pannello e wizard", function()
	Reset()
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	local cmd = SlashCmdList.AZEROTHUNSPOKEN

	-- comando: il primo avvisa, il secondo (entro 10 s) attiva
	SENT = {}
	cmd("mode auto")
	T.eq(NS.db.chat.mode, "CONFIRM_TO_SEND", "il primo comando non cambia nulla")
	T.ok(not NS.db.output.autoPublicSay, "nessun consenso")
	T.ok(T.sentContains("NOME DEL TUO PERSONAGGIO"), "mostra l'avviso intero")
	cmd("mode auto")
	T.eq(NS.db.chat.mode, "CONFIRM_TO_SEND", "il secondo comando subito dopo non passa (#178)")
	ADVANCE(NS.Consent.MIN_DELAY + 0.5)
	cmd("mode auto")
	T.eq(NS.db.chat.mode, "AUTO_ONLY_IF_ALLOWED", "il secondo comando, dopo una pausa, attiva")
	T.ok(NS.db.output.autoPublicSay, "con il consenso")
	Gateway:SetMode("CONFIRM_TO_SEND")
	-- scaduto il tempo, serve di nuovo l'avviso
	cmd("mode auto")
	ADVANCE(NS.Consent.WINDOW + 1)
	cmd("mode auto")
	T.ok(not NS.db.output.autoPublicSay, "oltre la finestra la conferma non vale: nuovo avviso")
	cmd("mode confirm")   -- un altro comando disarma
	cmd("mode auto")
	T.ok(not NS.db.output.autoPublicSay, "un altro cambio di modalità annulla l'avviso")
	Gateway:SetMode("CONFIRM_TO_SEND")

	-- pannello: scorrere le modalità non arriva mai all'automatica
	local function ButtonStarting(prefix)
		local found
		for _, b in ipairs(FindWidgets(function(w) return w.kind == "Button" and w.scripts.OnClick end)) do
			if (b:GetText() or ""):find(prefix, 1, true) == 1 then found = b end
		end
		return found
	end
	Gateway:SetMode("PRIVATE")
	local panelButton = ButtonStarting("Chat: ")
	T.ok(panelButton ~= nil, "riga della modalità chat nel pannello")
	for _ = 1, 8 do
		panelButton:Click()
		T.ok(NS.db.chat.mode ~= "AUTO_ONLY_IF_ALLOWED", "il ciclo del pannello non passa dall'automatica")
		T.ok(not NS.db.output.autoPublicSay, "né accende il consenso")
	end
	-- riga dedicata: due clic
	local autoRow = ButtonStarting("Invio automatico")
	T.ok(autoRow ~= nil, "riga 'Invio automatico'")
	Gateway:SetMode("CONFIRM_TO_SEND")
	autoRow:Click()
	T.ok(not NS.db.output.autoPublicSay and Gateway:IsAutoArmed(), "primo clic: avviso e attesa")
	T.ok(autoRow:GetText():find(NS:L("consent_off_reading"), 1, true), "la riga dice, a parole: spento, leggi prima")
	autoRow:Click()
	T.ok(not NS.db.output.autoPublicSay, "un doppio clic non supera la conferma (#178)")
	ADVANCE(NS.Consent.MIN_DELAY + 0.5)
	T.ok(autoRow:GetText():find(NS:L("consent_off_ready"), 1, true), "dopo la pausa la riga dice: spento, conferma")
	autoRow:Click()
	T.ok(NS.db.output.autoPublicSay and Gateway:IsAutoActive(), "secondo clic, dopo la pausa: attivo")
	autoRow:Click()
	T.ok(not NS.db.output.autoPublicSay and NS.db.chat.mode == "CONFIRM_TO_SEND", "un altro clic lo spegne e torna a 'conferma'")

	-- wizard, ultimo passo
	Gateway:SetMode("PRIVATE")
	NS.db.locale = "it"
	NS.Wizard:Open()
	local w = _G.AzerothUnspokenWizard
	for _ = 1, 5 do w.next:Click() end
	T.ok(w.count:GetText():find("6 di 7", 1, true), "il passo della chat")
	local function Find(text)
		for _, p in ipairs(w.content.children) do
			for _, x in ipairs(p.children) do
				if x.kind == "Button" and (x:GetText() or ""):find(text, 1, true) then return x end
			end
		end
	end
	local auto = Find("automatica")
	T.ok(auto ~= nil, "pulsante dell'automatica nel wizard")
	auto:Click()
	T.eq(NS.db.chat.mode, "PRIVATE", "un clic nel wizard non cambia la modalità")
	T.ok(not NS.db.output.autoPublicSay, "né dà il consenso")
	auto:Click()
	T.ok(not NS.db.output.autoPublicSay, "un doppio clic non la attiva (#178)")
	ADVANCE(NS.Consent.MIN_DELAY + 0.5)
	auto:Click()
	T.ok(NS.db.output.autoPublicSay and NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED", "il secondo clic, dopo la pausa, la attiva")
	w.skip:Click()
	Gateway:SetMode("PRIVATE")
end)

T.run("#8: AUTO senza consenso si comporta come CONFIRM_TO_SEND", function()
	Reset()
	Gateway:SetMode("AUTO_ONLY_IF_ALLOWED")
	P.instance = true
	Gateway:Propose(Rec("emote", nil, "sorride"), CTX, { auto = true })
	Gateway:Propose(Rec("say", nil, "Avanti!"), CTX, { auto = true })
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "senza consenso nulla parte da solo: " .. s) end
	T.ok(Gateway:GetPending() ~= nil, "resta una proposta da confermare")
	P.instance = false
end)

T.run("#11: il testo d'aiuto del wizard segue la lingua scelta", function()
	Reset()
	NS.db.locale = "it"
	NS.Wizard:Open()
	local w = _G.AzerothUnspokenWizard
	local function HelpText()
		for _, x in ipairs(w.content.children[1].children) do
			if x.kind == "FontString" and x:GetText() == NS:L("wiz_language_help") then return x:GetText() end
		end
	end
	T.ok(NS:L("wiz_language_help"):find("Indipendente", 1, true), "testo italiano")
	T.eq(HelpText(), NS:L("wiz_language_help"), "la pagina mostra l'aiuto in italiano")
	for _, p in ipairs(w.content.children) do
		for _, x in ipairs(p.children) do
			if x.kind == "Button" and (x:GetText() or ""):find("English", 1, true) then x:Click() end
		end
	end
	T.eq(NS.db.locale, "en", "lingua cambiata")
	T.eq(HelpText(), NS:L("wiz_language_help"), "l'aiuto è nella lingua nuova")
	T.ok(HelpText():find("Independent of the game client", 1, true), "in inglese")
	w.skip:Click()
	NS.db.locale = "it"
end)

T.run("#14: 'Nella chat' copia la proposta nella casella della chat senza inviare", function()
	Reset()
	NS.db.locale = "it"
	P.group = true
	local opened = {}
	local saved = ChatFrame_OpenChat
	ChatFrame_OpenChat = function(text) table.insert(opened, text) end
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, "Per l'onore dei miei avi."), CTX, {})
	T.ok(frame.copyBtn:IsShown(), "il pulsante c'è se il client offre la casella")
	frame.copyBtn:Click()
	T.eq(opened[1], "/s Per l'onore dei miei avi.", "la casella si apre su /s con il testo")
	T.eq(#SENT, 0, "l'addon non invia nulla: lo fa il giocatore con Invio")
	T.eq(Gateway:GetPending(), nil, "la proposta si scarta dopo la copia")

	-- emote e canale scelto
	Gateway:Propose(Rec("emote", nil, "alza lo sguardo."), CTX, {})
	frame.channelBtn:Click()   -- /e -> /p (con il gruppo)
	T.eq(Gateway:GetPending().channel, "PARTY", "canale cambiato")
	frame.copyBtn:Click()
	T.eq(opened[2], "/p Garrosh alza lo sguardo.", "l'emote in /p porta il nome, come nell'invio diretto")
	T.eq(#SENT, 0, "ancora nulla inviato")

	-- senza la casella il pulsante si nasconde (GDD §3.8)
	ChatFrame_OpenChat = nil
	Gateway:Propose(Rec("say"), CTX, {})
	T.ok(not frame.copyBtn:IsShown(), "senza ChatFrame_OpenChat il pulsante è nascosto")
	local ok, why = Gateway:CopyToChat()
	T.ok(not ok and why == "no_chat_box", "e la funzione lo dichiara")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta")
	ChatFrame_OpenChat = saved
	P.group = false
end)

---------------------------------------------------------------------------
-- U fixes: #176 (one source of truth for the proposal), #173, #177, #179 (settings)
---------------------------------------------------------------------------
T.run("#176: una frase privata non toglie la proposta dal riquadro", function()
	Reset()
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	local p = Gateway:GetPending()
	Gateway:Propose(Rec("say", "inner", "Un pensiero privato."), CTX, {})
	Narrator:Notice("Una storia attende.")
	T.eq(Gateway:GetPending(), p, "la proposta è ancora in attesa")
	T.eq(Narrator.proposal, p, "il narratore mostra ancora quella")
	T.eq(frame.text:GetText(), "«Andiamo.»", "sullo schermo c'è la proposta")
	T.ok(frame.bar:IsShown(), "con la barra Invia")
	T.ok(frame.label:GetText():find("+2 in cronologia", 1, true), "l'etichetta dice che due frasi aspettano: " .. frame.label:GetText())
	T.eq(Narrator.history[#Narrator.history - 1].text, "Un pensiero privato.", "la frase privata è subito in cronologia")
	-- the speak key sends exactly what is on screen
	Press()
	T.eq(SENT[#SENT], "SAY: Andiamo.", "il tasto invia la frase mostrata")
	T.eq(Narrator.history[#Narrator.history - 2].sentTo, "SAY", "in cronologia è segnata la proposta, non la frase dopo")
	T.eq(Narrator.history[#Narrator.history - 1].sentTo, nil, "la frase privata non risulta inviata")
	T.ok(frame.label:GetText():find("inviato in /s", 1, true), "il riquadro conferma l'invio")
	-- then the held lines, in order
	Tick(3.5)
	T.eq(frame.text:GetText(), "Un pensiero privato.", "poi la frase trattenuta")
	T.ok(not frame.bar:IsShown(), "senza barra")
	Tick(Narrator.remaining + 0.5)
	T.eq(frame.text:GetText(), "Una storia attende.", "poi l'avviso")
	Tick(Narrator.remaining + 1)
	T.ok(not frame:IsShown(), "e il riquadro si chiude")
end)

T.run("#176: dopo uno scarto le frasi trattenute seguono; la x le chiude; quelle vecchie restano in cronologia", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	frame.discardBtn:Click()
	T.eq(Gateway:GetPending(), nil, "scartata")
	Tick(4)
	T.eq(frame.text:GetText(), "Un pensiero.", "la frase trattenuta compare")
	-- the x discards the proposal and the held lines
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Gateway:Propose(Rec("say", "inner", "Un altro pensiero."), CTX, {})
	for _, c in ipairs(frame.header.children) do
		if c:GetText() == "x" then c:Click() end
	end
	T.ok(not frame:IsShown() and #Narrator.held == 0, "la x chiude tutto")
	-- a line held for more than two minutes is not shown any more (it is in the history)
	NS.db.chat.pendingSeconds = 0
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Gateway:Propose(Rec("say", "inner", "Un pensiero lontano."), CTX, {})
	Tick(150, 5)
	Gateway:Discard()
	Tick(5)
	T.ok(not frame:IsShown(), "una frase trattenuta troppo a lungo non compare")
	T.eq(Narrator.history[#Narrator.history].text, "Un pensiero lontano.", "ma è in cronologia")
end)

T.run("#176: un invio bloccato rimette la proposta sullo schermo", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	BLOCK_EVENT_LATE = true
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Gateway:PlayerAction(function() Gateway:SendPending() end)
	T.eq(Gateway:GetPending(), nil, "sembra inviata")
	-- another line takes the box before the client's event arrives
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	T.eq(frame.text:GetText(), "Un pensiero.", "un'altra frase nel riquadro")
	ADVANCE(1)
	BLOCK_EVENT_LATE = false
	local p = Gateway:GetPending()
	T.ok(p ~= nil, "la proposta torna in attesa")
	T.eq(Narrator.proposal, p, "e il narratore la mostra di nuovo")
	T.eq(frame.text:GetText(), "«Andiamo.»", "con il suo testo")
	T.ok(frame.bar:IsShown(), "e la barra")
	Gateway:Discard()
end)

T.run("#177: il mouse sopra il riquadro ferma l'attesa della proposta; conto alla rovescia visibile", function()
	Reset()
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	T.ok(frame.label:GetText():find("· 25 s", 1, true), "conto alla rovescia: " .. frame.label:GetText())
	Tick(10)
	T.ok(frame.label:GetText():find("· 15 s", 1, true), "che scende: " .. frame.label:GetText())
	Tick(10)
	frame._s.mouseOver = true
	Tick(60)
	T.ok(Gateway:GetPending() ~= nil, "con il mouse sopra non scade")
	T.ok(frame.label:GetText():find("· 5 s", 1, true), "e il conto si ferma: " .. frame.label:GetText())
	frame._s.mouseOver = false
	Tick(3)
	T.ok(Gateway:GetPending() ~= nil, "tolto il mouse riprende da dove era")
	Tick(3)
	T.eq(Gateway:GetPending(), nil, "e poi scade")
end)

T.run("#177: 'La proposta attende' fino alla chiusura", function()
	Reset()
	NS.db.locale = "it"
	NS.db.chat.pendingSeconds = 0
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Tick(600, 10)
	T.ok(Gateway:GetPending() ~= nil and frame:IsShown(), "dopo dieci minuti è ancora lì")
	T.ok(not frame.label:GetText():find("%d s"), "nessun conto alla rovescia: " .. frame.label:GetText())
	frame.discardBtn:Click()
	T.eq(Gateway:GetPending(), nil, "si chiude solo con un gesto")
end)

T.run("#177: tempo di lettura per carattere UTF-8, velocità e 'riduci il movimento'", function()
	Reset()
	NS.db.ui.narrator.duration = 8
	T.eq(Narrator:ReadingTime("èèè"), 8 + 3 / 14, "tre caratteri, non sei byte")
	local long = string.rep("a", 140)
	T.eq(Narrator:ReadingTime(long), 18, "140 caratteri a 14 al secondo: 10 s in più")
	NS.db.ui.narrator.readingSpeed = 8
	T.eq(Narrator:ReadingTime(long), 8 + 140 / 8, "più lenta, più tempo")
	NS.db.ui.narrator.readingSpeed = 14
	-- reduce motion: full opacity to the end, then gone
	NS.db.ui.narrator.reduceMotion = true
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	Tick(Narrator.remaining - 0.5)
	T.ok(frame:IsShown() and frame:GetAlpha() == 1, "nessuna dissolvenza")
	Tick(1)
	T.ok(not frame:IsShown(), "poi sparisce")
	NS.db.ui.narrator.reduceMotion = false
end)

T.run("#177, #179: le nuove righe delle impostazioni e l'aiuto sotto la griglia dei moduli", function()
	Reset()
	NS.db.locale = "en"
	-- the panel rewrites its labels when it is shown
	local panels = FindWidgets(function(w) return w.name == NS.name and w.scripts.OnShow ~= nil end)
	local panel = panels[#panels]   -- the panel built last is the one in use
	T.ok(panel ~= nil, "pannello trovato")
	panel.scripts.OnShow(panel)
	local function Row(prefix)
		for _, b in ipairs(panel.children) do
			if b.kind == "Button" and (b:GetText() or ""):find(prefix, 1, true) == 1 then return b end
		end
	end
	local waits = Row("Proposal waits")
	T.ok(waits ~= nil, "riga 'Proposal waits'")
	local seen = {}
	for _ = 1, 4 do
		waits:Click()
		table.insert(seen, NS.db.chat.pendingSeconds)
	end
	T.eq(table.concat(seen, ","), "60,120,0,25", "25, 60, 120 s, fino alla chiusura")
	NS.db.chat.pendingSeconds = 120
	waits:Click()
	T.eq(waits:GetText(), "Proposal waits: until dismissed", "l'etichetta lo dice")
	local reading = Row("Reading speed")
	T.ok(reading ~= nil and reading:GetText() == "Reading speed: 14 characters/s", "riga della velocità di lettura")
	reading:Click()
	T.eq(NS.db.ui.narrator.readingSpeed, 18, "più veloce")
	local motion = Row("Reduce motion")
	T.ok(motion ~= nil, "riga 'Reduce motion'")
	motion:Click()
	T.eq(NS.db.ui.narrator.reduceMotion, true, "accesa")
	motion:Click()
	T.eq(NS.db.ui.narrator.reduceMotion, false, "spenta")
	T.ok(Row("Background opacity") ~= nil, "l'opacità dice che è dello sfondo")
	T.eq(#NS.Config:Validate(NS.db), 0, "valori validi")

	-- #179: the help text is anchored under the last row of the module grid, not at a fixed height
	local grid = {}
	for _, b in ipairs(panel.children) do
		local pt = b.kind == "Button" and b._s.points and b._s.points[1]
		if pt and pt[1] == "TOPLEFT" and type(pt[2]) == "number" and pt[2] == 16 and pt[3] <= -440 then
			table.insert(grid, { button = b, y = pt[3] })
		end
	end
	table.sort(grid, function(a, b) return a.y < b.y end)
	T.ok(#grid == 3, "tre righe di moduli: " .. #grid)
	local help = {}
	for _, w in ipairs(panel.children) do
		local pt = w.kind == "FontString" and w._s.points and w._s.points[1]
		if pt and type(pt[2]) == "table" and pt[2].parent == panel and pt[3] == "BOTTOMLEFT" then table.insert(help, w) end
	end
	T.ok(#help == 1, "un testo d'aiuto ancorato sotto un pulsante")
	T.eq(help[1]._s.points[1][2], grid[1].button, "sotto l'ultima riga della griglia")
	-- every settings row ends above the module title (-418): fourteen rows of 26
	for _, b in ipairs(panel.children) do
		local pt = b.kind == "Button" and b._s.points and b._s.points[1]
		if pt and pt[1] == "TOPLEFT" and type(pt[2]) == "number" and pt[3] > -410 and pt[3] < -40 then
			T.ok(pt[3] - 24 >= -418, "riga sopra il titolo dei moduli: " .. tostring(b:GetText()))
		end
	end
	NS.db.locale = "it"
	NS.db.chat.pendingSeconds = 25
	NS.db.ui.narrator.readingSpeed = 14
end)
