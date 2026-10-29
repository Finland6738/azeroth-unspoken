-- Testi di base in italiano: incantesimi, viaggi e resurrezioni. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySpells.lua.
local ADDON, NS = ...

NS:AddTexts("itIT", {
	["atk.fire.01"] = {
		"Brucia! E che la cenere ricordi il mio nome.",
		"Brucia, e porta i miei saluti a chi ti ha mandato!",
	},
	["atk.fire.02"] = {
		"Il fuoco era qui prima dei re, e ci sarà dopo di loro.",
		"Prima delle città, prima delle spade, c'era la fiamma. Inchinati a lei.",
	},
	["atk.fire.03"] = {
		"Fa caldo, vero? Posso fare di meglio.",
		"Ti vedo un po' pallido. Rimedio subito.",
	},
	["atk.fire.04"] = {
		"Le fiamme non odiano nessuno. Divorano e basta.",
		"Il fuoco non fa preferenze. Oggi, semplicemente, sei tu.",
	},
	["atk.frost.01"] = {
		"Senti il gelo dei mari del nord. Lì nessuno canta.",
		"Il ghiaccio non ha mai fretta. Arriva al cuore lo stesso.",
	},
	["atk.frost.02"] = {
		"Calmati. Ecco, così. Immobile.",
		"Un attimo di pazienza. Ecco: adesso non hai scelta.",
	},
	["atk.frost.03"] = { "L'inverno arriva per tutti. Per te, prima." },
	["atk.shadow.01"] = {
		"L'ombra ti reclama. Non opporti: fa solo più male.",
		"Lascia andare. Il freddo che hai dentro conosce la strada.",
	},
	["atk.shadow.02"] = { "Ascolta i sussurri. Ti stanno chiamando per nome." },
	["atk.shadow.03"] = {
		"Ogni luce getta un'ombra. Io vengo da lì.",
		"Non sono {g:nato|nata} nel buio. Ci ho solo preso casa.",
	},
	["atk.holy.01"] = {
		"La Luce ti giudica. E non trova nulla da salvare.",
		"La Luce ti ha guardato dentro. Non le è piaciuto.",
	},
	["atk.holy.02"] = {
		"Splendi! Che le tenebre si ritraggano!",
		"Luce, adesso! Tutta quella che hai!",
	},
	["atk.holy.03"] = {
		"Questa luce ti brucia perché ricordi ciò che hai perduto.",
		"Ti ricordi il sole? Eccolo. Ti brucia perché un tempo lo amavi.",
	},
	["atk.nature.01"] = {
		"La tempesta risponde a chi sa chiamarla.",
		"Nuvole, a me. Avete un lavoro da fare.",
	},
	["atk.nature.02"] = { "Le radici, il tuono, la pioggia: il mondo intero è contro di te." },
	["atk.nature.03"] = {
		"Fulmine, cadi! Gli spiriti hanno fame!",
		"Tuono, rispondi! Gli spiriti reclamano la loro parte!",
	},
	["atk.nature.04"] = {
		"Luna, guarda giù. Mostrami la via.",
		"Luce d'argento, fatti lama.",
	},
	["atk.arcane.01"] = {
		"Le stelle stesse sono fatte di questo. Prova a contarle.",
		"Ogni stella ha un nome segreto. Questo è uno dei più brevi.",
	},
	["atk.arcane.02"] = {
		"Matematica applicata. Molto applicata.",
		"Teoria, pratica, e tu proprio nel mezzo.",
	},
	["atk.phys.01"] = {
		"Acciaio! Solo acciaio, e la mia rabbia!",
		"Ferro e fiato! Non serve altro!",
	},
	["atk.phys.02"] = { "Un colpo per ogni amico perduto!" },
	["atk.phys.03"] = {
		"Mi era scivolata la mano. Tra le tue costole.",
		"Ops. Credevo fosse la tasca.",
	},
	["atk.phys.04"] = {
		"Respira. Mira. Lascia andare.",
		"Il vento cala. Ora.",
	},
	["atk.spell.01"] = {
		"{spell}! Ascolta il suo nome, e tremane.",
		"Ascolta bene queste parole: sono le ultime che senti oggi.",
	},
	["atk.spell.02"] = {
		"Si chiama {spell}. Te lo dico perché dopo non potrai chiederlo.",
		"Non chiedermi come si chiama. Tanto non avrai modo di scriverlo.",
	},
	["atk.taunt.01"] = {
		"Qui! Guarda me! Io sono il tuo problema!",
		"Ehi! Sì, tu! Prova con me!",
	},
	["atk.shout.01"] = {
		"Sentite la mia voce, e ricordate chi siete!",
		"In piedi, tutti! Fatevi sentire!",
	},
	["atk.stealth.01"] = {
		"Non sono mai {g:stato|stata} qui.",
		"Qualcuno è passato di qui? No. Nessuno.",
	},
	["atk.e.01"] = {
		"muove le labbra senza suono, e l'aria intorno alle sue dita si fa densa come prima di un temporale.",
		"solleva una mano; per un istante la polvere a terra si alza e resta sospesa, in attesa.",
	},
	["atk.e.fire.01"] = {
		"schiude il palmo, e una lingua di fiamma ci danza sopra prima di partire.",
		"piega le dita come artigli; l'aria sa di zolfo e di stoffa bruciacchiata.",
	},
	["heal.01"] = {
		"Non è ancora il tuo giorno. Alzati.",
		"Su, su. Hai ancora strada da fare.",
	},
	["heal.02"] = {
		"Le ferite si chiudono. I ricordi, meno.",
		"Il taglio si richiude. Quello che l'ha aperto, invece, resta.",
	},
	["heal.03"] = {
		"Cerca di non farti ammazzare, ti prego. Ho altro da fare.",
		"Ti rimetto insieme. Per la terza volta. Oggi.",
	},
	["heal.04"] = {
		"In piedi! La battaglia ha ancora bisogno di te!",
		"Forza, su! Non hai ancora finito!",
	},
	["heal.05"] = {
		"{target}, resta con me. Guarda la mia voce, non il buio.",
		"Resta con me. Ascolta la mia voce, solo quella.",
	},
	["heal.holy.01"] = {
		"Luce, scorri attraverso di me come acqua in una fonte antica.",
		"Luce, passa da me. Io sono soltanto la porta.",
	},
	["heal.holy.02"] = {
		"Che la Luce ricordi il tuo nome, anche quando tu lo dimentichi.",
		"La Luce non si scorda di nessuno. Nemmeno di chi ne dubita.",
	},
	["heal.nature.01"] = {
		"Il bosco rinasce ogni primavera. Anche tu puoi.",
		"Come l'erba dopo la pioggia. Lascia che succeda.",
	},
	["heal.nature.02"] = {
		"Acqua che scorre, porta via il dolore e restituiscilo al mare.",
		"Acqua, lava via il bruciore. Rendi la calma.",
	},
	["heal.self.01"] = {
		"Mi curo da {g:solo|sola}. Come sempre. Nessuno pensa ai guaritori.",
		"Me la cavo da {g:solo|sola}. Ci sono {g:abituato|abituata}.",
	},
	["heal.combat.01"] = {
		"Tenete la linea! Io tengo voi!",
		"Avanti! Le ferite le conto io!",
	},
	["heal.scourge.01"] = { "La Luce mi brucia ancora un poco. Prendila tu, finché è calda." },
	["heal.e.01"] = {
		"intreccia le mani, e una luce tiepida si posa sulle ferite come neve che si scioglie.",
		"appoggia due dita sulla ferita e mormora qualcosa; il respiro di chi soffre rallenta.",
	},
	["heal.e.02"] = {
		"abbassa la voce fino a un mormorio, e il dolore intorno sembra fare un passo indietro.",
		"si china con le mani calde e ferme, senza fretta, come chi ha fatto questo gesto mille volte.",
	},
	["buff.01"] = {
		"Va', e porta con te un poco della mia forza.",
		"Prendi. Ne ho abbastanza per due.",
	},
	["buff.02"] = {
		"Ecco. Ora sei leggermente meno mortale. Non sprecarlo.",
		"Così reggi un colpo in più. Uno. Non fare il furbo.",
	},
	["buff.03"] = {
		"Che {spell} ti avvolga come un mantello nella notte fredda.",
		"Ecco una coperta che nessuno vede. Tienila stretta quando arriva il freddo.",
	},
	["buff.04"] = {
		"{target}, nessuna strada è troppo lunga per chi non cammina da solo.",
		"Va', e ricorda che qualcuno ti guarda le spalle.",
	},
	["buff.mage.01"] = { "Un po' di intelletto in più. Non dirò a nessuno che ne avevi bisogno." },
	["buff.priest.01"] = {
		"Sii forte, e se non puoi esserlo, fingi. Il resto lo farà la Luce.",
		"La Luce ti tenga in piedi. Se esita, ci sono io.",
	},
	["buff.paladin.01"] = { "Che la Luce ti benedica e ti renda saldo come la pietra di Forgiardente." },
	["buff.druid.01"] = {
		"La natura ti riconosce. Lasciala entrare.",
		"Senti il bosco sotto la pelle? È dalla tua parte.",
	},
	["buff.e.01"] = {
		"traccia nell'aria un segno antico, e per un attimo le rune restano accese come braci.",
		"sfiora l'aria col palmo aperto, e una brezza tiepida passa tra i presenti.",
	},
	["buff.e.02"] = {
		"posa due dita sulla fronte di chi ha davanti e le tiene lì, il tempo di un respiro.",
		"traccia un piccolo segno nell'aria davanti al compagno, con la cura di chi sigilla una lettera importante.",
	},
	["travel.home.01"] = {
		"Casa. Se ancora esiste una parola simile per gente come me.",
		"Casa. O almeno un letto che conosce la mia forma.",
	},
	["travel.home.02"] = {
		"Se qualcuno mi cerca, sono alla locanda. Se qualcuno mi cerca per soldi, non sono da nessuna parte.",
		"Torno alla locanda. Se l'oste chiede del conto, non mi hai visto.",
	},
	["travel.home.03"] = { "Ogni strada porta lontano. Stanotte questa mi riporta indietro." },
	["travel.home.04"] = {
		"Un fuoco acceso, un letto asciutto. A volte basta questo per non arrendersi.",
		"Una minestra calda e nessuno da salvare, per stanotte. Mi basta.",
	},
	["travel.e.home.01"] = {
		"rigira la pietra del ritorno tra le dita, ci soffia sopra e la stringe finché non diventa tiepida.",
		"si sistema la cinghia della borsa, guarda un'ultima volta la strada, e la pietra comincia a brillare.",
	},
	["travel.portal.01"] = {
		"Il mondo si piega. Passate, prima che cambi idea.",
		"Il passaggio è aperto. Niente domande, e non guardate in basso.",
	},
	["travel.portal.02"] = {
		"Portale aperto. Tenete le braccia dentro e non toccate le stelle.",
		"Avanti, avanti. Il portale non aspetta i ritardatari.",
	},
	["travel.tele.01"] = {
		"Un passo, e mille leghe. Gli arcani non conoscono la stanchezza.",
		"Le leghe si piegano come carta. Basta conoscere la piega giusta.",
	},
	["travel.astral.01"] = {
		"Spiriti, riportatemi dove il fuoco mi aspetta.",
		"Vento, riportami al focolare.",
	},
	["travel.e.01"] = {
		"stringe la pietra nel pugno; il mondo intorno sbiadisce come un ricordo all'alba.",
		"chiude gli occhi un istante, e i contorni del mondo tremolano come l'aria sopra un falò.",
	},
	["rezo.01"] = {
		"Torna, {target}. Il tuo cammino non è finito.",
		"Torna. Qui c'è ancora bisogno di te.",
	},
	["rezo.02"] = {
		"{target}, questa è l'ultima volta. Lo dico ogni volta.",
		"Ultima volta, eh. Lo giuro. Di nuovo.",
	},
	["rezo.03"] = {
		"Anima che vaghi, ascolta: qui c'è ancora chi ti aspetta.",
		"Segui la mia voce, anima smarrita. Il corpo ti aspetta ancora.",
	},
	["rezo.04"] = { "La morte non ha ancora finito di scrivere questa storia. Io sì." },
	["rezo.shaman.01"] = {
		"Antenati, restituitemi questo spirito. Ha ancora battaglie da combattere.",
		"Antenati, aprite la mano. Questo spirito torna con me.",
	},
	["rezo.druid.01"] = {
		"Come il seme dopo l'inverno: rinasci.",
		"Germoglia di nuovo. La primavera non chiede permesso.",
	},
	["rezo.paladin.01"] = {
		"La Luce non abbandona chi l'ha servita. Alzati.",
		"In piedi, nella Luce. Il tuo servizio non è finito.",
	},
	["rezo.e.01"] = {
		"posa la fronte su quella del caduto e sussurra un nome, finché il respiro non torna.",
		"posa una mano sul petto immobile e aspetta, finché sotto il palmo qualcosa non torna a battere.",
	},
	["rezo.e.02"] = {
		"si inginocchia nella polvere accanto al corpo e gli scosta i capelli dalla fronte, prima di cominciare.",
		"allarga le braccia sopra il compagno caduto; per un lungo momento non si sente nemmeno il vento.",
	},
}, "base_spells")
