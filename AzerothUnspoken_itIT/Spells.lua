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
	["heal.w14.care.001"] = {
		"Lascia che si richiuda, {target}. Se ti muovi adesso, fatica il doppio.",
		"Non serve muoversi. Concedi alla cura un minuto di quiete.",
		"Pazienza. La cura detesta la fretta.",
	},
	["heal.w14.care.002"] = {
		"{target}, ti resto accanto finché non è finita. Nessuno ti lascia qui.",
		"Non me ne vado. Resto qui fino alla fine.",
		"Hai compagnia, fino all'ultimo.",
	},
	["heal.w14.care.003"] = {
		"Reggerà. Ci ho messo tutto quello che avevo, e reggerà.",
		"Terrà. Hai la mia parola.",
		"Dammi retta: regge. Me ne sono {g:assicurato|assicurata}.",
	},
	["heal.w14.care.004"] = {
		"Ancora un poco. Senti che si allenta? È il peggio che se ne va.",
		"Quasi fatto. Il peggio ormai ce l'hai alle spalle.",
		"Quasi. Lascia scivolare via l'ultimo dolore.",
	},
	["heal.w14.care.005"] = {
		"Appoggia il peso su di me per un momento. Sono qui per questo.",
		"Posalo per un po'. Portarlo adesso tocca a me.",
		"Quel peso per un po' è mio. Tu riposa.",
	},
	["heal.w14.care.006"] = {
		"Qualunque cosa arrivi, {target}, dovrà passare prima da me.",
		"Chi ti vuole dovrà prima vedersela con me.",
		"Resta alle mie spalle. Niente ti raggiunge, se prima non raggiunge me.",
	},
	["heal.w14.care.007"] = {
		"Ci penso io. Puoi smettere di tenerti insieme: adesso è compito mio.",
		"Ti tengo io. Lascia andare, il peso lo reggo io.",
		"Appoggiati a me. Adesso a tenere sono io.",
	},
	["heal.w14.care.008"] = {
		"Non andartene, {target}. Non finché posso ancora fare qualcosa.",
		"Resta. Finché le mie mani lavorano, tu resti.",
		"Resta, {target}. Ti chiedo di restare.",
	},
	["heal.w14.care.009"] = {
		"Ciò che qui era rotto sia ricucito, e ricucito resti.",
		"Chiusa e salda. Che nulla la riapra presto.",
		"Ricucita, e ricucita bene. Che duri.",
	},
	["heal.w14.care.010"] = {
		"Cerca qualcosa di fermo da guardare. Che sia io.",
		"Punta lo sguardo su qualcosa che non si muove. Io resto immobile.",
		"Guarda qui, verso di me. Sono io il punto fermo.",
	},
	["heal.w14.care.011"] = {
		"La senti? La forza sta ritrovando la strada verso di te.",
		"{target}, la forza sta tornando. Lasciala posare, prima.",
		"Eccola, la tua forza. La sento arrivare.",
	},
	["heal.w14.care.012"] = {
		"Sembra peggio di quello che è. Te lo prometto, sembra soltanto.",
		"Più brutta che pericolosa. Te la caverai.",
		"Brutta, sì. Grave, no. Fidati.",
	},
	["heal.w14.care.013"] = {
		"Finché resto qui, nessuna tua ferita resterà senza cura.",
		"Nessuna tua ferita resta senza risposta, finché ci sono io.",
		"Qui ogni tuo dolore ha risposta. Ognuno.",
	},
	["heal.w14.care.014"] = {
		"Shh. Silenzio, adesso. La cura sa da sé dove andare.",
		"Calma, {target}. Sta facendo quello che deve.",
		"Silenzio, ora. Lascia che faccia il suo corso.",
	},
	["heal.w14.care.015"] = {
		"Non te. Non ho nessuna intenzione di perderti così.",
		"Mi rifiuto di perderti qui, {target}. Mi rifiuto e basta.",
		"Non così. Così non te ne vai.",
	},
	["heal.w14.care.016"] = {
		"Riparti quando te la senti, e non un istante prima.",
		"Nessuna fretta. Faccio la guardia finché non te la senti di muoverti.",
		"Prenditi tutto il tempo che serve. Al resto bado io.",
	},
	["heal.w14.care.017"] = {
		"Forse lascerà un segno. Solo un segno, te lo garantisco.",
		"Una cicatrice, al massimo. Niente di più.",
		"Un segno, forse. I segni sbiadiscono, o diventano storie.",
	},
	["heal.w14.care.018"] = {
		"Questo dolore lo prendo in mano io, {target}. Adesso è affar mio, non tuo.",
		"Lascia a me il dolore. Adesso risponde a me.",
		"Dammi il tuo dolore. Lo tengo io per te.",
	},
	["heal.w14.care.019"] = {
		"Da questa te ne vai sulle tue gambe, {target}.",
		"Da qui te ne andrai camminando. L'ho deciso io.",
	},
	["heal.w14.care.020"] = {
		"Lascia a me le preoccupazioni. Tu devi solo stare immobile.",
		"Preoccuparmi tocca a me. A te, riposare.",
	},
	["heal.w14.care.021"] = {
		"Per un momento c'è solo questo, e me ne sto occupando io.",
		"Per ora, solo questo. Me ne occupo io.",
	},
	["heal.w14.care.022"] = {
		"Hai dato abbastanza, per un tratto. Lascia che ti restituisca qualcosa.",
		"Hai speso parecchio. Eccone indietro una parte.",
	},
	["heal.w14.care.023"] = {
		"Non c'è vergogna nell'aver bisogno di cure. Prima o poi capita a chiunque.",
		"Nessuna vergogna, {target}. Ci si fa male tutti.",
		"Farsi male non è una sconfitta. È solo dolore, e ci sono qui io.",
	},
	["heal.w14.care.024"] = {
		"Quello che ti è successo non posso cancellarlo. Posso fare in modo che finisca qui.",
		"Il male è fatto. Che resti, no.",
		"Quel che è fatto è fatto. Il resto lo decido io.",
	},
	["heal.w14.care.025"] = {
		"Adagio. Così, adagio. Stai andando bene.",
		"Con calma. Va tutto per il verso giusto.",
		"Con pazienza. Stai facendo tutto bene.",
	},
	["heal.w14.care.026"] = {
		"Qualunque cosa abbia provato a spezzarti, non ci è riuscita. Farò in modo che non ci riesca mai.",
		"Ha provato a spezzarti e ha fallito. Adesso fallisce per sempre.",
	},
	["heal.w14.care.027"] = {
		"Trova pace per un momento, {target}. Nessuno ti chiede niente.",
		"Per adesso non ti si chiede nulla. Solo di riposare.",
		"Riposa. Adesso non devi dimostrare niente a nessuno.",
	},
	["heal.w14.care.028"] = {
		"La vedo. So esattamente dove fa male, e ci sto lavorando.",
		"Vedo dove fa male. Ci sono già.",
		"Trovato. Ecco il guaio, e si sta chiudendo.",
	},
	["heal.w14.care.029"] = {
		"In te c'è più di quanto questa ferita sappia. Sta per scoprirlo.",
		"Questa ferita ha fatto male i conti con te. Se ne sta andando.",
		"Ha scelto la vittima sbagliata.",
	},
	["heal.w14.care.030"] = {
		"La parte profonda è chiusa, {target}. Resta solo l'indolenzimento.",
		"Il male profondo è sigillato. Resta soltanto il dolore sordo.",
	},
	["heal.w14.care.031"] = {
		"Dimentica questa ferita, {target}. Se qualcuno deve ricordarla, che sia io.",
		"Toglitela dalla testa. Il ricordo lo tengo io.",
	},
	["heal.w14.care.032"] = {
		"Ogni ferita a portata delle mie mani si chiude. La tua è a portata.",
		"Sei a portata. Non serve altro.",
	},
	["heal.w14.care.033"] = {
		"Per adesso il coraggio non ti serve. Ce ne metto io per due.",
		"Posa il coraggio per un momento. Ne ho abbastanza per due.",
		"La paura è permessa. Il coraggio lo metto io, quanto basta.",
	},
	["heal.w14.care.034"] = {
		"Qualcuno è venuto per te, {target}. Conta più di quanto immagini.",
		"Qualcuno è arrivato. Ricordalo, qualunque altra cosa tu dimentichi.",
		"Nessuno si è scordato di te. Tienilo stretto.",
	},
	["heal.w14.care.035"] = {
		"Va' con prudenza, {target}, e con le ferite chiuse.",
		"Riprendi il cammino con passo fermo. Non chiedo altro.",
		"Riparti, allora, e con dolcezza.",
	},
	["heal.w14.care.036"] = {
		"Proprio qui, {target}. Abbastanza vicino da non doverti chiedere dove sono.",
		"Sono a un passo. Abbastanza vicino da poterci contare.",
		"Qui vicino, {target}. Sempre a portata di braccio.",
	},
	["heal.w14.care.037"] = {
		"Che regga finché ti serve, e anche un po' oltre.",
		"Che tenga, e tenga più a lungo del necessario.",
		"Che resti salda, e salda rimanga.",
	},
	["heal.w14.care.038"] = {
		"Per questo non mi devi niente. Né grazie, né scuse.",
		"Nessun debito. Nemmeno un grazie.",
		"Questa è gratis. Lo sono tutte.",
	},
	["heal.w14.care.039"] = {
		"Cercava te, e ha trovato me di mezzo. Che sfortuna.",
		"Puntava a te, e ha trovato prima me.",
		"Tu eri il suo bersaglio. Io il suo problema.",
	},
	["heal.w14.care.040"] = {
		"Resto finché non ti reggi bene. Per tutto il tempo che serve.",
		"Quanto ci vuole per rimetterti in sesto, lo aspetto con te.",
	},
	["heal.w14.care.041"] = {
		"È a questo che servono queste mani. Lasciale lavorare.",
		"Queste mani sono fatte proprio per questo.",
		"Lascia che le mie mani facciano quello che sanno.",
	},
	["heal.w14.care.042"] = {
		"Da qui usciamo insieme, io e te. È l'unico finale che accetto.",
		"Io e te arriviamo alla fine di questa storia. Insisto.",
	},
	["heal.w14.care.043"] = {
		"Fammi vedere. Mm. Sì. Questa la sistemo.",
		"Bene, questa so come chiuderla.",
		"Ah. Questa la conosco. Si chiude bene.",
	},
	["heal.w14.care.044"] = {
		"Lo so che fa male. Lo so. Ancora per poco.",
		"Fa male, lo so. Un attimo ancora e passa.",
		"Brucia, vero? Sta passando. Senti come passa.",
	},
	["heal.w14.care.045"] = {
		"Vali ogni briciola di questa fatica, {target}. Non pensare mai il contrario.",
		"Ne vale la pena. Tu ne vali la pena. Ricordatelo.",
	},
	["heal.w14.care.046"] = {
		"Appoggia la testa un momento. In questo minuto niente ti reclama.",
		"Abbassa la testa, chiudi gli occhi se vuoi. Niente ti aspetta, per ora.",
		"Chiudi gli occhi, se aiuta. I miei li tengo aperti io.",
	},
	["heal.w14.care.047"] = {
		"Da questo momento le tue ferite le porto io, {target}.",
		"Affidami i tuoi dolori. Li accompagno io alla porta.",
	},
	["heal.w14.care.048"] = {
		"Di vita in te ce n'è ancora tanta. La sento che spinge.",
		"Ne hai ancora tanta, dentro. Lotta per restare, e io con lei.",
		"Qualcosa in te vuole restare. Io sto dalla sua parte.",
	},
	["heal.w14.care.049"] = {
		"si muove adagio e tiene le mani in vista, come ci si avvicina a qualunque creatura che soffre.",
		"si avvicina piano a chi è ferito: niente di brusco, niente di forte.",
		"si fa {g:vicino|vicina} senza fretta, le mani aperte bene in vista.",
	},
	["heal.w14.care.050"] = {
		"si sistema accanto, e resta lì in silenzio e con pazienza finché il dolore di {target} non cede.",
		"resta lì vicino, paziente, senza chiedere nulla, finché il dolore non cala.",
	},
	["heal.w14.care.051"] = {
		"sorregge chi è ferito con una mano che non trema, e non la ritira troppo presto.",
		"tiene una presa ferma e gentile, senza tremare, fino alla fine.",
	},
	["heal.w14.care.052"] = {
		"toglie prima lo sporco intorno alla ferita, con la cura di chi pulisce un oggetto prezioso.",
		"spazzola via la polvere dai bordi della ferita, prima di ogni altra cosa.",
	},
	["heal.w14.care.053"] = {
		"si china vicino al viso di {target} e dice qualcosa a voce così bassa che nessun altro la coglie.",
		"si sporge e parla piano, parole solo per chi è ferito.",
	},
	["heal.w14.care.054"] = {
		"aspetta con una mano appoggiata lieve vicino alla ferita, paziente come una porta tenuta aperta.",
		"resta immobile, paziente come chi tiene aperta una porta.",
	},
	["heal.w14.care.055"] = {
		"sposta il peso per mettersi tra chi è ferito e qualunque cosa possa arrivare.",
		"si piazza davanti a chi sta curando, come a voler prendere su di sé il prossimo colpo.",
	},
	["heal.w14.care.056"] = {
		"resta accanto, paziente come la pietra, finché {target} non è a posto.",
		"continua a vegliare su chi ha curato anche quando non resta più niente da curare.",
	},
	["heal.w14.care.057"] = {
		"rivolge a chi è ferito un cenno lento del capo, di quelli che dicono: è tutto sotto controllo.",
		"annuisce, piano e con sicurezza, come a dire che il peggio è sistemato.",
	},
	["heal.w14.care.058"] = {
		"tiene ogni movimento piccolo e misurato, per non urtare la ferita.",
		"lavora con gesti piccoli e attenti, senza mai scuotere la parte ferita.",
	},
	["heal.w14.care.059"] = {
		"si trattiene al fianco di {target} un momento più del necessario, giusto per sicurezza.",
		"resta ancora un po' a lavoro finito, solo per essere {g:certo|certa} che regga.",
	},
	["heal.w14.care.060"] = {
		"china per un attimo il capo su chi è ferito, come se il compito meritasse una certa solennità.",
		"si ferma a capo chino, come ci si ferma su una soglia.",
	},
	["heal.w14.care.061"] = {
		"si carica per un momento sulla spalla il peso di chi è ferito, senza che nessuno lo chieda.",
		"regge un po' del peso di chi è ferito, in silenzio, come se niente fosse.",
	},
	["heal.w14.care.062"] = {
		"lavora in fretta ma mai di corsa, come se rapidità e cura avessero fatto pace.",
		"si muove rapidamente, senza un solo gesto distratto.",
	},
	["heal.w14.care.063"] = {
		"pronuncia una volta il nome di {target}, piano, come si richiama qualcuno da lontano.",
		"parla a chi è ferito con voce bassa e ferma, come una mano tesa.",
	},
	["heal.w14.care.064"] = {
		"mette da parte tutto il resto e dedica a chi è ferito tutta la sua attenzione.",
		"lascia che il resto del mondo scivoli via e si occupa di quest'unica ferita.",
	},
	["heal.w14.care.065"] = {
		"sta accanto a chi sta curando come un muro che ha deciso di non crollare.",
		"non arretra di un passo accanto a chi è ferito, semplice e {g:saldo|salda} come uno stipite.",
	},
	["heal.w14.care.066"] = {
		"non molla la presa finché non è {g:sicuro|sicura} che {target} si regga bene.",
		"tiene una mano pronta finché chi è ferito non si regge da sé.",
	},
	["heal.w14.care.067"] = {
		"si occupa della ferita con la serietà di chi mantiene una promessa.",
		"cura la ferita con solennità, come si onora un vecchio giuramento.",
	},
	["heal.w14.care.068"] = {
		"rivolge a chi è ferito un sorriso piccolo e fermo, che vuol dire: non c'è niente da temere.",
		"sorride appena, come se fosse la cosa più semplice del mondo.",
	},
	["heal.w14.care.069"] = {
		"Mani gentili. Il dolore mette in allarme chiunque, e un corpo in allarme si cura male.",
		"Con dolcezza. Il dolore mette tutti sulla difensiva.",
		"Piano. Il dolore rende ogni tocco più acuto.",
	},
	["heal.w14.care.070"] = {
		"Che senta che qui c'è qualcuno. Metà della cura è questa.",
		"Esserci conta. Forse conta quasi tutto.",
	},
	["heal.w14.care.071"] = {
		"Voce ferma, mani ferme. La calma si attacca: che si attacchi la mia.",
		"Se resto {g:calmo|calma}, un po' di calma passa anche a chi curo.",
		"La calma contagia. Che parta da me.",
	},
	["heal.w14.care.072"] = {
		"Chiunque sia, in questo momento niente di quello che potrei fare conta di più.",
		"Adesso conta questa vita, prima di tutto. Semplice.",
	},
	["heal.w14.care.073"] = {
		"Parlare piano, muoversi adagio, e promettere solo ciò che posso mantenere.",
		"Parole morbide, mani lente, promesse oneste. Tutta l'arte è qui.",
	},
	["heal.w14.care.074"] = {
		"Niente discorsi. Serve sentirsi dire che reggerà, quindi dillo chiaro.",
		"Semplice: reggerà. Non c'è altro da aggiungere.",
	},
	["heal.w14.care.075"] = {
		"Qualcosa si è rotto, e lo si sta rimettendo a posto. Al mondo poche cose vanno in quel verso.",
		"Rotto, poi aggiustato. Sono poche le cose che vanno in questa direzione.",
	},
	["heal.w14.care.076"] = {
		"Il dolore e la solitudine insieme sono troppo per chiunque. Alla seconda posso rimediare.",
		"Soffrire senza nessuno accanto è troppo. Ma accanto, adesso, ci sono io.",
	},
	["heal.w14.care.077"] = {
		"Se si può ricucire, lo sarà. Non seguo altre regole.",
		"Quel che si può aggiustare si aggiusta. È la mia sola legge.",
	},
	["heal.w14.care.078"] = {
		"Tenere la preoccupazione lontana dal viso. È lì che chi è ferito guarderà per prima cosa.",
		"Nemmeno un lampo di dubbio. È il mio viso che verrà letto.",
	},
	["heal.w14.care.079"] = {
		"Una parola gentile qui non costa nulla, e fa più di quanto avrebbe diritto.",
		"La gentilezza è la cosa più economica che porto con me, e mai la meno utile.",
	},
	["heal.w14.care.080"] = {
		"Che qualcuno me l'abbia chiesto o no, non c'entra.",
		"Chiesto o no, è uguale: la ferita si cura.",
		"Curare non è un favore. Qui funziona così.",
	},
	["heal.w14.grit.001"] = {
		"Chiusa. La parte di me che voleva mollare può sedersi e tacere.",
		"La ferita si è chiusa prima che il dubbio finisse la sua predica.",
	},
	["heal.w14.grit.002"] = {
		"In piedi, e ci resto.",
		"Mi tengo su. E conto di restarci per un bel po'.",
		"Le gambe reggono. E faranno quello che dico io.",
	},
	["heal.w14.grit.004"] = {
		"Ricordati da dove è arrivata. La ferita si chiude, la lezione no.",
		"Chiudere la ferita, tenere a mente come me la sono guadagnata. Quella parte resta.",
		"La carne può dimenticare. Io no, non me lo concedo.",
	},
	["heal.w14.grit.005"] = {
		"In sesto quanto basta per mantenere la parola. È a questo che serviva.",
		"Rattoppata la carne, la promessa regge. Si prosegue.",
	},
	["heal.w14.grit.006"] = {
		"Nessuno sarebbe venuto a sistemarla. Così l'ho fatto io. Il segreto è tutto lì.",
		"Nessun altro mi avrebbe rimesso in piedi. Pazienza: tocca a me.",
		"Fatto da me. L'unico aiuto che non manca mai.",
	},
	["heal.w14.grit.007"] = {
		"si raddrizza a poco a poco, voltandosi verso il punto da cui è arrivato il colpo.",
		"torna alla sua piena altezza, senza fretta, e serra la mascella.",
		"si tira su e si volta verso ciò che resta da fare.",
	},
	["heal.w14.grit.008"] = {
		"Quanto basta per andare avanti. Il resto della forza lo tengo da parte.",
		"Spendila con giudizio. Quello che è tornato deve durare.",
		"Parsimonia. La forza è una borsa, non un pozzo.",
	},
	["heal.w14.grit.009"] = {
		"Chiusa. Stavolta sarà più difficile buttarmi giù.",
		"Sigillata. Ci vuole ben altro per mettermi a terra.",
		"Ferita sigillata. Quello che arriva adesso troverà meno spazio.",
	},
	["heal.w14.grit.010"] = {
		"Ogni ferita chiusa è una porta che non ho attraversato. Su questa tengo il chiavistello.",
		"Per un attimo c'era una porta. Ora è chiusa, e io sono da questa parte.",
	},
	["heal.w14.grit.011"] = {
		"Lezione presa. Preferirei non averne bisogno due volte.",
		"Capito. Questa me la tengo.",
		"Annotato, e conservato.",
	},
	["heal.w14.grit.012"] = {
		"La testardaggine costa poco e non finisce mai. Bene: me ne servirà parecchia.",
		"Di tutto quello che porto, la testardaggine pesa meno e dura di più.",
		"La testardaggine non costa niente. Ne ho in abbondanza.",
	},
	["heal.w14.grit.013"] = {
		"prova il punto risanato con un po' di peso, poi un po' di più, poi tutto.",
		"carica con prudenza il lato ferito, e scopre che regge.",
	},
	["heal.w14.grit.014"] = {
		"Sistemata, questa. C'è da fare, e non aspetterà che io mi compatisca.",
		"A posto. Il piangersi addosso può fare reclamo più tardi.",
		"Tutto in ordine. Il broncio lo metto in calendario un'altra volta.",
	},
	["heal.w14.grit.015"] = {
		"Una cicatrice è un appunto che scrive il corpo. Preferisco prenderlo io, e risparmiargli l'inchiostro.",
		"Impararlo adesso, con la testa, così la pelle non deve impararlo al posto mio.",
	},
	["heal.w14.grit.016"] = {
		"Già chiusa. Quello che l'ha aperta è stato troppo lento.",
		"Ha avuto la sua occasione. Non l'ha presa.",
	},
	["heal.w14.grit.017"] = {
		"Un giorno niente la chiuderà. Quel giorno è altrove, lontano da qui.",
		"Verrà una ferita che non si chiude. Non è questa.",
		"Non questa ferita. Questa no.",
	},
	["heal.w14.grit.018"] = {
		"Rialzarsi, muoversi, finire. Tre cose. Tre cose le reggo.",
		"In piedi, avanti, fatto. Lista corta. Una lista corta sta anche in una testa dolorante.",
	},
	["heal.w14.grit.019"] = {
		"Si metta a verbale: colpo, ferita chiusa, si riparte.",
		"Annotare nel registro: un colpo, una ferita chiusa, un passo avanti.",
	},
	["heal.w14.grit.020"] = {
		"Stanchezza non vuol dire fine. Conosco la differenza, e la conosce anche il corpo.",
		"Stanchezza e resa: due parole diverse, e le tengo ben separate.",
		"Logorarsi è molto lontano dal finire.",
	},
	["heal.w14.grit.021"] = {
		"allarga un po' la posizione dei piedi, come se adesso ci volesse ben altro per {g:smuoverlo|smuoverla}.",
		"assume una posizione più salda, senza alcuna intenzione di cedere un palmo.",
	},
	["heal.w14.grit.022"] = {
		"Quel colpo non lo lascio arrivare una seconda volta.",
		"Visto tardi, quello. Non succederà due volte.",
		"Lo stesso trucco con me non funziona due volte.",
	},
	["heal.w14.grit.023"] = {
		"Chiudere solo ciò che mi rallenta. Il resto può dolere: il dolore insegna.",
		"Chiudere quello che conta, lasciare i lividi. I lividi sanno ricordare.",
	},
	["heal.w14.grit.024"] = {
		"Il corpo è una cosa presa in prestito. Ho appena pagato un altro po' d'affitto.",
		"Questa carne non è mai del tutto mia. Io la tengo in ordine, e lei mi lascia restare.",
	},
	["heal.w14.grit.025"] = {
		"In piedi, e di umore peggiore di prima.",
		"Rimarginata, la ferita. L'umore, molto meno.",
	},
	["heal.w14.grit.026"] = {
		"La paura ha parlato finché faceva male. Ora aspetta fuori.",
		"La paura ha chiacchierato per tutto il tempo. Adesso tace. Bene.",
		"Finché durava il dolore, la parola era della paura. Adesso è mia.",
	},
	["heal.w14.grit.027"] = {
		"guarda la ferita chiusa un istante più del necessario, poi distoglie lo sguardo, di proposito.",
		"osserva il punto in cui per poco non è finita male, e poi gli volta le spalle.",
		"guarda la ferita chiusa, poi altrove, di proposito.",
	},
	["heal.w14.grit.028"] = {
		"Ne ho ancora, dentro. Molto di più.",
		"Qualcosa rimane sempre, se lo cerco.",
	},
	["heal.w14.grit.029"] = {
		"La forza ritrovata è un incarico, non un regalo. Risponderò di come la spendo.",
		"Restituita perché sia spesa per qualcosa che valga.",
	},
	["heal.w14.grit.030"] = {
		"Ero nel posto sbagliato. La prossima volta, mezzo passo più in là.",
		"Posto sbagliato, momento sbagliato. Colpa mia, e rimediabile.",
	},
	["heal.w14.grit.031"] = {
		"A terra non ci vado. Non è la mia direzione.",
		"Cadrò quando lo deciderò io. E non lo decido.",
		"A terra no. Non adesso.",
	},
	["heal.w14.grit.032"] = {
		"Lo spavento me lo porto dietro più a lungo della ferita. È la parte utile.",
		"La ferita se n'è andata; lo spavento lo tengo. È quello che mi rende prudente.",
		"Tenere lo spavento, perdere la ferita. Scambio onesto.",
	},
	["heal.w14.grit.033"] = {
		"Un bel tentativo. Non abbastanza, ma un bel tentativo.",
		"Punti per l'impegno. Zero per il risultato.",
	},
	["heal.w14.grit.034"] = {
		"Ciascuna ferita richiusa mi rende un po' più difficile da spezzare. È lo scambio, e lo accetto.",
		"Ogni ferita mi mostra un buco nella guardia. Questo l'ho visto, e l'ho chiuso.",
	},
	["heal.w14.grit.035"] = {
		"resta immobile per un istante, come chi si è appena ritratto da un orlo senza parapetto.",
		"si ferma, immobile, poi si scrolla di dosso l'istante come acqua da un mantello.",
	},
	["heal.w14.grit.036"] = {
		"Riprendo da dove avevo lasciato.",
		"A che punto ero? Ah, sì. A vincere.",
		"Torno dov'ero.",
	},
	["heal.w14.grit.037"] = {
		"Le mani hanno smesso di tremare prima che la ferita finisse di chiudersi. Quello lo conto come merito mio.",
		"Prima ha smesso il tremito, poi il dolore. Il primo dei due è opera mia.",
	},
	["heal.w14.grit.038"] = {
		"Se qualcuno conta su di me, mi vuole in piedi, non a dare spiegazioni.",
		"Le scuse non guariscono niente. Rialzarsi sì.",
		"Stare in piedi si spiega da sé.",
	},
	["heal.w14.grit.039"] = {
		"Ha avuto il suo turno, il dolore. Ora tocca a me.",
		"Il dolore ha parlato per primo. A chiudere sarò io.",
	},
	["heal.w14.grit.040"] = {
		"Per un attimo sotto i piedi avevo solo la fortuna. Ora c'è di nuovo terra.",
		"La fortuna mi ha retto per un istante. Adesso possono pensarci le mie gambe.",
	},
	["heal.w14.grit.041"] = {
		"L'orgoglio ha aperto la ferita, il buon senso l'ha chiusa. So a chi dare retta.",
		"Orgoglio per aprirla, giudizio per chiuderla. Ricordarsi chi è chi.",
	},
	["heal.w14.grit.042"] = {
		"Mi alzo. Questa è la mia risposta.",
		"Sulle mie gambe: ecco tutta la mia replica.",
	},
	["heal.w14.grit.043"] = {
		"si raddrizza lentamente, con la gravità di chi riprende un incarico posato solo per un attimo.",
		"raddrizza le spalle come per rimettersi a posto un mantello pesante.",
	},
	["heal.w14.grit.044"] = {
		"Ne vale la pena? Il dolore lo chiede sempre. Sì, ne vale.",
		"Ogni ferita mi domanda se faccio sul serio. Ogni volta, sì.",
	},
	["heal.w14.grit.045"] = {
		"La prossima volta più calma. E più giudizio.",
		"Meno fretta, più occhi aperti. Ricevuto.",
		"Lezione: prima guardare.",
	},
	["heal.w14.grit.046"] = {
		"Nessuno se ne va da questo mondo tutto intero. Io intendo andarmene molto più tardi.",
		"Alla fine si esaurisce chiunque. La mia fine non è a portata di mano.",
		"Mortale, sì. Puntuale, no.",
	},
	["heal.w14.grit.047"] = {
		"Niente sedersi. Sedersi diventa sdraiarsi, e sdraiarsi diventa restare.",
		"Se mi siedo adesso, vorrò restare. Quindi non mi siedo.",
		"Restare in piedi. È metà di tutto.",
	},
	["heal.w14.grit.048"] = {
		"Ferita chiusa, sguardo avanti.",
		"Rimessa a posto la carne, e la faccia dalla parte giusta.",
		"Intera quanto basta la pelle, e occhi davanti.",
	},
	["heal.w14.grit.049"] = {
		"Per fortuna il corpo è un maestro paziente. Io imparo piano.",
		"Il corpo insegna, io dimentico, il corpo alza la voce. Preferirei non arrivarci.",
	},
	["heal.w14.grit.050"] = {
		"C'è ancora un lavoro a metà. I lavori a metà non si finiscono stando sdraiati.",
		"Mezzo compito aspetta. Non si finisce da solo mentre mi coccolo un graffio.",
		"Le faccende in sospeso non badano a come mi sento.",
	},
	["heal.w14.grit.051"] = {
		"scioglie la rigidità del collo e torna a voltarsi verso ciò che verrà.",
		"fa un breve cenno col capo, a nessuno in particolare, e riprende.",
	},
	["heal.w14.grit.052"] = {
		"Si è avvicinata. Più di così non è riuscita.",
		"Vicino. Vicino non vuol dire arrivati.",
	},
	["heal.w14.grit.053"] = {
		"Non spenderla tutta subito. La forza torna più piano di come se ne va.",
		"Attenzione a quello che è tornato. Se ne va di corsa e rientra adagio.",
		"La forza rientra piano. Non mandarla fuori per niente.",
	},
	["heal.w14.grit.054"] = {
		"C'è una fossa senza ancora un nome sopra. Resterà così per un bel pezzo.",
		"La terra ha un posto riservato per me. Può restare vuoto per molto tempo.",
		"La mia fossa resta a metà ancora un po'. Che il becchino si riposi.",
	},
	["heal.w14.grit.055"] = {
		"Calma. Calma. Così.",
		"Con calma. I pezzi sono tutti al loro posto.",
		"Adagio. Ogni pezzo è tornato.",
	},
	["heal.w14.grit.056"] = {
		"Potrei fermarmi qui. Potrei. Non lo farò.",
		"Fermarsi sarebbe facile. Il facile non porta mai da nessuna parte.",
		"Fermarmi? No.",
	},
	["heal.w14.grit.057"] = {
		"Fragilità. Lo sapevo già. Avrei solo preferito un promemoria meno tagliente.",
		"Un promemoria su quanto è sottile la pelle. Ricevuto, grazie, archiviato.",
	},
	["heal.w14.grit.058"] = {
		"Regge. Non mi serve altro permesso.",
		"Non deve essere bello. Deve tenere.",
		"Il bello è per dopo. Tenere è per adesso.",
	},
	["heal.w14.grit.059"] = {
		"tocca per un attimo il punto della ferita, come si tocca ferro per scaramanzia.",
		"lancia un'occhiata alla ferita chiusa, una sola, e non ci torna più sopra.",
	},
	["heal.w14.grit.060"] = {
		"Mentiva, il dolore. Diceva che era finita. Di solito mente.",
		"Il dolore giura sempre di avere l'ultima parola. Non ce l'ha mai.",
	},
	["heal.w14.grit.061"] = {
		"Ferita mia, cura mia, strada mia.",
		"La ferita è mia, la cura pure, e anche la strada che resta.",
	},
	["heal.w14.grit.062"] = {
		"La paura mi rende prudente. Troppa mi rallenta. Tenerla a un pizzico.",
		"Un po' di paura è un buon condimento. Una manciata rovina il piatto.",
	},
	["heal.w14.grit.063"] = {
		"Non sempre mi rialzerò. Non è un buon motivo per saltare le volte in cui posso.",
		"Un giorno non mi rialzerò. Tutti gli altri giorni, sì.",
		"Non tutte le volte. Questa volta sì.",
	},
	["heal.w14.grit.064"] = {
		"Ho ancora parecchia grinta in corpo.",
		"Ho appena cominciato.",
		"Ne resta. Ne resta parecchio.",
	},
	["heal.w14.grit.065"] = {
		"chiude le dita a pugno, poi le riapre, di nuovo pronte.",
		"alza il mento e va avanti.",
		"porta indietro le spalle e fa un passo avanti.",
	},
	["heal.w14.grit.066"] = {
		"Contare quello che resta: gambe, mani, occhi, fegato. Basta e avanza.",
		"Gambe, mani, occhi, volontà. Ci sono tutti. Si parte.",
	},
	["heal.w14.grit.067"] = {
		"Ogni cicatrice segna una volta in cui non ho mollato. Questa non farà eccezione, se mai lascerà il segno.",
		"Se lascia un segno, che segni questo: non ho mollato.",
	},
	["heal.w14.grit.068"] = {
		"Promemoria: guardare quel lato.",
		"Quel lato è debole. Ricordarselo.",
		"Coprire quel lato. Ricordarselo.",
	},
	["heal.w14.grit.069"] = {
		"Tenerla a distanza. La morte ha le braccia lunghe, ma per ora le mie bastano.",
		"A un braccio dalla fine. Abbastanza vicino da vederla, abbastanza lontano da voltarsi.",
	},
	["heal.w14.grit.070"] = {
		"Testa dura come un chiodo in uno stivale vecchio, ecco.",
		"Ho la testa troppo dura per restare a terra. Un difetto, ma utile.",
	},
	["heal.w14.grit.071"] = {
		"Prendersi cura dell'attrezzo che fa il lavoro. L'attrezzo, in questo caso, sono io.",
		"Un filo smussato non serve a nessuno. Riaffilato, allora.",
	},
	["heal.w14.grit.072"] = {
		"Basta così. Avanti.",
		"Finito di poltrire. Si va.",
	},
	["heal.w14.grit.073"] = {
		"Alla ferita non importava chi fossi. Alla prossima nemmeno. Tanto vale farsi trovare in guardia.",
		"Nessun dolore chiede il nome. Adesso almeno gli rispondo in piedi.",
	},
	["heal.w14.grit.074"] = {
		"chiude gli occhi un momento; quando li riapre, dal suo viso è sparita ogni incertezza.",
		"lascia passare il peggio, poi stringe le labbra in una linea dura e dritta.",
	},
	["heal.w14.grit.075"] = {
		"La rabbia è un pessimo medico ma un'ottima stampella. Mi ci appoggio ancora un po'.",
		"Un po' di collera tiene oneste le gambe. Me la tengo.",
		"La collera fa da stampella. Mi appoggio.",
	},
	["heal.w14.grit.076"] = {
		"Quello che mi aspettava può continuare ad aspettare.",
		"Può aspettare. Aspettare le riesce bene.",
	},
	["heal.w14.grit.077"] = {
		"Gli errori da cui si esce vivi sono i maestri più economici che ci siano.",
		"Un errore da cui ci si rialza costa poco. Quelli cari non lasciano il tempo di prendere appunti.",
	},
	["heal.w14.grit.078"] = {
		"Ammaccature sì, sconfitta no.",
		"Fa male, sì. Ma non mi piega.",
		"Qualche ammaccatura. Niente di più.",
	},
	["heal.w14.grit.079"] = {
		"Resistere. Guarire. Resistere. La regola più antica, e la più semplice.",
		"Sopportare e rialzarsi: non c'è regola più nobile, né più dura.",
	},
	["heal.w14.grit.080"] = {
		"osserva la ferita chiusa con un'approvazione riluttante, come si guarda un rivale che ha fatto una cosa per bene.",
		"concede alla ferita richiusa un cenno secco, di quelli riservati al lavoro appena sufficiente.",
		"fa un cenno riluttante alla ferita chiusa.",
	},
	["heal.w14.grit.081"] = {
		"Al lavoro. Qualunque cosa sia, tocca a me finirla.",
		"Stavo facendo qualcosa, prima di farmi male. Torno a farla.",
		"Ho lasciato cadere un filo. Lo riprendo.",
	},
	["heal.w14.grit.082"] = {
		"Ci metterò un po' di più a fidarmi del terreno. Non è paura: è giudizio guadagnato.",
		"Mi fiderò un po' meno dei piedi e un po' di più degli occhi.",
	},
	["heal.w14.grit.084"] = {
		"Qualunque cosa ci sia dentro di me, è roba che ritorna.",
		"Dentro ho qualcosa che torna sempre. Lo preferisco alla durezza.",
		"Io ritorno. È tutto il mio talento.",
	},
	["heal.w14.grit.085"] = {
		"Guarire non è riposare. Prendo in prestito il riposo e lo restituirò più avanti.",
		"Integra la pelle, non le forze. Si va avanti lo stesso.",
	},
	["heal.w14.grit.086"] = {
		"Che venga pure. Lo aspetto in piedi.",
		"Il resto, pure. Sono in piedi.",
		"Ancora, allora. Ci sono.",
	},
	["heal.w14.grit.087"] = {
		"C'è una vocina piccola e ferma che dice: avanti. Ho intenzione di continuare ad ascoltarla.",
		"Qualcosa di silenzioso, dentro, continua a dire: in piedi. Finora non ha sbagliato.",
		"Una voce quieta, dentro, dice: avanti. Le do retta.",
	},
	["heal.w14.grit.089"] = {
		"Va bene. Va bene così. Si parte.",
		"Basta questo. Non mi serve di meglio.",
	},
	["heal.w14.grit.090"] = {
		"Ho imparato due cose: dove fa male, e che lo reggo.",
		"Adesso so quanto costa quell'errore, e che una volta posso pagarlo.",
		"Due lezioni da una sola ferita. Prezzo onesto.",
	},
	["heal.w14.grit.091"] = {
		"La mia parte non la porta nessun altro. Quindi la porto io, dolore o no.",
		"Il mio carico resta il mio. Con la ferita chiusa, almeno pesa meno.",
		"La mia parte. Le mie spalle.",
	},
	["heal.w14.grit.092"] = {
		"Mi rialzerò ogni volta. Contaci.",
		"Cento cadute, cento volte in piedi. È il patto che rispetto.",
		"Ogni volta. Senza eccezioni.",
	},
	["heal.w14.grit.093"] = {
		"Se il mondo mi vuole togliere di mezzo, dovrà essere più accurato.",
		"Quello che ha cercato di finirmi ha lasciato il lavoro a metà. Tanto peggio.",
	},
	["heal.w14.grit.094"] = {
		"controlla l'equipaggiamento con mani rapide e sicure, {g:pronto|pronta} a riprendere.",
		"stringe una cinghia, sistema l'equipaggiamento, ed è {g:pronto|pronta}.",
	},
	["heal.w14.grit.095"] = {
		"La prossima volta lo sentirò arrivare. Anche le orecchie imparano, non solo la pelle.",
		"Gli occhi saranno più svelti la prossima volta. La ferita ci ha pensato.",
	},
	["heal.w14.grit.096"] = {
		"Non ho finito. Sentitelo bene, chiunque stia ascoltando.",
		"Sia chiaro a tutti: non ho chiuso.",
		"Chiudere qui? Nemmeno a parlarne.",
	},
	["heal.w14.grit.097"] = {
		"Quante altre ne ha dentro, il corpo? Abbastanza. Devono bastare.",
		"C'è un limite a quante volte la carne si richiude. Il mio non l'ho trovato, e non lo cerco.",
	},
	["heal.w14.grit.098"] = {
		"Cadere, rialzarsi. Conta solo la seconda.",
		"Andare giù capita a chiunque. Il bello è quello che viene dopo.",
		"Andar giù è facile. È rialzarsi che significa qualcosa.",
	},
	["heal.w14.grit.099"] = {
		"Sistemata. Cosa c'è da fare?",
		"Questa è sistemata. Cosa mi aspetta?",
		"Fatto. Prossima cosa.",
	},
	["heal.w14.grit.100"] = {
		"guarda la ferita chiusa come per imprimersi bene in mente come è successo.",
		"aggrotta la fronte sul punto risanato, rigirandosi l'errore nella mente.",
	},
	["heal.w14.grit.101"] = {
		"Il segreto è durare più del dolore. Si stanca prima lui.",
		"Il dolore si annoia. Io no.",
		"Molla prima il dolore. Succede sempre.",
	},
	["heal.w14.grit.103"] = {
		"Non c'è vergogna nell'aver bisogno di cure. Vergogna sarebbe restare a pezzi per orgoglio.",
		"Rimettersi in sesto non è debolezza. Rifiutarlo lo sarebbe.",
		"Restare a pezzi è una vanità. Non posso permettermela.",
	},
	["heal.w14.mend.001"] = {
		"Torna prima la presa. Le dita che fingevano adesso si chiudono davvero.",
		"Per prima la mano si ricorda come stringere. Il resto di me le va dietro.",
		"Prima di tutto, le dita. Si piegano, afferrano, e fanno sul serio.",
	},
	["heal.w14.mend.002"] = {
		"Questo prurito. La carne che si richiude prude sempre come un rancore.",
		"Adesso prude, ed è una buona notizia travestita da seccatura.",
		"La carne che si chiude dà prurito. Ho imparato a leggerlo come una gentilezza.",
	},
	["heal.w14.mend.003"] = {
		"I contorni delle cose tornano netti. Erano più sfocati di quanto pensassi.",
		"Le sagome del mondo ritornano, una per una, mentre il dolore si ritrae.",
		"Le linee si fanno ferme. Il mondo smette di sbavare agli angoli.",
	},
	["heal.w14.mend.004"] = {
		"Si ripara, il corpo, senza dirmi quante altre volte ha intenzione di farlo.",
		"Si chiude, come ha sempre fatto. Nessuno avvisa quale sarà l'ultima volta.",
		"Si è riparato, senza dire quante altre volte ne sarà capace.",
	},
	["heal.w14.mend.005"] = {
		"Acuto, poi sordo, poi solo un ronzio da qualche parte nelle ossa. Con un ronzio ci convivo.",
		"Da fitta a martellata sorda, poi a un lieve ronzio. Col ronzio si lavora.",
		"La fitta si attutisce, poi tace, poi è appena una voce lontana.",
	},
	["heal.w14.mend.006"] = {
		"Le mani smettono di tremare prima che glielo dica io. Lo sapevano già.",
		"Il tremito lascia le mani da solo. Loro le notizie le sentono sempre prima di me.",
		"Il tremito esce dalle dita. Mani quiete, finalmente.",
	},
	["heal.w14.mend.007"] = {
		"La ferita si chiude. La pelle terrà una linea chiara, l'unico diario che scrive.",
		"Chiusa, la ferita. Resterà un segno leggero, che nessuno leggerà tranne me.",
		"Si è sigillata. La pelle ci mette sopra la sua firma, piccola e per sempre.",
	},
	["heal.w14.mend.008"] = {
		"La forza risale dalle gambe come qualcosa che torna a casa arrampicandosi.",
		"La sento tornare dal basso: piedi, ginocchia, schiena, e infine la volontà.",
	},
	["heal.w14.mend.009"] = {
		"Il sollievo colpisce più forte del colpo. Per un attimo il mondo ondeggia.",
		"Strano: il sollievo mi indebolisce le ginocchia più della ferita.",
		"Molla così in fretta, il dolore, che mi gira la testa e non trovo appigli.",
	},
	["heal.w14.mend.010"] = {
		"Le spalle, che non sapevo di tenere alzate, scendono di un dito.",
		"La fronte si era aggrottata chissà quando. Adesso si spiana da sola.",
	},
	["heal.w14.mend.011"] = {
		"Le ossa accettano la cura senza lamentarsi. Hanno smesso di aspettarsi un trattamento migliore.",
		"Le ossa sono pazienti. Quello che non dicono adesso lo diranno fra molti anni.",
		"Le ossa incassano in silenzio. Col silenzio, le ossa ci sanno fare.",
	},
	["heal.w14.mend.012"] = {
		"Il fischio nelle orecchie si assottiglia fino a sparire, e i piccoli rumori tornano a occupare il posto.",
		"Le orecchie si liberano. Tornano i piccoli rumori, come da una porta aperta.",
		"Il sibilo nelle orecchie si spegne, e il chiacchiericcio minuto del mondo rientra.",
	},
	["heal.w14.mend.013"] = {
		"Il corpo è un compagno testardo. Si lamenta per tutta la strada e non se ne va mai.",
		"Il mio corpo: brontolone, dolorante, inaffidabile, eppure presente. Non mi ha mai {g:piantato|piantata} in asso.",
		"Il corpo: indolenzito, lento, brontolone, ma sempre qui. Non mi lascia.",
	},
	["heal.w14.mend.014"] = {
		"Un silenzio piccolo e pulito dove c'era il dolore. Quasi ci potrei stare {g:seduto|seduta} dentro.",
		"Il dolore lascia dietro di sé una stanza quieta. Ci resto un momento più del necessario.",
		"Dov'era la fitta, una quiete. Non mi muovo, per non sciuparla.",
	},
	["heal.w14.mend.015"] = {
		"La volontà torna per ultima, e torna con la voce più forte.",
		"Gambe, mani, occhi. Poi la parte di me che non cede. Quella arriva gridando.",
	},
	["heal.w14.mend.016"] = {
		"Qualcosa di lontano e paziente aspettava appena oltre il dolore. Adesso arretra. Non se n'è andato.",
		"Ciò che aspettava dietro il dolore fa un passo indietro. Uno soltanto.",
		"La cosa paziente dietro il dolore si ritira un poco. Non ha mai avuto fretta.",
	},
	["heal.w14.mend.017"] = {
		"Sento la forma esatta della ferita mentre si chiude. Per un po' me la ricorderò.",
		"Chiudendosi, disegna il proprio contorno sotto la pelle. Difficile scordare qualcosa che hai sentito rimpicciolire.",
		"La sento restringersi, bordo dopo bordo. Ne ricorderò la forma.",
	},
	["heal.w14.mend.018"] = {
		"Tutto ciò che era serrato si scioglie: pugni, mascella, i muscoli lunghi della schiena.",
		"Avevo tutto serrato, dal collo alle ginocchia. Pezzo per pezzo, si allenta.",
	},
	["heal.w14.mend.019"] = {
		"Devo delle scuse a queste mani. Hanno tenuto duro per tutto il tempo.",
		"Grazie, mani. Tremavate, ma non avete mai mollato.",
		"Queste mani meritano più di quanto do loro. Hanno retto, per tutto il tempo.",
	},
	["heal.w14.mend.020"] = {
		"Fa rumore, il dolore; la guarigione no. Dovrei imparare ad ascoltare quella silenziosa.",
		"Gridava, la ferita. La cura sussurra appena. Meritano ascolto tutte e due.",
		"Tutto rumore, il dolore. La guarigione invece è muta.",
	},
	["heal.w14.mend.021"] = {
		"La carne perdona in fretta. È il resto di me che tiene il conto.",
		"La pelle perdona in un attimo. Qualcosa più in fondo tiene i conti molto più a lungo.",
		"Per la carne è già acqua passata. Un'altra parte di me ci si aggrappa ancora.",
	},
	["heal.w14.mend.022"] = {
		"C'è un momento, proprio mentre il dolore se ne va, in cui niente è sbagliato. Provo a restarci.",
		"Per un batter d'occhio niente fa male e niente manca. Poi passa.",
	},
	["heal.w14.mend.023"] = {
		"L'impalcatura di me si ricorda la sua forma giusta e ci si rimette dentro.",
		"Ossa e tendini ritrovano il loro posto, come soldati che tornano in riga.",
	},
	["heal.w14.mend.024"] = {
		"La ferita è chiusa, la stanchezza no. Rimettersi in sesto non è mai stato riposare.",
		"Riparare non è riposare. Lo so, e le ossa lo sanno meglio di me.",
		"Andato il dolore, resta la fatica. Non hanno mai tenuto gli stessi orari.",
	},
	["heal.w14.mend.025"] = {
		"La ferita si chiude dal fondo. È la superficie quella che ci mette di più a convincersi.",
		"In profondità la ferita è già saldata. La pelle sopra è l'ultima a lasciarsi persuadere.",
		"Sotto, il taglio è già chiuso. La pelle ci sta ancora pensando.",
	},
	["heal.w14.mend.026"] = {
		"Nessuno guarda un corpo che si ripara. Fa il lavoro da solo, e io con lui.",
		"Nessun testimone per questa parte. Solo io e una ferita che si chiude piano.",
		"Questa parte non la vede mai nessuno: io e la ferita che chiudiamo la lite.",
	},
	["heal.w14.mend.027"] = {
		"La vista si assesta. Il mondo smette di ondeggiare e resta dove l'hanno messo.",
		"Lo sfocato se ne va dagli occhi. Le cose stanno ferme quando le guardo.",
		"Gli occhi ritrovano l'appiglio. Le cose smettono di scivolare.",
	},
	["heal.w14.mend.028"] = {
		"Il dolore non sparisce. Fa le valigie piano, come un ospite che spera di essere trattenuto.",
		"Se ne va, questo dolore, ma senza fretta. Trova sempre un'ultima cosa da dire.",
		"Se ne va, se ne va, e intanto indugia sulla soglia, questa fitta.",
	},
	["heal.w14.mend.029"] = {
		"Qualcosa dentro di me si raddrizza prima del resto. Una schiena di un altro genere.",
		"Prima che si raddrizzi la schiena, qualcos'altro in me l'ha già fatto.",
	},
	["heal.w14.mend.030"] = {
		"Buffo quanto in fretta dimentico com'era. Il corpo è generoso, in questo.",
		"Già fatico a ricordare il dolore. I corpi dimenticano apposta, credo.",
		"Provo a ricordare quanto era brutto, e non ci riesco del tutto. Una specie di grazia.",
	},
	["heal.w14.mend.031"] = {
		"La sensibilità torna nei polpastrelli con un formicolio di spilli. Maleducato, ma benvenuto.",
		"Formicolio nelle dita. I nervi si svegliano, offesi per essere stati lasciati fuori.",
		"Pizzicore nei polpastrelli: il tatto, di nuovo al lavoro.",
	},
	["heal.w14.mend.032"] = {
		"Mi spaventa la quiete dopo, non la ferita. Nella quiete posso misurare quanto ci sono {g:andato|andata} vicino.",
		"Finché c'era il dolore, la testa era occupata. Ora che è andato, c'è spazio per capirlo.",
		"Ora che è tutto quieto, posso contare quanto è mancato poco.",
	},
	["heal.w14.mend.033"] = {
		"Come una campana percossa che torna muta: così si quieta il corpo.",
		"Una vibrazione bassa mi attraversa mentre tutto si quieta, come una corda pizzicata che si ferma.",
	},
	["heal.w14.mend.034"] = {
		"Pelle nuova, pelle tenera. Per un po' risparmierò questo lato senza volerlo.",
		"La pelle fresca sembra sottile come carta. Il corpo la proteggerà senza chiedermelo.",
		"Delicata, la pelle nuova. Ci farò attenzione, che lo voglia o no.",
	},
	["heal.w14.mend.035"] = {
		"Riempie il posto lasciato dal dolore, la forza, come l'acqua prende la forma di una tazza.",
		"Torna a colmare il vuoto lasciato dal dolore, la forza, e lo riempie alla perfezione.",
		"La forza filtra di nuovo nei vuoti, lenta e sicura.",
	},
	["heal.w14.mend.036"] = {
		"Le ginocchia smettono di tremare. Sembrano di nuovo ginocchia, non corda bagnata.",
		"La debolezza scivola via dalle gambe. Sono di nuovo mie, per starci in piedi.",
		"Le gambe, che un attimo fa erano di sabbia, tornano gambe. Mi ci appoggio, con gratitudine.",
	},
	["heal.w14.mend.037"] = {
		"Questa è chiusa. La stanchezza sotto, quella lunga, non la raggiunge niente.",
		"Le ferite si chiudono. La fatica profonda che ci sta sotto resta esattamente dov'è.",
		"Chiusa, questa. La vecchia stanchezza lì sotto, intatta.",
	},
	["heal.w14.mend.038"] = {
		"Il dolore si sgancia da me un fermaglio dopo l'altro, come una fibbia ostinata.",
		"Molla la presa a tappe, come un pugno rattrappito che si apre.",
	},
	["heal.w14.mend.039"] = {
		"Ascolto il corpo come si ascolta una casa che si assesta. Uno scricchiolio qui. Niente di rotto.",
		"Scricchiolii nelle costole, uno scatto nella spalla. Niente di più.",
		"Piccoli rumori da dentro, le giunture che ritrovano il loro posto. Nessuno suona come un allarme.",
	},
	["heal.w14.mend.040"] = {
		"Sotto la pelle, ciò che era strappato si ricongiunge. Lo sento come mani che si stringono.",
		"Sotto la pelle i lembi strappati si ritrovano e tengono, piano, al buio.",
	},
	["heal.w14.mend.041"] = {
		"Il corpo non mi chiede mai perché continuo a fargli questo. Si ripara e basta. Non so se me lo merito.",
		"Nemmeno un rimprovero, dal corpo. Aggiusta e basta quello che ho rotto io.",
		"Niente accuse, niente musi lunghi. La carne si limita a perdonarmi.",
	},
	["heal.w14.mend.042"] = {
		"Potrei dormire, qui e adesso. Rimettersi in sesto costa questo a un corpo.",
		"Il sonno bussa nell'istante in cui il dolore se ne va. Più tardi, gli dico.",
		"Se ne va la fitta, e al suo posto una gran voglia di sdraiarmi.",
	},
	["heal.w14.mend.043"] = {
		"Chiusa, la ferita. Ma una parte di me aveva già cominciato a salutare.",
		"Una parte di me aveva cominciato a mollare prima che il resto decidesse di restare. Torna piano.",
		"Sigillata la ferita, la parte di me che aveva fatto i bagagli ci mette di più a disfarli.",
	},
	["heal.w14.mend.044"] = {
		"Chiudo il pugno, lo apro, lo richiudo. La mano risponde ogni volta. È tutta qui la prova.",
		"Chiudi, apri, chiudi. Le dita obbediscono senza storie.",
		"Pugno, mano aperta, pugno. Risponde sempre.",
	},
	["heal.w14.mend.045"] = {
		"Che sia un piccolo rito: il dolore che se ne va, e io {g:fermo|ferma} a guardarlo partire.",
		"Do a questo momento quel che gli spetta. Una ferita che si chiude merita un po' di quiete.",
		"Certe cose vanno onorate. Resto in silenzio mentre questa passa.",
	},
	["heal.w14.mend.046"] = {
		"Se n'è andato, il dolore, ma il corpo continua a prepararsi a riceverlo. Ci vorrà un po' per disimpararlo.",
		"Non fa più male, ma mi ritraggo lo stesso. Il riflesso guarisce più piano.",
		"Il male se n'è andato. La smorfia non l'ha ancora saputo.",
	},
	["heal.w14.mend.047"] = {
		"Ogni volta che la ferita si ripara, torna un po' più dura. Mi sto facendo, piano, con ciò che è sopravvissuto.",
		"Richiusa più dura, la pelle. Divento ciò che ha retto.",
		"Dove si era strappata, la carne si rinsalda più spessa. Il corpo si fa le mura con le proprie brecce.",
	},
	["heal.w14.mend.048"] = {
		"Lascio cadere la testa un momento e sento soltanto questo: meno, e meno, e meno.",
		"Occhi chiusi un istante. Meno dolore. Meno. Ancora meno.",
	},
	["heal.w14.mend.049"] = {
		"Con quanta facilità il corpo si disfa, e con quanta pazienza si ricompone. Cambierei un po' di pazienza con meno facilità.",
		"Carne svelta a rompersi, lenta e fedele a ripararsi. Patto poco equo.",
	},
	["heal.w14.mend.050"] = {
		"Le fitte rallentano a un ritmo pigro, e poi si dimenticano di sé.",
		"Il ritmo del dolore rallenta, inciampa, e alla fine perde il conto.",
	},
	["heal.w14.mend.051"] = {
		"Non capisco metà di quello che succede sotto la pelle. Non ha bisogno che io capisca.",
		"Carne che ritrova carne, fili di me che si riannodano. Non saprei spiegarlo, e non me lo chiede.",
		"Sotto la pelle qualcosa si risalda. Non saprei spiegare come.",
	},
	["heal.w14.mend.052"] = {
		"Il mondo torna con i suoi colori giusti. Non mi ero {g:accorto|accorta} che si fosse spento.",
		"I colori riprendono tutto il loro peso. Stava sbiadendo tutto, e lo lasciavo fare.",
		"Le cose ritrovano il colore, come dietro un vetro appena pulito.",
	},
	["heal.w14.mend.053"] = {
		"Ogni parte di me fa rapporto, una dopo l'altra, ognuna con la sua piccola lagnanza, ognuna presente.",
		"Spalla, costole, ginocchio: tutti all'appello, doloranti ma presenti.",
	},
	["heal.w14.mend.054"] = {
		"Nessun altro saprà mai quanto ha fatto male. Lo sa il corpo. Basterà.",
		"Solo il corpo sa quanto è stata brutta. E non è uno che parla.",
		"Quanto è costato lo sa solo il corpo. E tace.",
	},
	["heal.w14.mend.055"] = {
		"Anche i pensieri smettono di inciampare. Tornano a camminare in fila.",
		"La mente si schiarisce. Le parole si rimettono nell'ordine giusto, cosa che avevano smesso di fare.",
		"La confusione in testa se ne va col dolore. Riesco a tenere un pensiero fino in fondo.",
	},
	["heal.w14.mend.056"] = {
		"scioglie le dita una per una, richiamando in servizio tutta la mano.",
		"apre e chiude una mano, piano, guardandola obbedire.",
		"conta le dita muovendole, e le trova tutte.",
	},
	["heal.w14.mend.057"] = {
		"lascia ricadere le spalle, e un po' di rigidità abbandona la sua postura.",
		"si scioglie da una postura raccolta tenuta troppo a lungo.",
	},
	["heal.w14.mend.058"] = {
		"si gratta distrattamente la ferita che si chiude, poi si trattiene.",
		"strofina il prurito lungo la pelle che si risana, aggrottando la fronte.",
		"fa per grattarsi, ci ripensa, e lascia che il prurito faccia il suo corso.",
	},
	["heal.w14.mend.059"] = {
		"si raddrizza per gradi, lentamente, finché non è di nuovo {g:dritto|dritta} in tutta la sua altezza.",
		"si tira su poco per volta dalla postura curva, e alla fine raddrizza le spalle.",
	},
	["heal.w14.mend.060"] = {
		"chiude gli occhi un momento e aspetta che il dolore finisca di andarsene.",
		"chiude gli occhi, in ascolto di sé, finché quello che sente dentro sembra bastare.",
	},
	["heal.w14.mend.061"] = {
		"sposta il peso sul lato che faceva male, lo mette alla prova, e scopre che regge.",
		"carica con cautela un po' di peso sul lato dolente, poi un po' di più.",
	},
	["heal.w14.mend.062"] = {
		"resta immobile a lungo, come per paura di spaventare la guarigione e farla scappare.",
		"si fa del tutto immobile, badando a non disturbare quello che accade sotto la pelle.",
		"non muove un muscolo, e lascia che sotto la pelle succeda quel che deve.",
	},
	["heal.w14.mend.063"] = {
		"allenta la mascella, e il viso si distende.",
		"abbandona una smorfia che portava da un pezzo.",
		"perde a poco a poco la piega dura della bocca.",
	},
	["heal.w14.mend.064"] = {
		"fa ruotare il collo una volta, e sembra crescere di un palmo.",
		"alza il mento, e tutta la figura sembra ricordarsi a cosa serve.",
		"per un istante pare più {g:alto|alta} di prima.",
	},
	["heal.w14.mend.065"] = {
		"passa il pollice lungo la linea dove c'era la ferita, sentendola sigillarsi.",
		"segue con un dito la ferita che si chiude, come si controlla una cucitura.",
		"tasta la ferita che si chiude come si cerca una crepa in un vaso.",
	},
	["heal.w14.mend.066"] = {
		"guarda a lungo il punto risanato, con un'espressione difficile da definire.",
		"osserva in silenzio la ferita guarita, come se avesse appena detto qualcosa di importante.",
		"contempla a lungo il punto guarito, senza dire nulla.",
	},
	["heal.w14.mend.067"] = {
		"lascia sfuggire un suono basso di sollievo, metà risata, metà qualcos'altro.",
		"emette un piccolo verso senza parole mentre il dolore cede, di quelli che nessuno fa apposta.",
	},
	["heal.w14.mend.068"] = {
		"prova qualche piccolo movimento, uno dopo l'altro, come un artigiano che collauda un attrezzo appena riavuto.",
		"prova un allungo, una torsione, un mezzo piegamento, e le risposte bastano.",
	},
	["heal.w14.mend.069"] = {
		"si affloscia un attimo, come se fosse stato il dolore a tenere su tutto.",
		"si abbandona un istante, una volta che il dolore molla, come se fosse stato l'unica cosa a stare in piedi.",
	},
	["heal.w14.mend.070"] = {
		"inclina la testa, come se il fischio nelle orecchie si fosse appena interrotto.",
		"strizza gli occhi, poi smette, mentre il mondo davanti torna fermo.",
	},
	["heal.w14.mend.071"] = {
		"china brevemente il capo, un piccolo omaggio privato allo scampato pericolo.",
		"fa un cenno del capo a nessuno in particolare, come per ringraziare il corpo della fatica.",
	},
	["heal.w14.mend.072"] = {
		"pianta bene le gambe e aspetta che smettano di tremare prima di fidarsene.",
		"lascia che il tremito esca dalle ginocchia, in piedi e senza muoversi.",
	},
	["heal.w14.mend.073"] = {
		"guarda il segno fresco, poi altrove, poi di nuovo il segno.",
		"continua a guardare la nuova linea chiara sulla pelle, e poi, con decisione, smette.",
	},
	["heal.w14.mend.074"] = {
		"si ricompone, pezzo per pezzo, come chi raccoglie cose sparse.",
		"si raccoglie piano, e dal viso il dolore se ne va per ultimo.",
	},
	["heal.w14.mend.075"] = {
		"sembra assestarsi meglio dentro la propria figura, più {g:saldo|salda} a ogni istante.",
		"occupa più spazio, chissà come, man mano che la forza ritorna.",
	},
	["heal.w14.mend.076"] = {
		"si strofina un occhio con le nocche: ora che il dolore se n'è andato, arriva la stanchezza.",
		"preme un momento la base dei palmi sugli occhi, poi lascia ricadere le mani.",
	},
	["heal.w14.mend.077"] = {
		"tasta con prudenza il punto guarito, fa una smorfia per abitudine, e scopre che non ce n'è motivo.",
		"pungola con cautela il punto risanato, sussulta in anticipo, e poi pare quasi provarne delusione.",
		"tocca il punto risanato, in attesa di un dolore che non arriva.",
	},
	["heal.w14.mend.078"] = {
		"resta in silenzio, di quel silenzio che arriva quando un dolore lungo smette.",
		"lascia scorrere via la tensione dalla schiena come acqua da un secchio rovesciato.",
	},
	["heal.w14.mend.079"] = {
		"solleva lo sguardo dalla ferita al mondo, abbastanza in sesto da guardarlo.",
		"alza gli occhi dal proprio dolore, come ricordandosi che il mondo è più grande di una ferita.",
	},
	["heal.w14.mend.080"] = {
		"sfiora il punto risanato con una strana tenerezza, come se appartenesse a qualcun altro.",
		"osserva la propria guarigione con una dolcezza strana, lontana.",
	},
	["heal.w14.mend.081"] = {
		"affonda le dita in un punto indolenzito e massaggia finché non cede.",
		"scioglie l'ultimo indolenzimento da un muscolo, con dita lente e distratte.",
	},
	["heal.w14.mend.082"] = {
		"sorride appena, senza volerlo, mentre il dolore si allontana.",
		"lascia passare un sorriso piccolo e stanco, che c'è e poi non c'è più.",
	},
	["heal.w14.mend.083"] = {
		"si stira con cura, giuntura per giuntura, come chi rimonta un congegno.",
		"si allunga con grande cautela, un po' di più a ogni tentativo, in ascolto di ogni protesta.",
	},
	["heal.w14.mend.084"] = {
		"ritrova l'equilibrio, e il terreno sembra acconsentire.",
		"assesta la posizione, salda e quadrata, mentre se ne va l'ultima debolezza.",
	},
	["heal.w14.mend.085"] = {
		"si ferma come ci si ferma davanti a una porta che stava per aprirsi, poi le volta le spalle.",
		"resta un momento in silenzio, come davanti a una soglia vicina e poi lontana.",
	},
	["heal.w14.mend.086"] = {
		"Ah. Mi sta lasciando andare.",
		"Mm. Senti come si allenta.",
	},
	["heal.w14.mend.087"] = {
		"Mani ferme. Bene. Bene.",
		"Mani ferme. Era la prima cosa che rivolevo.",
	},
	["heal.w14.mend.088"] = {
		"Tutto al suo posto. O abbastanza da starci in piedi.",
		"In piedi, e stavolta sul serio.",
	},
	["heal.w14.mend.090"] = {
		"Ci vedo dritto. Piccole grazie.",
		"Gli occhi funzionano. Bene. Il resto verrà dietro.",
	},
	["heal.w14.mend.091"] = {
		"Oh, il dolore se ne va. Finalmente.",
		"Mm, sta passando. Meno male.",
	},
	["heal.w14.mend.092"] = {
		"Grazie, ossa testarde.",
		"Grazie, corpo mio. La parte difficile l'hai fatta tu.",
	},
	["heal.w14.mend.093"] = {
		"Si sta chiudendo. Lo sento tirare.",
		"Senti come tira? È lei che si chiude.",
	},
	["heal.w14.mend.094"] = {
		"La forza è tornata. La sento nella presa.",
		"Eccola, la forza. Proprio dove l'avevo lasciata.",
	},
	["heal.w14.mend.095"] = {
		"Questa lascerà il segno. Va bene. Me la ricorderò.",
		"Resterà la cicatrice. Pazienza. Certe cose devono restare.",
	},
	["heal.w14.mend.096"] = {
		"Calma. Lascia che finisca.",
		"Adagio. Questa parte non si affretta.",
	},
	["heal.w14.mend.097"] = {
		"Uff. Il prurito è la parte peggiore.",
		"Prude da impazzire. Vuol dire che funziona, immagino.",
	},
	["heal.w14.mend.098"] = {
		"Tutti i pezzi al loro posto. Contati uno per uno.",
		"Ogni parte di me dove deve stare.",
	},
	["heal.w14.mend.099"] = {
		"Mh. Niente male. Il corpo sa il fatto suo.",
		"Guarda come si salda. Strano da vedere.",
	},
	["heal.w14.mend.100"] = {
		"Shh. Il peggio se n'è andato.",
		"Ssh. Era il peggio, e se ne sta andando.",
	},
	["heal.w14.watch.001"] = {
		"Per il tempo di una cura, una vita che non è mia sta nelle mie mani. A quel peso non ci si abitua.",
		"Una vita non mia, tenuta un attimo. Lieve da reggere, atroce da far cadere.",
		"Un'intera vita altrui appesa a come farò i prossimi istanti.",
	},
	["heal.w14.watch.002"] = {
		"Tra il troppo tardi e l'appena in tempo c'è mezzo istante. Tutto il mio mestiere sta lì dentro.",
		"In tempo, o mezzo istante dopo. Il resto non conta, e non mi toglie il sonno.",
		"Mezzo istante. È largo così il terreno su cui lavoro.",
	},
	["heal.w14.watch.003"] = {
		"Le mani mi sembrano più lente di quanto siano. Meglio così che il contrario.",
		"La velocità che vorrei non ce l'ho mai. Quella che basta, di solito. È quel «di solito» che mi segue ovunque.",
		"«Troppo piano», dice la paura. Le mani non l'ascoltano e vanno avanti.",
	},
	["heal.w14.watch.004"] = {
		"Prima chi sta peggio. Una regola semplice, e non mi è mai sembrata semplice.",
		"Prima chi è più vicino al bordo. Chi resta deve aspettare, e io devo sopportarlo.",
		"Scegliere chi prima: parola fredda per una scelta fatta con le mani incerte.",
	},
	["heal.w14.watch.005"] = {
		"Conosco la forma esatta di questa ferita, e nient'altro di chi la porta. Una vicinanza strana.",
		"Per un attimo, una vicinanza da famiglia. Poi ognuno per la sua strada. Strano mestiere.",
		"Questa ferita la conosco a memoria, chi la porta per niente.",
	},
	["heal.w14.watch.006"] = {
		"Esiste una versione di questo momento in cui ho esitato. Cerco di non andarci mai a far visita.",
		"Ogni cura ha un gemello in ombra: quello giunto tardi. Mai guardarlo in faccia.",
	},
	["heal.w14.watch.007"] = {
		"La stanchezza di chi cura non la vede nessuno. Si siede dietro gli occhi e aspetta un momento tranquillo.",
		"La fatica arriva dopo, quando nessuno ha più bisogno di niente. Almeno è educata.",
		"Una stanchezza che il sonno non raggiunge mai del tutto.",
	},
	["heal.w14.watch.008"] = {
		"Curare è mettersi in mezzo tra una vita e il buio, e dirlo senza parole.",
		"Ogni cura è un piccolo rifiuto, pronunciato senza aprire bocca.",
		"La cura dice di no al buio senza alzare la voce.",
	},
	["heal.w14.watch.009"] = {
		"Nessuno applaude una ferita che si chiude. Pazienza: applaudo io, in silenzio.",
		"Niente evviva per una cura riuscita. Gli evviva sono per le cose che vanno storte con fracasso.",
		"Una ferita che si chiude non fa rumore. Me ne accorgo solo io, e mi basta.",
	},
	["heal.w14.watch.010"] = {
		"Quella pausa prima che il male ceda è l'attimo più lungo che conosca.",
		"Tra il primo tocco e il momento in cui fa presa c'è un vuoto. Ci passo più tempo di quanto vorrei.",
		"Nessuna attesa si allunga come quella prima che la cura faccia presa.",
	},
	["heal.w14.watch.011"] = {
		"Le battaglie le vincono altri. Il mio lavoro è che resti qualcuno a festeggiare.",
		"La mia parte in uno scontro è piccola: rifare intero quello che si è rotto.",
		"Qualcuno vince. Qualcun altro fa sì che chi vince sia ancora in piedi per godersela.",
	},
	["heal.w14.watch.012"] = {
		"Tutto ciò che si ricuce resta fragile. Io la rottura la sposto solo un po' più in là.",
		"La fine non la cancello. La sposto un po' più avanti, e spero che si perda per strada.",
		"Ricucito non vuol dire infrangibile. Vuol dire soltanto: più tardi.",
	},
	["heal.w14.watch.013"] = {
		"Forse non ci rivedremo mai. La cura parte comunque insieme a quella vita, ovunque vada.",
		"Chiunque sia, porterà un pezzo del mio lavoro dove io non andrò mai.",
		"Forse le strade non si incroceranno più. La cura resta comunque.",
	},
	["heal.w14.watch.014"] = {
		"Quando comincio a curare qualcuno, quella vita è affar mio finché non torna intera. Altri giuramenti non servono.",
		"Una cura cominciata è un debito finché non è finita.",
		"Una volta cominciata, una cura ha diritto su di me finché non è conclusa.",
	},
	["heal.w14.watch.015"] = {
		"La paura non deve arrivare alle mani. In questo momento sono l'unica parte di me che conta per qualcuno.",
		"La paura resta nel petto. Alle mani spetta la calma, a qualunque prezzo.",
		"Tremare è roba da dopo. Adesso le mani appartengono a qualcun altro.",
	},
	["heal.w14.watch.016"] = {
		"Ha un prezzo, rimettere in sesto qualcuno. Mai molto in una volta, ma si somma in un posto che non vedo.",
		"Piccoli pagamenti, ogni volta. Prima o poi chiederò di vedere il registro.",
		"Ogni cura si paga. Solo che il conto non lo vedo mai arrivare.",
	},
	["heal.w14.watch.017"] = {
		"Fa presa. In me si scioglie un nodo che non sapevo di avere.",
		"Tiene. Solo adesso le spalle mi scendono dalle orecchie.",
		"La cura attecchisce, e mi si allenta dentro un nodo che non avevo notato.",
	},
	["heal.w14.watch.018"] = {
		"Chiunque sia alla mia portata resta in piedi. Parole grosse, e le penso tutte.",
		"Nessuno alla mia portata cade senza una risposta.",
		"Questo è il mio terreno. Qui nessuno viene lasciato al male.",
	},
	["heal.w14.watch.019"] = {
		"Ogni ferita che chiudo mi insegna qualcosa della prossima. Preferirei imparare in un altro modo.",
		"Ogni male che curo è una lezione per quello dopo. Scuola cara, questa.",
		"Migliorare perché serve. Non è il modo che avrei scelto.",
	},
	["heal.w14.watch.020"] = {
		"Curare qualcuno mi ricorda quanto poco tenga insieme chiunque. Un filo, un attimo, qualcuno che fa attenzione.",
		"Così poco tiene ferma una vita. Di solito, qualcuno che presta attenzione.",
	},
	["heal.w14.watch.021"] = {
		"Il modo in cui qualcuno sta in piedi dice più di qualsiasi ferita. Se regge, posso guardare altrove.",
		"Leggo la postura prima della ferita. Se è salda, gli occhi possono spostarsi.",
		"Come si assesta un corpo dopo la cura dice più della cura stessa.",
	},
	["heal.w14.watch.022"] = {
		"A chi ricuce nessuno fa una statua. Le statue sono per chi le ferite le apre, non per chi le chiude.",
		"Niente statue per chi ricuce. Poco male: le statue non vanno da nessuna parte.",
	},
	["heal.w14.watch.023"] = {
		"Curare è una compagnia solitaria: due vite, e una sola sa quanto ci si è andati vicino.",
		"Due vite nello stesso istante, e a tenere il conto è solo chi cura.",
		"Di quanto ci si è andati vicino, il ricordo resterà soltanto a chi cura.",
	},
	["heal.w14.watch.024"] = {
		"Nessuno mi ha chiesto se volevo questa fiducia. Mi è stata consegnata nell'istante in cui è arrivato il male.",
		"Fiducia data senza una parola. Il minimo è esserne {g:degno|degna}.",
		"Nessuno firma niente. Il patto lo stringe il male da solo.",
	},
	["heal.w14.watch.025"] = {
		"A volte il male continua anche dopo che ho fatto la mia parte. Non stavolta. Mi concedo di notare la differenza.",
		"Ha fatto presa. Non succede sempre, e non scordo mai che potrebbe non farlo.",
	},
	["heal.w14.watch.026"] = {
		"Per un istante il mondo intero è una ferita e chi la porta. Poi si riallarga, quasi controvoglia.",
		"Il mondo si stringe su una sola ferita, poi piano si riapre.",
	},
	["heal.w14.watch.027"] = {
		"Mai spendere tutto su una sola ferita. Poco più in là, la prossima con ogni probabilità sta già succedendo.",
		"Tenersi qualcosa per la prossima. Di sicuro è già per strada.",
		"Spendere con giudizio. La cura è una borsa che si svuota prima di riempirsi.",
	},
	["heal.w14.watch.028"] = {
		"C'è qualcuno che cammina intero perché non ho esitato. Come orgoglio, mi basta e avanza.",
		"Qualcuno è in piedi perché non ho esitato. Un po' di orgoglio me lo concedo.",
		"Niente stendardi, niente canzoni. Solo qualcuno in piedi che poteva non esserci.",
	},
	["heal.w14.watch.029"] = {
		"Adesso le mani sono ferme. Tremeranno dopo, quando potranno permetterselo. Hanno imparato l'ordine.",
		"Ferme adesso, tremanti dopo. Le mani hanno un calendario tutto loro.",
		"Il tremore aspetta il suo turno, e dopo arriva puntuale.",
	},
	["heal.w14.watch.030"] = {
		"Quello che provo resta fuori dal viso. Chi riceve la cura ha già abbastanza da portare.",
		"Viso calmo, mani occupate. La preoccupazione aspetti il suo turno.",
		"Lo spavento può vedersi ovunque tranne che su di me. Forse qualcuno mi guarda per capire quanto è grave.",
	},
	["heal.w14.watch.031"] = {
		"Il dolore passa dall'urlare al borbottare. È quello l'attimo che aspetto.",
		"Da un grido a un borbottio: così suona una buona cura.",
		"Il dolore abbassa la voce. È il segnale che aspetto.",
	},
	["heal.w14.watch.032"] = {
		"Non chiedo da che parte stesse nessuno prima che arrivasse il male. Una ferita non porta stendardi.",
		"Nessuna bandiera per il dolore. Né per la cura.",
	},
	["heal.w14.watch.033"] = {
		"Il ritardo è un debito che non si restituisce. Quindi niente ritardo. Tutto qui, il piano.",
		"Arrivare tardi è l'unico errore che una cura non perdona.",
		"La lentezza è un lusso per chi non ha niente da ricucire.",
	},
	["heal.w14.watch.034"] = {
		"Mi piacerebbe, una volta tanto, starmene {g:seduto|seduta} mentre è qualcun altro a preoccuparsi.",
		"Un giorno toccherà a me farmi curare. Detesterò ogni minuto.",
	},
	["heal.w14.watch.035"] = {
		"Mentre curo gli altri, dimentico che anch'io sono della stessa pasta fragile. Poi me ne ricordo, e vado avanti.",
		"Stessa pasta fragile, chi cura e chi riceve la cura.",
		"Chi cura si rompe con la stessa facilità. Ogni tanto conviene ricordarlo.",
	},
	["heal.w14.watch.036"] = {
		"Gli occhi di chi cura non stanno mai tutti in un posto. Una parte di me cerca sempre la prossima ferita.",
		"Anche a metà cura, mezzo occhio va già in cerca del prossimo male.",
	},
	["heal.w14.watch.037"] = {
		"Restituire a qualcuno la sua stessa forza è una cosa piccola e buona. Mi va bene piccola e buona.",
		"Forza restituita a chi la possedeva. Piccola cosa, e buona.",
		"Niente di grandioso: solo rendere ciò che il male aveva provato a prendersi.",
	},
	["heal.w14.watch.038"] = {
		"Chi cura in ritardo lo notano tutti. Chi arriva in tempo, nessuno. Passare inosservati mi sta benissimo.",
		"Arrivare in tempo vuol dire non farsi notare. Bene così.",
	},
	["heal.w14.watch.039"] = {
		"Certe ferite le chiudo sapendo che presto si riapriranno. Le chiudo lo stesso. Questo è il mestiere, non la speranza.",
		"Probabilmente si riaprirà. La chiudo come se non dovesse.",
		"Chiuderla comunque. Quello che verrà sarà un'altra cura.",
	},
	["heal.w14.watch.040"] = {
		"Sento il male cedere sotto le mani, come un nodo che finalmente ha trovato il verso giusto.",
		"Cede sotto le mani, come un nodo tirato dal verso giusto.",
	},
	["heal.w14.watch.041"] = {
		"Finché mi reggo in piedi, il dolore riceve una risposta.",
		"Il male fa domande. Finché mi reggo, una risposta la trova.",
		"Il dolore chiami pure forte quanto vuole. Qui c'è chi ascolta.",
	},
	["heal.w14.watch.042"] = {
		"Con ogni cura cedo un po' della mia fermezza. Poi torna. Più lenta di come se ne va.",
		"Fermezza data in prestito. Torna a casa piano.",
		"Ogni volta presto un po' di calma. Prima o poi ritrova la strada di casa.",
	},
	["heal.w14.watch.043"] = {
		"Quando a chiedere sono in due nello stesso momento, qualunque scelta faccia, chi resta indietro mi resta dentro a lungo.",
		"Due bisogni, un paio di mani. Scelgo, e mi porto dietro la scelta.",
	},
	["heal.w14.watch.044"] = {
		"Non saprò mai come prosegue questa storia. So solo che prosegue, e che una riga l'ho scritta io.",
		"Una riga nella storia di qualcun altro. Spero buona.",
		"Quella strada continua oltre dove arrivo a vedere. La mia parte ormai c'è.",
	},
	["heal.w14.watch.045"] = {
		"Io e la ferita facciamo una gara, e il premio è qualcun altro. È questo che fa paura.",
		"Una gara contro la ferita, e il premio non è mio.",
		"Io contro il male, e la posta in gioco è di qualcun altro.",
	},
	["heal.w14.watch.046"] = {
		"Le mani non hanno ancora finito e gli occhi sono già altrove. Vizio del mestiere.",
		"Le mani finiscono il lavoro; gli occhi sono già più avanti.",
	},
	["heal.w14.watch.047"] = {
		"Qualunque cosa succeda poi, per un momento nessuno è stato più vicino di me a questo dolore. Conta qualcosa.",
		"Nessuno, per un attimo, è stato più vicino di me a quel dolore. È un legame.",
	},
	["heal.w14.watch.048"] = {
		"Curare è soprattutto aspettare, cercando di non sembrare in attesa.",
		"Metà della cura è mostrare calma. L'altra metà è la cura.",
		"Il grosso del lavoro è avere l'aria calma mentre la cura agisce.",
	},
	["heal.w14.watch.049"] = {
		"dà un'ultima occhiata al punto rimesso a posto, poi una seconda, per sicurezza.",
		"guarda due volte la ferita chiusa, poi una terza, per scrupolo.",
	},
	["heal.w14.watch.050"] = {
		"resta immobile mentre la cura fa presa, come ci si ferma accanto a qualcosa che si spaventa facilmente.",
		"non muove un muscolo finché il male non cede.",
	},
	["heal.w14.watch.051"] = {
		"fa ruotare un polso rigido a lavoro finito, come se la cura fosse stata pesante da sollevare.",
		"sgranchisce le dita a cose fatte, come se la cura avesse avuto un peso.",
		"si scioglie un crampo da una mano, come se curare fosse lavoro pesante.",
	},
	["heal.w14.watch.052"] = {
		"osserva {target} come una sentinella osserva un cancello: con pazienza, senza perdersi niente.",
		"tiene d'occhio {target} con pazienza da sentinella, senza perdere nulla.",
		"continua a guardare chi ha appena curato anche quando non c'è più niente da vedere.",
	},
	["heal.w14.watch.053"] = {
		"conta in silenzio mentre lavora, muovendo appena le labbra, come chi sa che qui non si deve avere fretta.",
		"conta senza voce mentre lavora, labbra appena mosse, senza fretta.",
	},
	["heal.w14.watch.054"] = {
		"aggrotta la fronte davanti alla ferita come davanti a un rompicapo da risolvere prima che qualcuno se ne accorga.",
		"fissa la ferita come un enigma con la miccia corta.",
	},
	["heal.w14.watch.055"] = {
		"alza gli occhi dalla cura per vedere cos'altro sta arrivando, poi torna a chinarsi.",
		"solleva lo sguardo un istante, tagliente, poi torna al lavoro.",
		"si interrompe un attimo per scrutare i dintorni, poi torna al male.",
	},
	["heal.w14.watch.056"] = {
		"stringe la mascella e va avanti, senza affrettarsi e senza rallentare.",
		"lavora a denti stretti, né più in fretta né più adagio.",
	},
	["heal.w14.watch.057"] = {
		"fa un mezzo passo indietro da {target} solo quando il male si è chiaramente arreso.",
		"non si volta finché il peggio non ha chiaramente mollato la presa.",
	},
	["heal.w14.watch.058"] = {
		"sembra invecchiare un poco e calmarsi un poco, nello spazio di una cura.",
		"sembra, per un attimo, insieme più {g:stanco|stanca} e più {g:contento|contenta}.",
		"lascia andare la tensione dalle spalle solo a cosa fatta.",
	},
	["heal.w14.watch.059"] = {
		"divide l'attenzione tra la ferita e il mondo intorno, senza dare a nessuno dei due meno del necessario.",
		"tiene un occhio sulla ferita e uno su tutto il resto.",
	},
	["heal.w14.watch.060"] = {
		"ondeggia appena, una volta, a cura finita, poi pianta bene i piedi e resta {g:dritto|dritta}.",
		"vacilla un niente a cosa fatta, poi ritrova l'equilibrio.",
	},
	["heal.w14.watch.061"] = {
		"si china così vicino alla ferita che per un attimo non sembra esistere altro.",
		"si china sul male, e per un attimo esiste solo quello.",
	},
	["heal.w14.watch.062"] = {
		"osserva {target} come si osserva un ponte appena riparato, aspettando di vedere se regge il peso.",
		"guarda {target} come un ponte appena rifatto: reggerà?",
	},
	["heal.w14.watch.063"] = {
		"lascia ricadere le mani solo quando non resta davvero più niente da ricucire.",
		"non abbassa le mani finché resta qualcosa da chiudere.",
	},
	["heal.w14.watch.064"] = {
		"lavora con la fronte aggrottata, che si distende man mano che il male cede.",
		"ha la fronte corrugata, poi distesa, man mano che la ferita si chiude.",
	},
	["heal.w14.watch.065"] = {
		"fa un piccolo cenno, solo per sé, quando la cura tiene.",
		"annuisce appena, tra sé e sé, mentre il male si placa.",
		"solleva appena un angolo della bocca mentre il male si quieta.",
	},
	["heal.w14.watch.066"] = {
		"non stacca mai gli occhi da {target} finché non ha finito.",
		"tiene lo sguardo fisso, senza battere ciglio, su chi ha bisogno finché la cura non è compiuta.",
	},
	["heal.w14.watch.067"] = {
		"si strofina gli occhi stanchi col dorso del polso, a cura finita, poi si guarda intorno.",
		"si passa un polso sugli occhi, un attimo, poi si guarda attorno.",
	},
	["heal.w14.watch.068"] = {
		"veglia su chi ha appena curato come una candela lasciata accesa alla finestra.",
		"veglia su chi ha curato come un guardiano su una casa che dorme.",
	},
	["heal.w14.watch.069"] = {
		"sussulta appena, come se un po' del dolore fosse passato dall'altra parte.",
		"fa una lieve smorfia, come se un po' del male fosse finito addosso a {g:lui|lei}.",
	},
	["heal.w14.watch.070"] = {
		"pronuncia piano il nome di {target}, una volta sola, come per legarlo al mondo.",
		"dice il nome di {target} a bassa voce, una volta, come una cima d'ormeggio.",
	},
	["heal.w14.watch.071"] = {
		"si muove con calma studiata, come se la fretta fosse l'unica cosa che potesse ancora andare storta.",
		"lavora piano apposta: la fretta è l'unico nemico rimasto a portata.",
		"si prende il suo tempo, di proposito, come con una serratura che s'inceppa a forzarla.",
	},
	["heal.w14.watch.072"] = {
		"si raddrizza piano a lavoro finito, con la cautela rigida di chi ha speso più del prudente.",
		"si raddrizza con cura, un po' più {g:vuoto|vuota} di prima.",
	},
	["heal.w14.watch.073"] = {
		"Adesso sei in custodia mia, {target}. Quello che custodisco non lo perdo.",
		"Ora sei sotto la mia custodia. Non lascio cadere ciò che custodisco.",
	},
	["heal.w14.watch.074"] = {
		"Più in fretta del male. Basta questo: più in fretta del male.",
		"Prima della ferita. Arrivare prima della ferita, e basta.",
		"Davanti al male. Restare davanti al male.",
	},
	["heal.w14.watch.075"] = {
		"Mani ferme. Mani ferme. Il resto viene da sé.",
		"Mani salde, testa lucida. Non serve altro.",
	},
	["heal.w14.watch.076"] = {
		"Ti tengo d'occhio, {target}. Se si riapre, lo saprò prima di te.",
		"I miei occhi restano su di te. Niente si riapre senza che me ne accorga.",
	},
	["heal.w14.watch.077"] = {
		"Di forza ne ho ancora parecchia. Parecchia. Quasi di sicuro.",
		"Ce n'è ancora per un'altra. Forse due.",
		"Bene. Bene. Sto bene. A chi tocca?",
	},
	["heal.w14.watch.078"] = {
		"Finché non torni in forze, {target}, sei affar mio. Funziona così.",
		"Finché non torni in forze, sei affar mio.",
	},
	["heal.w14.watch.079"] = {
		"In tempo. Per un pelo, ma in tempo.",
		"Fatto in tempo. Me lo faccio bastare.",
		"Ce l'ho fatta. Per un capello, ma ce l'ho fatta.",
	},
	["heal.w14.watch.080"] = {
		"Vai pure, {target}. Ti guardo le spalle, per la prossima.",
		"Vai. Da qui in poi seguo ogni tuo passo con gli occhi.",
	},
	["heal.w14.wit.001"] = {
		"Lavoro grezzo, ma svelto. Tre su cinque, e il voto lo do io.",
		"Fatto alla buona e di corsa. Diciamo tre su cinque.",
		"Giudizio sulla riparazione: funziona, brutta a vedersi, fatta di fretta. Promossa.",
	},
	["heal.w14.wit.002"] = {
		"Un capolavoro di rammendo non è. Però tiene, e tenere è tutto il mestiere.",
		"Questo rammendo non vincerà premi. Deve solo reggere.",
	},
	["heal.w14.wit.003"] = {
		"D'accordo, ferita, hai detto la tua. Adesso chiuditi.",
		"Ricevuto, ferita. Ora chiudi, per cortesia.",
		"Ferita, ho ascoltato le tue ragioni. Respinte.",
	},
	["heal.w14.wit.004"] = {
		"Aggiungilo al conto che ho con la fortuna. Prima o poi vorrà essere pagata.",
		"Questa l'ha coperta la fortuna. Dovrei cominciare a conservare le ricevute.",
		"La fortuna mi ha tirato fuori dai guai. Le lascerei una mancia, se accettasse monete.",
	},
	["heal.w14.wit.005"] = {
		"Era un piccolo fastidio. Adesso è più piccolo.",
		"Fastidio ridotto. Si prosegue.",
		"Una seccatura, ora declassata a seccatura lieve.",
	},
	["heal.w14.wit.006"] = {
		"Lo squarcio si è chiuso. L'orgoglio è ancora là, steso nella polvere.",
		"La carne guarisce in fretta. L'orgoglio se la prende comoda.",
		"Si è chiuso tutto tranne l'orgoglio, che resta spalancato.",
	},
	["heal.w14.wit.007"] = {
		"La prossima volta proverò un'idea rivoluzionaria: non trovarmi lì quando arriva il colpo.",
		"Strategia nuova e audace: essere altrove quando arriva la botta.",
		"Approccio rivisto: stare dove i guai non ci sono.",
	},
	["heal.w14.wit.008"] = {
		"Si metta agli atti: la ferita c'era, ora non c'è, e nessun lamento. Be', quasi nessuno.",
		"Sia scritto che l'ho sopportato con nobiltà. Più o meno.",
	},
	["heal.w14.wit.009"] = {
		"esamina il punto rimesso a posto, poi si guarda intorno come per controllare che nessuno abbia visto com'è successo.",
		"si guarda intorno, sperando che nessuno abbia visto la parte prima.",
	},
	["heal.w14.wit.010"] = {
		"Il corpo presenta i suoi reclami in triplice copia. Questo, almeno, è archiviato.",
		"Reclamo ricevuto, reclamo chiuso. Questa carne ha un impiegato molto zelante.",
	},
	["heal.w14.wit.011"] = {
		"Ahi. Meno ahi. Quasi niente ahi. Benissimo.",
		"Da ahi a quasi bene tutto d'un tratto. Mi sta bene.",
		"Ahi, ahi, e poi, per fortuna, niente ahi.",
	},
	["heal.w14.wit.012"] = {
		"Le ginocchia chiedevano un periodo di riposo. Hanno avuto un rattoppo e un no deciso.",
		"Le ginocchia volevano le ferie. Si sono prese un rattoppo.",
	},
	["heal.w14.wit.013"] = {
		"Chi l'ha lasciato passare? Ah, già. Io.",
		"Chi ha lasciato quel buco nella guardia dovrebbe vergognarsi. Ah, ero io.",
		"Nella guardia c'era un buco. Indovina chi ce l'ha lasciato.",
	},
	["heal.w14.wit.014"] = {
		"Parlo con le mie ferite più che con quasi tutta la gente. Ascoltano altrettanto poco.",
		"Le ferite sono pessima compagnia. Parlano solo di sé.",
	},
	["heal.w14.wit.015"] = {
		"Sistemato quasi tutto. Quello che avanza conta come carattere.",
		"Quel che non si è aggiustato lo chiamo carattere.",
		"Qualche danno resta. Lo porterò come tratto di personalità.",
	},
	["heal.w14.wit.016"] = {
		"Conto veloce: braccia, due. Gambe, due. Dignità, da discutere.",
		"Inventario dopo il rattoppo: arti tutti presenti, dignità dispersa.",
		"Testa: attaccata. Arti: presenti all'appello. Orgoglio: in fase di revisione.",
	},
	["heal.w14.wit.017"] = {
		"Che spettacolo: qualcuno che un attimo fa cadeva a pezzi, e adesso no.",
		"Gloria a me, che ho appena smesso di cadere a pezzi.",
	},
	["heal.w14.wit.018"] = {
		"Il male fa i bagagli e se ne va borbottando, come un creditore saldato fino all'ultima moneta.",
		"Se ne va borbottando, il dolore. Saldato.",
	},
	["heal.w14.wit.019"] = {
		"Se resta la cicatrice, la storia che c'è dietro migliorerà parecchio.",
		"Cicatrice o no, il racconto sarà più grandioso della verità.",
		"Se resta il segno, dirò che me l'ha fatto qualcosa di terrificante.",
	},
	["heal.w14.wit.020"] = {
		"Non esiste un modo dignitoso di farsi male. Esiste un modo appena dignitoso di riprendersi, e ci sto provando.",
		"Farsi male non è mai elegante. Riprendersi, almeno, posso farlo con stile.",
	},
	["heal.w14.wit.021"] = {
		"Senti? È il rumore di me che non muoio. Silenzioso. Bellissimo.",
		"Che bel silenzio, quello di chi non muore.",
		"Non morire non fa quasi rumore. Potrei abituarmici.",
	},
	["heal.w14.wit.022"] = {
		"Io e il mio corpo abbiamo un accordo: lui si fa male, io lo aggiusto, e nessuno dei due dice chi ha cominciato.",
		"Lui si rompe, io lo aggiusto, e dell'argomento non si parla più.",
	},
	["heal.w14.wit.023"] = {
		"Corpo, fa' il bravo. Ti ho appena aggiustato.",
		"Basta lamentarsi, corpo. Hai già avuto le tue cure.",
		"Allora, carcassa. Basta storie da parte tua.",
	},
	["heal.w14.wit.024"] = {
		"Come paziente sono un disastro: niente pazienza, niente gratitudine, e continuo a farmi male.",
		"Curarmi è un lavoro ingrato: il paziente non si ferma mai e non ringrazia.",
	},
	["heal.w14.wit.025"] = {
		"Un pezzo solo, un po' ammaccato, ma uno solo.",
		"In un pezzo, per quanto un po' storto.",
		"Qualche ammaccatura, niente di rotto. Come un buon paiolo.",
	},
	["heal.w14.wit.026"] = {
		"Esiste una versione di me che l'aveva visto arrivare. Vorrei scambiarci due parole.",
		"L'io di un attimo fa avrebbe dovuto vederlo arrivare. Annotato, e perdonato.",
		"L'io di prima ha sbagliato, l'io di adesso ha rimediato. L'io di dopo stia all'erta.",
	},
	["heal.w14.wit.027"] = {
		"dà due colpetti al punto appena rimesso a posto, come chi suggella un patto.",
		"dà al punto guarito una pacca soddisfatta, come se il male avesse finalmente imparato l'educazione.",
	},
	["heal.w14.wit.028"] = {
		"Punteggio: ferita, zero. Io, uno.",
		"Se qualcuno tiene il conto, questa la segni a me.",
	},
	["heal.w14.wit.029"] = {
		"Il dolore è un pessimo maestro. Urla tanto e non spiega niente.",
		"Insegna come un sergente, il dolore: forte, in fretta, e mai in modo chiaro.",
		"Fa lezione a tutto volume, il dolore, e non lascia mai appunti.",
	},
	["heal.w14.wit.030"] = {
		"Su una scala da uno a disastro, adesso sono un comodo quattro.",
		"Da disastro a qualche graffio. Progressi.",
		"Rovina scongiurata. Lievi ammaccature, accettate.",
	},
	["heal.w14.wit.031"] = {
		"Una piccola vanità: rimettermi in sesto prima che qualcuno se ne accorga.",
		"Preferisco sbrigarmela da me e alla svelta, prima che qualcuno noti che c'era da sbrigare.",
	},
	["heal.w14.wit.032"] = {
		"Che si sappia: faceva male. Tanto. Ora no, ma faceva male.",
		"Adesso non fa male. Prima sì, e qualcuno dovrebbe saperlo.",
		"Tutto a posto. Un po' di compassione per la parte di prima, però, la gradirei.",
	},
	["heal.w14.wit.033"] = {
		"Ogni graffio ha la sua piccola cerimonia: una smorfia, un'imprecazione, un rammendo. Molto tradizionale.",
		"Smorfia, imprecazione, rammendo. Il rito è rispettato.",
	},
	["heal.w14.wit.034"] = {
		"Chiuso per riparazioni, ma per poco. Adesso si riapre.",
		"Bottega riaperta. Riparazioni eseguite in sede.",
		"Il locale ha riaperto, sotto la stessa testarda gestione.",
	},
	["heal.w14.wit.035"] = {
		"Il bello del farmi da medico: nessuno mi fa la predica. Il brutto: me la faccio io.",
		"Nessuno mi sgrida per questo, tranne me. E non mollo mai.",
	},
	["heal.w14.wit.036"] = {
		"Oh, bene, il resto di me mi ha raggiunto.",
		"Le parti di me che mancavano si presentano a rapporto.",
		"Tutto ciò che si era allontanato è rientrato nei ranghi.",
	},
	["heal.w14.wit.037"] = {
		"Un giorno il rammendo arriverà tardi. Quel giorno, a quanto pare, è in ritardo anche lui.",
		"Prima o poi una ferita sarà più svelta di me. Per ora non ha fretta.",
	},
	["heal.w14.wit.038"] = {
		"Rattoppo fatto. Da qualche parte c'è qualcuno di molto deluso.",
		"Tutto rimesso a posto. Chi mi ha fatto questo ci resterà malissimo.",
		"Chi mi voleva a pezzi resterà a bocca asciutta.",
	},
	["heal.w14.wit.039"] = {
		"Ho il fisico di una brocca incrinata e la testa dura di una capra. La brocca è incollata; la capra va avanti.",
		"Brocca incrinata, incollata. Capra testarda, tale e quale.",
	},
	["heal.w14.wit.040"] = {
		"Grazie, io. Figurati, io.",
		"Mi ringrazio di cuore. Ottimo lavoro.",
		"Il merito a chi spetta: a me, tutto quanto.",
	},
	["heal.w14.wit.041"] = {
		"approva il punto guarito con un cenno, da capomastro davanti a un muro.",
		"osserva a lungo, con qualche dubbio, il punto rimesso a posto, poi decide di fidarsi.",
	},
	["heal.w14.wit.042"] = {
		"Il corpo è una stanza in affitto e io la tratto malissimo. Almeno le riparazioni le faccio da me.",
		"Corpo in affitto: rompo, aggiusto, e il padrone non lo saprà mai.",
	},
	["heal.w14.wit.043"] = {
		"Molto meglio. Quasi consiglierei di farsi male, solo per questa parte.",
		"Farsi male: orribile. Rimettersi in sesto: quasi ne vale la pena.",
		"Essere rimessi in sesto è così piacevole che quasi giustifica il resto.",
	},
	["heal.w14.wit.044"] = {
		"Se mi facessi pagare per questo, avrei le tasche piene e vuote nello stesso istante.",
		"La tariffa per questa riparazione: zero monete. Le vale tutte.",
		"Riparazione gratuita, e vale esattamente quanto l'ho pagata.",
	},
	["heal.w14.wit.045"] = {
		"Dolore, sei congedato. Attento alla porta, uscendo.",
		"Puoi andare, dolore. Fuori.",
		"Fuori, dolore. Va' a seccare qualcuno che se lo merita.",
	},
	["heal.w14.wit.046"] = {
		"Metà dell'arte del rammendo sta nel fingere che non abbia mai fatto male. E in quell'arte eccello.",
		"Il rammendo è fatto, e già fingo che fosse niente. Gran bella recita.",
	},
	["heal.w14.wit.047"] = {
		"Guardati, che ti rimetti in sesto come una persona assennata.",
		"Bel lavoro. Che giudizio, eh.",
		"Guarda un po' chi si prende cura di sé. Che orgoglio.",
	},
	["heal.w14.wit.048"] = {
		"Io e la ferita avevamo un disaccordo. L'ho risolto io.",
		"Ferita contro me. Verdetto di misura, a mio favore.",
	},
	["heal.w14.wit.049"] = {
		"Niente da vedere. Non più, almeno.",
		"Adesso non c'è niente da guardare. Un attimo fa, parecchio.",
		"Lo spettacolo è finito. La parte interessante si è richiusa.",
	},
	["heal.w14.wit.050"] = {
		"Mi tengono insieme la testardaggine e le riparazioni veloci, come quasi tutto il resto del mondo.",
		"Testardaggine e rattoppi alla svelta: la mia malta, e quella di mezzo mondo.",
	},
	["heal.w14.wit.051"] = {
		"Lo sappia il mondo intero: la ferita non c'è più!",
		"Si esulti! Il buco è stato chiuso!",
		"Suonino i corni: una ferita, sconfitta!",
	},
	["heal.w14.wit.052"] = {
		"Al dolore piace fare discorsi. Io preferisco interromperlo presto.",
		"Ho zittito il male a metà frase. Una scortesia, ma efficace.",
	},
	["heal.w14.wit.054"] = {
		"Le cose rammendate non contano. Regole della casa.",
		"Se si chiude, non è mai successo. È la mia regola, e non la cambio.",
		"Ciò che è rammendato non è successo. Qui le regole le faccio io.",
	},
	["heal.w14.wit.055"] = {
		"si raddrizza con esagerata dignità, come se non fosse successo nulla.",
		"si tira su con gran dignità e nessuna spiegazione.",
	},
	["heal.w14.wit.056"] = {
		"Il mio prossimo appuntamento col dolore è annullato. A tempo indeterminato.",
		"Col dolore ci vediamo più avanti. Molto più avanti. Mai, possibilmente.",
		"Che lasci pure detto, il dolore. Non risponderò.",
	},
	["heal.w14.wit.057"] = {
		"Non è un corpo elegante, il mio, ma è puntuale. Arriva il male, segue il rammendo.",
		"Elegante no. Puntuale sì. Il rammendo è arrivato in orario.",
	},
	["heal.w14.wit.058"] = {
		"Non dico che non abbia fatto male. Dico che l'orgoglio non me lo lascia ammettere.",
		"Male? Io? Solo all'amor proprio, e quello guarisce più adagio.",
	},
	["heal.w14.wit.059"] = {
		"Guarisco più in fretta di quanto impari. Prima o poi una delle due cose dovrà raggiungere l'altra.",
		"Guarire svelti, imparare lenti. Una coppia pericolosa.",
	},
	["heal.w14.wit.060"] = {
		"Mi sono {g:rimesso|rimessa} in sesto senza alcun aiuto. Accetto medaglie.",
		"Nessun aiuto richiesto. Le medaglie si lasciano ai miei piedi, grazie.",
		"Riparazione in solitaria, nessun testimone, risultato impeccabile. Praticamente leggenda.",
	},
	["heal.w14.wit.061"] = {
		"Scriverei alla ferita una lettera di fuoco, se pensassi che sa leggere.",
		"Cara ferita: chiusa, come richiesto. Non serve rispondere.",
	},
	["heal.w14.wit.062"] = {
		"I miei complimenti a qualunque cosa sia stata. Bel colpo. Disfatto, mi spiace.",
		"Bel tentativo, qualunque cosa fosse. Annullato.",
		"A qualunque cosa sia stata: bello sforzo. Peccato non abbia attecchito.",
	},
	["heal.w14.wit.063"] = {
		"C'è una soddisfazione tutta speciale nel rimediare ai propri pasticci. E me la sto godendo.",
		"Compiacimento, ecco la parola giusta. Rammendo fatto, e me ne compiaccio.",
	},
	["heal.w14.wit.064"] = {
		"borbotta alla ferita qualcosa che non è un complimento, e la ferita, ormai chiusa, non replica.",
		"dice due parole poco gentili alla ferita, che ormai chiusa non risponde.",
	},
	["heal.w14.wit.065"] = {
		"Ed ecco che la parte lesa si rialzò, rimessa in sesto dalla parte lesa medesima.",
		"Parte lesa e chi ripara, la stessa persona. Che risparmio.",
		"La vittima, chi l'ha curata e il testimone sono la stessa persona, e tutti e tre sono soddisfatti.",
	},
	["heal.w14.wit.066"] = {
		"Con un po' di attenzione, questo rammendo non sarebbe servito. Ma poi come passerei il tempo?",
		"Con un po' d'attenzione me lo sarei risparmiato. Ma che divertimento c'è?",
	},
	["heal.w14.wit.067"] = {
		"Su, su. Tutto rammendato. Ma chi è che tiene botta, eh?",
		"Calma, calma. Va tutto bene. Sì, sto parlando tra me e me.",
		"Shh, ora. Tutto rattoppato. Niente smorfie.",
	},
	["heal.w14.wit.068"] = {
		"Non so mai valutare quanto sto male: o sto morendo, o sto benissimo, niente in mezzo.",
		"Morente o benissimo: i miei due stati. Al momento, benissimo.",
	},
	["heal.w14.wit.069"] = {
		"Era tutto sotto controllo. Dall'inizio alla fine. Più o meno.",
		"Sotto controllo, assolutamente. Quasi. Alla fine.",
	},
	["heal.w14.wit.070"] = {
		"Rammendare è la parte facile. Spiegarmi perché ce n'era bisogno richiede molto di più.",
		"Per lo squarcio è bastato un attimo. Per la scusa ci vuole parecchio di più.",
	},
	["heal.w14.wit.071"] = {
		"esamina la riparazione da più lati, come un compratore davanti a un cavallo dalla storia dubbia.",
		"si rigira, esaminando il rammendo come se cercasse il marchio di bottega.",
	},
	["heal.w14.wit.072"] = {
		"Prognosi: sopravvivo. Sempre più probabile, di momento in momento.",
		"Probabilità di cavarmela: in netto miglioramento.",
	},
	["heal.w14.wit.073"] = {
		"Io e la fortuna regoliamo i conti come due mercanti furbi: di malavoglia, e arrotondando parecchio.",
		"La fortuna arrotonda per difetto, io per eccesso. I conti non quadrano mai.",
	},
	["heal.w14.wit.074"] = {
		"C'è più sostanza in me di quanto sembri. Non molta di più, ma c'è.",
		"Reggo più di quel che sembra. L'asticella era bassa, ma l'ho superata.",
		"Più fragile di quanto vorrei, più resistente di quanto temessi.",
	},
	["heal.w14.wit.075"] = {
		"Si è chiusa con tanta educazione, la ferita, che sembrava chiedere scusa. E ci mancherebbe.",
		"Si chiude tutta compita, adesso. Un po' tardi per le buone maniere.",
	},
	["heal.w14.wit.076"] = {
		"Dieci e lode per non aver tirato le cuoia. Avanti così.",
		"Stellina d'oro per la sopravvivenza. Da appendere in bella vista.",
		"Sopravvivenza: ottenuta. Applausi: facoltativi.",
	},
	["heal.w14.wit.077"] = {
		"Ogni rammendo è un piccolo prestito sulla fine. Gli interessi sono alti, ma non sono nella posizione di trattare.",
		"Gli interessi su questi rammendi sono salati. Io firmo lo stesso.",
	},
	["heal.w14.wit.078"] = {
		"Così imparo. Non imparerò, si capisce, ma dovrei.",
		"Lezione imparata. E presto dimenticata, temo.",
		"Lezione impartita. Se sia stata appresa, resta da vedere.",
	},
	["heal.w14.wit.079"] = {
		"Questo corpo è un carretto cigolante: rattoppato, cigola un po' meno e rotola un po' di più.",
		"Carretto cigolante, appena oliato. Si riparte.",
	},
	["heal.w14.wit.080"] = {
		"Sistemata, la cosa. Il fastidio no.",
		"Il male se n'è andato. Il rancore resta.",
		"Rammendo fatto, malumore intatto. Solo uno dei due era urgente.",
	},
	["heal.w14.wit.081"] = {
		"I racconti saltano sempre la parte in cui l'eroe si ferma a tappare un buco. Meglio così: non è un bello spettacolo.",
		"Gli eroi delle storie non si fermano mai a rattoppare. Beati loro.",
	},
	["heal.w14.wit.082"] = {
		"Chi ha progettato i corpi ci ha lasciato troppe parti morbide. Almeno si rattoppano.",
		"Troppe parti molli in un corpo. Progetto scadente, riparazioni discrete.",
	},
	["heal.w14.wit.084"] = {
		"Ricordami di fare più attenzione. Anzi, lascia stare: non ti ascolterei.",
		"Fare più attenzione, mi dico. Non mi do mai retta.",
		"Consiglio a me: guarda dove sono i guai. Consiglio, temo, ignorato.",
	},
	["heal.w14.wit.085"] = {
		"fa un piccolo inchino a nessuno in particolare, come se un lavoro difficile si fosse appena guadagnato un applauso.",
		"s'inchina appena, a nessuno, come un artigiano sul lavoro finito.",
	},
	["heal.w14.wit.086"] = {
		"Dicano di me quel che vogliono, ma nessuno può dire che non rimedio ai miei disastri.",
		"I disastri li combino io, i buchi li tappo io. Giusto così.",
	},
	["heal.w14.wit.087"] = {
		"Un buco in me diventa un buco nei miei piani. Tappati tutti e due.",
		"Chiuso un buco in me e uno nella tabella di marcia. Efficienza.",
	},
	["heal.w14.wit.088"] = {
		"Voglio bene a questo corpo. È l'unico che ho, e continua a perdonarmi.",
		"L'unico corpo che ho, e mi perdona sempre. Generoso da parte sua.",
	},
	["heal.w14.wit.089"] = {
		"Ah. Niente di più dolce di un dolore che si arrende.",
		"Un male che non fa più male. Che bella idea.",
		"Si arrende, il male. Condizioni generose, direi.",
	},
	["heal.w14.wit.090"] = {
		"C'è chi colleziona monete. Io, a quanto pare, colleziono scampati pericoli. Li scambierei tutti con monete.",
		"Gli scampati pericoli fanno una pessima collezione. Nessuno li compra.",
	},
	["heal.w14.wit.091"] = {
		"Fatto nei tempi e spendendo meno del previsto. La mia riparazione preferita.",
		"Economico, rapido e quasi in ordine. Miglior offerta sulla piazza.",
		"Lavoro rapido, economico, sufficiente. Mi assumerei subito.",
	},
	["heal.w14.wit.092"] = {
		"Il dolore se n'è andato, promettendo di passare a trovarmi. Ho cambiato la serratura.",
		"Ha lasciato un biglietto, il dolore: passerà. Serratura cambiata.",
	},
	["heal.w14.wit.093"] = {
		"Rimettiti insieme, mi dico. E guarda un po': fatto.",
		"Rimettiti in sesto. Alla lettera, a quanto pare.",
	},
	["heal.w14.wit.094"] = {
		"Ogni rammendo sembra una discussione vinta col mondo. Una discussione piccola e meschina, ma vinta da me.",
		"Piccola vittoria in una lite meschina col mondo. Mi accontento.",
	},
	["heal.w14.wit.095"] = {
		"tocca con cautela il punto rimesso a posto, fa una smorfia d'istinto, poi ha l'aria di vergognarsene un poco.",
		"fa una smorfia per un dolore già sparito, e la spaccia per uno sbadiglio.",
	},
	["heal.w14.wit.096"] = {
		"Tutto sistemato. Chi viene dopo dovrà ricominciare da zero.",
		"Lavagna pulita. Il prossimo parte da niente.",
	},
	["heal.w14.wit.097"] = {
		"Indistruttibilità ritrovata, dopo un po' di montaggio. Attenzione alle giunture.",
		"Indistruttibile, previo montaggio.",
		"Infrangibile, salvo qualche riparazione.",
	},
	["heal.w14.wit.098"] = {
		"Il dolore è solo il corpo che fa il melodrammatico. L'ho riportato alla ragione.",
		"Ha esagerato, il corpo. L'ho calmato con un rattoppo veloce e un'occhiataccia.",
		"Capricci del corpo: finiti.",
	},
	["heal.w14.wit.099"] = {
		"Fingerò che sia andato tutto esattamente come previsto.",
		"Come previsto, tutto quanto. Quale fosse il piano, è un altro discorso.",
	},
	["heal.w14.wit.100"] = {
		"Tra 'ahi' e 'bene' c'è un lungo corridoio. L'ho appena percorso in un batter d'occhio.",
		"Da 'ahi' a 'bene' in un lampo. Il viaggio più breve che farò.",
	},
	["heal.w14.wit.101"] = {
		"guarda il punto rammendato con un vago sospetto, come se potesse riaprirsi solo per ripicca.",
		"tiene d'occhio il rammendo, evidentemente senza fidarsene del tutto.",
	},
	["heal.w14.wit.102"] = {
		"si spolvera l'equipaggiamento, come se tutta la faccenda fosse stata solo un po' di polvere.",
		"si dà una spolverata solenne, come se fosse capitata solo un po' di polvere.",
	},
	["heal.w14.wry.001"] = {
		"Le scuse dopo. Prima si ricuce, poi le scuse, e che siano buone.",
		"Ma cosa cercavi di fare? No, non spiegare. Sono {g:occupato|occupata} a rimediare.",
		"Me lo spieghi dopo. Piano. Con i disegni.",
	},
	["heal.w14.wry.002"] = {
		"Questa è gratis. Dicono che la generosità forgi il carattere: il mio sta diventando enorme.",
		"Niente da pagare. Diciamo che investo sulla tua capacità di restare in piedi.",
		"Offre la casa. La casa, però, sta rivedendo le sue regole.",
	},
	["heal.w14.wry.003"] = {
		"Occhio al rattoppo: è fresco, e mi piacerebbe che restasse intatto per un po'.",
		"Occhio alla riparazione. Non si è nemmeno assestata.",
		"Lavoro fresco, {target}. Dagli un minuto prima di metterlo alla prova.",
	},
	["heal.w14.wry.004"] = {
		"Patto: io ti tengo in piedi, tu mi tieni lontani i guai. Giusto?",
		"Facciamo un accordo. Tu non ti rompi più, io smetto di urlare. Ci guadagnano tutti.",
	},
	["heal.w14.wry.005"] = {
		"Avevi un aspetto pessimo. Adesso è soltanto brutto. Sono progressi.",
		"Da disastro a semplice preoccupazione. Mi accontento.",
	},
	["heal.w14.wry.006"] = {
		"Non azzardarti a cadere adesso. La prenderei sul personale.",
		"Cadere è vietato. L'ho deciso io, e di questa parte mi occupo io.",
		"Prova a cadere e ti rimetto in sesto solo per sgridarti come si deve.",
	},
	["heal.w14.wry.007"] = {
		"Il lavoro è mio, la pelle è tua. Abbi cura di tutti e due, va bene?",
		"Il lavoro ce l'ho messo io, la pelle ce la metti tu. Trattali bene entrambi.",
		"La pelle è tua, {target}, ma i punti sono miei. Rispettali.",
	},
	["heal.w14.wry.008"] = {
		"Avevo dei programmi, {target}. In nessuno c'era questo.",
		"Stavo facendo una cosa. Andava pure bene. E poi, tu.",
	},
	["heal.w14.wry.009"] = {
		"La prossima volta fatti male più vicino. La corsa è la parte peggiore.",
		"Se proprio devi sanguinare, fallo a portata di mano. Le mie ginocchia ringraziano.",
	},
	["heal.w14.wry.010"] = {
		"Va bene. È tutto a posto. Puoi smettere di guardarmi così.",
		"Chiusa. Sì, per bene. No, non serve che controlli.",
		"È chiusa. Resterà chiusa. Smettila di guardarmi come se raccontassi frottole.",
	},
	["heal.w14.wry.011"] = {
		"Meno eroismi, {target}. E più posti sensati dove stare.",
		"Meno eroismi, più buon senso. Mi basterebbe uno dei due.",
	},
	["heal.w14.wry.012"] = {
		"Non sono {g:arrabbiato|arrabbiata}. Sto ricucendo. La rabbia è in programma per dopo.",
		"La sgridata viene dopo. Per adesso ti tocca solo la parte gentile.",
		"Calma adesso, furia dopo. Ho fatto posto a tutte e due.",
	},
	["heal.w14.wry.013"] = {
		"Dichiaro solennemente chiuso questo buco. Gli applausi sono facoltativi, ma graditi.",
		"Sia noto a tutti: la ferita è chiusa, e a me spetta una sedia.",
	},
	["heal.w14.wry.014"] = {
		"Tempismo perfetto. Davvero, hai scelto il momento ideale.",
		"Fra tutti i momenti possibili, proprio questo. Bella scelta.",
		"Tempismo squisito, {target}. Davvero, un talento.",
	},
	["heal.w14.wry.015"] = {
		"Questo è sistemato. Il livido all'orgoglio è affar tuo.",
		"La carne la sistemo io. L'orgoglio ammaccato, curatelo da te.",
	},
	["heal.w14.wry.016"] = {
		"Ricucire è gratis. Guardare quella scena mi è costato un anno di vita.",
		"Il buco non costa niente. Lo spavento che mi hai fatto prendere, quello lo metto in conto.",
		"Il rattoppo non costa nulla. La preoccupazione me la tengo come ricordo.",
	},
	["heal.w14.wry.017"] = {
		"Per un attimo mi sono quasi {g:preoccupato|preoccupata}. Non farci l'abitudine.",
		"Per poco non mi prendeva un colpo. Per poco. Non c'è niente da sorridere.",
	},
	["heal.w14.wry.018"] = {
		"La prossima volta che vuoi attenzioni, chiedi. Costa meno a tutti.",
		"Voler compagnia va bene. Sanguinare per averla è un po' troppo.",
		"Se ti annoi, esistono passatempi meno dolorosi.",
	},
	["heal.w14.wry.019"] = {
		"Era un piano, {target}? Dimmi che non era quello il piano.",
		"Dimmi che c'era un piano. E dimmi che non era quello.",
	},
	["heal.w14.wry.020"] = {
		"Il merito me lo tengo io, {target}. Tu tieniti la cicatrice.",
		"Divisione onesta: a me la gloria, a te il segno che resta.",
		"La cicatrice è tua. Il diritto di vantarsene è mio.",
	},
	["heal.w14.wry.021"] = {
		"Al prossimo giro di follie, avvisami prima. Mi piace farmi trovare {g:pronto|pronta}.",
		"Hai in mente altro del genere? Un preavviso sarebbe gradito.",
	},
	["heal.w14.wry.022"] = {
		"Che disastro. Ho visto banchi di macelleria più in ordine.",
		"Guarda qui. Un macellaio se ne vergognerebbe.",
	},
	["heal.w14.wry.023"] = {
		"Hai fortuna: sono di buon umore. Non è vero, ma la fortuna ce l'hai lo stesso.",
		"Ringrazia la sorte: sono di pessimo umore e ho lavorato bene comunque.",
	},
	["heal.w14.wry.024"] = {
		"Per questo c'è una tariffa. Ci penserò su. Sarà spiacevole.",
		"Non ti chiedo monete. Ti chiedo un favore, e lo scelgo io.",
		"Condizioni di pagamento: più prudenza. Previste penali per i ritardi.",
	},
	["heal.w14.wry.025"] = {
		"Tienila chiusa almeno finché non mi sono {g:seduto|seduta}. È chiedere troppo?",
		"Può restare chiusa il tempo che mi siedo? Solo quello.",
	},
	["heal.w14.wry.026"] = {
		"Se qualcuno chiede, era un graffio. Risparmia ai miei nervi la versione vera.",
		"Ufficialmente non era niente. Ufficiosamente, non farlo mai più vicino a me.",
		"Non dirlo a nessuno. La mia fama di persona calma non sopravvivrebbe.",
	},
	["heal.w14.wry.027"] = {
		"Morire non è permesso finché ci sono io. Non me lo perdonerei mai.",
		"Vicino a me non si muore. Mi rovinerebbe l'umore.",
		"In mia compagnia è severamente vietato morire. Chiedi in giro. Anzi, no.",
	},
	["heal.w14.wry.028"] = {
		"Mi arrabbio dopo. Adesso resta lì un momento.",
		"La rabbia dopo. Ora non muovere un muscolo.",
		"Predica rimandata. Resta dove sei, {target}.",
	},
	["heal.w14.wry.029"] = {
		"Fatto. Ho rimesso a posto tutto quello che ho trovato.",
		"Ogni pezzo che ho trovato è tornato al suo posto. Il resto non andarlo a cercare.",
		"Rimontaggio finito. Potrebbero servire dei ritocchi.",
	},
	["heal.w14.wry.030"] = {
		"Le ossa dove vanno le ossa, la pelle dove va la pelle. Lasciale lì, per cortesia.",
		"Ogni cosa è tornata dove deve stare. Non rimettere in disordine.",
	},
	["heal.w14.wry.031"] = {
		"Ho pazienza giusto per una di queste. L'hai appena consumata.",
		"Quella era tutta la mia scorta di pazienza. Spendila bene.",
	},
	["heal.w14.wry.032"] = {
		"Vai a renderti utile. Con prudenza. Utile e prudente, in quest'ordine.",
		"Vai pure. Sii utile, sii prudente, torna in un pezzo solo.",
		"Utile e prudente, {target}. Tutte e due le cose. Non si sceglie.",
	},
	["heal.w14.wry.033"] = {
		"C'è mancato poco. Abbastanza poco da farmi arrabbiare.",
		"Troppo vicino. Così vicino che adesso sono di cattivo umore.",
	},
	["heal.w14.wry.034"] = {
		"Rifallo e la prossima volta ti rimetto in sesto con tutta calma.",
		"Un'altra bravata così e il prossimo rattoppo arriva con una lunga predica allegata.",
	},
	["heal.w14.wry.035"] = {
		"Non ho fatto tutto questo lavoro perché tu vada in pezzi alla prima spinta.",
		"Tanta fatica, e già stai adocchiando il prossimo disastro.",
	},
	["heal.w14.wry.036"] = {
		"Ti scrollerei per bene, ma ho appena finito di aggiustarti.",
		"Una parte di me vorrebbe scuoterti fino a farti rinsavire. L'altra ha appena finito il lavoro su di te.",
	},
	["heal.w14.wry.037"] = {
		"La prossima volta urla prima. Se qualcuno mi avvisa, arrivo molto più in fretta.",
		"Un grido avrebbe aiutato. Un piccolo avviso, non chiedo altro.",
	},
	["heal.w14.wry.038"] = {
		"Fatto. E io che mi stavo godendo un momento di pace.",
		"Tutto a posto. Addio al mio unico minuto tranquillo.",
	},
	["heal.w14.wry.039"] = {
		"Prima o poi mi farai morire, {target}. Non stavolta, ma ci riuscirai.",
		"Uno di questi giorni mi farai venire un colpo. Non con questa, però.",
	},
	["heal.w14.wry.040"] = {
		"Le mani sono ferme. L'umore no. Spera che vincano le mani.",
		"Mani salde, nervi a pezzi. Per fortuna il lavoro lo fanno le mani.",
	},
	["heal.w14.wry.041"] = {
		"Questa è fatta. Le storie arrivano dopo, per intero e con gli interessi.",
		"Questo era il rattoppo. La ramanzina arriva a parte.",
	},
	["heal.w14.wry.042"] = {
		"La ferita è chiusa. Per la testa dura che se l'è guadagnata non ho rimedi.",
		"Uno squarcio lo chiudo. Una testa dura è tutt'altra faccenda.",
		"La pelle si ricuce. La testardaggine, purtroppo, non si scuce mai.",
	},
	["heal.w14.wry.043"] = {
		"Fanne buon uso. Qualunque cosa ci farai, che valga la mia fatica.",
		"Vai a spenderlo bene. Non l'ho fatto per niente.",
		"Era un regalo. Non sprecarlo in qualche sciocchezza.",
	},
	["heal.w14.wry.044"] = {
		"Sei a posto, non immortale. Impara la differenza prima che tocchi a me insegnartela.",
		"Un rattoppo non è un'armatura. Ricordatelo, quando ti viene voglia di strafare.",
	},
	["heal.w14.wry.045"] = {
		"Qualunque cosa stessi pensando, la prossima volta pensala un po' meno.",
		"L'idea che hai avuto? Lasciala qui. Con te non viene.",
	},
	["heal.w14.wry.046"] = {
		"Se vai giù, mi arrabbio. A lungo. Sulla tua tomba.",
		"Cadi e passerò un anno a sgridare la tua lapide. Non mettermi alla prova.",
	},
	["heal.w14.wry.047"] = {
		"Non morirmi. Per quella cosa non ho parole pronte, e mi rifiuto di cercarle.",
		"Resta fra i vivi. Per l'altra faccenda non ho pazienza.",
		"Mi rifiuto di perderti per una cosa così stupida.",
	},
	["heal.w14.wry.048"] = {
		"Fa meno male? Bene. È l'ultima gentilezza che ti faccio per un po'.",
		"Questa era gentilezza. Goditela: le scorte stanno finendo.",
	},
	["heal.w14.wry.049"] = {
		"{target}, è venuto così bene che quasi mi dispiace sprecarlo con te.",
		"Un lavoro splendido, modestamente. Sprecato con tanta sbadataggine.",
	},
	["heal.w14.wry.050"] = {
		"Ricordati cosa hai provato. La memoria è l'unica cosa che non posso rimetterti a posto.",
		"Tieniti il bruciore. Quello lo lascio apposta.",
	},
	["heal.w14.wry.051"] = {
		"Ti perdono appena mi passa lo spavento. Dammi un minuto.",
		"Il perdono sta arrivando. È in coda dietro lo spavento.",
		"Lasciami il tempo che passi la paura. Poi passerà anche la rabbia.",
	},
	["heal.w14.wry.052"] = {
		"Che resti scritto: ti ho salvato la pelle, e ho brontolato per tutto il tempo.",
		"Annotalo da qualche parte: salvataggio riuscito, controvoglia, con commenti.",
	},
	["heal.w14.wry.053"] = {
		"Fatto. Adesso vai a infastidire chi ti ha fatto questo, non me.",
		"Vai pure. Disturba chi ti ha fatto male; io ho già dato.",
	},
	["heal.w14.wry.054"] = {
		"Ancora un po' così e a farmi ricucire sarò io.",
		"A questo ritmo, a terra ci finisco io.",
	},
	["heal.w14.wry.055"] = {
		"{target}, sei un lavoro a tempo pieno. E io la domanda non l'ho mai fatta.",
		"Badare a te è un lavoro onesto. Solo che non ricordo di averlo accettato.",
	},
	["heal.w14.wry.056"] = {
		"Scegli meglio i tuoi disastri, {target}. Possibilmente lontano da me.",
		"Catastrofi più piccole, per favore. Ho solo due mani.",
	},
	["heal.w14.wry.057"] = {
		"Silenzio. Sto contando, e mi fai perdere il filo.",
		"Sst. Mi sto concentrando. Ti lamenterai quando sarà chiusa.",
	},
	["heal.w14.wry.058"] = {
		"Ecco. Adesso vai a fare faville, ma dove posso vederti.",
		"Vai, fai scintille. Però sotto i miei occhi.",
		"Vai a brillare, {target}. Non troppo lontano.",
	},
	["heal.w14.wry.059"] = {
		"No, non cadrà. Probabilmente. Smettila di stuzzicarla.",
		"Lasciala stare. A toccarla non guarisce prima: fai solo innervosire me.",
		"Reggerà. A meno che tu non continui a toccarla: in quel caso, non rispondo io.",
	},
	["heal.w14.wry.060"] = {
		"{target}, mi hai fatto prendere uno spavento. Tutto qui. Non farmelo ripetere.",
		"Mi hai fatto paura. Ecco, l'ho detto. E non lo dirò una seconda volta.",
	},
	["heal.w14.wry.061"] = {
		"Hai addosso il mio lavoro migliore, {target}. Portagli rispetto.",
		"Addosso hai il meglio che so fare. Non strapparlo.",
	},
	["heal.w14.wry.062"] = {
		"Ringrazia la fortuna che mi ha messo lì vicino. Lei un premio se l'è meritato; tu no.",
		"La fortuna mi ha messo nei paraggi. A lei la gratitudine. A te il conto.",
	},
	["heal.w14.wry.063"] = {
		"Prima la sgridata, poi la paura. Al contrario, le mani rallentano.",
		"Brontolare tiene svelte le mani. Angosciarsi le renderebbe goffe.",
	},
	["heal.w14.wry.064"] = {
		"Se sembro {g:arrabbiato|arrabbiata}, è perché la rabbia pesa meno della paura.",
		"La rabbia è svelta e utile. La paura intaserebbe le mani, quindi il lavoro tocca alla rabbia.",
	},
	["heal.w14.wry.065"] = {
		"La ferita è chiusa. Il mio umore ci metterà parecchio di più.",
		"La carne si richiude in fretta. Il mio malumore, invece, ha bisogno di tempo.",
	},
	["heal.w14.wry.066"] = {
		"Chiusa, e ci brontolerò sopra per un po'. Brontolare è la via d'uscita dello spavento.",
		"Borbotta, borbotta. Non è malumore: è lo spavento che cerca la porta.",
	},
	["heal.w14.wry.067"] = {
		"Più facile sgridare che ammettere quanto mi ha spaventato.",
		"Una parola brusca costa meno che confessare lo spavento. Quindi, parole brusche.",
	},
	["heal.w14.wry.068"] = {
		"Nessuno deve sapere che le mani mi tremavano finché non si è chiusa.",
		"Le mani hanno tremato dall'inizio alla fine. Ora possono smettere: nessuno ha visto.",
	},
	["heal.w14.wry.069"] = {
		"Parole ruvide, mani ferme. Se mai uscissero quelle dolci, vorrebbe dire che è andata male.",
		"Le parole gentili restano sotto chiave. Sono per i finali brutti.",
	},
	["heal.w14.wry.070"] = {
		"La preoccupazione mi esce di bocca vestita da lamentela. Così viaggia meglio.",
		"Tradotto dal brontolio: ho avuto paura, e adesso no.",
	},
	["heal.w14.wry.071"] = {
		"C'è chi cura con parole dolci. Le mie escono storte, ma la cura è la stessa.",
		"Le parole sono spigolose, il lavoro no. Funziona così.",
	},
	["heal.w14.wry.072"] = {
		"Se un giorno qualcuno mi pagasse per questi, mi ritirerei in un posto senza spigoli.",
		"Una moneta per ogni buco richiuso e avrei una fortezza. Con le pareti imbottite.",
	},
	["heal.w14.wry.073"] = {
		"Ricucire, sgridare, ricominciare. È un mestiere. Non dei migliori.",
		"Rattoppare, rimproverare, rimandare indietro. In qualche modo è la mia vocazione.",
	},
	["heal.w14.wry.074"] = {
		"Troppo vicino. La sgridata può aspettare che le mani smettano di essere così prudenti.",
		"Per poco non mi scappava. Ci andrò giù duro dopo, a mani ferme.",
	},
	["heal.w14.wry.075"] = {
		"Chi ha fatto i corpi così facili da rompere mi deve delle scuse.",
		"Che cose fragili, i corpi. Chi li ha progettati non ha mai dovuto ripararne uno.",
	},
	["heal.w14.wry.076"] = {
		"Ricucita. E adesso andrà a rifare esattamente la stessa cosa. Ci scommetterei.",
		"Chiusa. E via, verso gli stessi guai di prima. Ovviamente.",
	},
	["heal.w14.wry.077"] = {
		"Meglio arrabbiarsi coi vivi che fare i complimenti ai morti.",
		"Sgridare è un lusso. Serve qualcuno di vivo che ascolti.",
	},
	["heal.w14.wry.078"] = {
		"Chissà dove c'è qualcuno che cura soltanto gente prudente. Spero che apprezzi la fortuna.",
		"Ci sarà pure qualcuno che rattoppa solo i prudenti. Che fortuna, la sua.",
	},
	["heal.w14.wry.079"] = {
		"borbotta qualcosa di poco gentile sull'imprudenza per tutto il tempo, e non smette finché il lavoro non è fatto a dovere.",
		"brontola senza sosta mentre lavora; il lavoro, però, è accurato.",
	},
	["heal.w14.wry.080"] = {
		"schiocca la lingua in segno di disapprovazione, poi ripara il danno comunque, con cura e per bene.",
		"fa un verso seccato davanti al danno, poi lo ripara con gran cura.",
	},
	["heal.w14.wry.081"] = {
		"fulmina {target} con lo sguardo, poi chiude la ferita con una dolcezza che smentisce l'occhiataccia.",
		"guarda storto la ferita, come un insulto, e la ripara con mani leggere.",
	},
	["heal.w14.wry.082"] = {
		"ripara la ferita con l'espressione di chi somma un conto lunghissimo.",
		"lavora con la faccia acida del bottegaio che fa il totale di un debito che nessuno pagherà.",
	},
	["heal.w14.wry.083"] = {
		"scuote piano la testa davanti al danno, come davanti a una pentola lasciata traboccare.",
		"osserva il danno con stanca incredulità, poi si mette all'opera.",
	},
	["heal.w14.wry.084"] = {
		"a ferita chiusa, alza un dito ammonitore: una predica intera, senza una parola.",
		"a lavoro finito solleva un dito severo, e lascia che sia il silenzio a sgridare.",
	},
	["heal.w14.wry.085"] = {
		"rimette in sesto {target} con una cura spiccia e impaziente, borbottando per tutto il tempo.",
		"rattoppa il danno in fretta e con precisione, brontolando cupamente.",
	},
	["heal.w14.wry.086"] = {
		"a dolore passato, squadra {target} con gli occhi stretti, come chi decide se sgridare subito o rimandare.",
		"scruta il lavoro finito a occhi stretti, e rimanda la predica a dopo.",
	},
	["heal.w14.wry.087"] = {
		"finisce di ricucire e si spolvera le mani con l'aria di chi ne riparlerà più tardi.",
		"chiude la ferita, poi incrocia le braccia: arriveranno due paroline.",
	},
	["heal.w14.wry.088"] = {
		"dà un'occhiata al danno e fa un piccolo verso sofferto, come un artigiano che trova un graffio su un lavoro finito.",
		"fa una smorfia davanti al danno, come un calzolaio a una cucitura saltata.",
	},
	["heal.w14.wry.089"] = {
		"pronuncia il nome di {target} una volta sola, col tono secco di un rimprovero, e la ferita comincia a chiudersi.",
		"sbotta una sola parola di rimprovero, poi ricuce senza aggiungerne altre.",
	},
	["heal.w14.wry.090"] = {
		"tiene il broncio finché il pericolo non passa, e solo allora lo molla.",
		"aggrotta la fronte per tutto il tempo, e si rilassa soltanto quando la ferita si chiude.",
	},
}, "base_spells")
