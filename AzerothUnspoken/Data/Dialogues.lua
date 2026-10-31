-- La struttura dei dialoghi ambientali (step S8, GDD §7.3, §21-B; ADR 0020): per ogni archetipo, i nodi (che battuta
-- dice l'NPC) e le risposte del giocatore (che cosa si può scegliere, dove porta, che flag e che relazione tocca).
-- Le battute stanno in Data/RegistryDialogues.lua (regole) e AzerothUnspoken_itIT|enUS/Dialogues.lua (testi): qui solo il
-- copione. Un pacchetto può aggiungerne con NS:RegisterDialogues{ pack, scripts = { ... } } (stessa forma, vedi
-- PACK_FORMAT.md, «Dialoghi ambientali»).
--
-- Dati letterali, non codice (#143): nessuna funzione costruisce i copioni, così l'archivio (tools/archive) li legge, li
-- controlla e li riscrive senza differenze. Le risposte comuni (`leave`, `thanks`) sono ripetute in ogni copione.
--
-- Regole (GDD §7.3):
--   - da 1 a 3 risposte per nodo; le risposte sono NEUTRE: domande e azioni (che cosa si chiede, che cosa si fa), mai un
--     carattere, un sentimento o una decisione morale attribuiti al personaggio (il giocatore controlla sempre ciò
--     che si dice di lui). Il validatore lo controlla; una risposta che il giocatore potrà riscrivere dichiara
--     `editable = true` ed è l'unica eccezione;
--   - i flag sono narrativi e locali: `flag = "asked_news"` diventa `npcd_innkeeper_asked_news` nella memoria (S6) e
--     serve alle battute (`remembered`); mai una quest ufficiale, mai un effetto sul gioco vero;
--   - `relation` è una fonte di incremento di Data/Relationships.lua (poco, con tetti giornalieri);
--   - ogni percorso porta a un nodo senza risposte o a una risposta senza `go`: si può sempre chiudere.
local ADDON, NS = ...

NS:RegisterDialogues({
	pack = "base_dialogues",
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
			choices = {
				leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
				thanks = { label = { it = "Grazie.", en = "Thank you." }, go = "thanks", relation = "ambient_talk" },
				news = { go = "news", flag = "asked_news", relation = "ambient_talk",
					label = { it = "Che notizie corrono?", en = "What news is going round?" } },
				rest = { go = "rest", flag = "asked_rest", relation = "ambient_talk",
					label = { it = "Cerco un posto per riposare.", en = "I am looking for a place to rest." } },
				more = { label = { it = "Dimmi di più.", en = "Tell me more." }, go = "more", flag = "asked_more" },
				sit = { go = "sit", flag = "stayed_a_while", relation = "ambient_talk",
					label = { it = "Mi fermo un momento.", en = "I will stop a while." } },
			},
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
			choices = {
				leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
				thanks = { label = { it = "Grazie.", en = "Thank you." }, go = "thanks", relation = "ambient_talk" },
				wares = { go = "wares", flag = "asked_wares", relation = "ambient_talk",
					label = { it = "Che cosa vendi?", en = "What do you sell?" } },
				haggle = { go = "haggle", flag = "asked_price",
					label = { it = "Il prezzo si può discutere?", en = "Is the price open to discussion?" } },
				news = { go = "news", relation = "ambient_talk",
					label = { it = "Hai sentito qualche voce?", en = "Have you heard any rumors?" } },
			},
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
			choices = {
				leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
				thanks = { label = { it = "Grazie.", en = "Thank you." }, go = "thanks", relation = "ambient_talk" },
				danger = { go = "danger", flag = "asked_danger", relation = "ambient_talk",
					label = { it = "Ci sono pericoli sulla strada?", en = "Are there dangers on the road?" } },
				directions = { go = "directions", relation = "ambient_talk",
					label = { it = "Come ci si orienta da queste parti?",
						en = "How does one find one's way around here?" } },
			},
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
			choices = {
				leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
				thanks = { label = { it = "Grazie.", en = "Thank you." }, go = "thanks", relation = "ambient_talk" },
				route = { go = "route", flag = "asked_route", relation = "ambient_talk",
					label = { it = "Com'è il viaggio?", en = "What is the journey like?" } },
			},
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
			choices = {
				leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
				thanks = { label = { it = "Grazie.", en = "Thank you." }, go = "thanks", relation = "ambient_talk" },
				advice = { go = "advice", flag = "asked_advice", relation = "ambient_talk",
					label = { it = "Hai un consiglio per me?", en = "Have you any advice for me?" } },
				practice = { go = "practice", relation = "ambient_talk",
					label = { it = "Come ci si esercita?", en = "How does one practice?" } },
			},
		},
	},
})
