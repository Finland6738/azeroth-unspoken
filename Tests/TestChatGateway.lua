-- Test di Integration/ChatGateway.lua: modalità, modifica, canali, flood e "nessun invio senza azione del giocatore"
local NS = ...
local Gateway, Narrator = NS.Gateway, NS.Narrator

local function Reset()
	SENT = {}
	HW = false
	CHAT_LOCKDOWN = false
	P.instance, P.group, P.guild, P.raid = false, false, false, false
	NS.db.modules.publicChat = true
	NS.db.chat.mode, NS.db.chat.channel = "PRIVATE", "auto"
	NS.db.chat.floodSeconds, NS.db.chat.maxPerMinute, NS.db.chat.autoMaxPerMinute = 4, 6, 2
	NS.db.chat.pendingSeconds = 25
	NS.db.output.autoPublicSay = false
	Gateway.sendLog = {}
	Gateway.inPlayerAction = false
	Gateway.autoAskedAt = nil
	Gateway:Discard()
	ADVANCE(100)
end

-- AUTO con il secondo consenso già dato (come dopo la conferma esplicita)
local function Auto()
	Gateway:SetMode("AUTO_ONLY_IF_ALLOWED", { confirmAuto = true })
end

local function Rec(form, speaker, text)
	return {
		text = text or "Per l'onore dei miei avi.", form = form, event = "battle",
		speaker = speaker or (form == "emote" and "narrator" or "character"),
	}
end
local CTX = { player = "Garrosh" }

local function Public()
	local out = {}
	for _, s in ipairs(SENT) do
		if not s:find("^PRINT:") then table.insert(out, s) end
	end
	return out
end

local function Press()   -- il tasto o il pulsante "pronuncia": un gesto del giocatore
	HW = true
	AzerothUnspoken_Speak()
	HW = false
end

