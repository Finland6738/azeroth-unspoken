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
	["sil.a.attack.w10.001"] = {
		"Rintanati sotto la sabbia!",
		"Mastica questo!",
	},
	["sil.a.battle.w10.001"] = {
		"Fuori dalla sabbia e dritto sulla mia strada. Pessima scelta.",
		"Sabbia negli occhi e tu davanti alla faccia. A una delle due posso rimediare.",
		"Cenarion Hold è alle mie spalle. Di qui non passi.",
	},
	["sil.a.battle.w10.002"] = {
		"Un settario. Occhio alle mani: borbottano prima di colpire.",
		"Twilight's Hammer. Spezza il canto prima che finisca, e il resto è facile.",
		"Settario! La tua fine del mondo comincia da te.",
	},
	["sil.a.battle.w10.003"] = {
		"si libera con un calcio dalla sabbia mentre l'insetto ne erompe fuori, mandibole spalancate.",
		"si pianta contro la carica di chitina e zampe, sulla sabbia che cede.",
	},
	["sil.a.battle.w10.004"] = {
		"Sabbia e vento con un rancore. Ti ha chiamato la setta; io ti rimando indietro.",
		"Un altro animaletto della setta. Torna nella fossa da cui ti hanno tirato fuori!",
	},
	["sil.a.journey.w10.001"] = {
		"A terra a Cenarion Hold. Il caldo sale dalla sabbia come dallo sportello aperto di un forno, e l'ippogrifo non sembra più contento di me.",
		"Con i piedi a Silithus. Primo respiro: polvere. Secondo: altra polvere. Al terzo smetto di contare.",
		"Stivali nella sabbia, alla Hold. L'ippogrifo si scrolla, e dalle penne gli cade una piccola duna.",
	},
	["sil.a.landmark.w10.001"] = {
		"{landmark}. Elfi della notte e draghi l'hanno innalzato insieme, mille anni fa. Ai suoi piedi mi sento molto giovane e molto {g:piccolo|piccola}.",
		"Lo Scarab Wall. Ogni sua pietra è stata posata contro ciò che c'è dietro. Ne tocco una, una volta sola, per fortuna.",
	},
	["sil.a.lowhp.w10.001"] = {
		"Torno alla Hold, dovessi strisciare per tutta la strada!",
		"Acqua, fiato, un po' di fortuna. Mi va bene una qualsiasi!",
	},
	["sil.a.lowhp.w10.002"] = {
		"Caldo in testa, sangue negli occhi. Rallenta. Ragiona.",
		"Le dune ondeggiano. No, non loro. Sono io. Calma.",
	},
	["sil.a.muse.w10.001"] = {
		"A Cenarion Hold un druido tauren e un druido elfo della notte dividono un tavolo pieno di mappe e discutono a bassa voce. Il Circle è più antico della lite fra le nostre fazioni.",
		"Il Cenarion Circle accoglie druidi di entrambe le parti. Quaggiù curano la stessa terra ferita, e si scambiano le erbe senza badare ai colori dell'altro.",
		"Druidi dell'Orda dentro Cenarion Hold. All'inizio fa un effetto strano. Poi i silithid arrivano oltre le dune, e a nessuno importa più chi abbia giurato a chi.",
	},
	["sil.a.muse.w10.002"] = {
		"Mille anni fa gli elfi della notte combatterono qui contro i Qiraji e vinsero a stento. I druidi ne parlano con cautela, come di un debito mai saldato.",
		"La Guerra delle Sabbie Mobili finì con un muro e un sigillo, non con una vittoria. I kaldorei lo sanno. Lo senti da come pronunciano piano il nome di Ahn'Qiraj.",
	},
	["sil.a.muse.w10.003"] = {
		"Da Ironforge dicono che l'Alleanza sta facendo scorte: bende, lingotti, casse di viveri. Nessuno dice a cosa servano, ma tutti guardano a sud mentre non lo dicono.",
		"A Cenarion Hold si parla di porte, di gong e di un esercito che si raduna nelle nostre terre. Voci, per lo più. Ma a Silithus le voci hanno il vizio di avverarsi.",
		"Se le porte di Ahn'Qiraj dovessero riaprirsi, l'Alleanza intende farsi trovare pronta. Così dicono i quartiermastri, almeno, mentre contano i lingotti di rame.",
	},
	["sil.a.muse.w10.004"] = {
		"Il Twilight's Hammer lascia i suoi accampamenti pieni di tavolette e pagine scarabocchiate. Quasi tutto è delirio sul mondo che si spacca. Una parte sembra un piano, ed è peggio.",
		"Negli accampamenti della setta ci sono pietre erette che vibrano quando ci passi accanto. Qualunque cosa il Twilight's Hammer voglia evocare attraverso di esse, preferirei che restasse dov'è.",
	},
	["sil.a.muse.w10.005"] = {
		"Guarda uno sciame di silithid abbastanza a lungo e smetti di vedere insetti. Vedi un'unica creatura con mille zampe, e sta pensando.",
		"I silithid non combattono come bestie. Arrivano a ondate, si ritirano e tornano, come se qualcosa nel profondo dell'alveare tenesse il conto delle perdite.",
	},
	["sil.a.muse.w10.006"] = {
		"I forni dei fornai sono più freschi di così. E comunque il pane verrebbe fuori mezzo di sabbia.",
		"Qualcuno dica al deserto che può smettere. Sono {g:cotto|cotta} a puntino.",
	},
	["sil.a.muse.w10.007"] = {
		"I nani di Bronzebeard Encampment scavano in mezzo a tutto questo, tranquilli come se gli alveari fossero una diceria. Nani e pietre antiche: niente riesce a separarli.",
		"Perfino qui ci sono nani con le pale nella sabbia. Per un nano ogni rovina è una biblioteca, e Silithus è piena di libri vecchissimi.",
	},
	["sil.a.muse.w10.008"] = {
		"rovescia uno stivale e guarda uscirne un rivolo di sabbia, poi se lo rimette con aria rassegnata.",
		"si lega una striscia di stoffa su naso e bocca contro la polvere e riprende a camminare, gli occhi ridotti a fessure.",
	},
	["sil.a.muse.w10.009"] = {
		"Quaggiù Stormwind sembra una storia della vita di qualcun altro. Campi verdi, strade di pietra, pioggia. Mi accontenterei di una qualunque delle tre.",
		"Il cuore dell'Alleanza è molto più a nord. Qui siamo una manciata, a Cenarion Hold, a dividere mura e acqua con chiunque altro sia venuto a tenere la linea.",
	},
	["sil.a.muse.w10.010"] = {
		"Perché il Twilight's Hammer si accampa così vicino agli alveari senza farsi divorare? O hanno una gran fortuna, o laggiù qualcosa li conosce.",
		"I settari e i silithid si lasciano in pace a vicenda. In un deserto dove tutto mangia tutto, questa pace è la cosa più spaventosa che ci sia.",
	},
	["sil.a.muse.w10.011"] = {
		"Qualcuno deve stare fra gli alveari e il resto di Kalimdor. Per ora tocca a chi difende Cenarion Hold.",
		"Che gli alveari ronzino pure. La Hold è ancora in piedi, e noi con lei.",
	},
	["sil.a.npc_meet.w10.001"] = {
		"A nord, per favore, da qualche parte dove ci sia del verde. L'ippogrifo sembra impaziente quanto me.",
		"Portami sopra le dune. Gli alveari voglio vederli da molto in alto, e molto in fretta.",
	},
	["sil.a.npc_meet.w10.002"] = {
		"Otri d'acqua, e tanti. Tutto il resto che vende questo mercante, a Silithus, è un lusso.",
		"Questo mercante ha visto entrare barcollando dalle dune ogni genere di viaggiatore. Niente di quello che compro sorprenderà nessuno.",
	},
	["sil.a.quest_complete.w10.001"] = {
		"Fatto. Quaggiù non si spreca niente, tantomeno l'aiuto.",
		"Finito. Un cenno, una riga in un registro, e di nuovo fuori nel caldo. A Silithus questo è un grazie.",
		"Sistemato. Silithus non è più gentile per questo, ma è un po' meno affollata.",
	},
	["sil.a.quest_complete.w10.002"] = {
		"Ditelo a Ironforge e a Stormwind: l'Alleanza ha fatto la sua parte nel deserto.",
		"Fatto. Un motivo in più perché Cenarion Hold sia contenta che l'Alleanza sia venuta.",
	},
	["sil.a.quest_complete.w10.003"] = {
		"scuote la sabbia dal sacchetto della ricompensa prima di metterlo via: è già un'abitudine.",
		"accetta il compenso, poi se ne sta immobile per un po', lasciando passare il vento caldo.",
	},
	["sil.a.quest_progress.w10.001"] = {
		"Ecco tutto. Ora di nuovo attraverso le dune, e che la sabbia resti tranquilla sotto i piedi.",
		"Tutto raccolto. Silithus mi è costata un mucchio d'acqua per questo: che almeno serva.",
	},
	["sil.a.subzone_enter.w10.001"] = {
		"{subzone}. Mi fermo ad ascoltare prima di proseguire. A Silithus le orecchie vedono più lontano degli occhi.",
		"{subzone}. Qui la sabbia è uguale a quella di ogni altro posto, ed è proprio questo che mi preoccupa.",
		"{subzone}. Prima un sorso d'acqua, poi un'occhiata in giro. A Silithus l'ordine conta.",
	},
	["sil.a.victory.w10.001"] = {
		"Torna nella sabbia. Prima o poi ti avrebbe preso comunque.",
		"E uno. Il conto lo tiene il deserto, non io.",
		"Stavolta resta sotto. Fra le dune c'è posto.",
	},
	["sil.a.victory.w10.002"] = {
		"Una cosa in meno fra Cenarion Hold e un po' di pace.",
		"Un po' di sabbia ripulita intorno alla Hold. I druidi potranno respirare ancora un momento.",
	},
	["sil.a.victory.w10.003"] = {
		"si accovaccia a bere, e l'acqua sa della polvere della lotta.",
		"si ripara gli occhi dalla polvere e ascolta. Sotto la sabbia, qualcosa continua a ticchettare.",
	},
	["sil.a.victory.w10.004"] = {
		"Morto, ma all'alveare non importa. Ne manderà un altro, e un altro ancora, e di questo non sentirà la mancanza.",
		"A terra. Per ogni silithid che cade, l'alveare depone cento uova.",
	},
	["sil.a.weather_change.w10.001"] = {
		"si copre il viso con un panno mentre arriva la tempesta di sabbia, un muro bruno che inghiotte le dune una dopo l'altra.",
		"volta le spalle al vento che si alza, mentre l'aria si riempie di sabbia pungente e gli alveari svaniscono nella foschia.",
		"socchiude gli occhi contro la polvere sferzante, e ogni lembo di pelle scoperta viene raschiato a vivo.",
	},
	["sil.h.attack.w11.001"] = {
		"Da Cenarion Hold, con i saluti dell'Orda!",
		"Il deserto ha fame. Andrai bene tu!",
	},
	["sil.h.battle.w11.001"] = {
		"Avanti, allora. La sabbia scotta già; facciamola scottare di più.",
		"Uscire dalle dune per questo? Pessimo affare.",
		"Niente riparo, niente scampo, né per te né per me. Bene. Chiudiamola qui, allo scoperto.",
	},
	["sil.h.battle.w11.002"] = {
		"Twilight's Hammer! L'Orda vi ha cacciati via tanto tempo fa.",
		"Gli avanzi di Cho'gall. Vediamo se combatti meglio di come canti.",
		"Il tuo clan un tempo marciava con l'Orda. Oggi la ritrova, e la rimpatriata non gli piacerà.",
	},
	["sil.h.battle.w11.003"] = {
		"Prima le zampe. Un silithid che non sta in piedi non può sciamare.",
		"Guarda le mandibole, non le zampe. Quando si spalancano, colpisci subito lì sotto.",
	},
	["sil.h.battle.w11.004"] = {
		"si mette il vento alle spalle e lascia che la sabbia voli in faccia al nemico.",
		"scivola di lato lungo la duna finché ha il vento alle spalle, e ora la sabbia punge gli occhi del nemico, non i suoi.",
	},
	["sil.h.journey.w11.001"] = {
		"Su, via da Cenarion Hold. Il wind rider sale deciso, come se il caldo lo inseguisse, e gli alveari si riducono a verruche scure sulla sabbia.",
		"Finalmente in aria. Sotto, Silithus diventa una mappa gialla e nera, e quassù il ronzio degli alveari non mi raggiunge.",
		"Il wind rider punta a nord a gran colpi d'ala, e io lo lascio fare. Voltandomi, lo Scarab Wall è l'ultima cosa a sparire nella foschia.",
	},
	["sil.h.landmark.w11.001"] = {
		"Cenarion Hold. Wind rider e ippogrifi si appollaiano a pochi metri di distanza e fingono di non vedersi. I loro cavalieri fanno più o meno lo stesso.",
		"{landmark}. Da una parte i wind rider tengono il muso, dall'altra gli ippogrifi si lisciano le penne, e i druidi mantengono la pace fra loro, e fra noi.",
	},
	["sil.h.lowhp.w11.001"] = {
		"Le mie ossa in questa sabbia non ci restano!",
		"Non per gli scorpidi. Non oggi. In piedi!",
	},
	["sil.h.lowhp.w11.002"] = {
		"Il wind rider è lontano. La lotta è qui. Resta nella lotta.",
		"Tutto ondeggia. Restringi il campo: questo nemico, questo respiro, questo passo.",
	},
	["sil.h.muse.w11.001"] = {
		"Un tempo il Twilight's Hammer era uno dei clan degli orchi, nelle vecchie guerre, prima di marcire in una setta. A vedere le loro tuniche quaggiù, capisco perché l'Orda quel nome lo pronuncia di rado.",
		"Il clan di Cho'gall marciava con la vecchia Orda, e guarda com'è finito: pazzi in tunica che aspettano nella sabbia che il mondo si spacchi. Non tutti i clan hanno ritrovato la strada.",
		"Il Twilight's Hammer nacque come un clan qualunque, con il suo stendardo. Oggi accoglie chiunque voglia il mondo in pezzi, e l'Orda quel capitolo della sua storia non lo racconta volentieri.",
	},
	["sil.h.muse.w11.002"] = {
		"Uno sciamano di passaggio alla Hold diceva che qui la terra risponde piano, come una voce rimasta roca a forza di gridare. Il vento invece risponde subito, ed è furioso.",
		"Gli sciamani che passano dalla Hold dicono che gli spiriti di questa terra non ne possono più di farsi trascinare fuori dalla setta. Ci credo. Il vento frusta chiunque gli capiti più vicino.",
	},
	["sil.h.muse.w11.003"] = {
		"Mi lamentavo del caldo di Orgrimmar. Orgrimmar, ritiro tutto. Eri una brezza fresca.",
		"Durotar è secco. Le Barrens sono secche. Silithus è quello che il secco sogna di diventare da grande.",
	},
	["sil.h.muse.w11.004"] = {
		"A Hyjal l'Orda e gli elfi della notte difesero la stessa montagna, perché l'alternativa era la fine di tutto. Guarda quel muro abbastanza a lungo e cominci a chiederti se si arriverà di nuovo a tanto.",
		"Chi ha combattuto a Hyjal racconta che una volta Orda e Alleanza stettero fianco a fianco, quando in palio c'era il mondo intero. Se quelle porte si apriranno, qualcuno dovrà ricordarsi come si fa.",
		"La Terza Guerra finì con vecchi nemici spalla a spalla sotto l'Albero del Mondo. Silithus ha la stessa aria: una battaglia troppo grande per un solo stendardo.",
	},
	["sil.h.muse.w11.005"] = {
		"srotola la fascia dall'impugnatura dell'arma, ne scuote fuori una piccola duna e la riavvolge più stretta.",
		"passa il pollice lungo ogni fibbia e ogni cinghia, raschiando via la sabbia prima che si mangi il cuoio.",
		"si strofina gli occhi, sbatte forte le palpebre e torna a scrutare le dune fra le ciglia incrostate di polvere.",
	},
	["sil.h.muse.w11.006"] = {
		"si ferma a guardare uno scorpide che si trascina su una duna, la coda alzata come un punto di domanda, e lo lascia andare per la sua strada.",
		"si immobilizza mentre la sabbia a pochi passi trema e poi si assesta, e da quel punto si tiene ben alla larga.",
	},
	["sil.h.muse.w11.007"] = {
		"Non tutti i silithid qui fuori combattono. Alcuni portano e basta: sabbia, avanzi, cose che preferisco non nominare, tutto giù negli alveari. Qualunque cosa viva laggiù, qualcuno la sta nutrendo.",
		"Guarda quelli piccoli. Trascinano e trascinano verso i cumuli, e non si fermano mai. Là sotto qualcosa ingrassa con tutto quel lavoro.",
	},
	["sil.h.muse.w11.008"] = {
		"Il vento sposta una duna e lascia spuntare una curva di chitina, sbiancata ed enorme. Mille anni, forse. La Guerra delle Sabbie Mobili non è sepolta così a fondo come si crede.",
		"Qui la sabbia restituisce le cose: una punta di lancia arrugginita, un guscio spaccato, un osso troppo lungo per qualunque creatura viva oggi. La vecchia guerra ha lasciato i suoi caduti dove sono rimasti.",
	},
	["sil.h.muse.w11.009"] = {
		"Silithus sembra lontana da tutto, ma non lo è. A nord ci sono Feralas, poi Thousand Needles, poi le Barrens e Mulgore. Se lo sciame si metterà in marcia, marcerà verso le case dell'Orda.",
		"A Orgrimmar c'è chi ne parla come del deserto di qualcun altro. Ma sta sullo stesso continente di Orgrimmar. Ogni alveare qui è una porta che si apre verso nord.",
	},
	["sil.h.muse.w11.010"] = {
		"Oltre l'ultimo accampamento non c'è altro che il fruscio della sabbia che scivola giù da una duna. Mi sono {g:sentito|sentita} più {g:solo|sola} in una città affollata, e ho avuto più paura in posti più silenziosi.",
		"Niente voci, niente uccelli, niente acqua. Solo la sabbia che scorre, e io. Silithus è un buon posto per scoprire cosa pensi quando nessuno ti ascolta.",
	},
	["sil.h.npc_meet.w11.001"] = {
		"L'oste versa a Orda e Alleanza dalla stessa brocca. Io bevo, e non chiedo chi abbia toccato la tazza prima di me.",
		"Un letto dentro mura di druidi e una brocca d'acqua che non è calda. Quaggiù l'oste è la cosa più simile a un amico che le due fazioni abbiano in comune.",
	},
	["sil.h.npc_meet.w11.002"] = {
		"Un altro lavoro nella sabbia? Dimmi dove, e quanto è lontano dall'acqua.",
		"Fammi indovinare: qualcosa vicino agli alveari. È sempre vicino agli alveari.",
	},
	["sil.h.quest_complete.w11.001"] = {
		"Fatto. Se qualcuno mi cerca, sono nell'unico angolo d'ombra della Hold.",
		"Finito. Pagatemi in acqua: le monete pesano uguale e la sete non la tolgono.",
	},
	["sil.h.quest_complete.w11.002"] = {
		"Fatto. Le notizie viaggiano dalla Hold a Thunder Bluff lungo le strade dei druidi. Che dicano che ha aiutato una mano dell'Orda.",
		"Finito. Il Circle tiene i suoi conti, e i tauren che ne fanno parte si ricorderanno quale parte ha dato una mano.",
		"Sistemato. Un druido lo mette per iscritto, e un giorno a Mulgore si saprà che nel deserto l'Orda si è resa utile.",
	},
	["sil.h.quest_complete.w11.003"] = {
		"ripone la ricompensa e riannoda la stoffa alla gola, gli occhi già sulle dune.",
		"accetta il compenso con un breve cenno, poi resta un momento immobile, lasciando che la sabbia scivoli via dai capelli.",
	},
	["sil.h.quest_progress.w11.001"] = {
		"C'è tutto. Torno alla Hold prima che il deserto decida di riprenderselo.",
		"Tutto raccolto. Lo zaino pesa di più, e anch'io, con la sabbia in ogni piega dei vestiti.",
	},
	["sil.h.subzone_enter.w11.001"] = {
		"raggiunge {subzone} e si ferma a leggere la sabbia: tracce, tane, la debole increspatura di qualcosa che si muove sotto.",
		"varca il limite di {subzone} col vento alle spalle e rallenta, in ascolto del terreno.",
		"mette piede nelle sabbie di {subzone}, lisce e senza un'impronta, e non se ne fida per niente.",
	},
	["sil.h.victory.w11.001"] = {
		"Questo è per gli scorpidi. A Silithus sono gli unici che mangiano bene.",
		"Ora è la cena di qualcuno. Il deserto non apparecchia mai, ma non sparecchia nemmeno.",
		"Giù. Fra poco qualcosa salirà dalla sabbia a prenderselo.",
	},
	["sil.h.victory.w11.002"] = {
		"Uno in meno che possa risalire verso Feralas e le strade dell'Orda.",
		"Questo l'erba di Mulgore non la vedrà mai. Poca consolazione, ma me la prendo.",
	},
	["sil.h.victory.w11.003"] = {
		"pulisce l'arma strofinandola con una manciata di sabbia, l'unica cosa che a Silithus non manca mai.",
		"strofina l'arma con sabbia asciutta finché luccica, poi guarda gli alveari.",
	},
	["sil.h.victory.w11.004"] = {
		"Una voce in meno nel coro della setta. Dovranno trovarsi un'altra gola.",
		"Un'altra tunica nella sabbia. Al Twilight's Hammer gli sciocchi non mancano mai, ma oggi ne ha uno di meno.",
	},
	["sil.h.weather_change.w11.001"] = {
		"L'orizzonte si fa marrone e si avvicina. Tempesta di sabbia. Stoffa sul viso, testa bassa, e contare i passi.",
		"Eccola che arriva: il vento solleva mezzo deserto e lo scaglia di traverso. Là dentro un silithid potrebbe arrivarmi addosso senza farsi vedere. E io a lui.",
		"L'aria si fa densa e granulosa, e la duna più vicina scompare. Punge tutto; non resta che piegarsi contro il vento e aspettare.",
	},
]==])
