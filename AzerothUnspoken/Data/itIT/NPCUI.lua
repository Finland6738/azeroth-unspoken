-- Testi dell'interfaccia in italiano per i dialoghi ambientali (S8): etichetta, pulsanti, motivi per cui non c'è un
-- dialogo e comando /au talk. I testi delle battute stanno in Data/itIT/Dialogues.lua.
local ADDON, NS = ...

NS:RegisterLanguage("it", {
	ui = {
		npc_badge = "dialogo ambientale dell'addon",
		npc_badge_tip = "Questa conversazione è inventata dall'addon: non sono le parole dell'NPC vero, non compare in chat e non cambia missioni, commercio o altre finestre del gioco. Chiudila quando vuoi.",
		npc_btn_open = "Ascolta (dialogo ambientale)",
		npc_btn_close = "Chiudi",
		npc_tip_close = "Chiudi subito il dialogo",
		npc_test_name = "Locandiere di prova",
		npc_test_tag = "prova",
		mem_kind_npc_talk = "Una chiacchierata",
		-- perché non c'è un dialogo (identità)
		npc_no_no_target = "Nessun NPC davanti: seleziona un NPC, oppure apri il suo mercato, il volo o l'addestramento.",
		npc_no_secret = "Il gioco nasconde l'identità di questo NPC: nessun dialogo.",
		npc_no_player = "I dialoghi ambientali sono solo con gli NPC, non con altri giocatori.",
		npc_no_hostile = "Non c'è un dialogo con una creatura ostile.",
		npc_no_dead = "Non c'è un dialogo con chi non può rispondere.",
		npc_no_uncertain = "Non so con certezza chi sia, e non lo indovino: nessun dialogo. Apri il suo mercato, il volo o l'addestramento, oppure dillo tu con /au talk role <ruolo>.",
		npc_no_no_script = "Per questo NPC non ho ancora un dialogo.",
		npc_no_unknown = "Nessun dialogo possibile adesso.",
		-- perché non si apre (permessi)
		npc_refused_disabled = "L'addon è spento.",
		npc_refused_module = "I dialoghi NPC sono spenti (impostazioni, modulo «Dialoghi NPC»).",
		npc_refused_no_ui = "La finestra del dialogo non si è potuta costruire (vedi /au debug).",
		npc_refused_screen = "Non durante un filmato.",
		npc_refused_combat = "Non durante il combattimento.",
		npc_refused_dead = "Non da morto.",
		npc_refused_busy = "Un dialogo è già aperto.",
		npc_refused_no_line = "Adesso non ho niente da dire.",
		npc_refused_not_offered = "Nessun dialogo da aprire.",
		npc_refused_not_choosing = "Non si può scegliere adesso.",
		npc_refused_no_choice = "Quella risposta non c'è.",
		npc_refused_no_script = "Per questo NPC non ho ancora un dialogo.",
		npc_refused_paused = "Il narratore è in pausa.",
		npc_refused_silent = "L'intensità è a zero: i dialoghi si aprono solo a mano.",
		npc_refused_no_auto = "L'offerta automatica è spenta.",
		npc_refused_unknown = "Il dialogo non si può aprire adesso.",
		-- comando /au talk
		npc_none_open = "Nessun dialogo aperto.",
		npc_already_open = "Un dialogo è già aperto: /au talk close lo chiude.",
		npc_offer_on = "Quando apri il mercato, il volo, l'addestramento o parli con un NPC noto, compare il pulsante del dialogo ambientale.",
		npc_offer_off = "Il pulsante del dialogo ambientale non compare più da solo: si apre con /au talk o con il tasto.",
		npc_role_bad = "Ruoli: locandiere, mercante, guardia, volo, addestratore, banchiere.",
		npc_role_set = "Va bene: per l'addon è «%s». Vale come classificazione tua; si cambia con /au who trait role <ruolo>.",
		npc_not_listed = "Questo NPC non è ancora nella lista delle relazioni: parlaci una volta con il dialogo di Blizzard e riprova.",
	},
})
