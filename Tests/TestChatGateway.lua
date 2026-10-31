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
	T.eq(Gateway:ParseMode("confirm"), "CONFIRM_TO_SEND", "parola inglese")
	T.eq(Gateway:ParseMode("conferma"), nil, "una parola italiana non è un comando")
	T.eq(Gateway:ParseMode("Preview"), "PREVIEW", "alias inglese")
	T.eq(Gateway:ParseMode("AUTO_ONLY_IF_ALLOWED"), "AUTO_ONLY_IF_ALLOWED", "nome completo")
	T.eq(Gateway:ParseMode("boh"), nil, "sconosciuta")
	T.ok(not Gateway:SetMode("boh") and Gateway:GetMode() == "PRIVATE", "modalità sconosciuta ignorata")
	-- #8: scegliere AUTO non accende da solo il secondo consenso
	T.ok(Gateway:SetMode("auto") and Gateway:GetMode() == "AUTO_ONLY_IF_ALLOWED", "AUTO si imposta")
	T.ok(not NS.db.output.autoPublicSay, "ma senza consenso: autoPublicSay resta spento")
	T.ok(Gateway:SetMode("auto", { confirmAuto = true }) and NS.db.output.autoPublicSay, "con confirmAuto lo accende")
	T.ok(Gateway:SetMode("preview", { confirmAuto = true }) and not NS.db.output.autoPublicSay,
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

-- #55: il client non solleva un errore per un invio protetto senza gesto: lo blocca in silenzio e manda
-- ADDON_ACTION_FORBIDDEN. L'addon deve accorgersene: niente "inviato", proposta in attesa, rifiuto in diagnostica.
T.run("invio bloccato in silenzio dal client (ADDON_ACTION_FORBIDDEN)", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway.blockedTotal = 0
	local total = Gateway.sentTotal or 0
	local before = #NS.Diagnostics.errors
	-- 1) l'evento arriva dentro la chiamata
	Gateway:Propose(Rec("say"), CTX, {})
	HW = false   -- il Gateway crede a un'azione del giocatore, il client no
	local ok, why
	Gateway:PlayerAction(function() ok, why = Gateway:SendPending() end)
	T.ok(not ok and why == "blocked", "SendPending: bloccato")
	T.eq(Gateway.lastRefusal, "blocked", "last refusal = blocked")
	T.eq(#Public(), 0, "nulla è uscito in chat")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta in attesa")
	T.eq(Gateway.sentTotal or 0, total, "non conta come inviata")
	T.eq(Gateway.blockedTotal, 1, "un blocco contato")
	T.eq(#NS.Diagnostics.errors, before, "e non è un errore Lua")
	T.ok(T.sentContains("bloccato"), "il giocatore lo vede")
	T.eq(Gateway:Status().blocked, 1, "in /au debug")
	-- 2) l'evento arriva dopo il ritorno della chiamata: sembrava un invio riuscito
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway.blockedTotal = 0
	total = Gateway.sentTotal or 0
	BLOCK_EVENT_LATE = true
	Gateway:Propose(Rec("say"), CTX, {})
	Gateway:PlayerAction(function() ok, why = Gateway:SendPending() end)
	T.ok(ok, "SendPending sembra riuscito")
	T.ok(Gateway:GetPending() == nil and (Gateway.sentTotal or 0) == total + 1, "per un attimo: scartata e contata")
	ADVANCE(1)
	BLOCK_EVENT_LATE = false
	T.eq(Gateway.lastRefusal, "blocked", "poi l'evento: last refusal = blocked")
	T.ok(Gateway:GetPending() ~= nil and Gateway:GetPending().channel == "SAY", "la proposta torna in attesa")
	T.eq(Gateway.sentTotal or 0, total, "il conteggio torna com'era")
	T.eq(#Gateway.sendLog, 0, "e il registro del flood")
	T.eq(#Public(), 0, "nulla è uscito")
	-- si può riprovare, con un gesto vero
	HW = true
	local sent
	Gateway:PlayerAction(function() sent = Gateway:SendPending() end)
	HW = false
	T.ok(sent and #Public() == 1, "con un gesto vero parte")
	-- 3) invio automatico bloccato (guasto simulato del controllo del Gateway): diventa una proposta
	Reset()
	Auto()
	NS.db.output.autoPublicSay = true
	local saved = Gateway.CanSendWithoutAction
	Gateway.CanSendWithoutAction = function() return true end
	Gateway.blockedTotal = 0
	total = Gateway.sentTotal or 0
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	Gateway.CanSendWithoutAction = saved
	T.eq(#Public(), 0, "automatico: nulla in chat")
	T.ok(Gateway:GetPending() ~= nil, "automatico: resta una proposta")
	T.eq(Gateway.sentTotal or 0, total, "automatico: non contato")
	T.eq(Gateway.blockedTotal, 1, "automatico: blocco contato")
	-- 4) eventi che non ci riguardano
	Reset()
	Gateway.blockedTotal = 0
	Gateway.lastRefusal = nil
	FIRE("ADDON_ACTION_FORBIDDEN", "AltroAddon", "SendChatMessage")
	FIRE("ADDON_ACTION_FORBIDDEN", "AzerothUnspoken", "CastSpellByName")
	FIRE("ADDON_ACTION_BLOCKED", "AltroAddon", "UseAction")
	T.eq(Gateway.blockedTotal, 0, "un altro addon, o un'altra funzione: ignorati")
	T.eq(Gateway.lastRefusal, nil, "nessun rifiuto")
	-- un nostro blocco senza un invio recente (arrivato tardi) si segnala comunque
	FIRE("ADDON_ACTION_FORBIDDEN", "AzerothUnspoken", "SendChatMessage")
	T.eq(Gateway.blockedTotal, 1, "un nostro blocco isolato si conta")
	T.eq(Gateway.lastRefusal, "blocked", "e si segnala")
	-- se il client manda entrambi gli eventi per lo stesso invio, si conta una volta sola
	ADVANCE(5)
	FIRE("ADDON_ACTION_FORBIDDEN", "AzerothUnspoken", "SendChatMessage")
	FIRE("ADDON_ACTION_BLOCKED", "AzerothUnspoken", "SendChatMessage")
	T.eq(Gateway.blockedTotal, 2, "due eventi dello stesso invio: un solo blocco")
	Reset()
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

	-- il client dà un errore Lua vero: intercettato, proposta conservata
	local before = #NS.Diagnostics.errors
	SEND_RAISES = true
	Gateway:PlayerAction(function() Gateway:SendPending() end)
	SEND_RAISES = false
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
		elseif p.speaker == "npc" then
			T.eq(p.form, "say", p.id .. ": la voce NPC è parlata (resta privata)")
		elseif p.speaker == "narrator" and p.chainable then
			-- #99: the parts of a narrator monologue after the first are whole sentences (say), never said alone in chat
			T.eq(p.form, "say", p.id .. ": parte di un monologo del narratore")
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

---------------------------------------------------------------------------
-- Regressioni di Q2 (issue #5, #8, #14, #19)
---------------------------------------------------------------------------
T.run("#5: il testo parte corretto per il canale (forma × canale)", function()
	-- (forma, canale) -> testo che parte; il nome ce l'ha già il gioco solo per /e
	local EMOTE_TEXT, SAY_TEXT = "lancia la lenza e resta immobile.", "Per l'onore dei miei avi."
	local expected = {
		{ "emote", "EMOTE", "lancia la lenza e resta immobile." },
		{ "emote", "SAY", "Garrosh lancia la lenza e resta immobile." },
		{ "emote", "YELL", "Garrosh lancia la lenza e resta immobile." },
		{ "emote", "PARTY", "Garrosh lancia la lenza e resta immobile." },
		{ "emote", "RAID", "Garrosh lancia la lenza e resta immobile." },
		{ "emote", "GUILD", "Garrosh lancia la lenza e resta immobile." },
		{ "emote", "INSTANCE_CHAT", "Garrosh lancia la lenza e resta immobile." },
		{ "say", "SAY", "Per l'onore dei miei avi." },
		{ "say", "YELL", "Per l'onore dei miei avi." },
		{ "say", "PARTY", "Per l'onore dei miei avi." },
		{ "say", "RAID", "Per l'onore dei miei avi." },
		{ "say", "GUILD", "Per l'onore dei miei avi." },
		{ "say", "INSTANCE_CHAT", "Per l'onore dei miei avi." },
		{ "say", "EMOTE", "dice: «Per l'onore dei miei avi.»" },
	}
	NS.db.locale = "it"
	for _, e in ipairs(expected) do
		local form, channel, want = e[1], e[2], e[3]
		T.eq(Gateway:TextFor(form, form == "emote" and EMOTE_TEXT or SAY_TEXT, channel, "Garrosh"), want,
			form .. " in " .. channel)
	end
	-- in inglese il verbo è localizzato
	NS.db.locale = "en"
	T.eq(Gateway:TextFor("say", "For honor.", "EMOTE", "Garrosh"), 'says, "For honor."', "verbo in inglese")
	NS.db.locale = "it"
	-- senza il nome nel contesto si ripiega su quello del personaggio
	T.eq(Gateway:TextFor("emote", "sospira.", "SAY"), "Garrosh sospira.", "nome dal personaggio")

	-- end to end con il canale fisso: ciò che parte è ciò che il giocatore vede nel narratore
	for _, mode in ipairs({ "CONFIRM_TO_SEND", "PREVIEW" }) do
		for _, fixed in ipairs({ "SAY", "EMOTE", "YELL" }) do
			for _, form in ipairs({ "say", "emote" }) do
				Reset()
				P.group = true
				Gateway:SetMode(mode)
				NS.db.chat.channel = fixed
				local text = form == "emote" and EMOTE_TEXT or SAY_TEXT
				Gateway:Propose(Rec(form, nil, text), CTX, {})
				local p = Gateway:GetPending()
				T.ok(p ~= nil and p.channel == fixed, mode .. "/" .. fixed .. "/" .. form .. ": proposta nel canale fisso")
				local want = Gateway:TextFor(form, text, fixed, "Garrosh")
				local shown = p.display
				if fixed == "EMOTE" then T.eq(shown, "Garrosh " .. want, "anteprima come in chat") end
				if mode == "PREVIEW" then Press() end
				if mode == "PREVIEW" and Narrator:GetFrame().editor:IsShown() then
					HW = true
					Narrator:GetFrame().editor:TypeEnter(text)
					HW = false
				else
					Press()
				end
				local sent = SENT[#SENT]
				T.eq(sent, fixed .. ": " .. want, mode .. "/" .. fixed .. "/" .. form .. ": testo inviato")
				if form == "emote" and fixed ~= "EMOTE" then
					T.ok(sent:find("^" .. fixed .. ": Garrosh "), "l'emote fuori da /e ha il soggetto")
				end
				if form == "say" and fixed == "EMOTE" then
					T.ok(sent:find("«", 1, true) ~= nil, "il parlato in /e è racchiuso tra virgolette")
				end
			end
		end
	end
	P.group = false

	-- cambiando canale dal pulsante il narratore mostra ciò che partirà
	Reset()
	P.group = true
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, SAY_TEXT), CTX, {})
	T.eq(Gateway:GetPending().display, "«" .. SAY_TEXT .. "»", "in /s: tra virgolette, come prima")
	Gateway:CycleChannel()   -- /e
	T.eq(Gateway:GetPending().channel, "EMOTE", "canale")
	T.eq(Gateway:GetPending().display, "Garrosh dice: «" .. SAY_TEXT .. "»", "in /e: come apparirà in chat")
	Gateway:CycleChannel()   -- /p
	T.eq(Gateway:GetPending().display, "«" .. SAY_TEXT .. "»", "di nuovo in un canale parlato")
	P.group = false

	-- l'emote automatica con canale fisso /e e frase parlata: un'emote "dice: ..." e non "Nome Frase"
	Reset()
	NS.db.chat.channel = "EMOTE"
	Auto()
	Gateway:Propose(Rec("say", nil, SAY_TEXT), CTX, { auto = true })
	T.eq(SENT[#SENT], "EMOTE: dice: «" .. SAY_TEXT .. "»", "automatica: testo adatto a /e")
	-- il parlato in /e supera i 255 byte con il verbo: si taglia comunque a 255
	Reset()
	P.instance = true
	local long = string.rep("a", 250)
	NS.db.chat.channel = "EMOTE"
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say", nil, long), CTX, {})
	Press()
	T.ok(#SENT[#SENT] - #"EMOTE: " <= 255, "tagliato a 255 byte anche dopo l'aggiunta")
end)

T.run("#19: il limite dei byte è uno solo, per canale (Config.CHAT_LIMITS)", function()
	local Config, Validator = NS.Config, NS.Validator
	T.ok(Validator.LIMITS == Config.CHAT_LIMITS, "il validatore legge la stessa tabella del Gateway")
	for _, ch in ipairs({ "SAY", "YELL", "EMOTE", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }) do
		T.eq(Config.CHAT_LIMITS[ch], 255, "limite di " .. ch)
	end
	T.ok(Config.CHAT_LIMITS.PRIVATE > 255, "i pensieri hanno un limite di leggibilità")

	-- cambiare il limite di un canale cambia il taglio del Gateway
	Reset()
	P.instance = true
	local saved = Config.CHAT_LIMITS.SAY
	Config.CHAT_LIMITS.SAY = 20
	T.ok(Gateway:Send(string.rep("x", 50), "SAY"), "invio lungo")
	T.eq(#SENT[#SENT] - #"SAY: ", 20, "tagliato a 20 byte (17 + '...')")
	T.ok(SENT[#SENT]:find("%.%.%.$"), "con i puntini")
	ADVANCE(10)
	T.ok(Gateway:Send(string.rep("x", 50), "EMOTE"), "un altro canale")
	T.eq(#SENT[#SENT] - #"EMOTE: ", 50, "non è toccato dal limite di /say")

	Config.CHAT_LIMITS.SAY = saved
end)

T.run("#8: SelectAuto è l'unico accesso al secondo consenso", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	SENT = {}
	T.eq(Gateway:SelectAuto(), "warned", "primo gesto: avviso")
	T.ok(Gateway:IsAutoArmed() and not Gateway:IsAutoActive(), "in attesa di conferma")
	T.ok(T.sentContains("ATTENZIONE"), "con il testo dell'avviso")
	T.eq(Gateway:GetMode(), "CONFIRM_TO_SEND", "nulla è cambiato")
	T.eq(Gateway:SelectAuto(), "enabled", "secondo gesto: attivo")
	T.ok(Gateway:IsAutoActive() and NS.db.output.autoPublicSay, "modalità e consenso")
	T.eq(Gateway:SelectAuto(), "enabled", "già attivo: nessun nuovo avviso")
	-- scaduta l'attesa
	Gateway:SetMode("PRIVATE")
	Gateway:SelectAuto()
	ADVANCE(11)
	T.ok(not Gateway:IsAutoArmed(), "dopo 10 s l'attesa decade")
	T.eq(Gateway:SelectAuto(), "warned", "serve un nuovo avviso")
	-- un cambio di modalità disarma
	Gateway:SetMode("PREVIEW")
	T.ok(not Gateway:IsAutoArmed(), "un altro cambio di modalità disarma")
	-- il consenso non sopravvive a un cambio di modalità
	Gateway:SelectAuto(); Gateway:SelectAuto()
	T.ok(NS.db.output.autoPublicSay, "attivo")
	Gateway:SetMode("CONFIRM_TO_SEND")
	T.ok(not NS.db.output.autoPublicSay, "uscendo da AUTO il consenso si spegne")
	-- tornare in AUTO a mano (API) non lo riaccende
	Gateway:SetMode("AUTO_ONLY_IF_ALLOWED")
	T.ok(not NS.db.output.autoPublicSay, "rientrare in AUTO senza conferma: consenso spento")
end)

T.run("#14: Compat.OpenChatWith e CopyToChat", function()
	local Compat = NS.Compat
	local opened = {}
	local saved = { ChatFrame_OpenChat, ChatEdit_ChooseBoxForSend, ChatEdit_ActivateChat }

	-- percorso normale
	ChatFrame_OpenChat = function(text) table.insert(opened, text) end
	T.ok(Compat:CanOpenChat(), "ChatFrame_OpenChat disponibile")
	T.ok(Compat:OpenChatWith("ciao", "EMOTE"), "apre /e")
	T.eq(opened[#opened], "/e ciao", "prefisso del canale")
	for ch, prefix in pairs({ SAY = "/s ", YELL = "/y ", PARTY = "/p ", RAID = "/raid ", GUILD = "/g ", INSTANCE_CHAT = "/i " }) do
		Compat:OpenChatWith("x", ch)
		T.eq(opened[#opened], prefix .. "x", "prefisso di " .. ch)
	end
	local ok, why = Compat:OpenChatWith("x", "WHISPER")
	T.ok(not ok and why == "bad_args", "canale sconosciuto")
	ok, why = Compat:OpenChatWith("", "SAY")
	T.ok(not ok and why == "bad_args", "testo vuoto")
	ChatFrame_OpenChat = function() error("boom") end
	ok = Compat:OpenChatWith("x", "SAY")
	T.ok(not ok, "un errore del client non esce dalla funzione")

	-- ripiego sulla finestra di modifica
	ChatFrame_OpenChat = nil
	local box = { text = "", SetText = function(self, t) self.text = t end }
	local active
	ChatEdit_ChooseBoxForSend = function() return box end
	ChatEdit_ActivateChat = function(b) active = b end
	T.ok(Compat:CanOpenChat(), "ripiego disponibile")
	T.ok(Compat:OpenChatWith("ciao", "SAY"), "apre con il ripiego")
	T.ok(active == box and box.text == "/s ciao", "casella attivata e riempita")

	-- niente di niente
	ChatEdit_ChooseBoxForSend, ChatEdit_ActivateChat = nil, nil
	T.ok(not Compat:CanOpenChat(), "nessuna casella")
	ok, why = Compat:OpenChatWith("ciao", "SAY")
	T.ok(not ok and why == "no_chat_box", "dichiarata mancante")

	-- il Gateway: stesso testo e stesso taglio dell'invio, e nessun invio
	ChatFrame_OpenChat = function(text) table.insert(opened, text) end
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("emote", nil, "alza lo sguardo."), CTX, {})
	NS.db.chat.channel = "SAY"
	Gateway.pending.channel = "SAY"
	T.ok(Gateway:CopyToChat(), "copia")
	T.eq(opened[#opened], "/s Garrosh alza lo sguardo.", "stessa trasformazione dell'invio diretto")
	T.eq(#Public(), 0, "nulla inviato dall'addon")
	T.eq(Gateway:GetPending(), nil, "proposta scartata")
	-- il testo modificato dal giocatore
	Gateway:Propose(Rec("say", nil, "Prima."), CTX, {})
	Gateway:SetPendingText("Dopo.")
	Gateway:CopyToChat()
	T.eq(opened[#opened], "/s Dopo.", "si copia il testo modificato")
	-- canale non disponibile: nessuna copia e la proposta resta
	Gateway:Propose(Rec("say", nil, "Gruppo."), CTX, {})
	Gateway.pending.channel = "PARTY"
	local n = #opened
	ok, why = Gateway:CopyToChat()
	T.ok(not ok and why == "channel_unavailable" and #opened == n, "gruppo assente: non si copia")
	T.ok(Gateway:GetPending() ~= nil, "la proposta resta")
	-- taglio a 255 byte
	Gateway:Discard()
	Gateway:Propose(Rec("say", nil, string.rep("è", 200)), CTX, {})
	Gateway:CopyToChat()
	T.ok(#opened[#opened] - #"/s " <= 255, "copia tagliata a 255 byte")
	-- senza proposta
	ok, why = Gateway:CopyToChat()
	T.ok(not ok and why == "empty", "senza proposta")

	ChatFrame_OpenChat, ChatEdit_ChooseBoxForSend, ChatEdit_ActivateChat = saved[1], saved[2], saved[3]
end)

---------------------------------------------------------------------------
-- #13: "Un'altra" cambia la proposta in attesa
---------------------------------------------------------------------------
T.run("#13: Reroll sostituisce la proposta senza inviare, tiene canale ed evento", function()
	Reset()
	NS:RegisterPack({ id = "t_reroll", phrases = {
		{ id = "rr.1", event = "t_rr", speaker = "character", it = "Prima frase." },
		{ id = "rr.2", event = "t_rr", speaker = "character", it = "Seconda frase." },
		{ id = "rr.3", event = "t_rr", speaker = "character", it = "Terza frase." },
	} })
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	local f = Narrator:GetFrame()

	-- senza proposta
	local ok, why = Gateway:Reroll()
	T.ok(not ok and why == "reroll_empty", "senza proposta: niente da cambiare")
	T.ok(T.sentContains("nessuna proposta da cambiare"), "e lo dice")

	T.ok(Gateway:Narrate("t_rr", NS:BuildContext(), { form = "say" }), "proposta iniziale")
	local first = Gateway:GetPending()
	T.eq(first.event, "t_rr", "la proposta conserva l'evento")
	T.ok(first.id and first.ctx, "e la frase scelta e il contesto")
	Gateway:CycleChannel()
	T.eq(Gateway:GetPending().channel, "EMOTE", "canale scelto dal giocatore")
	local historyBefore = #Narrator.history
	local budget = NS.Pacing:Status(GetTime(), 50)
	SENT = {}
	ok = Gateway:Reroll()
	local second = Gateway:GetPending()
	T.ok(ok and second and second ~= first, "Reroll riesce e crea una nuova proposta")
	T.ok(second.id ~= first.id, "un'altra frase (id diverso)")
	T.eq(second.event, "t_rr", "stesso evento")
	T.eq(second.form, "say", "stessa forma")
	T.eq(second.channel, "EMOTE", "il canale resta")
	T.eq(#Public(), 0, "nulla in chat")
	T.eq(#Narrator.history, historyBefore, "la proposta sostituita esce dalla cronologia")
	T.eq(Narrator.history[#Narrator.history].text, second.display, "e quella nuova la sostituisce")
	T.ok(f.text:GetText():find(second.text, 1, true), "il riquadro mostra la nuova frase")
	local after = NS.Pacing:Status(GetTime(), 50)
	local same = true
	for k, v in pairs(budget) do if after[k] ~= v then same = false end end
	T.ok(same, "il budget del Director non cambia")

	-- il pulsante e il comando
	local before = Gateway:GetPending()
	f.anotherBtn:Click()
	T.ok(Gateway:GetPending() ~= before and #Public() == 0, "il pulsante Un'altra cambia la proposta")
	before = Gateway:GetPending()
	SlashCmdList.AZEROTHUNSPOKEN("another")
	T.ok(Gateway:GetPending() ~= before or T.sentContains("nessuna frase adatta"), "/au another")
	AzerothUnspoken_Reroll()
	T.eq(#Public(), 0, "il tasto non invia nulla")

	-- con tre frasi c'è sempre un'alternativa alla frase mostrata (l'anti-ripetizione la esclude)
	local shownId = Gateway:GetPending().id
	for _ = 1, 10 do
		Gateway:Reroll()
		T.ok(Gateway:GetPending().id ~= shownId, "ogni Reroll cambia davvero la frase")
		shownId = Gateway:GetPending().id
	end
end)

T.run("#13: con una sola frase la proposta resta invariata e un avviso lo dice", function()
	Reset()
	NS:RegisterPack({ id = "t_reroll1", phrases = {
		{ id = "rr1.1", event = "t_rr1", speaker = "character", it = "Unica frase." },
	} })
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Narrate("t_rr1", NS:BuildContext(), { form = "say" })
	local cur = Gateway:GetPending()
	T.ok(cur ~= nil, "proposta")
	SENT = {}
	local ok, why = Gateway:Reroll()
	T.ok(not ok and why == "no_phrase", "nessuna alternativa: no_phrase")
	T.eq(Gateway:GetPending(), cur, "proposta invariata")
	T.ok(T.sentContains("nessuna frase adatta per 't_rr1'"), "avviso")
	T.eq(#Public(), 0, "nulla in chat")
end)

T.run("#13: Reroll con l'editor aperto non perde il testo; il testo modificato viene stampato", function()
	Reset()
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	-- l'anti-ripetizione ricorda le frasi del test precedente: si riparte da una memoria vuota
	NS.cdb.memory.recent = {}
	Gateway:Narrate("t_rr", NS:BuildContext(), { form = "say" })
	local p = Gateway:GetPending()
	T.ok(p ~= nil, "proposta")
	Narrator:OpenEditor()
	local ok, why = Gateway:Reroll()
	T.ok(not ok and why == "reroll_editing" and Gateway:GetPending() == p, "con l'editor aperto non cambia")
	T.ok(T.sentContains("chiudi l'editor"), "e dice perché")
	Narrator:CloseEditor()
	Gateway:SetPendingText("Parole mie.")
	SENT = {}
	ok = Gateway:Reroll()
	T.ok(ok and Gateway:GetPending().edited == nil, "dopo la chiusura cambia, senza il testo modificato")
	T.ok(T.sentContains("Parole mie."), "il testo modificato a mano viene stampato in chat locale")
end)

T.run("#13: una proposta non pubblica o inviata non si può cambiare", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose(Rec("say"), CTX, { auto = true })
	Press()
	local ok, why = Gateway:Reroll()
	T.ok(not ok and why == "reroll_empty", "dopo l'invio non c'è più nulla da cambiare")
end)

---------------------------------------------------------------------------
-- #152, #163 (D16, ADR 0032): monologues and literary lines are private in every mode
---------------------------------------------------------------------------
NS:RegisterPack({
	id = "t_literary", languages = { "itIT" },
	registry = {
		["lit.hymn"] = { event = "t_lit", speaker = "narrator", form = "emote", styles = { "ancient" },
			tags = { "lore", "genre_hymn" } },
		["lit.song"] = { event = "t_lit", speaker = "character", form = "say", styles = { "ancient" },
			tags = { "genre_song" } },
		["lit.plain"] = { event = "t_lit", speaker = "character", form = "say", styles = { "everyday" } },
		["lit.only"] = { event = "t_litonly", speaker = "character", form = "say", styles = { "ancient" },
			tags = { "lore" } },
	},
	texts = { itIT = {
		["lit.hymn"] = "canta un inno sulle strade che nessuno conosce.", ["lit.song"] = "Veglia su chi cammina stanotte.",
		["lit.plain"] = "Una frase come le altre.", ["lit.only"] = "Parole incise sulla pietra.",
	} },
})

-- a monologue as the Director passes it, one as a pack with wrong data would (no kind on the record), a verses line
-- (narrator emote and character say)
local function PrivateRecs()
	return {
		monologue = { id = "mono.zone.crest", kind = "monologue", form = "emote", speaker = "narrator", event = "zone",
			text = "pauses where the road crests, and the land opens below." },
		monologueNoKind = { id = "mono.zone.dusk", form = "emote", speaker = "narrator", event = "zone",
			text = "stops as the light goes." },
		verses = { id = "lit.hymn", form = "emote", speaker = "narrator", event = "t_lit", text = "canta un inno." },
		song = { id = "lit.song", form = "say", speaker = "character", event = "t_lit", text = "Veglia su chi cammina." },
	}
end

T.run("#152, #163: a monologue or a literary line never reaches chat, in any mode", function()
	T.ok(NS.Engine.byId["mono.zone.crest"] and NS.Engine.byId["mono.zone.dusk"], "the base monologues exist")
	for name in pairs(PrivateRecs()) do
		for _, mode in ipairs({ "PRIVATE", "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED" }) do
			local tag = name .. "/" .. mode
			Reset()
			if mode == "AUTO_ONLY_IF_ALLOWED" then Auto() else Gateway:SetMode(mode) end
			P.instance = true   -- /say would also go out without a gesture
			local rec = PrivateRecs()[name]
			T.ok(Gateway:Propose(rec, CTX, { auto = true }), tag .. ": shown in the narrator")
			T.ok(Gateway:GetPending() == nil, tag .. ": no proposal")
			T.eq(#Public(), 0, tag .. ": nothing sent")
			T.ok(rec.sentTo == nil, tag .. ": not marked as sent")
			local ok, why = Gateway:CopyToChat()
			T.ok(not ok and why == "empty", tag .. ": nothing to copy to the chat box")
			Press()   -- with no proposal the key improvises an ordinary line (a proposal at most): never this one
			T.eq(#Public(), 0, tag .. ": the key sends nothing")
			Gateway:Discard()
			-- the same when the player asked for the line (not auto)
			Gateway:Propose(PrivateRecs()[name], CTX, {})
			T.ok(Gateway:GetPending() == nil and #Public() == 0, tag .. ": private when asked too")
		end
	end
	Reset()
end)

T.run("#152, #163: a composite-situation line is an ordinary line and stays public-capable", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	local rec = { id = "sit.closecall.say", form = "say", speaker = "character", event = "victory",
		situation = "close_call", text = "Per un soffio." }
	T.ok(NS.Engine.byId["sit.closecall.say"] ~= nil, "the base composite line exists")
	T.ok(Gateway:PrivateReason(rec) == nil, "no private reason")
	Gateway:Propose(rec, CTX, { auto = true })
	T.ok(Gateway:GetPending() ~= nil, "a proposal, as any line")
	Press()
	T.eq(#Public(), 1, "and the gesture sends it")
	-- the same line in the automatic mode with the second consent goes out as an ordinary line would
	Reset()
	Auto()
	Gateway:Propose({ id = "sit.closecall.say", form = "emote", speaker = "narrator", event = "victory",
		situation = "close_call", text = "tira il fiato." }, CTX, { auto = true })
	T.eq(#Public(), 1, "AUTO: an emote composite line is sent like any emote")
	Reset()
end)

T.run("#152, #163: the guard holds when a private line is already pending", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	for name, rec in pairs(PrivateRecs()) do
		local function Plant()
			Gateway.pending = { text = rec.text, display = rec.text, speaker = "character", event = rec.event,
				id = rec.id, form = "say", channel = "SAY", time = GetTime() }
		end
		Plant()
		HW = true
		local ok, why = Gateway:SendPending()
		HW = false
		T.ok(not ok and why == "private_only", name .. ": SendPending refuses")
		T.ok(Gateway:GetPending() == nil, name .. ": and drops it")
		Plant()
		ok, why = Gateway:CopyToChat()
		T.ok(not ok and why == "private_only", name .. ": CopyToChat refuses")
		T.ok(Gateway:GetPending() == nil, name .. ": and drops it")
		HW = true
		ok, why = Gateway:Send("testo", "SAY", { proposal = { id = rec.id, kind = rec.kind, speaker = "character" } })
		HW = false
		T.ok(not ok and why == "private_only", name .. ": Send refuses the proposal")
	end
	T.eq(#Public(), 0, "nothing reached the chat")
	Reset()
end)

T.run("#152, #163: Reroll never turns into a private line", function()
	Reset()
	NS.db.locale = "it"
	Gateway:SetMode("CONFIRM_TO_SEND")
	-- t_lit has one plain line and two literary ones: a reroll never lands on a literary line
	NS.cdb.memory.recent = {}
	Gateway:Propose({ id = "lit.plain", form = "say", speaker = "character", event = "t_lit", text = "x" },
		NS:BuildContext(), {})
	for _ = 1, 30 do
		Gateway:Reroll()
		local p = Gateway:GetPending()
		T.ok(p and p.id == "lit.plain", "the plain line stays (got " .. tostring(p and p.id) .. ")")
		NS.cdb.memory.recent = {}
	end
	T.eq(#Public(), 0, "nothing sent")
	-- an event with literary lines only: the narrator shows the line, no proposal
	Gateway:Discard()
	NS.cdb.memory.recent = {}
	T.ok(Gateway:Narrate("t_litonly", NS:BuildContext(), { form = "say" }), "shown")
	T.ok(Gateway:GetPending() == nil, "literary line only: no proposal")
	-- and a reroll with only literary alternatives keeps the proposal
	Gateway:Propose({ id = "lit.plain", form = "say", speaker = "character", event = "t_litonly", text = "x" },
		NS:BuildContext(), {})
	local ok, why = Gateway:Reroll()
	T.ok(not ok and why == "no_phrase", "the only alternatives are literary: no reroll")
	T.eq(Gateway:GetPending() and Gateway:GetPending().id, "lit.plain", "the proposal stays")
	Reset()
end)

T.run("#152, #163: PrivateReason reads voice, tags (list or set), parts and the rule", function()
	T.eq(Gateway:PrivateReason({ speaker = "inner" }), "voice", "inner")
	T.eq(Gateway:PrivateReason({ speaker = "character", tags = { "genre_song" } }), "literary", "list")
	T.eq(Gateway:PrivateReason({ speaker = "character", tags = { lore = true } }), "literary", "set")
	T.eq(Gateway:PrivateReason({ speaker = "character", tags = { "wry" } }), nil, "an ordinary tag")
	T.eq(Gateway:PrivateReason({ speaker = "narrator", parts = { "a", "b" } }), "monologue", "parts")
	T.eq(Gateway:PrivateReason({ speaker = "character", id = "lit.song" }), "literary", "from the rule")
	T.eq(Gateway:PrivateReason({ speaker = "narrator", id = "mono.zone.crest" }), "monologue", "from the rule")
end)
