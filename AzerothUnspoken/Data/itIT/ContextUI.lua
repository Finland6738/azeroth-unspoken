-- Testi dell'interfaccia in italiano per l'interlocutore e il luogo (S6c): ruoli, tratti, comandi /au place e /au who.
local ADDON, NS = ...

NS:RegisterLanguage("it", {
	ui = {
		-- ruoli dell'interlocutore ({otherrole})
		role_innkeeper = "locandiere", role_merchant = "mercante", role_guard = "guardia", role_questgiver = "chi affida incarichi",
		role_trainer = "maestro", role_flightmaster = "maestro di volo", role_banker = "banchiere", role_leader = "capo",
		role_civilian = "cittadino",
		-- tratti dell'interlocutore (temperamento e morale sono quelli del Character Soul)
		trait_goals = "Obiettivi", trait_goals_profit = "Guadagno", trait_goals_duty = "Dovere", trait_goals_knowledge = "Conoscenza",
		trait_goals_faith = "Fede", trait_goals_glory = "Gloria", trait_goals_survival = "Sopravvivenza", trait_goals_family = "Famiglia",
		trait_goals_power = "Potere", trait_goals_peace = "Pace", trait_goals_freedom = "Libertà",
		trait_speech = "Modo di parlare", trait_speech_plain = "Semplice", trait_speech_formal = "Formale", trait_speech_gruff = "Brusco",
		trait_speech_warm = "Caloroso", trait_speech_terse = "Asciutto", trait_speech_florid = "Fiorito", trait_speech_cryptic = "Enigmatico",
		trait_speech_jovial = "Gioviale",
		trait_role = "Ruolo", trait_role_innkeeper = "Locandiere", trait_role_merchant = "Mercante", trait_role_guard = "Guardia",
		trait_role_questgiver = "Affida incarichi", trait_role_trainer = "Maestro", trait_role_flightmaster = "Maestro di volo",
		trait_role_banker = "Banchiere", trait_role_leader = "Capo", trait_role_civilian = "Cittadino",
		-- /au place
		place_zone = "Luogo: %s (%s), mappa %s, riconosciuto %s",
		place_src_map = "per numero di mappa", place_src_name = "per nome", place_src_guess = "per numero di mappa non verificato",
		place_src_none = "senza dati",
		place_kind = "Istanza: %s, %s (id %s, difficoltà %s)",
		place_instance_none = "mondo aperto", place_instance_party = "dungeon", place_instance_raid = "incursione",
		place_instance_pvp = "campo di battaglia", place_instance_arena = "arena", place_instance_scenario = "scenario",
		place_territory = "Territorio: %s; continente %s; capitale %s",
		place_territory_friendly = "amico", place_territory_hostile = "ostile", place_territory_contested = "conteso",
		place_territory_sanctuary = "santuario", place_territory_combat = "combattimento",
		place_capital_friendly = "amica", place_capital_hostile = "nemica",
		place_tags = "Atmosfera e temi: %s",
		place_state = "Scontro: %s; ruolo nel gruppo: %s; campo di battaglia: %s",
		place_role_tank = "difesa", place_role_healer = "cure", place_role_damage = "danno",
		-- /au who
		other_none = "Nessun interlocutore: prendi un bersaglio o parla con un NPC.",
		other_secret = "L'identità di chi hai davanti è nascosta dal client: nessun profilo.",
		other_who = "Interlocutore: %s (%s), %s %s, livello %s",
		other_kind_npc = "NPC", other_kind_player = "giocatore", other_kind_creature = "creatura",
		other_traits = "Carattere: %s",
		other_neutral = "neutro (nessuna fonte dice nulla)",
		other_actions = "Azioni recenti: %s; relazione: %s",
		other_action_quest_offer = "ti ha proposto un incarico", other_action_quest_given = "ti ha affidato un incarico",
		other_action_quest_done = "ha ricevuto un incarico compiuto", other_action_merchant = "ha aperto bottega",
		other_action_trainer = "ti ha istruito", other_action_flight = "ti ha offerto un volo", other_action_innkeeper = "ti ha dato alloggio",
		other_action_banker = "ha aperto la banca", other_action_gossip = "ti ha parlato", other_action_trade = "ha scambiato con te",
		other_action_group = "è nel tuo gruppo", other_action_duel = "ti ha sfidato a duello", other_action_invite = "ti ha invitato nel gruppo",
		other_action_emote = "ti ha rivolto un gesto", other_action_attacks = "ti attacca", other_action_ally = "combatte al tuo fianco",
		other_trp3_on = "Profili pubblici Total RP 3 degli altri giocatori: letti (solo razza, classe e tratti, mai note o storia).",
		other_trp3_off = "Profili pubblici Total RP 3 degli altri giocatori: non letti.",
		other_not_listed = "Chi hai davanti non è nella lista delle relazioni: aggiungilo prima con /au relationships.",
		other_trait_set = "%s: %s.",
		other_trait_bad = "Uso: /au who trait temperament|morality|goals|speech|role <valore> (oppure - per toglierlo).",
	},
})
