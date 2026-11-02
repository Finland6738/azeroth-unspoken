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
--  * una frase si può modificare e si può scegliere il canale prima dell'invio;
--  * #185: in combat a proposal waits for the end of the fight, and the other spontaneous lines follow the "In combat"
--    setting (pacing.inCombat); after the client blocks an automatic send, the session falls back to "confirm to send".
local ADDON, NS = ...
local Compat = NS.Compat
---@class AUChatGateway
---@field MODES string[]
---@field CHANNELS string[]
---@field pending? AUProposal proposta in attesa
---@field inPlayerAction boolean vero solo dentro PlayerAction
---@field lastRefusal? string motivo dell'ultimo invio rifiutato
---@field editing boolean il giocatore sta modificando la proposta
---@field sendLog { time: number, auto: boolean }[]
---@field autoFallback? boolean #185: the client blocked an automatic send; until /reload the mode works as CONFIRM_TO_SEND
---@field combatHeld { public?: table, lines: table[] } #185: what waits for the end of the fight
local Gateway = NS:RegisterModule("gateway")
NS.Gateway = Gateway

---@class AUProposal
---@field text string testo proposto
---@field edited? string testo modificato dal giocatore
---@field display string testo come compare nel narratore
---@field id? string id della frase proposta
---@field speaker string
---@field event string
---@field form string say | emote
---@field channel string canale scelto
---@field time number GetTime() alla creazione (spostato in avanti dalle pause sotto il mouse)
---@field pausedAt? number GetTime() da cui l'attesa è ferma perché il mouse è sul narratore (#177)
---@field player? string nome per le emote
---@field reviewed? boolean in PREVIEW: il giocatore ha già aperto l'editor
---@field ctx? table contesto con cui è nata (serve a "Un'altra": stesso evento, stesso contesto)

Gateway.MODES = NS.Config.CHAT_MODES
Gateway.CHANNELS = NS.Config.CHAT_CHANNELS

-- voci che possono diventare testo in chat; "inner" e "npc" restano private
local PUBLIC_VOICE = { narrator = true, character = true }

