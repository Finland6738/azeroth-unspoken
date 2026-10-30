-- Testi in italiano delle frasi di interlocutore e luogo (step S6c, ampliati in S7). Le regole stanno in
-- Data/RegistryContext.lua. Le frasi del narratore sono emote: iniziano in minuscolo, perché il gioco antepone il
-- nome del personaggio. Le battute della voce NPC sono in prima persona dell'NPC e restano private.
local ADDON, NS = ...

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
		"Una sfida da uno di cui non mi sono mai fidato. Guarda le mani, non il viso.",
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
		"Il tintinnio dei boccali, una risata dal fondo della sala. Stanotte nessuno ti chiede niente.",
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
}, "base_context")
