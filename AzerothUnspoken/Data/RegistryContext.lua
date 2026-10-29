-- Frasi legate all'interlocutore e al luogo (step S6c): chi incontriamo (ruolo, temperamento, modo di parlare, razza,
-- classe, azioni recenti) e dove siamo (dungeon, incursione, campo di battaglia, arena, territorio ostile o conteso,
-- capitali amiche e nemiche, santuari, porti, locande). Bastano a provare il sistema; i contenuti estesi arrivano con
-- lo step S7. Solo le regole; i testi stanno in Data/itIT/Context.lua e Data/enUS/Context.lua.
--
-- Condizioni (Engine/RuleEngine.lua), sotto-tabelle con gli stessi operatori del livello superiore:
--   other = { kind, race, class, faction, role, temperament, morality, goals, speech, reaction, actions, relation... }
--   place = { instanceType, territory, tags, friendlyCapital, hostileCapital, encounter, lastEncounter,
--             encounterResult, groupRole, battleground, rest... }
--   other.actions: un'azione recente entro Interlocutor.ACTION_WINDOW secondi, oppure { "duel", within = 30 }
-- Tag con ambito (fattore C): other.role:innkeeper, other.temperament:gruff, place.tag:deep, place.instance:raid
-- Regole editoriali (GDD §5.3, §5.4): un mercante non declama come un re; razza e classe danno un saluto legato alla
-- terra d'origine o al mestiere, mai un giudizio morale; in campo di battaglia e contro un boss frasi brevi.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_context",
	name = "Base: interlocutore e luogo",
	languages = { "itIT", "enUS" },
	events = {
		-- un NPC dal ruolo riconosciuto in modo affidabile (mercante, locandiere, maestro, volo, banca, incarichi)
		npc_meet = { category = "social", chance = 30, cooldown = 300 },
		-- qualcuno compie un'azione verso di noi: duello, invito, emote, scambio, incarico affidato
		other_action = { category = "social", chance = 55, cooldown = 90 },
		-- la fine di uno scontro con un boss (vittoria o sconfitta), a combattimento finito
		encounter_end = { category = "combat", chance = 60, cooldown = 120 },
	},
	registry = {
		-------------------------------------------------------------------
		-- Interlocutore: ruolo e carattere degli NPC (npc_meet)
		-------------------------------------------------------------------
		["ctx.npc.innkeeper"] = { event = "npc_meet", speaker = "inner", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "other.role:innkeeper" }, conditions = { other = { role = "innkeeper" } } },
		["ctx.npc.innkeeper.jovial"] = { event = "npc_meet", speaker = "narrator", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.speech:jovial" }, conditions = { other = { role = "innkeeper", any = { { speech = "jovial" }, { temperament = "cheerful" } } } } },
		["ctx.npc.innkeeper.gruff"] = { event = "npc_meet", speaker = "inner", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "other.temperament:gruff", "temperament:gruff" }, conditions = { other = { role = "innkeeper", any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
		["ctx.npc.merchant"] = { event = "npc_meet", speaker = "inner", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:merchant" }, conditions = { other = { role = "merchant" } } },
		["ctx.npc.merchant.profit"] = { event = "npc_meet", speaker = "narrator", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "other.goals:profit" }, conditions = { other = { role = "merchant", goals = "profit" } } },
		["ctx.npc.trainer"] = { event = "npc_meet", speaker = "inner", styles = { "intimate" }, depth = { "literary", "elevated" }, tags = { "other.role:trainer", "motivation:knowledge" }, conditions = { other = { role = "trainer" } } },
		["ctx.npc.flightmaster"] = { event = "npc_meet", speaker = "inner", styles = { "everyday", "epic" }, depth = { "natural", "literary" }, tags = { "other.role:flightmaster" }, conditions = { other = { role = "flightmaster" } } },
		["ctx.npc.banker"] = { event = "npc_meet", speaker = "inner", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "other.role:banker" }, conditions = { other = { role = "banker" } } },
		["ctx.npc.questgiver"] = { event = "npc_meet", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:questgiver" }, conditions = { other = { role = "questgiver" } } },
		["ctx.npc.questgiver.duty"] = { event = "npc_meet", speaker = "inner", styles = { "intimate", "tragic" }, depth = { "literary" }, tags = { "other.goals:duty", "motivation:duty" }, conditions = { other = { role = "questgiver", goals = "duty" } } },
		["ctx.npc.formal"] = { event = "npc_meet", speaker = "narrator", styles = { "ceremonial" }, depth = { "literary", "elevated" }, tags = { "other.speech:formal" }, conditions = { other = { speech = "formal" } } },
		["ctx.npc.cryptic"] = { event = "npc_meet", speaker = "inner", styles = { "ancient" }, depth = { "literary", "elevated" }, tags = { "other.speech:cryptic", "curiosity:high" }, conditions = { other = { speech = "cryptic" } } },
		["ctx.npc.melancholic"] = { event = "npc_meet", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "other.temperament:melancholic", "temperament:melancholic" }, conditions = { other = { temperament = "melancholic" } } },
		["ctx.npc.cheerful"] = { event = "npc_meet", speaker = "inner", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.temperament:cheerful", "temperament:cheerful" }, conditions = { other = { temperament = "cheerful", ["not"] = { role = "innkeeper" } } } },
		-------------------------------------------------------------------
		-- Voce NPC (npc_meet, S7): la battuta simulata che l'NPC potrebbe rivolgerci, in prima persona dell'NPC.
		-- Non va mai in chat: la mostra solo il narratore privato con l'etichetta «NPC». Registro per ruolo, poi per
		-- modo di parlare o temperamento (GDD §5.3: un venditore non declama come un re). Niente nomi, prezzi o incarichi.
		-------------------------------------------------------------------
		["ctx.npcv.innkeeper"] = { event = "npc_meet", speaker = "npc", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "other.role:innkeeper" }, conditions = { other = { role = "innkeeper" } } },
		["ctx.npcv.innkeeper.gruff"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural" }, tags = { "other.temperament:gruff", "other.speech:terse" }, conditions = { other = { role = "innkeeper", any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
		["ctx.npcv.innkeeper.jovial"] = { event = "npc_meet", speaker = "npc", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "other.speech:jovial", "other.temperament:cheerful" }, conditions = { other = { role = "innkeeper", any = { { speech = "jovial" }, { temperament = "cheerful" } } } } },
		["ctx.npcv.innkeeper.warm"] = { event = "npc_meet", speaker = "npc", styles = { "intimate", "everyday" }, depth = { "natural", "literary" }, tags = { "other.speech:warm" }, conditions = { other = { role = "innkeeper", speech = "warm" } } },
		["ctx.npcv.merchant"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:merchant" }, conditions = { other = { role = "merchant" } } },
		["ctx.npcv.merchant.gruff"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural" }, tags = { "other.temperament:gruff", "other.goals:profit" }, conditions = { other = { role = "merchant", any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
		["ctx.npcv.merchant.jovial"] = { event = "npc_meet", speaker = "npc", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "other.speech:jovial", "other.temperament:cheerful" }, conditions = { other = { role = "merchant", any = { { speech = { "jovial", "warm" } }, { temperament = "cheerful" } } } } },
		["ctx.npcv.guard"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:guard" }, conditions = { other = { role = "guard" } } },
		["ctx.npcv.guard.terse"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural" }, tags = { "other.speech:terse", "other.temperament:gruff" }, conditions = { other = { role = "guard", any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
		["ctx.npcv.guard.formal"] = { event = "npc_meet", speaker = "npc", styles = { "ceremonial" }, depth = { "literary", "elevated" }, tags = { "other.speech:formal", "other.goals:duty" }, conditions = { other = { role = "guard", speech = "formal" } } },
		["ctx.npcv.banker"] = { event = "npc_meet", speaker = "npc", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "other.role:banker" }, conditions = { other = { role = "banker" } } },
		["ctx.npcv.trainer"] = { event = "npc_meet", speaker = "npc", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "other.role:trainer" }, conditions = { other = { role = "trainer" } } },
		["ctx.npcv.trainer.gruff"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural" }, tags = { "other.temperament:gruff", "other.speech:terse" }, conditions = { other = { role = "trainer", any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
		["ctx.npcv.flightmaster"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:flightmaster" }, conditions = { other = { role = "flightmaster" } } },
		["ctx.npcv.questgiver"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:questgiver" }, conditions = { other = { role = "questgiver" } } },
		["ctx.npcv.questgiver.formal"] = { event = "npc_meet", speaker = "npc", styles = { "ceremonial" }, depth = { "literary", "elevated" }, tags = { "other.speech:formal", "other.goals:duty" }, conditions = { other = { role = "questgiver", speech = "formal" } } },
		-------------------------------------------------------------------
		-- Interlocutore: saluti per ruolo, terra d'origine e mestiere (greet, su richiesta)
		-------------------------------------------------------------------
		["ctx.greet.guard"] = { event = "greet", speaker = "character", styles = { "ceremonial", "everyday" }, depth = { "natural", "literary" }, tags = { "other.role:guard", "motivation:duty" }, conditions = { other = { role = "guard" } } },
		["ctx.greet.leader"] = { event = "greet", speaker = "character", styles = { "ceremonial" }, depth = { "literary", "elevated" }, tags = { "other.role:leader", "motivation:duty" }, conditions = { other = { role = "leader" } } },
		["ctx.greet.enemy"] = { event = "greet", speaker = "character", styles = { "ironic", "ceremonial" }, depth = { "natural", "literary" }, tags = { "morality:pragmatic" }, conditions = { enemyFaction = true, other = { kind = "player" } } },
		["ctx.greet.human"] = { event = "greet", speaker = "character", styles = { "intimate", "everyday" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { race = "Human", other = { kind = "player", race = "Human" } } },
		["ctx.greet.dwarf"] = { event = "greet", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", race = "Dwarf" } } },
		["ctx.greet.nightelf"] = { event = "greet", speaker = "character", styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", race = "NightElf" } } },
		["ctx.greet.gnome"] = { event = "greet", speaker = "character", styles = { "ironic", "everyday" }, depth = { "natural", "literary" }, tags = { "curiosity:high", "temperament:cheerful" }, conditions = { other = { kind = "player", race = "Gnome" } } },
		["ctx.greet.orc"] = { event = "greet", speaker = "character", styles = { "everyday", "epic" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", race = "Orc" } } },
		["ctx.greet.tauren"] = { event = "greet", speaker = "character", styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" }, tags = { "topic:religion", "faith:spiritual" }, conditions = { other = { kind = "player", race = "Tauren" } } },
		["ctx.greet.troll"] = { event = "greet", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", race = "Troll" } } },
		["ctx.greet.forsaken"] = { event = "greet", speaker = "character", styles = { "intimate", "tragic" }, depth = { "literary" }, tags = { "topic:undead", "temperament:melancholic" }, conditions = { other = { kind = "player", race = "Scourge" } } },
		["ctx.greet.priest"] = { event = "greet", speaker = "character", styles = { "everyday", "ceremonial" }, depth = { "natural", "literary" }, tags = { "topic:religion", "faith:spiritual" }, conditions = { other = { kind = "player", class = "PRIEST" } } },
		["ctx.greet.mage"] = { event = "greet", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "curiosity:high" }, conditions = { other = { kind = "player", class = "MAGE" } } },
		["ctx.greet.warrior"] = { event = "greet", speaker = "character", styles = { "everyday", "epic" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", class = "WARRIOR" } } },
		["ctx.greet.rogue"] = { event = "greet", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", class = "ROGUE" } } },
		["ctx.greet.hunter"] = { event = "greet", speaker = "character", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", class = "HUNTER" } } },
		["ctx.greet.paladin"] = { event = "greet", speaker = "character", styles = { "ceremonial", "epic" }, depth = { "literary", "elevated" }, tags = { "topic:religion", "faith:spiritual" }, conditions = { other = { kind = "player", class = "PALADIN" } } },
		["ctx.greet.druid"] = { event = "greet", speaker = "character", styles = { "ancient", "everyday" }, depth = { "natural", "literary" }, tags = { "curiosity:mid" }, conditions = { other = { kind = "player", class = "DRUID" } } },
		["ctx.greet.shaman"] = { event = "greet", speaker = "character", styles = { "ironic", "ancient" }, depth = { "natural", "literary" }, tags = { "curiosity:high" }, conditions = { other = { kind = "player", class = "SHAMAN" } } },
		["ctx.greet.warlock"] = { event = "greet", speaker = "inner", styles = { "tragic", "ironic" }, depth = { "natural", "literary" }, tags = { "topic:demons", "curiosity:low" }, conditions = { other = { kind = "player", class = "WARLOCK" } } },
		-------------------------------------------------------------------
		-- Interlocutore: azioni recenti verso di noi (other_action) e al nostro fianco
		-------------------------------------------------------------------
		["ctx.act.duel"] = { event = "other_action", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "temperament:cheerful" }, conditions = { other = { kind = "player", actions = { "duel", within = 30 } } } },
		["ctx.act.duel.inner"] = { event = "other_action", speaker = "inner", styles = { "epic", "intimate" }, depth = { "literary" }, tags = { "temperament:fierce" }, conditions = { other = { actions = { "duel", within = 30 } } } },
		["ctx.act.invite"] = { event = "other_action", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "temperament:cheerful" }, conditions = { other = { actions = { "invite", within = 30 } } } },
		["ctx.act.emote"] = { event = "other_action", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "morality:hopeful" }, conditions = { other = { actions = { "emote", within = 30 } } } },
		["ctx.act.emote.friend"] = { event = "other_action", speaker = "narrator", styles = { "intimate", "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { other = { actions = { "emote", within = 30 }, relation = { "friend", "comrade" } } } },
		["ctx.act.trade"] = { event = "other_action", speaker = "inner", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "morality:pragmatic" }, conditions = { other = { actions = { "trade", within = 60 } } } },
		["ctx.act.quest"] = { event = "other_action", speaker = "inner", styles = { "intimate", "epic" }, depth = { "literary", "elevated" }, tags = { "motivation:duty" }, conditions = { other = { actions = { "quest_given", within = 60 } } } },
		["ctx.act.quest.gruff"] = { event = "other_action", speaker = "inner", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "other.temperament:gruff", "temperament:stoic" }, conditions = { other = { actions = { "quest_given", within = 60 }, temperament = "gruff" } } },
		["ctx.battle.ally"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "motivation:protection" }, conditions = { other = { actions = "ally" } } },
		["ctx.battle.player"] = { event = "battle", speaker = "inner", styles = { "tragic" }, depth = { "literary" }, tags = { "morality:conflicted" }, conditions = { other = { kind = "player", actions = "attacks" } } },
		["ctx.victory.ally"] = { event = "victory", speaker = "character", styles = { "intimate", "epic" }, depth = { "natural", "literary" }, tags = { "temperament:cheerful" }, conditions = { other = { actions = { "ally", within = 60 } } } },
		-------------------------------------------------------------------
		-- Luogo: ingresso (zone)
		-------------------------------------------------------------------
		["ctx.zone.dungeon"] = { event = "zone", speaker = "inner", styles = { "tragic", "epic" }, depth = { "literary" }, tags = { "place.instance:party", "temperament:resolute" }, conditions = { place = { instanceType = "party" } } },
		["ctx.zone.dungeon.echo"] = { event = "zone", speaker = "narrator", styles = { "ancient" }, depth = { "literary", "elevated" }, tags = { "place.instance:party" }, conditions = { place = { instanceType = "party" } } },
		["ctx.zone.dungeon.deep"] = { event = "zone", speaker = "inner", styles = { "ironic", "everyday" }, depth = { "natural", "literary" }, tags = { "place.tag:deep" }, conditions = { place = { instanceType = "party", tags = "deep" } } },
		["ctx.zone.dungeon.undead"] = { event = "zone", speaker = "inner", styles = { "tragic" }, depth = { "literary", "elevated" }, tags = { "place.tag:undead", "topic:undead", "topic:death" }, conditions = { place = { instanceType = "party", tags = { "undead", "plague" } } } },
		["ctx.zone.dungeon.fire"] = { event = "zone", speaker = "inner", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "place.tag:fire" }, conditions = { place = { instanceType = "party", tags = "fire" } } },
		["ctx.zone.dungeon.name"] = { event = "zone", speaker = "character", styles = { "everyday", "epic" }, depth = { "natural" }, tags = { "place.instance:party", "motivation:protection" }, conditions = { place = { instanceType = "party" } } },
		["ctx.zone.raid"] = { event = "zone", speaker = "narrator", styles = { "ceremonial", "epic" }, depth = { "literary", "elevated" }, tags = { "place.instance:raid" }, conditions = { place = { instanceType = "raid" } } },
		["ctx.zone.raid.respect"] = { event = "zone", speaker = "inner", styles = { "epic", "intimate" }, depth = { "natural", "literary" }, tags = { "place.instance:raid", "temperament:stoic" }, conditions = { place = { instanceType = "raid" } } },
		["ctx.zone.raid.dragon"] = { event = "zone", speaker = "inner", styles = { "epic", "tragic" }, depth = { "literary" }, tags = { "place.tag:dragon" }, conditions = { place = { instanceType = "raid", tags = "dragon" } } },
		["ctx.zone.bg"] = { event = "zone", speaker = "character", styles = { "epic" }, depth = { "natural" }, tags = { "place.instance:pvp" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.zone.bg.rules"] = { event = "zone", speaker = "inner", styles = { "ironic", "epic" }, depth = { "natural", "literary" }, tags = { "place.instance:pvp", "morality:disillusioned" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.zone.bg.name"] = { event = "zone", speaker = "narrator", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "place.instance:pvp" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.zone.arena"] = { event = "zone", speaker = "inner", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "place.instance:arena", "motivation:glory" }, conditions = { place = { instanceType = "arena" } } },
		["ctx.zone.arena.few"] = { event = "zone", speaker = "character", styles = { "epic", "ironic" }, depth = { "natural" }, tags = { "place.instance:arena" }, conditions = { place = { instanceType = "arena" } } },
		["ctx.zone.hostile"] = { event = "zone", speaker = "inner", styles = { "epic", "intimate" }, depth = { "natural", "literary" }, tags = { "place.territory:hostile", "temperament:resolute" }, conditions = { place = { territory = "hostile", instanceType = "none", capital = false } } },
		["ctx.zone.hostile.hood"] = { event = "zone", speaker = "narrator", styles = { "tragic", "everyday" }, depth = { "literary" }, tags = { "place.territory:hostile" }, conditions = { place = { territory = "hostile", instanceType = "none", capital = false } } },
		["ctx.zone.contested"] = { event = "zone", speaker = "inner", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "place.territory:contested" }, conditions = { place = { territory = "contested", instanceType = "none" } } },
		["ctx.zone.capital.friendly"] = { event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "place.tag:capital" }, conditions = { place = { friendlyCapital = true } } },
		["ctx.zone.capital.bed"] = { event = "zone", speaker = "character", styles = { "everyday", "ironic" }, depth = { "natural" }, tags = { "place.tag:capital", "temperament:cheerful" }, conditions = { place = { friendlyCapital = true } } },
		["ctx.zone.capital.enemy"] = { event = "zone", speaker = "inner", styles = { "tragic", "epic" }, depth = { "literary", "elevated" }, tags = { "place.tag:capital" }, conditions = { place = { hostileCapital = true } } },
		["ctx.zone.capital.banners"] = { event = "zone", speaker = "narrator", styles = { "tragic" }, depth = { "literary" }, tags = { "place.tag:capital" }, conditions = { place = { hostileCapital = true } } },
		["ctx.zone.sanctuary"] = { event = "zone", speaker = "inner", styles = { "ceremonial", "intimate" }, depth = { "literary", "elevated" }, tags = { "place.territory:sanctuary", "morality:hopeful" }, conditions = { place = { territory = "sanctuary" } } },
		["ctx.zone.sacred"] = { event = "zone", speaker = "narrator", styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" }, tags = { "place.tag:sacred", "faith:spiritual" }, conditions = { place = { tags = "sacred", instanceType = "none" } } },
		["ctx.zone.neutral"] = { event = "zone", speaker = "inner", styles = { "ironic", "everyday" }, depth = { "natural", "literary" }, tags = { "place.tag:neutral", "morality:pragmatic" }, conditions = { place = { tags = "neutral" } } },
		["ctx.zone.port"] = { event = "zone", speaker = "inner", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "place.tag:port", "curiosity:high" }, conditions = { place = { tags = "port", instanceType = "none" } } },
		["ctx.zone.rest"] = { event = "zone", speaker = "inner", styles = { "intimate", "everyday" }, depth = { "natural", "literary" }, tags = { "place.tag:inn" }, conditions = { place = { rest = true, capital = false } } },
		-- S7: ingressi poco coperti (dungeon, incursione, campo di battaglia, arena), locanda, capitale nemica
		["ctx.zone.dungeon.threshold"] = { event = "zone", speaker = "narrator", styles = { "epic", "everyday" }, depth = { "natural", "literary" }, tags = { "place.instance:party", "temperament:resolute" }, conditions = { place = { instanceType = "party" } } },
		["ctx.zone.raid.count"] = { event = "zone", speaker = "character", styles = { "epic", "everyday" }, depth = { "natural", "literary" }, tags = { "place.instance:raid", "motivation:protection" }, conditions = { place = { instanceType = "raid" } } },
		["ctx.zone.bg.horn"] = { event = "zone", speaker = "narrator", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "place.instance:pvp", "temperament:fierce" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.zone.arena.sand"] = { event = "zone", speaker = "narrator", styles = { "epic", "everyday" }, depth = { "natural" }, tags = { "place.instance:arena", "motivation:glory" }, conditions = { place = { instanceType = "arena" } } },
		["ctx.zone.rest.cloak"] = { event = "zone", speaker = "narrator", styles = { "intimate", "everyday" }, depth = { "natural", "literary" }, tags = { "place.tag:inn", "temperament:stoic" }, conditions = { place = { rest = true, capital = false } } },
		["ctx.zone.capital.enemy.guards"] = { event = "zone", speaker = "inner", styles = { "ironic", "tragic" }, depth = { "natural", "literary" }, tags = { "place.tag:capital", "morality:pragmatic" }, conditions = { place = { hostileCapital = true } } },
		-------------------------------------------------------------------
		-- Luogo: battaglia e vittoria (frasi brevi nei campi di battaglia e nelle arene)
		-------------------------------------------------------------------
		["ctx.battle.bg"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "place.instance:pvp", "temperament:resolute" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.battle.bg.cover"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural" }, tags = { "place.instance:pvp" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.battle.arena"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural" }, tags = { "place.instance:arena", "temperament:fierce" }, conditions = { place = { instanceType = "arena" } } },
		["ctx.battle.tank"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "motivation:protection" }, conditions = { group = { "party", "raid" }, place = { groupRole = "tank" } } },
		["ctx.battle.healer"] = { event = "battle", speaker = "inner", styles = { "intimate", "epic" }, depth = { "literary" }, tags = { "motivation:protection" }, conditions = { group = { "party", "raid" }, place = { groupRole = "healer" } } },
		["ctx.battle.hostile"] = { event = "battle", speaker = "inner", styles = { "epic", "tragic" }, depth = { "natural", "literary" }, tags = { "place.territory:hostile", "temperament:resolute" }, conditions = { place = { territory = "hostile", instanceType = "none" } } },
		["ctx.victory.bg"] = { event = "victory", speaker = "character", styles = { "epic" }, depth = { "natural" }, tags = { "place.instance:pvp" }, conditions = { place = { instanceType = "pvp" } } },
		["ctx.victory.arena"] = { event = "victory", speaker = "character", styles = { "epic", "ironic" }, depth = { "natural" }, tags = { "place.instance:arena", "motivation:glory" }, conditions = { place = { instanceType = "arena" } } },
		["ctx.victory.dungeon"] = { event = "victory", speaker = "inner", styles = { "epic", "intimate" }, depth = { "natural", "literary" }, tags = { "place.instance:party", "motivation:protection" }, conditions = { place = { instanceType = "party" } } },
		["ctx.victory.raid"] = { event = "victory", speaker = "inner", styles = { "epic", "tragic" }, depth = { "natural", "literary" }, tags = { "place.instance:raid", "temperament:stoic" }, conditions = { place = { instanceType = "raid" } } },
		-------------------------------------------------------------------
		-- Luogo: fine di uno scontro con un boss (encounter_end)
		-------------------------------------------------------------------
		["ctx.boss.win"] = { event = "encounter_end", speaker = "character", styles = { "epic" }, depth = { "natural", "literary" }, tags = { "motivation:glory" }, conditions = { place = { lastEncounter = true, encounterResult = "win" } } },
		["ctx.boss.win.hands"] = { event = "encounter_end", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary" }, conditions = { place = { lastEncounter = true, encounterResult = "win" } } },
		["ctx.boss.win.raid"] = { event = "encounter_end", speaker = "narrator", styles = { "ceremonial", "epic" }, depth = { "literary", "elevated" }, tags = { "place.instance:raid" }, conditions = { place = { lastEncounter = true, encounterResult = "win", instanceType = "raid" } } },
		["ctx.boss.wipe"] = { event = "encounter_end", speaker = "inner", styles = { "tragic", "intimate" }, depth = { "literary" }, tags = { "temperament:resolute" }, conditions = { place = { lastEncounter = true, encounterResult = "wipe" } } },
		["ctx.boss.wipe.again"] = { event = "encounter_end", speaker = "character", styles = { "ironic", "everyday" }, depth = { "natural" }, tags = { "temperament:stoic" }, conditions = { place = { lastEncounter = true, encounterResult = "wipe" } } },
		-- S7: il narratore a scontro finito, nella vittoria e nella sconfitta
		["ctx.boss.win.still"] = { event = "encounter_end", speaker = "narrator", styles = { "epic", "intimate" }, depth = { "natural", "literary" }, tags = { "temperament:stoic" }, conditions = { place = { lastEncounter = true, encounterResult = "win" } } },
		["ctx.boss.wipe.still"] = { event = "encounter_end", speaker = "narrator", styles = { "tragic", "intimate" }, depth = { "natural", "literary" }, tags = { "temperament:melancholic" }, conditions = { place = { lastEncounter = true, encounterResult = "wipe" } } },
	},
})
