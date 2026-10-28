-- Azeroth Unspoken: uscita delle frasi (anteprima privata, emote, /say).
-- Stato del prototipo: lo step S2 la trasforma nel Chat Gateway del GDD §7.7.
local ADDON, NS = ...
local Compat = NS.Compat

function NS:InInstance()
	local inInstance, kind = IsInInstance()
	return inInstance and kind ~= "none"
end

local function RawSend(text, chatType)
	local send = Compat:GetChatSender()
	if not send then
		NS:Print(NS:L("send_error", "SendChatMessage"))
		return false
	end
	if Compat:InChatLockdown() then
		NS:Print(NS:L("send_error", "chat lockdown"))
		return false
	end
	local ok, err = pcall(send, text, chatType)
	if not ok then NS:Print(NS:L("send_error", tostring(err))) end
	return ok
end

local function Clip(text)
	if #text <= 255 then return text end
	local cut = text:sub(1, 252)
	-- non spezzare un carattere UTF-8 a metà
	while #cut > 0 and cut:byte(#cut) >= 0x80 and cut:byte(#cut) < 0xC0 do cut = cut:sub(1, -2) end
	if #cut > 0 and cut:byte(#cut) >= 0xC0 then cut = cut:sub(1, -2) end
	return cut .. "..."
end
NS.Clip = Clip

-- frase in attesa: /say nel mondo aperto richiede un tasto premuto o un clic
local PENDING_TTL = 25
NS.pending = nil

function NS:SetPending(text, event)
	self.pending = { text = text, time = GetTime(), event = event }
	if self.OnPendingChanged then self:OnPendingChanged() end
end

function NS:GetPending()
	local p = self.pending
	if p and GetTime() - p.time <= PENDING_TTL then return p.text end
	if p then self:ClearPending() end
	return nil
end

function NS:ClearPending()
	self.pending = nil
	if self.OnPendingChanged then self:OnPendingChanged() end
end

-- Recita una frase per l'evento.
-- hw = true quando la chiamata nasce da un tasto, un clic o un comando scritto:
-- solo allora il gioco permette /say fuori dalle istanze. Senza hw, /say parte da solo
-- soltanto nelle istanze e soltanto con output.autoPublicSay attivo.
function NS:Perform(event, ctx, hw)
	local mode = self.db.output.mode
	local canSay = hw or (self.db.output.autoPublicSay and self:InInstance())
	local useEmote = mode == "emote" or (mode == "auto" and not canSay)

	if mode == "self" then
		local text = self.Engine:Pick(event, ctx, "say") or self.Engine:Pick(event, ctx, "emote")
		if text then self:Print("|cffffffff[" .. self:L("preview") .. "]|r " .. text) end
		return text ~= nil
	end

	if useEmote then
		local text = self.Engine:Pick(event, ctx, "emote")
		if text then return RawSend(Clip(text), "EMOTE") end
	end

	local text = self.Engine:Pick(event, ctx, "say")
	if not text then
		-- nessuna frase parlata adatta: prova la forma narrativa
		text = self.Engine:Pick(event, ctx, "emote")
		if text then return RawSend(Clip(text), "EMOTE") end
		return false
	end
	if canSay then return RawSend(Clip(text), "SAY") end
	self:SetPending(Clip(text), event)
	return true
end

-- Evento lanciato da macro o da altri addon: /au evento <nome>
function NS:Trigger(event, extra, hw)
	local ctx = self:BuildContext(extra)
	return self:Perform(event, ctx, hw)
end

-- tasto, pulsante o /au dire: pronuncia la frase in attesa, oppure improvvisa
function AzerothUnspoken_Speak()
	if not NS.db then return end
	local text = NS:GetPending()
	if text then
		NS:ClearPending()
		RawSend(text, "SAY")
		return
	end
	local ctx = NS:BuildContext()
	NS:Perform(ctx.combat and "battle" or "muse", ctx, true)
end
