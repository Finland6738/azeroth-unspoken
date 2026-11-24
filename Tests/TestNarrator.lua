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
	NS.db.ui.narrator.duration, NS.db.ui.narrator.readingSpeed = 8, 14
	NS.db.ui.animations = true   -- UI-4: the one switch (the narrator's older reduceMotion is no longer read)
	NS.Theme.Apply("nebula")
	FINISH_ANIMATIONS()
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

T.run("durata e linea del tempo", function()
	Reset()
	NS.db.ui.narrator.duration = 8
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	-- #177: 8 s plus 16 characters at 14 a second
	T.ok(math.abs(Narrator.remaining - (8 + 16 / 14)) < 1e-9, "durata: base più tempo di lettura")
	UPDATE(5)
	T.ok(frame:IsShown(), "ancora visibile dopo 5 s")
	FINISH_ANIMATIONS()   -- the short fade-in of the entrance (UI-4)
	T.eq(frame:GetAlpha(), 1, "il riquadro è pieno (#173)")
	-- #186: a thin time line instead of a fade; it shrinks as the time runs out, the frame alpha stays 1
	T.ok(frame.timeline:IsShown(), "linea del tempo visibile")
	local w5 = frame.timeline:GetFraction()
	T.ok(w5 > 0 and w5 < 1, "più corta dopo 5 s: " .. w5)
	UPDATE(Narrator.remaining - 5 - 0.5)
	T.ok(frame:IsShown() and frame:GetAlpha() == 1, "verso la fine: nessuna dissolvenza")
	T.ok(frame.timeline:GetFraction() < w5, "la linea si accorcia")
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
	-- #173: the setting is the background's opacity, once; the text keeps full opacity. The surface is the Panel's fill in the
	-- `bg` token (UI-4): its opacity is the alpha of its vertex colour
	local function BgAlpha() return select(4, frame.bg:GetVertexColor()) end
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.9, 20
	Narrator:ApplySettings()
	local _, size = frame.text:GetFont()
	T.eq(size, 20, "dimensione del testo applicata")
	T.eq(BgAlpha(), 0.9, "opacità applicata allo sfondo, una volta sola")
	Gateway:Propose(Rec("say", "inner"), CTX, {})
	UPDATE(0.1)
	FINISH_ANIMATIONS()
	T.eq(frame:GetAlpha(), 1, "il testo non sbiadisce con l'opacità")
	-- a value under the floor (saved before #173) never makes the background thinner than the floor: 0.55, or what the
	-- theme's text needs to keep 4.5:1 over a bright world (Nebula's light text: 0.6)
	NS.db.ui.narrator.alpha = 0.2
	Narrator:ApplySettings()
	T.eq(BgAlpha(), Narrator:Floor(), "sfondo almeno il minimo")
	T.ok(Narrator:Floor() >= 0.55 and Narrator:Floor() <= 0.7, "il minimo: " .. Narrator:Floor())
	for _, id in ipairs(NS.Theme.ORDER) do
		NS.Theme.Apply(id)
		T.ok(Narrator.WorstContrast("text-1", Narrator:Floor()) >= 4.5, id .. ": al minimo il testo resta leggibile su ogni scena")
		T.ok(Narrator.WorstContrast("text-1", Narrator:Floor() - 0.02) < 4.5 or Narrator:Floor() == 0.55, id .. ": e il minimo è il più basso che serve")
	end
	NS.Theme.Apply("nebula")
	-- the voice label is 12 px or more
	for _, fontSize in ipairs({ 10, 14, 20 }) do
		NS.db.ui.narrator.fontSize = fontSize
		Narrator:ApplySettings()
		local _, labelSize = frame.label:GetFont()
		T.ok(labelSize >= 12, "etichetta della voce di almeno 12 px (testo " .. fontSize .. "): " .. labelSize)
	end
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

T.run("proposta: non svanisce; la x nasconde il riquadro, non la scarta (#186)", function()
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
	T.eq(closeBtn, frame.closeBtn, "il pulsante del riquadro")
	closeBtn:Click()
	T.ok(not frame:IsShown(), "x nasconde il riquadro")
	local p = Gateway:GetPending()
	T.ok(p ~= nil, "e la proposta resta in attesa")
	-- #176: the speak key never sends a line that is not on screen: the first press shows it again
	HW = true
	AzerothUnspoken_Speak()
	HW = false
	T.ok(frame:IsShown() and Narrator.proposal == p, "il tasto la rimostra")
	T.eq(#SENT, 0, "senza inviarla")
	HW = true
	AzerothUnspoken_Speak()
	HW = false
	T.eq(SENT[#SENT], "SAY: Il vento porta voci lontane.", "la seconda pressione la invia")
	-- a new line also brings the hidden proposal back (it waits on screen, the line is held)
	Gateway:Propose(Rec("say"), CTX, {})
	frame.closeBtn:Click()
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	T.ok(frame:IsShown() and Narrator.proposal == Gateway:GetPending(), "una nuova frase la riporta sullo schermo")
	-- text typed in the editor survives the x as the proposal's edited text
	Narrator:OpenEditor()
	frame.editor:SetText("Il mio testo")
	frame.closeBtn:Click()
	T.eq(Gateway:GetPending().edited, "Il mio testo", "il testo dell'editor resta nella proposta")
	T.ok(not Gateway.editing, "e l'editor è chiuso")
	-- the editor never opens in a hidden box (speak button with "opens the editor"): the proposal comes back first
	T.ok(Narrator:OpenEditor(), "l'editor si apre")
	T.ok(frame:IsShown() and frame.editor:IsShown(), "nel riquadro di nuovo visibile")
	Narrator:CloseEditor()
	Gateway:Discard()
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
				-- UI-6: the language is a ChoiceList: its rows are one level down
				for _, row in ipairs(x.rows or {}) do
					if row:IsShown() and row:GetText():find(text, 1, true) then return row end
				end
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
	FINISH_ANIMATIONS()
	T.eq(frame:GetAlpha(), 1, "e non sbiadisce")
	local stopped = frame.timeline:GetFraction()
	Tick(2)
	T.eq(frame.timeline:GetFraction(), stopped, "la linea del tempo resta ferma (#186)")
	-- #21: tolto il mouse, il riquadro resta ancora un poco (non sparisce sotto la mano)
	frame._s.mouseOver = false
	Tick(0.5)
	T.ok(frame:IsShown(), "tolto il mouse: ancora visibile")
	T.eq(frame:GetAlpha(), 1, "a opacità piena: nessuna dissolvenza (#186)")
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
	Gateway:SetMode("PRIVATE")
	-- #187: the control of a row, next to its label
	local panelButton = NS.SettingsFrame:Row("opt_chatmode").button
	T.ok(panelButton ~= nil, "riga della modalità chat nel pannello")
	for _ = 1, 8 do
		panelButton:Click()
		T.ok(NS.db.chat.mode ~= "AUTO_ONLY_IF_ALLOWED", "il ciclo del pannello non passa dall'automatica")
		T.ok(not NS.db.output.autoPublicSay, "né accende il consenso")
	end
	-- riga dedicata: due clic
	local autoRow = NS.SettingsFrame:Row("opt_auto").button
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
	for _, row in ipairs(w.content.children[1].languages.rows) do
		if row:IsShown() and (row:GetText() or ""):find("English", 1, true) then row:Click() end
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
	-- the x hides the box and drops the held lines (they are in the history); the proposal keeps waiting (#186)
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	Gateway:Propose(Rec("say", "inner", "Un altro pensiero."), CTX, {})
	frame.closeBtn:Click()
	T.ok(not frame:IsShown() and #Narrator.held == 0, "la x nasconde il riquadro e le frasi trattenute")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta in attesa")
	Gateway:Discard()
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
	-- "Animations: off" (UI-4: the one switch): full opacity from the start to the end, no time line, then gone
	NS.db.ui.animations = false
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	T.eq(frame:GetAlpha(), 1, "senza animazioni il riquadro compare subito pieno")
	T.eq(FINISH_ANIMATIONS(), 0, "e nessun gruppo di animazione parte")
	Tick(Narrator.remaining - 0.5)
	T.ok(frame:IsShown() and frame:GetAlpha() == 1, "nessuna dissolvenza")
	T.ok(not frame.timeline:IsShown(), "e nessuna linea del tempo che si accorcia")
	Tick(1)
	T.ok(not frame:IsShown(), "poi sparisce")
	NS.db.ui.animations = true
end)

T.run("#177, #179, #187: the settings rows, their sections and the help under the last row", function()
	Reset()
	NS.db.locale = "en"
	-- the panel rewrites its labels when it is shown
	local panels = FindWidgets(function(w) return w.name == NS.name and w.scripts.OnShow ~= nil end)
	local panel = panels[#panels]   -- the panel built last is the one in use
	T.ok(panel ~= nil, "pannello trovato")
	panel.scripts.OnShow(panel)
	local function Row(key) return panel.rows[key] end
	-- #187: a plain label next to its control; the control shows the value only
	local waits = Row("opt_waits")
	T.ok(waits ~= nil and waits.label:GetText() == "Proposal waits", "riga 'Proposal waits', with its label as text")
	-- UI-6: a choice of four short words is a Segmented control, the chosen one raised and bright
	T.eq(waits.seg:Active(), 25, "the control shows the value")
	T.eq(waits.seg.buttons[25].label:GetText(), "25 s", "in words")
	local seen = {}
	for _, v in ipairs({ 60, 120, 0, 25 }) do
		waits.seg.buttons[v]:Click()
		table.insert(seen, NS.db.chat.pendingSeconds)
	end
	T.eq(table.concat(seen, ","), "60,120,0,25", "25, 60, 120 s, fino alla chiusura")
	waits.seg.buttons[0]:Click()
	T.eq(waits.seg.buttons[0].label:GetText(), "until dismissed", "l'etichetta lo dice")
	T.eq(waits.seg:Active(), 0, "and it is the chosen one")
	NS.db.chat.pendingSeconds = 25
	local reading = Row("opt_reading")
	T.ok(reading ~= nil and reading.button:GetText() == "14 characters/s", "riga della velocità di lettura")
	reading.button:Click()
	T.eq(NS.db.ui.narrator.readingSpeed, 18, "più veloce")
	-- UI-3: "Reduce motion" is folded into Appearance > Animations, which writes both settings
	local motion = Row("opt_motion")
	T.ok(motion ~= nil and motion.label:GetText() == "Animations", "riga 'Animations'")
	-- UI-6: an on/off setting is a Switch (its position is the state) with the state in words next to it
	T.eq(motion.text:GetText(), "on", "on by default")
	T.ok(motion.switch:IsOn(), "the switch is on")
	motion.switch:Click()
	T.ok(NS.db.ui.animations == false and not NS.Motion.On(), "spente: anche il narratore senza dissolvenza")
	T.eq(NS.db.ui.narrator.reduceMotion, false, "il vecchio 'riduci il movimento' non viene più scritto (UI-4)")
	T.eq(motion.text:GetText(), "off", "the words say it")
	T.ok(not motion.switch:IsOn(), "and the switch is off")
	motion.switch:Click()
	T.ok(NS.db.ui.animations == true and NS.Motion.On(), "accese")
	T.eq(NS.db.ui.narrator.reduceMotion, false, "e nemmeno ora")
	T.eq(Row("opt_alpha").label:GetText(), "Background opacity", "l'opacità dice che è dello sfondo")
	-- #187: a stepper's value is text, never a button that does nothing
	for _, key in ipairs({ "opt_intensity", "opt_duration", "opt_alpha", "opt_fontsize", "opt_scale", "opt_dialogue_size", "opt_dialogue_alpha" }) do
		local r = Row(key)
		T.ok(r and r.text and r.text.kind == "FontString" and r.minus.kind == "Button" and r.plus.kind == "Button",
			key .. ": -, the value as text, +")
	end
	T.eq(Row("opt_fontsize").text:GetText(), tostring(NS.db.ui.narrator.fontSize), "the stepper shows the value")
	Row("opt_fontsize").plus:Click()
	T.eq(Row("opt_fontsize").text:GetText(), tostring(NS.db.ui.narrator.fontSize), "and follows it")
	Row("opt_fontsize").minus:Click()
	T.eq(#NS.Config:Validate(NS.db), 0, "valori validi")

	-- #187: eight sections with their headers, in this order (UI-3 adds Appearance, UI-7 Info, ADR 0059 the emote wheel)
	local heads = {}
	for _, h in ipairs(panel.headers) do
		T.eq(h.fs:GetText(), NS:L(h.key), h.key .. ": the header says its name")
		table.insert(heads, { key = h.key, y = select(5, h.section:GetPoint()) })   -- UI-6: the section carries the place
	end
	table.sort(heads, function(a, b) return a.y > b.y end)
	local order = {}
	for _, h in ipairs(heads) do table.insert(order, h.key:sub(13)) end
	T.eq(table.concat(order, ","), "general,look,wheel,chat,narrator,modules,privacy,info", "the eight sections, top to bottom")

	-- no two controls on the same spot, every label left of its control
	local spots, clash = {}, {}
	for key, r in pairs(panel.rows) do
		for _, c in ipairs({ r.button or r.switch or r.seg or r.slider or r.box or false }) do   -- UI-7: a copy box is a control too
			if c then
				local p = c._s.points[1]
				local spot = tostring(c.parent) .. "," .. p[2] .. "," .. p[3]
				if spots[spot] then table.insert(clash, key .. "/" .. spots[spot]) end
				spots[spot] = key
				if r.label then T.ok(r.label._s.points[1][2] < p[2], key .. ": the label is left of its control") end
			end
		end
	end
	T.eq(table.concat(clash, ";"), "", "no two controls on the same spot")

	-- #179: the help text is under the last row, whatever the number of rows
	-- UI-6: the rows are inside their sections, so the help is under the last section, and every row is inside its section
	local lowest = 0
	for _, s in ipairs(panel.sections) do
		lowest = math.min(lowest, select(5, s:GetPoint()) - s:GetHeight())
		for _, r in pairs(panel.rows) do
			local c = r.button or r.switch or r.seg or r.slider or r.box
			if c.parent == s and c ~= panel.reload then
				T.ok(-c._s.points[1][3] + 24 <= s:GetHeight(), r.key .. ": the row is inside its section")
			end
		end
	end
	T.ok(select(5, panel.help:GetPoint()) <= lowest, "the help is under the last section")
	T.ok(panel.help:GetText():find(NS:L("chatmode_" .. NS.db.chat.mode .. "_help"), 1, true) ~= nil, "and explains the chat mode")
	-- #182: the window scale is a setting, and the open windows follow it at once
	NS.JournalFrame:Open()
	Row("opt_scale").plus:Click()
	T.eq(NS.db.ui.windowScale, 1.1, "window scale +10%")
	T.eq(_G.AzerothUnspokenJournal:GetScale(), 1.1, "#192: the open journal follows the settings at once")
	for _ = 1, 10 do Row("opt_scale").plus:Click() end
	T.eq(NS.db.ui.windowScale, 1.5, "at most 150%")
	for _ = 1, 20 do Row("opt_scale").minus:Click() end
	T.eq(NS.db.ui.windowScale, 0.8, "at least 80%")
	T.eq(Row("opt_scale").text:GetText(), "80%", "in words")
	NS.db.ui.windowScale = 1
	NS.JournalFrame:Close()
	-- #192: turning the narrator box off takes the line on screen away
	Gateway:Propose(Rec("say", "inner", "Una frase breve."), CTX, {})
	T.ok(frame:IsShown(), "a line on screen")
	Row("opt_narrator").switch:Click()
	T.ok(not frame:IsShown(), "the narrator box off: the line goes away at once")
	Row("opt_narrator").switch:Click()
	T.ok(NS.db.output.privateNarrator, "on again")
	NS.db.locale = "it"
	NS.db.chat.pendingSeconds = 25
	NS.db.ui.narrator.readingSpeed = 14
end)

T.run("#186, UI-4: le voci si distinguono per barra, colore del testo, carattere e luminosità (token delle voci)", function()
	Reset()
	local Th = NS.Theme
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.8, 14
	local function Is(c, token, id)
		local r, g, b = Th.Color(token, id)
		return c ~= nil and math.abs(c[1] - r) < 1e-6 and math.abs(c[2] - g) < 1e-6 and math.abs(c[3] - b) < 1e-6
	end
	local speakers = { "narrator", "inner", "character", "npc" }
	for _, id in ipairs(Th.ORDER) do
		Th.Apply(id)
		-- every voice has a token of its own in the theme, and the narrator asks for it by name
		local accents = {}
		for _, speaker in ipairs(speakers) do
			local accent, ink = Narrator:VoiceColors(speaker)
			T.eq(accent, "voice-" .. speaker, id .. ": il token della voce " .. speaker)
			T.ok(Th.themes[id][accent] ~= nil, id .. ": definito dal tema")
			T.ok(ink == accent or ink == "text-1", id .. ": il testo è nel colore della voce o in text-1")
			accents[speaker] = { Th.Color(accent) }
		end
		-- the default opacity (0.8): every voice reads in its own colour in Nebula (the worst world is a white one)
		if id == "nebula" then
			for _, speaker in ipairs(speakers) do
				local accent, ink = Narrator:VoiceColors(speaker)
				T.eq(ink, accent, id .. ": a 0.8 il testo di " .. speaker .. " ha il colore della voce")
			end
		end
		-- Character and NPC collapse for protanopes (yellow and green): they differ in lightness too
		local function Lum(c) return Th.Luminance(c) end
		local hi, lo = math.max(Lum(accents.character), Lum(accents.npc)), math.min(Lum(accents.character), Lum(accents.npc))
		T.ok(hi / lo >= 1.8, id .. ": Personaggio e NPC differiscono in luminosità " .. hi / lo)
		-- under the floor of the theme the text is text-1, which keeps 4.5:1 (a voice colour would not)
		NS.db.ui.narrator.alpha = 0.55
		local ink = select(2, Narrator:VoiceColors("character"))
		T.ok(ink == "text-1" or Narrator.WorstContrast(ink, Narrator:BackgroundAlpha()) >= 4.5, id .. ": al minimo il testo resta leggibile")
		T.ok(Narrator.WorstContrast("text-1", Narrator:BackgroundAlpha()) >= 4.5, id .. ": e text-1 lo è sempre")
		NS.db.ui.narrator.alpha = 0.8
	end
	Th.Apply("nebula")

	-- on screen: the accent bar and the time line in the voice token, the text in its ink, the inner voice in another typeface
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	T.ok(Is(frame.accent._s.colorTex, "voice-inner"), "barra nel colore della voce interiore")
	T.ok(Is(frame.timeline.fill._s.colorTex, "voice-inner"), "linea del tempo nello stesso colore")
	T.ok(Is(frame.text._s.textColor, "voice-inner"), "testo nel colore della voce interiore")
	local innerPath, innerSize = frame.text:GetFont()
	T.ok(tostring(innerPath):find("ARIALN", 1, true) ~= nil, "voce interiore in un altro carattere: " .. tostring(innerPath))
	T.eq(innerSize, 15, "un punto più grande (lettere più strette)")
	Gateway:Propose(Rec("emote", "narrator", "guarda lontano"), CTX, {})
	local path, size = frame.text:GetFont()
	T.eq(path, frame.bodyFont, "il narratore nel carattere normale")
	T.eq(size, 14, "alla dimensione scelta")
	T.ok(Is(frame.accent._s.colorTex, "voice-narrator"), "e la barra cambia colore")
	T.ok(frame.label:GetText():find(NS.Widgets.Hex("voice-narrator"), 1, true) ~= nil, "l'etichetta è nel colore della voce")
	-- the label names the voice in words as well (colour is never the only cue)
	NS.db.locale = "en"
	Narrator:Refresh()
	T.ok(frame.label:GetText():find("Narrator", 1, true) ~= nil, "e dice il nome della voce")
	NS.db.locale = "it"
end)

T.run("UI-4: il cambio di tema ricolora il riquadro, l'etichetta e la cronologia senza /reload", function()
	Reset()
	local Th = NS.Theme
	NS.db.ui.narrator.alpha = 0.8
	local function Is(c, token, id)
		local r, g, b = Th.Color(token, id)
		return c ~= nil and math.abs(c[1] - r) < 1e-6 and math.abs(c[2] - g) < 1e-6 and math.abs(c[3] - b) < 1e-6
	end
	Gateway:Propose(Rec("say", "npc", "Benvenuto, viandante."), CTX, {})
	FINISH_ANIMATIONS()
	T.ok(Is(frame.bg._s.vertex, "bg", "nebula"), "Nebula: la superficie è bg")
	T.eq(select(4, frame.bg:GetVertexColor()), 0.8, "con l'opacità scelta")
	T.ok(Is(frame.parts.ring._s.vertex, "border", "nebula"), "l'anello è il bordo del tema")
	local labelBefore = frame.label:GetText()
	Narrator:ToggleHistory()
	local h = Narrator.historyFrame
	T.ok(Is(h.parts.fill._s.vertex, "bg", "nebula"), "la cronologia ha la stessa superficie")
	Th.Set("aurora")
	T.ok(Is(frame.bg._s.vertex, "bg", "aurora"), "Aurora: la superficie segue")
	T.ok(Is(frame.accent._s.colorTex, "voice-npc", "aurora"), "la barra ha il colore della voce di Aurora")
	T.ok(Is(frame.text._s.textColor, "voice-npc", "aurora") or Is(frame.text._s.textColor, "text-1", "aurora"),
		"il testo: il colore della voce o text-1")
	T.ok(frame.label:GetText() ~= labelBefore, "l'etichetta (colore nel testo) è riscritta: " .. frame.label:GetText())
	T.ok(frame.label:GetText():find(NS.Widgets.Hex(select(2, Narrator:VoiceColors("npc"))), 1, true) ~= nil, "con il colore di Aurora")
	T.eq(select(4, frame.bg:GetVertexColor()), math.max(Narrator:Floor(), 0.8), "l'opacità non cambia con il tema (salvo il minimo)")
	T.ok(Is(h.parts.fill._s.vertex, "bg", "aurora"), "anche la cronologia")
	T.ok(Is(frame.timeline.fill._s.colorTex, "voice-npc", "aurora"), "la linea del tempo")
	Narrator:ToggleHistory()
	Th.Set("nebula")
	T.ok(Is(frame.bg._s.vertex, "bg", "nebula"), "e di nuovo Nebula")
end)

T.run("UI-4: il riquadro entra con una breve dissolvenza di Motion e senza animazioni compare subito", function()
	Reset()
	NS.db.ui.animations = true
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	T.eq(frame:GetAlpha(), 0, "con le animazioni: parte da 0")
	T.ok(FINISH_ANIMATIONS() >= 1, "e un gruppo di animazione gira")
	T.eq(frame:GetAlpha(), 1, "arriva a 1")
	T.ok(frame.timeline:IsShown() and Narrator.verses == nil, "linea del tempo visibile")
	-- a line that replaces the one on screen does not fade again
	Gateway:Propose(Rec("say", "inner", "Un altro pensiero."), CTX, {})
	T.eq(frame:GetAlpha(), 1, "il riquadro già in vista non sbiadisce di nuovo")
	-- hidden by "x" in the middle of the entrance: it is not left half-faded
	frame:Hide()
	Gateway:Propose(Rec("say", "inner", "Ancora un pensiero."), CTX, {})
	frame:Hide()
	T.eq(frame:GetAlpha(), 1, "nascosto: alpha di nuovo 1")
	FINISH_ANIMATIONS()
	NS.db.ui.animations = false
	Gateway:Propose(Rec("say", "inner", "Senza animazioni."), CTX, {})
	T.eq(frame:GetAlpha(), 1, "senza animazioni: subito pieno")
	T.eq(FINISH_ANIMATIONS(), 0, "nessun gruppo")
	NS.db.ui.animations = true
end)

T.run("#186, #183: pulsanti a icona 24x24 a 6 di distanza; l'intestazione cresce con l'etichetta (#182)", function()
	Reset()
	local xs = {}
	for _, b in ipairs({ frame.pauseBtn, frame.historyBtn, frame.closeBtn }) do
		T.eq(b:GetWidth(), 24, "larghezza 24")
		T.eq(b:GetHeight(), 24, "altezza 24")
		T.eq(b.parent, frame.header, "nell'intestazione")
		table.insert(xs, b._s.points[1][2])
	end
	T.eq(xs[2] - xs[1], 30, "6 unità tra pausa e cronologia")
	T.eq(xs[3] - xs[2], 30, "6 unità tra cronologia e chiusura")
	-- no letter on the buttons: pause and history are drawn
	T.eq(frame.pauseBtn.glyph:GetText(), "", "la pausa è disegnata, non scritta")
	T.eq(frame.historyBtn.glyph:GetText(), "", "la cronologia pure")
	-- the label stops before the three buttons
	local right = frame.label._s.points[2]
	T.ok(right[1] == "RIGHT" and right[2] <= -(4 + 3 * 24 + 2 * 6), "l'etichetta finisce prima dei pulsanti")
	-- at every text size the header is taller than its label, and the text starts under the header
	for _, fontSize in ipairs({ 10, 14, 20, 28 }) do
		NS.db.ui.narrator.fontSize = fontSize
		Narrator:ApplySettings()
		local _, labelSize = frame.label:GetFont()
		T.ok(frame.header:GetHeight() >= labelSize + 8, "intestazione più alta dell'etichetta a " .. fontSize)
		T.ok(frame.header:GetHeight() >= 28, "e dei pulsanti")
	end
	-- #126: the text is in a scroll box anchored under the header
	local anchor = frame.scroll._s.points[1]
	T.ok(anchor[2] == frame.header and anchor[3] == "BOTTOMLEFT", "il testo è ancorato sotto l'intestazione")
	T.ok(frame.text.parent == frame.body and frame.scroll._s.scrollChild == frame.body, "dentro la casella che scorre")
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	T.ok(frame:GetHeight() >= frame.header:GetHeight() + frame.text:GetStringHeight(), "il riquadro contiene tutto")
	NS.db.ui.narrator.fontSize = 14
	Narrator:ApplySettings()
end)

T.run("#186: la barra della proposta: un chip del canale, Invia primario, Scarta discreto", function()
	Reset()
	NS.db.locale = "en"
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	T.ok(frame.bar:IsShown(), "barra visibile")
	T.eq(frame.channelBtn:GetText(), "/s", "il chip dice il canale")
	T.ok(not frame.label:GetText():find("/s", 1, true), "che l'etichetta non ripete: " .. frame.label:GetText())
	T.ok(frame.label:GetText():find("proposal", 1, true), "l'etichetta dice che è una proposta")
	frame.channelBtn:Click()
	T.eq(Gateway:GetPending().channel, "EMOTE", "il chip cambia il canale")
	T.eq(frame.channelBtn:GetText(), "/e", "e lo mostra")
	-- every button fits the bar, Send is the rightmost
	local function Right(b) return b._s.points[#b._s.points][2] end
	T.eq(Right(frame.sendBtn), 0, "Invia è l'ultimo a destra")
	local used = frame.channelBtn:GetWidth()
	for _, b in ipairs({ frame.sendBtn, frame.copyBtn, frame.editBtn, frame.anotherBtn, frame.discardBtn }) do
		if b:IsShown() then used = used + b:GetWidth() + 6 end
	end
	T.ok(used <= 440 - 12 - 8, "tutto sta nella barra: " .. used)
	-- Send shows the speak key when one is bound and there is room
	GetBindingKey = function(name) return name == "AZEROTHUNSPOKEN_SPEAK" and "F6" or nil end
	Narrator:Refresh()
	T.ok(frame.sendBtn:GetText():find("F6", 1, true), "Invia mostra il tasto: " .. frame.sendBtn:GetText())
	GetBindingKey = nil
	Narrator:Refresh()
	T.eq(frame.sendBtn:GetText(), "Send", "senza tasto, solo la parola")
	-- no time line while a proposal waits: its label counts down
	T.ok(not frame.timeline:IsShown(), "nessuna linea del tempo per una proposta")
	frame.discardBtn:Click()
	T.eq(Gateway:GetPending(), nil, "Scarta scarta")
	NS.db.locale = "it"
end)

T.run("#174, #182: la cronologia: chiusura, Esc, maniglia, posto proprio, carattere del narratore", function()
	Reset()
	local h = Narrator.historyFrame
	T.ok(h.close ~= nil and h.close:GetText() == "x", "ha una casella di chiusura")
	local listed = false
	for _, name in ipairs(UISpecialFrames) do if name == "AzerothUnspokenNarratorHistory" then listed = true end end
	T.ok(listed, "Esc la chiude (UISpecialFrames)")
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	Narrator:ToggleHistory()
	T.ok(h:IsShown(), "aperta")
	h.close:Click()
	T.ok(not h:IsShown(), "la x la chiude")
	-- without its own place it sits above the box and hides with it
	NS.db.ui.narrator.historyPos = nil
	Narrator:ToggleHistory()
	T.eq(h._s.points[1][2], frame, "ancorata sopra il riquadro")
	frame:Hide()
	T.ok(not h:IsShown(), "si nasconde con il riquadro")
	-- dragged by its handle, it keeps its own place and stays when the box hides
	Gateway:Propose(Rec("say", "inner", "Un pensiero."), CTX, {})
	Narrator:ToggleHistory()
	NS.db.ui.narrator.locked = true
	h.handle.scripts.OnDragStart(h.handle)
	T.ok(not h._s.moving, "bloccata: non si sposta")
	NS.db.ui.narrator.locked = false
	h.handle.scripts.OnDragStart(h.handle)
	T.ok(h._s.moving, "la maniglia la sposta")
	h:ClearAllPoints()
	h:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 40, -60)
	h.handle.scripts.OnDragStop(h.handle)
	local pos = NS.db.ui.narrator.historyPos
	T.ok(type(pos) == "table" and pos[1] == "BOTTOMLEFT" and pos[3] == 40, "posizione propria salvata (#192: dal suo angolo in basso a sinistra)")
	frame:Hide()
	T.ok(h:IsShown(), "con un posto suo resta quando il riquadro si nasconde")
	h:Hide()
	Narrator:ToggleHistory()
	T.eq(h._s.points[1][2], UIParent, "e torna al suo posto")
	Narrator:ResetPosition()
	T.eq(NS.db.ui.narrator.historyPos, nil, "il ripristino lo dimentica")
	T.eq(h._s.points[1][2], frame, "di nuovo sopra il riquadro")
	h:Hide()
	-- the font follows the narrator's size, and the height follows the lines
	NS.db.ui.narrator.fontSize = 24
	Narrator:ApplySettings()
	local _, size = h.messages:GetFont()
	T.eq(size, 24, "il carattere segue il narratore")
	local tall = h:GetHeight()
	NS.db.ui.narrator.fontSize = 14
	Narrator:ApplySettings()
	T.ok(h:GetHeight() < tall, "più bassa con un testo più piccolo")
	T.eq(#NS.Config:Validate(NS.db), 0, "impostazioni valide")
end)

---------------------------------------------------------------------------
-- UI-ECO UI-4: the proposal editor's byte counter, the speak button, the wizard's sample and the NPC dialogue on the theme
---------------------------------------------------------------------------
T.run("UI-4: the editor's byte counter counts what chat will receive, over the channel's limit, and says it in words", function()
	Reset()
	NS.db.locale = "en"
	Gateway:SetMode("PREVIEW")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	T.ok(Narrator:OpenEditor(), "the editor opens")
	local p = Gateway:GetPending()
	T.ok(frame.editor:IsShown() and frame.counter:IsShown(), "with its counter")
	T.eq(frame.counter:GetText(), "8/255 bytes", "the proposal's own text: " .. tostring(frame.counter:GetText()))
	T.ok(frame.counter._s.textColor ~= nil, "the counter has a colour")
	-- two bytes for a letter with an accent: bytes, not letters
	frame.editor:SetText("è")
	frame.editor.scripts.OnTextChanged(frame.editor)
	T.eq(frame.counter:GetText(), "2/255 bytes", "bytes: " .. tostring(frame.counter:GetText()))
	-- over the limit: a different text and the err colour; the editor's own limit is in letters (240)
	frame.editor:SetText(string.rep("è", 130))
	frame.editor.scripts.OnTextChanged(frame.editor)
	T.eq(frame.counter:GetText(), "260/255 bytes (cut)", "over the limit it says so in words: " .. tostring(frame.counter:GetText()))
	local r, g, b = NS.Theme.Color("err")
	local c = frame.counter._s.textColor
	T.ok(c and math.abs(c[1] - r) < 1e-6 and math.abs(c[2] - g) < 1e-6, "and in the err colour")
	-- an emote takes the name or asterisks as well: the counter counts the line as the Gateway makes it
	Narrator:CloseEditor()
	Gateway:Discard()
	Gateway:Propose(Rec("emote", "narrator", "guarda lontano"), CTX, {})
	Narrator:OpenEditor()
	local used = Gateway:TextFor(Gateway:GetPending().form, Gateway:GetPending().edited or Gateway:GetPending().text, Gateway:GetPending().channel, Gateway:GetPending().player)
	T.eq(frame.counter:GetText(), ("%d/255 bytes"):format(#used), "an emote: the name counts too: " .. tostring(frame.counter:GetText()))
	-- Esc still closes it, and Esc is unchanged
	frame.editor.scripts.OnEscapePressed(frame.editor)
	T.ok(not frame.editor:IsShown(), "Esc closes the editor")
	-- the editor is a themed EditBox of the shared widget, with its ring and fill
	T.ok(frame.editor.fill ~= nil and frame.editor.ring ~= nil, "the editor is the theme's EditBox")
	T.ok(frame.editor:GetHeight() >= 24, "24 units high")
	NS.db.locale = "it"
end)

T.run("UI-4: the narrator's buttons are the theme's: ghost icons, a Chip for the channel, a primary Send, 24 units", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	T.eq(frame.sendBtn.style, "primary", "Send is the primary button")
	T.eq(frame.copyBtn.style, "ghost", "To chat is a ghost button")
	T.eq(frame.editBtn.style, "ghost", "Edit")
	T.eq(frame.anotherBtn.style, "ghost", "Another")
	T.eq(frame.discardBtn.style, "text", "Discard is quiet: a text button")
	for _, b in ipairs({ frame.sendBtn, frame.copyBtn, frame.editBtn, frame.anotherBtn, frame.discardBtn, frame.channelBtn }) do
		T.ok(b:GetHeight() >= 24 and b:GetWidth() >= 24, "a target of 24 units or more")
	end
	T.ok(frame.channelBtn.arrow ~= nil and frame.channelBtn.label:GetText() == "/s", "the chip: the channel and an arrow")
	for _, b in ipairs({ frame.pauseBtn, frame.historyBtn, frame.closeBtn }) do T.eq(b.style, "ghost", "the icon buttons are ghost buttons") end
	T.ok(frame.closeBtn.cross:IsShown() and not frame.pauseBtn.cross:IsShown(), "the x is the sheet's cross, the others are drawn")
	-- they follow the theme
	NS.Theme.Set("aurora")
	local r, g, b = NS.Theme.Color("text-2", "aurora")
	local c = frame.pauseBtn.parts[1]._s.colorTex
	T.ok(c and math.abs(c[1] - r) < 1e-6 and math.abs(c[3] - b) < 1e-6, "the drawn icons take the theme's text-2")
	NS.Theme.Set("nebula")
	-- every text the narrator box draws has a theme token: nothing keeps a colour of its own
	for _, fs in ipairs({ frame.label, frame.text, frame.counter }) do T.ok(fs.auThemed == true, "a text with a token") end
	Gateway:Discard()
end)

T.run("UI-4: the speak button is the theme's: its own tooltip, a lit ring while a proposal waits, 24 units or more, Paused in words", function()
	Reset()
	NS.db.locale = "en"
	local button = _G.AzerothUnspokenButton
	T.ok(button:GetWidth() >= 24 and button:GetHeight() >= 24, "a target of 24 units or more")
	T.ok(button.ring ~= nil and button.disc ~= nil and button.icon ~= nil, "a ring, a disc and the sheet's icon")
	T.ok(button.scripts.OnEnter ~= nil, "mouse hooks")
	-- the addon's own tooltip, not GameTooltip
	local used = false
	local game = _G.GameTooltip
	_G.GameTooltip = setmetatable({}, { __index = function() return function() used = true end end })
	NS.UpdateButton()
	button.scripts.OnEnter(button)
	T.ok(not used, "GameTooltip is not used")
	T.ok(NS.Widgets.TipText():find(NS.name, 1, true) ~= nil, "the addon's tooltip names the addon: " .. NS.Widgets.TipText())
	T.ok(NS.Widgets.TipText():find(NS:L("button_idle_private"), 1, true) ~= nil, "and says what a click does (private mode: only to you)")
	button.scripts.OnLeave(button)
	T.eq(NS.Widgets.TipText(), "", "it hides on leave")
	_G.GameTooltip = game
	-- no proposal: quiet; a proposal waits: the ring, the icon and the glow say so
	local function Is(c, token)
		local r, g, b = NS.Theme.Color(token)
		return c ~= nil and math.abs(c[1] - r) < 1e-6 and math.abs(c[2] - g) < 1e-6 and math.abs(c[3] - b) < 1e-6
	end
	T.ok(Is(button.icon._s.vertex, "text-3") and not button.glow:IsShown(), "quiet: a quiet icon, no glow")
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "character", "Andiamo."), CTX, {})
	NS.UpdateButton()
	T.ok(Is(button.ring._s.vertex, "accent") and Is(button.icon._s.vertex, "accent-text") and button.glow:IsShown(), "a proposal waits: accent ring, lit icon, glow")
	-- the tooltip shows the waiting proposal and its channel
	button.scripts.OnEnter(button)
	T.ok(NS.Widgets.TipText():find("Andiamo.", 1, true) ~= nil, "the line: " .. NS.Widgets.TipText())
	button.scripts.OnLeave(button)
	-- the theme changes it without /reload
	NS.Theme.Set("aurora")
	T.ok(Is(button.icon._s.vertex, "accent-text"), "Aurora: the icon follows")
	NS.Theme.Set("nebula")
	Gateway:Discard()
	NS.UpdateButton()
	-- paused: in words, under the button, whatever its dimming
	Director:SetPaused(true)
	T.ok(button.badge:IsShown() and button.badgeText:GetText() == "Paused", "Paused in words")
	Director:SetPaused(false)
	NS.db.locale = "it"
end)

T.run("UI-4: the wizard's narrator sample is the narrator's own look, in the voice token, and follows the theme", function()
	Reset()
	NS.db.locale = "en"
	NS.Wizard:Open()
	local w = _G.AzerothUnspokenWizard
	local function Find(pred)
		local out = {}
		local function walk(f)
			for _, c in ipairs(f.children or {}) do
				if pred(c) then table.insert(out, c) end
				walk(c)
			end
		end
		walk(w)
		return out
	end
	local boxes = Find(function(f) return f.parts ~= nil and f.parts.fill ~= nil and f.parts.ring ~= nil and f.parts.shadow == nil end)
	local box
	for _, f in ipairs(boxes) do if f:GetHeight() >= 52 and f:GetWidth() > 300 then box = f end end
	T.ok(box ~= nil, "the sample is a Panel")
	T.ok(not box.auKeepColours, "and does not keep colours of its own any more")
	local n = 0
	for _, r in ipairs(box.children or {}) do
		if r.kind == "FontString" then
			n = n + 1
			T.ok(r.auThemed == true, "a text of the sample has a token")
			T.ok(r:GetText() == nil or not tostring(r:GetText()):find("|cff", 1, true), "and no colour written in its text")
		end
	end
	T.ok(n >= 2, "the voice and the line: " .. n)
	w:Hide()
	NS.db.locale = "it"
end)