---The central guard of the gateway (#152, #163, ADR 0003, ADR 0032): why a line can never become public text, or nil
---when it may. It reads the record, then the rule it came from, so it holds even when the data is wrong: a monologue
---(any voice: it speaks as the narrator or the inner voice and is never sent to chat), a literary line (tags `lore`,
---`genre_*`, or the literary category `lore`, #118) and a private voice (inner, npc). Every path to chat asks it:
---Propose, Reroll, SendPending, CopyToChat.
---@param rec table a phrase record or a proposal (kind, speaker, id, tags)
---@return string? why "monologue" | "literary" | "voice"
function Gateway:PrivateReason(rec)
	if type(rec) ~= "table" then return "voice" end
	local rule = rec.id and NS.Engine.byId[rec.id] or nil
	if rec.kind == "monologue" or (rule and rule.kind == "monologue") then return "monologue" end
	if type(rec.parts) == "table" and #rec.parts > 0 then return "monologue" end
	-- D16 (#130, #163): `lore` and `genre_*` mark a literary form, which stays private whatever its voice; so does the
	-- literary category (#118), whatever the tags say, and a rule with a genre (#119) or stanzas (#127)
	local literary = NS.Engine.LITERARY_CATEGORY
	if NS.Engine.HasLiteraryTag(rec.tags) or rec.category == literary or rec.kind == "stanzas"
		or NS.Engine.IsLiteraryRule(rule) then
		return "literary"
	end
	if not PUBLIC_VOICE[rec.speaker] then return "voice" end
	return nil
end

-- parole del comando /au mode: sempre in inglese (i nomi interni in maiuscolo si accettano anch'essi)
local MODE_ALIAS = NS.Keywords.Register("mode", {
	private = "PRIVATE", preview = "PREVIEW", confirm = "CONFIRM_TO_SEND", auto = "AUTO_ONLY_IF_ALLOWED",
})

function NS:InInstance()
	local inInstance, kind = NS.Compat.SafeCall("IsInInstance")
	return (inInstance and kind ~= "none") and true or false
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

---One line for chat (#117): a line break, with the spaces around it, becomes " / ". SendChatMessage takes one line;
---the private narrator and the history keep the breaks. Every text bound for chat passes here (TextFor, Send, the
---editor).
---@param text string
---@return string
local function OneLine(text)
	return (text:gsub("[ \t]*[\r\n][ \t\r\n]*", " / "))
end
Gateway.OneLine = OneLine

---------------------------------------------------------------------------
-- Modalità
---------------------------------------------------------------------------
---@return string mode la modalità scelta
function Gateway:GetMode()
	return NS.db.chat.mode
end

-- Il modulo "publicChat" spento equivale a PRIVATE.
---Il modulo publicChat spento equivale a PRIVATE. So does a hold by Total RP 3 (#191, HeldOOC).
---@return string mode
---#185: after a blocked automatic send the session works as "confirm to send" (autoFallback); the saved mode is kept.
function Gateway:EffectiveMode()
	if not NS.db.modules.publicChat then return "PRIVATE" end
	if NS.db.chat.mode ~= "PRIVATE" and self:HeldOOC() then return "PRIVATE" end
	if NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED" and self.autoFallback then return "CONFIRM_TO_SEND" end
	return NS.db.chat.mode
end

---#191: the player's own Total RP 3 status is "out of character" and `chat.respectOOC` is on (the default). Then the
---narrator stays private: nothing is proposed for chat, nothing is sent automatically, and a proposal already waiting
---is dropped instead of sent. Without Total RP 3, or when it does not say OOC plainly, nothing is held.
---@return boolean
function Gateway:HeldOOC()
	local trp3 = NS.TotalRP3
	return trp3 ~= nil and trp3:HoldsChat() == true
end

-- #191: a proposal is never sent or copied while the player is out of character; it is dropped and the reason said
function Gateway:RefuseOOC()
	self:Discard()
	self:Report("ooc")
	return false, "ooc"
end

-- Accetta nomi in più lingue ("conferma", "confirm", "CONFIRM_TO_SEND"...). nil se sconosciuto.
---Accetta nomi in più lingue ("conferma", "confirm", "CONFIRM_TO_SEND").
---@param value string
---@return string? mode nil se sconosciuto
function Gateway:ParseMode(value)
	if type(value) ~= "string" then return nil end
	local up = NS.Upper(value)
	for _, m in ipairs(self.MODES) do
		if m == up then return m end
	end
	return MODE_ALIAS[NS.Lower(value)]
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
	-- #185: choosing a mode again (automatic sending included, with its confirmation) ends the fallback of a block
	self.autoFallback = nil
	NS.Consent:Cancel("auto")
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

-- L'invio automatico (emote sempre, /say nelle istanze, a nome del personaggio, visto da chi è vicino) si sceglie con due
-- passi (#178, Core/Consent.lua): il primo mostra l'avviso intero in una finestra di conferma e non cambia nulla; il
-- secondo conta solo dopo Consent.MIN_DELAY secondi (un doppio clic non lo supera) ed entro Consent.WINDOW. Vale per il
-- comando (/au mode auto, ripetuto), il pannello e la procedura guidata.
NS.Consent:Register("auto", { text = "consent_auto_text", accept = function()
	Gateway:SetMode("AUTO_ONLY_IF_ALLOWED", { confirmAuto = true })
end })

---@return "warned"|"wait"|"enabled" state warned: the warning is up; wait: the second step came too early
function Gateway:SelectAuto()
	if NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED" and NS.db.output.autoPublicSay then return "enabled" end
	local r = NS.Consent:Step("auto")
	if r == "confirmed" then return "enabled" end
	if r == "wait" then return "wait" end
	return "warned"
end

-- la domanda è aperta (avviso mostrato da poco): un secondo gesto, dopo qualche istante, conferma
---@return boolean
function Gateway:IsAutoArmed()
	return NS.Consent:IsOpen("auto")
end

-- l'invio automatico è davvero acceso (modalità e consenso)
---@return boolean
function Gateway:IsAutoActive()
	return NS.db.chat.mode == "AUTO_ONLY_IF_ALLOWED" and NS.db.output.autoPublicSay == true
end

---#185: the client blocked an automatic send. For the rest of the session nothing is sent automatically: every line
---becomes a proposal to confirm, so the client's "blocked" dialog cannot come back, and the player is told once. The
---saved choice stays: /reload, or choosing automatic sending again, turns it back on.
function Gateway:FallBackFromAuto()
	if self.autoFallback or not self:IsAutoActive() then return end
	self.autoFallback = true
	NS:Print(NS:L("gw_auto_fallback"))
	if NS.Config and NS.Config.Changed then NS.Config:Changed("chat.mode") end
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
	local SafeCall = NS.Compat.SafeCall
	if channel == "PARTY" then return SafeCall("IsInGroup") == true end
	if channel == "RAID" then return SafeCall("IsInRaid") == true end
	if channel == "GUILD" then return SafeCall("IsInGuild") == true end
	if channel == "INSTANCE_CHAT" then return NS:InInstance() and SafeCall("IsInGroup", LE_PARTY_CATEGORY_INSTANCE or 2) == true end
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
--  * with `chat.emoteMarkup` (#191, off by default) it is wrapped in asterisks instead, "*text*": the RP convention
--    for an action written in /say or group chat, which Total RP 3 colours as an emote ("emote detection", on by
--    default in Total RP 3). The game already shows who is speaking, so the name is not repeated;
--  * una frase parlata in /e diventa "dice: «...»" (verbo localizzato), altrimenti sarebbe "Nome Frase".
---@param form string say | emote
---@param text string testo della frase, senza nome né virgolette
---@param channel string
---@param player? string nome del personaggio (anche da Total RP 3)
---@return string
function Gateway:TextFor(form, text, channel, player)
	text = OneLine(Trim(text or ""))
	if text == "" then return "" end
	if form == "emote" then
		if channel == "EMOTE" then return text end
		if NS.db and NS.db.chat.emoteMarkup then
			if text:sub(1, 1) == "*" and text:sub(-1) == "*" and #text > 1 then return text end
			-- the closing asterisk must survive the cut that Send makes to the channel's limit
			local limit = (NS.Config.CHAT_LIMITS[channel] or 255) - 2
			return "*" .. Clip(text, limit) .. "*"
		end
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
-- empty, needs_action, channel_unavailable, flood, no_sender, lockdown,, error.
---Invia un testo in chat.
---@param text string
---@param channel string SAY | EMOTE | YELL | PARTY | RAID | GUILD | INSTANCE_CHAT
---@param opts? { auto: boolean, proposal: AUProposal }
---@return boolean ok
---@return string? reason empty | private_only | needs_action | channel_unavailable | flood | no_sender | lockdown | blocked | error
---@return any? err
function Gateway:Send(text, channel, opts)
	opts = opts or {}
	-- #117: never a line break in a chat message, whoever calls Send
	text = OneLine(Trim(text or ""))
	if text == "" then return false, "empty" end
	-- #152, #163: a proposal that carries a private line is refused here too, whoever calls Send
	if opts.proposal and self:PrivateReason(opts.proposal) then return false, "private_only" end
	-- #191: an in-character line never leaves while Total RP 3 says the player is out of character
	if opts.proposal and self:HeldOOC() then return false, "ooc" end
	local fromPlayer = self.inPlayerAction
	if not fromPlayer and not self:CanSendWithoutAction(channel) then return false, "needs_action" end
	if not self:ChannelAvailable(channel) then return false, "channel_unavailable" end
	local ok, why = self:FloodCheck(opts.auto)
	if not ok then return false, why end
	local send = Compat:GetChatSender()
	if not send then return false, "no_sender" end
	if Compat:InChatLockdown() then return false, "lockdown" end
	-- Il client non solleva un errore Lua per un'azione protetta senza gesto: la chiamata non ha effetto e arriva
	-- ADDON_ACTION_FORBIDDEN (#55). L'evento può essere consegnato dentro la chiamata (attempt.blocked) o dopo
	-- (OnBlocked annulla l'invio già contato): in entrambi i casi la proposta resta in attesa.
	local attempt = { time = GetTime(), channel = channel, auto = opts.auto and true or false, proposal = opts.proposal }
	self.attempt = attempt
	local good, err = pcall(send, Clip(text, NS.Config.CHAT_LIMITS[channel]), channel)
	if not good then
		self.attempt = nil
		NS.Diagnostics:Error("chat", tostring(err))
		return false, "error", err
	end
	if attempt.blocked then return false, "blocked" end
	self:LogSend(opts.auto)
	attempt.logged = true
	return true
end

-- secondi entro cui un evento di azione bloccata si attribuisce all'ultimo invio
Gateway.BLOCK_WINDOW = 2
Gateway.blockedTotal = 0

---Il client ha bloccato una funzione protetta (ADDON_ACTION_FORBIDDEN / BLOCKED, normalizzati dal bus). Se è il nostro
---invio in chat: non è partito nulla, quindi si annulla il conteggio, la proposta torna in attesa e si segnala
---(`last refusal = blocked` in /au debug), così l'ipotesi SP-05 si può smentire dalla diagnostica.
---@param env table envelope ACTION_BLOCKED: context.func, context.ours
function Gateway:OnBlocked(env)
	local ctx = env.context or {}
	if type(ctx.func) ~= "string" or not ctx.func:find("SendChatMessage", 1, true) then return end
	local now = GetTime()
	local a = self.attempt
	-- il client può mandare sia FORBIDDEN sia BLOCKED per la stessa chiamata: un blocco solo
	if a and a.blocked and now - a.time <= self.BLOCK_WINDOW then return end
	-- durante la chiamata l'evento è sicuramente nostro; dopo, serve che nomini il nostro addon (altrimenti potrebbe
	-- essere di un altro addon, appena dopo un nostro invio riuscito)
	local recent = a and now - a.time <= self.BLOCK_WINDOW and (not a.logged or ctx.ours)
	if not recent then
		if not ctx.ours then return end   -- l'invio di un altro addon: non ci riguarda
		if self.lastIsolatedAt and now - self.lastIsolatedAt < 0.2 then return end
		self.lastIsolatedAt = now
	end
	self.blockedTotal = (self.blockedTotal or 0) + 1
	self.lastRefusal = "blocked"
	if not recent then
		self:Report("blocked", "?")
		return
	end
	a.blocked = true
	-- #185: an automatic send was blocked: no more automatic sends this session
	if a.auto then self:FallBackFromAuto() end
	if a.logged then
		-- l'evento è arrivato dopo il ritorno della chiamata: l'invio era già stato contato e la proposta scartata
		local log = self.sendLog
		if #log > 0 then table.remove(log) end
		self.sentTotal = math.max(0, (self.sentTotal or 1) - 1)
		if a.proposal and not self.pending then
			a.proposal.time, a.proposal.pausedAt = GetTime(), nil
			self.pending = a.proposal
			if NS.Narrator and NS.Narrator.NoteBlocked then NS.Narrator:NoteBlocked(a.channel, a.proposal) end
			self:Changed()
		end
		self:Report("blocked", a.channel)
	end
end
NS.EventBus:Subscribe("ACTION_BLOCKED", "gateway", function(env) Gateway:OnBlocked(env) end)

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
	if not on and self.pending then
		self.pending.time = GetTime()
		if self.pending.pausedAt then self.pending.pausedAt = GetTime() end
	end
end

---#177: while the mouse is over the narrator the waiting time stops, and it resumes where it was. The narrator calls
---this every frame, so a proposal that arrives under the mouse is paused too.
---@param on boolean
function Gateway:SetHovered(on)
	local p = self.pending
	if not p then return end
	if on and not p.pausedAt then
		p.pausedAt = GetTime()
	elseif not on and p.pausedAt then
		p.time = p.time + (GetTime() - p.pausedAt)
		p.pausedAt = nil
	end
end

---Seconds the proposal still waits: nil when it waits until the player closes it (chat.pendingSeconds = 0). It can go
---below zero: GetPending then drops the proposal.
---@param p AUProposal
---@return number? left
function Gateway:PendingLeft(p)
	local wait = NS.db.chat.pendingSeconds
	if wait <= 0 or self.editing then return nil end
	return wait - ((p.pausedAt or GetTime()) - p.time)
end

---@return AUProposal?
function Gateway:GetPending()
	local p = self.pending
	if not p then return nil end
	local left = self:PendingLeft(p)
	if left and left < 0 then
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
	-- #117: the editor is one line, like the message it sends
	text = OneLine(Trim(text or ""))
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
---@return string? reason empty | private_only | the reasons of Send
function Gateway:SendPending(text)
	local p = self:GetPending()
	if not p then return false, "empty" end
	-- defence in depth (#152, #163): a private line in the pending slot is dropped, never sent
	if self:PrivateReason(p) then
		self:Discard()
		self:Report("private_only")
		return false, "private_only"
	end
	if self:HeldOOC() then return self:RefuseOOC() end
	local ok, why, err = self:Send(self:TextFor(p.form, text or p.edited or p.text, p.channel, p.player), p.channel,
		{ proposal = p })
	if not ok then
		self:Report(why, err)
		return false, why
	end
	local channel = p.channel
	self:Discard()
	if NS.Narrator then NS.Narrator:NoteSent(channel) end
	return true
end

-- Alternativa all'invio dall'addon: la proposta va nella casella della chat standard, già sul canale giusto
-- ("/s testo"), e il giocatore la invia con il suo Invio. Il testo passa dalla stessa trasformazione per canale
-- e dallo stesso taglio dell'invio diretto. Non è un invio dell'addon: niente controllo del flood e nessun
-- bisogno di un'azione; la proposta si scarta dopo la copia.
---@return boolean ok
---@return string? reason empty | private_only | channel_unavailable | no_chat_box | copy_failed
function Gateway:CopyToChat()
	local p = self:GetPending()
	if not p then return false, "empty" end
	if self:PrivateReason(p) then
		self:Discard()
		self:Report("private_only")
		return false, "private_only"
	end
	if self:HeldOOC() then return self:RefuseOOC() end
	local text = Trim(self:TextFor(p.form, p.edited or p.text, p.channel, p.player))
	if text == "" then
		self:Report("empty")
		return false, "empty"
	end
	if not self:ChannelAvailable(p.channel) then
		self:Report("channel_unavailable")
		return false, "channel_unavailable"
	end
	if not Compat:CanOpenChat() then
		self:Report("no_chat_box")
		return false, "no_chat_box"
	end
	local ok, why = Compat:OpenChatWith(Clip(text, NS.Config.CHAT_LIMITS[p.channel]), p.channel)
	if not ok then
		why = why or "copy_failed"
		self:Report(why)
		return false, why
	end
	self:Discard()
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
	-- #100: with a composite situation, the lines written for it first, in either form; then the ordinary pick
	if ctx and ctx.situation then
		for _, f in ipairs(forms) do
			local rec = NS.Engine:PickEntry(event, ctx, f, true)
			if rec then return rec end
		end
	end
	for _, f in ipairs(forms) do
		local rec = NS.Engine:PickEntry(event, ctx, f)
		if rec then return rec end
	end
	return nil
end

---------------------------------------------------------------------------
-- Combattimento (#185)
---------------------------------------------------------------------------
Gateway.COMBAT_SETTINGS = NS.Config.COMBAT_SETTINGS
Gateway.HOLD_MAX = 3          -- private lines held during a fight: the most recent ones (all are in the history after)
Gateway.HOLD_MAX_AGE = 300    -- a line held longer than this (a very long fight) is not shown any more
Gateway.combatHeld = { lines = {} }

---@return boolean
function Gateway:InCombat()
	return Compat.SafeCall("InCombatLockdown") == true or Compat.SafeCall("UnitAffectingCombat", "player") == true
end

---The "In combat" setting (pacing.inCombat): show | chatframe | hold | silent; "hold" when the value is not known.
---@return string
function Gateway:CombatSetting()
	local v = NS.db.pacing.inCombat
	for _, c in ipairs(self.COMBAT_SETTINGS) do
		if c == v then return v end
	end
	return "hold"
end

---@return integer held lines that wait for the end of the fight
function Gateway:HeldForCombat()
	return #self.combatHeld.lines + (self.combatHeld.public and 1 or 0)
end

---A spontaneous line in combat (#185). A line that could reach chat waits for the end of the fight in every setting
---(the proposal bar and its keys never come up in a fight), except, with "show", one the client sends by itself
---(automatic mode). A private line is shown ("show"), written in the chat frame ("chatframe"), held ("hold") or
---dropped ("silent": the Narrative Director already stays silent, this is the safety net).
---@param rec AUPhraseRecord
---@param ctx? table
---@param opts table
---@return "held"|"printed"|"dropped"|nil route what happened; nil: the line goes on as usual
function Gateway:CombatRoute(rec, ctx, opts)
	local setting = self:CombatSetting()
	if setting == "silent" then return "dropped" end
	local mode = self:EffectiveMode()
	local public = not opts.privateOnly and mode ~= "PRIVATE" and not self:PrivateReason(rec)
	local held = self.combatHeld
	if public then
		local channel = opts.channel and self:ChannelAvailable(opts.channel) and opts.channel or self:ResolveChannel(rec)
		if setting == "show" and mode == "AUTO_ONLY_IF_ALLOWED" and NS.db.output.autoPublicSay
			and self:CanSendWithoutAction(channel) then
			return nil
		end
		-- one proposal at a time, as outside a fight: the newer one takes the place of the older
		held.public = { rec = rec, ctx = ctx, opts = opts, at = GetTime() }
		return "held"
	end
	if setting == "show" then return nil end
	rec.display = self:Display(rec, ctx)
	if setting == "chatframe" then
		if NS.Narrator then NS.Narrator:Present(rec, { chatFrame = true }) else NS:Print(rec.display) end
		return "printed"
	end
	table.insert(held.lines, { rec = rec, ctx = ctx, opts = opts, at = GetTime() })
	while #held.lines > self.HOLD_MAX do table.remove(held.lines, 1) end
	return "held"
end

---The fight begins (#185): the editor closes (the keyboard is the player's again; the typed text is kept) and a waiting
---proposal joins the hold, off the screen, until the fight ends.
function Gateway:OnCombatStart()
	if NS.Narrator then NS.Narrator:KeepTyped() end
	local p = self.pending
	if not p then return end
	self.combatHeld.public = { proposal = p, at = GetTime() }
	self.pending, self.editing = nil, false
	if NS.Narrator then NS.Narrator:HideProposal(p) end
	self:Changed()
end

---The fight is over (PLAYER_REGEN_ENABLED): the held proposal waits again, its time from now, and the held lines follow
---it in the box, oldest first. Nothing comes back while paused or with the addon off. The released lines open a
---pacing moment, so no spontaneous line pushes them off the box at once.
---@return integer released
function Gateway:ReleaseCombat()
	local held = self.combatHeld
	self.combatHeld = { lines = {} }
	if not NS.db or not NS.db.enabled or NS.paused then return 0 end
	local now, n = GetTime(), 0
	local pub = held.public
	if pub and now - pub.at <= self.HOLD_MAX_AGE then
		if pub.proposal then
			local p = pub.proposal
			if not self.pending and self:EffectiveMode() ~= "PRIVATE" and not self:PrivateReason(p) and not self:HeldOOC() then
				p.time, p.pausedAt = now, nil
				self.pending = p
				self:Changed()
				if NS.Narrator then NS.Narrator:ShowProposal(p) end
				n = n + 1
			end
		elseif self:Deliver(pub.rec, pub.ctx, pub.opts) then
			n = n + 1
		end
	end
	for _, h in ipairs(held.lines) do
		if now - h.at <= self.HOLD_MAX_AGE then
			h.opts.queue = true
			if self:Deliver(h.rec, h.ctx, h.opts) then n = n + 1 end
		end
	end
	if n > 0 and NS.Pacing then NS.Pacing:Note(now) end
	return n
end

-- the release waits a moment, so the line of the victory (Systems/Triggers.lua, through the Director) comes first and
-- the held lines queue behind it; a new fight in the meantime keeps them held
Gateway.RELEASE_DELAY = 0.5
NS.EventBus:Subscribe("COMBAT_START", "gateway", function() Gateway:OnCombatStart() end)
NS.EventBus:Subscribe("COMBAT_END", "gateway", function()
	local function Release()
		if not Gateway:InCombat() then Gateway:ReleaseCombat() end
	end
	if not Compat.After(Gateway.RELEASE_DELAY, Release) then Release() end
end)

-- Porta una frase scelta al narratore e, se la modalità lo prevede, alla chat.
-- opts.auto: nasce da un evento spontaneo; opts.privateOnly: mai in chat (es. il test del wizard).
---Porta una frase al narratore e, se la modalità lo prevede, alla chat. #185: a spontaneous line in combat goes
---through CombatRoute first.
---@param rec AUPhraseRecord
---@param ctx? table
---@param opts? { auto: boolean, privateOnly: boolean, channel: string, reviewed: boolean }
---@return boolean
function Gateway:Propose(rec, ctx, opts)
	opts = opts or {}
	-- il giocatore sta scrivendo: una frase spontanea non gli cambia la proposta sotto le dita
	if self.editing and opts.auto then return false end
	if opts.auto and self:InCombat() then
		local route = self:CombatRoute(rec, ctx, opts)
		if route == "dropped" then return false end
		if route then return true end
	end
	return self:Deliver(rec, ctx, opts)
end

---The body of Propose, without the combat route: also the release of the lines held in combat.
---@param rec AUPhraseRecord
---@param ctx? table
---@param opts table { auto, privateOnly, channel, reviewed, queue (wait behind the line on screen) }
---@return boolean
function Gateway:Deliver(rec, ctx, opts)
	local mode = self:EffectiveMode()
	-- #191: when a hold by Total RP 3 begins, say it once, so a line that stays private is not a mystery
	local held = mode == "PRIVATE" and NS.db.chat.mode ~= "PRIVATE" and NS.db.modules.publicChat and self:HeldOOC()
	if held and not self.oocNoted then NS:Print(NS:L("gw_ooc_hold")) end
	self.oocNoted = held and true or false
	rec.display = self:Display(rec, ctx)
	-- "Un'altra" (Reroll) conserva il canale scelto dal giocatore, se è ancora disponibile
	local channel = opts.channel and self:ChannelAvailable(opts.channel) and opts.channel or self:ResolveChannel(rec)
	rec.channel = channel

	-- #152, #163: monologues and literary lines are private in every mode, whatever the voice says
	local publicCapable = not self:PrivateReason(rec) and not opts.privateOnly and mode ~= "PRIVATE"
	if not publicCapable then
		if NS.Narrator then NS.Narrator:Present(rec, opts) else NS:Print(rec.display) end
		return true
	end

	if mode == "AUTO_ONLY_IF_ALLOWED" and opts.auto and NS.db.output.autoPublicSay
		and self:CanSendWithoutAction(channel) then
		-- se il client blocca l'invio in silenzio (#55) la frase torna ad essere una proposta (OnBlocked)
		local proposal = {
			text = rec.text, display = rec.display, speaker = rec.speaker, event = rec.event, id = rec.id,
			form = rec.form, channel = channel, time = GetTime(), player = ctx and ctx.player, ctx = ctx,
			reviewed = opts.reviewed,
		}
		proposal.display = self:DisplayFor(proposal)
		local ok, why = self:Send(self:TextFor(rec.form, rec.text, channel, ctx and ctx.player), channel,
			{ auto = true, proposal = proposal })
		if ok then
			rec.sentTo = channel
			if NS.Narrator then NS.Narrator:Present(rec) end
			return true
		end
		if why == "blocked" then self:Report(why, channel) end
	end

	-- il resto è una proposta: serve un'azione del giocatore (tasto, pulsante, comando)
	self.pending = {
		text = rec.text, display = rec.display, speaker = rec.speaker, event = rec.event, id = rec.id,
		form = rec.form, channel = channel, time = GetTime(), player = ctx and ctx.player, ctx = ctx,
		reviewed = opts.reviewed,
	}
	self.pending.display = self:DisplayFor(self.pending)
	rec.display = self.pending.display
	rec.proposal = self.pending
	self:Changed()
	if NS.Narrator then NS.Narrator:Present(rec) else NS:Print(rec.display) end
	return true
end

-- Quante frasi si provano al massimo cercando un'alternativa (diversa da quella proposta, in una voce pubblica)
local REROLL_TRIES = 4

---"Un'altra": sostituisce la proposta in attesa con un'altra frase per lo stesso evento, nello stesso contesto e
---nella stessa forma, senza inviare nulla (non serve PlayerAction). L'anti-ripetizione esclude le frasi già
---mostrate di recente, quindi con poche frasi si esaurisce: la proposta resta com'è e un avviso lo dice.
---Non è un nuovo intervento del Narrative Director: non spende budget né apre un nuovo momento di pacing, perché
---sostituisce quello già contato. Il canale scelto resta; il testo modificato a mano si perde (viene stampato).
---@return boolean ok
---@return string? reason reroll_empty | reroll_editing | no_phrase
function Gateway:Reroll()
	local p = self:GetPending()
	if not p then
		self:Report("reroll_empty")
		return false, "reroll_empty"
	end
	if self.editing then
		self:Report("reroll_editing")
		return false, "reroll_editing"
	end
	local ctx = p.ctx or NS:BuildContext()
	local rec
	for _ = 1, REROLL_TRIES do
		local pick = self:PickRecord(p.event, ctx, p.form)
		if not pick then break end
		-- con una sola frase disponibile il selettore ripropone la stessa: non è un'alternativa
		if not self:PrivateReason(pick) and pick.id ~= p.id then rec = pick; break end
	end
	if not rec then
		NS:Print(NS:L("no_phrase", tostring(p.event)))
		return false, "no_phrase"
	end
	if p.edited then NS:Print(NS:L("gw_reroll_kept", p.edited)) end
	if NS.Narrator then NS.Narrator:ForgetProposal(p) end
	return self:Propose(rec, ctx, { channel = p.channel, reviewed = p.reviewed })
end

function AzerothUnspoken_Reroll()
	if NS.db then NS.Gateway:Reroll() end
end

---Discard, from its key (#183): the waiting proposal goes; without one, a word says there is none.
---@return boolean discarded
function Gateway:DiscardPending()
	if not self:GetPending() then
		NS:Print(NS:L("gw_nothing_pending"))
		return false
	end
	self:Discard()
	return true
end

---The next channel for the waiting proposal, from its key or /au channel next (#183), said in chat.
---@return boolean ok
---@return string? channel
function Gateway:NextChannel()
	if not self:GetPending() then
		NS:Print(NS:L("gw_nothing_pending"))
		return false
	end
	local ok, channel = self:CycleChannel()
	if ok then NS:Print(NS:L("gw_channel_next", NS:L("channel_" .. channel))) end
	return ok, channel
end

function AzerothUnspoken_Discard()
	if NS.db then NS.Gateway:DiscardPending() end
end

function AzerothUnspoken_Channel()
	if NS.db then NS.Gateway:NextChannel() end
end

-- Frase per un evento. Restituisce true se è stata mostrata o proposta.
---@param event string
---@param ctx table
---@param opts? { auto: boolean, form: string, privateOnly: boolean }
---@return boolean shown
---@return AUPhraseRecord? rec the line, when it was shown (the Director reads its situation, #100)
function Gateway:Narrate(event, ctx, opts)
	local rec = self:PickRecord(event, ctx, opts and opts.form)
	if not rec then return false end
	local shown = self:Propose(rec, ctx, opts)
	-- #122: a literary piece shown goes in the songbook (its id and the time, never its text)
	if shown and NS.Songbook then NS.Diagnostics:Guard("songbook", NS.Songbook.NoteShown, NS.Songbook, rec) end
	-- una frase chiesta dal giocatore apre il "momento" del pacing: nessuna frase spontanea subito dopo
	if shown and not (opts and opts.auto) and NS.Pacing then
		NS.Pacing:Note(GetTime(), NS.Engine.EventCategory(event))
		-- #118: a literary piece asked for starts the pause of its category too (never two within minutes)
		NS.Pacing:RecordPhrase(rec.category, GetTime(), false)
	end
	return shown, shown and rec or nil
end

-- Evento lanciato da macro, comando o altro addon: /au event <nome>.
-- Mai invio diretto: con il giocatore che ha premuto un tasto compare comunque una proposta.
---@param event string
---@param extra? table valori in più per il contesto (target, spell...)
---@return boolean shown
function NS:Trigger(event, extra)
	return (self.Gateway:Narrate(event, self:BuildContext(extra), {}))
end

---------------------------------------------------------------------------
-- Tasto, pulsante e /au speak: la conferma
---------------------------------------------------------------------------
---The speak key with nothing waiting: a line for the moment. #185: not in combat, where the key would add a battle line
---the player did not ask for; the lines held for the fight are counted instead. /au battlecry still asks for one.
---@return boolean shown
function Gateway:Improvise()
	if self:InCombat() then
		local held = self:HeldForCombat()
		NS:Print(held > 0 and NS:L("gw_combat_held", held) or NS:L("gw_combat_improvise"))
		return false
	end
	local ctx = NS:BuildContext()
	if not self:Narrate("muse", ctx, {}) then
		NS:Print(NS:L("no_phrase", "muse"))
		return false
	end
	return true
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
		-- #186: a proposal hidden with the narrator's "x" comes back on screen first; it never leaves unseen (#176)
		if NS.Narrator and NS.Narrator:BringBack(p) then return false end
		if self:EffectiveMode() == "PREVIEW" and not p.reviewed then
			p.reviewed = true
			if NS.Narrator and NS.Narrator:OpenEditor() then return false end
			-- #185: never the editor in combat; the line is read here and the next press sends it as it is
			NS:Print(NS:L(self:InCombat() and "gw_combat_editor" or "gw_review", p.edited or p.text))
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
---@return { mode: string, effective: string, autoPublicSay: boolean, channel: string, pending?: string, lastMinute: integer, lastMinuteAuto: integer, total: integer, lastRefusal?: string, oocHeld: boolean, autoFallback: boolean, combatHeld: integer }
function Gateway:Status()
	local now = GetTime()
	local n, nAuto = Recent(self.sendLog, 60, now)
	local p = self:GetPending()
	return {
		mode = self:GetMode(), effective = self:EffectiveMode(), autoPublicSay = NS.db.output.autoPublicSay,
		channel = NS.db.chat.channel, pending = p and p.channel or nil,
		lastMinute = n, lastMinuteAuto = nAuto, total = self.sentTotal or 0, lastRefusal = self.lastRefusal,
		blocked = self.blockedTotal or 0, oocHeld = self:HeldOOC(),
		autoFallback = self.autoFallback == true, combatHeld = self:HeldForCombat(),
	}
end
