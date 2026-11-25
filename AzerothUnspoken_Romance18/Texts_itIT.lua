-- Testi italiani degli esempi di Romance 18+ (ADR 0061, passo R4); le regole sono in Registry.lua. Maturi, mai
-- espliciti nei dettagli: solo adulti, sempre consenso, nulla che riguardi un minore. {other} è il nome del PNG,
-- {g:} si accorda con il personaggio.
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("romance18_base", function()
	AU:AddTexts("itIT", {
		["r18.welcome.t3.n1"] = {
			"Sbarra la porta e lascia la candela. Ti desidero dall'ora di cena, e ho smesso di fingere il contrario. Vieni qui.",
			"Sì. Avvicinati, piano. Stanotte voglio imparare il ritmo del tuo respiro sul mio collo.",
			"La locanda dorme. Resta, e lascia che la notte sia nostra finché la finestra non si fa grigia.",
		},
		["r18.welcome.t3.n2"] = {
			"Ci hai messo un po' a chiedere. Stavo per spegnere la candela e chiedertelo io.",
			"Prima la tua armatura, poi la mia. Stanotte non mi faccio baciare attraverso una corazza.",
			"È un invito? Bene. Accetto, e non ho intenzione di dormire molto.",
		},
		["r18.welcome.t3.beloved"] = {
			"Vieni a letto, cuore mio. Ogni notte con te sembra ancora la prima, solo più sicura.",
			"Amore mio. Lascia il mondo fuori dalla porta; qui dentro ci sei solo tu, e tutto di me.",
			"Ti ho promesso i miei giorni. Le notti sono sempre state tue. Vieni, e prenditi il tuo tempo.",
		},
		["r18.cold.t3.n1"] = {
			"Non stanotte, amore. La strada mi ha tolto ogni forza. Stenditi accanto a me e stringimi soltanto; il resto può aspettare.",
			"Ti desidero, davvero, ma riesco a malapena a tenere gli occhi aperti. Chiedimelo all'alba, e magari sarò io a chiedertelo.",
			"Domani, te lo prometto. Stanotte solo il tuo calore accanto a me, e il sonno.",
		},
		["r18.refuse.t3.n1"] = {
			"No, amore. Non questo, non stanotte. Tra noi non cambia nulla; siediti un po' con me, e mi basta.",
			"Ti sto dicendo di no, e so che lo ascolterai. Ti amo esattamente quanto un attimo fa.",
			"No. Stanotte preferisco solo parlare, accanto al fuoco. Resta, se ti va; mi farebbe molto piacere.",
		},
		["r18.scene.vow.open.t3"] = {
			"Di sotto la locanda tace, e l'ultima candela allunga le vostre ombre sulle assi. {other} siede sul bordo del letto, l'armatura messa da parte, e ti guarda in un modo che non hai mai visto: senza difese, in attesa. Le parole che porti da giorni sono lì. Attraversi la stanza, prendi le mani di {other} tra le tue, e la domanda sale tra voi come il fiato in una notte fredda: mi vuoi, per sempre?",
			"La pioggia batte piano sulle imposte, e il fuoco è ridotto a una brace rossa. {other} tace al tuo fianco da molto, e ne senti ogni respiro. Non hai mai desiderato nulla come desideri questo: non una notte, ma tutte. Il cuore ti batte forte nel silenzio. Ti volti, incontri lo sguardo di {other} e lasci che la promessa prenda forma nel buio tra voi, incompiuta, in attesa di risposta.",
		},
		["r18.scene.vow.welcome.t3"] = {
			"{other} risponde prima che tu finisca, un sì sussurrato sulle tue labbra e poi un bacio che non ha fretta di finire. Due mani trovano fibbie che avevi dimenticato; una risata piano, incerta, quando una si incastra. La candela vacilla. Ti lasci portare nel calore, nella lenta certezza di chi ha scelto te e lo intende davvero, e la notte si chiude su di voi come acqua profonda. Il resto si dice senza parole.",
			"Il sì arriva come una risata, luminosa e con gli occhi lucidi, e poi {other} ti bacia come per sigillare la promessa prima che il mondo la senta. Una mano cerca la lampada, invano. I mantelli cadono dove cadono. C'è il calore di {other} contro di te, il tuo nome in un sussurro, la locanda zitta attorno come un respiro trattenuto, e poi solo il buio e voi due, senza fretta, finché la luna non scivola oltre la finestra.",
		},
		["r18.inner.welcome.t3"] = {
			"{g:Desiderato|Desiderata}. Non solo per stanotte: {g:desiderato|desiderata}. Tieni stretto il pensiero, come una brace tra le mani.",
			"Rallenta. Ricorda tutto questo. Ogni singolo respiro.",
			"Ecco cosa vuol dire essere {g:scelto|scelta}, e scegliere a propria volta.",
		},
		["r18.inner.refuse.t3"] = {
			"Non stanotte, dunque. Scopri che non ti dispiace; stringere e lasciarsi stringere è già una risposta.",
			"Un no, detto con amore. Lo accogli così come ti è stato dato, e ricambi lo stesso amore.",
			"Ci saranno altre notti. Questa può essere semplicemente dolce.",
		},
	}, "romance18_base")
end)
