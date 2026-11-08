-- Testi di base in italiano: incantesimi, viaggi e resurrezioni. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySpells.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

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
		"Hai una brutta cera. Rimedio subito.",
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
		"Ascolta queste parole, e tremane.",
		"Ascolta bene queste parole: sono le ultime che senti oggi.",
	},
	["atk.spell.02"] = {
		"È un nome antico. Te lo dico perché dopo non potrai chiederlo.",
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
		"{target}, resta con me. Segui la mia voce, non il buio.",
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
		"Che questo incantesimo ti avvolga come un mantello nella notte fredda.",
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
		"posa la fronte su quella di chi giace a terra e sussurra un nome, finché il respiro non torna.",
		"posa una mano sul petto immobile e aspetta, finché sotto il palmo qualcosa non torna a battere.",
	},
	["rezo.e.02"] = {
		"si inginocchia nella polvere accanto al corpo e scosta i capelli dalla fronte inerte, prima di cominciare.",
		"allarga le braccia sopra chi giace a terra; per un lungo momento non si sente nemmeno il vento.",
	},
	["race.dwarf.attack.001"] = {
		"Dalla montagna, con i miei omaggi!",
		"Lo senti? È Khaz Modan che bussa.",
		"Un po' di artigianato nanico, consegnato a domicilio!",
	},
	["race.dwarf.buff.001"] = {
		"Ecco, {target}. Questo ti metterà un po' di granito nella schiena.",
		"Ora reggerai meglio. La montagna ti presta un po' di sé.",
	},
	["race.dwarf.heal.001"] = {
		"Non muoverti, {target}. Rattoppare la gente è come aggiustare un mantice: mani ferme e niente storie.",
		"Ecco. Chiuso a tenuta come una buona botte. Vai pure.",
	},
	["race.gnome.attack.001"] = {
		"Forza applicata con l'angolo ottimale!",
		"Ecco una cosetta su cui stavo lavorando!",
		"Precisione! Be', entusiasmo. Più o meno è uguale!",
	},
	["race.gnome.buff.001"] = {
		"Potenziamento applicato, {target}! Gli effetti collaterali sono rari e di solito passeggeri.",
		"Ecco. Ora vai al centodieci per cento. Cerca di non surriscaldarti.",
	},
	["race.gnome.heal.001"] = {
		"Non agitarti, {target}, è solo una riparazione veloce. I rivetti quasi non si vedranno.",
		"Rattoppo fatto! Non è l'originale di fabbrica, ma funziona.",
	},
	["race.human.attack.001"] = {
		"Per il regno, e per ogni strada che protegge!",
		"Ecco una lezione che insegnano a Roccavento!",
		"Assaggia la testardaggine del genere umano!",
	},
	["race.human.buff.001"] = {
		"Ecco, {target}. Un piccolo aiuto non ha mai fatto vergognare nessuno.",
		"Avanti, a testa alta. Ci si guarda le spalle a vicenda: è l'unico modo in cui siamo durati.",
	},
	["race.human.heal.001"] = {
		"Piano, {target}. Ho ricucito di peggio durante la mietitura, e se ne sono andati tutti sulle loro gambe.",
		"Ecco fatto, rattoppo concluso. Non costringermi a rifarlo.",
	},
	["race.nightelf.attack.001"] = {
		"Rapido come il gufo!",
		"Per la foresta!",
		"Che la luna guidi questo colpo!",
	},
	["race.nightelf.buff.001"] = {
		"La grazia di Elune su di te, {target}. Portala con leggerezza.",
		"Ecco. Va' con la pazienza della foresta e la rapidità del cervo.",
	},
	["race.nightelf.heal.001"] = {
		"Calma, {target}. La carne si risana come la corteccia, con un piccolo aiuto.",
		"Ecco. Guarisce come guarisce la foresta: lentamente, dall'interno, e più forte dove resta la cicatrice.",
	},
	["race.orc.attack.001"] = {
		"Le mani libere colpiscono più forte!",
		"Per i clan, e per i caduti!",
		"Questo è per i campi!",
	},
	["race.orc.buff.001"] = {
		"Tieni, un po' di testardaggine da orco. È il regalo migliore che ho.",
		"Ecco. Combatti come se i clan ti stessero guardando.",
	},
	["race.orc.heal.001"] = {
		"In piedi. Gli orchi sono usciti da cose peggiori.",
		"Stringi i denti e lascia che si richiuda. Una cicatrice è solo una storia con il coperchio.",
	},
	["race.scourge.attack.001"] = {
		"Senti il freddo che mi porto dentro!",
		"Un regalo dalla tomba, per te!",
		"Ecco. Un assaggio di quello che ti aspetta.",
	},
	["race.scourge.buff.001"] = {
		"Tieni. Un dono dei morti, fatto liberamente. Più raro di quanto immagini.",
		"Prendi. A me il calore non serve, a te forse sì.",
	},
	["race.scourge.heal.001"] = {
		"Non muoverti. È strano, rimettere in sesto i vivi. Cerco di farlo con delicatezza.",
		"Ecco. Tienitelo caro, il tuo battito: se se ne andasse, ti mancherebbe.",
	},
	["race.tauren.attack.001"] = {
		"Senti il peso delle pianure!",
		"Questo arriva da Mulgore!",
		"Giù, come l'erba sotto la mandria!",
	},
	["race.tauren.buff.001"] = {
		"Va', con la forza della Madre Terra sotto i piedi.",
		"Ecco. Adesso stai in piedi un po' più come una montagna.",
	},
	["race.tauren.heal.001"] = {
		"Respira. La terra guarisce piano, ma guarisce sempre.",
		"Piano. Lascia che la ferita si chiuda come l'erba si richiude su un sentiero.",
	},
	["race.troll.attack.001"] = {
		"Dalle isole, con affetto!",
		"Tieni, un regalino dei Darkspear!",
		"Al volo!",
	},
	["race.troll.buff.001"] = {
		"Prendi un po' della fortuna dei Loa. Restituiscila quando hai finito.",
		"Tieni. Un amuleto senza laccio. Portalo bene.",
	},
	["race.troll.heal.001"] = {
		"Non muoverti. Noi troll guariamo in fretta: tu dovrai prenderne un po' in prestito.",
		"Ecco. Non è come il sangue di troll, ma si chiude.",
	},
	["band.b20_30.attack.01"] = {
		"Una volta quella mossa mi prendeva tutta la concentrazione. Adesso viene da sé.",
		"Ci ho fatto pratica cento volte. Questa è la centunesima.",
	},
	["band.b30_40.attack.01"] = {
		"Non è la mossa più vistosa che conosco. Solo quella che funziona.",
		"Semplice, preciso, e finito prima che te ne accorga.",
	},
	["band.b40_50.attack.01"] = {
		"Ogni mossa che faccio adesso ha un motivo. Il motivo di questa sei tu.",
		"L'ho ripetuta fino alla noia. Adesso la noia tocca a te.",
	},
	["band.b50_60.attack.01"] = {
		"Ogni movimento che abbia mai imparato, racchiuso in questo.",
		"Niente fronzoli. Solo la cosa giusta, al momento giusto.",
	},
	["band.b60.attack.01"] = {
		"Anni di pratica in un solo gesto. Prendi pure nota.",
		"Ecco com'è la pazienza quando finalmente si muove.",
	},
	["buff.w04.001"] = {
		"Ecco qua, {target}. Gratis, per questa volta.",
		"Offre la casa. Il prossimo ti costa un boccale.",
		"Questo è un regalo. Non dirlo agli altri.",
	},
	["buff.w04.002"] = {
		"Un po' di più tra il mondo e la pelle. Tutto fa.",
		"I piccoli vantaggi vincono le giornate lunghe.",
		"Ogni briciola aiuta. Uno scontro non chiede mai se eri {g:pronto|pronta}.",
	},
	["buff.w04.003"] = {
		"raddrizza le spalle mentre qualcosa di nuovo vi si posa, leggero come uno zaino vuoto.",
		"flette le dita, saggiando una forza che un attimo fa non c'era.",
		"si tiene un po' più {g:dritto|dritta}, come se dalla schiena fosse sparito, in silenzio, un peso.",
	},
	["buff.w04.004"] = {
		"Cerca di riportarmelo intero, {target}.",
		"È in prestito. Lo rivoglio senza ammaccature.",
	},
	["buff.w04.005"] = {
		"Tieni la testa un po' più alta, {target}. Adesso hai più cose a sostenerti.",
		"Questo dovrebbe tenerti in piedi ancora un po'.",
		"Uno strato in più tra te e i guai. Fanne buon uso.",
	},
	["buff.w04.006"] = {
		"Non è un'armatura, non proprio. Ma la prendo.",
		"Non fermerà tutto. Qualcosa sì, e tanto basta.",
	},
	["buff.w04.007"] = {
		"Funziona? Probabilmente. Crederci aiuta? Senz'altro.",
		"Metà è la benedizione, l'altra metà è convincersi che funzioni.",
		"Che sia la benedizione o solo il pensiero, mi sento più {g:solido|solida}.",
	},
	["heal.w04.001"] = {
		"Non muoverti, {target}. Funziona meglio se non ti agiti.",
		"Smetti di dimenarti. Mi rovini il lavoro.",
		"Muoviti di meno e lasciami ricucire. Grazie.",
	},
	["heal.w04.002"] = {
		"lavora svelto e senza storie, come chi ricuce una cinghia strappata prima di rimettersi in cammino.",
		"mormora sottovoce, l'attenzione tutta sulla ferita e su nient'altro.",
	},
	["buff.w06.001"] = {
		"Qualcosa si posa sotto la pelle e ci resta. Bene. La strada è lunga.",
		"Un margine in più dalla mia parte. Sono i margini a riportare la gente a casa.",
		"Non è invincibilità. È preparazione, che ne è la versione onesta.",
	},
	["buff.w06.002"] = {
		"Vai, {target}. Adesso porti qualcosa in più: spendilo con giudizio.",
		"Per un po' è tuo. Non sprecarlo con la prima cosa che ringhia.",
		"Va' pure, {target}, con qualcosa in più rispetto a prima.",
	},
	["heal.w06.001"] = {
		"La ferita si chiude. Domani farà male, ma domani è lontano.",
		"Chiusa, più o meno. Il dolore aspetterà la sera: lo fa sempre.",
	},
	["heal.w06.002"] = {
		"si ferma un istante, mentre il peggio del dolore si ritira, poi rialza lo sguardo.",
		"aspetta, immobile, che il dolore allenti la presa un dito dopo l'altro.",
	},
	["heal.w06.003"] = {
		"Rimettere insieme i pezzi è la parte facile. L'arte è non rompersi di nuovo nei cinque minuti dopo.",
		"Rattoppare è semplice. Il difficile è che il rattoppo tenga oltre la prossima curva.",
		"Chiudere una ferita è questione di un attimo. Tenerla chiusa è questione di giudizio.",
	},
	["heal.w06.004"] = {
		"Andrà bene. A furia di guardarlo non tiene di più.",
		"Basta così. A restare fermi non migliora.",
		"Fatto. Gambe in movimento, per favore.",
	},
	["heal.w06.005"] = {
		"Ogni cura compra un po' di tempo. Nessuno dice mai a chi lo si compra.",
		"Tempo ricomprato a manciate. Il venditore, in faccia, non l'ho mai visto.",
	},
	["heal.w06.006"] = {
		"controlla con un'occhiata attenta la ferita richiusa, come si saggia un nodo prima di affidargli un peso.",
		"guarda a lungo la ferita che si chiude, come un falegname guarda un incastro prima di dirlo finito.",
	},
	["heal.w06.007"] = {
		"Regge abbastanza. Quello che viene dopo non aspetterà che io mi senta {g:pronto|pronta}.",
		"Quanto basta per andare avanti. Del resto, andare avanti era l'unico piano.",
	},
	["heal.w06.008"] = {
		"Guarda un po'. Quasi presentabile di nuovo.",
		"Ecco. Quasi da portare in società.",
		"Meglio. Nessuno se ne accorgerebbe, purché nessuno guardi troppo da vicino.",
	},
	["heal.w06.009"] = {
		"Una ferita è una lezione pagata in anticipo. Tanto vale impararla.",
		"Qualcuno quella lezione l'ha pagata col sangue. Sprecarla sarebbe l'offesa vera.",
	},
	["heal.w06.010"] = {
		"approfitta del momento tranquillo per lasciar finire la cura, senza fretta e senza voglia di essere {g:disturbato|disturbata}.",
		"lascia che la quiete faccia la sua parte di lavoro, mentre il dolore svanisce.",
	},
	["heal.w06.011"] = {
		"Non è ancora finita. Nemmeno a metà.",
		"Dovrai colpire parecchio più forte di così.",
	},
	["heal.w06.012"] = {
		"Ho smesso di contare le ferite. Adesso conto le ore che mancano al riposo.",
		"I tagli non fanno più notizia. Ormai sono parte della strada.",
		"Un'altra ferita, un'altra cura. Si danno lavoro a vicenda.",
	},
	["heal.w06.013"] = {
		"Rimettere in sesto ha un suo ritmo: guardare, valutare, chiudere, ripartire. È il ritmo che tiene ferme le mani.",
		"Guarda, valuta, chiudi, riparti. Ripetilo abbastanza e le mani smettono di tremare.",
	},
	["heal.w06.014"] = {
		"Meglio. Molto meglio. Allora, cosa mi sono {g:perso|persa}?",
		"Ah, così va meglio. Andiamo?",
	},
	["heal.w06.015"] = {
		"I corpi sono testardi. Gli dai mezza occasione e si ostinano ad andare avanti.",
		"La carne vuole richiudersi. Il grosso del lavoro è non intralciarla.",
	},
	["heal.w06.016"] = {
		"esamina il risultato col vago sospetto di chi si è già sentito promettere «come nuovo» altre volte.",
		"osserva la ferita rimessa a posto come si osserva una riparazione alla buona: con gratitudine, ma senza esserne {g:convinto|convinta} del tutto.",
	},
	["heal.w06.017"] = {
		"E allora ancora. Tutte le volte che serve.",
		"Ogni volta che si rompe, si aggiusta. Questo è il patto.",
		"Si rompe, si aggiusta, si rompe, si aggiusta. A questo gioco duro più io di loro.",
	},
	["heal.w06.018"] = {
		"Costa meno rimettersi in sesto adesso che farsi portare in spalla dopo.",
		"Una piccola riparazione adesso risparmia una camminata molto più lunga dopo.",
	},
	["heal.w06.019"] = {
		"stappa la fiala coi denti, la vuota in due sorsi e ripone il vetro vuoto.",
		"rovescia all'indietro una fialetta, fa una smorfia all'ultima goccia e ritappa il vetro vuoto per abitudine.",
		"manda giù la pozione senza cerimonie, si pulisce la bocca con la manica e torna alle sue faccende.",
	},
	["heal.w06.020"] = {
		"Rossa, densa, vagamente frizzante. Ho smesso di chiedermi cosa ci mettano gli alchimisti. Vivo meglio senza saperlo.",
		"Un alchimista, chissà dove, si sta arricchendo con la mia goffaggine. Buon per lui.",
	},
	["heal.w06.021"] = {
		"Alla salute, e speriamo che la seconda non serva.",
		"Una andata. Facciamo che resti l'unica.",
		"Al prossimo scontro, e a uscirne sulle mie gambe.",
	},
	["heal.w06.022"] = {
		"Una fiala in meno. Meglio contare quelle rimaste prima che ne serva un'altra.",
		"La sacca adesso è un po' più leggera. Fare scorta dal prossimo mercante: me ne sarò {g:grato|grata}.",
	},
	["heal.w06.023"] = {
		"Dolce in bocca e amara fino in fondo. Come quasi tutti i buoni consigli.",
		"Sa di rame e di rimpianto, e la berrei di nuovo.",
	},
	["heal.w06.024"] = {
		"Una pietra verde si sbriciola nel palmo, e la vita che conteneva passa oltre. Era fatta proprio per questo.",
		"La pietra cede quello che tratteneva e si spegne nella mano. Uno scambio onesto, per una volta.",
		"Niente sapore, niente odore, solo il dolore che tace. Chi per primo ha chiuso la vita in una pietra ci aveva visto giusto.",
	},
	["heal.w06.025"] = {
		"stringe nel pugno una pietra verde pallido; quando riapre la mano, resta solo un po' di polvere.",
		"sbriciola in una mano una piccola pietra verde, e si regge più {g:saldo|salda} sulle gambe.",
	},
	["heal.w06.026"] = {
		"Una pietra che guarisce. Meglio che i minatori non lo sappiano.",
		"Di solito le pietre le ossa le rompono. Questa fa il contrario. Non mi lamento.",
	},
	["heal.w06.027"] = {
		"avvolge stretta una striscia di lino intorno alla ferita, tenendone un capo coi denti per tirare il nodo.",
		"fascia la ferita con giri rapidi di stoffa, rimbocca il capo libero e saggia la tenuta flettendo l'arto.",
	},
	["heal.w06.028"] = {
		"Sopra, sotto, tira. Il nodo mi viene sempre più facile, e non è un buon segno.",
		"Stoffa pulita, giri ben stretti, un nodo che non scivola. Le cose semplici ti tengono in vita più di quelle furbe.",
		"Due giri, una piega, un nodo. Le mani lo sanno fare meglio di quanto vorrei.",
	},
	["heal.w06.029"] = {
		"Lino e testardaggine. La miglior medicina che posso permettermi.",
		"È una benda, non un miracolo. Sempre meglio che gocciolare.",
	},
	["heal.w06.030"] = {
		"La stoffa si arrossa ai bordi e lì si ferma. Bene. Non le chiedo altro.",
		"Un'altra fasciatura sopra la cicatrice della precedente. Le mie braccia stanno diventando una mappa di giornate storte.",
	},
	["heal.w06.031"] = {
		"Piano, {target}. Lascia che faccia effetto. Il coraggio lo rimetti in campo fra un minuto.",
		"Dagli un momento. Il coraggio può aspettare che questa si chiuda.",
	},
	["heal.w06.032"] = {
		"{target}, i buchi li richiudo. La tua passione per collezionarli, quella no.",
		"Fatto. Adesso smettila di metterti dove arrivano le cose appuntite.",
		"Ecco. Per un po', cerca di non aprirtene altri.",
	},
	["heal.w06.033"] = {
		"Guardare gli occhi, non la ferita. Sono gli occhi a dirmi se arrivo in tempo.",
		"Il viso, non la ferita. È il viso a dire se sono abbastanza {g:svelto|svelta}.",
	},
	["heal.w06.034"] = {
		"Cadi quando lo dico io, {target}, e io non l'ho detto.",
		"Qui non va giù nessuno finché ci sono io in piedi. Nessuno.",
		"Resta su, {target}. Cadere non è nei programmi.",
	},
	["heal.w06.035"] = {
		"posa una mano ferma sulla spalla di {target} e ce la tiene finché il peggio non è passato.",
		"si china su chi è ferito senza alcuna fretta, come se il tempo non mancasse affatto.",
	},
	["heal.w06.036"] = {
		"Ecco qua, {target}. Quasi come prima, cicatrice più, cicatrice meno.",
		"Finito. Mi devi il racconto di come te la sei procurata.",
		"Ecco, {target}. Fra un'ora non ti ricorderai nemmeno che è successo.",
	},
	["heal.w06.037"] = {
		"La ferita la chiudo. Il gusto del rischio che l'ha aperta, quello non è mai toccato a me ricucirlo.",
		"Le mani ricuciono la carne. L'imprudenza, nessuna mano al mondo la ricuce.",
	},
	["heal.w06.038"] = {
		"Non guardarla, {target}. Guarda me. Al resto penso io.",
		"Gli occhi su di me, non lì. Il resto lo sistemo io.",
	},
	["heal.w06.039"] = {
		"Fatto, {target}. Torna dentro, e stavolta tieni alta la guardia.",
		"Vai. Ne hai per un altro giro.",
	},
	["heal.w06.040"] = {
		"{target}, di questo passo dovrei farmi pagare a ferita.",
		"Di questo passo mi servirà un registro tenuto apposta.",
	},
	["heal.w06.041"] = {
		"mormora qualche parola semplice di conforto, di quelle che non significano niente e aiutano lo stesso.",
		"continua a parlare piano e con calma mentre lavora, come si fa con un cavallo ombroso.",
	},
	["heal.w06.042"] = {
		"Riposa un momento, {target}. La strada aspetta: lo fa sempre.",
		"Siediti. La strada non parte senza di te.",
	},
	["race.dwarf.heal.w06.001"] = {
		"I vecchi minatori dicono che una ferita è come una vena nella roccia: può sembrare chiusa e nascondere ancora una crepa. Meglio controllare due volte.",
		"Giù nelle profondità si dice che non ci si fida di una cosa riparata finché non ha retto un peso. Giusto.",
	},
	["race.dwarf.heal.w06.002"] = {
		"Peggio della birra più scadente di Ironforge, e fa il doppio del bene.",
		"Giù in un sorso. Non regge il confronto con una birra scura come si deve, ma ferma il sangue.",
	},
	["race.human.heal.w06.001"] = {
		"Dalle mie parti si dice che una ferita di cui puoi ridere è già mezza guarita. Qualcuno cominci a ridere, allora.",
		"A Stormwind la gente ama dire che il dolore è solo il conto che il corpo presenta. Saldato, allora.",
	},
	["race.human.heal.w06.002"] = {
		"Coraggio in bottiglia, lo chiamano i vecchi soldati. Sa soprattutto di stagno.",
		"Tappata, sigillata, e cara quanto una settimana di pane. Almeno funziona.",
	},
	["race.nightelf.heal.w06.001"] = {
		"Le Sentinelle hanno un detto: nessuna ferita è più vecchia della foresta, e la foresta è ancora in piedi.",
		"Il mio popolo è sopravvissuto a imperi e a un mare spaccato in due. Non sarà una ferita in più a finirci.",
	},
	["race.nightelf.heal.w06.002"] = {
		"Lino, stretto, poi un nodo. Le Sentinelle si fasciano le ferite in silenzio; io almeno posso provarci.",
		"Fasciatura fatta, nodo stretto. Non è la benedizione delle sacerdotesse, ma terrà.",
	},
	["race.orc.heal.w06.001"] = {
		"Annoda e rimettiti in marcia. I vecchi guerrieri dicono che una ferita per cui ti fermi è una ferita che vince.",
		"Benda, nodo, fatto. Gli orchi hanno sanguinato su terreni peggiori di questo.",
		"Stoffa, i denti per stringere il nodo, e di nuovo in piedi. Basta così.",
	},
	["race.scourge.heal.w06.001"] = {
		"osserva la carne lacerata che si ricompone con un interesse distaccato, come chi guarda uno sconosciuto rammendare una giacca.",
		"guarda la ferita richiudersi senza il minimo sollievo: il dolore ha smesso da tempo di avere molto da dire.",
	},
	["race.scourge.heal.w06.002"] = {
		"Nessun sapore, nessun calore che scende. Funziona lo stesso. Quasi tutto funziona, quando smetti di aspettarti di sentirlo.",
		"Una pozione curativa per un corpo che, a rigore, è oltre ogni cura. L'ironia non mi sfugge.",
	},
	["race.tauren.heal.w06.001"] = {
		"Riposa un momento. La Madre Terra è paziente con chi è ferito, e io con lei.",
		"Appoggiati a me, se serve. Queste spalle sono fatte per portare pesi.",
		"Piano. Anche i kodo si fermano, dopo una lunga marcia.",
	},
	["race.troll.heal.w06.001"] = {
		"Non muoverti, mon. Ai loa non piacciono i pazienti che si dimenano.",
		"Resta giù un respiro. Tra poco sarai di nuovo in piedi a sorridere.",
	},
	["race.troll.heal.w06.002"] = {
		"Fascialo stretto e non pensarci più. La carne di troll sa cosa fare da lì in poi.",
		"Un po' di stoffa per tenere fuori lo sporco. Il lavoro vero lo fa la rigenerazione.",
	},
	["rezother.w06.001"] = {
		"Forza. Trova la strada del ritorno. Ho lasciato la porta aperta.",
		"Torna indietro. Piano. Il mondo è ancora qui, più o meno come l'hai lasciato.",
	},
	["rezother.w06.002"] = {
		"attende accanto a chi è caduto, le mani aperte e pazienti, come si aspetta un viandante in ritardo sulla strada.",
		"resta immobile sul corpo, {g:attento|attenta} al primo piccolo segno che qualcuno sta tornando.",
	},
	["buff.w07.001"] = {
		"Del tutto pronti non lo si è mai. Abbastanza, sì.",
		"Preparazione fatta. Non per tutto, ché a tutto non si prepara nessuno. Per la prossima cosa, almeno.",
		"Abbastanza {g:pronto|pronta}. Il resto si decide strada facendo.",
	},
	["buff.w07.002"] = {
		"Bene. Adesso la strada faccia pure come le pare.",
		"Io sono a posto. Quello che c'è più avanti farà meglio a valerne la pena.",
		"Tutto a posto. Vediamo cosa ci aspetta più in là lungo la strada.",
	},
	["buff.w07.003"] = {
		"aspetta che faccia presa, poi fa ruotare il collo una volta, come un fabbro prima del primo colpo.",
		"resta {g:fermo|ferma} un momento, lascia che la preparazione prenda effetto, poi annuisce a nessuno in particolare.",
	},
	["buff.w07.004"] = {
		"Niente di quello che ha cercato di uccidermi ha mai combattuto lealmente. Non vedo perché dovrei cominciare io.",
		"Chiamalo barare, se vuoi. Dove vado io lo chiamano sopravvivere.",
	},
	["buff.w07.005"] = {
		"Qualunque cosa arrivi adesso, mi troverà ad aspettarla, e {g:pronto|pronta}.",
		"Venga pure, qualunque cosa sia. Non mi coglierà {g:impreparato|impreparata}.",
	},
	["heal.w07.001"] = {
		"Il fiato si fa più facile. Non mi ero {g:accorto|accorta} di quanto fosse diventato corto.",
		"L'aria arriva di nuovo fino in fondo. Buffo: ti manca solo quando scarseggia.",
		"Un respiro pieno, poi un altro. Il petto smette di litigare con me.",
	},
	["heal.w07.002"] = {
		"Promemoria per me: la parte appuntita è quella pericolosa.",
		"Lezione imparata: mai mettersi davanti alla cosa coi denti.",
	},
	["heal.w07.003"] = {
		"Ogni ferita è un debito che il corpo annota. Questo è cancellato. La pagina resta lunga.",
		"Un debito depennato. Gli altri il corpo non li scorda: smette solo di nominarli per un po'.",
	},
	["heal.w07.004"] = {
		"Regge. Finiamo quello che hai cominciato tu.",
		"Chiuso il buco. Il tuo turno è finito.",
		"Rattoppo fatto. Adesso a picchiare tocca a me.",
	},
	["heal.w07.005"] = {
		"fa ruotare le spalle, saggia il punto che faceva male e lo trova di nuovo disposto a lavorare.",
		"preme il palmo sul punto dolente, aspetta, e lascia ricadere la mano quando nulla protesta.",
	},
	["heal.w07.006"] = {
		"Il cuore rallenta e riprende il suo passo di sempre. Un attimo fa non sentivo altro.",
		"Il polso smette di martellarmi nelle orecchie, e il mondo si riprende i suoi rumori.",
	},
	["heal.w07.007"] = {
		"Questa è arrivata più vicino di quanto mi concedo di ammettere. Ora è sistemata; ammetterlo può aspettare.",
		"Sistemata. A quanto ci sono {g:andato|andata} vicino non ci penso. Non ancora, almeno.",
		"Un po' troppo vicino al bordo, per i miei gusti. Adesso il bordo è più lontano, e lì deve restare.",
	},
	["heal.w07.008"] = {
		"Ah. Ci voleva proprio.",
		"Ahh. Come un piatto caldo in fondo a una marcia lunga e fredda.",
	},
	["heal.w07.009"] = {
		"Ci sono {g:entrato|entrata} con la guardia abbassata. La cura costa poco; l'abitudine costerebbe cara.",
		"Una distrazione. Rimediare ha richiesto un attimo; disimparare l'errore richiederà di più.",
		"Guardia abbassata per mezzo respiro, e pagata per intero. Annotato.",
	},
	["heal.w07.010"] = {
		"guarda il punto rimesso a posto con aperto risentimento, come se la rissa l'avesse cercata lui.",
		"lancia alla ferita richiusa un'occhiata acida, come a un cane che ha appena rubato la cena.",
	},
	["heal.w07.011"] = {
		"Il dolore defluisce piano, come l'acqua di una piena che lascia i campi.",
		"Si ritira, il dolore, come la marea: non tutto in una volta, ma se ne va.",
	},
	["heal.w07.012"] = {
		"Bene. Sto bene. Nessuno si agiti.",
		"Non è niente. Un graffio che si dava delle arie.",
		"Niente da guardare. Era appena un'ammaccatura.",
	},
	["heal.w07.013"] = {
		"muove qualche passo lento, come a chiedere al corpo il permesso di proseguire.",
		"fa un piccolo giro, adagio, finché il corpo non si convince di poter proseguire.",
	},
	["heal.w07.014"] = {
		"Di nuovo in grado di fare danni.",
		"La giornata non ha ancora chiuso i conti con me, e io nemmeno con lei.",
		"Ricucito il buco. Il prossimo, si accomodi pure a tentare la sorte.",
	},
	["race.dwarf.buff.w07.001"] = {
		"Si è assestato e ha fatto presa, come una buona malta. I vecchi costruttori di Ironforge non hanno mai avuto fretta con la presa.",
		"Ecco, ha fatto presa, come la malta fra due pietre buone. Adesso provino a smuovermi.",
	},
	["race.dwarf.heal.w07.001"] = {
		"Una scheggiatura, non una crepa. I vecchi scalpellini dicono che c'è un mondo di differenza.",
		"Una scheggia sul bordo, il cuore intatto. Qualsiasi muratore di Ironforge lo direbbe solido.",
	},
	["race.human.heal.w07.001"] = {
		"I contadini di Elwynn dicono che lo steccato si ripara il giorno che si rompe, non il giorno che le mucche trovano il varco. Riparato, allora.",
		"Si ripara lo steccato prima che la mandria trovi il buco: lo sa ogni bracciante di Elwynn. Fatto.",
	},
	["race.nightelf.buff.w07.001"] = {
		"Le Sentinelle insegnano che la prontezza è un'immobilità in attesa di muoversi. Stare immobile, questo lo so fare.",
		"La pazienza della civetta sul ramo, e la sua rapidità quando serve. Così lo insegnano le Sentinelle.",
	},
	["race.nightelf.heal.w07.001"] = {
		"Elune veglia sui feriti, dicono le sacerdotesse. Preferirei non aver bisogno troppo spesso del suo sguardo.",
		"Le sacerdotesse di Darnassus dicono che Elune tiene il conto di ogni ferita. Mi piacerebbe che il mio restasse breve.",
	},
	["race.tauren.buff.w07.001"] = {
		"Zoccoli ben piantati. Venga pure quel che deve venire.",
		"Ho i piedi piantati come i grandi totem di Thunder Bluff. Spingete pure.",
	},
	["race.tauren.heal.w07.001"] = {
		"Gli anziani di Mulgore dicono che una ferita è solo la terra che ti chiede di camminare più piano per un po'.",
		"A Mulgore gli anziani insegnano che il dolore è il modo in cui la Madre Terra frena un passo troppo frettoloso. Più piano, allora.",
	},
	["race.troll.buff.w07.001"] = {
		"Ai loa piacciono i troll che si fanno trovare preparati. Non deludiamoli, mon.",
		"Tutto a posto, e col sorriso. Oggi i loa non avranno niente da ridire, mon.",
	},
	["race.troll.heal.w07.001"] = {
		"Gli stregoni di Sen'jin dicono che una ferita è un ospite: non dargli niente da mangiare e se ne va presto.",
		"Vecchia saggezza dei Darkspear, mon: non dare retta a una ferita, e quella si annoia e se ne va.",
	},
	["race.dwarf.attack.w08.001"] = {
		"Eccoti un pezzetto di Dun Morogh!",
		"Prendi questa, dritta da Ironforge!",
		"E un'altra, per fortuna e per Loch Modan!",
	},
	["race.dwarf.attack.w08.002"] = {
		"Colpisci, e rimetti a posto i piedi. Colpisci, e i piedi. Come il martello sull'incudine, sempre a tempo.",
		"Tieni il ritmo. Ogni fabbro lo sa: il lavoro sta nel ritmo, non nella forza.",
		"Vince il lavoro costante. Chiedilo a qualunque nano abbia mai scavato attraverso una montagna.",
	},
	["race.dwarf.attack.w08.003"] = {
		"Aspetta, ce n'è ancora, e un nano non resta mai a corto!",
		"Consegna nanica, senza spese! Occhio al gradino!",
		"Ecco il conto dei nani per il disturbo, da saldare subito!",
	},
	["race.dwarf.attack.w08.004"] = {
		"grugnisce per lo sforzo, con tutto il peso di un corpo tarchiato dietro.",
		"ci mette dentro tutto il suo peso tozzo, come un minatore che attacca una parete ostinata.",
	},
	["race.dwarf.buff.w08.001"] = {
		"Ci siamo. Come una forgia rimasta coperta per ore: dalle aria e ruggisce.",
		"Tutto a punto, come una carica infilata nella roccia prima che il caposquadra gridi.",
		"Preparativi fatti. La pietra è misurata; ora è solo questione di martello.",
	},
	["race.dwarf.buff.w08.002"] = {
		"Ecco. Abito da guai indossato, come si dice a Dun Morogh.",
		"Così va meglio. Un nano non dovrebbe uscire di casa mezzo pronto, e tanto meno dalla montagna.",
		"Tutto a posto. Che i guai bussino pure: dietro la porta troveranno un nano, e per i guai non è mai una buona notizia.",
	},
	["race.dwarf.buff.w08.003"] = {
		"Qualcosa ha fatto presa, salda come una chiave di volta. La strada che viene può fare del suo peggio.",
		"Tutto allacciato e pronto. Qualunque cosa ci sia là fuori, un nano la affronta preparato o non la affronta affatto.",
		"Si parte. Gambe corte, ma porteranno tutto quello che serve.",
	},
	["race.dwarf.buff.w08.004"] = {
		"Ecco, {target}. Adesso è più difficile buttarti giù che rovesciare un barile di Kharanos.",
		"Vai pure. Adesso incasserai uno spintone come lo incassa un masso di Dun Morogh: senza accorgertene.",
	},
	["race.dwarf.buff.w08.005"] = {
		"Mandare qualcuno in giro ben armato è una cortesia dei nani. Con la Luce dietro, tanto meglio.",
		"Nessuno si allontana da un nano senza i preparativi giusti, se il nano può evitarlo.",
	},
	["race.dwarf.heal.w08.001"] = {
		"Toppa messa. Non è bella, ma nemmeno un puntello di miniera lo è, e quelli reggono le montagne.",
		"Reggerà. Lavoro grezzo, ma anche un puntello è grezzo, eppure ti tiene il tetto lontano dalla testa.",
	},
	["race.dwarf.heal.w08.002"] = {
		"Meglio. Dunque, a che punto ero? Ah, già: alla testardaggine dei nani.",
		"Ecco qua. Si torna a fare resistenza come qualunque sasso di Dun Morogh.",
	},
	["race.dwarf.heal.w08.003"] = {
		"Avrei dovuto tenere la guardia alta. La pietra non perdona niente, e nemmeno un corpo trattato con leggerezza.",
		"La distrazione si paga, dicono i minatori di Dun Morogh, e io ho appena saldato il conto. A buon prezzo, per come vanno queste cose.",
	},
	["race.dwarf.heal.w08.004"] = {
		"flette la mano, saggiando la carne rimarginata come un fabbro saggia una saldatura raffreddata.",
		"ruota una spalla rigida, grugnisce a quello che sente, e sembra trovare la risposta accettabile.",
	},
	["race.dwarf.heal.w08.005"] = {
		"I nani sono fatti per durare, amano dire gli anziani di Ironforge. Ho intenzione di dargli ragione ancora per un bel pezzo.",
		"Fatto per durare, si dice del lavoro dei nani. Vale anche per i nani, se uno se ne prende cura.",
	},
	["race.dwarf.heal.w08.006"] = {
		"Tutto a posto. Be', quasi: diciamo roba usata con cura. La roba dei nani invecchia bene.",
		"La ferita è chiusa. Ancora qualche cicatrice e avrò l'aria di una vecchia guardia di montagna.",
	},
	["race.dwarf.heal.w08.007"] = {
		"Abbastanza per stare in piedi. A un nano non serve altro.",
		"Chiusa quanto basta per andare avanti. Quel che fa ancora male potrà lamentarsi con me più tardi, davanti a una birra.",
		"Reggerà. Il resto della riparazione può aspettare una panca e un boccale.",
	},
	["race.dwarf.heal.w08.008"] = {
		"Il dolore defluisce piano, come l'acqua che filtra fuori da una galleria allagata. Pazienza. Alla fine se ne va sempre.",
		"Adesso cala. Come una miniera dopo che le pompe hanno lavorato: ancora umida, ma ci si può rimettere al lavoro.",
	},
	["race.dwarf.heal.w08.009"] = {
		"Giù. Se un birraio di Kharanos facesse una cosa simile, lo caccerebbero dal villaggio prima di cena.",
		"Preparata da qualcuno che non ha mai visto un luppolo in vita sua. Però funziona.",
		"Bleah. Medicina, la chiamano. Dalle mie parti sarebbe un buon motivo per cominciare una faida.",
	},
	["race.dwarf.heal.w08.010"] = {
		"Fascia stretta, come si lega un manico incrinato: aderente, senza gioco, e per ora non ci si appoggia con tutto il peso.",
		"Lino e un nodo ben stretto. Non elegante come il lavoro di un guaritore, ma un nano riconosce un buon nodo quando lo vede.",
	},
	["race.dwarf.heal.w08.011"] = {
		"La pietra di uno stregone. Non posso dire che mi piaccia da dove viene, ma una pietra è una pietra, e questa coi nani è gentile.",
		"Una pietra che guarisce. Tutti i minatori di Dun Morogh vorrebbero sapere dove corre il filone.",
	},
	["race.dwarf.heal.w08.012"] = {
		"Mh. Chiusa. Il prossimo che ci prova la paga.",
		"Sigillata. Chi me l'ha fatta mi deve una birra e delle scuse, in quest'ordine.",
	},
	["race.dwarf.heal.w08.013"] = {
		"Un calore che si allarga nel petto, come entrare dal freddo nel bagliore del camino di una taverna di Kharanos.",
		"Ecco che torna il calore. Come rientrare dai valichi di Dun Morogh davanti a un fuoco e a un boccale pieno.",
	},
	["race.dwarf.heal.w08.014"] = {
		"Il dolore è il martello e il corpo è il ferro. Se ti lasci forgiare bene, ne esci più {g:duro|dura}.",
		"Ogni colpo preso e riparato rende il metallo un po' più tenace. Così credono i fabbri di Ironforge, e io non sono nella posizione di discutere.",
	},
	["race.dwarf.heal.w08.015"] = {
		"Smettila di agitarti, {target}. Gli arieti di Dun Morogh si lasciano curare meglio di te.",
		"Non muoverti, adesso. Sembra che nessuno ti abbia mai fatto rimettere in sesto da un nano.",
	},
	["race.dwarf.heal.w08.016"] = {
		"La Luce è solida come qualsiasi pietra, {target}. Appoggiati a lei.",
		"Ecco. Ora ti regge la Luce, e la Luce non si piega.",
	},
	["race.dwarf.heal.w08.017"] = {
		"Curare gli altri è come puntellare una galleria: non lo fai per un grazie, lo fai perché nessuno resti sepolto.",
		"Tieni in piedi la gente e il lavoro va avanti. Sottoterra vale la stessa regola che dappertutto.",
	},
	["race.dwarf.heal.w08.018"] = {
		"posa una mano larga sulla spalla di chi è ferito, salda come quella di un muratore che controlla una chiave di volta.",
		"squadra la ferita con disapprovazione da professionista, come se fosse stata costruita male, e si mette a sistemarla.",
	},
	["race.dwarf.heal.w08.019"] = {
		"Ecco fatto, {target}. La ferita è chiusa e c'è tempo per un altro giro. Il primo lo offri tu.",
		"In piedi. Ti ha rimesso in sesto {g:un nano|una nana}, quindi dopo da bere offri tu.",
	},
	["race.dwarf.heal.w08.020"] = {
		"I nani hanno abbracciato la Luce come abbracciamo tutto ciò che vale la pena tenere: piano, e poi per sempre. Ora non mi delude.",
		"La Luce ha un bagliore costante come le forge di Ironforge. Costante anche adesso.",
	},
	["race.dwarf.heal.w08.021"] = {
		"Resta dietro di me e resta in piedi, {target}. Ti tengo insieme io.",
		"Su, in piedi. Finché ci sono io a guardare non cade nessuno: per un nano è questione d'orgoglio.",
	},
	["race.dwarf.heal.w08.022"] = {
		"Guarire è un mestiere come un altro. Trova la crepa, puliscila, riempila, e non avere fretta.",
		"Tratta una ferita come una fusione difettosa: trova dove è debole, riparala come si deve, e non risparmiare.",
	},
	["race.dwarf.heal.w08.023"] = {
		"Luce, rendi le forze a chi ne ha bisogno. Se le è guadagnate.",
		"Per la Luce e per la testardaggine di un nano, ti rimetterai.",
	},
	["race.dwarf.heal.w08.024"] = {
		"Non muoverti. Ho la mano ferma di un minatore; è la pazienza che scarseggia.",
		"Fatto, {target}. Cerca di non averne di nuovo bisogno prima che io abbia bevuto qualcosa.",
	},
	["race.dwarf.heal.w08.025"] = {
		"borbotta una parola brusca alla Luce, come un nano parlerebbe a un vecchio amico in ritardo, e la ferita comincia a chiudersi.",
		"appoggia due dita tozze sulla ferita e aggrotta la fronte finché il bagliore non fa presa.",
	},
	["race.dwarf.heal.w08.026"] = {
		"È più facile curare qualcun altro che restare fermi mentre ti curano. I nani sono pessimi pazienti e guaritori decenti.",
		"Buffo: un nano si prende una martellata sul pollice senza fiatare, ma veder sanguinare qualcun altro è un'altra faccenda.",
		"Meglio vederli in piedi che piangerli. È tutto qui.",
	},
	["race.dwarf.rezother.w08.001"] = {
		"Torna su. La montagna può tenersi i suoi morti ancora un po'; qui c'è ancora bisogno di te.",
		"Su dal buio, come un minatore tirato fuori da un crollo. Respira. Sei fuori.",
		"Ecco. Qualunque cosa ci fosse laggiù, ti ha lasciato andare. Non voltarti a guardarla.",
	},
	["race.dwarf.rezother.w08.002"] = {
		"Su. La Luce non ha finito con te, e a dirla tutta nemmeno io.",
		"In piedi. I nani non lasciano nessuno sottoterra prima del tempo.",
		"Eccoti tra noi. Il prossimo giro lo offri tu, per il disturbo.",
	},
	["race.dwarf.travel.w08.001"] = {
		"Una pietra che sa sempre la strada del ritorno. Naturale che sia una pietra.",
		"I nani si fidano più della pietra che delle strade, ed eccone la prova nel palmo della mano.",
		"Giro la pietra e la strada si ripiega alle mie spalle. Chi l'ha inventata doveva essere mezzo nano.",
	},
	["race.human.attack.w08.001"] = {
		"Omaggio di Stormwind!",
		"Con i saluti del regno!",
		"Tanti cari saluti da Elwynn!",
	},
	["race.human.attack.w08.002"] = {
		"Questo è per Lordaeron!",
		"Per il nord, e per tutti quelli che ha perduto!",
	},
	["race.human.attack.w08.003"] = {
		"Niente svolazzi. Noi umani non abbiamo anni da sprecare in svolazzi.",
		"Semplice e svelto. Le finezze le lascio a chi vive mille anni.",
	},
	["race.human.attack.w08.004"] = {
		"incalza con l'economia sbrigativa di chi ha posti migliori dove stare.",
		"attacca senza cerimonie, tutta fretta umana e mira ostinata.",
	},
	["race.human.attack.w08.005"] = {
		"Per le fattorie vuote di Westfall!",
		"Questo è per ogni fienile bruciato a Redridge!",
	},
	["race.human.buff.w08.001"] = {
		"{g:Pronto|Pronta}, come un miliziano di Goldshire che si allaccia la cintura al primo rintocco della campana d'allarme.",
		"Fatto. La milizia di Elwynn è vestita e fuori dalla porta prima che smetta la campana d'allarme; io non sono da meno.",
	},
	["race.human.buff.w08.002"] = {
		"Bene. A posto. Quel che viene dopo sulla strada, venga pure.",
		"Sono {g:pronto|pronta}. Adesso la strada può fare del suo peggio.",
		"Preparativi fatti. Gli umani non aspettano che i guai bussino.",
	},
	["race.human.buff.w08.003"] = {
		"assesta le spalle come se qualcosa fosse appena andato al suo posto.",
		"prende un respiro lento e si raddrizza un poco, come chi ha controllato ogni fibbia due volte.",
	},
	["race.human.buff.w08.004"] = {
		"I sergenti istruttori di Stormwind dicono che un minuto di preparazione fa risparmiare un'ora a un guaritore. I guaritori sarebbero d'accordo.",
		"Un po' di prontezza adesso, meno bende dopo. Lo dice ogni sergente del regno, e per una volta hanno ragione.",
	},
	["race.human.buff.w08.005"] = {
		"Ecco, {target}. Questo ti accompagnerà per un bel tratto di strada.",
		"Va' pure. Adesso hai qualcosa in più per la strada.",
	},
	["race.human.buff.w08.006"] = {
		"Ogni mano resa un po' più forte è una possibilità in più che qualcuno torni a casa. Così è stata costruita l'Alleanza.",
		"Un po' di forza in più a chi sta dalla nostra parte. Si sono difesi regni con meno di questo.",
	},
	["race.human.heal.w08.001"] = {
		"{g:Rimesso|Rimessa} insieme, più o meno. Un umano non ha anni da passare a curarsi una ferita, quindi guarirà strada facendo.",
		"Chiusa quanto basta. Non c'è tempo per starsene sdraiati: abbiamo una corsa sola, e breve, e io la sto usando.",
	},
	["race.human.heal.w08.002"] = {
		"Basta così. La milizia di Goldshire direbbe che sono {g:pronto|pronta} per il servizio.",
		"Ecco. Qualunque sergente di Elwynn mi giudicherebbe abile alla marcia.",
	},
	["race.human.heal.w08.003"] = {
		"prova la ferita richiusa con un movimento prudente, come un contadino che saggia il manico dell'aratro appena aggiustato.",
		"si piega con cautela dove c'era la ferita, guardandola {g:accigliato|accigliata} come un carrettiere guarda una ruota appena riparata.",
	},
	["race.human.heal.w08.004"] = {
		"Le vite brevi guariscono in fretta, o non guariscono affatto. Questa sta guarendo.",
		"Gli umani guariscono in fretta perché devono. Nessuno ci ha dato il tempo di farlo con calma.",
	},
	["race.human.heal.w08.005"] = {
		"Meglio. Non ditelo ai guaritori della Cattedrale che ho fatto da me: vorranno il loro compenso lo stesso.",
		"{g:Rattoppato|Rattoppata}, e senza dare un soldo alla Cattedrale. Non spargete la voce.",
	},
	["race.human.heal.w08.006"] = {
		"I contadini di Westfall lavorano con di peggio addosso, durante il raccolto. In piedi, allora.",
		"A Westfall legherebbero uno straccio intorno a qualcosa di peggio e tornerebbero alla trebbiatura. Su.",
	},
	["race.human.heal.w08.007"] = {
		"Un graffio così, a Elwynn, ti vale una tazza calda accanto al focolare e una predica. Mi accontenterei della tazza.",
		"A casa, una ferita così ti vale uno sgabello accanto al fuoco e una sgridata. Prenderei lo sgabello e salterei la sgridata.",
	},
	["race.human.heal.w08.008"] = {
		"Chiusa. Torno al lavoro prima che i guai si accorgano che mi sono {g:fermato|fermata}.",
		"Terrà. Inutile dare al mondo il tempo di raggiungermi.",
	},
	["race.human.heal.w08.009"] = {
		"Lezione presa. La cicatrice me lo ricorderà, se dimentico.",
		"Gli umani imparano a forza di lividi. Questa adesso è scritta, sulla pelle.",
	},
	["race.human.heal.w08.010"] = {
		"butta fuori il fiato piano mentre il dolore molla la presa, e le spalle si abbassano finalmente.",
		"lascia che il male si ritiri con un respiro lungo e attento, e un po' di rigidità sparisce dal suo viso.",
	},
	["race.human.heal.w08.011"] = {
		"Gli elfi lascerebbero guarire una cosa così nel giro di un secolo. Io la vorrei a posto per cena.",
		"Un nano lo chiamerebbe un graffio, un elfo una lezione. Io lo chiamo sistemato, e in fretta.",
	},
	["race.human.heal.w08.012"] = {
		"I soldati tornati dal nord dicono che chi guariva più in fretta viveva più a lungo. Gli credo.",
		"I veterani degli ultimi giorni di Lordaeron dicono che o guarisci in piedi o non guarisci. In piedi, allora.",
	},
	["race.human.heal.w08.013"] = {
		"Ogni casetta di Elwynn tiene della tela pulita in una cassapanca per giorni come questo. Io la tengo nello zaino.",
		"Giri stretti, un nodo saldo. Metà delle nonne di Elwynn lo farebbero meglio, e me lo direbbero pure.",
	},
	["race.human.heal.w08.014"] = {
		"Sa di uno scherzo di qualche alchimista di Stormwind. Però funziona.",
		"Roba distillata nel Mage Quarter: puzza di cavolo, funziona a meraviglia.",
	},
	["race.human.heal.w08.015"] = {
		"La brava gente di Stormwind cambia marciapiede per non incrociare chi fabbrica queste pietre. E io eccomi qui, a ringraziarne una.",
		"La Cattedrale arriccia il naso davanti a quel che c'è dentro una pietra così. La mia ferita non sembra farci caso.",
	},
	["race.human.heal.w08.016"] = {
		"Non muoverti un attimo, {target}. La Luce non fa aspettare a lungo, e io nemmeno.",
		"Piano, adesso. Lascia lavorare la Luce: non ha fretta, e nemmeno io.",
	},
	["race.human.heal.w08.017"] = {
		"A Lordaeron sono finiti i guaritori prima che finissero i feriti. Non stavolta.",
		"Il nord ha perso prima i suoi guaritori, e poi tutti gli altri. Non lascerò che cominci qui.",
	},
	["race.human.heal.w08.018"] = {
		"posa il palmo sulla ferita, saldo come un contadino di Elwynn che calma un vitello spaventato.",
		"tiene una mano tranquilla su chi è ferito, come la gente di campagna calma un cavallo impigliato nel filo.",
	},
	["race.human.heal.w08.019"] = {
		"Su, {target}. Il regno non può fare a meno di te, e io non posso portarti in braccio.",
		"In piedi. Oggi nessuno riporta nessuno a Stormwind in spalla.",
	},
	["race.human.heal.w08.020"] = {
		"Chiunque sia, da qualunque posto venga, sta dalla nostra parte. Questa è l'Alleanza, in un piccolo gesto.",
		"Umani, nani, gnomi, elfi: la ferita è la stessa per tutti, e anche la cura.",
	},
	["race.human.heal.w08.021"] = {
		"Per la Luce, {target}, guarisci.",
		"Luce, ripara ciò che qui è stato spezzato.",
		"Che ogni ferita si chiuda, per grazia della Luce.",
	},
	["race.human.heal.w08.022"] = {
		"Mi stai sanguinando sugli stivali, {target}. Non ti muovere e lascia che ci metta fine.",
		"Smettila di gocciolarmi addosso e non muoverti. Ecco. Meglio così, per noi due.",
	},
	["race.human.heal.w08.023"] = {
		"Ognuno ha una vita sola, e breve. Non lascerò che {target} finisca qui quel che ne resta.",
		"Una vita a testa, e pure corta. Questa non finisce mentre ci sono io.",
	},
	["race.human.heal.w08.024"] = {
		"Ecco, {target}. Adesso mi devi una birra, e vengo a riscuoterla.",
		"Ecco fatto. Il prezzo è una birra alla prossima locanda, e io i debiti non li dimentico.",
	},
	["race.human.heal.w08.025"] = {
		"china il capo su chi è ferito, e un bagliore caldo, come le vetrate della Cattedrale, si posa sulla ferita.",
		"mormora poche parole alla vecchia maniera di Northshire, e la ferita sotto le sue mani comincia a chiudersi.",
	},
	["race.human.heal.w08.026"] = {
		"Torna dentro, {target}! A Stormwind non s'insegna a sedersi a metà!",
		"In piedi e addosso! Nessuno molla a metà, non finché ci sono io!",
	},
	["race.human.heal.w08.027"] = {
		"Tieni insieme le parti abbastanza a lungo e il corpo si ricorda come si fa. È la prima cosa che impara ogni novizio di Northshire.",
		"Prima si chiude la ferita peggiore, poi il resto. I guaritori della Cattedrale insegnano così, e di pratica ne hanno fatta.",
	},
	["race.human.rezother.w08.001"] = {
		"In piedi. La vita è troppo breve per passarla lì per terra.",
		"Su, torna. La vita è già abbastanza corta senza sprecarne un pezzo da morti.",
	},
	["race.human.rezother.w08.002"] = {
		"Le campane di Stormwind suonano per i morti. Non per questa persona. Non ancora.",
		"Nessuna campana a morto per questa persona. Non lo permetto.",
		"Una campana avrebbe suonato, chissà dove. Può restare muta: non abbiamo finito.",
	},
	["race.human.rezother.w08.003"] = {
		"si inginocchia e lavora senza fretta, come la gente di Elwynn cura un agnello appena nato che non si muove, finché il respiro non torna.",
		"resta {g:chino|china} su chi è caduto con la pazienza ostinata di un contadino, aspettando il primo respiro come il primo verde di primavera.",
	},
	["race.human.travel.w08.001"] = {
		"La pietra si scalda nella mano e la locanda comincia a tirare. Gli umani hanno sempre saputo la strada per l'osteria più vicina; ora ne abbiamo fatto un incanto.",
		"Ogni umano si porta in tasca un pezzetto di qualche locanda. Il mio mi chiama verso un letto e una scodella di qualcosa di caldo.",
		"La pietra del ritorno in mano. Un oste sta per vedere una faccia nota e allungare la mano verso il registro.",
	},
	["race.nightelf.attack.w08.001"] = {
		"La collera di Ashenvale, in un colpo solo!",
		"Dal buio fra gli alberi!",
		"Dalle ombre di Teldrassil!",
	},
	["race.nightelf.attack.w08.002"] = {
		"In fretta, in silenzio, a colpo sicuro.",
		"Adesso, mentre sbatti le palpebre.",
	},
	["race.nightelf.attack.w08.003"] = {
		"Elune, reggimi la mano!",
		"Per la grazia della luna!",
	},
	["race.nightelf.attack.w08.004"] = {
		"Diecimila anni di pratica. Eccone un assaggio.",
		"Basta pazienza. Ecco l'altra faccia dei kaldorei.",
	},
	["race.nightelf.attack.w08.005"] = {
		"si muove in un lampo, con la rapidità silenziosa dell'ala di un gufo.",
		"colpisce dall'immobilità, come un nightsaber: niente, e poi tutto.",
	},
	["race.nightelf.buff.w08.001"] = {
		"Fatto. Come il manto di un nightsaber prima del freddo: non lo vedi, ma c'è.",
		"Qualcosa si posa addosso, quieto e vicino, come il silenzio di Ashenvale prima che arrivi il vento.",
		"Ecco. Preparativi fatti, senza fretta. Un kaldorei si prepara come la foresta per l'inverno: presto e senza storie.",
	},
	["race.nightelf.buff.w08.002"] = {
		"Così va bene. I kaldorei non partono mai impreparati, e io nemmeno.",
		"Tutto pronto. Teldrassil non è diventato così alto aspettando di sentirsi pronto.",
		"Ci siamo. Anche un gufo arruffa le piume prima di volare.",
	},
	["race.nightelf.buff.w08.003"] = {
		"fa ruotare le spalle e resta immobile un istante, come una Sentinella che controlla il limite degli alberi prima di una ronda.",
		"prende un respiro lento, gli occhi socchiusi, e lascia che qualcosa {g:gli|le} si posi addosso, leggero come una foglia sull'acqua ferma.",
	},
	["race.nightelf.buff.w08.004"] = {
		"Porta questo con te, {target}. I figli di Elune si prendono cura gli uni degli altri.",
		"Ecco, {target}. Un po' della pazienza della foresta viene con te.",
	},
	["race.nightelf.buff.w08.005"] = {
		"Questo dovrebbe reggere, {target}. Portalo come una Sentinella porta il mantello: senza pensarci.",
		"Fatto. Ora sei più difficile da ferire, {target}, e questo mi semplifica il lavoro.",
	},
	["race.nightelf.heal.w08.001"] = {
		"Ricorderò questa ferita molto dopo che sarà sparita. Un kaldorei non dimentica nulla, nemmeno i piccoli dolori.",
		"La cicatrice sbiadirà; il ricordo no. È così che il mio popolo porta le sue ferite.",
	},
	["race.nightelf.heal.w08.002"] = {
		"Meglio. Il dolore scivola via come la rugiada alle prime luci.",
		"Ecco, il dolore molla la presa, piano, come una radice che lascia andare una pietra.",
	},
	["race.nightelf.heal.w08.003"] = {
		"Meglio. Detesterei dover spiegare un buco in più alle sacerdotesse.",
		"Ecco. Non serve disturbare il Tempio della Luna per così poco.",
	},
	["race.nightelf.heal.w08.004"] = {
		"Prima di Hyjal, dicono, una ferita così per noi era niente. Ora la guardo chiudersi e provo gratitudine.",
		"Le sacerdotesse dicono che gli immortali non hanno mai imparato a curarsi le ferite. Ora stiamo imparando.",
	},
	["race.nightelf.heal.w08.005"] = {
		"Basta così. Una Sentinella sarebbe già in movimento; lo sarò anch'io.",
		"Abbastanza per andare avanti. Il mio popolo ha imparato la pazienza, ma non quella di starsene distesi.",
	},
	["race.nightelf.heal.w08.006"] = {
		"preme una mano sulla ferita e chiude gli occhi, immobile come un airone sulla riva, finché il peggio non è passato.",
		"respira piano mentre il dolore si allenta, le orecchie abbassate, il bagliore degli occhi che si affievolisce un attimo e poi ritorna.",
	},
	["race.nightelf.heal.w08.007"] = {
		"Lino e pazienza. Il Tempio della Luna farebbe di meglio, ma ho solo il lino.",
		"Annodato per bene. Le mani di un kaldorei sono svelte con i nodi, anche quando tremano.",
	},
	["race.nightelf.heal.w08.008"] = {
		"Amara come le alghe di Darkshore. Però funziona.",
		"Ha il sapore di qualcosa preparato da un goblin che non ha mai visto un pozzo lunare. Però fa effetto.",
	},
	["race.nightelf.heal.w08.009"] = {
		"Il dolore si ritira come la marea richiamata dalla luna. Elune, sospetto, ha una mano in entrambe le cose.",
		"Si allevia, piano, come la luce della luna riempie una radura: non te ne accorgi finché non c'è.",
	},
	["race.nightelf.heal.w08.010"] = {
		"Distrazione. Un kaldorei dovrebbe sentir arrivare un colpo. Lezione annotata, ferita chiusa.",
		"Quella avrei dovuto accorgermene. Orecchie lunghe, e non l'ho sentita lo stesso. Mai più.",
	},
	["race.nightelf.heal.w08.011"] = {
		"Una pietra da stregone. Il mio popolo ha opinioni molto antiche su quel genere di magia, ma le avrò più tardi.",
		"Fatta da uno stregone o no, ripara. Le sacerdotesse aggrotterebbero la fronte; ma non sono loro a sanguinare.",
	},
	["race.nightelf.heal.w08.012"] = {
		"Tieni duro. Teldrassil non è cresciuto in un giorno, e io non crollerò in uno.",
		"Si chiude. Bene. Ho una lunga strada davanti, e meno anni dei miei antenati per percorrerla.",
	},
	["race.nightelf.heal.w08.013"] = {
		"Piano, {target}. Elune ha rimesso in sesto di peggio, e anch'io.",
		"Non muoverti. La misericordia della luna funziona meglio quando la smetti di agitarti.",
	},
	["race.nightelf.heal.w08.014"] = {
		"Ecco fatto, {target}. Nemmeno il Tempio della Luna avrebbe fatto più in fretta.",
		"Meglio? Bene. Persino i fuochi fatui ne sarebbero colpiti, e ne hanno viste tante.",
	},
	["race.nightelf.heal.w08.015"] = {
		"Ogni vita che curo è un piccolo debito saldato alla foresta che ha protetto il mio popolo.",
		"I guaritori kaldorei hanno imparato la loro arte in diecimila anni. Mi fa piacere spenderne un momento per chi ne ha bisogno.",
	},
	["race.nightelf.heal.w08.016"] = {
		"posa una mano leggera su chi è ferito, e per un respiro gli occhi {g:gli|le} brillano di più, d'argento come la luna sull'acqua ferma.",
		"si china sulla ferita con la cura quieta di una sacerdotessa al pozzo lunare, e non ha fretta.",
	},
	["race.nightelf.heal.w08.017"] = {
		"La luce di Elune su di te, {target}. Lascia che faccia il suo lavoro.",
		"Riposa un momento sotto lo sguardo di Elune. Il peggio è passato.",
		"Che la luna vegli sulla tua guarigione, {target}.",
	},
	["race.nightelf.heal.w08.018"] = {
		"Meno storie. Il mio popolo è sopravvissuto alla fine di un mondo; tu sopravvivrai a questo.",
		"Smettila di fare smorfie. Le Sentinelle di Ashenvale ricuciono di peggio ogni settimana.",
	},
	["race.nightelf.heal.w08.019"] = {
		"Dopo Hyjal sappiamo tutti quanto è sottile il filo. Terrò stretto questo ancora un po'.",
		"La mortalità è nuova per il mio popolo; prendersi cura dei mortali no. Le sacerdotesse l'hanno sempre fatto.",
	},
	["race.nightelf.heal.w08.020"] = {
		"Respira piano, {target}. Più piano. Come fa la foresta.",
		"Lascia uscire il dolore con il fiato. Dentro, e fuori. Ecco.",
	},
	["race.nightelf.heal.w08.021"] = {
		"mormora qualche parola sommessa in darnassiano sulla ferita, più simile a una ninnananna che a qualcosa di solenne.",
		"si inginocchia accanto a chi è ferito, le lunghe dita ferme, e parla piano, come si parla a un cerbiatto spaventato.",
	},
	["race.nightelf.heal.w08.022"] = {
		"{target}, ti va bene che i guaritori kaldorei siano pazienti. Altrimenti a quest'ora mi sarei {g:arrabbiato|arrabbiata}.",
		"Ancora tu, {target}? Ho secoli di pazienza. Cerca di non consumarli tutti.",
	},
	["race.nightelf.heal.w08.023"] = {
		"Che possa ripartire. Il mondo è migliore con una persona in più che non sanguina.",
		"Un'altra persona rimessa in piedi. La foresta approverebbe: favorisce sempre ciò che cresce.",
	},
	["race.nightelf.heal.w08.024"] = {
		"Ecco, {target}. Vai, e che Elune ti tenga alla larga dai guai. Con me ci riesce di rado.",
		"Meglio. Vai pure, {target}, e cerca di tornare senza buchi nuovi.",
	},
	["race.nightelf.rezother.w08.001"] = {
		"Torna. Elune non ha ancora finito con te.",
		"Svegliati. La luna ha ancora una strada per te.",
		"Torna. Anche dopo Hyjal, non tutte le fini devono essere per sempre.",
	},
	["race.nightelf.rezother.w08.002"] = {
		"si inginocchia e mormora una lunga frase in darnassiano su chi è caduto, paziente come la luna che aspetta la marea.",
		"si china sul corpo, una luce d'argento che si raccoglie negli occhi, e richiama indietro chi è caduto nella lingua antica dei kaldorei.",
		"si siede sui talloni accanto al corpo e parla piano a chi giace lì, come le sacerdotesse parlano ai molto vecchi e ai molto piccoli.",
	},
	["race.nightelf.travel.w08.001"] = {
		"La pietra del ritorno si scalda. La mia gente diffida di quasi ogni magia, ma è difficile non voler bene a una pietra che vuole solo tornare a casa.",
		"Un sassolino che ricorda un solo posto e ci tira verso. La mia gente, più di chiunque, questo lo capisce.",
		"A casa per mezzo di una pietra. I nostri anziani storcerebbero il naso davanti alla scorciatoia; i miei piedi la ringraziano.",
	},
	["race.tauren.attack.w08.001"] = {
		"Eccoti un saluto da Mulgore!",
		"Riporta questo a chi ti ha mandato, coi complimenti di un tauren!",
		"Un altro, e più pesante!",
	},
	["race.tauren.attack.w08.002"] = {
		"mette tutto il suo considerevole peso dietro al colpo.",
		"si spinge avanti con uno sbuffo, e tutta la mole del tauren segue il colpo.",
		"colpisce con la calma certezza di un albero che cade.",
	},
	["race.tauren.attack.w08.003"] = {
		"Ancora. Paziente come la mandria, pesante come la mandria.",
		"Colpire, respirare, colpire. Come zoccoli sul terreno duro, regolari e senza fine.",
		"Un colpo, poi il successivo. Una mandria in corsa non è che tanti piccoli passi nella stessa direzione.",
	},
	["race.tauren.attack.w08.004"] = {
		"Lenti, i tauren? Riprova a dirlo.",
		"Sono {g:grosso|grossa}. Non vuol dire che sbaglio mira.",
	},
	["race.tauren.buff.w08.001"] = {
		"Qualcosa si assesta, profondo come radici. Bene. Adesso la strada.",
		"{g:Pronto|Pronta}. Le pianure mi hanno insegnato a prepararmi prima della mandria in fuga, non durante.",
		"Ci siamo. Un tauren si prepara come la mandria si prepara alla stagione secca: presto, e senza lamentarsi.",
	},
	["race.tauren.buff.w08.002"] = {
		"{g:Pronto|Pronta}. Qualunque cosa la strada mi lanci, dovrà lanciarla contro un tauren.",
		"Ecco. Tutta questa stazza, pronta in un colpo solo. È un bel po' di prontezza.",
	},
	["race.tauren.buff.w08.003"] = {
		"fa ruotare il collo finché non scrocchia, poi aspetta ancora un momento, lasciando che la prontezza {g:gli|le} scenda nelle ossa.",
		"batte una volta ogni zoccolo, prima il sinistro poi il destro, saggiando il terreno come si fa prima di una lunga camminata.",
	},
	["race.tauren.buff.w08.004"] = {
		"Va' con un po' di selvatico dentro, {target}. Ti custodirà.",
		"Ecco. Portalo con te: è un dono che la terra ti fa attraverso me.",
	},
	["race.tauren.buff.w08.005"] = {
		"Un'altra persona pronta per la strada. A un tauren piace una mandria ben preparata.",
		"Dovrebbe reggere per un po'. Come una buona pelle tesa su un palo di tenda: te ne dimentichi finché non si alza il vento.",
	},
	["race.tauren.heal.w08.001"] = {
		"Si rimargina. Il cuoio del mio popolo ricresce spesso: siamo fatti per le spine e le strade lunghe.",
		"La pelle dei tauren è spessa e le ossa ancora di più. Questo si salderà.",
		"Il corpo di un tauren è una cosa testarda. Guarisce per dispetto, credo.",
	},
	["race.tauren.heal.w08.002"] = {
		"Meglio. C'era parecchio tauren da rattoppare.",
		"Ecco. Per rimettere in sesto qualcosa della mia stazza ci vuole pazienza, e io ne sono {g:fatto|fatta}.",
		"Bene. Corpi grandi, riparazioni grandi: per fortuna il mio sta fermo mentre lo aggiusto.",
	},
	["race.tauren.heal.w08.003"] = {
		"Grazie, Madre Terra, per un corpo che guarisce. Cercherò di dargli meno motivi per farlo.",
		"La Madre Terra ci ha fatti per guarire. Le sono {g:grato|grata}, anche quando la faccio lavorare sodo.",
		"Madre Terra, hai dato al mio popolo un cuoio spesso per un motivo. Continuo a scoprire quale.",
	},
	["race.tauren.heal.w08.004"] = {
		"Che sbadataggine. Il plainstrider che finisce in un rovo impara; dovrei avere almeno il cervello di un plainstrider.",
		"Un cacciatore delle pianure riderebbe di questa ferita. Non della ferita: di come me la sono fatta.",
	},
	["race.tauren.heal.w08.005"] = {
		"Basta così. La mandria va avanti, e io con lei.",
		"Di nuovo sui miei zoccoli. C'è ancora terreno da coprire.",
		"Bene. Adesso il resto di me può raggiungere la parte che è ancora arrabbiata.",
	},
	["race.tauren.heal.w08.006"] = {
		"lascia andare un lungo respiro brontolante e fa ruotare le grandi spalle, per sentire se tutto gira ancora come deve.",
		"flette una mano enorme, poi l'altra, e approva con un grugnito sommesso.",
		"sposta il peso da uno zoccolo all'altro, piano, mentre il dolore defluisce dal grande corpo.",
	},
	["race.tauren.heal.w08.007"] = {
		"Tanta stoffa da farci una vela, solo per fasciare un braccio di tauren. I mercanti di stoffa ci devono adorare.",
		"Una benda fatta per un umano mi fa a malapena il giro del polso. Ne annodo due e la chiamo arte.",
	},
	["race.tauren.heal.w08.008"] = {
		"Per un tauren è a malapena un sorso. Dovrebbero venderle a secchi.",
		"Bottiglietta minuscola, tauren enorme. I conti non tornano, ma la pozione funziona.",
	},
	["race.tauren.heal.w08.009"] = {
		"Chiusa. Gli anziani dicono che ogni cicatrice è una storia che il corpo custodisce per te. Il mio comincia a diventare chiacchierone.",
		"Un altro segno da portare. In Mulgore i cacciatori più vecchi portano i loro senza farne un dramma; ci proverò anch'io.",
	},
	["race.tauren.heal.w08.010"] = {
		"Il dolore passa come un vento secco su Mulgore. Piega l'erba; le radici non le porta mai via.",
		"Passerà. Le pianure vedono cento venti caldi in un'estate e sotto restano verdi.",
	},
	["race.tauren.heal.w08.011"] = {
		"Non muoverti, {target}. La Madre Terra è lenta, ma non le sfugge niente.",
		"Piano. Lascia lavorare la terra: ripara le cose da molto prima di tutti noi.",
		"Ecco. Ti farà male come a un plainstrider che ha perso una corsa, ma camminerai.",
	},
	["race.tauren.heal.w08.012"] = {
		"Dammi il braccio. No, non ho intenzione di sederci sopra.",
		"Sei a posto. La prossima volta mettiti dietro di me: lì dietro c'è spazio in abbondanza.",
		"Tutto rattoppato. Cerca di farti colpire meno: non posso tirarlo fuori dal nulla all'infinito.",
	},
	["race.tauren.heal.w08.013"] = {
		"china la grande testa verso chi è ferito e mormora alla Madre Terra nella lingua bassa delle pianure.",
		"posa una mano enorme e attenta accanto alla ferita e canticchia nel profondo del petto, un suono come di zoccoli lontani.",
		"parla piano alla terra, poi a chi è ferito, con la stessa voce paziente.",
	},
	["race.tauren.heal.w08.014"] = {
		"In Mulgore si dice che un guaritore è solo qualcuno che smette di camminare per un altro. Io mi sono {g:fermato|fermata}.",
		"Curare qualcuno è come dividere l'acqua su una strada arida. Nessuno tiene il conto, e tutti se lo ricordano.",
	},
	["race.tauren.heal.w08.015"] = {
		"Di nuovo in forze. La mandria è più forte con te dentro.",
		"Forza, {target}. Nelle pianure nessuno resta indietro.",
		"Vai. La Madre Terra non ti ha rimesso in sesto perché te ne restassi lì a guardare.",
	},
	["race.tauren.heal.w08.016"] = {
		"Gli spiriti sono stati gentili, poco fa. Li ringrazierò quando ci sarà tempo, e il tempo non c'è mai.",
		"Un'altra ferita chiusa. La Madre Terra presta, non regala mai. Un giorno avrò un debito enorme.",
	},
	["race.tauren.rezother.w08.001"] = {
		"La Madre Terra ti restituisce, per questa volta. Alzati piano.",
		"Non ancora. La terra ha detto non ancora, e io sono d'accordo con lei.",
		"Respira. L'erba può aspettarti ancora un po'.",
	},
	["race.tauren.rezother.w08.002"] = {
		"Credo che lo spirito avesse già voltato il viso. Ho chiamato, e si è girato a guardare.",
		"Il mio popolo dice che i morti percorrono la lunga strada verso gli antenati. Questo spirito l'ho chiamato dai suoi primi passi.",
		"La vita è rientrata come acqua nella terra secca: piano, e poi tutta insieme. La Madre Terra l'ha permesso.",
	},
	["race.tauren.travel.w08.001"] = {
		"Il mio popolo ha camminato per generazioni per arrivare da qualche parte. Io chiudo la mano su una pietra e salto il cammino. Gli antenati avrebbero qualche domanda.",
		"Una strada intera ripiegata in un sassolino. Da qualche parte un anziano di Mulgore sta scuotendo la testa cornuta.",
		"La pietra si scalda, e una settimana di cammino semplicemente non succede. I tauren che attraversarono Kalimdor a piedi lo chiamerebbero imbrogliare, e avrebbero ragione.",
	},
	["race.gnome.attack.w09.001"] = {
		"Misurato due volte, colpito una!",
		"Tarato, puntato, consegnato!",
		"Proprio nel segno! Ho controllato!",
	},
	["race.gnome.attack.w09.002"] = {
		"Da parte di Gnomeregan, con tanti saluti!",
		"Un regalino dagli esuli!",
	},
	["race.gnome.attack.w09.003"] = {
		"Basso e veloce. Le cose grosse si scordano sempre di guardare in giù.",
		"Mira alle ginocchia. Tanto sono all'altezza dei miei occhi.",
	},
	["race.gnome.attack.w09.004"] = {
		"scatta, colpisce, ed è già altrove prima che il nemico abbia finito di voltarsi.",
		"mette a segno il colpo con un saltello di slancio, piccolo e sorprendentemente preciso.",
		"s'infila sotto la guardia del nemico, colpisce e schizza fuori come un fermo che scatta.",
	},
	["race.gnome.buff.w09.001"] = {
		"Sistemi pronti. Qualunque cosa arrivi, troverà uno gnomo a pieno regime.",
		"Miglioria installata. Che bella sensazione, come una goccia d'olio fresco in ogni giuntura.",
		"Ecco, tutto a posto. Pronti a partire.",
	},
	["race.gnome.buff.w09.002"] = {
		"{g:Ottimizzato|Ottimizzata}! Andiamo a cercare qualcosa su cui provarlo.",
		"Tutto messo a punto. La strada faccia pure del suo peggio: io prendo appunti.",
	},
	["race.gnome.buff.w09.003"] = {
		"fa ruotare le spalle e annuisce brevemente, come se dentro qualcosa fosse appena scattato al suo posto.",
		"flette le dita minute una per una, come un artigiano che controlla ogni snodo di un meccanismo delicato.",
		"si raddrizza con un mormorio soddisfatto, {g:pronto|pronta} a qualunque cosa venga dopo.",
	},
	["race.gnome.buff.w09.004"] = {
		"Miglioria installata, {target}! Niente rimborsi, ma nemmeno spese.",
		"Ecco. Adesso funzioni con prestazioni migliori, {target}.",
		"Tutto pronto! Consideralo un potenziamento gratuito, garantito da uno gnomo.",
	},
	["race.gnome.heal.w09.001"] = {
		"Rattoppa e procedi. Le riparazioni sul campo non sono mai belle, solo veloci.",
		"Chiudi la falla, controlla la pressione, vai avanti.",
		"Ferita chiusa. Promemoria: meno ferite.",
	},
	["race.gnome.heal.w09.002"] = {
		"{g:Riparato|Riparata} e di nuovo in marcia! Qualche graffio, ma il telaio regge.",
		"Di nuovo in funzione! Garanzia decaduta, si capisce.",
	},
	["race.gnome.heal.w09.003"] = {
		"esamina la ferita che si chiude con l'occhio critico di chi deve dare il voto a una riparazione.",
		"tasta con cautela il punto rimesso a posto e gli concede, a malincuore, la sufficienza.",
	},
	["race.gnome.heal.w09.004"] = {
		"Sa di incidente di laboratorio, funziona come un piccolo miracolo. Le migliori fanno quasi sempre così.",
		"Frizzante, amara, vagamente luminosa. Giù tutta: gli gnomi si fidano di qualunque ricetta che brilli.",
	},
	["race.gnome.heal.w09.005"] = {
		"Rabbocco il demone con le mie riserve. Anche una fornace infernale va alimentata, e il combustibile ce lo metto io.",
		"La mia vita che gocciola nel demone. La manutenzione è manutenzione, qualunque sia la macchina.",
	},
	["race.gnome.heal.w09.006"] = {
		"impallidisce un poco mentre le sue forze scorrono nel demone, e tiene comunque il mento alto.",
		"guarda accigliato il demone che incombe su di sé mentre lo nutre del proprio vigore, come chi rifornisce un motore molto ingrato.",
	},
	["race.gnome.travel.w09.001"] = {
		"Un sassolino che ripiega tutta la strada in un istante. Darei molto per vedere l'incanto dall'interno, e la pietra non me lo perdonerebbe mai.",
		"Pietra in mano. È l'unico aggeggio che ho in tasca che non mi viene voglia di smontare, soprattutto perché poi non funzionerebbe più.",
		"La pietra si scalda e tira. Non ho idea di come funzioni, e per uno gnomo è il genere di magia più irritante che esista.",
	},
	["race.orc.attack.w09.001"] = {
		"Terra rossa e pelle verde, tutto dietro questo colpo!",
		"Eccoti un po' di quella forza da orchi di cui hai sentito parlare!",
		"Colpire forte, colpire subito: così fanno gli orchi!",
	},
	["race.orc.attack.w09.002"] = {
		"scopre le zanne, e l'attacco parte con un grugnito che sale dal fondo della pancia.",
		"socchiude gli occhi, zanne in vista, e ci mette tutto quello che ha.",
		"ringhia, basso e breve, come un lupo di Durotar che avverte una volta prima di mordere.",
	},
	["race.orc.attack.w09.003"] = {
		"Forza senza furia. Gli anziani dicono che ce l'ha insegnato il Capoguerra, e colpisce lo stesso.",
		"Niente furia. Le mani ferme colpiscono più giuste di una testa in fiamme.",
	},
	["race.orc.attack.w09.004"] = {
		"Troppa lentezza. Gli orchi non aspettano il permesso.",
		"Tu ci stavi ancora pensando. Io no.",
		"Esita una volta davanti a un orco. Una sola.",
	},
	["race.orc.buff.w09.001"] = {
		"Tutto a posto. La forza non è cosa che un orco tenga per sé: serve a chi ne ha bisogno, e a volte quello sono io.",
		"Fatto. Qualunque cosa arrivi ora, troverà qualcosa di preparato.",
	},
	["race.orc.buff.w09.002"] = {
		"fa ruotare le spalle ed emette un grugnito basso, come un lupo che si assesta prima della caccia.",
		"si raddrizza, zanne serrate, e la prontezza della sua gente si legge tutta nella postura.",
		"pianta i piedi e lascia che la prontezza si posi, salda come roccia rossa.",
	},
	["race.orc.buff.w09.003"] = {
		"Ecco. Ora la strada può portare ciò che vuole.",
		"Bene. Qualunque cosa aspetti là fuori, avrà una brutta sorpresa.",
		"Preparativi fatti. Durotar te lo insegna: là fuori niente aspetta i tuoi comodi.",
	},
	["race.orc.buff.w09.004"] = {
		"Anche prepararsi è una forma di onore. Lo devi a chi conta su di te.",
		"Gli orchi di Thrall non si buttano nella mischia impreparati. Quello è finito con la vecchia Orda.",
	},
	["race.orc.heal.w09.001"] = {
		"Si sta chiudendo. Gli orchi guariscono come litigano: con testardaggine, e brontolando parecchio.",
		"Meglio. Il corpo sa il suo mestiere; si lamenta, come ogni orco, ma lo fa.",
		"Guarisco. Brontolando, certo, ma guarisco.",
	},
	["race.orc.heal.w09.002"] = {
		"Il dolore? Ne ho sentito parlare. Non mi fa effetto.",
		"Sistemata. Il dolore può aspettare fuori insieme agli altri piagnoni.",
		"Male? Un po'. Paura? Per niente.",
	},
	["race.orc.heal.w09.003"] = {
		"Denti serrati sul bruciore, e poi passa. Gli orchi non fanno cerimonie per guarire.",
		"Niente storie. Una ferita è un debito che il corpo salda; io resto lì mentre paga.",
	},
	["race.orc.heal.w09.004"] = {
		"flette una mano verde, guarda la pelle lacerata richiudersi e grugnisce come per una cosa dovuta.",
		"fa ruotare una spalla finché la rigidità non cede, poi le fa un cenno, come a un lupo testardo che alla fine ha obbedito.",
	},
	["race.orc.heal.w09.005"] = {
		"Le ferite si chiudono e c'è bisogno di me. Non c'è tempo per stare male con del lavoro ancora davanti.",
		"Guarisci in fretta. Quello che resta là fuori non aspetta mentre mi lecco le ferite.",
		"Basta così. Il resto della guarigione può avvenire camminando.",
	},
	["race.orc.heal.w09.006"] = {
		"Sarebbe venuta una bella cicatrice. Agli orchi piacciono le cicatrici. Peccato.",
		"Quasi una cicatrice da mostrare in giro. Quasi.",
	},
	["race.orc.heal.w09.007"] = {
		"Imprudenza mia. Ci ho infilato la testa senza pensarci. Il prossimo nemico avrà più rispetto e meno del mio sangue.",
		"Colpa mia. L'orgoglio ha colpito per primo e ha pensato dopo.",
	},
	["race.orc.heal.w09.008"] = {
		"Bene. In piedi, e con il doppio della testardaggine.",
		"Ecco. In piedi, e d'umore peggiore per chiunque venga dopo.",
		"Su di nuovo. Chi mi ha buttato giù avrebbe dovuto finire il lavoro.",
	},
	["race.orc.heal.w09.009"] = {
		"Pelle verde, dura come quella di un kodo. La ferita si sta già arrendendo.",
		"Gli orchi guariscono come la terra di Durotar: lentamente, duramente, e per sempre.",
	},
	["race.orc.heal.w09.010"] = {
		"Stringila tanto da far lacrimare gli occhi. Se non brucia, non è legata.",
		"Stoffa intorno, tirata forte. Pelle verde sotto lino bianco; il lino non resterà bianco a lungo.",
	},
	["race.orc.heal.w09.011"] = {
		"Una pietra verde per {g:un orco verde|un'orchessa verde}. Almeno siamo intonati.",
		"Fredda nel palmo, calda nella pancia. Strana pietruzza. Brava pietruzza.",
	},
	["race.orc.heal.w09.012"] = {
		"Piano, {target}. Gli spiriti della terra e dell'acqua ascoltano. Lasciali lavorare.",
		"Non muoverti. Gli elementi non mi devono niente, ma oggi sono generosi.",
		"Calma, {target}. La terra ha rimesso in sesto di peggio.",
	},
	["race.orc.heal.w09.013"] = {
		"Ecco, {target}. Cerca di sanguinare meno: non sono un pozzo senza fondo.",
		"Tutto chiuso. La prossima volta, abbassati.",
		"Fatto. Mi devi un boccale e una spiegazione.",
	},
	["race.orc.heal.w09.014"] = {
		"mormora parole basse agli spiriti, una mano verde tesa sopra chi è ferito.",
		"parla agli elementi con voce ruvida e sommessa, come un orco parla a un vecchio amico.",
	},
	["race.orc.heal.w09.015"] = {
		"Le vie degli sciamani erano quasi perdute, dicono gli anziani, finché il Capoguerra non ha richiamato gli spiriti. Ogni ferita che chiudo, gliela devo un po'.",
		"Rompere è facile. Gli orchi ci sono diventati bravissimi. Riparare è il mestiere più difficile, e il migliore.",
	},
	["race.orc.heal.w09.016"] = {
		"In campo, {target}. L'Orda non lascia i suoi nella polvere.",
		"In piedi. Gli orchi si caricano in spalla i feriti, ma preferirei che camminassi.",
		"Alzati, {target}. C'è onore nel rialzarsi.",
	},
	["race.orc.heal.w09.017"] = {
		"Spiriti, ho chiesto e avete risposto. Vi ringrazierò come si deve quando sarà finita.",
		"Gli elementi hanno dato senza chiedere. Un orco non dimentica un debito così.",
	},
	["race.orc.heal.w09.018"] = {
		"Un po' della mia forza, data in pasto al demone. Legato e nutrito, e serve: il contrario fu l'errore della vecchia Orda.",
		"Nutrirlo con le mie vene e tenere il guinzaglio corto. La vecchia Orda il guinzaglio lo lasciò ai demoni. Io no.",
	},
	["race.orc.rezother.w09.001"] = {
		"Non ancora. Gli antenati possono tenerti il posto caldo ancora un po'.",
		"La tua strada non è finita. Gli antenati dovranno avere pazienza.",
		"Resta ancora un po'. Da questa parte c'è ancora lavoro per te.",
	},
	["race.orc.rezother.w09.002"] = {
		"Ho chiamato, e qualcosa ha risposto da molto lontano. Gli spiriti sono gentili, dicono gli sciamani, quando la chiamata è sincera.",
		"Lontano dal baratro. Gli orchi hanno già perso abbastanza per mano della morte; questo non se lo prende.",
	},
	["race.orc.rezother.w09.003"] = {
		"si inginocchia, un pugno premuto a terra, e aspetta con cupa pazienza che la vita riprenda.",
		"china la testa e mormora qualcosa di basso e ruvido, una supplica agli spiriti che ascoltano.",
	},
	["race.orc.travel.w09.001"] = {
		"Una pietra del ritorno: l'unica magia di cui si fida ogni orco. Conosce una parola sola, e la parola è casa.",
		"Stringo la pietra e penso alla polvere rossa. È quanto di più simile un orco abbia a una preghiera che riceve sempre risposta.",
		"La pietra tira. Certi orchi brontolano che camminare tempra il carattere. Sulla strada di casa non brontola nessuno.",
	},
	["race.scourge.attack.w09.001"] = {
		"Ecco un brivido per te, dritto da Tirisfal!",
		"Brill ti manda il suo peggio!",
		"Un po' di rancore dei Reietti, consegnato a mano!",
	},
	["race.scourge.attack.w09.002"] = {
		"colpisce con uno scatto del braccio da marionetta, senza il minimo sforzo sul volto morto.",
		"si slancia con la rapidità innaturale di chi non sente più le proprie giunture.",
		"si fa avanti con un tintinnio di ossa smosse e un colpo che sembra arrivare dal nulla.",
	},
	["race.scourge.attack.w09.003"] = {
		"Nessun bisogno di riposare tra un colpo e l'altro. Niente polmoni da riempire, niente cuore da calmare. Avanti.",
		"Ai morti le braccia non si stancano. Ancora. E ancora.",
	},
	["race.scourge.attack.w09.004"] = {
		"E un altro! Non ho nessun altro posto dove stare.",
		"La tomba mi ha dato pazienza in abbondanza. Eccone ancora.",
		"Non aspettare che mi stanchi. Aspetteresti parecchio.",
	},
	["race.scourge.buff.w09.001"] = {
		"Qualcosa mi si posa addosso, saldo e freddo. Bene. La prontezza la preferisco fredda.",
		"Preparativi fatti. I vivi in questi momenti hanno le farfalle nello stomaco. Io ho la piacevole assenza di farfalle.",
		"Ci siamo. Nessun nervo da calmare. È l'unico regalo che la tomba abbia fatto senza chiedere niente.",
	},
	["race.scourge.buff.w09.002"] = {
		"Ecco. {g:Pronto|Pronta} a partire, o almeno quanto può esserlo un cadavere.",
		"A posto. Non dirmi che ho un aspetto migliore: so benissimo che aspetto ho.",
		"Ci sono. I morti arrivano sempre in anticipo: non hanno altro da fare.",
	},
	["race.scourge.buff.w09.003"] = {
		"stringe una cinghia allentata, ruota il collo rigido finché non scrocchia, e si volta verso quel che viene dopo.",
		"si raddrizza con uno scricchiolio di tendini secchi, ogni preparativo fatto, e non aspetta niente.",
	},
	["race.scourge.buff.w09.004"] = {
		"Ecco, {target}. Prendi un po' di quel che manda avanti me. Non ne sentirò la mancanza.",
		"Prendi. Ti reggerà più a lungo di quanto credi. Un po' come me.",
		"Vai pure, {target}. Lo porterai meglio di come lo porterei io.",
	},
	["race.scourge.buff.w09.005"] = {
		"Rafforzo alleati scelti da me. Il Re dei Lich ne sarebbe inorridito; già solo per questo ne vale la pena.",
		"Adesso distribuisco protezione liberamente, a chi mi pare. Nessuno me l'ha ordinato. È questo il bello.",
		"Una gentilezza da parte di un morto. Che ne pensino quel che vogliono: io ne penso quel che voglio.",
	},
	["race.scourge.heal.w09.001"] = {
		"Non muoverti, {target}. Ho le mani fredde, ma sanno quello che fanno.",
		"Piano, ora. Mani fredde, lavoro sicuro. Ti rimetterai.",
		"Non sussultare per il gelo, {target}. Sono solo io che ti rimetto insieme.",
	},
	["race.scourge.heal.w09.002"] = {
		"Ecco. Ti ha rimesso in sesto un cadavere. Raccontala all'osteria, {target}.",
		"Meglio? Bene. Cerca di non pensare troppo a chi ci ha messo le mani.",
		"Tutto ricucito. Sì, da uno dei morti. Prego, e i brividi tienili per dopo.",
	},
	["race.scourge.heal.w09.003"] = {
		"Strano lavoro per un morto, questo del curare. Scopro che mi riesce bene, il che è ancora più strano.",
		"Rimetto insieme gli altri come nessuno ha mai rimesso insieme me. Con cura. Mi sembra il minimo.",
		"Qualunque cosa abbia perso nella tomba, il dono di curare è passato indenne. Buffo, quel che sopravvive.",
	},
	["race.scourge.heal.w09.004"] = {
		"si china su chi è ferito con mani grigie e attente, lavorando in un silenzio stranamente gentile.",
		"posa dita fredde sulla ferita con una tenerezza sorprendente, come se temesse di lasciarvi la brina.",
	},
	["race.scourge.heal.w09.005"] = {
		"La Luce mi risponde ancora, {target}, anche se brucia mentre passa. Ne vale la pena.",
		"Ecco. La Luce mi pizzica un po' le mani, ma su di te fa il suo lavoro lo stesso.",
	},
	["race.scourge.heal.w09.006"] = {
		"Smettila di agitarti. Ho curato di peggio, e a volte il peggio ero io.",
		"Siediti. Tieni duro. Ecco. E non fissare le mie cuciture: le tue verranno più ordinate.",
		"Basta dimenarsi, {target}. Faccio prima se nessuno mi guarda le mani.",
	},
	["race.scourge.heal.w09.007"] = {
		"L'Orda ci tollera perché siamo utili. Bene. Che veda quanto, una ferita chiusa dopo l'altra.",
		"Ogni alleato che tengo in piedi è un argomento a favore dei Reietti. Intendo vincere la discussione.",
	},
	["race.scourge.heal.w09.008"] = {
		"Te la caverai, {target}. Parola di chi l'alternativa la conosce bene.",
		"Starai bene. Dell'altro esito so parecchio, e non è questo il caso.",
	},
	["race.scourge.heal.w09.009"] = {
		"Il buio ha già abbastanza dei nostri. Te non lo avrà.",
		"Non ancora, {target}. Fidati, non c'è nessuna fretta di arrivare dove sono {g:stato|stata} io.",
	},
	["race.scourge.heal.w09.010"] = {
		"I morti hanno poca vita da avanzare, e io la travaso nel mio demone. Qualcuno dovrebbe farmi i conti in tasca.",
		"Quel che mi tiene in piedi lo divido con la creatura che mi segue. Dovrebbe essermi grata. Non lo sarà.",
	},
	["race.scourge.heal.w09.011"] = {
		"lascia scorrere nel demone un filo sottile e malsano della propria non-vita, e per questo si fa un poco più {g:grigio|grigia}.",
		"nutre il demone attingendo dal proprio corpo ricucito, impassibile, come chi versa olio in una lucerna.",
	},
	["race.scourge.heal.w09.012"] = {
		"La carne si richiude come una borsa tirata dai lacci. Senza nessun calore. Non ne arriva mai.",
		"I lembi strappati si cercano di nuovo, lenti e pazienti come radici. Non è bello, ma tiene.",
		"La ferita si chiude, fredda e ordinata. Il mio corpo si ripara come un mobile: senza lamentarsi, senza conforto.",
	},
	["race.scourge.heal.w09.013"] = {
		"Ecco. Un altro giorno senza cadere a pezzi. Non chiedo altro.",
		"{g:Rattoppato|Rattoppata}. Non bello, ma di bello in me non c'è niente da anni.",
		"Basta così. Il resto può restare brutto: c'è abituato.",
	},
	["race.scourge.heal.w09.014"] = {
		"Le ossa tornano al loro posto. Il marciume fa un passo indietro. Ne riparleremo più avanti, io e lui.",
		"Il disfacimento rimandato ancora un po'. Lui è paziente; io pure.",
		"Oggi il marciume perde un po' di terreno. Tornerà. Torna sempre, e io lo aspetto sempre.",
	},
	["race.scourge.heal.w09.015"] = {
		"guarda uno squarcio sigillarsi, poi ne tira i bordi come per provare la tenuta di un nodo.",
		"preme con due dita la ferita che si chiude, come un sarto che spiana una cucitura appena fatta.",
	},
	["race.scourge.heal.w09.016"] = {
		"Basta così. Torniamo al lavoro prima che si stacchi qualcos'altro.",
		"Chiuso. Torniamo dentro, prima che mi passi la voglia.",
	},
	["race.scourge.heal.w09.017"] = {
		"Mentre la ferita si chiude il dolore mi torna appena, come una parola ricordata a metà. Quando se ne va, quasi mi manca.",
		"I vivi provano sollievo quando una ferita si chiude. Io sento una quiete sorda e lontana. Immagino che conti.",
	},
	["race.scourge.heal.w09.018"] = {
		"Quella è colpa mia. I morti non hanno scuse per la distrazione: abbiamo visto dove porta.",
		"Quel colpo l'ho lasciato passare. Distrazione. Essere morti non vuol dire essere invincibili, per quanto sembri.",
	},
	["race.scourge.heal.w09.019"] = {
		"Lino stretto intorno allo squarcio. I morti sanguinano poco, ma si sfasciano. Così i pezzi restano al loro posto.",
		"Una benda per un corpo che sanguina appena. Più che una medicazione è una cucitura in più.",
	},
	["race.scourge.heal.w09.020"] = {
		"Una pietra piena del vigore rubato a qualcuno. Non chiedo di chi. Non sono nella posizione di giudicare.",
		"Una pietra da stregone, stretta nel pugno. Vita in prestito, per un corpo che va avanti tutto a tempo in prestito.",
	},
	["race.scourge.heal.w09.021"] = {
		"Chiuso. Dunque, dov'eravamo? Ah sì: tu che perdevi.",
		"Le cuciture tengono. Riproviamo, e stavolta sono {g:pronto|pronta}.",
		"Sistemato. La Dama Oscura non mi ha {g:liberato|liberata} perché cadessi per un graffio.",
	},
	["race.scourge.heal.w09.022"] = {
		"lascia che la ferita si ricomponga, del tutto immobile, senza trarre un respiro e senza averne bisogno, finché gli strappi non sono spariti in silenzio.",
		"apre e chiude la mano appena guarita, una volta, due, e la studia con la curiosità distaccata di uno speziale.",
	},
	["race.scourge.rezother.w09.001"] = {
		"In piedi. Fidati, così è meglio: io ho provato l'altro modo.",
		"Eccoti di ritorno. Ti è andata bene: quando sono {g:tornato|tornata} io, nessuno mi ha chiesto il permesso.",
		"Su, alzati. A te tocca la versione gentile di quel che è successo a me.",
	},
	["race.scourge.rezother.w09.002"] = {
		"So cosa vuol dire risorgere. Mi assicuro che stavolta sia più gentile: interi, e ancora padroni di sé.",
		"Riportati indietro con la mente intatta e la volontà intoccata. È così che va fatto. Io lo so bene.",
	},
	["race.scourge.rezother.w09.003"] = {
		"Tienila vicina. Se cadi, ti rialzerai. La strada del ritorno la conosco: l'ho percorsa.",
		"Un'assicurazione contro la tomba. Fidati di chi ne ha fatto a meno.",
	},
	["race.scourge.travel.w09.001"] = {
		"La pietra del ritorno si scalda nella mano. Strano, sentire il calore venire da una pietra e non dalle mie dita.",
		"Una pietra che mi riporta a casa. Una volta anche la morte mi ha preso per mano: questa stretta è la più gentile delle due.",
		"Una stretta alla pietra e le leghe svaniscono. Per chi una volta è uscito da una tomba, non è certo il viaggio più strano.",
	},
	["race.troll.attack.w09.001"] = {
		"Da Sen'jin, zanne comprese!",
		"Prendi questo, e portatelo a casa!",
		"Braccia lunghe, pazienza corta!",
	},
	["race.troll.attack.w09.002"] = {
		"mette tutto nell'attacco, zanne scoperte, con un sibilo secco.",
		"si lascia sfuggire una breve risatina quando va a segno.",
		"sorride a tutta bocca quando colpisce, zanne in avanti.",
	},
	["race.troll.attack.w09.003"] = {
		"Colpisci dove è morbido. La giungla ce l'ha insegnato prima che chiunque ci insegnasse altro.",
		"Rapidità e precisione. La pazienza del cacciatore, poi tutto in un colpo.",
		"Aspetta... adesso. Come quando si caccia nell'erba alta.",
	},
	["race.troll.attack.w09.004"] = {
		"Prova un po' questa!",
		"Ne vuoi un'altra? Ne ho in abbondanza.",
	},
	["race.troll.buff.w09.001"] = {
		"Un formicolio lungo le ossa lunghe, poi silenzio. {g:Pronto|Pronta}.",
		"{g:Preparato|Preparata}. Nella giungla il cacciatore si prepara prima della caccia, mai durante.",
		"Ci siamo. Adesso qualunque cosa arrivi mi troverà {g:sveglio|sveglia} e sorridente.",
	},
	["race.troll.buff.w09.002"] = {
		"Ecco. Ora sono un troll con un piano. Cosa rara.",
		"Tutto a posto, e sono molto {g:soddisfatto|soddisfatta} di me.",
		"Bene. Adesso sono {g:pronto|pronta} per i guai, e i guai farebbero meglio a esserlo per me.",
	},
	["race.troll.buff.w09.003"] = {
		"scuote le lunghe braccia una alla volta, sciolte e pronte per la strada.",
		"si batte due volte una zanna con la punta del dito, una piccola abitudine prima di rimettersi in cammino.",
	},
	["race.troll.buff.w09.004"] = {
		"Tieni, {target}. Un pensierino per affrontare quello che arriva.",
		"Porta questo con te. La strada è più gentile con chi ha qualcosa in più.",
		"Ecco. Va', e torna con braccia e gambe tutte al loro posto.",
	},
	["race.troll.buff.w09.005"] = {
		"Fatto. I Darkspear dividono quello che hanno, e io ho questo.",
		"Questo reggerà per un po'. Un piccolo dono, e un troll i doni li fa volentieri.",
		"Condiviso. A Sen'jin nessuno mangia per conto suo, e nessuno parte senza essersi preparato.",
	},
	["race.troll.heal.w09.001"] = {
		"Si sta chiudendo. La carne dei troll non ha mai avuto bisogno di molti incoraggiamenti: solo di un momento.",
		"Ecco. La pelle si tira, si ricuce, dimentica. Vorrei che l'orgoglio guarisse altrettanto in fretta.",
		"Si rimargina. I troll guariscono come la giungla si richiude su un sentiero: in fretta, e senza chiedere permesso.",
	},
	["race.troll.heal.w09.002"] = {
		"Meglio. Sarei {g:guarito|guarita} comunque, ma oggi ho fretta.",
		"Come {g:nuovo|nuova}. Be', come ieri, e ieri andava benissimo.",
	},
	["race.troll.heal.w09.003"] = {
		"Che sbadataggine. Un raptor che sanguina così finisce mangiato dal raptor successivo. Impara, troll.",
		"Questa me la sono cercata. La giungla non perdona due volte, dicono i cacciatori.",
	},
	["race.troll.heal.w09.004"] = {
		"In piedi e {g:pronto|pronta}. Chiunque sia stato, torno a prenderlo.",
		"Rattoppo fatto. Qualunque cosa arrivi adesso, troverà un troll tutto intero.",
		"Di nuovo in piedi. Gambe lunghe, memoria corta per il dolore.",
	},
	["race.troll.heal.w09.005"] = {
		"passa un lungo pollice sulla ferita che si chiude e approva con un grugnito.",
		"flette le lunghe dita e guarda la pelle lacerata richiudersi da sola.",
		"fa ruotare una spalla, poi l'altra, saggiando la carne rimessa a posto con blando interesse.",
	},
	["race.troll.heal.w09.006"] = {
		"Va meglio. Ringrazio gli spiriti per un corpo così testardo, anche se direbbero che lo faccio esercitare troppo.",
		"Gli stregoni vudù dicono che il sangue dei troll ricorda la giungla. In questo momento si ricorda come si chiude una ferita.",
	},
	["race.troll.heal.w09.007"] = {
		"Una benda su un troll è più che altro un ornamento. Però tiene lontane le mosche mentre la pelle si dà da fare.",
		"Braccia lunghe vogliono bende lunghe, e io resto sempre senza all'altezza del gomito.",
	},
	["race.troll.heal.w09.008"] = {
		"Sa di acqua di palude e di monete vecchie. Però funziona.",
		"Giù in un sorso. Gli intrugli degli stregoni vudù hanno un sapore peggiore, e fanno meno effetto.",
	},
	["race.troll.heal.w09.009"] = {
		"I troll non tengono quasi cicatrici. A volte vorrei che le tenessimo: qualche segno mi ricorderebbe di stare {g:attento|attenta}.",
		"Domani la ferita sarà sparita, e con lei la lezione. È questo il guaio di guarire in fretta.",
		"Già richiusa. La carne dei troll ha la memoria corta; io cerco di averne una più lunga al posto suo.",
	},
	["race.troll.heal.w09.010"] = {
		"Basta storie. È chiusa. Andiamo.",
		"Reggerà. I troll non stanno lì a coccolarsi i graffi.",
	},
	["race.troll.heal.w09.011"] = {
		"Piano, {target}. Gli spiriti ascoltano: lasciali lavorare.",
		"Non muoverti un momento. Si aggiusta prima se smetti di dimenarti.",
		"Respira. Qualunque spirito stia ascoltando, in questo momento è dalla tua parte.",
	},
	["race.troll.heal.w09.012"] = {
		"Ecco. Tu non guarisci come un troll, quindi alla guarigione ci penso io per tutti e due.",
		"Tutto a posto. La prossima volta prova ad abbassarti: abbassarsi costa meno di me.",
		"Rattoppo fatto, {target}. Vai, e tieni la testa più bassa.",
	},
	["race.troll.heal.w09.013"] = {
		"mormora piano su chi è ferito, le lunghe dita aperte, ondeggiando appena mentre la cura fa presa.",
		"canticchia sottovoce un motivo ondeggiante dei Darkspear mentre la ferita si richiude.",
		"schiocca la lingua contro una zanna, {g:concentrato|concentrata}, mentre il colore torna sul viso di chi era ferito.",
	},
	["race.troll.heal.w09.014"] = {
		"I troll guariscono da soli; quasi tutti gli altri no. Prestare un po' di quello che ha il mio popolo mi sembra giusto.",
		"La ferita di qualcun altro che si chiude sotto le mie mani. È più bello che chiudere la mia.",
	},
	["race.troll.heal.w09.015"] = {
		"I loa, la Luce, gli spiriti: non chiedo chi abbia risposto. Li ringrazio tutti e basta.",
		"Qualunque spirito ascolti, ha ascoltato. Più tardi gli lascerò qualcosa accanto al fuoco.",
	},
	["race.troll.heal.w09.016"] = {
		"Su, {target}. Nessuno cade finché c'è un guaritore Darkspear a guardare.",
		"Tu combatti, io ricucio. Questo è il patto.",
	},
	["race.troll.heal.w09.017"] = {
		"Smettila di sanguinarmi sui piedi. Ecco. Meglio.",
		"Vivrai. Cerca di non farmene pentire.",
		"Smettila di contorcerti. Sono {g:bravo|brava}, ma non fino a questo punto.",
	},
	["race.troll.heal.w09.018"] = {
		"Così fragili, quelli che non ricrescono. Li tengo insieme come meglio posso.",
		"Ogni cura che do è un piccolo litigio con la morte. Questo l'ho vinto io.",
	},
	["race.troll.heal.w09.019"] = {
		"si china su chi è ferito e soffia piano sulla ferita, un gesto che sembra più antico di qualunque incantesimo.",
		"apre le mani e pronuncia qualche parola cantilenante nella lingua dei troll, con voce ferma e senza fretta.",
	},
	["race.troll.heal.w09.020"] = {
		"Resta con me, {target}. Gli occhi quassù: la ferita se la cava anche senza che tu la guardi.",
		"Ecco fatto. Ti ho rimesso insieme. Più o meno.",
	},
	["race.troll.rezother.w09.001"] = {
		"Torna indietro. I loa possono aspettarti ancora un po'.",
		"Su, in piedi. Gli spiriti non erano pronti per te, e io nemmeno.",
		"Non è la tua ora. Ho chiesto con gentilezza, e gli spiriti hanno acconsentito.",
	},
	["race.troll.rezother.w09.002"] = {
		"Gli stregoni vudù dicono che i morti percorrono una lunga spiaggia prima di andarsene. Io ho appena richiamato qualcuno indietro da lì.",
		"Uno spirito si è voltato sulla sua strada ed è tornato. Sembra sempre un piccolo prodigio, e un debito.",
		"Di ritorno dagli spiriti. Respira piano. Il mondo è rumoroso, dopo il silenzio.",
	},
	["race.troll.travel.w09.001"] = {
		"Un giro della pietra e la strada si ripiega alle mie spalle. Gli stregoni direbbero che mi portano gli spiriti. Io ringrazio chiunque sia.",
		"La pietra mi ronza nel palmo. Magia delle scorciatoie. Probabilmente i loa ridono, a vedere un troll che salta una settimana di cammino.",
		"Chiudi il pugno, pensa al focolare, e il mondo si sbava come pittura fresca. La mia gente ha attraversato un mare su barche stipate; io attraverso un continente in un respiro.",
	},
	["band.b60.attack.w10.001"] = {
		"Ecco dove la lunga strada rende.",
		"Tutto quello che ho imparato, puntato su di te.",
	},
	["band.b60.attack.w10.002"] = {
		"Proprio dove è più debole. Ormai so dove guardare.",
		"Niente sforzi sprecati. Trova il varco e colpiscilo.",
	},
	["ctype.beast.attack.w10.001"] = {
		"Eccoti un morso tutto mio!",
		"Non sono solo i denti a fare male!",
		"Giù, bestia! Giù!",
	},
	["ctype.beast.attack.w10.002"] = {
		"Colpisci quando si raccoglie per scattare. È quello il varco.",
		"Colpiscila mentre si carica. Mai dopo.",
	},
	["ctype.beast.attack.w10.003"] = {
		"accorda il colpo al balzo della bestia e le va incontro a metà strada.",
		"colpisce basso mentre la creatura si solleva, {g:rapido|rapida} come un predatore.",
	},
	["ctype.elemental.attack.w10.001"] = {
		"Colpisci al centro, dove si tiene insieme.",
		"Colpisci dove la forma è più densa. Lì c'è il nodo.",
	},
	["ctype.humanoid.attack.w10.001"] = {
		"Questa l'avevi vista arrivare? Immaginavo di no.",
		"Indovina dove arriva la prossima.",
	},
	["ctype.humanoid.attack.w10.002"] = {
		"Si copre in alto. Vai in basso.",
		"Dopo ogni colpo abbassa la guardia. Ecco.",
	},
	["ctype.humanoid.attack.w10.003"] = {
		"accenna una finta, aspetta che l'avversario abbocchi, e colpisce nel varco.",
		"colpisce nell'istante in cui l'avversario si sbilancia, e non un attimo prima.",
		"risponde alla mossa dell'avversario prima che sia finita.",
	},
	["mood.city.travel.w10.001"] = {
		"La pietra si scalda in mezzo alla folla. Qui nessuno noterà una faccia in meno, e andarsene diventa facile.",
		"Pietra del ritorno in mano, fra un banco e un posto di guardia. La città continua a mercanteggiare mentre io svanisco.",
	},
	["weather.clear.travel.w10.001"] = {
		"Un tempo perfetto per camminare, e io prendo la scorciatoia. La strada si terrà il suo buonumore senza di me.",
		"Cielo vuoto, strada asciutta, e io ripiego tutto dentro una pietra. Qualcuno chieda scusa al tempo da parte mia.",
	},
}, "base_spells")
