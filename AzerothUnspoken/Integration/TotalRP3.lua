-- Azeroth Unspoken: adattatore facoltativo per Total RP 3.
-- Senza TRP3, o se le sue API cambiano, l'addon funziona lo stesso.
local ADDON, NS = ...
local Compat = NS.Compat
local TotalRP3 = {}
NS.TotalRP3 = TotalRP3

local function CurrentUser()
	local api = AddOn_TotalRP3
	local getUser = api and api.Player and api.Player.GetCurrentUser
	if type(getUser) ~= "function" then return nil end
	local ok, user = pcall(getUser)
	if ok and type(user) == "table" then return user end
	return nil
end

function TotalRP3:Probe()
	local user = CurrentUser()
	local state, detail = Compat.MISSING, "AddOn_TotalRP3 not loaded"
	if user then
		if type(user.GetFirstName) == "function" then
			state, detail = Compat.AVAILABLE, "Player.GetCurrentUser():GetFirstName"
		else
			state, detail = Compat.MISSING, "GetFirstName missing"
		end
	elseif AddOn_TotalRP3 then
		detail = "Player.GetCurrentUser unavailable"
	end
	if state == Compat.AVAILABLE and NS.db and not NS.db.modules.totalRP3 then detail = detail .. " (module off)" end
	Compat:SetCap("integration:totalRP3", "integration", state, detail)
	return state
end

-- l'addon c'è? (indipendentemente dal consenso dell'utente)
function TotalRP3:IsPresent()
	return AddOn_TotalRP3 ~= nil
end

-- nome del profilo RP del giocatore, se il modulo è attivo e il profilo lo ha
function TotalRP3:GetFirstName()
	if not (NS.db and NS.db.modules.totalRP3) then return nil end
	local user = CurrentUser()
	if not user or type(user.GetFirstName) ~= "function" then return nil end
	local ok, first = pcall(user.GetFirstName, user)
	first = ok and Compat.Readable(first) or nil
	if type(first) == "string" and first ~= "" then return first end
	return nil
end
