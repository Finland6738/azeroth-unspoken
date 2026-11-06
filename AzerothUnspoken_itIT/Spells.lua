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
}, "base_spells")
