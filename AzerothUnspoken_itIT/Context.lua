-- Testi in italiano delle frasi di interlocutore e luogo (step S6c, ampliati in S7). Le regole stanno in
-- Data/RegistryContext.lua. Le frasi del narratore sono emote: iniziano in minuscolo, perché il gioco antepone il
-- nome del personaggio. Le battute della voce NPC sono in prima persona dell'NPC e restano private.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	-- NPC: ruolo e carattere
	["ctx.npc.innkeeper"] = {
		"Un fuoco, una panca, qualcuno che chiede soltanto se hai fame. A volte basta questo.",
		"Le locande sono le uniche case che ti aprono la porta senza chiederti da dove vieni.",
	},
	["ctx.npc.innkeeper.jovial"] = {
		"ricambia il sorriso di {other}: in certe locande l'allegria si serve prima della birra.",
		"si lascia contagiare dal buonumore dietro il bancone, e il primo sorso sa già di festa.",
	},
	["ctx.npc.innkeeper.gruff"] = {
		"Poche parole, un boccale posato con forza sul banco. Qui il calore si misura in fatti.",
		"Niente sorrisi, niente chiacchiere. Però le lenzuola sono pulite e la porta chiude bene.",
	},
	["ctx.npc.merchant"] = {
		"Il mercante ti pesa con lo sguardo prima ancora di pesare le monete.",
		"Sorriso pronto, bilancia ancora più pronta.",
	},
	["ctx.npc.merchant.profit"] = {
		"osserva {other} soppesare ogni moneta, e sospetta di essere {g:stato soppesato|stata soppesata} a sua volta.",
		"nota che {other} non stacca mai gli occhi dalla borsa altrui, nemmeno mentre sorride.",
		"tiene la borsa ben chiusa finché non ha scelto che cosa comprare.",
	},
	["ctx.npc.trainer"] = {
		"Ogni maestro è stato allievo. Ascolta bene: un giorno toccherà a te insegnare.",
		"Ogni gesto che impari qui l'hanno già ripetuto mille mani prima delle tue.",
	},
	["ctx.npc.flightmaster"] = {
		"Ali pronte, cinghie tese. Il cielo è una strada che non conosce il fango.",
		"Laggiù, le strade che hai consumato a piedi. Da lassù sembreranno fili di lana.",
	},
	["ctx.npc.banker"] = {
		"Dietro una porta di ferro, al sicuro, c'è tutto ciò che oggi non ti serve. Strano tesoro.",
		"Tutto ciò che possiedi, diviso in due: quello che ti porti dietro e quello che dimentichi qui.",
	},
	["ctx.npc.questgiver"] = {
		"Dite pure. Se posso essere d'aiuto, lo sarò.",
		"Vi ascolto. Raccontatemi tutto, dall'inizio.",
	},
	["ctx.npc.questgiver.duty"] = {
		"Parla di dovere come chi non ha mai avuto il lusso di sceglierlo.",
		"Spalle dritte, voce stanca: un compito che nessuno si è mai offerto di portare al posto suo.",
	},
	["ctx.npc.formal"] = {
		"ascolta {other}, che sceglie ogni parola con cura, come una moneta da non sprecare.",
		"risponde con un piccolo inchino, adeguando il passo a tanta cerimonia.",
	},
	["ctx.npc.cryptic"] = {
		"Risposte a metà, una dopo l'altra. O è una prova, o c'è qualcosa che preferisce tacere.",
		"Ogni frase sembra una porta socchiusa. Che cosa ci sia dietro, chissà.",
	},
	["ctx.npc.melancholic"] = {
		"C'è una stanchezza in quello sguardo che nessun sorriso di cortesia riesce a coprire.",
		"Parla piano, come chi ha smesso da tempo di aspettarsi risposte.",
	},
	["ctx.npc.cheerful"] = {
		"Certe persone alleggeriscono la giornata solo restando dove sono.",
		"Una risata che arriva prima del saluto. Difficile non ricambiarla.",
	},
	-- voce NPC: la battuta che l'NPC potrebbe rivolgerci (privata, etichetta «NPC»)
	["ctx.npcv.innkeeper"] = {
		"Entra, entra, che fuori tira vento. C'è ancora posto vicino al fuoco.",
		"Un letto e una zuppa calda, se ti servono. Gli stivali lasciali accanto alla porta.",
	},
	["ctx.npcv.innkeeper.gruff"] = {
		"Stanza o boccale. Decidi.",
		"Il fango resta fuori. Il resto si paga prima.",
		"Pulito non è. Caldo sì. Prendere o lasciare.",
	},
	["ctx.npcv.innkeeper.jovial"] = {
		"Ah, una faccia nuova! Siediti, che la prima risata della sera è sempre la migliore.",
		"Piove, fuori? Allora qui dentro facciamo finta che sia festa.",
		"Hai l'aria di chi ha camminato parecchio. Il boccale grande, allora!",
	},
	["ctx.npcv.innkeeper.warm"] = {
		"Hai la faccia di chi non dorme da giorni. Siediti, ti porto qualcosa di caldo.",
		"Resta quanto ti serve. Qui nessuno ti mette fretta.",
	},
	["ctx.npcv.merchant"] = {
		"Guarda pure, toccare non costa niente. Rompere, un po' di più.",
		"Roba buona, appena arrivata. Se cerchi qualcosa che non vedi, chiedi.",
	},
	["ctx.npcv.merchant.gruff"] = {
		"Compri o guardi? Guardare non mi paga la cena.",
		"Il prezzo è quello. Non si tratta.",
		"Se non ti piace, la strada è lì.",
	},
	["ctx.npcv.merchant.jovial"] = {
		"{g:Benvenuto|Benvenuta}! Oggi sono in vena di generosità. Più o meno.",
		"Per te, uno sconto immaginario! Il prezzo resta quello, ma il sorriso è vero.",
	},
	["ctx.npcv.guard"] = {
		"Strada tranquilla, per ora. Tieni la lama nel fodero e tranquilla resterà.",
		"Se cerchi guai, hai sbagliato strada. Per tutto il resto, chiedi pure.",
	},
	["ctx.npcv.guard.terse"] = {
		"Circolare.",
		"Niente risse. Niente fuochi. Avanti.",
		"Ti tengo d'occhio. Niente di personale.",
	},
	["ctx.npcv.guard.formal"] = {
		"Buona giornata. Viaggiate con prudenza, e rispettate la legge di queste terre.",
		"Siete {g:il benvenuto|la benvenuta}, finché la pace di questo luogo resta intatta.",
	},
	["ctx.npcv.banker"] = {
		"Deposito o ritiro? E conta due volte, prima di andartene.",
		"Le tue cose sono al riparo, qui. Più di quanto lo sarai tu, là fuori.",
	},
	["ctx.npcv.trainer"] = {
		"Di nuovo qui? Bene. Vediamo che cosa ti ha insegnato la strada.",
		"Ogni lezione costa fatica. Quella che salti costa di più.",
	},
	["ctx.npcv.trainer.gruff"] = {
		"Ancora in piedi? Allora qualcosa hai imparato. Ascolta.",
		"Meno chiacchiere. Fammi vedere che cosa sai fare.",
	},
	["ctx.npcv.flightmaster"] = {
		"Tieni strette le cinghie e non guardare giù, almeno le prime volte.",
		"Ha mangiato da poco, è di buon umore. Sali pure.",
		"Il vento è buono, oggi. Arriverai prima di accorgertene.",
	},
	["ctx.npcv.questgiver"] = {
		"Ehi, tu! Sì, proprio tu. Hai un momento? Non ti ruberò molto tempo.",
		"Speravo che passasse qualcuno come te. Ascoltami, ti prego.",
	},
	["ctx.npcv.questgiver.formal"] = {
		"Vi ringrazio di esservi {g:fermato|fermata}. Ciò che devo chiedervi non è cosa da poco.",
		"Ascoltatemi, vi prego. Mi serve qualcuno di cui potermi fidare.",
	},
	-- saluti per ruolo, terra d'origine e mestiere
	["ctx.greet.guard"] = {
		"Buona guardia a voi. Le strade sono tranquille, stanotte?",
		"Tutto in ordine, qui? Se serve una mano, chiedete.",
	},
	["ctx.greet.leader"] = {
		"Con rispetto. Non capita spesso di stare davanti a chi porta il peso di un intero popolo.",
		"È un onore. Parlerò poco e ascolterò molto.",
	},
	["ctx.greet.enemy"] = {
		"Non capirai una parola, lo so. Ma un saluto resta un saluto.",
		"Lingue diverse, stesso fango sugli stivali. Salute.",
	},
	["ctx.greet.human"] = {
		"Salute. Un volto di casa, così lontano da casa.",
		"Salute! Riconoscerei quell'accento anche nel mercato più rumoroso.",
	},
	["ctx.greet.dwarf"] = {
		"Salute a te. Le montagne di Khaz Modan ti hanno mandato parecchio lontano.",
		"Salute! Scommetto che sai riconoscere il ferro buono a occhio.",
	},
	["ctx.greet.nightelf"] = {
		"Che la luce della luna ti accompagni lungo la strada.",
		"Salute. I boschi del nord ti hanno insegnato a camminare senza far rumore, vedo.",
	},
	["ctx.greet.gnome"] = {
		"Salute! Se mi spieghi come funziona quell'aggeggio che porti, il prossimo giro lo offro io.",
		"Salute! Se ti serve un paio di mani per reggere i pezzi, le mie sono libere.",
	},
	["ctx.greet.orc"] = {
		"Salute a te. Il sole di Durotar ti ha lasciato il suo segno, vedo.",
		"Salute. Hai il passo di chi viene da terre rosse e asciutte.",
	},
	["ctx.greet.tauren"] = {
		"Che la Madre Terra cammini al tuo fianco.",
		"Salute a te. Le pianure di Mulgore sono lontane, ma il vento è lo stesso.",
	},
	["ctx.greet.troll"] = {
		"Salute, viandante delle isole. Il mare ti ha portato fin qui.",
		"Salute. Scommetto che quest'aria ti sembra fin troppo fredda.",
	},
	["ctx.greet.forsaken"] = {
		"Salute. Non chiederò cosa hai lasciato indietro, se tu non lo chiedi a me.",
		"Salute. Le strade sono lunghe per tutti, chiunque tu sia {og:stato|stata} un tempo.",
	},
	["ctx.greet.priest"] = {
		"Una benedizione in più non guasta mai, no?",
		"Salute. Se stasera hai una parola buona in avanzo, la prendo volentieri.",
	},
	["ctx.greet.mage"] = {
		"Tieni le scintille lontane dal mio mantello, d'accordo?",
		"Salute. Ho sempre voluto chiederlo: i libri ve li portate dietro tutti?",
	},
	["ctx.greet.warrior"] = {
		"Bella lama. Spero di non vederla mai puntata dalla mia parte.",
		"Salute. Quell'acciaio ha visto parecchie mattine di lavoro, si capisce.",
	},
	["ctx.greet.rogue"] = {
		"Passi senza rumore. Te ne sei {g:accorto|accorta} solo quando ha voluto farsi notare.",
		"Tiene sempre un muro alle spalle. Abitudine del mestiere, forse.",
	},
	["ctx.greet.hunter"] = {
		"Bella bestia, quella che ti segue. Più sveglia di metà della gente che conosco.",
		"Salute. Si vede che conosci le tracce meglio delle strade.",
	},
	["ctx.greet.paladin"] = {
		"Armatura lucida, sguardo fermo. Che la tua causa sia salda quanto il tuo acciaio.",
		"Salute. Che la Luce ti tenga il passo saldo.",
	},
	["ctx.greet.druid"] = {
		"Profumi di bosco e di pioggia. Hai camminato a lungo, lontano dalle strade.",
		"Salute. Hai l'aria di chi parla più spesso con gli alberi che con le persone.",
	},
	["ctx.greet.shaman"] = {
		"Dicono che gli elementi ti ascoltino. Spero che oggi siano di buon umore.",
		"Salute. Dicono che sentiate arrivare la pioggia prima di chiunque altro. È vero?",
	},
	["ctx.greet.warlock"] = {
		"Qualcosa, nell'aria intorno, fa rizzare i peli sulle braccia. Meglio non chiedere.",
		"Un vago odore di zolfo. Certi mestieri restano addosso anche a chi sta fermo.",
	},
	-- azioni recenti
	["ctx.act.duel"] = {
		"Un duello? E sia. Ma se perdo, la colpa è del sole negli occhi.",
		"Accetto. Ma niente colpi bassi, che domani devo ancora camminare.",
	},
	["ctx.act.duel.friend"] = {
		"Un duello con te? E sia. Ci andrò piano, e tu farai finta di non accorgertene.",
		"Ah! Dimmi la posta: chi perde paga il prossimo giro.",
	},
	["ctx.act.duel.rival"] = {
		"Finalmente. Era da tempo che volevo misurarmi con te.",
		"Accetto. Niente trucchi, niente pietà; non ti aspetteresti altro.",
	},
	["ctx.act.duel.enemy"] = {
		"Un duello. Non farò finta di non averlo aspettato.",
		"Sguaina la lama. Tra noi non resta nulla che le parole possano sistemare.",
	},
	["ctx.act.duel.wary"] = {
		"Una sfida da chi non ha mai avuto la mia fiducia. Guarda le mani, non il viso.",
		"Ogni istinto dice che è una trappola. Eppure c'è la lama nella tua mano e la folla che guarda.",
	},
	["ctx.act.duel.inner"] = {
		"Una sfida lanciata così, senza rancore. Solo per vedere chi è più svelto.",
		"Il cuore accelera prima ancora che la mano trovi l'elsa.",
	},
	["ctx.act.invite"] = {
		"Un invito? Volentieri. Le strade sono più corte in compagnia.",
		"Volentieri. Ditemi dove andiamo e che cosa devo evitare di colpire.",
	},
	["ctx.act.emote"] = {
		"Un gesto rivolto proprio a te, in mezzo a tanta gente. Piccole cose che restano.",
		"Un cenno da uno sconosciuto. Non costa niente, eppure scalda.",
	},
	["ctx.act.emote.friend"] = {
		"ricambia il saluto di {other} da lontano, come si fa tra vecchi amici.",
		"risponde al gesto con un sorriso aperto, senza bisogno di parole.",
	},
	["ctx.act.trade"] = {
		"Uno scambio onesto è una piccola stretta di mano tra sconosciuti.",
		"Merce in cambio di merce. Si faceva così molto prima che qualcuno coniasse una moneta.",
	},
	["ctx.act.quest"] = {
		"Un altro incarico, un'altra promessa. Il mondo è pieno di gente che aspetta qualcuno come te.",
		"Un nome in più sulla lista di chi conta su di te. Pesa, e un po' fa anche piacere.",
	},
	["ctx.act.quest.gruff"] = {
		"Nemmeno un grazie in anticipo. Va bene così: forse arriverà a lavoro finito.",
		"Un grugnito e un ordine. Il ringraziamento, se arriva, sarà ancora più corto.",
	},
	["ctx.battle.ally"] = {
		"Non sei {og:solo|sola}! Teniamo la linea insieme!",
		"Spalla a spalla! Non mollare!",
	},
	["ctx.battle.player"] = {
		"Una persona, non una bestia. Quello che succede adesso lo ricorderai.",
		"Un volto, una voce, forse qualcuno che aspetta il suo ritorno. Non pensarci, adesso.",
	},
	["ctx.victory.ally"] = {
		"Grazie della mano. Senza di te sarebbe finita peggio.",
		"Bel lavoro, davvero. Ti devo un boccale.",
	},
	-- luoghi: ingresso
	["ctx.zone.dungeon"] = {
		"Le pareti si stringono, la luce si fa scarsa. Da qui in avanti ogni passo ha un prezzo.",
		"L'aria cambia al primo passo: più fredda, più vecchia, più attenta.",
	},
	["ctx.zone.dungeon.echo"] = {
		"lascia fuori il rumore del mondo: qui dentro resta soltanto l'eco dei passi.",
		"abbassa la voce senza volerlo, come se le pietre potessero ascoltare.",
	},
	["ctx.zone.dungeon.deep"] = {
		"Sottoterra il tempo non si conta in ore, ma in torce consumate.",
		"Più si scende, più la luce del sole sembra una diceria.",
	},
	["ctx.zone.dungeon.undead"] = {
		"Un tempo qui viveva qualcuno. Il silenzio rimasto ha ancora la forma delle loro voci.",
		"Odore di terra smossa e di stoffa marcita. Qualcuno, qui, non è rimasto dove l'avevano sepolto.",
	},
	["ctx.zone.dungeon.fire"] = {
		"L'aria brucia in gola. Chi ha costruito questo posto non pensava certo agli ospiti.",
		"Il sudore evapora prima ancora di colare. Posto delizioso per una gita.",
	},
	["ctx.zone.dungeon.name"] = {
		"{instance}. Restiamo uniti e usciamo tutti, d'accordo?",
		"Torce accese, occhi aperti. Si entra.",
	},
	["ctx.zone.dungeon.threshold"] = {
		"controlla le fibbie una a una, poi fissa il primo corridoio.",
		"si ferma sulla soglia per il tempo di un respiro, prima di lasciarsi alle spalle la luce del giorno.",
	},
	["ctx.zone.raid"] = {
		"prende posto tra decine di compagni: molti respiri, un solo battito.",
		"si unisce alla lunga colonna di acciaio e mantelli che avanza verso l'ingresso.",
	},
	["ctx.zone.raid.respect"] = {
		"Senti il peso di ciò che vi aspetta. Non è paura: è rispetto.",
		"Tante voci intorno a te, e il tuo respiro che non vuole saperne di calmarsi.",
	},
	["ctx.zone.raid.dragon"] = {
		"Ali enormi, da qualche parte nel buio. Il calore arriva prima del ruggito.",
		"Scaglie rimaste sulla roccia, larghe come scudi. Meglio non chiedersi da quanto.",
	},
	["ctx.zone.raid.count"] = {
		"Contatevi. Voglio sentire tutti i nomi anche all'uscita.",
		"Pozioni, bende, nervi saldi. Se manca qualcosa, ditelo adesso.",
	},
	["ctx.zone.bg"] = {
		"In posizione. Niente eroi solitari.",
		"Occhi aperti, voce alta. Segnalate tutto.",
	},
	["ctx.zone.bg.rules"] = {
		"Bandiere, corni, grida. Qui anche la guerra ha le sue regole.",
		"Si combatte per una bandiera. A pensarci bene, è sempre stato così.",
	},
	["ctx.zone.bg.name"] = {
		"stringe le cinghie e guarda il campo di {instance}.",
		"si aggiusta l'elmo e fissa la linea avversaria, lontana.",
	},
	["ctx.zone.bg.horn"] = {
		"sente un corno lontano e stringe l'arma.",
		"guarda le bandiere schioccare nel vento, dall'altra parte del campo.",
	},
	["ctx.zone.arena"] = {
		"Sabbia, spalti, nessuna via d'uscita. Solo la prossima mossa.",
		"Gli spalti urlano, ma arrivano ovattati. Ci sei tu, e chi hai davanti.",
	},
	["ctx.zone.arena.few"] = {
		"Pochi contro pochi. Nessuna scusa.",
		"Pronti. Si comincia.",
	},
	["ctx.zone.arena.sand"] = {
		"saggia la sabbia con la punta dello stivale.",
		"scioglie le spalle mentre gli spalti si fanno rumorosi.",
	},
	["ctx.zone.hostile"] = {
		"Terre che non ti vogliono. Cammina come se avessi tutto il diritto di essere qui.",
		"Ogni sguardo che incroci potrebbe essere una domanda. Non dare risposte.",
	},
	["ctx.zone.hostile.hood"] = {
		"abbassa il cappuccio sugli occhi: qui le sentinelle portano altri colori.",
		"lascia la strada maestra per un sentiero più stretto, tra i rovi.",
	},
	["ctx.zone.contested"] = {
		"Terra di nessuno, o di tutti. Che di solito è peggio.",
		"Qui le bandiere cambiano più spesso delle stagioni.",
	},
	["ctx.zone.capital.friendly"] = {
		"Mura amiche, voci conosciute. Per un po' puoi abbassare la guardia.",
		"Il vociare dei mercati, l'odore del pane. Certe cose ti aspettano senza saperlo.",
	},
	["ctx.zone.capital.bed"] = {
		"Finalmente un letto vero, e un pasto che non ho dovuto cacciarmi da {g:solo|sola}.",
		"Prima un bagno, poi la cena, poi che nessuno mi svegli.",
	},
	["ctx.zone.capital.enemy"] = {
		"Il cuore del nemico batte tutto intorno a te. Non fargli sentire il tuo.",
		"Mura che hai visto solo sulle mappe. Da vicino sono più alte, e ti guardano.",
	},
	["ctx.zone.capital.banners"] = {
		"cammina sotto bandiere straniere, e si sente {g:un intruso|un'intrusa} a ogni passo.",
		"abbassa lo sguardo al passaggio di una pattuglia, contando i passi fino al vicolo più vicino.",
	},
	["ctx.zone.capital.enemy.guards"] = {
		"Ogni guardia che non ti ferma è una piccola vittoria. Non contarle ad alta voce.",
		"Respira piano. Qui anche i bambini riconoscono uno straniero.",
	},
	["ctx.zone.sanctuary"] = {
		"Qui le armi riposano. Una tregua che nessuno ha firmato, eppure tutti rispettano.",
		"Qui perfino i nemici abbassano la voce. Strano, quanto poco basti.",
	},
	["ctx.zone.sacred"] = {
		"rallenta il passo senza accorgersene: qui c'è una quiete che non dipende dal vento.",
		"si scopre il capo senza che nessuno lo chieda, come sulla soglia di una casa altrui.",
	},
	["ctx.zone.neutral"] = {
		"Una città dove tutti sono benvenuti, purché paghino. Onesta, a modo suo.",
		"Qui conta il colore delle monete, non quello delle bandiere.",
	},
	["ctx.zone.port"] = {
		"Odore di sale e di corde bagnate. Da qui si salpa verso posti che non hai ancora immaginato.",
		"Gabbiani, botti, marinai che imprecano in tre lingue. Prima o poi, da qui passa il mondo intero.",
	},
	["ctx.zone.rest"] = {
		"Un fuoco acceso, una sedia libera. Il cammino può aspettare fino a domani.",
		"Il tintinnio dei boccali, una risata dal fondo della sala. Qui nessuno ti chiede niente.",
	},
	["ctx.zone.rest.cloak"] = {
		"si scuote di dosso la polvere della strada e cerca con gli occhi una panca libera.",
		"appende il mantello vicino al fuoco e lascia che il tepore faccia il resto.",
	},
	-- luoghi: battaglia e vittoria
	["ctx.battle.bg"] = {
		"Avanti, insieme!",
		"Spingete, non fermatevi!",
	},
	["ctx.battle.bg.cover"] = {
		"Copritemi!",
		"Serve una mano qui!",
	},
	["ctx.battle.arena"] = {
		"Adesso. Senza esitare!",
		"Il primo errore è loro. Avanti!",
	},
	["ctx.battle.tank"] = {
		"Guardate me, non loro!",
		"Dietro di me! Li tengo io!",
	},
	["ctx.battle.healer"] = {
		"Conta i respiri dei tuoi compagni. Nessuno cade, finché resti in piedi tu.",
		"Una ferita qui, una là. Le mani sanno già dove andare.",
	},
	["ctx.battle.hostile"] = {
		"Lontano da casa. E loro lo sanno.",
		"Ogni sentiero, qui, lavora per loro. Non per te.",
	},
	["ctx.victory.bg"] = {
		"Tenuto! Al prossimo.",
		"Ottimo! Restiamo compatti.",
	},
	["ctx.victory.arena"] = {
		"Ben giocato. Il prossimo sarà più duro.",
		"Fatto. Un sorso d'acqua, e di nuovo.",
	},
	["ctx.victory.dungeon"] = {
		"Un passo più in fondo. Nessuno indietro.",
		"Un corridoio in meno. Le gambe protestano, ma reggono.",
	},
	["ctx.victory.raid"] = {
		"Un altro passo. La sala davanti è ancora lunga.",
		"Uno in meno. Il fiato tienilo per quello che viene dopo.",
	},
	-- fine di uno scontro con un boss
	["ctx.boss.win"] = {
		"{encounter} è a terra! Respirate, ve lo siete guadagnato.",
		"Giù! Tutti interi? Fatevi sentire!",
	},
	["ctx.boss.win.hands"] = {
		"È finita. Le mani tremano solo adesso.",
		"Il cuore ci mette un po' a capire che può rallentare.",
	},
	["ctx.boss.win.raid"] = {
		"resta in silenzio un istante: il silenzio di chi ha resistito insieme agli altri.",
		"resta immobile mentre l'esultanza dei compagni rimbomba sotto la volta.",
	},
	["ctx.boss.win.still"] = {
		"abbassa l'arma solo quando nella sala non si muove più nulla.",
		"guarda {encounter} a terra e lascia finalmente andare il fiato.",
	},
	["ctx.boss.wipe"] = {
		"Non stavolta. Ci si rialza, si capisce l'errore, si torna.",
		"Si sbaglia, si impara. Brucia lo stesso, ma si impara.",
	},
	["ctx.boss.wipe.again"] = {
		"Va bene, va bene. Di nuovo, e con più calma.",
		"Niente panico. Rifacciamo il punto e riproviamo.",
	},
	["ctx.boss.wipe.still"] = {
		"fissa il punto in cui tutto è andato storto, come per impararlo a memoria.",
		"si passa una mano sul viso mentre il silenzio torna a riempire la sala.",
	},
	["faction.alliance.npc_meet.01"] = {
		"Una guardia dell'Alleanza. Posto diverso, armatura diversa, lo stesso sguardo negli occhi: dei nostri, finché non si dimostra il contrario.",
		"Da qualunque popolo venga questa guardia, i suoi occhi mi fanno il cenno che conosco: la cortesia rapida e stanca della nostra parte.",
	},
	["faction.alliance.npc_meet.02"] = {
		"Grifone o ippogrifo, non sono {g:schizzinoso|schizzinosa}. Basta che abbia mangiato da poco.",
		"Qualunque cosa abbia le ali e un buon carattere. Il carattere lo pago a parte.",
	},
	["faction.alliance.other_action.01"] = {
		"Un duello fra alleati? D'accordo. Meglio che i punti deboli ce li scopriamo noi, prima che lo faccia l'Orda.",
		"Accetto. Ammaccami adesso, così le battaglie vere mi troveranno più {g:duro|dura} da ammaccare.",
	},
	["faction.horde.npc_meet.01"] = {
		"Orco, tauren, troll o Reietto, una guardia dell'Orda mi guarda sempre allo stesso modo: dei nostri, quindi niente scherzi.",
		"Lo sguardo della guardia mi passa sopra e va oltre. Dalla nostra parte, è il benvenuto più caloroso che una guardia sappia dare.",
	},
	["faction.horde.npc_meet.02"] = {
		"Viverna o pipistrello, per me è uguale. Tanto mi terrò con tutte e due le mani.",
		"Qualunque cosa voli oggi, a lei un carattere tranquillo e alle mie mani una presa salda.",
	},
	["faction.horde.other_action.01"] = {
		"Un invito? Bene. L'Orda non è mai stata fatta per camminare da sola.",
		"Ci sto. Piccola quanto vuoi, è pur sempre una banda da guerra dell'Orda.",
	},
	["race.dwarf.npc_meet.001"] = {
		"La prima cosa che guardo in una locanda è la porta della cantina. Con una buona cantina, il resto si perdona da sé.",
		"Una locanda vale quanto i suoi barili. Vediamo che cosa tiene giù in cantina chi sta al banco.",
	},
	["race.dwarf.npc_meet.002"] = {
		"Prima la fattura, poi i prezzi. Un nano non compra mai al contrario.",
		"Diamo un'occhiata alla merce. I prezzi sono chiacchiere; il buon lavoro non ne ha bisogno.",
	},
	["race.dwarf.other_action.001"] = {
		"Un gruppo? Ci sto. Ogni spedizione ha bisogno di qualcuno che distingua la roccia dalla robaccia.",
		"Sì, vengo anch'io. Un nano nel gruppo è come una buona lampada in miniera.",
	},
	["race.gnome.npc_meet.001"] = {
		"Qualcuno che insegna! Splendido. Ho una lista di quaranta domande e cercherò di fermarmi a venti.",
		"Lezioni. La mia cosa preferita, subito dopo smontare le cose.",
	},
	["race.gnome.npc_meet.002"] = {
		"Bestie volanti. Creature splendide, ma continuo a pensare a quanto sarebbero migliori con un rotore.",
		"Niente motore, niente indicatore del carburante, solo ali. Primitivo. Affascinante, ma primitivo.",
	},
	["race.gnome.other_action.001"] = {
		"Un duello? Splendido! Era tempo che volevo collaudare qualche teoria sul campo.",
		"Accetto! Se perdo, era un esperimento controllato.",
	},
	["race.human.npc_meet.001"] = {
		"Una guardia in ordine. Mi rassicura ancora, dopo gli anni dei Defias sulle strade.",
		"Occhio vigile e posto ben tenuto. Chiunque paghi questa guardia, spero che la paghi puntuale.",
	},
	["race.human.npc_meet.002"] = {
		"Ecco chi tiene la locanda. Ogni villaggio umano che ho conosciuto si reggeva su una persona così e su una grossa pentola di qualcosa.",
		"Le locande sono il posto dove la mia gente governa davvero: davanti allo stufato, con la porta aperta.",
	},
	["race.human.other_action.001"] = {
		"Uno scambio onesto, allora. A casa mia la piazza del mercato decideva più del consiglio.",
		"Scambiamo, e che ognuno se ne vada pensando di averci guadagnato. Questo è un buon affare.",
	},
	["race.nightelf.npc_meet.001"] = {
		"Cavalcature alate, e chi ne conosce l'umore. Il mio popolo non ha mai domato il cielo: gliel'ha chiesto con garbo.",
		"Chi custodisce i voli. Mi fido più delle bestie che delle cinghie, e di chi le custodisce più di tutto.",
	},
	["race.nightelf.npc_meet.002"] = {
		"Chi insegna. Shan'do, diciamo noi: maestro onorato. La parola chiede pazienza da entrambe le parti.",
		"Qualunque età abbia, chi insegna resta chi insegna. Ascolto con il rispetto che il mio popolo riserva agli alberi più vecchi.",
	},
	["race.nightelf.other_action.001"] = {
		"Una piccola cortesia da poco lontano. I popoli dalla vita breve salutano in fretta; cerco di rispondere alla stessa velocità.",
		"Un saluto da qualcuno che passa, breve come una lucciola. Eppure accende qualcosa.",
	},
	["race.orc.npc_meet.001"] = {
		"Carne, un fuoco, e un angolo dove tenere le spalle al muro. Non chiedo altro.",
		"Qualcosa di caldo, e qualcosa di forte da bere. Pago, e non rompo niente. Probabilmente.",
	},
	["race.orc.npc_meet.002"] = {
		"{other} ha qualcosa da insegnarmi. Gli anziani dicono che chi combatte e non impara è solo un cadavere testardo che aspetta il suo turno.",
		"Imparo da {other}. L'orgoglio mi dice che so abbastanza. L'orgoglio ha già mentito agli orchi, in passato.",
	},
	["race.orc.other_action.001"] = {
		"Un duello! Bene. Niente calma il sangue come un combattimento onesto.",
		"Vuoi mettermi alla prova? Va bene. Niente rancori dopo, chiunque vinca.",
	},
	["race.scourge.npc_meet.001"] = {
		"{other} mi chiede se mangerò. Una domanda gentile, e coraggiosa. Rispondo di no, per risparmiare entrambi.",
		"Una stanza? La prendo. Non dormo, ma rimuginare è più comodo con una porta da chiudere.",
	},
	["race.scourge.npc_meet.002"] = {
		"Niente paura, le mie monete sono pulite. Più delle mie mani, di sicuro.",
		"Compro, se te la senti di prendere soldi da un cadavere.",
	},
	["race.scourge.other_action.001"] = {
		"Un invito? A me? I vivi si fanno sempre più coraggiosi.",
		"Un gruppo. D'accordo. Non mangio le vostre razioni, e non mi serve un turno per dormire.",
	},
	["race.tauren.npc_meet.001"] = {
		"{other} guarda lo stipite, poi le mie corna, poi di nuovo lo stipite. Uno sguardo che conosco bene.",
		"I letti delle locande sono sempre un po' corti. Dormirò {g:rannicchiato|rannicchiata} come un vitello. Mi è andata peggio.",
	},
	["race.tauren.npc_meet.002"] = {
		"Nelle pianure si commerciava a carichi di kodo. Cercherò di ragionare in piccolo.",
		"Fammi vedere la roba buona. Il mio popolo non ha mai mercanteggiato granché: semplicemente, se ne andava.",
	},
	["race.tauren.other_action.001"] = {
		"Un duello? Dalle mie parti si fa la lotta per divertimento. Occhio alle corna.",
		"E va bene. Se vinco, mi aiuti a trovare una porta da cui passare senza chinarmi.",
	},
	["race.troll.npc_meet.001"] = {
		"Hai niente che venga dalle isole? Pesce secco, cocco, qualcosa? No? Allora fammi vedere il resto.",
		"Cosa c'è di buono oggi? E non dirmi tutto: ti si legge in faccia.",
	},
	["race.troll.npc_meet.002"] = {
		"{other} ha qualcosa da insegnare. Gli anziani dicono che un troll che smette di imparare comincia a rimpicciolire.",
		"Ogni maestro che incontro aggiunge una perlina al filo. {other} potrebbe valerne due.",
	},
	["race.troll.other_action.001"] = {
		"Un gruppo? Certo. Io porto la fortuna, tu porti da mangiare.",
		"Ci sto. Un Darkspear non dice mai di no a una buona compagnia.",
	},
	["faction.alliance.npc_meet.w02.01"] = {
		"Un locandiere dell'Alleanza. Qualunque sia l'accento, il benvenuto suona uguale: siediti, mangia, pagherai dopo.",
		"Umano, nano, gnomo o elfo, un oste dell'Alleanza ha sempre la stessa regola: niente risse al chiuso, e via gli stivali dal tavolo.",
		"Un tetto amico sotto una bandiera amica. Dopo la strada, vale più del letto.",
	},
	["faction.alliance.other_action.w02.01"] = {
		"Un invito da qualcuno dei nostri? Volentieri. Le strade sono lunghe, e l'Alleanza le percorre meglio insieme.",
		"Felice di unirmi. Insieme arriveremo più lontano che ognuno per conto suo.",
	},
	["faction.horde.npc_meet.w02.01"] = {
		"Un mercante dell'Orda. Contrattare con uno dei tuoi è metà del divertimento e nessun rischio.",
		"Merci da Orgrimmar, Thunder Bluff, Undercity... l'Orda commercia come combatte: tutti insieme, e un po' a voce alta.",
		"Le monete passano di mano in mano e restano nell'Orda. Un affare che mi sta bene.",
	},
	["faction.horde.other_action.w02.01"] = {
		"Un duello fra compagni. Bene. Meglio un livido da un amico che una sorpresa dall'Alleanza.",
		"Un duello amichevole? Bene. Teniamoci in esercizio adesso, e dopo l'Alleanza troverà pane per i suoi denti.",
	},
	["race.dwarf.npc_meet.w02.01"] = {
		"Un banchiere. La mia gente si fida di due cose: le cripte di pietra e i propri conti. Vediamo come conta questo qui.",
		"Oro custodito nel caveau di un altro. Ogni nano conosce quel prurito: vorresti scendere a controllarlo di persona.",
		"Un caveau e qualcuno che lo custodisce. Bene. Conterò comunque tutto due volte, come si deve per un nano.",
	},
	["race.dwarf.other_action.w02.01"] = {
		"Un duello? Volentieri. Picchia pure quanto vuoi: alla pietra serve un po' per accorgersene.",
		"Un incontro per sport? Ci sto. Solo, dopo non andare a piangere dall'oste.",
	},
	["race.gnome.npc_meet.w02.01"] = {
		"Merce! Do solo un'occhiata. Più o meno. Quello è un cardine a molla?",
		"Pagherei il doppio per qualsiasi cosa con degli ingranaggi dentro. Speriamo che il mercante non se ne accorga.",
		"Vediamo la merce. Cercherò di non smontare niente prima di averlo pagato.",
	},
	["race.gnome.other_action.w02.01"] = {
		"Un invito! Splendido. Io porto gli attrezzi, qualcun altro porti i muscoli.",
		"Un gruppo! Eccellente. Il lavoro di squadra è ingegneria, solo con le persone dentro.",
	},
	["race.human.npc_meet.w02.01"] = {
		"Quello sguardo: qualcuno con un problema, che spera che io sia la soluzione. Gli umani hanno costruito interi regni su meno.",
		"Un'altra commissione in vista. Dalle mie parti la chiamerebbero buon vicinato, e si aspetterebbero una torta in cambio.",
		"Qualcuno ha bisogno di una mano. E sia. Non ho mai imparato a passare accanto a un guaio senza fermarmi.",
	},
	["race.human.other_action.w02.01"] = {
		"Un duello, eh? D'accordo. Chi perde paga il prossimo giro, e io ho già sete.",
		"Un duello? E sia. Armi in pugno, e vinca la mano migliore.",
	},
	["race.nightelf.npc_meet.w02.01"] = {
		"Un locandiere, un tetto, un letto con le gambe. Sto ancora imparando a dormire sotto un soffitto invece che sotto le foglie.",
		"Una stanza? Volentieri. Ma lascerò le imposte aperte, se l'oste lo permette: dormo meglio con il cielo in vista.",
		"Pane, un letto, un fuoco curato da altri. Piccoli agi, ma ho imparato a onorarli.",
	},
	["race.nightelf.other_action.w02.01"] = {
		"Un invito. Accetto. Anche la strada più lunga si accorcia in buona compagnia.",
		"Mi chiedi di camminare con te. Allora lo farò, finché le nostre strade andranno d'accordo.",
	},
	["race.orc.npc_meet.w02.01"] = {
		"Fammi vedere dell'acciaio. Non quello bello: quello che regge ancora dopo la terza battaglia.",
		"Pago un prezzo giusto. Dimmene uno ingiusto e ne parliamo, a voce alta.",
		"Cuoio, acciaio, provviste. Un orco compra quello che lo tiene in piedi, e lascia stare i ninnoli.",
	},
	["race.orc.other_action.w02.01"] = {
		"Una banda da guerra? Bene. Guidare o seguire, per me è uguale, basta non girare a vuoto.",
		"Mi vuoi nel tuo gruppo? Fatto. Indicami cosa c'è da rompere.",
	},
	["race.scourge.npc_meet.w02.01"] = {
		"Al mio passaggio la mano della guardia scivola verso l'elsa. Giusto. Farei lo stesso.",
		"Una guardia mi osserva un po' più a lungo degli altri. Faccio un cenno. Non mi costa niente, e la confonde.",
		"Mani in vista, passo tranquillo. Le guardie e i morti vanno più d'accordo così.",
	},
	["race.scourge.other_action.w02.01"] = {
		"Un saluto? A me? Be'. Ricambio, piano, così non si stacca niente.",
		"Che gentilezza. Di solito la gente mi saluta con una torcia in mano.",
	},
	["race.tauren.npc_meet.w02.01"] = {
		"{other} ha un sapere da condividere. Gli anziani dicono che un tauren saggio tiene un orecchio per il vento e uno per il maestro.",
		"Un maestro. Chino la testa, un po' per rispetto e un po' perché le corna non tirino giù la lampada.",
		"Le lezioni sono come il pascolo: un po' ogni giorno, e la mandria cresce forte.",
	},
	["race.tauren.other_action.w02.01"] = {
		"risponde al saluto con un cenno lento e profondo, alla maniera della gente delle pianure.",
		"china la grande testa in un saluto gentile, le corna piegate di lato per non sembrare una minaccia.",
	},
	["race.troll.npc_meet.w02.01"] = {
		"Ehi, oste. Qualcosa di caldo, qualcosa di forte, e un letto che non balla. Tutto qui.",
		"Cibo da locanda. Non buono come il pesce sul fuoco in riva al mare, ma non mi lamento. Non tanto.",
		"Stanza calda, oste sorridente. I troll riconoscono una buona capanna quando la trovano.",
	},
	["race.troll.other_action.w02.01"] = {
		"Un duello? Ah! Vieni, allora. Ci andrò piano. Forse.",
		"Vuoi ballare con un troll? D'accordo. Ma quando perdi, non dare la colpa agli spiriti.",
	},
	["encounter_end.w04.001"] = {
		"Fatta, con {encounter}. Qualcuno guardi se per terra luccica qualcosa.",
		"Con {encounter} abbiamo chiuso. Nessuno tocchi niente finché non abbiamo ripreso fiato.",
	},
	["encounter_end.w04.002"] = {
		"Tutti a terra, e di nuovo silenzio. In piedi. Contiamoci. Ragioniamo.",
		"A terra, tutti quanti. L'orgoglio fa più male del resto. Si riprova.",
	},
	["race.dwarf.npc_meet.w08.001"] = {
		"Quello che c'è alla spina, ma niente roba annacquata. Me ne accorgo, sai. Un nano se ne accorge sempre.",
		"Versami la più scura che hai. Se vedo il fondo del boccale, non è birra: è una diceria.",
		"Qualcosa di scuro e corposo, nel boccale più grande dello scaffale. L'acqua della strada era leggera come un pettegolezzo.",
	},
	["race.dwarf.npc_meet.w08.002"] = {
		"Travi basse, muri spessi, un fuoco che qualcuno ha alimentato tutto il giorno. Certe locande sono quasi una grotta, e per me è un complimento.",
		"Una panca accanto al focolare e la schiena contro una buona pietra. Lontano da Ironforge, più vicino a casa di così non si arriva.",
		"Caldo, raccolto, un po' fumoso. Mettici una forgia in un angolo e non me ne andrei più.",
	},
	["race.dwarf.npc_meet.w08.003"] = {
		"Tre parole e un boccale posato di botto. Chi sta al banco qui, a Kharanos sarebbe di casa.",
		"Niente sorrisi, niente chiacchiere, misura onesta. Metà degli osti sotto la montagna parlano proprio così, e mi piacciono tutti.",
	},
	["race.dwarf.npc_meet.w08.004"] = {
		"Gente nostra dietro il banco! Allora non devo spiegare che cosa intendo per una schiuma come si deve.",
		"Qualcuno della mia gente a mandare avanti la casa. Bene. Versa come verseresti a casa, e io pagherò come si paga a casa.",
		"Ah, gente della montagna dietro il banco. Non è che lì dietro si nasconde un barile di Dun Morogh, per caso?",
	},
	["race.dwarf.npc_meet.w08.005"] = {
		"Prima lo picchietto, poi lo soppeso, poi ascolto. Solo dopo chiedo il prezzo.",
		"Ribattini, cuciture, la tempra del metallo. Il mercante può parlare tutto il giorno; è la merce che deve parlare a me.",
		"Fammelo girare tra le mani. La mia gente riconosce una saldatura fatta male dal suono che fa quando ci bussi sopra.",
	},
	["race.dwarf.npc_meet.w08.006"] = {
		"Tra gli umani sarà anche un prezzo giusto. Tra i nani è appena l'inizio della trattativa.",
		"Ti do la metà, più una storia sulle miniere. Credimi, la storia vale l'altra metà.",
	},
	["race.dwarf.npc_meet.w08.007"] = {
		"Una bottega gnomesca. Da quando Gnomeregan è caduta, vendono come costruiscono: in fretta, con ingegno, e con un filo di entusiasmo di troppo.",
		"Merce gnomesca. Ormai mezza Ironforge va avanti grazie ai loro marchingegni, e l'altra metà finge di no.",
		"Gli gnomi hanno perso la loro città ma non il loro ingegno. Qualcosa comprerò, non fosse che per tenere in piedi una buona bottega.",
	},
	["race.dwarf.npc_meet.w08.008"] = {
		"Si va a lezione. I vecchi scalpellini dicono che un mestiere si impara come si taglia la pietra: piano, seguendo la vena, mai contro.",
		"Lezioni. Un nano impara con testardaggine, cioè una volta sola, e per sempre.",
		"Insegnami bene e non ci sarà bisogno di ripetermelo. Lenti a imparare, più lenti ancora a dimenticare: così è la mia gente.",
	},
	["race.dwarf.npc_meet.w08.009"] = {
		"Abbaia pure. I nani parlano sopra le incudini tutto il giorno: un maestro che urla mi sembra solo casa.",
		"Poche parole, molto martello. Sotto la montagna si insegna così, e mi va benissimo.",
	},
	["race.dwarf.npc_meet.w08.010"] = {
		"Lassù, con niente sotto gli stivali se non il vento. Un nano sta sotto la montagna, non sopra. Però si fa prima.",
		"Volare. Io e il mio stomaco abbiamo un patto: lui sta zitto fino all'atterraggio, e io dopo gli offro qualcosa di sostanzioso.",
		"I Wildhammer il cielo lo trattano come una sala di casa loro. Noialtri ci aggrappiamo alla sella e contiamo le cime.",
	},
	["race.dwarf.npc_meet.w08.011"] = {
		"Un grifone, e gente della montagna a badarci. Bene. Di' alla bestia che peso più di quanto sembri, e che la mia testardaggine pesa il doppio.",
		"Gente della montagna al posatoio. Scegli per me un grifone con la schiena forte e la memoria corta.",
	},
	["race.dwarf.npc_meet.w08.012"] = {
		"Vorrei vedere la serratura. Non aprirla, bada, solo guardarla. A un nano piace sapere chi ha fatto il lavoro in ferro.",
		"Tienimi la roba all'asciutto, e il minerale separato dall'oro. Quei due non vanno d'accordo.",
	},
	["race.dwarf.npc_meet.w08.013"] = {
		"Parla chiaro e ti risponderò chiaro. La parola di un nano è corta, ma regge il peso.",
		"Avanti, sputa il rospo. Se servono braccia forti e una testa dura, hai trovato la gente giusta.",
		"Guai, eh? Mettili sul tavolo. Li esamineremo come un minatore esamina una crepa.",
	},
	["race.dwarf.npc_meet.w08.014"] = {
		"Gente nostra che chiede aiuto. A questo non si dice di no. Non se vuoi bere a Ironforge a testa alta.",
		"Quando un nano chiede una mano, è perché le sue due sono già piene. Ascolto.",
	},
	["race.dwarf.npc_meet.w08.015"] = {
		"Gli umani e i loro guai, sempre di corsa. Sarà quel che succede a un popolo con settant'anni scarsi a disposizione.",
		"Gli umani chiedono aiuto come se il mondo dovesse finire prima di cena. A dire il vero, ogni tanto c'è andato vicino.",
	},
	["race.dwarf.npc_meet.w08.016"] = {
		"Che allegria! Attenzione, il buonumore è contagioso, e io contratto meglio quando sono di cattivo umore.",
		"Sorridi pure. Un nano sa sorridere e contare nello stesso momento: ci alleniamo ai matrimoni.",
	},
	["race.dwarf.npc_meet.w08.017"] = {
		"Una locanda elfica. Le stanze saranno ariose e la birra sarà... be'. Restiamo educati sulla birra.",
		"Ospitalità degli elfi della notte: voci sommesse, finestre aperte, e nemmeno un barile decente in vista. Me la caverò.",
		"Gli elfi sono ospiti gentili. Vorrei solo che imparassero a fare un soffitto da cui un nano non veda il cielo.",
	},
	["race.dwarf.npc_meet.w08.018"] = {
		"ride insieme a {other} e cala un pugno largo sul banco, abbastanza forte da far tintinnare i boccali.",
		"risponde al sorriso dietro il banco con una risata nanica profonda, che riempie la sala fino alle travi.",
	},
	["race.dwarf.npc_meet.w08.019"] = {
		"Qui si ama il denaro quasi quanto lo ama un nano. Quasi. Vediamo chi cede per primo.",
		"Un mercante con gli occhi da avaro. Sotto la montagna lo chiameremmo un commercio rispettabile.",
		"Prezzi affilati e un sorriso ancora più affilato. Mi sta bene: so fissare una moneta a occhi stretti quanto qualsiasi goblin.",
	},
	["race.dwarf.npc_meet.w08.020"] = {
		"Non c'è bisogno di tutti questi inchini. Sono {g:un nano|una nana}, non {g:un duca|una duchessa}. Dimmi cosa non va.",
		"Belle parole. Preferirei una mappa semplice e una risposta semplice, se per te è lo stesso.",
	},
	["race.dwarf.npc_meet.w08.021"] = {
		"Gente della montagna alla cassaforte. Bene. L'oro dorme meglio se lo custodisce qualcuno che capisce la pietra.",
		"Uno dei nostri a custodire i forzieri. Un pensiero in meno per cui restare {g:sveglio|sveglia}.",
	},
	["race.dwarf.npc_meet.w08.022"] = {
		"Chi insegna viene dalla montagna. Mostrami come si fa a Ironforge, e non ti farò fare brutta figura.",
		"Insegnami come si insegna a casa: duro, semplice, e due volte se sono {g:duro|dura} di comprendonio.",
	},
	["race.dwarf.other_action.w08.001"] = {
		"Uno scambio, eh? Fammelo vedere alla luce buona. Il minerale non lo compro sulla parola.",
		"Sì, trattiamo. Peso onesto da tutte e due le parti, e niente musi dopo.",
		"Uno scambio? Volentieri. Bada però che un nano pesa le monete prima con gli occhi e poi con la bilancia.",
	},
	["race.dwarf.other_action.w08.002"] = {
		"Preso in carico, dunque. Quando un nano si carica un peso, mollarlo a metà strada è una vergogna da cui non ci si riprende.",
		"Un altro lavoro. Bene. Sotto la montagna le mani in mano non sono mai state ben viste.",
		"D'accordo, ora è affar mio. Lo seguirò come una vena di ferro: fino in fondo, o finché la roccia non dice altrimenti.",
	},
	["race.dwarf.other_action.w08.003"] = {
		"risponde al gesto alzando un boccale immaginario, e lo vuota fino in fondo con grande cerimonia.",
		"ricambia il gesto con un cenno largo e un pollice alzato capace di spaccare una noce.",
		"alza in risposta una mano larga, col palmo in fuori, come un minatore che segnala via libera lungo la galleria.",
	},
	["race.dwarf.other_action.w08.004"] = {
		"Uno scontro tra amici! Colpisci forte, lo prenderò come un complimento. I nani si ammaccano, non si crepano.",
		"Ah! Andata. E quando sarà finita, racconterò a tutta la taverna che c'è mancato poco.",
		"Tra amici ci si allena meglio. Occhio alle ginocchia: sono {g:basso|bassa} per un motivo.",
	},
	["race.dwarf.other_action.w08.005"] = {
		"Gli gnomi chiamano, i nani rispondono. Com'è giusto. Tu pensi, io mi metto davanti.",
		"Sì, vengo. Gnomi e nani: stessa montagna, stesso tram. Fai strada.",
	},
	["race.human.npc_meet.w08.001"] = {
		"Stufato, pane e un posto vicino al fuoco. Se il pane viene da un forno come si deve, a Goldshire metterò una buona parola per te.",
		"Qualunque cosa sia calda, e che sia tanta. E se in cucina si nasconde una torta, non lo dirò a nessuno.",
		"Una scodella di qualcosa, un tozzo di pane, un angolo dove sedermi. Proprio come in ogni locanda di paese dell'Elwynn, ed è un complimento.",
	},
	["race.human.npc_meet.w08.002"] = {
		"In ogni locanda in cui entro tendo l'orecchio alla campana di una piazza di paese. Non c'è mai, e ascolto lo stesso.",
		"Il focolare di altri, la zuppa di altri. Noi umani siamo bravi a trasformare gli sconosciuti in vicini di casa: è così che abbiamo resistito.",
	},
	["race.human.npc_meet.w08.003"] = {
		"Gente nanica dietro il banco. Chiedi qualcosa di più leggero di una scura e guarda come si alzano le sopracciglia.",
		"Locanda nanica, misure naniche. Un boccale di questa e tornerò a casa camminando su tutti e due i lati della strada.",
		"Quando la locanda la tengono i nani, la birra è onesta e i letti sono corti. Uno scambio equo.",
	},
	["race.human.npc_meet.w08.004"] = {
		"Noi umani contrattiamo anche nel sonno, sai. Parti dal prezzo vero e torneremo a casa prima tutti e due.",
		"In tutto il regno ogni giorno di mercato comincia con un grido e finisce con una stretta di mano. Saltiamo alla stretta di mano.",
	},
	["race.human.npc_meet.w08.005"] = {
		"Merci da ogni parte, e niente da Lordaeron. Nessuno commercia con un regno di morti.",
		"Sul banco di un mercante cerco sempre roba del nord. Stoffe di Lordaeron, acciaio di Stromgarde. Ogni anno ce n'è meno.",
	},
	["race.human.npc_meet.w08.006"] = {
		"Lavoro nanico? Allora sul prezzo non discuto. Piangerò in silenzio mentre pago.",
		"Se l'ha fatto un nano, mi sopravvivrà. Visto quanto durano gli umani, per loro è poca cosa e per me un prezzo salato.",
	},
	["race.human.npc_meet.w08.007"] = {
		"Si va a lezione. Noi umani non abbiamo secoli per imparare: dobbiamo farlo subito, e tenercelo stretto.",
		"Un'altra lezione. Il mio popolo non ha mai avuto la pazienza degli elfi né gli anni dei nani, solo testardaggine e vite brevi. Finora è bastato.",
		"Imparalo oggi, usalo domani. È il modo degli umani, e il mondo non ci ha lasciato molta scelta.",
	},
	["race.human.npc_meet.w08.008"] = {
		"Ordini abbaiati e niente lodi, come in ogni piazza d'armi di Stormwind. Ascolto.",
		"Avanti. I contadini di Westfall urlano di peggio ai loro muli, e i muli vengono su benissimo.",
	},
	["race.human.npc_meet.w08.009"] = {
		"La maggior parte degli umani mai vissuti non ha mai visto la propria terra dall'alto. A me bastano poche monete. Strani tempi.",
		"Campi, strade, tetti, tutto così piccolo da nasconderlo dietro un pollice. Da lassù il regno sembra una cosa che si potrebbe aggiustare.",
		"Un volo costa meno di una settimana a piedi e quella settimana te la restituisce. Per un umano è un affare che vale ogni moneta.",
	},
	["race.human.npc_meet.w08.010"] = {
		"Voi nani affidate la vita a questi grifoni. Io mi affiderò a voi, e terrò gli occhi chiusi.",
		"Gente dei grifoni, dalle parti di Ironforge? Allora dimmi la verità: alla bestia gli umani piacciono, o ci sopporta e basta?",
	},
	["race.human.npc_meet.w08.011"] = {
		"Si dice che gli scalpellini che ricostruirono Stormwind non abbiano mai visto la paga. Io conto il deposito due volte e tengo la ricevuta.",
		"Una banca. Chissà quale nobile sta prendendo in prestito sui miei risparmi. Così funzionano i regni, mi dicono.",
		"Monete nel forziere, monete nella borsa. Noi umani la fortuna la sparpagliamo: abbiamo imparato a non tenerla tutta in una città sola.",
	},
	["race.human.npc_meet.w08.012"] = {
		"Guai? Raccontami. C'è sempre una fattoria da sistemare prima del raccolto, e tanto vale che sia io a sistemarla.",
		"Noi umani non tiriamo dritto davanti a un vicino impantanato. Dimmi dov'è il fango.",
		"Di' pure cosa ti serve. Siamo gente dalla vita breve, noi umani: il tempo preferiamo spenderlo ad aiutare che a chiederci se farlo.",
	},
	["race.human.npc_meet.w08.013"] = {
		"Una faccia della nostra gente, con quella stanchezza che conosco da ogni villaggio con troppe poche braccia. Certo che ascolto.",
		"Un volto umano che chiede aiuto. Potrebbe essere un contadino qualunque, una vedova, un fattore di casa nostra. Per questo mi fermo sempre.",
	},
	["race.human.npc_meet.w08.014"] = {
		"Perfino gli elfi chiedono aiuto a noi umani. Hanno vissuto dieci delle mie vite e serve ancora qualcuno che vada a prendere le cose. Stranamente, mi consola.",
		"Gli elfi misurano i loro guai in secoli. I miei si misurano in settimane. Vediamo di che tipo è questo.",
	},
	["race.human.npc_meet.w08.015"] = {
		"Un muso lungo dietro il banco. Ogni paese umano ne ha uno, e ogni paese umano insorgerebbe se andasse in pensione.",
		"Una smorfia, un grugnito, una chiave fatta scivolare sul banco. Buffo come sappia di casa.",
	},
	["race.human.npc_meet.w08.016"] = {
		"Sembri tutte le fiere di Goldshire messe insieme. D'accordo, fammi vedere cos'hai.",
		"Tanta allegria di solito vuol dire un prezzo alto. Sono {g:umano|umana}: il trucco lo conosco. L'ho usato anch'io.",
	},
	["race.human.npc_meet.w08.017"] = {
		"Qualcuno di casa a insegnarmi. Bene. Insegnami come si fa a Stormwind: alla svelta, e con una predica alla fine.",
		"Chi insegna è della nostra gente. Allora capirai se ti dico che non ho gli anni per impararlo piano.",
	},
	["race.human.npc_meet.w08.018"] = {
		"si strofina le mani al focolare e chiede dello stufato, come se ogni locanda della strada fosse la cucina di una fattoria.",
		"posa qualche moneta sul banco e chiede prima le notizie e poi la stanza, come fanno i viaggiatori umani.",
	},
	["race.human.npc_meet.w08.019"] = {
		"Quanta cerimonia. Parla come un cortigiano alla tavola di Bolvar, e scommetto che il lavoro resta un sacco di pelli di lupo.",
		"Parole così misurate. A Stormwind si parla così solo quando si vuole qualcosa che non si può pagare.",
	},
	["race.human.npc_meet.w08.020"] = {
		"Nani a custodire i forzieri. Le mie monete non sono mai state così al sicuro, né giudicate con tanta severità.",
		"I banchieri nanici contano come scavano: fino all'ultima scaglia. Quasi mi sento {g:ricco|ricca}.",
	},
	["race.human.npc_meet.w08.021"] = {
		"Hai l'aria di chi tiene una linea senza nessuno accanto. Noi umani le linee le teniamo: è quello che facciamo. Lascia che ne prenda un pezzo.",
		"Il dovere pesa di più quando nessuno guarda. Conosco quel peso. Dimmi cosa c'è da fare.",
		"Stormwind, si dice, l'ha ricostruita gente che ha continuato a lavorare anche quando la paga era finita. Una commissione per qualcuno come te posso farla.",
	},
	["race.human.npc_meet.w08.022"] = {
		"La gentilezza in una locanda mi coglie sempre alla sprovvista. Gli umani hanno avuto qualche decennio duro: ci dimentichiamo che suono abbia.",
		"Una parola calda, data senza chiedere niente. I profughi di Lordaeron avrebbero pianto per molto meno. Quasi piango io.",
	},
	["race.human.npc_meet.w08.023"] = {
		"Metti tutto in un posto sicuro. Più sicuro di Westfall, almeno, il che di questi tempi non è chiedere molto.",
		"Abbine cura. Un umano mette da parte per una fattoria, un tetto e una vecchiaia tranquilla. Soprattutto per il tetto.",
	},
	["race.human.other_action.w08.001"] = {
		"Una compagnia? Ci sto. Noi umani abbiamo costruito un regno dicendo di sì agli sconosciuti per strada.",
		"Contami. Ho una vita sola: tanto vale spenderne un po' in buona compagnia.",
		"Volentieri. Un paio di mani in più non si rifiuta mai, e nemmeno l'occasione di esserlo.",
	},
	["race.human.other_action.w08.002"] = {
		"Un piccolo gesto da chi passa. Come un cenno attraverso la piazza in un giorno di mercato: non costa niente e mette a posto qualcosa.",
		"Qualcuno mi ha dedicato un gesto. Dopo anni di profughi e brutte notizie, la gente del regno ha imparato a tenersi care le piccole cortesie.",
		"Un saluto dal nulla. Noi umani ne abbiamo bisogno più di quanto lasciamo vedere.",
	},
	["race.human.other_action.w08.003"] = {
		"Un'altra promessa fatta. Una vita umana è fatta soprattutto di queste, mantenute o tradite. La mia vorrei mantenerla.",
		"Un altro incarico. Dietro c'è una fattoria, una famiglia, un villaggio spaventato. Di solito è così.",
		"Accettato. La mia gente non ha molto tempo: preferisco essere {g:ricordato|ricordata} per le commissioni finite che per quelle che volevo fare.",
	},
	["race.human.other_action.w08.004"] = {
		"Finalmente. Risolviamola come si deve, come si faceva nei vecchi tornei di Lordaeron.",
		"Accetto. Aspettavo questo momento da più tempo di quanto ti confesserei mai.",
		"Era ora. Nessun rancore, e nessuna pietà.",
	},
	["race.human.other_action.w08.005"] = {
		"Mi invita qualcuno della montagna? Allora ci sto, e dopo cercherò di stare al passo con le bevute. Cercherò.",
		"Volentieri. Con qualcuno della montagna davanti, saprò finalmente cosa vuol dire avere un muro che risponde.",
	},
	["race.nightelf.npc_meet.w08.001"] = {
		"Una locanda. Le Sentinelle hanno insegnato al mio popolo a riposare leggero e a svegliarsi al primo suono sbagliato. Riposerò anche qui così, e ringrazierò le pareti.",
		"Una stanza con una porta che si chiude a chiave. Uno strano conforto. Nelle foreste del mio popolo, gli alberi erano le sole mura che servissero.",
		"Birra e una pentola di stufato. Un tempo il mio popolo mangiava ciò che dava la foresta, alla luce della luna; ai piatti mi sono {g:abituato|abituata}, al chiasso intorno ancora no.",
	},
	["race.nightelf.npc_meet.w08.002"] = {
		"Una stanza tranquilla, lontana dalle scale, se ce l'hai. Orecchie come le mie sentono ogni stivale su ogni gradino.",
		"Qualcosa con le erbe, per favore, e acqua invece della birra. Il mio popolo ha una lunga abitudine alla mente lucida.",
	},
	["race.nightelf.npc_meet.w08.003"] = {
		"Poche parole da {other}, e nessuna sprecata. Le Sentinelle approverebbero. Scopro che approvo anch'io.",
		"Un oste sbrigativo. Dopo le infinite cortesie di Darnassus, è quasi riposante.",
	},
	["race.nightelf.npc_meet.w08.004"] = {
		"Una persona del mio popolo tiene questa locanda. Ci scambiamo il saluto sommesso di Teldrassil, e d'un tratto la sala sembra meno rumorosa.",
		"{other} è della mia gente, e versa senza chiedere. Abbiamo la stessa sete di quiete.",
	},
	["race.nightelf.npc_meet.w08.005"] = {
		"Il mio popolo ha avuto diecimila anni per imparare la pazienza, e neanche una volta ha imparato a mercanteggiare.",
		"Monete che passano di mano così in fretta. Tra la mia gente uno scambio era una cortesia lenta, fatta di lunghi silenzi; qui finisce prima che io abbia finito l'inchino.",
		"Mi prendo il mio tempo sulla merce. Il mercante si dondola da un piede all'altro; per un elfo della notte, questa è appena un'occhiata.",
	},
	["race.nightelf.npc_meet.w08.006"] = {
		"Fammi vedere ciò che è stato fatto con cura. Le cose buone so aspettarle: aspettare è ciò che il mio popolo sa fare meglio.",
		"Filo, olio, un buon coltello. E niente che tintinni o che luccichi: gli elfi della notte preferiscono passare inosservati.",
		"Erbe della foresta profonda, se ne hai. Altrimenti prenderò il tuo pane più semplice, e sentirò un po' la mancanza degli alberi.",
	},
	["race.nightelf.npc_meet.w08.007"] = {
		"Un sorriso svelto e lucido come una moneta. Il mio popolo ha imparato a diffidare di tutto ciò che matura così in fretta.",
		"{other} mi propone un prezzo pensato per chi se lo dimenticherà entro l'anno. Io me lo ricorderò molto a lungo, perciò offro meno.",
	},
	["race.nightelf.npc_meet.w08.008"] = {
		"Un mercante nano, rumoroso e onesto. Quando l'Alleanza ci ha messi insieme, il mio popolo trovava i nani strani; io, più li conosco, più li trovo riposanti.",
		"{other} batte il pugno sul banco per sottolineare qualcosa. I nani trattano il silenzio come un buco da riempire; io lo tratto come un ospite. Ci arrangiamo.",
	},
	["race.nightelf.npc_meet.w08.009"] = {
		"Un mercante umano, che parla in fretta perché la vita è breve. Cerco di ascoltare in fretta anch'io: è solo cortesia.",
		"{other} mi ha già venduto qualcosa, mi ha ringraziato e guarda già il cliente successivo. Gli umani vivono tutta la vita a questa velocità.",
	},
	["race.nightelf.npc_meet.w08.010"] = {
		"Tra la mia gente anche le sacerdotesse più anziane prendono ancora lezioni. Non c'è un'età in cui si smette di essere allievi.",
		"Imparare da {other}. Le Sentinelle dicono che la freccia convinta di conoscere la strada è quella che manca il bersaglio.",
	},
	["race.nightelf.npc_meet.w08.011"] = {
		"Ti ascolto. Parla piano quanto vuoi: il mio popolo non se n'è mai lamentato.",
		"Mostramelo ancora, per favore. Preferisco impararlo bene che presto: un tempo il mio popolo aveva tutti gli anni del mondo, e l'abitudine è rimasta.",
	},
	["race.nightelf.npc_meet.w08.012"] = {
		"Chi governa i voli, e cavalcature alate che sanno di vento d'alta quota. Il mio popolo ha sempre chiesto prima alle bestie e poi ai loro custodi: vecchie maniere, ma funzionano.",
		"Cavalcature alate, ancora una volta. Preferisco le strade lente della foresta, ma Kalimdor è vasto e i Regni Orientali ancora di più.",
	},
	["race.nightelf.npc_meet.w08.013"] = {
		"Mi basta che dall'altra parte ci sia una foresta. Una qualunque: da lì troverò la strada.",
		"Fammi volare basso sopra gli alberi, se la bestia lo consente. Mi piace guardare le chiome che respirano.",
	},
	["race.nightelf.npc_meet.w08.014"] = {
		"Un banchiere e una camera blindata. Gli elfi della notte non si sono mai fidati molto delle monete: l'oro non cresce, e non si ricorda di niente.",
		"Un banchiere. Strano, affidare ciò che possiedo alla custodia di un estraneo. D'altra parte il mio popolo ha affidato foreste intere alle Sentinelle, e le foreste sono ancora lì.",
	},
	["race.nightelf.npc_meet.w08.015"] = {
		"Qualcuno nei guai. Il mio popolo è rimasto chiuso nelle sue foreste per diecimila anni, lasciando ad altri i guai del mondo. Preferirei non voltarmi più dall'altra parte.",
		"{other} ha un incarico e uno sguardo pieno di speranza. Le sacerdotesse insegnano che la luce di Elune cade su chi si ferma ad aiutare. Mi fermo.",
		"Una richiesta, fatta senza giri di parole. Le foreste del mio popolo sono sempre state custodite da chi rispondeva a cose così. Risponderò.",
	},
	["race.nightelf.npc_meet.w08.016"] = {
		"Dimmi cosa ti turba, e non tralasciare nulla. A un elfo della notte non è mai mancato il tempo per una storia intera.",
		"Parla. Ascolterò come ascolta la foresta: tutto, e senza interrompere.",
	},
	["race.nightelf.npc_meet.w08.017"] = {
		"Una guardia dell'Alleanza. Chiunque sia, ha l'immobilità di una Sentinella durante un lungo turno. Le rivolgo il cenno che facciamo al limitare della foresta.",
		"I colori dell'Alleanza al posto di guardia. Un tempo il mondo era vasto e vuoto, per il mio popolo. Ora ha amici sulle sue strade, e alcuni portano lance anche per noi.",
		"Una guardia della nostra parte, la lancia dritta. Sento le spalle raddrizzarsi da sole, per accordarsi: vecchia abitudine del mio popolo.",
	},
	["race.nightelf.npc_meet.w08.018"] = {
		"Una guardia dell'Orda. Ashenvale sanguina sotto le loro asce, dicono le Sentinelle. Tengo il volto fermo e le mani bene in vista.",
		"Una guardia dell'Orda ha notato le mie orecchie da lontano. Il mio popolo è fatto per svanire nell'ombra; oggi dovrò accontentarmi di camminare con calma.",
		"La guardia dell'Orda mi nota e non distoglie lo sguardo. Va bene. In diecimila anni il mio popolo è stato osservato da cose peggiori.",
	},
	["race.nightelf.npc_meet.w08.019"] = {
		"si fa immobile come un nightsaber nell'erba alta sotto lo sguardo della guardia dell'Orda, le orecchie tirate indietro, e lascia passare il momento.",
		"resta al margine dello sguardo della guardia nemica, muovendosi con la pazienza silenziosa della sua gente.",
	},
	["race.nightelf.npc_meet.w08.020"] = {
		"{other} parla per enigmi. Anche le sacerdotesse di Elune rispondono così, quando preferiscono che sia la luna a parlare per loro.",
		"Enigmi. Il mio popolo è cresciuto tra sogni e presagi: una risposta velata in più non mi turba.",
	},
	["race.nightelf.npc_meet.w08.021"] = {
		"Dolore, lì, dietro gli occhi di {other}. Il mio popolo porta quello sguardo da quando l'Albero del Mondo rinunciò alla sua benedizione, a Hyjal. So che non bisogna mettergli fretta.",
		"Un cuore pesante. La luce di Elune non discute con il buio: resta, e basta. Per un po' posso fare lo stesso.",
	},
	["race.nightelf.npc_meet.w08.022"] = {
		"risponde al saluto allegro con il sorriso lieve e lento della sua gente, di quelli che durano più di quanto sembri.",
		"china il capo, le lunghe orecchie che si sollevano appena al calore di quella voce.",
	},
	["race.nightelf.npc_meet.w08.023"] = {
		"Tyrande Whisperwind. L'Alta Sacerdotessa sta tra il mio popolo e il buio da più tempo di quanto la maggior parte dei regni sia rimasta in piedi. Mi inchino, e lo intendo davvero.",
		"L'Alta Sacerdotessa. C'è chi dice che Elune sorrida un po' più luminosa vicino a lei. Da qui, non avrei niente da obiettare.",
		"Tyrande in persona. Il mio popolo ha una memoria lunga, e ora sembra che tutta la mia si sia radunata qui in una volta.",
	},
	["race.nightelf.other_action.w08.001"] = {
		"Una compagnia? Cammino con voi. Non faccio rumore, e vedo bene dove altri non vedono.",
		"Volentieri. Il mio popolo non è nato per vagare da solo; ci si è soltanto abituato.",
		"Ci sto. Dimmi dove mettermi, e ci sarò prima che tu te ne accorga.",
	},
	["race.nightelf.other_action.w08.002"] = {
		"Un duello? Va bene. Non prenderla sul personale se mi perdi di vista.",
		"Accetto. Le Sentinelle dicono che una sfida leale insegna più di un anno di esercitazioni.",
		"Un incontro d'allenamento? Accetto. Guarda i miei piedi: il mio popolo ha insegnato loro a mentire.",
	},
	["race.nightelf.other_action.w08.003"] = {
		"Elune-adore, viandante. Cammina in silenzio.",
		"Anche a te. Che la tua strada sia quieta e l'ombra gentile.",
	},
	["race.nightelf.other_action.w08.004"] = {
		"Uno scambio, allora. Con onestà, e con calma: il mio popolo non ama un affare che si chiude prima di essere capito.",
		"Facciamo lo scambio. Controllerò tutto due volte: non è sfiducia, è solo l'abitudine di un popolo longevo.",
	},
	["race.nightelf.other_action.w08.005"] = {
		"Un compito accettato. Le sacerdotesse dicono che ogni promessa si fa sotto la luna, che qualcuno alzi lo sguardo o no.",
		"Un'altra promessa da mantenere. Un tempo il mio popolo aveva tutto il tempo del mondo per mantenerle. Ora preferisco non sprecarne.",
	},
	["race.nightelf.other_action.w08.006"] = {
		"Io e te? Bene. Il mio popolo combatte meglio quando non si fa vedere: cercherò di giocare pulito.",
		"Un incontro tra amici, allora. Chi perde porta i bagagli fino al prossimo accampamento.",
	},
	["race.tauren.npc_meet.w08.001"] = {
		"Un tetto, e qualcuno che lo custodisce. Un tempo il mio popolo caricava la casa sul dorso di un kodo a ogni stagione: una casa che resta ferma mi sembra ancora un ospite che non se ne va mai.",
		"Pareti che non si spostano. Tra i clan delle pianure, la casa andava dove andava la mandria. Proverò a dormire in una che ha smesso di camminare.",
		"Quattro mura e una porta. A Mulgore saprei da che parte arriva il vento; qui dentro dovrò fidarmi di chi tiene la locanda.",
	},
	["race.tauren.npc_meet.w08.002"] = {
		"Qualunque cosa ci sia nel pentolone, ne prendo una ciotola. Una ciotola grande: capirai perché quando mi siedo.",
		"Dammi da mangiare come a due viandanti. Prometto di pagare per uno e mezzo.",
	},
	["race.tauren.npc_meet.w08.003"] = {
		"Un oste di poche parole. Bene. Nelle pianure si dice che il kodo che muggisce meno è quello che tira più a lungo.",
		"Parole brevi e un cenno verso le scale. Un'accoglienza che un tauren capisce: non siamo mai stati tipi da lunghi discorsi sulla soglia.",
	},
	["race.tauren.npc_meet.w08.004"] = {
		"Grazie dell'accoglienza. Nelle pianure all'ospite si offre prima l'acqua: la prenderei volentieri anche qui.",
		"Una parola calda sulla soglia. Il mio popolo risponderebbe con un dono, ma io porto solo la polvere della strada.",
	},
	["race.tauren.npc_meet.w08.005"] = {
		"Una persona del mio popolo custodisce questo focolare. Ci scambiamo il cenno lungo e lento delle pianure, e qualcosa nelle mie spalle si scioglie.",
		"Un tauren dietro il banco, lontano dall'erba o vicino che sia, poco importa. Mangerò bene, e nessuno guarderà due volte le mie corna.",
	},
	["race.tauren.npc_meet.w08.006"] = {
		"Merce piccola su un banco piccolo. Le mie mani sono fatte per le pelli e i carichi pesanti: prendo ogni ninnolo come se fosse un uovo d'uccello.",
		"Tutto quello che c'è su questo banco mi sta nel palmo, tre pezzi alla volta. Conto le monete piano, per non spazzare la merce sul pavimento.",
		"Lo scaffale di un mercante è un posto pericoloso per un paio di corna. Tengo la testa ferma e indico con un dito, piano.",
	},
	["race.tauren.npc_meet.w08.007"] = {
		"Pelli, cuoio, un buon otre. Fammi vedere quello che serve a una lunga camminata, e lascia le cose luccicanti a gente più leggera.",
		"Mi serve quello che tiene un viandante sfamato e all'asciutto. Se è solo grazioso, può restare a te.",
		"Corda buona, filo robusto, sale per la carne. Le pianure hanno insegnato al mio popolo a comprare ciò che ripara e ciò che conserva.",
	},
	["race.tauren.npc_meet.w08.008"] = {
		"Quel sorriso misura la mia stazza e raddoppia il prezzo. Sorriderò anch'io, e lo dimezzerò.",
		"{other} mi guarda come un cacciatore guarda un kodo: un sacco di pelle da lavorare.",
	},
	["race.tauren.npc_meet.w08.009"] = {
		"Uno dei Reietti dietro il banco. Il mio popolo ha parlato in loro favore davanti all'Orda, sperando che si trovasse una cura. Guardando {other}, lo spero ancora.",
		"Un mercante dei Reietti. La Madre Terra non esclude nessuno dal suo cerchio, insegnano gli anziani. Facile a dirsi; più difficile dirlo a un volto come quello, e crederci.",
	},
	["race.tauren.npc_meet.w08.010"] = {
		"Gli anziani del mio popolo insegnano camminandoti accanto, non parlandoti addosso. Chiederò a {other} di mostrarmi prima e di spiegare poi.",
		"Certe conoscenze arrivano solo a chi sa stare fermo abbastanza a lungo. Io so restare immobile come una pietra eretta: chiedetelo a qualunque plainstrider mi sia passato accanto.",
	},
	["race.tauren.npc_meet.w08.011"] = {
		"Insegnami come insegneresti a chiunque. Lasciami solo un po' più di spazio intorno quando ci esercitiamo.",
		"Ho voglia di imparare. Se qualcosa si rompe mentre ci provo, non sarà apposta: noi tauren siamo semplicemente larghi.",
	},
	["race.tauren.npc_meet.w08.012"] = {
		"Una viverna, e chi ne conosce gli umori. I tauren non sono mai stati fatti per il cielo, ma il cielo non sembra badare al peso in più.",
		"{other} mi squadra, poi guarda la viverna, poi di nuovo me. La bestia sospira. Faccio finta di non sentire.",
		"La viverna sposta le ali quando mi avvicino, come se mi pesasse. Tra noi c'è un'intesa: a nessuno dei due piace il primo balzo.",
	},
	["race.tauren.npc_meet.w08.013"] = {
		"I miei zoccoli preferiscono l'erba, ma la strada è lunga. Dammi la bestia alata più forte che hai, e prima nutrila bene.",
		"Gli zoccoli sono fatti per la terra. Scegli la bestia più robusta che hai: dovrà portare la fiducia di un tauren intero.",
	},
	["race.tauren.npc_meet.w08.014"] = {
		"Un banchiere. I clan delle pianure tenevano la ricchezza su quattro zampe e la contavano all'abbeveratoio. Le monete in una cassa chiusa sono una mandria ben più strana.",
		"Un tempo il mio popolo misurava la ricchezza di una famiglia in kodo. Chissà quante monete fanno un buon kodo. Più di quante ne abbia io, probabilmente.",
	},
	["race.tauren.npc_meet.w08.015"] = {
		"Qualcuno con un problema, che alza lo sguardo verso di me. Essere grandi vuol dire che la gente ti porta le cose pesanti. E sia: sono {g:fatto|fatta} per portare.",
		"Nelle pianure, a uno straniero che chiedeva aiuto si dava l'acqua prima ancora di parlare. Sentiamo di cosa ha bisogno {other}.",
		"Un tauren non volta le spalle a chi chiede aiuto: si prende solo il tempo di capire. Avanti, {other}.",
	},
	["race.tauren.npc_meet.w08.016"] = {
		"Parla, e prenditi il tuo tempo. Un tauren ascolta fino in fondo prima di decidere qualcosa.",
		"Raccontami tutto. Il mio popolo segue un guaio come segue una pista: fino al posto dove la bestia si corica.",
	},
	["race.tauren.npc_meet.w08.017"] = {
		"Gli anziani raccontano di come le lame dell'Orda aiutarono a scacciare i centauri da Mulgore. Per questo saluto con un cenno ogni guardia dell'Orda, chiunque sia.",
		"I colori dell'Orda su un posto di guardia attento. Prima, il mio popolo percorreva le pianure senza mura. Ora le mura ci sono, ed è strano quanto facciano sentire al sicuro.",
		"Una guardia dell'Orda, con i colori accanto ai quali il mio popolo ha scelto di stare. Scelto: è la parola che usano sempre gli anziani.",
	},
	["race.tauren.npc_meet.w08.018"] = {
		"Una guardia dell'Alleanza, e io sono la cosa più grossa su questa strada. Nascondersi non è tra i doni del mio popolo. Passi lenti, allora, e mani aperte.",
		"La loro guardia cerca l'acciaio appena le mie corna entrano in vista. Non ne faccio una colpa: da lontano, un tauren è difficile da scambiare per un amico.",
	},
	["race.tauren.npc_meet.w08.019"] = {
		"tiene entrambe le mani aperte e basse, le corna inclinate di lato, mentre la guardia dell'Alleanza ne prende le misure.",
		"rallenta il passo, gli zoccoli che risuonano sulla strada, e alla guardia nemica non dà altro motivo di allarme che la propria stazza.",
	},
	["race.tauren.npc_meet.w08.020"] = {
		"Ogni parola di {other} ne nasconde un'altra ripiegata dentro. I veggenti del mio popolo parlano così. Ascolto il vento sotto le parole.",
		"Indovinelli. I veggenti di Mulgore rispondono allo stesso modo, con una domanda e un lungo sguardo. Pazienza, allora.",
	},
	["race.tauren.npc_meet.w08.021"] = {
		"risponde al benvenuto allegro con una risata profonda che sembra partire dagli zoccoli.",
		"sbuffa a lungo, con calore divertito: il modo delle pianure di ridere insieme agli altri.",
	},
	["race.tauren.npc_meet.w08.022"] = {
		"Un cuore pesante dietro quel volto. Il mio popolo siede accanto al dolore invece di parlargli sopra. Starò in silenzio un po', con {other}.",
		"C'è tristezza in questa persona. Gli anziani offrirebbero una pipa e del silenzio. Io ho solo il silenzio, ma è di quello buono.",
	},
	["race.tauren.npc_meet.w08.023"] = {
		"Cairne Bloodhoof. Ogni tauren conosce i racconti; nessuno ti prepara alla vastità del silenzio che gli sta intorno.",
		"L'Alto Capo. Il mio popolo ha percorso le pianure sotto la sua parola, e sotto la sua parola ha smesso di vagare. Abbasso le corna, piano.",
		"Davanti all'Alto Capo, anche un tauren si sente piccolo. Per una volta, è una bella sensazione.",
	},
	["race.tauren.other_action.w08.001"] = {
		"Una battuta di caccia? Bene. Indicami la pista e terrò il passo.",
		"Mi unisco a voi. Una mandria si muove più sicura unita, e così i viandanti.",
		"Contate anche su un tauren. Mangio tanto, ma porto di più.",
	},
	["race.tauren.other_action.w08.002"] = {
		"Anche a te, viandante. Che i tuoi otri restino pieni.",
		"Pace anche a te. Che la Madre Terra tenga d'occhio la tua strada.",
	},
	["race.tauren.other_action.w08.003"] = {
		"Uno scambio, allora. Nelle pianure lo si suggellava dividendo un boccone. Ti risparmio il pasto.",
		"Scambiamo onestamente. Di un tauren che imbroglia negli scambi si parla a ogni fuoco, da Mulgore fino al mare.",
	},
	["race.tauren.other_action.w08.004"] = {
		"Un incontro? Volentieri. Tieni i piedi ben piantati: spingo come un kodo appoggiato a uno steccato.",
		"Va bene. I vitelli del mio popolo lo imparano prima ancora di correre. Quando vuoi.",
		"Lottare con un tauren? Hai più coraggio di quanto sembri. Avanti, allora.",
	},
	["race.tauren.other_action.w08.005"] = {
		"Un incontro tra amici? Ah! Chi finisce nella polvere cucina il prossimo pasto.",
		"Io e te? Bene. Tu bada alle corna, io baderò al tuo orgoglio.",
	},
	["race.tauren.other_action.w08.006"] = {
		"Un compito affidato, e accettato. Il mio popolo dice che una promessa è un paletto piantato nel terreno: puoi andartene, ma resta dove l'hai lasciato.",
		"Un altro guaio sulle spalle. Va bene: sono spalle larghe, ed è a questo che servono.",
	},
	["race.gnome.npc_meet.w09.001"] = {
		"Una stanza, per favore, e uno sgabello per il banco. Di quelli alti. No, più alto.",
		"Qualcosa di caldo, e un cuscino su cui sedermi per vedere oltre la scodella. Grazie!",
		"Un letto, un pasto e {g:uno gnomo piccolo|una gnoma piccola}. Quasi non ti accorgerai di me, finché non comincerò a chiederti come tira il camino.",
	},
	["race.gnome.npc_meet.w09.002"] = {
		"Una sala comune calda e piena di chiasso. I vecchi meccanici dicono che le locande di Gnomeregan ronzavano di macchinari invece che di canzoni. Mi manca un ronzio che ricordo appena. Anche le canzoni, però, non sono male.",
		"Un letto di sopra, e da nessuna parte una porta a misura di gnomo. Da quando abbiamo perso la città, ogni letto in cui dormo è stato fatto per qualcun altro.",
	},
	["race.gnome.npc_meet.w09.003"] = {
		"Ospitalità nanica! La vostra gente ci ha accolti quando la città è caduta, e non ho ancora offerto un solo giro per sdebitarmi. Comincio adesso.",
		"Gente della montagna alla spina. Allora sarà una versata come si deve, e mi serviranno due mani per il boccale.",
	},
	["race.gnome.npc_meet.w09.004"] = {
		"Puoi tirarmi giù quello dallo scaffale in alto? Non il prezzo. Be', anche quello, se ti va.",
		"Lo prendo. Ne hai uno grande un terzo? No? Allora lo prendo e lo adatto.",
		"Prezzo giusto. L'ho controllato entrando: io controllo tutto, entrando. Abitudine di chi è piccolo in un mondo grande.",
	},
	["race.gnome.npc_meet.w09.005"] = {
		"Guarda la cerniera di quel baule. Qualcuno ci ha messo cura. Noi gnomi le notiamo, queste cose, che si armeggi con gli attrezzi o no.",
		"Il mercante si sporge oltre il banco per trovarmi. Saluto con la mano. Succede una dozzina di volte a settimana: ho imparato a salutare in anticipo.",
	},
	["race.gnome.npc_meet.w09.006"] = {
		"Quel prezzo ha una molla dentro: è scattato appena mi sono {g:avvicinato|avvicinata}. Ingegnoso. Lo ammirerei di più se non dovessi pagarlo io.",
		"Un mercante che adora le monete. Va bene. Io adoro una bella discussione, e ho la testa piena di numeri.",
	},
	["race.gnome.npc_meet.w09.007"] = {
		"Ehilà, lassù! Sì, quaggiù. Tutto tranquillo durante il tuo turno?",
		"Bella armatura. Buone cinghie. Chi ha fatto quelle fibbie sapeva il fatto suo.",
		"Continua così. Noi gnomi dormiamo meglio sapendo che c'è gente alta con le lance che resta sveglia.",
	},
	["race.gnome.npc_meet.w09.008"] = {
		"Una guardia dell'Orda. Sono {g:piccolissimo|piccolissima}, faccio pochissimo rumore, e spero tantissimo che basti.",
		"Acciaio dell'Orda, e io bene in vista. Noi gnomi abbiamo un talento per sgusciare via da qualunque presa. Potrei averne bisogno a breve.",
	},
	["race.gnome.npc_meet.w09.009"] = {
		"Una guardia nanica. Quando la città cadde, furono i nani alle porte di Ironforge a farci entrare. A questa rivolgo un cenno come si deve.",
		"Spalle larghe, un martello grosso come un battente, e la pazienza della montagna. Con quella guardia alle spalle mi sento più al sicuro che dietro molti muri.",
	},
	["race.gnome.npc_meet.w09.010"] = {
		"La bestia volante mi guarda come uno spuntino con la sella. Le spiego con fermezza che sono {g:un passeggero|una passeggera}. Non sembra convinta.",
		"C'è un limite di peso? No? Allora porto lo zaino in più e non lo dico.",
		"Bella bestia. Legami due volte, per favore. Sono {g:così leggero|così leggera} che una buona raffica ha delle opinioni su di me.",
	},
	["race.gnome.npc_meet.w09.011"] = {
		"Wildhammer o Bronzebeard che sia, la gente della montagna con un grifone conosce il cielo. Di' alla bestia che sono un carico, non un pranzo.",
		"Gente della montagna al posatoio. Bene. Cinghie robuste, nodi stretti, e niente acrobazie alla Wildhammer per me, grazie.",
	},
	["race.gnome.npc_meet.w09.012"] = {
		"Insegnami tutto. Poi spiegami perché funziona. Poi spiegami perché funziona il perché. Aspetto.",
		"Ora di lezione! Prenderò appunti. Piccoli, con una calligrafia minuscola, sul dorso della mano se necessario.",
		"Fammelo vedere una volta piano, una volta veloce, e una volta a testa in giù, se è previsto.",
	},
	["race.gnome.npc_meet.w09.013"] = {
		"Un insegnamento severo. Va bene. A Tinker Town mi hanno raccontato che anche i vecchi maestri di Gnomeregan urlavano agli apprendisti: voleva dire che tenevano al risultato.",
		"Modi spicci, poche parole, zero lodi. Le lodi me le faccio per conto mio: {g:bravo|brava}, io. E adesso di nuovo.",
	},
	["race.gnome.npc_meet.w09.014"] = {
		"Un deposito, per favore. Occhio a quella scatola: è etichettata, contro-etichettata, e c'è un biglietto che spiega le etichette.",
		"Tienimeli al sicuro. Tutto ciò che la nostra gente ha lasciato a Gnomeregan è laggiù con i trogg. Questa roba vorrei tenermela.",
		"La cassaforte è robusta? Lavoro nanico? Allora smetto di preoccuparmi. Quasi. Mi preoccuperò in silenzio.",
	},
	["race.gnome.npc_meet.w09.015"] = {
		"Un problema! Che bello. Descrivimelo per bene, senza tralasciare niente, soprattutto le parti che sembrano sciocche.",
		"Ti serve una mano? Ne ho due piccole e una testa molto grande. Scegli tu.",
		"Dimmi cos'è rotto. Gente, bestie, banditi, tubature: è tutto un rompicapo con i denti.",
	},
	["race.gnome.npc_meet.w09.016"] = {
		"Qualcuno del mio popolo che chiede aiuto. Da quando la città è caduta, ci chiediamo aiuto a vicenda di continuo. E rispondiamo sempre.",
		"Gente nostra con un problema. Gli esuli di Tinker Town si prendono cura dei loro: non ho nemmeno bisogno di sentire prima i dettagli.",
	},
	["race.gnome.npc_meet.w09.017"] = {
		"Gli umani chiedono sempre aiuto come se stesse cadendo il cielo. Avendo perso un'intera città, li prendo sul serio.",
		"Un volto umano preoccupato. La loro gente ha perso Lordaeron, la mia Gnomeregan. Le nostre facce si capiscono.",
	},
	["race.gnome.npc_meet.w09.018"] = {
		"L'Alto Inventore Mekkatorque. Ha guidato il nostro popolo fuori quando la città è andata perduta, e parla ancora di riprendercela. Lo seguirei nelle gallerie anche domani.",
		"L'Alto Inventore in persona. Piccolo come tutti noi, e con sulle spalle il peso di un intero popolo. Mi raddrizzo un poco.",
		"Gelbin Mekkatorque. La nostra guida in esilio, che scarabocchia piani per il giorno in cui torneremo a casa. Spero di esserci, quel giorno.",
	},
	["race.gnome.npc_meet.w09.019"] = {
		"si arrampica sullo sgabello più vicino senza aspettare l'invito e attende, con pazienza e un sorriso, che {other} se ne accorga.",
		"bussa due volte sul banco da sotto, poi un'altra volta, un po' più forte, finché chi sta al banco non abbassa lo sguardo.",
	},
	["race.gnome.npc_meet.w09.020"] = {
		"Una bottega gnomesca! Prezzi in colonne ordinate, un registro per il registro. Mi sento già a casa.",
		"Gente nostra che vende. Contratteremo da gnomi come si deve: in fretta, e con i diagrammi.",
	},
	["race.gnome.npc_meet.w09.021"] = {
		"Insegna qualcuno del mio popolo! Allora possiamo saltare la spiegazione lenta e passare direttamente agli errori interessanti.",
		"Gente nostra in cattedra. Facciamolo alla maniera di Gnomeregan: in fretta, con curiosità, e con una piccola esplosione solo se necessario.",
	},
	["race.gnome.npc_meet.w09.022"] = {
		"Oh, allegria anche da parte tua! Ottimo. In due potremmo alimentare una piccola lampada.",
		"Buonumore! Contagioso, vero? Noi gnomi andiamo avanti soprattutto con quello. Quello e il tè.",
	},
	["race.gnome.other_action.w09.001"] = {
		"Una compagnia! Splendido. Mettimi dove vedo tutto e dove nessuno mi pesta.",
		"Ci sto. {g:Piccolo, veloce e pieno|Piccola, veloce e piena} di suggerimenti, quasi tutti buoni.",
		"Sì! Porto il mio ingegno, e lo terrò puntato su qualunque cosa cerchi di morderci.",
	},
	["race.gnome.other_action.w09.002"] = {
		"Un incontro tra amici! Ottimo. Regole: non si mira al cappello.",
		"Io e te? Ah! Va bene. Chi vince offre il tè, chi perde spiega com'è andata.",
		"Volentieri! Ho un trucco nuovo da provare, e su chi provarlo se non su una persona amica?",
	},
	["race.gnome.other_action.w09.003"] = {
		"risponde salutando con entrambe le mani e saltellando un po' sulle punte per farsi vedere.",
		"ricambia il gesto con un inchino ampio che arriva quasi a terra, il che per uno gnomo non è lontano.",
		"risponde con un gran sorriso e un saluto rapido, due dita alla fronte.",
	},
	["race.gnome.other_action.w09.004"] = {
		"Uno scambio? Magnifico. Preparo una lista. Una lista corta. Media. Non preoccuparti della lista.",
		"Scambiamo. Tutto ciò che offro è stato ispezionato, collaudato ed etichettato con lettere piccolissime.",
	},
	["race.gnome.other_action.w09.005"] = {
		"Un nuovo incarico! Problema ricevuto, parametri annotati, soluzione in arrivo. Che bello.",
		"Un altro lavoro. Ogni commissione portata a termine è un passo in più verso il giorno in cui ci riprenderemo la città. Almeno, io le conto così.",
	},
	["race.orc.npc_meet.w09.001"] = {
		"I vecchi che sono passati per i campi di internamento lo chiamerebbero lusso. Cerco di ricordarmelo quando lo stufato è annacquato.",
		"Polvere della strada negli stivali, e qualcuno al banco che mi indica una panca. Cose semplici. Gli orchi ne hanno fatto a meno abbastanza a lungo.",
	},
	["race.orc.npc_meet.w09.002"] = {
		"Carne, ossa comprese. Le ossa le lascio. Quasi tutte.",
		"Il tuo stufato più denso, oste. Che ci stia in piedi il cucchiaio, come lo fanno a Razor Hill.",
		"Riempi la ciotola e non risparmiare il pepe. Durotar allena la lingua oltre che la pelle.",
	},
	["race.orc.npc_meet.w09.003"] = {
		"Un grugnito e una ciotola spinta sul banco. Finalmente qualcuno che parla la lingua degli orchi.",
		"Niente sorrisi, niente chiacchiere, misura giusta. C'è chi chiama difetto la franchezza. Per alcuni di noi è onestà.",
	},
	["race.orc.npc_meet.w09.004"] = {
		"Un'accoglienza calorosa. Agli orchi non è sempre toccata. I vecchi ricordano le porte che si chiudevano quando si avvicinava una faccia verde.",
		"Parole gentili da {other}. Faccio un cenno e tengo la voce bassa: la gentilezza merita una risposta sommessa.",
	},
	["race.orc.npc_meet.w09.005"] = {
		"Questo focolare lo tiene un troll. Orchi e Darkspear siedono agli stessi fuochi da quando Thrall accolse la tribù. Passami il pesce.",
		"Dietro il banco, zanne più alte delle mie. I troll di Sen'jin mantengono la parola data all'Orda e, pare, anche una buona pentola.",
	},
	["race.orc.npc_meet.w09.006"] = {
		"Prima di guardare il prezzo provo il filo col pollice. I vecchi guerrieri dicono che il prezzo si dimentica molto prima del filo.",
		"Le mani di un orco sono ruvide con la merce. Prendo le cose con delicatezza, e chi vende sobbalza lo stesso.",
	},
	["race.orc.npc_meet.w09.007"] = {
		"Mi serve acqua da portare e carne che si conservi. Il resto è decorazione.",
		"Cosa dura? Fammi vedere cosa dura. Quello lo pago.",
		"Risposta diretta, prezzo diretto. Gli orchi commerciano così, e non ho voglia di imparare un altro modo.",
	},
	["race.orc.npc_meet.w09.008"] = {
		"{other} vede la pelle verde e aggiunge una moneta per il disturbo. Io vedo la moneta e aggiungo un'occhiataccia. Ci incontreremo a metà.",
		"Quel sorriso sta affilando il prezzo. Per mia fortuna gli orchi sono più bravi a fissare che a contare.",
	},
	["race.orc.npc_meet.w09.009"] = {
		"Merce dai Reietti. Il Capoguerra li ha fatti entrare nell'Orda per ragioni sue. Conto il resto, e tengo i pensieri dietro le zanne.",
		"Dita fredde, prezzi accurati. I morti di Lordaeron ora combattono per l'Orda. Mi fido dello scambio; per fidarmi di chi vende ci vuole di più.",
	},
	["race.orc.npc_meet.w09.010"] = {
		"Dietro il banco, un paio di corna. Il popolo di Cairne offrì amicizia agli orchi quando l'Orda era appena arrivata su queste coste. Pago senza contrattare.",
		"Mani grandi, parole lente, peso onesto sulla bilancia. Gli orchi avrebbero qualcosa da imparare dai tauren. Non lo direi mai a un orco.",
	},
	["race.orc.npc_meet.w09.011"] = {
		"{other} ha qualcosa da insegnare. Lo stesso Thrall tornò a imparare dagli sciamani: farsi insegnare non è una vergogna.",
		"Lo imparerò per bene. I vecchi maestri di spada dicono che chi ha fretta di imparare paga ogni lezione due volte.",
	},
	["race.orc.npc_meet.w09.012"] = {
		"Fammelo vedere una volta. Se sbaglio, fammelo vedere più forte.",
		"Insegnami come a una recluta alle prime armi. Non mi serve gentile: mi serve giusto.",
	},
	["race.orc.npc_meet.w09.013"] = {
		"Un volatile dell'Orda, tutto denti e ali di cuoio. Non ha niente di gentile, e in una bestia lo rispetto.",
		"{other} mi assicura alla sella e dà una pacca sul fianco della bestia. Gli orchi sono fatti per correre sulla terra rossa, ma ho imparato ad apprezzare la vista dall'alto.",
	},
	["race.orc.npc_meet.w09.014"] = {
		"La bestia più forte che hai. Peso più di quanto sembri, e sembro pesante.",
		"Volo dritto e atterraggio morbido, se riesci a organizzarlo. Il mio stomaco è più coraggioso a terra.",
	},
	["race.orc.npc_meet.w09.015"] = {
		"Un caveau per le monete. Un tempo gli orchi si portavano in spalla tutto quello che avevano. Una schiena più leggera è una strana libertà.",
		"Oro dietro una porta chiusa. Preferirei tenerlo in una borsa alla cintura, dove lo sento. I vecchi dicono che i muri rendono molli gli orchi.",
	},
	["race.orc.npc_meet.w09.016"] = {
		"Una richiesta d'aiuto. Nell'Orda nessuno dovrebbe chiedere due volte. Ascolterò {other}.",
		"Qualcuno ha bisogno di un braccio forte. La forza che non serve a nessuno è solo rumore: lo dicono i vecchi guerrieri, e su quasi tutto avevano ragione.",
	},
	["race.orc.npc_meet.w09.017"] = {
		"Parla chiaro. Cosa c'è da fare, e dove?",
		"Dimmi chi sta causando guai. Ci faccio due chiacchiere. Brevi.",
		"Indicami dove. Le domande le faccio per strada.",
	},
	["race.orc.npc_meet.w09.018"] = {
		"Una guardia dell'Orda al suo posto, piantata come se il terreno le dovesse qualcosa. Lok'tar, penso, e tiro dritto.",
		"I colori dell'Orda di guardia. I vecchi ricordano quando le uniche guardie che gli orchi conoscevano stavano fuori dai campi, rivolte verso l'interno.",
	},
	["race.orc.npc_meet.w09.019"] = {
		"Buona guardia. L'Orda resta in piedi perché qualcuno sta sempre al cancello.",
		"Tieni la linea. Gli orchi sanno quanto vale un muro dell'Orda.",
	},
	["race.orc.npc_meet.w09.020"] = {
		"Una guardia dell'Alleanza. I vecchi ci vedrebbero un carceriere. Io provo a vederci solo un soldato. Costa fatica.",
		"L'acciaio esce a metà dal fodero della guardia mentre mi avvicino. Tengo le mani in vista. Non è paura: semplicemente non ho voglia di cominciare niente qui.",
	},
	["race.orc.npc_meet.w09.021"] = {
		"passa davanti alla guardia dell'Alleanza a passo regolare, mascella serrata, zanne in avanti, senza cedere terreno e senza offendere.",
		"lascia le mani aperte e sciolte lungo i fianchi, e regge lo sguardo della guardia con la pazienza piatta di un orco abituato a essere fissato.",
	},
	["race.orc.npc_meet.w09.022"] = {
		"Thrall. Il Capoguerra che spalancò i campi e restituì agli orchi i loro spiriti. Vicino a lui ogni orco sta più dritto, e io con loro.",
		"Il figlio di Durotan, lo chiamano, anche se è cresciuto schiavo. Chino la testa. Gli orchi sono liberi perché lui non volle restarlo.",
	},
	["race.orc.npc_meet.w09.023"] = {
		"{other} parla come i vecchi sciamani: metà a me, metà a qualcosa alle mie spalle. Non mi volto.",
		"Indovinelli. Gli orchi preferiscono parlare chiaro, ma gli spiriti non l'hanno mai fatto. Ascolto con il doppio dell'attenzione.",
	},
	["race.orc.npc_meet.w09.024"] = {
		"si lascia sfuggire una risata breve come un latrato, quasi senza volerlo, e le zanne si scoprono in qualcosa di simile a un ghigno.",
		"risponde al buonumore con una pacca pesante sulla spalla più vicina: il modo degli orchi per dire che la battuta è andata a segno.",
	},
	["race.orc.npc_meet.w09.025"] = {
		"{other} porta il dolore come uno zaino pesante. I vecchi nei campi hanno portato il loro per anni. Non dico sciocchezze, e mi fermo accanto.",
		"Tristezza su quella faccia. Gli orchi non scacciano il dolore a parole. Ci si siede accanto, si affila qualcosa, e si aspetta.",
	},
	["race.orc.other_action.w09.001"] = {
		"Si parte in gruppo? Bene. Dimmi con chi ce l'abbiamo.",
		"Bene. Un branco caccia meglio di un lupo solitario, e mangia anche meglio.",
		"Contami. Cammino davanti: mi piace vederlo arrivare.",
	},
	["race.orc.other_action.w09.002"] = {
		"Anche a te. Un saluto si onora, chiunque lo faccia.",
		"Ah. Ti vedo. È così che gli orchi salutano, quando sono di buon umore.",
	},
	["race.orc.other_action.w09.003"] = {
		"Scambiamo. Dillo chiaro, e ti rispondo chiaro.",
		"Uno scambio onesto, allora. Gli orchi si ricordano di chi commercia giusto, e di chi imbroglia ancora più a lungo.",
		"Va bene. Scambiamo, e facciamola breve.",
	},
	["race.orc.other_action.w09.004"] = {
		"Un combattimento tra amici? Bene. Colpisci forte: capirò che era per affetto.",
		"Io e te? Ah! Chi va giù paga il grog.",
	},
	["race.orc.other_action.w09.005"] = {
		"Tu. Bene. Lo aspettavo, e anche i miei pugni.",
		"La sfida di un rivale. Accetto, e non mi trattengo. Ti offenderesti se lo facessi.",
	},
	["race.orc.other_action.w09.006"] = {
		"Un compito accettato. La parola data a chi ha bisogno è un debito, e gli orchi pagano i debiti.",
		"Un altro guaio da spezzare. Bene. Le mani ferme rendono un orco inquieto.",
	},
	["race.scourge.npc_meet.w09.001"] = {
		"Solo una sedia nell'angolo, per favore. Non mangerò, e prometto di non abbassare l'umore più di quanto abbia già fatto.",
		"Non serve cambiare le lenzuola. Mi stendo più per abitudine che per bisogno, e non mi rigiro nel letto.",
		"Da bere? Versa il più economico. Tanto non sento la differenza, e la botte buona puoi tenerla per i vivi.",
	},
	["race.scourge.npc_meet.w09.002"] = {
		"In una locanda cerco subito il focolare. Non per il calore: ne sento poco. Per come i vivi gli si radunano intorno.",
		"Boccali, il vapore dello stufato, qualcuno che ride troppo forte. Un tempo ero {g:vivo|viva} anch'io e sedevo a tavole così. I dettagli non tornano, solo la forma.",
	},
	["race.scourge.npc_meet.w09.003"] = {
		"{other} non sussulta e non sorride. Posa il boccale e passa oltre. A dirla tutta, la migliore accoglienza di tutta la settimana.",
		"Poche parole, modi spicci, nessuna impressione. Nessun segno di scongiuro, nessuno strillo. Quasi quasi mi ci affeziono, a questo posto.",
	},
	["race.scourge.npc_meet.w09.004"] = {
		"Sì, compro. No, la frutta non la tocco. Possiamo esserne sollevati entrambi.",
		"Le mie monete valgono come quelle di chiunque. Sono state in una cripta, non in una fogna. Per lo più.",
		"Puoi smettere di stringere il banco così. Sono qui per fare acquisti, non per infestarti la bottega.",
	},
	["race.scourge.npc_meet.w09.005"] = {
		"Pane, formaggio, carne secca. Ne compro comunque. Masticare dà qualcosa da fare alla mascella, e alle cuciture un po' di esercizio sembra piacere.",
		"Filo, aghi, un po' di sale da imbalsamazione se il mercante ne ha. La lista della spesa dei morti è corta, e molto pratica.",
		"Il mercante dice un prezzo e ci aggiunge qualcosa per l'odore, sospetto. Lascio correre. Discutere stanca i vivi molto più di me.",
	},
	["race.scourge.npc_meet.w09.006"] = {
		"{other} mi accoglie con allegria. Allegria vera. O gli affari vanno molto a rilento, o qui c'è uno stomaco più forte della media.",
		"Un sorriso, da dietro il banco, rivolto a un cadavere. Non so bene cosa fare con la faccia. Del resto, di questi tempi fa poco comunque.",
	},
	["race.scourge.npc_meet.w09.007"] = {
		"Gli occhi della guardia vanno alla mia mascella, poi alle mani, poi di nuovo alla mascella. Tutti controllano la mascella.",
		"Una guardia mi squadra. Conosco bene quello sguardo: non è odio, è il conto silenzioso di cosa accadrebbe se a un tratto perdessi la ragione.",
	},
	["race.scourge.npc_meet.w09.008"] = {
		"Riposo. Sono dalla tua parte, qualunque cosa suggerisca la mia faccia.",
		"Stessa bandiera, guardia. L'Orda ci ha accolti: tanto vale che smetti di stringere l'arma.",
		"Calma. La Dama Oscura ha stretto lo stesso patto del tuo Capoguerra. Ci sono dentro anch'io, marciume compreso.",
	},
	["race.scourge.npc_meet.w09.009"] = {
		"Una guardia dell'Alleanza. Alcuni di noi, un tempo, montavano la guardia in posti come quello sotto i colori di Lordaeron. Ora siamo proprio ciò contro cui quei posti furono costruiti.",
		"Acciaio dell'Alleanza che mi osserva. I figli di Lordaeron e i suoi morti si squadrano dai due lati di una strada. A nessuno dei due piace il panorama.",
	},
	["race.scourge.npc_meet.w09.010"] = {
		"La bestia volante mi annusa più a lungo del dovuto. Poi abbassa la testa. Qualunque cosa abbia sentito, ha deciso che sono un carico.",
		"Se cado, probabilmente sopravvivo all'atterraggio. Magari a pezzi. I morti sono molto rilassati quanto all'altezza.",
		"Chi governa i voli guarda me, poi la cavalcatura, poi le cinghie. Sì. Stringile bene. Preferirei non perdere un braccio sopra le colline.",
	},
	["race.scourge.npc_meet.w09.011"] = {
		"Uno dei nostri al posatoio. Bene. Dammi una cavalcatura a cui non importi che odore ho.",
		"Ah, gente della nostra stessa cucitura. Scegli una cavalcatura tranquilla, e saltiamo la parte in cui tutti si tappano il naso.",
	},
	["race.scourge.npc_meet.w09.012"] = {
		"Di nuovo a lezione. La mente impara ancora, anche se la carne non cresce più. È stata la prima buona notizia dopo che mi sono {g:rialzato|rialzata}.",
		"Insegnami. Non ho altro che tempo e una volontà tutta mia, e intendo spenderli entrambi per migliorare.",
		"Addestramento. Strano, perfezionare un corpo che va lentamente in pezzi. D'altra parte, era la mente che voleva il Re dei Lich, e non l'avrà.",
	},
	["race.scourge.npc_meet.w09.013"] = {
		"Urla pure. Ho passato abbastanza tempo con una voce in testa a darmi ordini. Con la tua, almeno, posso discutere.",
		"Un insegnamento duro? Bene. Il dolore quasi non mi arriva: dovrai provare con la pazienza.",
	},
	["race.scourge.npc_meet.w09.014"] = {
		"Custodiscilo bene. Non ho fretta di tornare a prenderlo. Non ho fretta di niente.",
		"Oggetti da depositare. Prima che tu lo chieda: no, nessuno è uscito da una tomba. Di recente.",
		"Tienimeli al sicuro. Non è che tema di perderli. Mi consola solo che qualcosa di mio resti tutto intero.",
	},
	["race.scourge.npc_meet.w09.015"] = {
		"{other} chiede aiuto, e rabbrividisce solo un poco. Comprensibile. Accetto il lavoro: è così che i morti si guadagnano un posto tra i vivi.",
		"Qualcuno ha un incarico da affidare e ha scelto il cadavere nella stanza. Forse per disperazione. Forse per fiducia. Farò finta che sia fiducia.",
		"Una richiesta fatta liberamente, che sono {g:libero|libera} di rifiutare. È una libertà ancora abbastanza nuova da avere un buon sapore. Accetto comunque.",
	},
	["race.scourge.npc_meet.w09.016"] = {
		"Gente nostra. Non serve il discorso sul dovere verso la Dama Oscura: dimmi solo dove.",
		"Siamo Reietti tutti e due, quindi lascia perdere le distanze educate. Cosa c'è da fare, e chi c'è da seppellire?",
	},
	["race.scourge.npc_meet.w09.017"] = {
		"Un tauren che chiede aiuto ai Reietti, e sul serio. Furono i tauren a parlare per noi quando l'Orda avrebbe potuto voltarci le spalle. Non lo dimentico.",
		"Quei grandi occhi pazienti che mi guardano senza ribrezzo. Farei il lavoro anche solo per questo.",
	},
	["race.scourge.npc_meet.w09.018"] = {
		"Dietro il banco, una mano verde versa da bere e l'altra resta vicina alla mannaia. Mi offenderei, se non fosse un servizio così sensato.",
		"Gente orchesca manda avanti la casa. Onore e parole semplici, dicono. Le parole semplici, almeno, le leggo su quella faccia: «non cominciare niente».",
	},
	["race.scourge.npc_meet.w09.019"] = {
		"Fai pure il tuo segno contro i morti, se ti serve. Poi vendimi qualcosa. Le due cose possono succedere insieme.",
		"Troll e Reietti che commerciano. Nessuno si fida di nessuno, tutti sono educati. L'Orda in miniatura.",
	},
	["race.scourge.npc_meet.w09.020"] = {
		"La Dama Oscura. Ha spezzato la catena che avevamo in testa e ci ha chiesto solo di tenere affilata la volontà. Mi inchino, quanto me lo permettono queste vecchie giunture.",
		"Lady Sylvanas. La libertà ha un volto, ed è pallido e freddo così. Nessun altro ci avrebbe strappati alla presa del Re dei Lich.",
		"La Regina Banshee in persona. Alcuni di noi la seguono per amore, altri per paura, altri per semplice gratitudine. Sono qui davanti a lei e non so dire quale sia il mio caso.",
	},
	["race.scourge.npc_meet.w09.021"] = {
		"posa le monete sul banco una alla volta, piano, così che il mercante non debba toccare una mano morta.",
		"tiene le dita lontane da quelle del mercante e fa scivolare il pagamento con la punta delle unghie.",
	},
	["race.scourge.npc_meet.w09.022"] = {
		"Il dolore, evidente sul volto di {other}. I vivi soffrono con tutto il corpo. Questo lo ricordo, e un po' lo invidio.",
		"{other} ha l'aspetto che per me hanno le rovine di Lordaeron: qualcosa di rotto, eppure in piedi. Tengo la voce bassa.",
	},
	["race.scourge.other_action.w09.001"] = {
		"Ci sto. Se qualcuno deve entrare per primo, che sia chi è già morto.",
		"Un invito. Vengo, e cercherò di non gocciolare addosso a nessuno.",
		"D'accordo. Combatto bene e mi lamento poco. Le lamentele sono finite più o meno quando è finito il respiro.",
	},
	["race.scourge.other_action.w09.002"] = {
		"Un duello? Va bene. Non spaventarti se si stacca qualcosa. Non vuol dire che mi arrendo.",
		"Accetto. Il dolore mi arriva tardi e leggero. Dovrai essere convincente.",
		"Uno scontro con un morto. Scelta audace. Mi piace l'audacia.",
	},
	["race.scourge.other_action.w09.003"] = {
		"risponde al gesto con un lento cenno del capo, badando alla mascella.",
		"alza in risposta una mano grigia; i punti di sutura al polso scricchiolano appena.",
		"ricambia il saluto con un inchino rigido e breve, quello che giunture come queste ancora concedono.",
	},
	["race.scourge.other_action.w09.004"] = {
		"Uno scambio? Va bene. Tutto quello che ti passo è stato pulito. Più o meno.",
		"Trattiamo. Dicono che i morti siano duri negli affari. Non abbiamo molto altro in cui mettere i nostri desideri.",
	},
	["race.scourge.other_action.w09.005"] = {
		"Un altro incarico preso. La mia volontà, la mia scelta, la mia commissione. Dopo il Flagello, perfino le faccende sanno di libertà.",
		"Un lavoro accettato. Dopo, tendo l'orecchio per sentire se un'altra voce ha detto sì al posto mio. Silenzio. Bene.",
	},
	["race.troll.npc_meet.w09.001"] = {
		"Ogni locanda sa di fumo e di birra vecchia. Io continuo a cercare l'odore del sale e del pesce, quello di Sen'jin. Non ci arriva mai.",
		"Un oste, un focolare, una panca troppo bassa per queste gambe. Va bene così. Un troll si piega in quattro, se il cibo lo merita.",
		"Le locande sono tutte muri e travi. A Sen'jin una capanna lascia passare il vento del mare, e nessuno la chiama corrente d'aria.",
	},
	["race.troll.npc_meet.w09.002"] = {
		"Pesce, se ne hai. Altrimenti quello che nuotava più vicino alla cucina.",
		"Qualcosa che morda un po', oste. La lingua di un troll, col pane e basta, si annoia.",
		"Dammi da mangiare per bene, oste. La carne di un troll si aggiusta in fretta, ma prima qualcuno deve riempire la pentola.",
	},
	["race.troll.npc_meet.w09.003"] = {
		"Neanche un sorriso da chi sta al banco. Una sfida, allora. I troll sono pazienti con le risate: prima o poi arrivano.",
		"Poche parole e una mano pesante sul banco. Anche certi stregoni parlano così, e sono proprio quelli da ascoltare.",
	},
	["race.troll.npc_meet.w09.004"] = {
		"Al banco c'è qualcuno del popolo di Thrall. Orchi e Darkspear dividono il fuoco da quando hanno passato il mare insieme: qui si versa come tra vecchi alleati.",
		"Mani d'orco alla spina. Gli anziani di Sen'jin dicono che i Darkspear devono agli orchi un debito e un'amicizia, e che non sono la stessa cosa. Lascio la mancia per tutte e due.",
	},
	["race.troll.npc_meet.w09.005"] = {
		"Al banco, zanne come le mie. Ci scambiamo uno sguardo e un cenno della testa: qui nessuno dovrà spiegare perché voglio il pesce.",
		"Versa qualcuno della mia gente. La panca sarà comunque troppo bassa, ma almeno in cucina sapranno cos'è il pepe vero.",
	},
	["race.troll.npc_meet.w09.006"] = {
		"Quando paga un troll, chi vende conta le monete due volte. Le dita lunghe mettono in ansia la gente. Lascio contare.",
		"I prezzi salgono un po' quando il cliente ha le zanne. Io sorrido largo, e i prezzi scendono un po' quando le zanne sorridono.",
	},
	["race.troll.npc_meet.w09.007"] = {
		"Mi serve quello che fa camminare un corpo: bende, cibo, filo. Le cose luccicanti le trovo gratis, per strada.",
		"Hai niente per una lunga camminata e un caratteraccio? No? Allora solo per la camminata.",
		"Fammi vedere la roba utile. Di roba bella, la giungla ne ha in abbondanza.",
	},
	["race.troll.npc_meet.w09.008"] = {
		"{other} ha gli occhi di un raptor davanti a una capra lenta. Peccato: questa capra ha le zanne.",
		"Il sorriso di chi vende qui è tutto denti e niente calore. Conosco lo sguardo. Ce l'ho anch'io, quando passano i banchi di pesce.",
	},
	["race.troll.npc_meet.w09.009"] = {
		"Si compra dai Reietti, stavolta. I nostri stregoni ogni tanto parlano coi morti, ma di rado ci contrattano.",
		"Mani fredde sulle monete, odore di erbe e di terra di tomba. I troll conoscono gli spiriti: questa è un'altra faccenda. Compro in fretta.",
	},
	["race.troll.npc_meet.w09.010"] = {
		"Braccia lunghe, portata lunga, si impara in fretta. Un troll prende una lezione come prende una ferita: si chiude presto e lascia qualcosa dentro.",
		"{other} mostra, io copio. Gli stregoni insegnano ai giovani allo stesso modo: guarda le mani, non la bocca.",
	},
	["race.troll.npc_meet.w09.011"] = {
		"Insegnami qualcosa di nuovo. Se sbaglio, niente paura: i troll guariscono presto e ci riprovano.",
		"Avanti, fammi vedere. Queste braccia imparano piano all'inizio, e poi tutto d'un colpo.",
	},
	["race.troll.npc_meet.w09.012"] = {
		"Questo maestro abbaia come un cacciatore di teste Darkspear in una giornata storta. Bene. Quelli che abbaiano non sprecano mai una lezione.",
		"Niente lodi, solo correzioni. Gli anziani della tribù insegnano allo stesso modo: brucia, e resta.",
	},
	["race.troll.npc_meet.w09.013"] = {
		"I cavalieri Darkspear volano sui pipistrelli da che la tribù ricordi. Qualsiasi bestia con le ali è una cugina. Più o meno.",
		"{other} mi indica una sella. I troll sono fatti per arrampicarsi sugli alberi, non sulle nuvole, ma queste gambe lunghe si piegano abbastanza.",
	},
	["race.troll.npc_meet.w09.014"] = {
		"Scegli una bestia con tanta pazienza. Queste gambe vanno ripiegate, e ci vuole un po'.",
		"Qualcosa di tranquillo, per favore. Un troll si arrampica dappertutto, ma cadere è tutta un'altra arte.",
	},
	["race.troll.npc_meet.w09.015"] = {
		"Monete in custodia, a pagamento. Sulla costa il mio popolo tiene la ricchezza in reti buone e lance affilate. Una cassa chiusa sembra pigra, ma non c'è mai da rammendarla.",
		"Oro che dorme nel caveau di un altro. Gli stregoni vorrebbero una piccola maledizione sulla serratura, tanto per stare tranquilli.",
	},
	["race.troll.npc_meet.w09.016"] = {
		"Qualcuno ha bisogno d'aiuto e alza gli occhi verso un troll. Buona scelta. Le braccia lunghe arrivano a parecchi guai.",
		"Un problema, offerto da sopra un tavolo. I Darkspear ricordano chi li aiutò quando la tribù era braccata: posso aiutare questa persona.",
	},
	["race.troll.npc_meet.w09.017"] = {
		"Dimmi cosa non va. Se morde, mordo anch'io. Se è maledetto, conosco gente.",
		"Avanti. I troll sono bravi in due cose: ascoltare e far sparire i guai. A volte rumorosamente.",
	},
	["race.troll.npc_meet.w09.018"] = {
		"Una guardia dell'Orda, che sorveglia la strada. Quando la tribù non aveva più dove andare, l'Orda le ha dato una costa e uno stendardo. Passando, faccio un cenno.",
		"I colori dell'Orda sulle spalle di una guardia. Gli anziani di Sen'jin dicono che l'unica alleanza che valga la pena tenere è quella data liberamente. Questa la teniamo.",
	},
	["race.troll.npc_meet.w09.019"] = {
		"Buona guardia. I Darkspear dormono più tranquilli con una lancia come la tua sulla strada.",
		"Braccio forte, occhio attento. L'Orda è fortunata con le sue guardie.",
	},
	["race.troll.npc_meet.w09.020"] = {
		"Una guardia dell'Alleanza, la mano sull'acciaio, gli occhi sulle mie zanne. Nelle storie degli umani il mostro è un troll da tanto tempo. Passi lenti.",
		"Quella guardia vede un troll e pensa a Zul'Gurub, o agli Amani. Non sono la mia tribù. Spiegarlo qui mi costerebbe la pelle.",
	},
	["race.troll.npc_meet.w09.021"] = {
		"ripiega le lunghe braccia ben lontano da qualsiasi arma e oltrepassa la guardia dell'Alleanza con un passo lungo, senza fretta.",
		"tiene le zanne basse e le mani bene in vista, {g:attento|attenta} con ogni palmo del lungo corpo a non sembrare una minaccia.",
	},
	["race.troll.npc_meet.w09.022"] = {
		"{other} parla a cerchi, come uno stregone che legge il fumo. So come si ascolta: si aspetta la parola che ritorna.",
		"Indovinelli. A Sen'jin i vecchi del voodoo rispondono a una domanda con un'altra domanda e un colpo di sonaglio. Con questa persona posso avere pazienza.",
	},
	["race.troll.npc_meet.w09.023"] = {
		"risponde al saluto allegro con un sorriso largo, tutto zanne, e una risata che sale gorgogliando da molto in fondo.",
		"ride insieme, una risata da troll, morbida e rotolante, e ondeggia appena sulle lunghe gambe come se lì vicino fosse partito un tamburo.",
	},
	["race.troll.npc_meet.w09.024"] = {
		"Tristezza su quella faccia. I Darkspear sanno cosa vuol dire perdere una casa. Con {other} tengo la voce bassa.",
		"Un dolore, in questa persona. Il mio popolo piange forte, e poi ride forte. Per {other} la seconda parte non è ancora arrivata.",
	},
	["race.troll.npc_meet.w09.025"] = {
		"Thrall. Il Capoguerra che trovò i Darkspear messi alle strette su un'isoletta e non volle salpare senza di loro. Ogni troll della tribù gli deve questo.",
		"Il Capoguerra dell'Orda. Vol'jin lo segue, e con lui ogni lancia Darkspear. Mi raddrizzo un poco, zanne in alto.",
	},
	["race.troll.other_action.w09.001"] = {
		"Un gruppo? Bene. I troll cacciano meglio in branco, come i raptor, solo con battute migliori.",
		"Sì, sì, arrivo. Gambe lunghe, guarigione rapida, canto stonato. Ti prendi tutti e tre.",
		"Ci sto. Ai loa piace di più un accampamento pieno che uno vuoto.",
	},
	["race.troll.other_action.w09.002"] = {
		"Anche a te! Un gesto gentile è buon mojo, e io il buon mojo non lo spreco mai.",
		"Ah! Ricambio. I troll rispondono a ogni saluto: gli spiriti ascoltano.",
	},
	["race.troll.other_action.w09.003"] = {
		"Uno scambio, allora. Giusto per giusto: gli stregoni dicono che la fortuna di un imbroglione marcisce come il pesce vecchio.",
		"Vediamo cos'hai. Io conto piano, tu conti piano, e nessuno si becca una maledizione.",
	},
	["race.troll.other_action.w09.004"] = {
		"Una sfida tra amici? Bene. Chi perde cucina il pesce, e chi vince fa finta di non zoppicare.",
		"Io e te, eh? Vacci piano. O no: tanto io guarisco in fretta.",
	},
	["race.troll.other_action.w09.005"] = {
		"Ancora tu? Bene. Stavolta gli spiriti guardano, quindi perdi come si deve.",
		"Una rivincita, eh? Avanti, allora. Le zanne mi prudevano da un pezzo.",
	},
	["race.troll.other_action.w09.006"] = {
		"Un altro lavoro sulle spalle. Va bene. La schiena di un troll è lunga: c'è posto.",
		"Parola data, parola mantenuta. Thrall ha mantenuto la sua con i Darkspear. Io posso mantenere la mia con chi me l'ha chiesto.",
		"Dimmi dove e cosa. La parola di un troll arriva lontano quanto le sue gambe, e quelle arrivano lontano.",
	},
	["faction.alliance.npc_meet.w10.001"] = {
		"Il registro sul banco: lo scarabocchio pesante di un nano, la calligrafia minuta e ordinata di uno gnomo, la grafia lunga e svolazzante di un elfo. L'Alleanza, firmata a inchiostro.",
		"Scorri il registro di qualunque locanda dell'Alleanza e troverai quattro popoli che dormono sotto lo stesso tetto e si lamentano dello stesso spiffero.",
		"Una locanda, quattro modi di russare dietro le pareti. Qualcuno l'ha chiamato il coro più sincero dell'Alleanza.",
	},
	["faction.alliance.npc_meet.w10.002"] = {
		"Una stanza, un pasto caldo e le notizie dai fronti, nell'ordine in cui arrivano.",
		"Novità da Ashenvale o dall'Arathi? Le notizie le prendo con lo stufato, e prima lo stufato.",
		"Di che si parla tra i soldati? Chi vince, chi perde, chi deve da bere a chi?",
	},
	["faction.alliance.npc_meet.w10.003"] = {
		"Una locanda kaldorei che dà da bere ai viaggiatori di tutta l'Alleanza. Diecimila anni di storia, e noi a chiedere altro pane.",
		"Chi sta al banco si muove senza un rumore e ricorda ogni ordinazione. Accanto a {other}, umani, nani e gnomi sembrano tutti un po' chiassosi.",
	},
	["faction.alliance.npc_meet.w10.004"] = {
		"Una locanda gnomesca! Allora le spine funzionano, il camino tira e c'è un congegno per ogni cosa. Quello a che serve?",
		"Qualcosa di caldo, grazie, e non spiegarmi come funziona il forno. Vorrei dormire sonni tranquilli.",
	},
	["faction.alliance.npc_meet.w10.005"] = {
		"Un grugnito, una chiave, una scodella spinta sul banco. Gli osti burberi sono uguali in ogni città dell'Alleanza, e mi fido di loro più che di quelli allegri.",
		"Niente benvenuto, niente chiacchiere, solo il conto. I soldati dell'Alleanza sono stati trattati peggio dai loro stessi generali.",
	},
	["faction.alliance.npc_meet.w10.006"] = {
		"Molle gnomesche, acciaio dei nani, cuoio degli elfi, pane umano. Lo scaffale di un mercante dell'Alleanza è una mappa di chi siamo.",
		"Ogni cassa su questi scaffali ha attraversato mezza Alleanza per arrivare qui: in tram, in nave, in grifone. Con prezzi in proporzione, s'intende.",
		"Razioni da Stormwind, corde da Ironforge, frecce impennate a Darnassus. Chi dice che l'Alleanza non va d'accordo su niente qui non ha mai fatto la spesa.",
	},
	["faction.alliance.npc_meet.w10.007"] = {
		"Questo è il prezzo dell'Alleanza o il prezzo dei goblin? Non riesco mai a capirlo, e sospetto che sia proprio questo il punto.",
		"Uno sconto per chi combatte? No? Valeva la pena chiedere. L'Alleanza ci paga in ringraziamenti, e coi ringraziamenti non ci compri una corda.",
	},
	["faction.alliance.npc_meet.w10.008"] = {
		"Un banco gnomesco con ogni articolo etichettato in letterine ordinate, prezzo compreso. L'Alleanza non ha mai avuto contabili migliori del popolo per cui non è riuscita a salvare una città.",
		"Tutto su questo banco ha un cartellino, e certi cartellini hanno un cartellino. Gli gnomi hanno perso Gnomeregan ma non i loro registri; so bene che cosa avrei salvato anch'io.",
	},
	["faction.alliance.npc_meet.w10.009"] = {
		"Turno tranquillo? Bene. Che resti noioso. La noia è proprio quello per cui noialtri combattiamo là fuori.",
		"Tutto a posto sulle mura? Allora fai il lavoro più difficile dell'Alleanza: niente, alla perfezione, per ore.",
		"Niente da segnalare? No? Allora l'Alleanza sta vincendo, almeno su questo tratto di muro.",
	},
	["faction.alliance.npc_meet.w10.010"] = {
		"Una guardia dei nani, lontana dalla montagna. Dovunque l'Alleanza alzi un muro, c'è un nano che ha già bussato sulla malta e borbottato.",
		"Una guardia bassa, larga, corazzata fino alle sopracciglia e decisa a non muoversi. Se l'Alleanza avesse uno stemma per la fermezza, sopra ci starebbe lei.",
	},
	["faction.alliance.npc_meet.w10.011"] = {
		"Gli occhi di una Sentinella su di me, il tempo esatto di decidere. Poi un cenno. Alleati, dunque: gli elfi non sprecano un secondo sguardo.",
		"La guardia elfica mi ha visto molto prima che io vedessi lei. Tra i popoli dell'Alleanza nessuno fa la guardia come loro.",
	},
	["faction.alliance.npc_meet.w10.012"] = {
		"Colori dell'Orda su quella guardia. Tengo le mani in vista e i piedi pronti a muoversi.",
		"Una guardia dell'Orda, e io bene in vista. Le parole non servirebbero: non abbiamo nemmeno una lingua in comune.",
	},
	["faction.alliance.npc_meet.w10.013"] = {
		"ricambia il cenno della guardia: il cenno breve e senza cerimonie di due alleati che non sapranno mai come si chiama l'altro.",
		"rivolge alla guardia un cenno da alleati, e ne riceve uno in cambio, breve e senza storie.",
	},
	["faction.alliance.npc_meet.w10.014"] = {
		"Da lassù le terre dell'Alleanza sembrano toppe su un mantello, con quelle dell'Orda in mezzo. Alla bestia non importa di chi sia la toppa che sorvola.",
		"Le rotte di volo sono la vera mappa dell'Alleanza: ogni posatoio un amico, ogni vuoto tra l'uno e l'altro il paese di qualcun altro.",
		"Un altro posatoio, un'altra bestia stanca, un altro custode che ha visto alleati di ogni popolo diventare verdi in faccia.",
	},
	["faction.alliance.npc_meet.w10.015"] = {
		"Un ippogrifo, allora. Gli elfi giurano che è più mansueto di un grifone; i nani giurano il contrario. Io imprecherò contro quello che scalcia.",
		"Posatoio elfico, bestia elfica. Capisce la lingua comune, o mi limito a sorriderle?",
	},
	["faction.alliance.npc_meet.w10.016"] = {
		"Da anni i maestri dell'Alleanza si rubano qualcosa a vicenda: un esercizio umano, la pazienza di un nano, un vecchio trucco elfico. Prenderò tutto quello che è finito in questa lezione.",
		"In ogni lezione dell'Alleanza c'è qualcosa che un popolo ha imparato da un altro. Nessuno lo ammette, e tutti ci guadagnano.",
	},
	["faction.alliance.npc_meet.w10.017"] = {
		"Insegnami quel che funziona contro l'Orda, e poi quel che funziona contro tutto il resto.",
		"Tutto quello che hai. L'Orda non aspetta, e nemmeno i morti lassù al nord.",
	},
	["faction.alliance.npc_meet.w10.018"] = {
		"Un altro alleato che chiede una mano. I veri trattati dell'Alleanza si scrivono così: un favore alla volta, tra persone che un re non lo incontreranno mai.",
		"I patti li firmano i re. Il resto dell'Alleanza lo tengono insieme commissioni come questa, fatte bene da sconosciuti.",
		"Qualcuno della nostra parte ha bisogno d'aiuto. Basta questo; i dettagli sono solo indicazioni stradali.",
	},
	["faction.alliance.npc_meet.w10.019"] = {
		"Se aiuta la nostra parte, ci sto. Se aiuta solo te, ci sto lo stesso, ma dimmi quale delle due.",
		"Guai? Bene. Cioè, non bene. Cioè: dimmi dove, e vediamo cosa può farci l'Alleanza.",
	},
	["faction.alliance.npc_meet.w10.020"] = {
		"Monete coniate dai nani, contate dagli gnomi, spese dagli umani e guardate dagli elfi con educato stupore. Tutta l'economia dell'Alleanza in un solo caveau.",
		"Ogni banca dell'Alleanza custodisce tesori di quattro popoli, e ognuno di quei popoli pensa che gli altri contino male.",
		"Risparmi chiusi dietro serrature dei nani, annotati da una mano gnomesca. Se mai l'Alleanza cadesse, il caveau sarebbe l'ultima cosa a restare in piedi.",
	},
	["faction.alliance.npc_meet.w10.021"] = {
		"Gente comune dell'Alleanza alle prese con la sua giornata: pane da comprare, un bambino da sgridare, un tetto da aggiustare. Ecco a cosa servono tutte le bandiere.",
		"Qui nessuno è un eroe e nessuno vuole esserlo. Fare in modo che resti così è quasi tutto il lavoro dei soldati dell'Alleanza.",
	},
	["faction.alliance.npc_meet.w10.022"] = {
		"Uno dei capi dell'Alleanza, così vicino da sentirne il respiro. Tutti i discorsi che avevo preparato, e non me ne resta una parola.",
		"Chi mette il sigillo su metà degli ordini dell'Alleanza, proprio lì davanti. Più alto della leggenda, o più basso: è difficile dirlo con le ginocchia che tremano.",
	},
	["faction.alliance.other_action.w10.001"] = {
		"Uno scambio tra alleati. Peso giusto, niente trucchi: i trucchi li lasciamo ai goblin.",
		"Le monete restano nell'Alleanza, e la buona volontà pure. Scambio onesto.",
		"Affare fatto. Se va male, daremo la colpa ai goblin, come vuole la tradizione.",
	},
	["faction.alliance.other_action.w10.002"] = {
		"Qualcuno dell'Orda mi fa un gesto. Senza una lingua in comune, un inchino e un insulto si somigliano in modo preoccupante.",
		"Un segno verso di me dalla parte dell'Orda. Saluto o sfida? Nell'Alleanza nessuno mi ha mai insegnato a leggere le loro mani.",
		"Un gesto dall'altra parte. Rispondo con un cenno, piano, come si fa con un orso che non ha ancora deciso.",
	},
	["faction.alliance.other_action.w10.003"] = {
		"ricambia il gesto di {other} con il calore spontaneo di alleati che nessuno si è mai preso la briga di presentare.",
		"risponde al gesto allo stesso modo: tra alleati, senza bisogno di nomi.",
	},
	["faction.alliance.other_action.w10.004"] = {
		"Un'altra commissione per l'Alleanza. I re firmano i trattati; gente come me sbriga le commissioni che li tengono in piedi.",
		"Un altro compito sotto la nostra bandiera. Piccolo, probabilmente. L'Alleanza è fatta soprattutto di compiti piccoli svolti da chi non era obbligato.",
		"Una richiesta da uno dei nostri. La farò come si deve: magari da questo dipende ciò che qualcuno pensa di tutta l'Alleanza.",
	},
	["faction.alliance.other_action.w10.005"] = {
		"Un duello tra amici dell'Alleanza. Chi perde porta lo zaino di chi vince fino al prossimo accampamento.",
		"D'accordo, ma vacci piano. L'Orda vorrà quel che resta di me, più tardi.",
	},
	["faction.horde.npc_meet.w10.001"] = {
		"Tieni gli occhi aperti. L'Alleanza non è l'unica cosa che passa un confine senza invito.",
		"Tieni duro. Metà dell'Orda dorme più tranquilla grazie a chi sta dove stai tu.",
	},
	["faction.horde.npc_meet.w10.002"] = {
		"Una guardia dell'Orda, lancia piantata a terra, occhi sulla strada. Qualunque sia il popolo, la posa è la stessa: l'Orda l'ha insegnata a tutti.",
		"Il cenno della guardia è secco e completo. Nell'Orda vale una conversazione intera.",
	},
	["faction.horde.npc_meet.w10.003"] = {
		"Sì, sì, sono dell'Orda. Se mi fissi ancora più forte, ti si consumano gli occhi.",
		"Stessa parte. Tieni il cipiglio per chi arriverà dalla strada.",
	},
	["faction.horde.npc_meet.w10.004"] = {
		"Una guardia dell'Alleanza, e un lungo sguardo attraverso la distanza fra noi. Nessuno dei due è qui per ricominciare la guerra. Non oggi.",
		"Acciaio coi colori dell'Alleanza, e occhi che sanno già da che parte sto. Tiro dritto; non serve aggiungere altro.",
	},
	["faction.horde.npc_meet.w10.005"] = {
		"Calma. Sono solo di passaggio, e il mio caratteraccio pure.",
		"Non serve la mano sull'elsa. Se l'Orda volesse questo posto, non manderebbe me da {g:solo|sola}.",
	},
	["faction.horde.npc_meet.w10.006"] = {
		"Le strade del cielo dell'Orda vanno dalle viverne di Orgrimmar ai pipistrelli di Undercity. Chi tiene le bestie nutrite tiene l'Orda tutta intera.",
		"Un maestro di volo dell'Orda smista i passeggeri con un'occhiata. Ogni messaggio, ogni corriere ferito, ogni ordine urgente passa per mani come queste.",
	},
	["faction.horde.npc_meet.w10.007"] = {
		"La bestia più veloce che hai. Da qualche parte all'Orda serve un paio di mani in più, e sono le mie.",
		"Portami al prossimo avamposto dell'Orda, qualunque sia. Il nome lo imparo in volo.",
	},
	["faction.horde.npc_meet.w10.008"] = {
		"Merce buona dell'Orda? Allora pago un prezzo dell'Orda: giusto, e senza discorsi.",
		"Fammi vedere quello che tiene un soldato in strada. Il resto può restare sullo scaffale.",
		"Monete per la merce, merce per la strada, strada per l'Orda. Teniamo la catena corta.",
	},
	["faction.horde.npc_meet.w10.009"] = {
		"Perline troll accanto al cuoio tauren accanto al filo dei Reietti. Lo scaffale di un mercante dell'Orda è il patto in miniatura.",
		"Il mercante dà un prezzo a tutto nella stessa moneta, chiunque l'abbia fatto. Nell'Orda, l'uguaglianza ha questa faccia.",
	},
	["faction.horde.npc_meet.w10.010"] = {
		"Una locanda dell'Orda: il focolare è di tutti, le panche sono spaiate, e accanto al fuoco c'è sempre qualcuno che ripara qualcosa.",
		"Qualunque popolo tenga questa locanda, la regola è la stessa: chi porta i colori dell'Orda ha un posto vicino al fuoco.",
		"Ogni locandiere dell'Orda sembra sapere quali tazze vanno bene con le zanne, quali sgabelli reggono un tauren e quale angolo preferiscono i Reietti. L'ospitalità è un mestiere, e loro l'hanno imparata quattro volte.",
	},
	["faction.horde.npc_meet.w10.011"] = {
		"Qualcosa di caldo e qualcosa di forte, oste. L'Orda marcia con tutte e due.",
		"Un letto, una scodella, e notizie dal fronte, se ne hai. In quest'ordine o in un altro.",
	},
	["faction.horde.npc_meet.w10.012"] = {
		"In ogni locanda dell'Orda c'è un angolo dove siedono i vecchi soldati. Lì si impara più storia dell'Orda che da qualunque capotribù.",
		"L'oste versa senza chiedermi da dove vengo. Nell'Orda, i miei colori hanno già risposto.",
	},
	["faction.horde.npc_meet.w10.013"] = {
		"Un maestro dell'Orda. Quello che imparo qui lo userò per gente che non è del mio popolo ma è dalla mia parte. Mi sembra ancora una cosa nuova.",
		"Ogni abilità insegnata in una sala dell'Orda è un po' di forza in più per il patto. Il maestro sembra saperlo, e insegna di conseguenza.",
	},
	["faction.horde.npc_meet.w10.014"] = {
		"Insegnami qualcosa che l'Alleanza non si aspetta.",
		"Ti ascolto. L'Orda mi vuole più {g:affilato|affilata}, e io pure.",
	},
	["faction.horde.npc_meet.w10.015"] = {
		"Oro in una cassaforte dell'Orda. Le mie cose adesso dormono sotto lo stesso tetto di quelle di mezza Orda. Anche così ci si sente parte di qualcosa.",
		"Il banchiere conta senza alzare gli occhi. Qualunque guerra combatta l'Orda, qualcuno deve tenere in ordine i registri.",
	},
	["faction.horde.npc_meet.w10.016"] = {
		"Se serve all'Orda, ti ascolto. Se serve solo a te, ti ascolto lo stesso, ma il prossimo giro lo offri tu.",
		"Di che cosa ha bisogno l'Orda? Dillo chiaro e me ne faccio carico.",
		"Un altro lavoro per l'Orda? Bene. I soldati con le mani in mano attaccano briga; quelli occupati la chiudono.",
	},
	["faction.horde.npc_meet.w10.017"] = {
		"Qualcuno dell'Orda ha bisogno d'aiuto e lo chiede senza cerimonie. Questo di noi mi piace: nessuno supplica, nessuno viene respinto.",
		"Un avamposto dell'Orda ha sempre più guai che braccia. {other} ha appena trovato un paio di braccia libere.",
	},
	["faction.horde.npc_meet.w10.018"] = {
		"Thrall. Un Capoguerra cresciuto fra i nemici, che ha scelto comunque la pace ovunque potesse trovarla. Davanti a lui l'Orda sta in piedi in un altro modo; anch'io.",
		"Il Capoguerra in persona. Orchi, tauren, troll e Reietti rispondono tutti a quest'unica voce. Deve pesare più di qualunque martello.",
		"Thrall, figlio di Durotan. Porta il Doomhammer, e con esso tutti e quattro i popoli dell'Orda. Faccio economia di parole.",
	},
	["faction.horde.npc_meet.w10.019"] = {
		"Cairne Bloodhoof. Il più vecchio amico dell'Orda a Kalimdor, e la sua voce più calma. Davanti a lui mi accorgo di non avere niente di urgente da dire.",
		"Il capo supremo dei tauren. Quando l'Orda arrivò su queste coste, fu il suo popolo a tenderle la mano. L'Orda non l'ha mai dimenticato.",
	},
	["faction.horde.npc_meet.w10.020"] = {
		"Vol'jin. Il cacciatore d'ombre dei Darkspear, che ha mantenuto il giuramento fatto da suo padre al Capoguerra. Pochi nell'Orda onorano un debito tanto a lungo.",
		"Vol'jin dei Darkspear. Silenzioso, attento, difficile da leggere. L'Orda è fortunata ad averlo dalla sua, e lo sa.",
	},
	["faction.horde.npc_meet.w10.021"] = {
		"Sylvanas Windrunner. L'alleata più scomoda dell'Orda, e forse la più determinata. Qualunque cosa voglia, la vuole con tutta sé stessa.",
		"La Regina Banshee. Il Capoguerra ha accolto il suo popolo; lei ha accolto la protezione del Capoguerra. Nessuno sa bene chi dei due abbia fatto l'affare migliore.",
		"Lady Sylvanas. Fredda, tagliente, impossibile da ignorare. L'Orda la tiene vicina come si tiene una lama di cui non ci si fida fino in fondo: a portata di mano, col filo rivolto altrove.",
	},
	["faction.horde.npc_meet.w10.022"] = {
		"si scosta per lasciar passare uno dei lavoratori dell'Orda sotto un carico enorme, e risponde con un cenno al suo grugnito di ringraziamento.",
		"risponde al cenno stanco di uno dei lavoratori dell'Orda, gente che non vede mai un campo di battaglia e li rifornisce tutti.",
	},
	["faction.horde.npc_meet.w10.023"] = {
		"Una faccia allegra sotto i colori dell'Orda. Il patto ha giorni duri; qualcuno deve ricordarsi che ne ha anche di buoni.",
		"{other} sorride come se l'Orda avesse appena vinto qualcosa. Forse è così, da qualche parte. Il sorriso me lo prendo comunque.",
	},
	["faction.horde.other_action.w10.001"] = {
		"Una banda da guerra, allora. L'Orda è più forte quando i suoi popoli camminano insieme, e io pure.",
		"Vengo. È con bande piccole come questa che l'Orda si è rimessa in piedi, uno scontro dopo l'altro.",
	},
	["faction.horde.other_action.w10.002"] = {
		"Uno scambio fra alleati. Pesi giusti, niente trucchi: quelli li teniamo per l'Alleanza.",
		"Scambiamo. Quello che l'Orda non fornisce, ce lo forniamo a vicenda.",
	},
	["faction.horde.other_action.w10.003"] = {
		"Anche a te. Un saluto fra gente dell'Orda non va mai sprecato.",
		"Ah. Che piacere, sotto gli stessi colori.",
	},
	["faction.horde.other_action.w10.004"] = {
		"risponde al gesto portando il pugno chiuso al petto, il saluto che tutti i popoli dell'Orda hanno in comune.",
		"ricambia il saluto con un breve cenno e la mano alzata, da Orda a Orda.",
	},
	["faction.horde.other_action.w10.005"] = {
		"Incarico preso. Prima o poi renderà l'Orda un po' più forte, o un po' meno affamata.",
		"Un'altra commissione. L'Orda è stata costruita con commissioni come questa; aggiungo la mia al mucchio.",
	},
	["faction.horde.other_action.w10.006"] = {
		"Vuoi un incontro? Bene. Due alleati che si scambiano colpi, e l'Orda ne esce più affilata.",
		"Volentieri. Che si vinca o si perda, al fuoco torniamo insieme.",
	},
	["faction.horde.other_action.w10.007"] = {
		"La sfida di una rivalità, sotto la stessa bandiera. Combatterò lealmente e vincerò lo stesso.",
		"Ancora tu. Va bene. Stessa bandiera o no, era un pezzo che lo aspettavo.",
	},
}, "base_context")
