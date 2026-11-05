-- Italian texts of the regional pack kalimdor_silithus (content wave W04). The rules are in AzerothUnspoken_Kalimdor/Silithus.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("silithus", "itIT", "kalimdor_silithus", [==[
	["sil.a.attack.01"] = {
		"Per Cenarion Hold, e per l'Alleanza!",
		"Silithus può riprenderti!",
	},
	["sil.a.battle.01"] = {
		"Qui allo scoperto, allora. Niente mura, niente trucchi: solo tu, io e la sabbia.",
		"Silithus non alleva altro che guai, ed eccone un altro. Va bene.",
		"Tieni la posizione. In questa sabbia perde chi inciampa per primo.",
	},
	["sil.a.battle.02"] = {
		"Silithid. Dove ce n'è uno, ce ne sono altri venti sotto la sabbia. Sbrigati.",
		"Chitina e mandibole. Mira alle giunture: il guscio devia le lame.",
	},
	["sil.a.battle.03"] = {
		"Twilight's Hammer! I tuoi padroni vogliono il mondo in pezzi. Io preferisco fare a pezzi te.",
		"Togliti quella tunica e vattene. No? Allora facciamolo nel modo difficile.",
	},
	["sil.a.journey.01"] = {
		"si stacca da Cenarion Hold, e le mura del campo si riducono a un anello chiaro in un mare di sabbia gialla.",
		"si alza sopra il deserto, con gli alveari là sotto come formicai sparsi e lo Scarab Wall come una linea scura a sud.",
	},
	["sil.a.landmark.01"] = {
		"Cenarion Hold. Mura, acqua e druidi che sembrano non dormire da un mese.",
		"{landmark}. L'unico posto di Silithus dove posso appoggiare la schiena a un muro e chiudere gli occhi un momento.",
	},
	["sil.a.lowhp.01"] = {
		"Non qui. Non in questa sabbia, con gli alveari così vicini.",
		"Non a Silithus. Mi rifiuto di finire come un altro cumulo fra le dune.",
		"No. Qualunque cosa succeda, in questo deserto non mi sdraio.",
	},
	["sil.a.muse.01"] = {
		"Sabbia del colore delle ossa vecchie e roccia come ferro bruciato. Silithus non è solo un deserto. È una ferita che non si è mai chiusa.",
		"Dune gialle, pietra nera e un ronzio nel terreno che non smette mai del tutto. Questa terra è malata, e lo sa.",
		"Sabbia pallida su roccia marcia. Certi deserti sono soltanto vuoti; questo sembra infetto.",
	},
	["sil.a.muse.02"] = {
		"Gli alveari spuntano dalla sabbia come le cime di torri sepolte. Non voglio sapere quanto vanno a fondo.",
		"Quei cumuli sono alveari, e i silithid là dentro sono più di quanti se ne possano contare. Il terreno stesso sembra cavo.",
		"Ogni alveare è una porta verso qualcosa di antico. Il Cenarion Circle li sorveglia come un guaritore sorveglia una febbre.",
	},
	["sil.a.muse.03"] = {
		"Sabbia negli stivali, sabbia fra i denti, sabbia in posti che non nomino. Silithus è generosa, in questo.",
		"Ho trovato sabbia in tasche che non sapevo di avere. Questo posto s'infila dappertutto.",
	},
	["sil.a.muse.04"] = {
		"Cultisti del Twilight's Hammer in tunica, accampati nella sabbia, a evocare cose che dovrebbero restare sepolte. Perché sempre le tuniche?",
		"Il Twilight's Hammer si accampa qui come se fosse roba sua, a evocare tempeste e di peggio. Qualcuno deve spezzare i loro cerchi.",
	},
	["sil.a.muse.05"] = {
		"Lo Scarab Wall regge da mille anni. Continuo a guardarlo come si guarda una diga con la piena che preme dietro.",
		"Dietro quel muro aspettano i Qiraji. Draghi ed elfi lo sigillarono tanto tempo fa, e ogni granello di sabbia qui sembra spingerci contro.",
	},
	["sil.a.muse.06"] = {
		"si ripara gli occhi dal riverbero e guarda oltre le dune, dove il calore piega l'aria in lente increspature.",
		"si ferma in cima a una cresta di sabbia, socchiudendo gli occhi contro il tremolio del caldo sopra la landa.",
	},
	["sil.a.muse.07"] = {
		"Col buio la sabbia schiocca e fruscia tutt'intorno. I silithid non dormono, e a quanto pare nemmeno io.",
		"La notte porta più vicino quel ticchettio. Me ne sto con la schiena contro una roccia a contare i rumori.",
		"Nelle ore buie le dune sono piene di piccoli rumori secchi, e ognuno ha delle zampe.",
	},
	["sil.a.npc_meet.01"] = {
		"Un tetto, un letto e acqua che non sa di sabbia. A Silithus, chi tiene una locanda è un piccolo miracolo.",
		"Ombra e una tazza fresca. Chi tiene questa locanda salva più viandanti di qualunque guaritore.",
		"Chi tiene la locanda mi porge l'acqua prima ancora che la chieda. Qui sanno cosa fa il deserto alla gente.",
	},
	["sil.a.quest_complete.01"] = {
		"Fatto. A Silithus ogni piccola vittoria è un granello di sabbia strappato agli alveari.",
		"Un altro compito finito. Il deserto non è più piccolo, ma qualcuno qui dorme un po' più tranquillo.",
		"Sistemato. Qui fuori nessuno chiede aiuto se non ne ha davvero bisogno.",
	},
	["sil.a.quest_complete.02"] = {
		"accetta la ricompensa, si sbatte la sabbia dalle maniche e guarda a sud, verso il muro.",
		"ringrazia con un cenno e strizza gli occhi verso le dune, misurando già il prossimo tratto di sabbia.",
		"mette via la ricompensa e beve un lungo sorso dalla borraccia prima che il caldo se la prenda.",
	},
	["sil.a.quest_progress.01"] = {
		"È l'ultimo. Ora a consegnarlo, prima che la sabbia mi riempia del tutto gli stivali.",
		"Trovato tutto. Meglio uscire dalle dune finché ho ancora acqua.",
	},
	["sil.a.subzone_enter.01"] = {
		"supera una duna e trova oltre un altro tratto di sabbia, spezzato da rocce nere e dalle bocche scure delle tane.",
		"scende in una nuova conca del deserto, dove la sabbia è increspata e l'aria ronza appena.",
		"passa fra due guglie di pietra consumate ed entra in un altro pezzo di Silithus, giallo e ostile come il precedente.",
	},
	["sil.a.victory.01"] = {
		"Finito. La sabbia ci sta già scivolando sopra, come su tutto il resto, qui.",
		"Fatto. Il vento l'avrà sepolto entro sera, come tutto il resto.",
	},
	["sil.a.victory.02"] = {
		"Una cosa in meno che striscia in questo deserto. Ne mancano solo qualche milione.",
		"Giù. Silithus non si accorgerà nemmeno che non ci sei più.",
	},
	["sil.a.victory.03"] = {
		"si scuote la sabbia dall'equipaggiamento e si toglie la polvere dagli occhi, mentre le dune tornano silenziose.",
		"sputa una boccata di polvere e si raddrizza, scrutando la sabbia in cerca della prossima cosa che si muove.",
	},
	["sil.h.attack.01"] = {
		"Questo è da parte dell'Orda!",
		"Fa abbastanza caldo? Eccone ancora!",
	},
	["sil.h.battle.01"] = {
		"Per l'Orda! Nemmeno questa sabbia maledetta mi rallenterà.",
		"Capiti bene. Il caldo mi ha già messo di cattivo umore: sei proprio quel che ci voleva.",
		"Fermati e combatti! Qui fuori non c'è ombra dove nascondersi.",
	},
	["sil.h.battle.02"] = {
		"pianta i piedi nella sabbia che scivola mentre il silithid si avvicina di corsa, sbattendo le mandibole.",
		"si volta mentre un silithid si lancia avanti su zampe ticchettanti, col guscio che luccica.",
	},
	["sil.h.battle.03"] = {
		"Un elementale, libero nella sabbia. Opera del culto, molto probabilmente. Chiunque l'abbia evocato, io lo abbatto.",
		"Furia elementale allo stato puro, trascinata in questo deserto da qualche rituale, ci scommetto. Disfiamo il loro lavoro.",
	},
	["sil.h.journey.01"] = {
		"Giù a Cenarion Hold. La viverna si scrolla la sabbia dalle ali, e io faccio lo stesso col colletto.",
		"A terra, nel caldo. Le mura della Hold sono la cosa più gradita di tutto il deserto.",
	},
	["sil.h.landmark.01"] = {
		"si ferma davanti allo Scarab Wall, con le sue grandi pietre scolpite che incombono sulla sabbia, e sente il silenzio al di là premere verso l'esterno.",
		"alza gli occhi verso l'immenso muro con i suoi scarabei di pietra, e verso la sabbia ai suoi piedi, stranamente immobile.",
	},
	["sil.h.lowhp.01"] = {
		"Troppo sangue, troppo caldo. La sabbia gira. Concentrati.",
		"Con questo caldo mi gira la testa. Un altro errore e gli spazzini mangeranno bene.",
		"Non qui, non così, non con gli alveari in ascolto.",
	},
	["sil.h.muse.01"] = {
		"A Silithus il vento non si ferma mai. Porta sabbia, caldo e un debole schiocchio secco da qualche punto sottoterra.",
		"Vento caldo, sabbia senza fine e quel rumore secco sotto le dune. Perfino l'aria, qui, sembra avere zampe.",
		"Un vento inquieto pieno di sabbia, e sotto un suono come di mille piccole mascelle al lavoro. Preferirei non ascoltarlo.",
	},
	["sil.h.muse.02"] = {
		"Southwind Village ormai è solo un nome. I silithid sono saliti dalla sabbia, e il villaggio è sprofondato.",
		"Un tempo a Southwind c'era un villaggio, con mura e pozzi. Gli alveari se lo sono preso, e il vento ha finito il lavoro.",
	},
	["sil.h.muse.03"] = {
		"Insetti grossi come kodo e sabbia in ogni cucitura dell'equipaggiamento. Silithus fa proprio di tutto per far sentire a casa la gente.",
		"Se questo deserto avesse un odore, sarebbe chitina calda. Ah, già. Ce l'ha.",
	},
	["sil.h.muse.04"] = {
		"I cultisti del Twilight's Hammer parlano della fine del mondo come di un giorno di festa. Mi piacerebbe rovinargliela.",
		"Fanatici in tunica fra le dune, che sognano il mondo spaccato in due. L'Orda ha già combattuto dei pazzi; questi non sono diversi.",
	},
	["sil.h.muse.05"] = {
		"Oltre lo Scarab Wall aspettano i Qiraji. Si sente anche da qui: pazienza, fame e una memoria lunghissima.",
		"Il muro a sud trattiene un impero di insetti e dei loro padroni. Ogni volta che lo guardo, controllo che sia ancora in piedi.",
	},
	["sil.h.muse.06"] = {
		"alza la borraccia e beve con parsimonia, gli occhi sulle dune.",
		"si ferma a bere, mandando giù piano per farla durare, mentre il vento caldo strattona cinghie e fibbie.",
		"si bagna le labbra dalla borraccia e la richiude in fretta, come se il deserto potesse rubare quel che resta.",
	},
	["sil.h.muse.07"] = {
		"Cenarion Hold accetta aiuto tanto dall'Orda quanto dall'Alleanza. Qui fuori i silithid sono un nemico più grande di tutti e due.",
		"Alla Hold i druidi non chiedono da che parte vieni, solo se sai combattere. Domanda giusta, a Silithus.",
		"Orda e Alleanza dividono le stesse mura a Cenarion Hold. Il deserto ha un modo tutto suo di ridimensionare le vecchie liti.",
	},
	["sil.h.npc_meet.01"] = {
		"Dovunque non ci sia sabbia, per favore. Se esiste un posto così.",
		"La tua viverna sembra stufa del caldo quanto me. Andiamocene tutti e due in un posto più verde.",
		"Portami via da Silithus. Non mi importa dove, basta che non sia qui.",
	},
	["sil.h.quest_complete.01"] = {
		"Fatto. L'Orda fa la sua parte, anche in questa fornace.",
		"Finito. Che a Cenarion Hold sappiano che l'Orda ha fatto il suo.",
		"Sistemato. Silithus si ricorderà che l'Orda è passata di qui, se si ricorda di qualcosa.",
	},
	["sil.h.quest_complete.02"] = {
		"Sistemato. Una preoccupazione in meno per qualcuno, in questo deserto, e qui ne hanno tutti a bizzeffe.",
		"Fatto. La mia ricompensa è soprattutto l'onore di avere sete per una buona causa.",
		"Concluso. Ci brinderò, appena trovo un'acqua che non sia mezza sabbia.",
	},
	["sil.h.quest_progress.01"] = {
		"Ecco, l'ultimo. Ora fuori dalle dune prima di seccarmi come il resto di questo posto.",
		"C'è tutto. È ora di consegnare, e di trovare un po' d'ombra lungo la strada.",
	},
	["sil.h.subzone_enter.01"] = {
		"Altra sabbia, altra roccia, altro ronzio sotto i piedi. Silithus si ripete, e niente di tutto questo è una buona notizia.",
		"Un altro tratto di deserto. Continuo ad ascoltare attraverso gli stivali, in cerca degli alveari.",
		"Un'altra conca, e la stessa minaccia secca. Ogni conca di Silithus sembra un posto dove qualcosa sta aspettando.",
	},
	["sil.h.victory.01"] = {
		"Fatto. Le dune inghiottono il rumore come se lo scontro non ci fosse mai stato.",
		"È finita. Il vento sta già cancellando le orme.",
	},
	["sil.h.victory.02"] = {
		"Torna all'alveare. Ah, no. Tu non vai più da nessuna parte.",
		"Di' al resto dello sciame che sto arrivando. Anzi, no: voglio fargli una sorpresa.",
	},
	["sil.h.victory.03"] = {
		"si passa l'avambraccio sulla fronte, spalmando sudore e sabbia, e si guarda intorno in cerca della prossima minaccia.",
		"si inginocchia un momento nella sabbia calda per riprendere fiato, poi si rialza con un grugnito.",
	},
]==])
