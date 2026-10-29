-- Azeroth Unspoken: Chat Gateway (GDD §7.7).
-- Separa la narrazione privata dal testo che il personaggio potrebbe dire in chat.
--
-- Modalità (chat.mode):
--   PRIVATE               predefinita: tutto resta nel narratore privato, nessuna proposta pubblica
--   PREVIEW               la frase pubblica diventa una proposta; il tasto apre l'editor, si invia da lì
--   CONFIRM_TO_SEND       la proposta è pronta: il tasto "pronuncia" (o il pulsante) la invia
--   AUTO_ONLY_IF_ALLOWED  invio automatico solo dove il client lo permette senza azione del giocatore
--                         (emote; /say nelle istanze) e solo con output.autoPublicSay: il resto diventa proposta
--
-- Regole che non si aggirano:
--  * l'invio da un'azione del giocatore passa solo da Gateway:PlayerAction(fn): tasto, clic, comando,
--    Invio nell'editor. Fuori da quel ambito (timer, eventi, altri addon) /say, /yell e i canali di
--    gruppo non partono;
--  * le voci interiore e NPC non vanno mai in chat pubblica;
--  * nessun invio vuoto, niente flood, niente invio durante il blocco della chat del client;
--  * una frase si può modificare e si può scegliere il canale prima dell'invio.
local ADDON, NS = ...
local Compat = NS.Compat
---@class AUChatGateway
---@field MODES string[]
---@field CHANNELS string[]
---@field pending? AUProposal proposta in attesa
---@field inPlayerAction boolean vero solo dentro PlayerAction
---@field lastRefusal? string motivo dell'ultimo invio rifiutato
---@field autoAskedAt? number GetTime() dell'avviso mostrato prima di attivare l'invio automatico
---@field editing boolean il giocatore sta modificando la proposta
---@field sendLog { time: number, auto: boolean }[]
local Gateway = NS:RegisterModule("gateway")
NS.Gateway = Gateway

---@class AUProposal
---@field text string testo proposto
---@field edited? string testo modificato dal giocatore
---@field display string testo come compare nel narratore
---@field speaker string
---@field event string
---@field form string say | emote
---@field channel string canale scelto
---@field time number GetTime() alla creazione
---@field player? string nome per le emote
---@field reviewed? boolean in PREVIEW: il giocatore ha già aperto l'editor

Gateway.MODES = NS.Config.CHAT_MODES
Gateway.CHANNELS = NS.Config.CHAT_CHANNELS

-- voci che possono diventare testo in chat; "inner" e "npc" restano private
local PUBLIC_VOICE = { narrator = true, character = true }

local MODE_ALIAS = {
	private = "PRIVATE", privato = "PRIVATE", privata = "PRIVATE", p = "PRIVATE",
	preview = "PREVIEW", anteprima = "PREVIEW",
	confirm = "CONFIRM_TO_SEND", conferma = "CONFIRM_TO_SEND", send = "CONFIRM_TO_SEND", invia = "CONFIRM_TO_SEND",
	auto = "AUTO_ONLY_IF_ALLOWED", automatica = "AUTO_ONLY_IF_ALLOWED", automatico = "AUTO_ONLY_IF_ALLOWED",
}

function NS:InInstance()
	local inInstance, kind = IsInInstance()
	return inInstance and kind ~= "none"
end

-- al massimo `limit` byte (Config.CHAT_LIMITS[canale], 255 se il canale non è in tabella), senza spezzare
-- un carattere UTF-8 a metà
---@param text string
---@param limit? integer
---@return string
local function Clip(text, limit)
	limit = limit or 255
	if #text <= limit then return text end
	local cut = text:sub(1, limit - 3)
	while #cut > 0 and cut:byte(#cut) >= 0x80 and cut:byte(#cut) < 0xC0 do cut = cut:sub(1, -2) end
	if #cut > 0 and cut:byte(#cut) >= 0xC0 then cut = cut:sub(1, -2) end
	return cut .. "..."
