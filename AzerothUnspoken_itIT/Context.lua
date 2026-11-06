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
}, "base_context")
