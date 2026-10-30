-- English interface texts for the interlocutor and the place (S6c): roles, traits, /au place and /au who.
local ADDON, NS = ...

NS:RegisterLanguage("en", {
	ui = {
		-- interlocutor roles ({otherrole})
		role_innkeeper = "innkeeper", role_merchant = "merchant", role_guard = "guard", role_questgiver = "quest giver",
		role_trainer = "trainer", role_flightmaster = "flight master", role_banker = "banker", role_leader = "leader",
		role_civilian = "townsfolk",
		-- interlocutor traits (temperament and morality are the Character Soul ones)
		trait_goals = "Goals", trait_goals_profit = "Profit", trait_goals_duty = "Duty", trait_goals_knowledge = "Knowledge",
		trait_goals_faith = "Faith", trait_goals_glory = "Glory", trait_goals_survival = "Survival", trait_goals_family = "Family",
		trait_goals_power = "Power", trait_goals_peace = "Peace", trait_goals_freedom = "Freedom",
		trait_speech = "Way of speaking", trait_speech_plain = "Plain", trait_speech_formal = "Formal", trait_speech_gruff = "Gruff",
		trait_speech_warm = "Warm", trait_speech_terse = "Terse", trait_speech_florid = "Florid", trait_speech_cryptic = "Cryptic",
		trait_speech_jovial = "Jovial",
		trait_role = "Role", trait_role_innkeeper = "Innkeeper", trait_role_merchant = "Merchant", trait_role_guard = "Guard",
		trait_role_questgiver = "Quest giver", trait_role_trainer = "Trainer", trait_role_flightmaster = "Flight master",
		trait_role_banker = "Banker", trait_role_leader = "Leader", trait_role_civilian = "Townsfolk",
		-- /au place
		place_zone = "Place: %s (%s), map %s, recognized %s",
		place_src_map = "by map number", place_src_name = "by name", place_src_guess = "by an unverified map number",
		place_src_none = "with no data",
		place_kind = "Instance: %s, %s (id %s, difficulty %s)",
		place_instance_none = "open world", place_instance_party = "dungeon", place_instance_raid = "raid",
		place_instance_pvp = "battleground", place_instance_arena = "arena", place_instance_scenario = "scenario",
		place_territory = "Territory: %s; continent %s; capital %s",
		place_territory_friendly = "friendly", place_territory_hostile = "hostile", place_territory_contested = "contested",
		place_territory_sanctuary = "sanctuary", place_territory_combat = "combat",
		place_capital_friendly = "friendly", place_capital_hostile = "enemy",
		place_tags = "Mood and themes: %s",
		place_state = "Encounter: %s; group role: %s; battleground: %s",
		place_role_tank = "tank", place_role_healer = "healer", place_role_damage = "damage",
		-- /au who
		other_none = "No one in front of you: pick a target or talk to an NPC.",
		other_secret = "The client hides who is in front of you: no profile.",
		other_who = "Interlocutor: %s (%s), %s %s, level %s",
		other_kind_npc = "NPC", other_kind_player = "player", other_kind_creature = "creature",
		other_traits = "Character: %s",
		other_neutral = "neutral (no source says anything)",
		other_actions = "Recent actions: %s; relationship: %s",
		other_action_quest_offer = "offered you a task", other_action_quest_given = "gave you a task",
		other_action_quest_done = "received a finished task", other_action_merchant = "opened shop",
		other_action_trainer = "trained you", other_action_flight = "offered you a flight", other_action_innkeeper = "gave you lodging",
		other_action_banker = "opened the bank", other_action_gossip = "talked to you", other_action_trade = "traded with you",
		other_action_group = "is in your group", other_action_duel = "challenged you to a duel", other_action_invite = "invited you to a group",
		other_action_emote = "made a gesture at you", other_action_attacks = "is attacking you", other_action_ally = "fights at your side",
		other_trp3_on = "Other players' public Total RP 3 profiles: read (race, class and traits only, never notes or history).",
		other_trp3_off = "Other players' public Total RP 3 profiles: not read.",
		other_not_listed = "The person in front of you is not in your relationships list: add them first with /au relationships.",
		other_trait_set = "%s: %s.",
		other_trait_bad = "Usage: /au who trait temperament|morality|goals|speech|role <value> (or - to clear it).",
	},
})