end
NS.Clip = Clip

local function Trim(s)
	return (s:gsub("^[ \t\r\n]+", ""):gsub("[ \t\r\n]+$", ""))
end

---------------------------------------------------------------------------
-- Modalità
---------------------------------------------------------------------------
---@return string mode la modalità scelta
function Gateway:GetMode()
	return NS.db.chat.mode
end

-- Il modulo "publicChat" spento equivale a PRIVATE.
---Il modulo publicChat spento equivale a PRIVATE.
---@return string mode
function Gateway:EffectiveMode()
	if not NS.db.modules.publicChat then return "PRIVATE" end
	return NS.db.chat.mode
end

-- Accetta nomi in più lingue ("conferma", "confirm", "CONFIRM_TO_SEND"...). nil se sconosciuto.
---Accetta nomi in più lingue ("conferma", "confirm", "CONFIRM_TO_SEND").
---@param value string
---@return string? mode nil se sconosciuto
function Gateway:ParseMode(value)
	if type(value) ~= "string" then return nil end
	local up = value:upper()
	for _, m in ipairs(self.MODES) do
		if m == up then return m end
	end
	return MODE_ALIAS[value:lower()]
end

-- Cambia modalità. L'invio automatico è un secondo consenso (output.autoPublicSay) che si accende solo
-- con opts.confirmAuto, e solo scegliendo AUTO_ONLY_IF_ALLOWED: ogni altro cambio di modalità lo spegne.
-- Senza il consenso AUTO_ONLY_IF_ALLOWED si comporta come CONFIRM_TO_SEND. Chi lo offre all'utente
-- (comando, pannello, procedura guidata) passa da SelectAuto.
---Cambia modalità; autoPublicSay si accende solo con opts.confirmAuto e solo in AUTO_ONLY_IF_ALLOWED.
---@param value string
---@param opts? { confirmAuto: boolean }
---@return boolean ok
---@return string? mode
function Gateway:SetMode(value, opts)
	local mode = self:ParseMode(value)
	if not mode then return false end
	NS.db.chat.mode = mode
	NS.db.output.autoPublicSay = (mode == "AUTO_ONLY_IF_ALLOWED" and opts ~= nil and opts.confirmAuto == true)
	self.autoAskedAt = nil
	if mode == "PRIVATE" or not NS.db.modules.publicChat then self:Discard() end
	self:Changed()
	return true, mode
end