T.run("predefiniti e modalità", function()
	Reset()
	T.eq(Gateway:GetMode(), "PRIVATE", "predefinita")
	T.eq(Gateway:EffectiveMode(), "PRIVATE", "effettiva")
	T.eq(#Gateway.MODES, 4, "quattro modalità")
	T.eq(Gateway:ParseMode("conferma"), "CONFIRM_TO_SEND", "alias italiano")
	T.eq(Gateway:ParseMode("Preview"), "PREVIEW", "alias inglese")
	T.eq(Gateway:ParseMode("AUTO_ONLY_IF_ALLOWED"), "AUTO_ONLY_IF_ALLOWED", "nome completo")
	T.eq(Gateway:ParseMode("boh"), nil, "sconosciuta")
	T.ok(not Gateway:SetMode("boh") and Gateway:GetMode() == "PRIVATE", "modalità sconosciuta ignorata")
	-- #8: scegliere AUTO non accende da solo il secondo consenso
	T.ok(Gateway:SetMode("auto") and Gateway:GetMode() == "AUTO_ONLY_IF_ALLOWED", "AUTO si imposta")
	T.ok(not NS.db.output.autoPublicSay, "ma senza consenso: autoPublicSay resta spento")
	T.ok(Gateway:SetMode("auto", { confirmAuto = true }) and NS.db.output.autoPublicSay, "con confirmAuto lo accende")
	T.ok(Gateway:SetMode("anteprima", { confirmAuto = true }) and not NS.db.output.autoPublicSay,
		"confirmAuto vale solo per AUTO: le altre modalità lo spengono")
	Gateway:SetMode("PRIVATE")
	Gateway:CycleMode(); T.eq(Gateway:GetMode(), "PREVIEW", "ciclo 1")
	Gateway:CycleMode(); T.eq(Gateway:GetMode(), "CONFIRM_TO_SEND", "ciclo 2")
	Gateway:CycleMode(); T.eq(Gateway:GetMode(), "PRIVATE", "ciclo 3: l'invio automatico non è nel giro")
	Gateway:SetMode("auto", { confirmAuto = true })
	Gateway:CycleMode(); T.eq(Gateway:GetMode(), "PRIVATE", "da AUTO si torna a PRIVATE")
	T.ok(not NS.db.output.autoPublicSay, "e il consenso si spegne")
	NS.db.modules.publicChat = false
	NS.db.chat.mode = "CONFIRM_TO_SEND"
	T.eq(Gateway:EffectiveMode(), "PRIVATE", "modulo publicChat spento = privato")
	NS.db.modules.publicChat = true
end)

T.run("PRIVATE: solo narratore, nessuna proposta, nessun invio", function()
	Reset()
	local n = #Narrator.history
	T.ok(Gateway:Propose(Rec("say"), CTX, { auto = true }), "frase presentata")
	T.ok(Gateway:Propose(Rec("emote"), CTX, { auto = true }), "emote presentata")
	T.eq(#Narrator.history, math.min(n + 2, NS.db.ui.narrator.historySize), "nella cronologia del narratore")
	T.eq(Gateway:GetPending(), nil, "nessuna proposta")
	T.eq(#Public(), 0, "nulla in chat")
	T.eq(#SENT, 0, "nemmeno in locale: sta nel narratore")
	T.ok(Narrator:GetFrame():IsShown(), "il riquadro è visibile")
	Press()   -- senza proposte: improvvisa, resta privato
	T.eq(#Public(), 0, "il tasto in modalità privata non invia")
	T.eq(Gateway:GetPending(), nil, "nemmeno una proposta")
end)

T.run("PREVIEW: il tasto apre l'editor, si invia da lì", function()
	Reset()
	Gateway:SetMode("PREVIEW")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	local p = Gateway:GetPending()
	T.ok(p ~= nil, "la frase del personaggio diventa una proposta")
	T.eq(p.channel, "SAY", "canale predefinito del parlato")
	T.eq(p.display, "«Per l'onore dei miei avi.»", "testo mostrato")
	T.eq(#Public(), 0, "ancora nulla in chat")
	Press()
	T.eq(#Public(), 0, "il primo gesto apre l'editor, non invia")
	T.ok(Narrator:GetFrame().editor:IsShown(), "editor aperto")
	T.eq(Narrator:GetFrame().editor:GetText(), "Per l'onore dei miei avi.", "con il testo proposto")
	-- il giocatore modifica e preme Invio
	HW = true
	Narrator:GetFrame().editor:TypeEnter("Che il vento ci sia amico.")
	HW = false
	T.eq(SENT[#SENT], "SAY: Che il vento ci sia amico.", "inviato il testo modificato")
	T.eq(Gateway:GetPending(), nil, "proposta chiusa")
	T.ok(not Narrator:GetFrame().editor:IsShown(), "editor chiuso")
end)

T.run("CONFIRM_TO_SEND: un gesto invia la proposta", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	T.ok(Gateway:GetPending() ~= nil, "proposta pronta")
	T.eq(#Public(), 0, "senza gesto non parte")
	Press()
	T.eq(SENT[#SENT], "SAY: Per l'onore dei miei avi.", "inviata col tasto")
	T.eq(Gateway:GetPending(), nil, "non resta in attesa")
	-- l'emote parte come emote e senza il nome (lo aggiunge il gioco)
	ADVANCE(10)
	Gateway:Propose(Rec("emote", nil, "alza lo sguardo verso le nuvole"), CTX, { auto = true })
	T.eq(Gateway:GetPending().channel, "EMOTE", "il narratore usa /e")
	T.eq(Gateway:GetPending().display, "Garrosh alza lo sguardo verso le nuvole", "nel narratore compare il nome")
	Press()
	T.eq(SENT[#SENT], "EMOTE: alza lo sguardo verso le nuvole", "emote inviata senza nome")
end)

T.run("il pulsante del narratore invia, scarta e cambia canale", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	local f = Narrator:GetFrame()
	T.ok(f.bar:IsShown(), "barra della proposta visibile")
	f.discardBtn:Click()
	T.eq(Gateway:GetPending(), nil, "Scarta")
	T.ok(not f.bar:IsShown(), "barra nascosta")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	f.channelBtn:Click()
	T.eq(Gateway:GetPending().channel, "EMOTE", "il canale cambia (gruppo e gilda non disponibili)")
	P.group = true
	f.channelBtn:Click()
	T.eq(Gateway:GetPending().channel, "PARTY", "con un gruppo compare /p")
	HW = true
	f.sendBtn:Click()
	HW = false
	T.eq(SENT[#SENT], "PARTY: Per l'onore dei miei avi.", "inviata nel canale scelto")
end)

T.run("nessun invio senza azione del giocatore", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	-- un timer o un altro addon chiama l'invio fuori da una azione: rifiutato, il client non viene nemmeno interpellato
	local ok, why = Gateway:SendPending()
	T.ok(not ok and why == "needs_action", "SendPending fuori da PlayerAction")
	T.eq(#Public(), 0, "nulla inviato")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta in attesa")
	ok, why = Gateway:Send("ciao", "SAY")
	T.ok(not ok and why == "needs_action", "Send(SAY) rifiutato")
	ok, why = Gateway:Send("ciao", "PARTY")
	T.ok(not ok and why == "needs_action", "Send(PARTY) rifiutato")
	ok, why = Gateway:Send("ciao", "YELL")
	T.ok(not ok and why == "needs_action", "Send(YELL) rifiutato")
	T.eq(#Public(), 0, "ancora nulla in chat")
	T.eq(#NS.Diagnostics.errors, 0, "il client non ha mai rifiutato nulla: non abbiamo provato")

	-- in istanza il client permette /say e /yell, ma non i canali di gruppo
	P.instance = true
	ok = Gateway:Send("in istanza", "SAY")
	T.ok(ok and SENT[#SENT] == "SAY: in istanza", "istanza: /say senza gesto")
	ok, why = Gateway:Send("gruppo", "PARTY")
	T.ok(not ok and why == "needs_action", "istanza: il gruppo resta protetto")

	-- il giocatore preme: il gesto è una azione e il canale parte
	P.instance = false
	ADVANCE(10)
	Press()
	T.eq(SENT[#SENT], "SAY: Per l'onore dei miei avi.", "col gesto parte")
	T.ok(not Gateway.inPlayerAction, "l'ambito dell'azione si chiude")
end)

T.run("nessun aggiramento: tutte le modalità, forme e voci, senza gesto", function()
	for _, mode in ipairs(Gateway.MODES) do
		for _, form in ipairs({ "say", "emote" }) do
			for _, speaker in ipairs({ "narrator", "inner", "character", "npc" }) do
				for _, auto in ipairs({ true, false }) do
					Reset()
					Auto()
					Gateway:SetMode(mode, { confirmAuto = true })
					Gateway:Propose(Rec(form, speaker), CTX, { auto = auto })
					for _, s in ipairs(Public()) do
						T.ok(s:find("^EMOTE:"), mode .. "/" .. form .. "/" .. speaker .. ": fuori istanza solo emote, trovato " .. s)
					end
					-- l'emote automatica esiste soltanto in AUTO_ONLY_IF_ALLOWED
					if mode ~= "AUTO_ONLY_IF_ALLOWED" then
						T.eq(#Public(), 0, mode .. ": nulla senza gesto")
					end
				end
			end
		end
	end
	T.eq(#NS.Diagnostics.errors, 0, "il client non ha mai dovuto rifiutare un invio")
end)

T.run("AUTO_ONLY_IF_ALLOWED: automatico solo dove il client lo permette", function()
	Reset()
	Auto()
	-- emote: parte da sola, anche fuori dalle istanze
	Gateway:Propose(Rec("emote", nil, "stringe l'elsa"), CTX, { auto = true })
	T.eq(SENT[#SENT], "EMOTE: stringe l'elsa", "emote automatica")
	T.eq(Gateway:GetPending(), nil, "nessuna proposta residua")
	T.ok(Narrator.current.sentTo == "EMOTE", "il narratore indica dove è stata inviata")
	-- parlato nel mondo aperto: resta una proposta
	ADVANCE(10)
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	T.eq(#Public(), 1, "il /say nel mondo aperto non parte")
	T.eq(Gateway:GetPending().channel, "SAY", "è una proposta")
	-- nelle istanze parte
	ADVANCE(10)
	P.instance = true
	Gateway:Propose(Rec("say", nil, "avanti!"), CTX, { auto = true })
	T.eq(SENT[#SENT], "SAY: avanti!", "/say automatico in istanza")
	-- senza il secondo consenso, anche l'emote diventa una proposta
	ADVANCE(10)
	NS.db.output.autoPublicSay = false
	local before = #Public()
	Gateway:Propose(Rec("say", nil, "ancora"), CTX, { auto = true })
	T.eq(#Public(), before, "senza autoPublicSay nulla parte da solo")
	T.ok(Gateway:GetPending() ~= nil, "resta una proposta")
	-- una richiesta del giocatore (non automatica) è sempre una proposta
	NS.db.output.autoPublicSay = true
	ADVANCE(10)
	Gateway:Discard()
	before = #Public()
	Gateway:Propose(Rec("emote", nil, "sorride"), CTX, { auto = false })
	T.eq(#Public(), before, "frase richiesta a mano: proposta, non invio")
	T.ok(Gateway:GetPending() ~= nil, "in attesa")
end)

T.run("voci interiore e NPC: mai in chat", function()
	for _, mode in ipairs({ "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED" }) do
		for _, speaker in ipairs({ "inner", "npc" }) do
			Reset()
			Gateway:SetMode(mode)
			P.instance = true
			Gateway:Propose(Rec("say", speaker), CTX, { auto = true })
			T.eq(Gateway:GetPending(), nil, mode .. "/" .. speaker .. ": nessuna proposta")
			T.eq(#Public(), 0, mode .. "/" .. speaker .. ": nulla in chat")
		end
	end
	Reset()
	local before = #Narrator.history
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", "inner"), CTX, {})
	T.ok(Narrator.current.speaker == "inner", "la voce interiore compare nel narratore")
end)

T.run("privateOnly: il test del wizard non propone nulla", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, { privateOnly = true })
	T.eq(Gateway:GetPending(), nil, "nessuna proposta")
	Gateway:Narrate("muse", NS:BuildContext(), { privateOnly = true })
	T.eq(Gateway:GetPending(), nil, "Narrate privato")
end)

T.run("canali: disponibilità e scelta predefinita", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	NS.db.chat.channel = "PARTY"
	Gateway:Propose(Rec("say"), CTX, {})
	T.eq(Gateway:GetPending().channel, "PARTY", "il canale scelto vale per le nuove proposte")
	Press()
	T.eq(#Public(), 0, "gruppo assente: non parte")
	T.eq(Gateway.lastRefusal, "channel_unavailable", "motivo")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta")
	P.group = true
	ADVANCE(10)
	Press()
	T.eq(SENT[#SENT], "PARTY: Per l'onore dei miei avi.", "con il gruppo parte")

	Reset()
	NS.db.chat.channel = "GUILD"
	T.ok(not Gateway:ChannelAvailable("GUILD"), "gilda assente")
	P.guild = true
	T.ok(Gateway:ChannelAvailable("GUILD"), "gilda presente")
	T.ok(not Gateway:ChannelAvailable("RAID"), "incursione assente")
	T.ok(not Gateway:ChannelAvailable("INSTANCE_CHAT"), "chat istanza assente")
	T.ok(not Gateway:ChannelAvailable("WHISPER"), "canale sconosciuto")
	T.ok(not Gateway:CycleChannel(), "senza proposta non cambia nulla")
end)

T.run("protezione dal flood", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, "uno"), CTX, {})
	Press()
	T.eq(SENT[#SENT], "SAY: uno", "primo invio")
	Gateway:Propose(Rec("say", nil, "due"), CTX, {})
	Press()
	T.eq(Gateway.lastRefusal, "flood", "troppo vicino al primo")
	T.eq(#Public(), 1, "il secondo non parte")
	T.ok(Gateway:GetPending() ~= nil, "resta in attesa")
	ADVANCE(5)
	Press()
	T.eq(SENT[#SENT], "SAY: due", "dopo la pausa parte")

	-- limite al minuto
	Reset()
	NS.db.chat.floodSeconds, NS.db.chat.maxPerMinute = 1, 3
	Gateway:SetMode("CONFIRM_TO_SEND")
	for i = 1, 4 do
		Gateway:Propose(Rec("say", nil, "n" .. i), CTX, {})
		Press()
		ADVANCE(2)
	end
	T.eq(#Public(), 3, "al massimo tre invii al minuto")
	ADVANCE(60)
	Gateway:Propose(Rec("say", nil, "n5"), CTX, {})
	Press()
	T.eq(#Public(), 4, "passato il minuto si riparte")

	-- limite degli invii automatici: il terzo diventa una proposta
	Reset()
	NS.db.chat.autoMaxPerMinute = 2
	Auto()
	for i = 1, 3 do
		Gateway:Propose(Rec("emote", nil, "gesto" .. i), CTX, { auto = true })
		ADVANCE(5)
	end
	T.eq(#Public(), 2, "solo due emote automatiche al minuto")
	T.ok(Gateway:GetPending() ~= nil and Gateway:GetPending().channel == "EMOTE", "la terza è una proposta")
end)

T.run("blocco della chat, errori del client, testo vuoto e lunghezza", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, {})
	CHAT_LOCKDOWN = true
	Press()
	T.eq(Gateway.lastRefusal, "lockdown", "blocco della chat")
	T.eq(#Public(), 0, "non parte")
	T.ok(Gateway:GetPending() ~= nil, "resta in attesa")
	CHAT_LOCKDOWN = false

	-- il client rifiuta (qui: azione senza gesto vero): errore intercettato, proposta conservata
	local before = #NS.Diagnostics.errors
	HW = false
	Gateway:PlayerAction(function() Gateway:SendPending() end)
	T.eq(Gateway.lastRefusal, "error", "errore del client")
	T.eq(#NS.Diagnostics.errors, before + 1, "registrato in diagnostica")
	T.ok(Gateway:GetPending() ~= nil, "la proposta si può riprovare")

	T.ok(not Gateway:SetPendingText("   "), "testo vuoto rifiutato")
	local ok, why = Gateway:Send("   ", "EMOTE")
	T.ok(not ok and why == "empty", "invio vuoto")

	-- 255 byte, senza spezzare i caratteri UTF-8
	Reset()
	P.instance = true
	local long = string.rep("è", 200)
	T.ok(Gateway:Send(long, "SAY"), "testo lungo")
	local sent = SENT[#SENT]:gsub("^SAY: ", "")
	T.ok(#sent <= 255, "al massimo 255 byte: " .. #sent)
	local cut = sent:gsub("%.%.%.$", "")
	T.ok(not cut:find("[\128-\191]$") or cut:find("\195[\128-\191]$"), "nessun carattere spezzato")
	T.ok(#cut % 2 == 0, "numero pari di byte: ogni 'è' è intera")
end)

T.run("scadenza e sostituzione della proposta", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, "prima"), CTX, {})
	Gateway:Propose(Rec("say", nil, "seconda"), CTX, {})
	T.eq(Gateway:GetPending().text, "seconda", "la nuova sostituisce la vecchia")
	ADVANCE(26)
	T.eq(Gateway:GetPending(), nil, "scade dopo pendingSeconds")
	-- senza proposte il tasto improvvisa: una proposta nuova (se la frase è pubblica) e mai un invio
	local improvised
	for _ = 1, 30 do
		Press()
		improvised = Gateway:GetPending()
		if improvised then break end
		ADVANCE(5)
	end
	T.eq(#Public(), 0, "il tasto senza proposte non invia")
	T.ok(improvised ~= nil, "improvvisa una proposta nuova")
end)

T.run("Narrate, Trigger e modifica del testo", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	P.combat = false
	local shown = false
	for _ = 1, 8 do
		if NS:Trigger("greet") then shown = true end
		if Gateway:GetPending() then break end
	end
	T.ok(shown, "Trigger produce una frase")
	T.eq(#Public(), 0, "e non scrive in chat")
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	local p
	for _ = 1, 30 do
		Gateway:Narrate("greet", NS:BuildContext(), { form = "say" })
		p = Gateway:GetPending()
		if p then break end
	end
	T.ok(p and p.speaker == "character", "form say -> voce del personaggio")
	T.ok(Gateway:SetPendingText("Salute a te, viandante."), "modifica del testo")
	T.eq(Gateway:GetPending().display, "«Salute a te, viandante.»", "il testo mostrato segue la modifica")
	Press()
	T.eq(SENT[#SENT], "SAY: Salute a te, viandante.", "si invia il testo modificato")
end)

T.run("voce delle frasi: regola dello schema v2 e ripiego del formato vecchio", function()
	-- schema v2: la voce è nella regola. Le emote sono del narratore, il pensiero (inner) non è mai un'emote,
	-- il resto è la voce pubblica del personaggio
	local counts = { say = 0, emote = 0, inner = 0 }
	for _, p in pairs(NS.Engine.byId) do
		T.ok(NS.Engine.SPEAKERS[p.speaker], p.id .. ": speaker valido")
		if p.form == "emote" then
			T.eq(p.speaker, "narrator", p.id .. ": emote = narratore")
			counts.emote = counts.emote + 1
		elseif p.speaker == "inner" then
			counts.inner = counts.inner + 1
		else
			T.eq(p.speaker, "character", p.id .. ": say = voce del personaggio")
			counts.say = counts.say + 1
		end
	end
	T.ok(counts.say > 100 and counts.emote > 10 and counts.inner > 50,
		("tutte le voci presenti: %d parlate, %d narrative, %d pensieri"):format(counts.say, counts.emote, counts.inner))
	-- formato vecchio: uno speaker esplicito del pacchetto si rispetta, uno sbagliato torna al provvisorio
	NS:RegisterPack({ id = "t_speaker", phrases = {
		{ id = "t.inner", event = "t_ev", speaker = "inner", it = "Chissà." },
		{ id = "t.bad", event = "t_ev", speaker = "dio", it = "Boh." },
		{ id = "t.emote", event = "t_ev", form = "emote", it = "sospira" },
	} })
	T.eq(NS.Engine.byId["t.inner"].speaker, "inner", "speaker esplicito")
	T.eq(NS.Engine.byId["t.bad"].speaker, "character", "speaker sconosciuto -> provvisorio")
	T.eq(NS.Engine.byId["t.emote"].speaker, "narrator", "emote -> narratore")
	NS.db.locale = "it"
	local rec = NS.Engine:PickEntry("t_ev", NS:BuildContext(), "emote")
	T.ok(rec and rec.speaker == "narrator", "PickEntry in forma emote: narratore, anche per il parlato incorniciato")
end)
