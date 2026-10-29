-- La struttura dei dialoghi ambientali (step S8, GDD §7.3, §21-B; ADR 0020): per ogni archetipo, i nodi (che battuta
-- dice l'NPC) e le risposte del giocatore (che cosa si può scegliere, dove porta, che flag e che relazione tocca).
-- Le battute stanno in Data/RegistryDialogues.lua (regole) e Data/itIT|enUS/Dialogues.lua (testi): qui solo il
-- copione. Un pacchetto può aggiungerne con NS:RegisterDialogues{ scripts = { ... } } (stessa forma, vedi
-- FORMATO_PACCHETTI.md, «Dialoghi ambientali»).
--
-- Regole (GDD §7.3):
--   - da 1 a 3 risposte per nodo; le risposte sono NEUTRE: domande e azioni (che cosa si chiede, che cosa si fa), mai un
--     carattere, un sentimento o una decisione morale attribuiti al personaggio (il giocatore controlla sempre ciò
--     che si dice di lui);
--   - i flag sono narrativi e locali: `flag = "asked_news"` diventa `npcd_innkeeper_asked_news` nella memoria (S6) e
--     serve alle battute (`remembered`); mai una quest ufficiale, mai un effetto sul gioco vero;
--   - `relation` è una fonte di incremento di Data/Relationships.lua (poco, con tetti giornalieri);
--   - ogni percorso porta a un nodo senza risposte o a una risposta senza `go`: si può sempre chiudere.
local ADDON, NS = ...

---Una risposta del giocatore.
---@param it string
---@param en string
---@param go? string nodo di arrivo (senza: chiude)
---@param extra? { flag?: string, relation?: string, when?: table }
local function Choice(it, en, go, extra)
	local c = { label = { it = it, en = en }, go = go }
	for k, v in pairs(extra or {}) do c[k] = v end
	return c
end

local TALK = "ambient_talk"   -- fonte di relazione per una domanda a cui l'NPC risponde

-- Le risposte comuni a più archetipi
local function Common()
	return {
		leave = Choice("Arrivederci.", "Farewell.", "bye"),
		thanks = Choice("Grazie.", "Thank you.", "thanks", { relation = TALK }),
	}
end

local function With(base, more)
	for k, v in pairs(more) do base[k] = v end
	return base
end

NS:RegisterDialogues({
	scripts = {
		-- IL LOCANDIERE (vertical slice B, GDD §21): apertura, due domande, una pausa, saluto.
		innkeeper = {
			role = "innkeeper",
			start = "open",
			nodes = {
				open = { event = "npcd_innkeeper_open", choices = { "news", "rest", "leave" } },
				news = { event = "npcd_innkeeper_news", choices = { "more", "thanks", "leave" } },
				more = { event = "npcd_innkeeper_more", choices = { "thanks", "leave" } },
				rest = { event = "npcd_innkeeper_rest", choices = { "sit", "news", "leave" } },
				sit = { event = "npcd_innkeeper_sit" },
				thanks = { event = "npcd_innkeeper_thanks" },
				bye = { event = "npcd_innkeeper_bye" },
			},
			choices = With(Common(), {
				news = Choice("Che notizie corrono?", "What news is going round?", "news", { flag = "asked_news", relation = TALK }),
				rest = Choice("Cerco un posto per riposare.", "I am looking for a place to rest.", "rest", { flag = "asked_rest", relation = TALK }),
				more = Choice("Dimmi di più.", "Tell me more.", "more", { flag = "asked_more" }),
				sit = Choice("Mi fermo un momento.", "I will stop a while.", "sit", { flag = "stayed_a_while", relation = TALK }),
			}),
		},
		-- IL MERCANTE: una domanda sulla merce, una sul prezzo, una sulle voci. Nessun prezzo vero né sconto.
		merchant = {
			role = "merchant",
			start = "open",
			nodes = {
				open = { event = "npcd_merchant_open", choices = { "wares", "news", "leave" } },
				wares = { event = "npcd_merchant_wares", choices = { "haggle", "thanks", "leave" } },
				haggle = { event = "npcd_merchant_haggle", choices = { "thanks", "leave" } },
				news = { event = "npcd_merchant_news", choices = { "thanks", "leave" } },
				thanks = { event = "npcd_merchant_thanks" },
				bye = { event = "npcd_merchant_bye" },
			},
			choices = With(Common(), {
				wares = Choice("Che cosa vendi?", "What do you sell?", "wares", { flag = "asked_wares", relation = TALK }),
				haggle = Choice("Il prezzo si può discutere?", "Is the price open to discussion?", "haggle", { flag = "asked_price" }),
				news = Choice("Hai sentito qualche voce?", "Have you heard any rumors?", "news", { relation = TALK }),
			}),
		},
		-- LA GUARDIA: una domanda sui pericoli, una sull'orientarsi. Solo per le guardie del registro curato.
		guard = {
			role = "guard",
			start = "open",
			nodes = {
				open = { event = "npcd_guard_open", choices = { "danger", "directions", "leave" } },
				danger = { event = "npcd_guard_danger", choices = { "thanks", "leave" } },
				directions = { event = "npcd_guard_directions", choices = { "thanks", "leave" } },
				thanks = { event = "npcd_guard_thanks" },
				bye = { event = "npcd_guard_bye" },
			},
			choices = With(Common(), {
				danger = Choice("Ci sono pericoli sulla strada?", "Are there dangers on the road?", "danger", { flag = "asked_danger", relation = TALK }),
				directions = Choice("Come ci si orienta da queste parti?", "How does one find one's way around here?", "directions", { relation = TALK }),
			}),
		},
		-- IL MAESTRO DI VOLO
		flightmaster = {
			role = "flightmaster",
			start = "open",
			nodes = {
				open = { event = "npcd_flightmaster_open", choices = { "route", "leave" } },
				route = { event = "npcd_flightmaster_route", choices = { "thanks", "leave" } },
				thanks = { event = "npcd_flightmaster_thanks" },
				bye = { event = "npcd_flightmaster_bye" },
			},
			choices = With(Common(), {
				route = Choice("Com'è il viaggio?", "What is the journey like?", "route", { flag = "asked_route", relation = TALK }),
			}),
		},
		-- L'ADDESTRATORE
		trainer = {
			role = "trainer",
			start = "open",
			nodes = {
				open = { event = "npcd_trainer_open", choices = { "advice", "practice", "leave" } },
				advice = { event = "npcd_trainer_advice", choices = { "thanks", "leave" } },
				practice = { event = "npcd_trainer_practice", choices = { "thanks", "leave" } },
				thanks = { event = "npcd_trainer_thanks" },
				bye = { event = "npcd_trainer_bye" },
			},
			choices = With(Common(), {
				advice = Choice("Hai un consiglio per me?", "Have you any advice for me?", "advice", { flag = "asked_advice", relation = TALK }),
				practice = Choice("Come ci si esercita?", "How does one practice?", "practice", { relation = TALK }),
			}),
		},
	},
})
