-- Testi di base in italiano: voci delle classi, su più eventi. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryClasses.lua.
local ADDON, NS = ...

NS:AddTexts("itIT", {
	["cls.war.battle.01"] = {
		"Ho fatto la pace con la morte molto tempo fa. Ora tocca a te.",
		"La paura l'ho lasciata sul mio primo campo di battaglia. Tu te la sei portata dietro, vedo.",
	},
	["cls.war.battle.02"] = {
		"Alzate gli scudi! Il muro siamo noi!",
		"Spalla contro spalla! Chi vuole passare, passa sopra di me!",
		{ "Stretti, gente. Nessuno resta scoperto.", depth = "natural" },
	},
	["cls.war.victory.01"] = {
		"Un'altra tacca sull'elsa. Comincio a finire lo spazio.",
		"Il braccio trema solo adesso, a cose fatte. Buon segno: ha avuto il buon senso di aspettare.",
	},
	["cls.war.lowhp.01"] = {
		"Ho ancora due mani e una lama. Basta e avanza.",
		"Mi hanno già {g:dato|data} per {g:finito|finita} altre volte. Sbagliavano anche allora.",
	},
	["cls.war.muse.01"] = {
		"Un'arma non chiede mai perché. È per questo che pesa così tanto.",
		"Affilo la lama ogni sera. È più facile che chiedermi a cosa serva.",
	},
	["cls.war.lvl.01"] = {
		"Le braccia più forti, la rabbia più calma. Ecco cosa insegna la guerra.",
		"Il colpo arriva un istante prima del pensiero, ormai. Non so se esserne {g:fiero|fiera}.",
		{ "Ogni cicatrice mi ha insegnato una parola nella lingua dell'acciaio. Oggi ne so pronunciare una in più.", depth = "elevated" },
	},
	["cls.pal.battle.01"] = {
		"Le tenebre hanno molti volti. La Luce ne ha uno solo, e oggi è il mio.",
		"Ciò che è guasto non regge a lungo davanti a una luce onesta. Vediamo quanto reggi tu.",
		{ "Per la Luce che veglia sui vivi: torna da dove sei venuto, e non voltarti.", depth = "elevated" },
	},
	["cls.pal.battle.02"] = {
		"Non temo il buio. Lo porto via con me, un passo alla volta.",
		"Il martello è pesante. Chi lo impugna dev'essere ancora più saldo.",
	},
	["cls.pal.victory.01"] = {
		"Giustizia è fatta. Che la misericordia faccia il resto.",
		"È finita. Ora si curano i feriti. Tutti, anche i loro.",
	},
	["cls.pal.lowhp.01"] = {
		"La Luce non mi ha mai promesso una vita lunga. Solo una vita giusta.",
		"Se devo cadere, che sia davanti a qualcuno. Mai dietro.",
		{ "Luce, non ti chiedo di risparmiarmi. Solo di restare in piedi finché servo.", depth = "elevated" },
	},
	["cls.pal.muse.01"] = {
		"Il martello è facile da sollevare. È la fede che a volte pesa come una montagna.",
		"Mi chiamano campione della Luce. Nessuno chiede cosa vedo la notte, quando la Luce tace.",
	},
	["cls.pal.heal.01"] = {
		"Non sei {og:solo|sola}. La Luce cammina con te, e io con lei.",
		"Appoggiati a me. Il resto lo porta la Luce.",
	},
	["cls.hun.battle.01"] = {
		"Ti rispetto, bestia. Per questo non sbaglierò il colpo.",
		"Bell'animale. Ti prometto un colpo pulito, niente di più e niente di meno.",
	},
	["cls.hun.battle.02"] = {
		"Lui morde, io tiro. Abbiamo un accordo.",
		"Tu tienilo occupato. Io scelgo il punto.",
	},
	["cls.hun.victory.01"] = {
		"Ben fatto, bestia mia. Stasera la parte migliore è tua.",
		"Hai fatto tutto tu, lo so. Alla locanda lo racconteremo in un altro modo.",
	},
	["cls.hun.lowhp.01"] = {
		"Indietro, bestia mia! Tieni la posizione, io copro la fuga!",
		"Via, via! Ci ritroviamo all'abbeveratoio, come sempre!",
	},
	["cls.hun.muse.01"] = {
		"Le orme dicono la verità più dei re. Basta saperle leggere.",
		"Un ramo spezzato, un ciuffo di pelo su un rovo. Il bosco scrive in piccolo, ma non mente.",
		{ "Prima delle parole c'erano le impronte. Chi impara a leggerle ascolta la lingua più vecchia del mondo.", depth = "elevated" },
	},
	["cls.hun.zone.01"] = {
		"Selvaggina, acqua, riparo. E qualcosa di grosso che non vuole essere visto.",
		"Vento da ovest, odore di pelo bagnato. Qui qualcuno caccia meglio di me. Per ora.",
	},
	["cls.rog.battle.01"] = {
		"Non è niente di personale. Di solito.",
		"Qualcuno mi ha pagato per questo. Tu no, purtroppo per te.",
	},
	["cls.rog.battle.02"] = {
		"Bel borsello. Peccato che tu non ne avrai più bisogno.",
		"Begli stivali. Li tengo d'occhio da un pezzo.",
	},
	["cls.rog.victory.01"] = {
		"Pulito, silenzioso, e nessuno ha visto niente. Come piace a me.",
		"Lavoro finito, niente da raccontare. È così che si fa bene questo mestiere.",
	},
	["cls.rog.lowhp.01"] = {
		"Momento perfetto per sparire. Se solo riuscissi a stare in piedi.",
		"Ricordami di non farlo mai più. Anzi, ricordamelo da lontano.",
	},
	["cls.rog.muse.01"] = {
		"Tutti hanno un segreto. Io vendo i loro.",
		"Le chiavi passano di mano più in fretta delle monete. Io so sempre in quale.",
	},
	["cls.rog.greet.01"] = {
		"Non mi hai visto arrivare? Bene. È il mio lavoro.",
		"Ciao. No, non ti seguivo. Andavo nella tua stessa direzione, tutto qui.",
	},
	["cls.pri.battle.01"] = {
		"Ho benedetto molte anime. Oggi ne congederò una.",
		"Pregherò per te. Dopo.",
	},
	["cls.pri.battle.02"] = {
		"La Luce mi ha voltato le spalle una volta. L'Ombra, mai.",
		"Il freddo nelle mie vene non chiede preghiere. Chiede solo di essere usato.",
	},
	["cls.pri.lowhp.01"] = {
		"Curo tutti. Chi cura me? Domanda vecchia, risposta sempre uguale.",
		"Ho tenuto in piedi tanti altri. Adesso tocca a me, e le ginocchia non ascoltano.",
	},
	["cls.pri.heal.01"] = {
		"Respira. La Luce è paziente, e io anche.",
		"Piano. Lascia che la Luce faccia la parte difficile.",
	},
	["cls.pri.rezo.01"] = {
		"Luce, rimanda indietro questa anima. Non ha ancora finito di sbagliare.",
		"Ancora un respiro, Luce. Uno solo: al resto ci penserà da sé.",
	},
	["cls.pri.pray.01"] = {
		"Luce, dammi la forza di consolare anche quando non ho più parole.",
		"Luce, stanotte non chiedo risposte. Solo mani ferme per domattina.",
	},
	["cls.sha.battle.01"] = {
		"Gli spiriti sono inquieti. Li hai offesi tu, e ora rispondono.",
		"La terra sotto i tuoi piedi non ti vuole. Senti come trema.",
	},
	["cls.sha.victory.01"] = {
		"L'equilibrio è tornato. Per ora.",
		"Il vento ha smesso di urlare. Lo ringrazio, a bassa voce.",
	},
	["cls.sha.lowhp.01"] = {
		"Antenati, prestatemi le vostre ossa. Le mie stanno cedendo.",
		"Terra, reggimi. Non ancora sotto di te: ancora sopra.",
	},
	["cls.sha.muse.01"] = {
		"Il fuoco brucia, l'acqua lava, la terra regge, il vento porta. E noi impariamo da tutti.",
		"Ogni sasso ha una voce. Quasi tutti dicono soltanto: aspetta.",
	},
	["cls.sha.zone.01"] = {
		"Gli elementi qui sono malati. Li sento gridare sotto la pelle della terra.",
		"Qui il fuoco non scalda e l'acqua non disseta. Gli spiriti hanno scordato il proprio nome.",
	},
	["cls.sha.atk.01"] = {
		"Fuoco, spirito antico, mangia!",
		"Brucia, spirito! Questo è per te!",
	},
	["cls.mag.battle.01"] = {
		"Davvero? Non sprecherò neppure una formula difficile.",
		"Non è nemmeno un esercizio da apprendista. Facciamo in fretta.",
	},
	["cls.mag.battle.02"] = {
		"Finalmente un problema degno di una biblioteca intera.",
		"Interessante. Molto interessante. Qualcuno prenda appunti, se sopravvive.",
	},
	["cls.mag.victory.01"] = {
		"Annotazione: il fuoco risolve quasi tutto. Il resto lo risolve più fuoco.",
		"Risultato confermato. L'esperimento è ripetibile, purtroppo per il prossimo.",
	},
	["cls.mag.lowhp.01"] = {
		"Le vesti di seta erano una pessima idea. Lo dico ogni volta.",
		"Nessun libro parlava di questo capitolo. Lo scriverò da {g:solo|sola}, se ne esco.",
	},
	["cls.mag.muse.01"] = {
		"Ogni incantesimo è una domanda rivolta al mondo. A volte il mondo risponde male.",
		"La magia non è difficile. Difficile è non chiedersi cosa succede se tiri un filo in più.",
	},
	["cls.mag.travel.01"] = {
		"Le strade sono per chi non ha studiato.",
		"Camminare? Per due passi? Per carità.",
	},
	["cls.wlk.battle.01"] = {
		"Inginocchiati, demone. Conosco il tuo vero nome.",
		"Ho legato creature più grosse di te con meno parole. Giù.",
	},
	["cls.wlk.battle.02"] = {
		"La tua anima ha un odore delizioso. Peccato sprecarla.",
		"Nella borsa ho un frammento ancora vuoto. Indovina per chi.",
	},
	["cls.wlk.lowhp.01"] = {
		"Servo, fra me e la morte! Subito!",
		"Servo, guadagnati il pane! Ti ho chiamato per questo!",
	},
	["cls.wlk.muse.01"] = {
		"Di notte le voci sono più gentili. È questo che mi preoccupa.",
		"Quando la candela si consuma, il servo smette di fingere di dormire.",
	},
	["cls.wlk.lvl.01"] = {
		"Un altro patto, un'altra cicatrice invisibile. Ne vale la pena. Credo.",
		"Il cerchio si allarga, e le voci si fanno più educate. Non mi fido di chi è educato.",
	},
	["cls.wlk.greet.01"] = {
		"Non badare a chi mi accompagna. Morde solo quando glielo chiedo.",
		"Salve. Se chi mi segue ti fissa, non è niente. Ti sta solo pesando.",
	},
	["cls.dru.battle.01"] = {
		"Hai minacciato il bosco. Il bosco ha artigli.",
		"Hai calpestato i germogli. Adesso guarda bene chi li coltiva.",
	},
	["cls.dru.victory.01"] = {
		"Ciò che cade nutre ciò che nasce. Non è crudeltà: è il ciclo.",
		"Torna alla terra. Avrà cura di te meglio di me.",
	},
	["cls.dru.lowhp.01"] = {
		"Pelle d'orso, cuore di quercia. Non mi spezzerai.",
		"Le querce si piegano col vento. Non si spezzano per così poco.",
	},
	["cls.dru.muse.01"] = {
		"Chi ha intravisto il Sogno trova il mondo sveglio sempre un po' troppo rumoroso.",
		"Nel Sogno anche il silenzio ha un colore. Qui fuori è soltanto silenzio.",
	},
	["cls.dru.zone.01"] = {
		"La terra qui soffre. Le radici mi chiamano, e non so come aiutarle.",
		"Neppure i funghi crescono volentieri qui. Ci vorranno anni, e qualcuno che resti.",
	},
	["cls.dru.buff.01"] = {
		"Che la pelle ti diventi corteccia e il cuore resti verde.",
		"Che le radici ti reggano quando il terreno scivola.",
	},
}, "base_classes")
