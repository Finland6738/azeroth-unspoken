-- Voci di Azeroth: core, impostazioni, invio dei messaggi, API pubblica
local ADDON, NS = ...
NS.version = "0.1.0"
VociDiAzeroth = NS     -- API pubblica per i pacchetti di frasi, le macro e il debug

BINDING_HEADER_VOCIDIAZEROTH = "Voci di Azeroth"
BINDING_NAME_VOCIDIAZEROTH_SPEAK = "Pronuncia la frase in attesa (o improvvisa)"

-- probabilità in percentuale che un evento automatico produca una frase
NS.DEFAULT_CHANCE = {
	battle = 35, victory = 30, lowhp = 60, death = 85, rez = 70, levelup = 100,
	zone = 40, attack = 8, heal = 15, buff = 25, travel = 60, rezother = 80,
}

-- secondi minimi tra due frasi dello stesso evento (oltre al cooldown globale)
NS.EVENT_COOLDOWN = {
	battle = 20, victory = 30, lowhp = 60, zone = 90, attack = 30, heal = 30,
	buff = 60, travel = 60,
}

-- eventi importanti che ignorano il cooldown globale
NS.BYPASS_GLOBAL = { death = true, rez = true, levelup = true, rezother = true }

local DEFAULTS = {
	enabled = true,
	lang = "it",       -- codice di una lingua registrata
	mode = "auto",     -- auto | emote | say | self
	cooldown = 40,     -- secondi minimi tra due frasi automatiche
	useRPName = true,  -- usa il nome del profilo Total RP 3
	showButton = true,
	chance = {},
	ignored = {},      -- [nome incantesimo minuscolo] = true
	disabledPacks = {},
	memory = { uses = {}, last = {}, recent = {}, lastTone = {} },
}

local function CopyDefaults(src, dst)
	for k, v in pairs(src) do
		if type(v) == "table" then
			if type(dst[k]) ~= "table" then dst[k] = {} end
			CopyDefaults(v, dst[k])
		elseif dst[k] == nil then
			dst[k] = v
		end
	end
end

function NS:InitDB()
	VociDiAzerothDB = VociDiAzerothDB or {}
	CopyDefaults(DEFAULTS, VociDiAzerothDB)
	CopyDefaults(self.DEFAULT_CHANCE, VociDiAzerothDB.chance)
	self.db = VociDiAzerothDB
	if not self.languages[self.db.lang] then self.db.lang = "it" end
end

---------------------------------------------------------------------------
-- Lingue
---------------------------------------------------------------------------
NS.languages = {}      -- [codice] = { name = "Italiano", ui = { ... } }
NS.languageOrder = {}

-- Registra una lingua (o aggiunge testi d'interfaccia a una esistente).
function NS:RegisterLanguage(code, info)
	local lang = self.languages[code]
	if not lang then
		lang = { name = code, ui = {} }
		self.languages[code] = lang
		table.insert(self.languageOrder, code)
	end
	if info.name then lang.name = info.name end
	for k, v in pairs(info.ui or {}) do lang.ui[k] = v end
end

function NS:Lang()
	return (self.db and self.db.lang) or "it"
end

-- testi dell'interfaccia nella lingua scelta, con ripiego sull'italiano
function NS:L(key, ...)
	local lang = self.languages[self:Lang()]
	local s = (lang and lang.ui[key]) or (self.languages.it and self.languages.it.ui[key]) or key
	if select("#", ...) > 0 then return s:format(...) end
	return s
end

function NS:Print(msg)
	DEFAULT_CHAT_FRAME:AddMessage("|cffd4a017Voci di Azeroth|r: " .. tostring(msg))
end

---------------------------------------------------------------------------
-- Invio
---------------------------------------------------------------------------
function NS:InInstance()
	local inInstance, kind = IsInInstance()
	return inInstance and kind ~= "none"
end

local function RawSend(text, chatType)
	local send = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
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
-- solo allora il gioco permette /say fuori dalle istanze.
function NS:Perform(event, ctx, hw)
	local mode = self.db.mode
	local canSay = hw or self:InInstance()
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

-- Probabilità e pausa predefinite per un evento nuovo, definito da un pacchetto.
-- Da chiamare al caricamento; le scelte dell'utente (/voci prob) restano prioritarie.
function NS:SetEventDefaults(event, chance, cooldown)
	if chance and not self.DEFAULT_CHANCE[event] then self.DEFAULT_CHANCE[event] = chance end
	if cooldown and not self.EVENT_COOLDOWN[event] then self.EVENT_COOLDOWN[event] = cooldown end
end

-- Evento lanciato da macro o da altri addon: /voci evento <nome>
function NS:Trigger(event, extra, hw)
	local ctx = self:BuildContext(extra)
	return self:Perform(event, ctx, hw)
end

-- tasto, pulsante o /voci dire: pronuncia la frase in attesa, oppure improvvisa
function VociDiAzeroth_Speak()
	local text = NS:GetPending()
	if text then
		NS:ClearPending()
		RawSend(text, "SAY")
		return
	end
	local ctx = NS:BuildContext()
	NS:Perform(ctx.combat and "battle" or "muse", ctx, true)
end