-- Scorre PRIVATE, PREVIEW, CONFIRM_TO_SEND. L'invio automatico non è nel giro: da lì si torna a PRIVATE.
---@return boolean ok
---@return string? mode
function Gateway:CycleMode()
	local cur = self:GetMode()
	local cycle = { "PRIVATE", "PREVIEW", "CONFIRM_TO_SEND" }
	for i, m in ipairs(cycle) do
		if m == cur then return self:SetMode(cycle[(i % #cycle) + 1]) end
	end
	return self:SetMode("PRIVATE")
end

local AUTO_CONFIRM_SECONDS = 10

-- L'invio automatico (emote sempre, /say nelle istanze, a nome del personaggio) si sceglie con due gesti:
-- il primo mostra l'avviso e non cambia nulla, il secondo, entro 10 secondi, lo attiva. Vale per il comando
-- (/au chat auto, ripetuto), il pannello e la procedura guidata.
---@return "warned"|"enabled" state
function Gateway:SelectAuto()
	if NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED" and NS.db.output.autoPublicSay then return "enabled" end
	local now = GetTime()
	if self:IsAutoArmed() then
		self:SetMode("AUTO_ONLY_IF_ALLOWED", { confirmAuto = true })
		return "enabled"
	end
	self.autoAskedAt = now
	NS:Print(NS:L("chat_auto_warning"))
	return "warned"
end

-- l'avviso è stato mostrato da poco: un secondo gesto conferma
---@return boolean
function Gateway:IsAutoArmed()
	return self.autoAskedAt ~= nil and GetTime() - self.autoAskedAt <= AUTO_CONFIRM_SECONDS
end

-- l'invio automatico è davvero acceso (modalità e consenso)
---@return boolean
function Gateway:IsAutoActive()
	return NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED" and NS.db.output.autoPublicSay == true
end

---------------------------------------------------------------------------
-- Canali
---------------------------------------------------------------------------
-- canale predefinito di una frase: il personaggio parla, il narratore descrive
---@param rec AUPhraseRecord
---@return string channel
function Gateway:ResolveChannel(rec)
	local c = NS.db.chat.channel
	if c == "auto" then return rec.form == "emote" and "EMOTE" or "SAY" end
	return c
end

---@param channel string
---@return boolean
function Gateway:ChannelAvailable(channel)
	if channel == "SAY" or channel == "EMOTE" or channel == "YELL" then return true end
	if channel == "PARTY" then return IsInGroup() and true or false end
	if channel == "RAID" then return IsInRaid() and true or false end
	if channel == "GUILD" then return (IsInGuild and IsInGuild()) and true or false end
	if channel == "INSTANCE_CHAT" then return (NS:InInstance() and IsInGroup(LE_PARTY_CATEGORY_INSTANCE or 2)) and true or false end
	return false
end

-- Senza un'azione del giocatore il client permette solo le emote e, nelle istanze, /say e /yell.
-- Tutto il resto (canali di gruppo, di gilda, /say nel mondo aperto) è considerato protetto.
---Senza un'azione del giocatore il client permette solo le emote e, nelle istanze, /say e /yell.
---@param channel string
---@return boolean
function Gateway:CanSendWithoutAction(channel)
	if channel == "EMOTE" then return true end
	if channel == "SAY" or channel == "YELL" then return NS:InInstance() and true or false end
	return false
end

-- Il testo che parte davvero nel canale. Il gioco antepone il nome del personaggio solo alle emote (/e):
--  * un'emote in un altro canale (/s, /p...) porta il nome davanti, altrimenti resterebbe senza soggetto;
--  * una frase parlata in /e diventa "dice: «...»" (verbo localizzato), altrimenti sarebbe "Nome Frase".
---@param form string say | emote
---@param text string testo della frase, senza nome né virgolette
---@param channel string
---@param player? string nome del personaggio (anche da Total RP 3)
---@return string
function Gateway:TextFor(form, text, channel, player)
	text = Trim(text or "")
	if text == "" then return "" end
	if form == "emote" then
		if channel == "EMOTE" then return text end
		local name = player
		if name == nil or name == "" then name = Compat.SafeCall(UnitName, "player") end
		return Trim((name or "") .. " " .. text)
	end
	if channel == "EMOTE" then return NS:L("emote_says", text) end
	return text
end

-- Come la proposta compare nel narratore, secondo il canale: ciò che gli altri vedranno in chat.
---@param p { form: string, speaker: string, text: string, edited?: string, channel: string, player?: string }
---@return string
function Gateway:DisplayFor(p)
	local sent = self:TextFor(p.form, p.edited or p.text, p.channel, p.player)
	if p.channel == "EMOTE" then return Trim((p.player or "") .. " " .. sent) end
	if p.form == "say" and p.speaker == "character" then return "«" .. sent .. "»" end
	return sent
end

-- passa al canale successivo tra quelli disponibili (per le proposte in attesa)
---Cambia il canale della proposta in attesa.
---@return boolean ok
---@return string? channel
function Gateway:CycleChannel()
	local p = self:GetPending()
	if not p then return false end
	local list = { "SAY", "EMOTE", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }
	local start = 1
	for i, c in ipairs(list) do if c == p.channel then start = i end end
	for step = 1, #list do
		local c = list[((start - 1 + step) % #list) + 1]
		if self:ChannelAvailable(c) then
			p.channel = c
			p.display = self:DisplayFor(p)
			self:Changed()
			return true, c
		end
	end
	return false
end

---------------------------------------------------------------------------
-- Azione del giocatore
---------------------------------------------------------------------------
Gateway.inPlayerAction = false

-- Esegue fn in modo sincrono come azione del giocatore. Da usare solo nei gestori di un clic,
-- di un tasto assegnato, di un comando scritto o dell'Invio nell'editor: sono i soli momenti
-- in cui il client concede /say fuori dalle istanze. Non va mai chiamata da timer o da eventi.
---@generic T
---@param fn fun(...): T
---@return T
function Gateway:PlayerAction(fn, ...)
	local before = self.inPlayerAction
	self.inPlayerAction = true
	local ok, a, b, c = pcall(fn, ...)
	self.inPlayerAction = before
	if not ok then error(a, 0) end
	return a, b, c
end

---------------------------------------------------------------------------
-- Protezione dal flood
---------------------------------------------------------------------------
Gateway.sendLog = {}   -- { time, auto }

local function Recent(log, window, now)
	local n, nAuto, last = 0, 0, nil
	for i = #log, 1, -1 do
		local e = log[i]
		if now - e.time > window then break end
		n = n + 1
		if e.auto then nAuto = nAuto + 1 end
		last = last or e.time
	end
	return n, nAuto, last
end

---@param auto? boolean invio automatico
---@return boolean ok
---@return string? reason "flood"
function Gateway:FloodCheck(auto)
	local cfg, now = NS.db.chat, GetTime()
	local n, nAuto, last = Recent(self.sendLog, 60, now)
	if last and now - last < cfg.floodSeconds then return false, "flood" end
	if n >= cfg.maxPerMinute then return false, "flood" end
	if auto and nAuto >= cfg.autoMaxPerMinute then return false, "flood" end
	return true
end

function Gateway:LogSend(auto)
	local now = GetTime()
	table.insert(self.sendLog, { time = now, auto = auto and true or false })
	while #self.sendLog > 0 and now - self.sendLog[1].time > 60 do table.remove(self.sendLog, 1) end
	self.sentTotal = (self.sentTotal or 0) + 1
end

---------------------------------------------------------------------------
-- Invio
---------------------------------------------------------------------------
-- Invia un testo. Restituisce true oppure false e il motivo:
-- empty, needs_action, channel_unavailable, flood, no_sender, lockdown, error.
---Invia un testo in chat.
---@param text string
---@param channel string SAY | EMOTE | YELL | PARTY | RAID | GUILD | INSTANCE_CHAT
---@param opts? { auto: boolean }
---@return boolean ok
---@return string? reason empty | needs_action | channel_unavailable | flood | no_sender | lockdown | error
---@return any? err
function Gateway:Send(text, channel, opts)
	opts = opts or {}
	text = Trim(text or "")
	if text == "" then return false, "empty" end
	local fromPlayer = self.inPlayerAction
	if not fromPlayer and not self:CanSendWithoutAction(channel) then return false, "needs_action" end
	if not self:ChannelAvailable(channel) then return false, "channel_unavailable" end
	local ok, why = self:FloodCheck(opts.auto)
	if not ok then return false, why end
	local send = Compat:GetChatSender()
	if not send then return false, "no_sender" end
	if Compat:InChatLockdown() then return false, "lockdown" end
	local good, err = pcall(send, Clip(text, NS.Config.CHAT_LIMITS[channel]), channel)
	if not good then
		NS.Diagnostics:Error("chat", tostring(err))
		return false, "error", err
	end
	self:LogSend(opts.auto)
	return true
end

---@param why string
---@param extra? string
function Gateway:Report(why, extra)
	self.lastRefusal = why
	NS:Print(NS:L("gw_" .. tostring(why), tostring(extra or "")))
end

---------------------------------------------------------------------------
-- Proposta in attesa
---------------------------------------------------------------------------
Gateway.pending = nil
Gateway.editing = false   -- il giocatore sta modificando la proposta: non scade e non viene sostituita

function Gateway:Changed()
	if NS.UpdateButton then NS.UpdateButton() end
	if NS.Narrator then NS.Narrator:Refresh() end
end

-- Con l'editor aperto la proposta non scade; alla chiusura l'attesa riparte da zero, così il testo
-- scritto a mano non si perde mentre il giocatore pensa.
---@param on boolean
function Gateway:SetEditing(on)
	on = on and self.pending ~= nil
	if on == self.editing then return end
	self.editing = on
	if not on and self.pending then self.pending.time = GetTime() end
end

---@return AUProposal?
function Gateway:GetPending()
	local p = self.pending
	if not p then return nil end
	if not self.editing and GetTime() - p.time > NS.db.chat.pendingSeconds then
		self:Discard()
		return nil
	end
	return p
end

function Gateway:Discard()
	self.editing = false
	if not self.pending then return end
	self.pending = nil
	self:Changed()
end

-- testo modificato dal giocatore
---@param text string
---@return boolean ok
function Gateway:SetPendingText(text)
	local p = self:GetPending()
	text = Trim(text or "")
	if not p or text == "" then return false end
	p.edited = text
	p.display = self:DisplayFor(p)
	self:Changed()
	return true
end

-- Invia la proposta in attesa. Ammesso solo come azione del giocatore.
-- La proposta resta in attesa se l'invio non riesce.
---Invia la proposta in attesa. Da chiamare solo dentro PlayerAction.
---@param text? string testo da usare al posto di quello proposto
---@return boolean ok
---@return string? reason
function Gateway:SendPending(text)
	local p = self:GetPending()
	if not p then return false, "empty" end
	local ok, why, err = self:Send(self:TextFor(p.form, text or p.edited or p.text, p.channel, p.player), p.channel)
	if not ok then
		self:Report(why, err)
		return false, why
	end
	local channel = p.channel
	self:Discard()
	if NS.Narrator then NS.Narrator:NoteSent(channel) end
	return true
end

---------------------------------------------------------------------------
-- Dal narratore alla chat
---------------------------------------------------------------------------
-- testo mostrato nel narratore: l'emote porta il nome del personaggio, il parlato le virgolette
---@param rec { text: string, form: string, speaker: string }
---@param ctx? { player?: string }
---@return string
function Gateway:Display(rec, ctx)
	if rec.form == "emote" then
		local name = ctx and ctx.player or ""
		return Trim(name .. " " .. rec.text)
	elseif rec.speaker == "character" then
		return "«" .. rec.text .. "»"
	end
	return rec.text
end

-- Sceglie una frase per l'evento: prima la forma tirata a sorte, poi l'altra.
---@param event string
---@param ctx table
---@param form? "say"|"emote" se assente, una delle due a sorte
---@return AUPhraseRecord?
function Gateway:PickRecord(event, ctx, form)
	local forms = { form }
	if not form then
		forms = (math.random(2) == 1) and { "say", "emote" } or { "emote", "say" }
	end
	for _, f in ipairs(forms) do
		local rec = NS.Engine:PickEntry(event, ctx, f)
		if rec then return rec end
	end
	return nil
end

-- Porta una frase scelta al narratore e, se la modalità lo prevede, alla chat.
-- opts.auto: nasce da un evento spontaneo; opts.privateOnly: mai in chat (es. il test del wizard).
---Porta una frase al narratore e, se la modalità lo prevede, alla chat.
---@param rec AUPhraseRecord
---@param ctx? table
---@param opts? { auto: boolean, privateOnly: boolean }
---@return boolean
function Gateway:Propose(rec, ctx, opts)
	opts = opts or {}
	-- il giocatore sta scrivendo: una frase spontanea non gli cambia la proposta sotto le dita
	if self.editing and opts.auto then return false end
	local mode = self:EffectiveMode()
	rec.display = self:Display(rec, ctx)
	local channel = self:ResolveChannel(rec)
	rec.channel = channel

	local publicCapable = PUBLIC_VOICE[rec.speaker] and not opts.privateOnly and mode ~= "PRIVATE"
	if not publicCapable then
		if NS.Narrator then NS.Narrator:Present(rec) else NS:Print(rec.display) end
		return true
	end

	if mode == "AUTO_ONLY_IF_ALLOWED" and opts.auto and NS.db.output.autoPublicSay
		and self:CanSendWithoutAction(channel) then
		local ok = self:Send(self:TextFor(rec.form, rec.text, channel, ctx and ctx.player), channel, { auto = true })
		if ok then
			rec.sentTo = channel
			if NS.Narrator then NS.Narrator:Present(rec) end
			return true
		end
	end

	-- il resto è una proposta: serve un'azione del giocatore (tasto, pulsante, comando)
	self.pending = {
		text = rec.text, display = rec.display, speaker = rec.speaker, event = rec.event,
		form = rec.form, channel = channel, time = GetTime(), player = ctx and ctx.player,
	}
	self.pending.display = self:DisplayFor(self.pending)
	rec.display = self.pending.display
	rec.proposal = self.pending
	self:Changed()
	if NS.Narrator then NS.Narrator:Present(rec) else NS:Print(rec.display) end
	return true
end

-- Frase per un evento. Restituisce true se è stata mostrata o proposta.
---@param event string
---@param ctx table
---@param opts? { auto: boolean, form: string, privateOnly: boolean }
---@return boolean shown
function Gateway:Narrate(event, ctx, opts)
	local rec = self:PickRecord(event, ctx, opts and opts.form)
	if not rec then return false end
	return self:Propose(rec, ctx, opts)
end

-- Evento lanciato da macro, comando o altro addon: /au evento <nome>.
-- Mai invio diretto: con il giocatore che ha premuto un tasto compare comunque una proposta.
---@param event string
---@param extra? table valori in più per il contesto (target, spell...)
---@return boolean shown
function NS:Trigger(event, extra)
	return self.Gateway:Narrate(event, self:BuildContext(extra), {})
end

---------------------------------------------------------------------------
-- Tasto, pulsante e /au dire: la conferma
---------------------------------------------------------------------------
function Gateway:Improvise()
	local ctx = NS:BuildContext()
	local event = ctx.combat and "battle" or "muse"
	if not self:Narrate(event, ctx, {}) then NS:Print(NS:L("no_phrase", event)) end
end

-- Con una proposta in attesa: PREVIEW apre l'editor (si invia da lì), CONFIRM_TO_SEND e
-- AUTO_ONLY_IF_ALLOWED la inviano. Senza proposte: una frase nuova per il momento, solo proposta.
---Il gesto "pronuncia": conferma la proposta (o apre l'editor in PREVIEW), oppure improvvisa.
---@return boolean sent
function Gateway:Confirm()
	return self:PlayerAction(function()
		local p = self:GetPending()
		if not p then
			self:Improvise()
			return false
		end
		if self:EffectiveMode() == "PREVIEW" and not p.reviewed then
			p.reviewed = true
			if NS.Narrator and NS.Narrator:OpenEditor() then return false end
			NS:Print(NS:L("gw_review", p.edited or p.text))
			return false
		end
		return self:SendPending()
	end)
end

function AzerothUnspoken_Speak()
	if NS.db then NS.Gateway:Confirm() end
end

---------------------------------------------------------------------------
-- Stato per /au debug
---------------------------------------------------------------------------
---@return { mode: string, effective: string, autoPublicSay: boolean, channel: string, pending?: string, lastMinute: integer, lastMinuteAuto: integer, total: integer, lastRefusal?: string }
function Gateway:Status()
	local now = GetTime()
	local n, nAuto = Recent(self.sendLog, 60, now)
	local p = self:GetPending()
	return {
		mode = self:GetMode(), effective = self:EffectiveMode(), autoPublicSay = NS.db.output.autoPublicSay,
		channel = NS.db.chat.channel, pending = p and p.channel or nil,
		lastMinute = n, lastMinuteAuto = nAuto, total = self.sentTotal or 0, lastRefusal = self.lastRefusal,
	}
end
