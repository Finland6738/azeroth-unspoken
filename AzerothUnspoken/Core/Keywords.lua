-- Azeroth Unspoken: parole chiave dei comandi (sempre in inglese, in ogni lingua dell'interfaccia, #132).
-- Ogni tabella di parole (comandi, argomenti, valori) si registra qui: un test controlla che siano tutte inglesi.
local ADDON, NS = ...

local Keywords = {}
NS.Keywords = Keywords

---@type table<string, table> nome -> tabella { parola = valore }
Keywords.registry = {}

---Registra una tabella di parole chiave e la restituisce.
---@param name string nome per i messaggi di errore dei test
---@param words table<string, any>
---@return table<string, any>
function Keywords.Register(name, words)
	Keywords.registry[name] = words
	return words
end

local ON = Keywords.Register("on_off.on", { on = true, yes = true, ["1"] = true })
local OFF = Keywords.Register("on_off.off", { off = true, no = true, ["0"] = true })

---on/off come parole chiave: true, false o nil se la parola non è né l'una né l'altra.
---@param word? string
---@return boolean|nil
function Keywords.OnOff(word)
	word = NS.Lower(word or "")
	if ON[word] then return true end
	if OFF[word] then return false end
	return nil
end
