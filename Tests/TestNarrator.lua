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
	UPDATE(5)
	T.ok(frame:IsShown(), "ancora visibile dopo 5 s")
	UPDATE(2.5)
	T.ok(frame:IsShown() and frame:GetAlpha() < NS.db.ui.narrator.alpha, "in dissolvenza verso la fine")
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
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.5, 20
	Narrator:ApplySettings()
	local _, size = frame.text:GetFont()
	T.eq(size, 20, "dimensione del testo applicata")
	Gateway:Propose(Rec("say", "inner"), CTX, {})
	UPDATE(0.1)
	T.eq(frame:GetAlpha(), 0.5, "opacità applicata")
	NS.db.ui.narrator.alpha, NS.db.ui.narrator.fontSize = 0.85, 14
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
	T.eq(frame.pauseBtn:GetText(), "||", "pulsante di pausa")
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

T.run("avviso breve", function()
	Reset()
	local n = #Narrator.history
	Narrator:Notice("Prova")
	T.ok(frame:IsShown() and frame.text:GetText() == "Prova", "avviso mostrato")
	T.eq(#Narrator.history, n, "non entra in cronologia")
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
	T.ok(w.title:GetText():find("1 di 6", 1, true), "primo passo di sei: " .. w.title:GetText())
	-- avanti fino alla fine, provando i pulsanti di ogni pagina
	local steps, clicks = 0, 0
	while NS.Wizard:IsOpen() and steps < 12 do
		steps = steps + 1
		clicks = clicks + ClickPage(w)
		w.next:Click()
	end
	T.ok(clicks >= 15, "pulsanti provati: " .. clicks)
	T.eq(steps, 6, "sei passi senza Total RP 3")
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
	T.eq(steps, 7, "sette passi con Total RP 3")
	AddOn_TotalRP3 = nil

	-- Indietro funziona
	NS.db.ui.wizardDone = false
	NS.Wizard:Open()
	w.next:Click(); w.next:Click()
	T.ok(w.title:GetText():find("3 di 6", 1, true), "terzo passo")
	w.back:Click()
	T.ok(w.title:GetText():find("2 di 6", 1, true), "indietro")

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
	-- passo 5: un modulo
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
	T.ok(not NS.Wizard:IsOpen(), "fine")
	NS.db.locale = "it"
	NS.db.intensity = 50
	NS.db.proseDepth = "literary"
	NS.Config:ApplyPreset("complete")
	NS.db.chat.mode = "PRIVATE"
end)
