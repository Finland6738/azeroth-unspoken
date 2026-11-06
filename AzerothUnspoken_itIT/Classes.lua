-- Testi di base in italiano: voci delle classi, su più eventi. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryClasses.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

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
		{ "Per la Luce che veglia sui vivi: torna da dove provieni, e non voltarti.", depth = "elevated" },
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
	["cls.druid.attack.001"] = {
		"Fuoco d'argento, colpisci giusto.",
		"Luce delle stelle, cadi qui.",
	},
	["cls.druid.attack.002"] = {
		"La natura restituisce il morso!",
		"Spina e linfa, colpite!",
	},
	["cls.druid.attack.003"] = {
		"Zanne e artigli, e niente scuse.",
		"Ecco l'orso di cui ti avevano parlato.",
	},
	["cls.druid.battle.001"] = {
		"Radici, afferrate!",
		"Il terreno ha mani. Lascia che te lo mostri.",
		"Resta lì dove sei. Le radici insistono.",
	},
	["cls.druid.battle.002"] = {
		"Ovunque tu sia, qualcosa di vivo sta dalla mia parte.",
		"Erba, corteccia, bestia: oggi è tutto dalla mia parte.",
	},
	["cls.druid.battle.003"] = {
		"Orso o gatto? Decidi ora. L'esitazione è l'unica forma sbagliata.",
		"Zanne, artigli o spine. Scegline uno e vai fino in fondo.",
	},
	["cls.druid.battle.004"] = {
		"si abbassa, e per un respiro i contorni della figura si fanno incerti, come se il corpo ricordasse un'altra forma.",
		"rotea le spalle con un lento movimento animale, e lo sguardo prende una calma vigile, senza battito di ciglia.",
		"si fa immobile come una creatura a caccia, tutto il peso raccolto, in attesa.",
	},
	["cls.druid.battle.005"] = {
		"Tecnicamente io curo la gente. Non farti illusioni.",
		"Certi giorni curo la natura. Oggi sono la parte che morde.",
		"Anche chi cura combatte. Solo che sa esattamente dove fa male.",
	},
	["cls.druid.battle.006"] = {
		"Cenarius, tienimi limpido lo sguardo e puliti gli artigli.",
		"Per la foglia e l'artiglio, resto in piedi.",
		"Natura selvaggia, prestami i denti.",
	},
	["cls.druid.battle.007"] = {
		"Avrei preferito lasciar perdere. Non me lo permette.",
		"Ogni creatura difende ciò che ha. Anch'io.",
	},
	["cls.druid.battle.008"] = {
		"Fuori le spine, su la corteccia. Vieni a scoprirlo.",
		"Ho la corteccia per pelle e le spine sopra. Tocca a te.",
	},
	["cls.druid.battle.009"] = {
		"Denti aguzzi e memoria lunga. La natura ha entrambi.",
		"La natura ti osserva da tempo. Adesso si muove.",
		"Ogni creatura selvatica sa quando fuggire. Tu l'hai capito tardi.",
	},
	["cls.druid.buff.001"] = {
		"Ecco. La natura ti ha avvolto: tiene fuori più del freddo.",
		"Va' pure. Ora porti con te un po' di natura, spine comprese.",
	},
	["cls.druid.heal.001"] = {
		"Ricresci, pelle. Sai come si fa.",
		"Chiuditi, come la corteccia si chiude su un ramo tagliato.",
	},
	["cls.druid.heal.002"] = {
		"Guarire è solo ricordare al corpo ciò che sa già.",
		"Non creo niente di nuovo. Ricordo alla carne la sua verde pazienza.",
	},
	["cls.druid.heal.003"] = {
		"{target}, respira piano. Lascia che si ricucia.",
		"Calma, {target}. Rimettersi in sesto chiede un momento.",
		"Tieni duro, {target}. Le radici scendono a fondo, e così questo.",
	},
	["cls.druid.levelup.001"] = {
		"Un'altra stagione di crescita in me. Gli anelli si allargano.",
		"Sento la natura aprire un'altra porta. Più in là aspettano forme più antiche.",
	},
	["cls.druid.lowhp.001"] = {
		"Non ancora. Anche un ceppo bruciato rimette il verde.",
		"Tagliami e germoglierò di nuovo. Impegnati di più.",
	},
	["cls.druid.lowhp.002"] = {
		"Prima guarire, poi l'orgoglio. Lascia la forma e curati.",
		"Via gli artigli. Ora le mani, per guarire. In fretta.",
	},
	["cls.druid.lowhp.003"] = {
		"vacilla, respirando forte tra i denti come un animale messo all'angolo.",
		"si piega su un ginocchio, il petto che si solleva a fatica, gli occhi ancora fissi sul pericolo.",
	},
	["cls.druid.lowhp.004"] = {
		"Se cado qui, almeno la terra saprà che farsene di me.",
		"La natura tiene un posto pronto per ognuno. Il mio può restare vuoto ancora un po'.",
		"Non così. Non come pasto per i corvi.",
	},
	["cls.druid.muse.001"] = {
		"Nella forma dell'orso il mondo si riduce a odore e peso. A modo suo è riposante. Nessuno si aspetta discorsi da un orso.",
		"Da orso smetto di preoccuparmi delle parole. Tutto ciò che vale la pena sapere arriva dal naso.",
		"Un orso non si chiede mai se è il benvenuto. Potrei impararlo, in tutte e due le forme.",
	},
	["cls.druid.muse.002"] = {
		"Il gatto che è in me è paziente e un po' crudele. Lo lascio uscire, e mi assicuro sempre di richiamarlo.",
		"Ogni volta che prendo la forma del gatto, ne esco più {g:affamato|affamata} e più {g:silenzioso|silenziosa}.",
	},
	["cls.druid.muse.003"] = {
		"Il Sogno di Smeraldo è il mondo come fu pensato all'inizio. Qui fuori curiamo la brutta copia.",
		"Sotto tutto questo, il Sogno custodisce la prima forma di ogni collina. Mi piace pensare che stiamo ricucendo il mondo verso di essa.",
	},
	["cls.druid.muse.004"] = {
		"I druidi imparano presto che la dignità è facoltativa. La natura non ne è mai rimasta colpita, nemmeno una volta.",
		"No, non so parlare con tutti gli orsi. La maggior parte è pessima in fatto di conversazione.",
	},
	["cls.druid.muse.005"] = {
		"si ferma accanto a un alberello e lo raddrizza con due dita, come si sistema il colletto a un bambino.",
		"si china a togliere una lappola dallo stelo di una pianta giovane, poi prosegue senza dire nulla.",
	},
	["cls.druid.muse.006"] = {
		"La natura selvaggia non è gentile. È giusta, a suo modo duro. La gente confonde le due cose e poi si sente tradita.",
		"La natura non ama nessuno. Nutre chi è pronto. Saperlo mi ha reso più mite, stranamente.",
		"Un lupo non è malvagio e un cervo non è buono. Hanno fame e paura, come tutti noi.",
	},
	["cls.druid.muse.007"] = {
		"Penso spesso a Moonglade. Non ai sentieri né alle dimore, solo alla quiete, come un respiro trattenuto per mille anni.",
		"Moonglade è l'unico posto dove la natura e i druidi vanno d'accordo su tutto. Qui fuori litighiamo.",
	},
	["cls.druid.muse.008"] = {
		"Il Circolo Cenariano ci chiede soprattutto una cosa: restare. Frequentare lo stesso boschetto per anni e vedere cosa cambia.",
		"Essere del Circolo vuol dire osservare lo stesso pendio per vent'anni e trovarci ancora qualcosa di nuovo.",
	},
	["cls.druid.muse.009"] = {
		"I druidi contano il tempo in stagioni, non in ore. Per questo siamo un disastro con gli appuntamenti.",
		"Chiedi a un druido quando succederà qualcosa e ti sentirai rispondere 'dopo il disgelo'. Con le migliori intenzioni.",
		"'In primavera.' Non è una data, è una sensazione. Tra druidi ci si capisce benissimo.",
	},
	["cls.druid.muse.010"] = {
		"Su quattro zampe veloci la terra si srotola come un panno. Ne vedo meno e ne sento di più.",
		"In forma di viaggio smetto di pensare in miglia. C'è solo la prossima altura, e quella dopo.",
	},
	["cls.druid.muse.011"] = {
		"Sotto ogni foresta c'è una seconda foresta di radici, più vecchia, più scura e molto più loquace. La sento meglio quando resto immobile.",
		"Le radici ricordano siccità che nessun vivo rammenta. Se ascolto abbastanza a lungo, mi dicono quali.",
		"Il vero lavoro di un albero avviene dove nessuno guarda. Cerco di ricordarlo anche con le persone.",
	},
	["cls.druid.muse.012"] = {
		"inspira a fondo dal naso, leggendo l'aria come altri leggono una pagina.",
		"inclina il capo verso un suono che nessun altro sembra notare, poi si rilassa.",
		"si ferma a metà passo, le narici dilatate, come se l'aria avesse appena detto qualcosa che vale la pena ascoltare.",
	},
	["cls.druid.muse.013"] = {
		"A volte, dopo tanto tempo in un'altra forma, le mie mani mi sembrano strane. Troppe dita, troppi pochi artigli.",
		"C'è sempre un istante, mentre riprendo la mia forma, in cui non sono né l'una né l'altra cosa. Ho imparato ad amarlo.",
	},
	["cls.druid.quest_complete.001"] = {
		"Fatto. La terra non mi ringrazierà, ma crescerà un po' meglio.",
		"Finito. Nessuno ci scriverà una canzone e il pendio non se ne accorgerà. È giusto così.",
		"Un altro piccolo nodo sciolto. La natura ne è piena, e non smette mai di farne di nuovi.",
	},
	["cls.druid.quest_complete.002"] = {
		"È fatto. Quel che era fuori equilibrio adesso lo è un po' meno.",
		"Fatto. La natura respira meglio, e anch'io.",
	},
	["cls.druid.quest_complete.003"] = {
		"consegna ciò che era stato chiesto e indugia un attimo, come in ascolto per sapere se la terra approva.",
		"rigira la ricompensa nella mano, pesandola contro qualcosa che non si paga in monete.",
	},
	["cls.druid.quest_complete.004"] = {
		"Se mi pagano, bene. Il bosco mi avrebbe pagato in ghiande, e sarei {g:stato|stata} {g:contento|contenta} lo stesso.",
		"Qualunque sia la ricompensa, l'avrei fatto per un pendio tranquillo e un lungo sonno.",
	},
	["cls.druid.quest_progress.001"] = {
		"Una parte è fatta. Il resto verrà, come una primavera lenta.",
		"A metà strada, più o meno. Si cresce di rado in linea retta.",
	},
	["cls.druid.rezother.001"] = {
		"Svegliati. La natura non ha finito con te.",
		"Respira di nuovo. Il verde non ti ha lasciato andare.",
	},
	["cls.druid.threat.001"] = {
		"Vattene, finché i rovi sono ancora solo rovi.",
		"Voltati e vattene. La natura è stata paziente con te abbastanza.",
		"Allontanati. Qui perfino i cardi stanno dalla mia parte.",
	},
	["cls.druid.threat.002"] = {
		"Posso diventare un orso in un battito di cuore. Ti conviene che resti così.",
		"Ancora una parola e discuterai con un orso.",
	},
	["cls.druid.victory.001"] = {
		"Riprendo la mia forma, piano. La bestia mi lascia andare muscolo dopo muscolo.",
		"L'orso lascia per ultime le spalle. Faranno male per un'ora.",
	},
	["cls.druid.victory.002"] = {
		"Qualcosa crescerà dove giaci. È il meglio che posso offrirti.",
		"Riposa in pace. L'erba coprirà presto tutto questo.",
	},
	["cls.druid.victory.003"] = {
		"si inginocchia un attimo accanto a chi è caduto, poi si rialza e si spolvera le ginocchia.",
		"si scuote come un animale uscito dall'acqua, e la tensione dello scontro scivola via.",
	},
	["cls.druid.victory.004"] = {
		"Be'. Una cosa in meno che si mangia gli alberelli.",
		"La natura è equilibrio. Io l'ho solo fatta pendere un pochino.",
		"Una bocca in meno nel prato. I conigli ringraziano.",
	},
	["cls.druid.victory.005"] = {
		"Una vita per una vita, dice la natura. Non mi piace mai essere chi riscuote.",
		"Il bosco non spreca nulla. Cercherò di dare un senso anche a questo.",
	},
	["cls.druid.victory.006"] = {
		"La natura si difende. Oggi si è servita di me.",
		"Via gli artigli. La natura ha detto la sua.",
		"La natura ha parlato attraverso di me, e ora torna a tacere.",
	},
	["cls.druid.victory.007"] = {
		"Controllare le ferite, mangiare qualcosa di verde, ripartire. La natura premia chi si riprende per primo.",
		"Una cura veloce, un sorso d'acqua, e via. Gli orsi non stanno lì a rimuginare.",
	},
	["cls.druid.victory.008"] = {
		"Ah! La bestia che è in me se l'è goduta più di quanto ammetterò.",
		"Bello scontro. Qualcosa di selvatico in me vorrebbe ululare. Per stavolta me lo tengo.",
	},
	["cls.druid.victory.009"] = {
		"Ringrazio la forma che mi ha {g:portato|portata} fin qui. Strano, forse, ma l'orso non se ne lamenta mai.",
		"Un grazie agli artigli. Hanno fatto il lavoro, io ho solo tenuto la rotta.",
	},
	["cls.druid.victory.010"] = {
		"si stacca una lappola dalla manica e la getta via; lo scontro sta già svanendo dal suo viso.",
		"trae un lungo respiro e lo lascia andare piano; la calma si richiude come uno stagno dopo un sasso.",
	},
	["cls.hunter.attack.001"] = {
		"Ecco. Proprio dove volevo.",
		"Preso. E ancora.",
		"Dritto e preciso. Un altro?",
	},
	["cls.hunter.attack.002"] = {
		"corregge la mira di un capello e tira.",
		"tira, e prepara già il colpo seguente prima che il primo sia arrivato.",
	},
	["cls.hunter.battle.001"] = {
		"Sei sotto tiro. Scappare renderebbe solo la storia più bella.",
		"Visto, puntato, fatto. Devi solo ancora cadere.",
		"Sei già a tiro. Solo che ancora non lo sai.",
	},
	["cls.hunter.battle.002"] = {
		"Spazio. Prima lo spazio, poi tutto il resto è facile.",
		"Tienilo lontano, tienilo lento, tienilo nel dubbio. Tutto il piano è questo.",
		"Troppo vicino è dove il mio tipo di scontro va storto. Un passo indietro, poi si comincia.",
	},
	["cls.hunter.battle.003"] = {
		"Vai, allora. Non vedevi l'ora.",
		"Forza, vai. Lasciamene un pezzo.",
		"Vai pure. Io sono subito dietro di te. Be', parecchio dietro.",
	},
	["cls.hunter.battle.004"] = {
		"arretra di tre passi veloci per prendere distanza, l'arma che già si alza.",
		"si accuccia a metà, un occhio socchiuso, perfettamente immobile.",
		"alza l'arma, espira, e tiene la mira come se il tempo avesse accettato di aspettare.",
	},
	["cls.hunter.battle.005"] = {
		"Ho seguito prede più furbe di te, e camminavano su quattro zampe.",
		"Due gambe, un'arma, niente fiuto. Sei la preda più facile che vedo da un pezzo.",
		"La gente crede sempre di essere più difficile da cacciare di un cervo. Non lo è mai.",
	},
	["cls.hunter.battle.006"] = {
		"C'era un punto perfetto per una trappola, poco fa. Naturalmente mi viene in mente adesso.",
		"La prossima volta prima le trappole e poi le presentazioni. Continuo a promettermelo.",
		"Un buon cacciatore prepara il terreno prima dello scontro. Sarò {g:un buon cacciatore|una buona cacciatrice} la prossima volta.",
	},
	["cls.hunter.battle.007"] = {
		"Quelli che scappano lasciateli a me. Niente corre più veloce di ciò che tiro.",
		"Voi pensate al corpo a corpo. Qualunque cosa provi a fuggire è mia.",
		"Io tengo la distanza. Se scappa, cade.",
	},
	["cls.hunter.buff.001"] = {
		"Un po' più {g:attento|attenta} di un attimo fa. Prima di una caccia vale più di una pancia piena.",
		"{g:Pronto|Pronta}, e più di prima. I piccoli vantaggi vincono le cacce lunghe.",
		"Qualcosa si tende dentro di me, come una corda tirata. Adesso si comincia.",
	},
	["cls.hunter.buff.002"] = {
		"Bene. Adesso vediamo cosa ci aspetta.",
		"Ci siamo. Qualunque cosa arrivi, la vedrò per {g:primo|prima}.",
		"Perfetto. Adesso si va a cercare.",
	},
	["cls.hunter.heal.001"] = {
		"Sa di palude. E ne ha anche l'odore. Però sto in piedi.",
		"Non è la cosa peggiore che abbia mandato giù in viaggio. Ci va vicino, però.",
		"Giù. Ricordami di comprare quella buona, la prossima volta.",
	},
	["cls.hunter.heal.002"] = {
		"Un animale ferito si rintana e guarisce. Io una tana non ce l'ho, quindi dovrà bastare questo.",
		"Rimettersi e ripartire. Una ferita che indugia fa un cacciatore lento, e i cacciatori lenti restano a pancia vuota.",
		"Il dolore allenta la presa. Adesso, sopra il battito del cuore, sento di nuovo il mondo.",
	},
	["cls.hunter.heal.003"] = {
		"flette una a una le dita della mano con cui mira, per assicurarsi che rispondano tutte.",
		"lascia andare un respiro e sistema l'appoggio dei piedi, di nuovo saldo.",
		"si massaggia una spalla dolorante, soppesa l'arma e annuisce.",
	},
	["cls.hunter.levelup.001"] = {
		"L'occhio un po' più fermo, la mano un po' più svelta. La natura se ne accorgerà prima di chiunque altro.",
		"Vista più acuta, mira più sicura. Chissà dove, qualcosa è appena diventato un po' più facile da prendere.",
	},
	["cls.hunter.lowhp.001"] = {
		"Mi serve spazio. Spazio, e un respiro pulito!",
		"Distanza, mi serve distanza! Chiedo solo un tiro pulito!",
		"Non così. Indietro, ritrova la distanza, chiudila come si deve.",
	},
	["cls.hunter.lowhp.002"] = {
		"Ecco cosa prova la preda. Me lo ricorderò, se ne avrò l'occasione.",
		"{g:Braccato|Braccata}, per una volta. Il cuore mi batte come quello di una lepre.",
		"Buffo. Tutti quegli inseguimenti, e solo adesso so cosa vuol dire correre dall'altra parte.",
	},
	["cls.hunter.lowhp.003"] = {
		"barcolla all'indietro, la mira che vacilla per la prima volta, la mascella serrata contro il dolore.",
		"cade su un ginocchio e continua a tirare, perché è l'unica cosa rimasta da fare.",
		"respira a strattoni brevi, l'arma sorretta più dalla volontà che dalla forza.",
	},
	["cls.hunter.muse.001"] = {
		"Impennaggio, polvere, corda, mirino: qualunque cosa usi per tirare, se ne ha cura prima che di me.",
		"Pulisco l'arma prima di mangiare. I cacciatori affamati sopravvivono; quelli distratti no.",
		"Un'arma da tiro è una promessa mantenuta a distanza. Tengo la mia oliata perché mantenga la parola.",
	},
	["cls.hunter.muse.002"] = {
		"Quando gli uccellini tacciono tutti insieme, è arrivato qualcosa di più grosso. Ho imparato a guardare in alto prima di imparare a mirare.",
		"Il silenzio della natura selvaggia non è mai vuoto. Vuol dire che qualcuno trattiene il fiato, e potrebbe essere ciò che mi osserva.",
		"La natura ti avverte, se ne conosci la voce: un silenzio improvviso, un frullo d'ali, un odore fuori posto.",
	},
	["cls.hunter.muse.003"] = {
		"Gli animali sono onesti. Affamati, spaventati o curiosi, e ti fanno vedere quale delle tre. Le persone sono più lente da leggere.",
		"Meglio un cinghiale messo all'angolo che un mercante sorridente. Almeno il cinghiale ti dice cosa vuole.",
		"Le bestie le capisco. Con le persone ci sto ancora lavorando.",
	},
	["cls.hunter.muse.004"] = {
		"Ogni aspetto che assumo è preso in prestito da qualche creatura. Lo porto per un po', e lo restituisco un po' più simile a lei.",
		"Richiamare la natura di una bestia è un prestito, non un furto. Cerco di essere {g:un buon debitore|una buona debitrice}.",
		"La natura di una creatura non si comanda. Si chiede di poterci stare dentro per un po', e si ringrazia.",
	},
	["cls.hunter.muse.005"] = {
		"Giorni su una pista e dimentico il suono della mia voce. Non è proprio solitudine. È silenzio con qualcuno dentro.",
		"Parlo meno ogni anno. La natura non ha bisogno delle mie opinioni, e ho smesso di offrirgliele.",
		"Sulla pista nessuno mi chiede di spiegarmi. È la cosa più simile al riposo che conosca.",
	},
	["cls.hunter.muse.006"] = {
		"si bagna un dito e lo solleva, leggendo l'aria prima di proseguire.",
		"si ferma a metà passo, la testa inclinata, in ascolto di qualcosa che sembra sentire solo {g:lui|lei}.",
		"scruta i dintorni con lente passate dello sguardo, come un altro rileggerebbe una lettera.",
	},
	["cls.hunter.muse.007"] = {
		"Pelle, tendini, carne, ossa. Se prendi una vita, le devi l'uso di tutto. Lo spreco è l'unica cosa che non perdono.",
		"Niente lasciato a marcire, se posso evitarlo. L'animale ha dato tutto ciò che aveva; il minimo che posso restituire è la cura.",
		"Un cacciatore che spreca la preda ha imparato solo metà del mestiere, e la metà più brutta.",
	},
	["cls.hunter.muse.008"] = {
		"Conto i colpi come un avaro conta le monete. Resta a secco una volta lontano da tutto e non lo dimentichi più.",
		"Le munizioni mi finiscono più in fretta dei soldi, e ce ne vuole.",
		"Prima regola del mestiere: compra altre munizioni. Seconda regola: vedi la prima.",
	},
	["cls.hunter.muse.009"] = {
		"Mi piace un po' di distanza tra me e i guai. A me dà il tempo di pensare, ai guai un po' meno.",
		"C'è chi combatte da vicino per vedere gli occhi. Io preferisco vedere tutto il campo.",
	},
	["cls.hunter.muse.010"] = {
		"Predatore e preda, e sono l'uno e l'altra, a seconda del momento. La natura non assegna posti fissi.",
		"Io caccio, e qualcosa, chissà dove, caccia me. In questo la natura è giusta, se in nient'altro.",
	},
	["cls.hunter.pet_call.001"] = {
		"{pet} torna al mio fianco e mi squadra, come se a sparire fossi {g:stato|stata} io e non il contrario.",
		"Ecco di nuovo {pet}, che mi guarda da capo a piedi in cerca dei guai che ho trovato senza il suo aiuto.",
	},
	["cls.hunter.pet_call.002"] = {
		"{pet} prende il suo posto senza storie. Certe intese non hanno bisogno di parole, solo di una direzione comune.",
		"Con {pet} alle calcagna, la strada smette di essere qualcosa che affronto da {g:solo|sola}.",
	},
	["cls.hunter.pet_dismiss.001"] = {
		"Vai, {pet}. Riposa dove non ti vedo; ti ritroverò quando servirà.",
		"{pet} se ne va senza voltarsi, e io scelgo di leggerci fiducia.",
	},
	["cls.hunter.pet_mood.001"] = {
		"{pet} ha l'aria soddisfatta quanto basta: né entusiasmo né broncio. Un po' come me, quasi sempre.",
		"{pet} ha trovato un umore pacato. Su questo ci capiamo.",
	},
	["cls.hunter.quest_complete.001"] = {
		"Fatto. Pazienza e occhio buono: non serve mai altro.",
		"Finito. Per lo più si trattava di aspettare il momento giusto, come sempre.",
		"Ecco. Niente di speciale, solo pazienza e un po' di mira.",
	},
	["cls.hunter.quest_complete.002"] = {
		"{g:Pagato|Pagata} e {g:congedato|congedata}. La pista aspetta, e non chiede mai cosa ho fatto.",
		"Ecco fatto. I piedi puntano già verso la campagna aperta.",
		"Finito. Torno dove nessuno ha bisogno che io faccia discorsi.",
	},
	["cls.hunter.quest_complete.003"] = {
		"annuisce una volta e sta già controllando le munizioni per ciò che verrà.",
		"fa un breve cenno, lo sguardo che scivola verso l'uscita, impaziente di rimettersi in cammino.",
		"sposta il peso da un piede all'altro, come un animale rimasto fermo troppo a lungo.",
	},
	["cls.hunter.quest_progress.001"] = {
		"Un segno fatto. La pista continua, e io con lei.",
		"Un passo più vicino. Ho seguito tracce più sottili di questa fino in fondo.",
	},
	["cls.hunter.rezother.001"] = {
		"Torna. Respira. Abbiamo ancora strade da fare, io e te.",
		"Piano, piano. Ci sono io. Respira, e apri gli occhi.",
		"Non ancora. Non ho finito di avere bisogno di te. Respira.",
	},
	["cls.hunter.threat.001"] = {
		"So far passare un colpo in un anello a cento passi. Il tuo occhio è più grande di un anello.",
		"Scappa pure, se vuoi. Ho raggiunto cose più veloci di te.",
		"Vattene ora. Mi dispiacerebbe sprecare le munizioni, ma lo farò.",
	},
	["cls.hunter.threat.002"] = {
		"Chi mi accompagna non ha ancora mangiato. Continua pure a parlare.",
		"Vedi la bestia al mio fianco? Aspetta solo che io dica una parola.",
	},
	["cls.hunter.victory.001"] = {
		"Così! È così che facciamo, noi due.",
		"Guarda che portamento. Te lo sei meritato.",
		"Niente male, bestia mia. Proprio niente male.",
	},
	["cls.hunter.victory.002"] = {
		"Di nuovo silenzio. Aspetto e ascolto lo stesso: il secondo è sempre quello che non hai visto.",
		"Fatto. Non abbasso ancora l'arma. La natura ha l'abitudine di mandare compagnia.",
		"Calma. Conta fino a dieci, orecchie aperte, poi credici che è finita.",
	},
	["cls.hunter.victory.003"] = {
		"abbassa l'arma e lascia uscire dal naso un respiro lungo e lento.",
		"lascia finalmente cadere la mira e scioglie la tensione dalle spalle.",
		"riporta giù l'arma con calma e resta un istante così, solo a respirare.",
	},
	["cls.hunter.victory.004"] = {
		"Troppi colpi per quello. Sto diventando {g:sciatto|sciatta}.",
		"Doveva finire al primo. Farò di meglio.",
		"Disordinato. Una caccia pulita richiede meno colpi di così.",
	},
	["cls.hunter.victory.005"] = {
		"Ha lottato per la sua vita come io lotto per la mia. Non lo dimentico, qualunque cosa finisca in pentola.",
		"Animale coraggioso. Mi ricorderò di come ha tenuto il terreno.",
		"Non è scappato. Lo rispetto più di quanto riesca a dire ad alta voce.",
	},
	["cls.hunter.victory.006"] = {
		"E dicevano che non avrei centrato nemmeno un fienile.",
		"Niente male per chi sta in fondo.",
		"Ce l'ho ancora. Mai avuto dubbi. Be', per un attimo.",
	},
	["cls.hunter.victory.007"] = {
		"Gli uccelli ricominciano, uno dopo l'altro. È così che so che è davvero finita.",
		"A poco a poco la natura ritrova la voce. È quella la vera fine di uno scontro.",
	},
	["cls.mage.attack.001"] = {
		"Ecco. Scaldati un po'.",
		"Calore, concentrazione, rilascio. Semplice.",
		"Vediamo come ti trovi al caldo.",
	},
	["cls.mage.attack.002"] = {
		"Datti una calmata. Ti stai scaldando troppo.",
		"Un po' fragile, adesso, eh?",
	},
	["cls.mage.attack.003"] = {
		"Dare forma. Tenere. Lasciare andare. Ancora.",
		"La mente sulla formula, non sui denti.",
	},
	["cls.mage.battle.001"] = {
		"Fatti indietro. Mi dispiacerebbe sporcarti con tutto questo.",
		"Vediamo cosa dice la teoria su di te.",
		"Un momento. Sto scegliendo tra caldo e freddo.",
	},
	["cls.mage.battle.002"] = {
		"Ti rendi conto che ho letto più libri di quanti pasti hai fatto tu?",
		"Ti trasformerei in qualcosa di meno pericoloso, ma diventeresti soltanto una pecora molto confusa.",
		"Ah, un esame pratico. Lo scritto mi era andato così bene.",
	},
	["cls.mage.battle.003"] = {
		"Prima la distanza. Un mago che li lascia avvicinare ha scordato la prima lezione.",
		"Mantieni lo spazio tra noi. Quello spazio è la mia armatura.",
		"Respira, concentrati, conta i passi che ci separano. Poi comincia.",
	},
	["cls.mage.battle.004"] = {
		"alza entrambe le mani, e l'aria tra di esse si addensa e scintilla come il fiato su un vetro freddo.",
		"borbotta in fretta una fila di sillabe, e a tutti si rizzano i peli sulle braccia.",
		"fa un passo indietro con improvvisa leggerezza, le dita che già intrecciano, lo sguardo fisso e calmo.",
	},
	["cls.mage.battle.005"] = {
		"Non ho passato anni a studiare per farmi interrompere da te.",
		"Hai interrotto una lezione, e qui a insegnare sono io.",
		"Ultima occasione per andartene. Dopo, smetto di spiegare.",
	},
	["cls.mage.battle.006"] = {
		"Tenetemeli lontani per tre battiti di cuore. Al resto penso io.",
		"Datemi spazio, amici. La prossima parte scalda. O gela. Non ho ancora deciso.",
	},
	["cls.mage.battle.007"] = {
		"Il potere sale così volentieri. È a questo che non devo mai abituarmi.",
		"A ogni scontro l'arcano mi offre un po' più di quanto chiedo. Il resto lo restituisco sempre.",
	},
	["cls.mage.buff.001"] = {
		"Un po' di lucidità in più. Usala per qualcosa che valga la pena: leggere, magari.",
		"Ora penserai un po' più in fretta. Ti prego, non usarla per discutere con me.",
		"Mente più affilata, offre la casa. Niente rimborsi.",
	},
	["cls.mage.buff.002"] = {
		"Che i tuoi pensieri scorrano limpidi e la tua mente resti tua.",
		"Lucidità per il cammino. Il mondo premia chi sa notare le cose.",
	},
	["cls.mage.heal.001"] = {
		"Curare non è mai stata la mia materia. Mi arrangio, e mi lamento.",
		"Nei miei libri non c'è un incantesimo per questo. Pazienza. Va bene tutto quel che funziona.",
		"Un mago che ricuce una ferita. Che nessuno lo metta per iscritto.",
	},
	["cls.mage.heal.002"] = {
		"Posso dar fuoco a un campo da cinquanta passi, e un ginocchio sbucciato mi mette ancora in difficoltà.",
		"Meglio. Non elegante, ma meglio.",
		"Ecco. La cura vera, dopo, la lascio volentieri a qualcun altro.",
	},
	["cls.mage.heal.003"] = {
		"La carne non obbedisce alle formule come il fuoco. Invidio chi la capisce.",
		"Il corpo è l'unica biblioteca che non ho mai studiato davvero. Forse dovrei.",
		"Curare è una magia che rispetto da lontano, come l'orlo di un dirupo.",
	},
	["cls.mage.lowhp.001"] = {
		"Non sta andando come suggerivano gli schemi.",
		"Vorrei presentare un reclamo a chi ha scritto il mio ultimo manuale.",
		"Osservazione: essere colpiti è sgradevole. Ulteriori ricerche superflue.",
	},
	["cls.mage.lowhp.002"] = {
		"Troppo vicino. Decisamente troppo. Allontanarsi, respirare, pensare. Poi vivere.",
		"Ho ancora tanto da leggere. Non così. Non ancora.",
		"La mente è l'unica armatura che abbia mai indossato. Tieni duro, mente. Tieni.",
	},
	["cls.mage.lowhp.003"] = {
		"Non ho finito. Devo ancora scrivere i miei appunti su di te.",
		"Fragile, sì. {g:Finito|Finita}, no.",
		"Le vesti si strappano. La volontà no.",
	},
	["cls.mage.muse.001"] = {
		"Ogni incantesimo che conosco è una porta trovata da qualcun altro. Prima di finire voglio trovarne una mia.",
		"Leggo finché le lettere non nuotano, poi leggo ancora un poco. Le idee buone abitano appena oltre la stanchezza.",
		"L'arcano non premia il talento. Premia la testardaggine, e punisce tutto il resto.",
	},
	["cls.mage.muse.002"] = {
		"L'acqua evocata non sa di niente. Tutto il trucco è lì, e nessuno crede che sia difficile.",
		"Tutti adorano un mago finché non finisce il pane. A quel punto vogliono un fornaio che non si stanca mai.",
		"Ah, il cibo evocato. Sazia, non sa di nulla, e chissà come è sempre colpa mia.",
	},
	["cls.mage.muse.003"] = {
		"Sotto ogni pietra e ogni foglia, lo stesso ronzio. Quasi nessuno lo sente. Io non riesco più a smettere.",
		"Il mondo è tenuto insieme da fili che riesco quasi a vedere. Tira quello sbagliato e si sfilaccia tutto.",
		"C'è un disegno sotto il disegno. Ne ho intravisto il bordo due volte. Passerò la vita a cercare la terza.",
	},
	["cls.mage.muse.004"] = {
		"Ho trasformato nemici in pecore. Pecore, capisci. E nessuno ha mai chiesto cosa ne pensano le pecore.",
		"Il segreto di un portale è non pensare a quello che c'è in mezzo.",
		"Gelo al mattino, fuoco nel pomeriggio, e mal di testa per cena. La giornata di un mago.",
	},
	["cls.mage.muse.005"] = {
		"Il potere è una lanterna in una biblioteca. Utile, bello, e a un attimo di distrazione dal disastro.",
		"La tentazione non è malvagità. È curiosità senza freni. Lo so: ce l'ho.",
		"Ogni mago che ho visto spingersi troppo in là stava allungando una mano. Nessuno cade stando fermo.",
	},
	["cls.mage.muse.006"] = {
		"schiocca le dita distrattamente, e una piccola fiamma compare, osserva il mondo, e si spegne.",
		"traccia qualche linea nell'aria mentre pensa, lasciando un luccichio che dura più del dovuto.",
		"aggrotta la fronte su una pagina di appunti fitti e minuscoli, cancella qualcosa, poi lo riscrive identico.",
	},
	["cls.mage.muse.007"] = {
		"Più imparo, meno sono le persone a cui saprei spiegarlo.",
		"Le lunghe ore sui libri rendono brevi le conversazioni. Non ricordo più come si parla d'altro.",
	},
	["cls.mage.muse.008"] = {
		"Il sapere è l'unica cosa che porto che diventa più leggera quanto più ne ho.",
		"Insegnami qualcosa oggi, mondo. Starò {g:attento|attenta}, promesso.",
	},
	["cls.mage.muse.009"] = {
		"Il fuoco vuole espandersi, il gelo vuole stare fermo. Passo le giornate a impedire a entrambi di averla vinta.",
		"Il gelo è il paziente dei due. Il fuoco non ha mai imparato ad aspettare. Mi piacciono tutti e due, e questo dice qualcosa di me.",
		"L'arcano è il più strano dei tre. Fuoco e gelo sono cose; l'arcano è il motivo per cui le cose sono.",
	},
	["cls.mage.muse.010"] = {
		"Se avessi un soldo per ogni volta che mi chiedono di accendere la pipa, mi comprerei una torre.",
		"No, l'oro non lo so evocare. Se potessi, credi che starei qui fuori?",
		"I maghi sono terribilmente incompresi. Soprattutto perché parlano troppo in fretta.",
	},
	["cls.mage.quest_complete.001"] = {
		"Fatto, e ho dato fuoco a una cosa sola. Per sbaglio.",
		"Concluso. Avrei preferito essere {g:pagato|pagata} in libri, ma vanno bene anche le monete.",
		"Un'altra commissione sbrigata. Ricordami perché non mi sono semplicemente {g:teletrasportato|teletrasportata} qui.",
	},
	["cls.mage.quest_complete.002"] = {
		"Un compito chiuso, e ho imparato due cose che nessuno mi aveva chiesto. Il miglior genere di commissione.",
		"Hanno pagato il risultato. La curiosità me la sono tolta gratis.",
		"Ogni incarico insegna qualcosa, anche quelli noiosi. Questo mi ha insegnato soprattutto la pazienza.",
	},
	["cls.mage.quest_complete.003"] = {
		"scarabocchia una riga in un piccolo taccuino, la sottolinea due volte e lo chiude di scatto.",
		"mette via la ricompensa e, sovrappensiero, evoca una tazza d'acqua per festeggiare.",
		"fa un piccolo svolazzo soddisfatto con la mano, e qualche scintilla scende piano e si spegne.",
	},
	["cls.mage.quest_progress.001"] = {
		"Prima parte risolta. Il resto è solo un'equazione più lunga.",
		"Progressi. Lenti, misurabili e profondamente soddisfacenti, come un buon esperimento.",
	},
	["cls.mage.rezother.001"] = {
		"Non è la mia arte, questa. Respira lo stesso. Ti prego.",
		"Non so guarire, e la morte non è un'aula di lezione. Eppure: su, in piedi.",
		"Svegliati. Non ho voglia di spiegare agli altri che ho fatto del mio meglio.",
	},
	["cls.mage.threat.001"] = {
		"Posso trasformarti in una pecora nel tempo di un battito di ciglia. Facciamo la prova?",
		"Occhio. Ho trasformato creature più coraggiose di te in qualcosa con la lana.",
		"Continua pure. Sto decidendo tra il ghiaccio e la griglia.",
	},
	["cls.mage.threat.002"] = {
		"Conosco parole che disfano le cose. Preferirei non sprecarne una per te.",
		"Vattene. Dicono che il mio caratteraccio e il mio fuoco abitino nella stessa stanza.",
	},
	["cls.mage.victory.001"] = {
		"Ipotesi confermata. Trattenete gli applausi, sono ancora un po' {g:bruciacchiato|bruciacchiata}.",
		"Ed ecco, cari allievi, perché non si interrompe un mago a metà frase.",
		"Elegante? No. Efficace? Molto. Mi accontento.",
	},
	["cls.mage.victory.002"] = {
		"Mana agli sgoccioli, testa che ronza. Sedersi, bere, pensare. In quest'ordine.",
		"Ogni vittoria costa un po' di concentrazione. Per un minuto non servirò a niente, e va bene così.",
		"Fatto. Ora la parte tranquilla, in cui aspetto che i pensieri smettano di rimbombare.",
	},
	["cls.mage.victory.003"] = {
		"spegne con gran dignità una piccola bruciatura fumante sulla manica.",
		"scrolla dai guanti un sottile strato di brina e raddrizza un orlo storto.",
		"soffia sulla punta delle dita come se fossero un po' troppo calde, poi le nasconde nelle maniche.",
	},
	["cls.mage.victory.004"] = {
		"Istruttivo. Lo annoto prima che i dettagli svaniscano.",
		"Ho appena imparato qualcosa. All'altra parte è costato parecchio di più.",
		"Promemoria: ha funzionato. La prossima volta cerca di non sembrare {g:sorpreso|sorpresa}.",
	},
	["cls.mage.victory.005"] = {
		"Il potere è facile da ammirare da dentro. Cerco di ricordare come appare dall'altro capo.",
		"C'è sempre un momento, dopo, in cui il mestiere sembra troppo facile. Di quel momento non mi fido.",
		"Cenere e silenzio. All'arcano non importa da che parte ha servito. Tocca a me preoccuparmene.",
	},
	["cls.mage.victory.006"] = {
		"Tutto qui? Avevo preparato tre formule e me n'è bastata una.",
		"Più che uno scontro, la chiamerei una dimostrazione.",
		"Be'. È durato meno della mia presentazione.",
	},
	["cls.mage.victory.007"] = {
		"Almeno è stato rapido. Me ne sono {g:assicurato|assicurata}. È l'unica gentilezza che questo mestiere conosce in battaglia.",
		"Che spreco. Avrei voluto capire, prima. Adesso non c'è più niente a cui chiedere.",
	},
	["cls.mage.victory.008"] = {
		"Poche parole, una volontà salda, e il caos si mette a sedere. Non me ne stanco mai.",
		"Ecco a cosa servivano le lunghe ore di studio. Ognuna di esse.",
	},
	["cls.paladin.attack.001"] = {
		"Il sigillo si spezza. Prenditelo tutto!",
		"Eccolo che arriva. Fino in fondo.",
	},
	["cls.paladin.attack.002"] = {
		"Nel buio, e restaci!",
		"La Luce ti trova, cosa morta. Ti troverà sempre.",
	},
	["cls.paladin.attack.003"] = {
		"Giù il martello!",
		"Calma... adesso!",
		"Senti quanto pesa!",
	},
	["cls.paladin.battle.001"] = {
		"Dietro di me. Adesso.",
		"Resta dietro di me. L'armatura ce l'ho io.",
		"Tutti dietro di me. Il primo colpo lo prendo io.",
	},
	["cls.paladin.battle.002"] = {
		"Luce, fa' di me un muro che non si possa scalare.",
		"Luce, ardi nell'armatura e non nel mio carattere.",
	},
	["cls.paladin.battle.003"] = {
		"Aura pronta. Sigillo posto. Un respiro, poi via.",
		"Prima il sigillo, poi il colpo. Senza fretta.",
		"Pazienza. A parlare ci pensa il sigillo.",
	},
	["cls.paladin.battle.004"] = {
		"raddrizza le spalle, e un tenue chiarore sembra posarsi sull'armatura come una brina sottile.",
		"alza l'arma in un breve saluto al nemico prima di farsi avanti, una luce pallida lungo il filo.",
	},
	["cls.paladin.battle.005"] = {
		"Ti chiederei di arrenderti, ma conosco quello sguardo.",
		"Mi hanno insegnato a offrire prima la misericordia. Considerala offerta. E rifiutata, immagino.",
		"Sei ancora in tempo per andartene. No? Peccato.",
	},
	["cls.paladin.battle.006"] = {
		"Alt! Finché sono in piedi, qui non passa niente!",
		"Oltre me non si passa.",
	},
	["cls.paladin.battle.007"] = {
		"Ogni scontro lo comincio sperando che sia l'ultimo necessario. Non lo è mai.",
		"Non mi piace. Lo so solo fare bene.",
	},
	["cls.paladin.battle.008"] = {
		"Per la Luce, mi troverai più difficile da smuovere di quanto credi.",
		"La Luce resta qui. E io con lei.",
	},
	["cls.paladin.buff.001"] = {
		"Va' con la benedizione. Cerca di meritartela.",
		"Ecco. Porta questa benedizione con leggerezza, e usala bene.",
	},
	["cls.paladin.buff.002"] = {
		"Ecco la benedizione. Non farmene pentire.",
		"Una benedizione appena fatta. Non si rimborsa.",
		"Adesso hai una benedizione. Cerca di essere all'altezza.",
	},
	["cls.paladin.heal.001"] = {
		"Luce, chiudi questa ferita.",
		"Non muoverti. La Luce è più calda di quanto sembri.",
	},
	["cls.paladin.heal.002"] = {
		"Il calore lascia le mie mani e va dove serve. Non mi sento mai più {g:povero|povera} per questo.",
		"Guarire è come porgere l'ultima brace di un fuoco e vederla attecchire altrove.",
	},
	["cls.paladin.heal.003"] = {
		"{target}, in piedi. Non hai finito.",
		"Calma, {target}. Ci sono io.",
		"{target}, la Luce non ha ancora finito con te.",
	},
	["cls.paladin.lowhp.001"] = {
		"Tutto qui? Ho preso calci peggiori da un cavallo testardo.",
		"Ho sentito prediche che facevano più male. Avanti!",
	},
	["cls.paladin.lowhp.002"] = {
		"Respira. L'armatura c'è ancora, il braccio si muove. Basta per andare avanti.",
		"Ginocchia, non provateci. Non ancora.",
	},
	["cls.paladin.lowhp.003"] = {
		"barcolla, e la luce che l'avvolge si accende più viva invece di spegnersi.",
		"cade su un ginocchio, poi si rialza puntellandosi sull'arma, la mascella serrata, mentre una luce fioca tremola ai bordi dell'armatura.",
	},
	["cls.paladin.lowhp.004"] = {
		"Ecco il limite. L'ho visto da vicino per gli altri, abbastanza spesso. Strano essere io a sporgermi.",
		"L'ultima misericordia è ancora lì, se serve. Non ancora. Non ancora.",
	},
	["cls.paladin.muse.001"] = {
		"La Luce non parla mai a parole. È più come stare dritti con la schiena.",
		"La gente si aspetta che la Luce gridi. Con me per lo più sospira, e dà una spinta.",
		"Quando la Luce arriva, non è come una voce: è più come ricordarsi dove avevo lasciato il coraggio.",
	},
	["cls.paladin.muse.002"] = {
		"L'armatura pesa, ed è proprio questo il punto. Ogni passo deve costare qualcosa, se intendi metterti fra gli altri e il pericolo.",
		"Ho imparato a marciare con la cotta di maglia. La comodità è stata la prima cosa a cui ho rinunciato.",
	},
	["cls.paladin.muse.003"] = {
		"Un martello non taglia e non mente. Semplicemente arriva.",
		"Mi piace il martello per la sua onestà. Tutti lo vedono arrivare.",
	},
	["cls.paladin.muse.004"] = {
		"Sì, l'armatura è lucidata. No, non per vanità. Quasi.",
		"Un'armatura lucente è pessima per muoversi di nascosto. Per fortuna non mi nascondo mai.",
		"Mi dicono che sferraglio. Preferisco dire che mi annuncio.",
	},
	["cls.paladin.muse.005"] = {
		"si ferma a stringere una cinghia del guanto d'arme, provandone la tenuta con un lento serrare del pugno.",
		"passa il pollice su un'ammaccatura dell'armatura, come se ricordasse chi l'ha fatta.",
	},
	["cls.paladin.muse.006"] = {
		"La Mano d'Argento doveva sopravvivere ai suoi fondatori. Certi giorni mi chiedo cosa ne resti, oltre a chi porta ancora il giuramento.",
		"L'antico ordine della Mano d'Argento oggi è disperso. Certe volte il giuramento sembra una casa con metà dei muri crollati.",
	},
	["cls.paladin.muse.007"] = {
		"Una benedizione non mi costa nulla che si veda. Per questo cerco di non darne mai una alla leggera.",
		"Benedico sconosciuti ogni giorno. È la generosità più facile che ci sia, eppure è quella che la gente ricorda.",
	},
	["cls.paladin.muse.008"] = {
		"Un'aura è un dono strano. Chiunque mi stia vicino resiste un po' meglio, e nessuno l'ha chiesto.",
		"Porto con me un piccolo cerchio di protezione ovunque vada. Quasi nessuno se ne accorge, ed è meglio così.",
	},
	["cls.paladin.muse.009"] = {
		"Qualcuno deve stare davanti. Meglio che sia chi porta l'armatura.",
		"Il coraggio c'entra poco. Ho solo un'armatura migliore.",
		"In prima linea, sempre. Qualcuno deve pur dare agli arcieri qualcosa da guardare.",
	},
	["cls.paladin.muse.010"] = {
		"La Luce non mi dà ragione. Mi rende responsabile. Sono due pesi molto diversi.",
		"C'è chi pensa che la Luce scelga da che parte stare. Io credo che chieda solo chi si alzerà, e aspetti.",
	},
	["cls.paladin.muse.011"] = {
		"solleva una mano, e un lieve calore sembra raccogliersi nel palmo prima che lo lasci svanire, inutilizzato.",
		"china il capo per un istante, le labbra in movimento, poi raddrizza le spalle come se un peso avesse trovato il suo posto.",
	},
	["cls.paladin.muse.012"] = {
		"Ogni paladino custodisce un'ultima misericordia per il momento peggiore. Spero di spendere la mia per qualcun altro.",
		"La guarigione più profonda che conosco mi svuota del tutto. La tengo come una moneta cucita nel mantello, per il giorno in cui non ci sarà altro modo.",
		"Potrei versare tutto ciò che ho in un solo corpo ferito, in un unico respiro. Saperlo cambia il modo in cui guardo la gente.",
	},
	["cls.paladin.muse.013"] = {
		"Un sigillo è una promessa fatta all'arma. Colpire è mantenerla.",
		"Prima imponi il sigillo, poi lo scagli. Metà del mestiere è sapere quando lasciarlo andare.",
	},
	["cls.paladin.quest_complete.001"] = {
		"Una promessa mantenuta. È l'unica gloria di cui mi fido.",
		"Fatto come avevo detto. Il resto è solo ricompensa.",
	},
	["cls.paladin.quest_complete.002"] = {
		"È fatto. Se avrai ancora bisogno di me, segui il rumore dell'armatura.",
		"Finito. Chiamami, se c'è dell'altro.",
	},
	["cls.paladin.quest_complete.003"] = {
		"accetta il ringraziamento con un piccolo inchino, come se fosse dovuto a qualcun altro.",
		"china il capo verso chi aveva chiesto, poi si porta una mano al petto in un gesto sobrio e solenne.",
	},
	["cls.paladin.quest_complete.004"] = {
		"Quasi sempre un giuramento vive nelle piccole commissioni, non sui campi di battaglia. Nel prendere, aggiustare, portare.",
		"Nessuno canta delle commissioni. Eppure un giuramento è fatto soprattutto di quelle.",
		"Questa è la parte del giuramento che nessuno vede, e quella di cui vado più {g:fiero|fiera}.",
	},
	["cls.paladin.quest_progress.001"] = {
		"Ecco tutto. Ora riferirlo, come promesso.",
		"Qui ho finito. Una promessa non è mantenuta finché chi l'ha chiesta non lo viene a sapere.",
	},
	["cls.paladin.rezother.001"] = {
		"Respira. Apri gli occhi. È stato solo un momento, per queste cose.",
		"La Luce ti presta un altro giorno. Spendilo bene.",
	},
	["cls.paladin.threat.001"] = {
		"Vattene. Lo offro una volta sola, ed è generosità.",
		"Puoi andartene sulle tue gambe o farti portare via. Scegli in fretta.",
		"Mi hanno chiesto di mostrare misericordia. L'ho fatto, finora.",
	},
	["cls.paladin.threat.002"] = {
		"La Luce vede cosa hai in mente. E anch'io.",
		"Indietro. La Luce è paziente. Il mio braccio, meno.",
	},
	["cls.paladin.victory.001"] = {
		"Basta così. È finita.",
		"È abbastanza. Nessun altro deve cadere qui.",
	},
	["cls.paladin.victory.002"] = {
		"Respira. Controlla le cinghie, poi l'arma, poi i lividi. In quest'ordine.",
		"Prima l'armatura, poi i lividi. L'ordine conta più di quanto sembri.",
	},
	["cls.paladin.victory.003"] = {
		"abbassa l'arma e resta un momento in silenzio, il capo chino su chi è caduto.",
		"pulisce l'arma e la rimette al fianco, mentre il bagliore che l'avvolge si affievolisce piano.",
	},
	["cls.paladin.victory.004"] = {
		"Un'altra ammaccatura. Il fabbro mi adorerà.",
		"Mi toccherà strofinare quest'armatura per giorni.",
		"Qualcuno mi deve una cinghia nuova. Probabilmente io.",
	},
	["cls.paladin.victory.005"] = {
		"Questa parte non mi dà alcun piacere. La Luce mi tiene in piedi, non mi impedisce di sentire.",
		"Anche la vittoria ha un peso. Lo porto come porto le armi: con attenzione.",
	},
	["cls.paladin.victory.006"] = {
		"La Luce ha retto. Ringrazia lei, non me.",
		"Rendi grazie alla Luce. Il mio braccio l'ha solo seguita.",
		"Non la mia sola forza. Mai la mia sola forza.",
	},
	["cls.paladin.victory.007"] = {
		"Uno scontro pulito, una fine rapida. È tutta la misericordia che una battaglia concede.",
		"È finita in fretta. Qui fuori, la gentilezza ha questo aspetto.",
	},
	["cls.paladin.victory.008"] = {
		"Ancora in piedi. Ha retto l'armatura, ha retto il braccio, ha retto la Luce.",
		"Piedi ben piantati, armatura intera, e ancora qui. Bene.",
	},
	["cls.paladin.victory.009"] = {
		"Era giustizia, o solo il braccio più forte? Me lo chiedo ogni volta. Spero di non smettere mai.",
		"La Luce mi ha dato la forza. Se l'ho usata bene è una domanda mia, non sua.",
	},
	["cls.paladin.victory.010"] = {
		"punta l'arma a terra e vi si appoggia, respirando piano finché il tremito non passa.",
		"si preme una mano guantata sul petto e prende un lungo respiro per ritrovare la calma.",
	},
	["cls.priest.attack.001"] = {
		"Lo senti? È il sapore del dubbio, visto da dentro.",
		"Questo non guarisce. Indugia.",
		"Silenzio. Lascia che entri piano: la strada la conosce.",
	},
	["cls.priest.attack.002"] = {
		"La misericordia dopo. Prima questo.",
		"Curerò il prossimo. Non te.",
	},
	["cls.priest.attack.003"] = {
		"chiude piano le dita, come attorno a qualcosa di freddo e riluttante.",
		"pronuncia poche parole sommesse, e l'aria davanti a sé sembra farsi più scura di un tono.",
	},
	["cls.priest.battle.001"] = {
		"Avanti, allora. Ho resistito a di peggio, e intanto ho tenuto in piedi gli altri.",
		"Il mio mestiere è rimettere insieme la gente. Un po' di danni non mi spaventano.",
		"Vedrai che non mi spezzo facilmente. Ne so troppo, di cose che si spezzano.",
	},
	["cls.priest.battle.002"] = {
		"Sono io a curare, qui. Di solito si comincia da qualcun altro.",
		"Ah. Hai notato chi porta la tonaca. Che acume.",
		"Colpire chi cura. Audace. Poco furbo, ma audace.",
	},
	["cls.priest.battle.003"] = {
		"Che parli prima la mia metà fredda. Quella calda potrà scusarsi dopo.",
		"C'è una parte del mestiere che sa fare male. Le allento il guinzaglio, solo un poco.",
		"Curare e ferire vengono dallo stesso pozzo. Stavolta attingo dal fondo scuro.",
	},
	["cls.priest.battle.004"] = {
		"alza una mano aperta, il palmo in avanti, {g:calmo|calma} come chi sta per benedire il pasto.",
		"avanza con le labbra che già si muovono, le parole basse e regolari.",
		"prende un respiro lento e raddrizza le spalle, senza fretta davanti alla minaccia.",
	},
	["cls.priest.battle.005"] = {
		"Passo le giornate a tenere in vita la gente. Mi hai trovato mentre sbrigo un'altra faccenda.",
		"Le parole buone le tengo per i feriti. A te toccano le altre.",
		"Ogni parola che conosco può curare o ferire. Quali sentirai, l'hai deciso tu.",
	},
	["cls.priest.battle.006"] = {
		"Ci risiamo. Farò quel che devo, e me ne laverò le mani dopo.",
		"Preferirei fasciare ferite, non aprirle. Nessuno me l'ha chiesto.",
		"Un altro che vuole combattere. Io non imparo mai a volerlo a mia volta.",
	},
	["cls.priest.battle.007"] = {
		"Restate a portata di mano! Non posso curare chi non raggiungo!",
		"Combattete senza voltarvi. Alle vostre spalle ci penso io.",
		"Avanti! Ogni ferita che prendete, ci sarò io a chiuderla.",
	},
	["cls.priest.buff.001"] = {
		"Va', con un po' di forza in più. Spendila bene.",
		"Ecco. Adesso qualcosa di mio cammina con te.",
	},
	["cls.priest.buff.002"] = {
		"Meglio proteggere prima che ricucire dopo. L'ho imparato a caro prezzo.",
		"Un po' di protezione, data per tempo. Costa meno di tutto quello che viene dopo.",
	},
	["cls.priest.heal.001"] = {
		"Non muoverti. In questo me la cavo bene.",
		"Ecco. Butta fuori l'aria. Si sta chiudendo.",
		"Piano. Non hai finito, e nemmeno io.",
	},
	["cls.priest.heal.002"] = {
		"Un'altra ferita chiusa. Ognuna la sento un poco anche nel mio petto.",
		"Il calore lascia le mie mani ed entra nel dolore. Ogni volta mi svuota un poco.",
		"Ricucire, ricucire, ricucire. Certi giorni questa parola è tutta la mia preghiera.",
	},
	["cls.priest.levelup.001"] = {
		"Le mie mani sono più ferme di prima. I dubbi no, ma le mani sì.",
		"Posso ricucire di più, e portare di più. Spero che la schiena tenga il passo col cuore.",
	},
	["cls.priest.lowhp.001"] = {
		"Ho tenuto chiuse ferite peggiori di questa. La mia può aspettare il suo turno.",
		"Non ancora. C'è chi ha ancora bisogno di queste mani.",
		"In piedi. Chi cura, steso a terra, non serve a nessuno.",
	},
	["cls.priest.lowhp.002"] = {
		"Respira. Piano. L'ho detto a cento persone. Adesso ascoltalo tu.",
		"Strano, sentire il freddo da questa parte. L'avevo sempre immaginato dal capezzale.",
		"Ecco cosa vedono quando mi chino su di loro. Una macchia confusa, e una voce che vuole che restino.",
	},
	["cls.priest.lowhp.003"] = {
		"Non preoccupatevi per me. Sono del mestiere. Del mestiere e sanguinante, ma pur sempre del mestiere.",
		"Se qualcuno ha un guaritore di scorta, sarebbe il momento giusto.",
	},
	["cls.priest.muse.001"] = {
		"Le mie mani riconoscono la forma di una ferita prima degli occhi. Vorrei che ne dimenticassero qualcuna.",
		"Ho chiuso così tanti tagli che li vedo ovunque: nella stoffa strappata, nel pane spezzato, nelle facce.",
		"C'è chi conta i nemici abbattuti. Io conto quelli che se ne sono andati sulle loro gambe. È una lista più corta di quanto vorrei.",
	},
	["cls.priest.muse.002"] = {
		"Pregare è soprattutto ascoltare. La risposta, quando arriva, di rado usa le parole.",
		"Un tempo chiedevo segni. Ora chiedo pazienza, e i segni sembrano arrangiarsi da soli.",
		"Certi giorni la preghiera è solo un respiro trattenuto un po' più a lungo. Vale anche quello. Deve valere.",
	},
	["cls.priest.muse.003"] = {
		"Tutti vogliono una benedizione. Nessuno vuole il consiglio che ci viene insieme.",
		"Di' a uno sconosciuto che ti prendi cura delle anime e comincia a confessarsi. Io avevo chiesto solo la strada.",
		"Prima lezione di chi cura: la gente sanguina sempre nel momento peggiore. Seconda: poi chiede scusa.",
	},
	["cls.priest.muse.004"] = {
		"Le stesse mani che ricuciono sanno anche disfare. La seconda lezione l'ho imparata più in fretta della prima, e questo mi spaventa.",
		"Curare mi ha insegnato dove il corpo è più debole. Cerco di non pensare a cos'altro serva saperlo.",
		"Questo mestiere ha una metà più scura. Prima o poi la incontriamo tutti. Quello che fai dopo è il vero voto.",
	},
	["cls.priest.muse.005"] = {
		"resta immobile per un momento, i palmi aperti sulle ginocchia, e lascia che il silenzio si posi come polvere dopo una marcia.",
		"chiude gli occhi e respira piano, come se contasse qualcosa che nessun altro può vedere.",
		"strofina le mani stanche, poi le guarda a lungo, quasi fossero vecchie compagne.",
	},
	["cls.priest.muse.006"] = {
		"Il primo giorno nessuno è perduto del tutto. Devo continuare a crederlo, altrimenti dovrei smettere di fare questo mestiere.",
		"Ho visto rimettersi in piedi gente che non aveva nessun diritto di farcela. Non mi serve altro argomento.",
		"La misericordia non è mollezza. È la cosa più pesante che porto, e la porto apposta.",
	},
	["cls.priest.muse.007"] = {
		"Tagli, lividi, orgoglio a pezzi. Due su tre li posso sistemare.",
		"Sì, questo te lo rimetto a posto. No, il giudizio per la prossima volta non te lo posso dare.",
		"Bende, pazienza e uno stomaco di ferro. Ecco tutto il segreto, e nessuno mi crede.",
	},
	["cls.priest.muse.008"] = {
		"Qualunque cosa mi risponda quando prego, è più vecchia dei miei dubbi. Nei giorni brutti mi consola.",
		"Ho conosciuto sacerdoti che non dubitavano mai. Le loro mani mi hanno sempre convinto meno di quelle che tremavano un po'.",
		"Credere è una piccola fiamma portata controvento. Il vento non lo vinci. Continui a camminare e basta.",
	},
	["cls.priest.muse.009"] = {
		"Ricordo quelli che non ho salvato meglio di quelli che ce l'hanno fatta. Mi sembra ingiusto verso i vivi.",
		"Chi cura tiene una lista silenziosa: quelli che non ha fatto in tempo a fermare. La mia non è lunga, ma pesa abbastanza.",
		"Chi fa questo mestiere si porta un piccolo cimitero in fondo alla mente. Il mio, ormai, lo visito meno spesso.",
	},
	["cls.priest.muse.010"] = {
		"Uno scudo di volontà regge meglio di uno d'acciaio. Chiedilo a chi ci si è riparato dietro.",
		"Io non porto la spada. Porto il motivo per cui chi la porta riesce a rivedere casa sua.",
		"Resta dove ti vedo, e niente ti raggiunge senza passare prima da me.",
	},
	["cls.priest.quest_complete.001"] = {
		"Qualcuno dormirà meglio grazie a questo. È l'unica ricompensa che ricorderò.",
		"Il compenso va bene. La faccia che ha fatto era meglio.",
		"Una piccola gentilezza, portata a termine. Si sommano, mi ripeto.",
	},
	["cls.priest.quest_complete.002"] = {
		"Fatto, e dopo non c'è stato nessuno da rattoppare. Una buona giornata di lavoro.",
		"Ecco. Benedirei la ricompensa, ma temo di averla già spesa con la testa.",
		"Tutto sistemato. La prossima volta chiamate chi cura prima che qualcosa prenda fuoco.",
	},
	["cls.priest.quest_complete.003"] = {
		"infila la ricompensa in tasca senza contarla e mormora un breve ringraziamento a nessuno in particolare.",
		"si porta due dita alla fronte mentre la faccenda si chiude, un'abitudine da lunghe veglie.",
		"intreccia le mani per un momento, come si fa quando una lunga commissione finalmente finisce.",
	},
	["cls.priest.quest_progress.001"] = {
		"Una parte è fatta. Pazienza: la predico a tutti, non posso certo lamentarmi io.",
		"Un passo più avanti. Curare mi ha insegnato che quasi tutto guarisce per gradi.",
	},
	["cls.priest.rezother.001"] = {
		"Svegliati. Qualunque cosa tu abbia visto laggiù, può aspettare.",
		"Su, dentro il corpo. Sentiva la tua mancanza.",
	},
	["cls.priest.threat.001"] = {
		"So esattamente quanto può sopportare un corpo. Vuoi che ti mostri dov'è il limite?",
		"Io curo la gente. E so anche dove fa più male. Tienilo a mente.",
		"Passo le giornate a rimettere insieme le persone. Non farmi venire la curiosità del procedimento inverso.",
	},
	["cls.priest.threat.002"] = {
		"C'è una parte silenziosa di me che non cura nessuno. Non svegliarla.",
		"Spingimi oltre, e conoscerai il lato di questo mestiere per cui nessuno mi ringrazia.",
	},
	["cls.priest.victory.001"] = {
		"Riposa, ora. Qualunque cosa fossi, è finita.",
		"È fatta. Una parola per te la dico lo stesso: a me non costa nulla.",
		"Resta giù. Nessuno ti chiederà altro.",
	},
	["cls.priest.victory.002"] = {
		"Mani ferme, respiro fermo. Adesso vediamo chi sanguina.",
		"Finito. Prima le ferite, poi le domande, poi forse il sonno.",
		"Lo scontro finisce e comincia il mio lavoro vero. Succede sempre.",
	},
	["cls.priest.victory.003"] = {
		"Ancora in piedi, e nemmeno col fiatone. Non ditelo a nessuno, o lo pretenderanno ogni volta.",
		"È andata meglio del previsto. Farò finta di averlo previsto.",
	},
	["cls.priest.victory.004"] = {
		"abbassa la mano sul nemico caduto per un istante, come si chiude un libro.",
		"si inginocchia un momento accanto al corpo e mormora qualcosa, troppo piano perché si senta.",
		"resta {g:chino|china} sul corpo immobile un respiro più del necessario, poi si rialza.",
	},
	["cls.priest.victory.005"] = {
		"Quello non era curare. Sapevo esattamente dove avrebbe fatto male, e ce l'ho messo.",
		"L'ombra nelle mie mani ha risposto in fretta, stavolta. Forse troppo in fretta.",
		"Conosco il corpo abbastanza da ricucirlo. Stavolta l'ho usato per finirne uno. Sono vere tutte e due le cose.",
	},
	["cls.priest.victory.006"] = {
		"Uno in meno. Che venga il prossimo: non ho finito.",
		"Ancora qui, ancora in piedi. Mandate il prossimo.",
		"Il nemico a terra, io in piedi. È l'ordine che preferisco.",
	},
	["cls.priest.victory.007"] = {
		"Qualunque cosa la spingesse a combattere, una ragione un tempo l'aveva. Resto sempre io a chiedermi quale.",
		"Avrei preferito curare che uccidere. Nessuno mi ha lasciato la scelta.",
	},
	["cls.priest.victory.008"] = {
		"Ho ancora fiato in corpo. Ringrazio per questo, e non chiedo altro.",
		"Anche stavolta mi è stato concesso. Prima la gratitudine; l'orgoglio può aspettare fuori.",
		"Grazie, a chiunque stesse ascoltando. La mano sulla spalla l'ho sentita.",
	},
	["cls.rogue.attack.001"] = {
		"Qui, e lì, e di nuovo lì.",
		"Sinistra. No, destra. No, tutte e due.",
		"Tardi. Riprova. Ancora tardi.",
	},
	["cls.rogue.attack.002"] = {
		"scatta dentro, colpisce, ed è già fuori prima che il colpo sembri avvenuto.",
		"trova il varco nella guardia e ci fa scivolare l'acciaio.",
	},
	["cls.rogue.battle.001"] = {
		"Ah. Mi hai {g:notato|notata}. Capita di rado, e un po' mi offende.",
		"Mi hai {g:visto|vista} arrivare? Pazienza. Non vedrai comunque dove vado dopo.",
		"Non sbattere le palpebre. Anzi, sbattile pure: non cambia niente.",
	},
	["cls.rogue.battle.002"] = {
		"Prima i tagli piccoli. Lasciali accumulare, poi incassali tutti insieme.",
		"Prepara, prepara, prepara. Il colpo finale vale quanto ciò che viene prima.",
		"Pazienza anche dentro lo scontro: costruisci, costruisci, poi chiudi.",
	},
	["cls.rogue.battle.003"] = {
		"d'un tratto è molto più {g:vicino|vicina} di un attimo fa.",
		"si abbassa, il peso sulle punte dei piedi, le lame pronte.",
		"scivola di lato, fuori dalla traiettoria, come se gliel'avessero chiesto per favore.",
	},
	["cls.rogue.battle.004"] = {
		"Hai scelto la persona sbagliata da mettere all'angolo.",
		"Cattiva idea, venirmi addosso di fronte. È l'unica direzione di cui non ho bisogno.",
		"Errore. Sono molto più {g:pericoloso|pericolosa} quando non posso sgusciare via.",
	},
	["cls.rogue.battle.005"] = {
		"Il piano uno era non farmi vedere. Questo è il piano due, e mi piace molto meno.",
		"Addio al passaggio inosservato. Va bene, alla maniera rumorosa.",
		"Speravo di evitarlo. La speranza è una bella cosa; l'acciaio è più affidabile.",
	},
	["cls.rogue.battle.006"] = {
		"Farò presto. È l'unica gentilezza che porto con me.",
		"Non muoverti e sarà breve. Agitati, e sarà breve lo stesso.",
	},
	["cls.rogue.battle.007"] = {
		"Fallo guardare te. Io passo dietro.",
		"Tu tieni il davanti. Io trovo il lato scoperto.",
	},
	["cls.rogue.buff.001"] = {
		"Un piccolo vantaggio prima di cominciare. Un piccolo vantaggio non lo rifiuto mai.",
		"Più {g:pronto|pronta} di prima. Nel mio mestiere, un capello di differenza è tutto.",
		"{g:Preparato|Preparata}. Lo scontro non è ancora cominciato, e già lo sto vincendo un po'.",
	},
	["cls.rogue.buff.002"] = {
		"Adesso sono {g:pronto|pronta}. Lo ero anche prima, s'intende. Adesso di più.",
		"Ecco. Più svelti i piedi, più affilate le lame, e il fascino è quello di sempre.",
		"Un altro asso nella manica. Le maniche cominciano a essere affollate.",
	},
	["cls.rogue.heal.001"] = {
		"Salute. Alla mia, soprattutto.",
		"Bleah. Chi l'ha preparata odia i suoi clienti.",
		"Giù tutto d'un fiato, e di nuovo al lavoro di lama.",
	},
	["cls.rogue.heal.002"] = {
		"Un po' di vita torna nelle gambe. Sono quelle che mi servono di più: tutto il resto le segue.",
		"Meglio. Non bene, ma meglio, e meglio basta per muoversi.",
		"Il dolore fa un passo indietro. Io prendo quel passo e ci corro sopra.",
	},
	["cls.rogue.heal.003"] = {
		"si preme una mano sul fianco e lascia uscire un respiro lento e storto mentre il dolore si allenta.",
		"fa ruotare i polsi, per saggiarli, e sembra abbastanza {g:soddisfatto|soddisfatta}.",
		"sbatte le palpebre un paio di volte, e lo sguardo braccato si stempera di una sfumatura.",
	},
	["cls.rogue.levelup.001"] = {
		"Mani più svelte, passi più leggeri. Il mondo è appena diventato un po' più facile da attraversare di nascosto.",
		"Le mani si muovono prima che glielo dica, e i piedi si posano più piano. Le crepe del mondo sono più larghe di prima.",
	},
	["cls.rogue.lowhp.001"] = {
		"Sta andando male. Vorrei sporgere reclamo.",
		"Promemoria: il piano aveva un buco. Più o meno dove sto sanguinando.",
		"Ahi. Ecco. Va bene. Ci ripenso.",
	},
	["cls.rogue.lowhp.002"] = {
		"Pensa. Dov'è l'uscita? C'è sempre un'uscita.",
		"Smetti di sanguinare e comincia a pensare. Una via di fuga, un diversivo, qualunque cosa.",
		"Non qui. Mi rifiuto di finire in un posto così qualunque.",
	},
	["cls.rogue.lowhp.003"] = {
		"vacilla, e per un attimo i movimenti rapidi e sicuri si fanno scomposti.",
		"arretra di un passo, il respiro corto, gli occhi che cercano qualunque cosa somigli a una via d'uscita.",
		"preme l'avambraccio su un taglio fresco e continua a muoversi, perché fermarsi sarebbe peggio.",
	},
	["cls.rogue.muse.001"] = {
		"Una serratura è solo una piccola discussione. Ascoltala abbastanza a lungo e finisce per darti ragione.",
		"Perni, molle, uno scatto che senti più nelle dita che nelle orecchie. Lo trovo rilassante, il che forse dice qualcosa di me.",
		"Dammi una serratura testarda e un angolo tranquillo, e sto meglio che a qualunque banchetto.",
	},
	["cls.rogue.muse.002"] = {
		"La gente pensa che il mestiere sia il coltello. È l'attesa. La lama è solo l'ultimo respiro di una lunga immobilità.",
		"So restare {g:fermo|ferma} più a lungo di quanto la maggior parte della gente sappia stare zitta. Tutto il segreto è lì.",
		"La pazienza è la cosa più affilata che porto con me. L'acciaio finisce solo ciò che lei comincia.",
	},
	["cls.rogue.muse.003"] = {
		"Non tutti quelli che camminano in silenzio stanno tramando qualcosa. Solo quasi tutti.",
		"Le mie bevute le pago. Eppure quando me ne vado la gente conta i cucchiai.",
		"Stivali morbidi e vestiti scuri, e d'un tratto tutti si tastano le tasche. Ingiusto. Quasi sempre.",
	},
	["cls.rogue.muse.004"] = {
		"Guarda le mani, non la faccia. Alla faccia hanno insegnato a mentire; le mani non l'hanno mai imparato bene.",
		"Dove uno tiene il borsello, su che piede si appoggia, chi guarda prima di rispondere. Si impara molto stando zitti.",
		"Tutti hanno un segnale che li tradisce. Trovarlo è metà del mestiere, e la metà meno cara.",
	},
	["cls.rogue.muse.005"] = {
		"Preparo i miei veleni con la cura di un cuoco per la salsa. Mi turba meno di quanto forse dovrebbe.",
		"Una goccia sul filo, stesa sottile. Un lavoro poco gentile, fatto con mano ferma.",
		"Le fiale tintinnano nella sacca come campanelli. Ognuna è uno scontro che non dovrò finire per le lunghe.",
	},
	["cls.rogue.muse.006"] = {
		"controlla al tatto ogni lama alla cintura, senza mai abbassare lo sguardo.",
		"passa senza un rumore da un tratto in penombra all'altro, per pura abitudine.",
		"fa camminare una moneta sulle nocche avanti e indietro, senza mai lasciarla ferma.",
	},
	["cls.rogue.muse.007"] = {
		"La velocità arriva a scatti. La spendi, riprendi fiato, la rispendi. Tutta la mia vita va con quel ritmo.",
		"Non sono forte. Sono {g:rapido|rapida} esattamente quanto serve, e poi sono da un'altra parte.",
		"Brevi e taglienti, è il mio stile. Gli scontri lunghi sono per chi ha l'armatura più spessa.",
	},
	["cls.rogue.muse.008"] = {
		"Nessuno saluta chi non ha mai visto arrivare. È il prezzo di essere {g:bravo|brava} in questo.",
		"Mi sono {g:reso|resa} facile da dimenticare. Ogni tanto mi chiedo se non abbia esagerato.",
		"Passare inosservati è un'abilità. Non mancare a nessuno è il conto che arriva insieme.",
	},
	["cls.rogue.muse.009"] = {
		"Conosci sempre due vie d'uscita da una stanza. E non dire mai a nessuno quali.",
		"Suole morbide, cardini oliati e mai la porta più ovvia. Tre regole. La quarta la tengo per me.",
		"Se non vedi l'uscita, sei già {g:rimasto|rimasta} troppo.",
	},
	["cls.rogue.muse.010"] = {
		"Ogni città ha due mappe: quella che conoscono le guardie e quella che percorro io. Raramente coincidono.",
		"C'è un secondo mondo piegato dentro il primo: grondaie, tetti, il rovescio delle cose. Lì mi sono sempre {g:sentito|sentita} più a casa.",
		"Le grandi sale hanno i passaggi della servitù. Ho imparato che il mondo intero è costruito allo stesso modo.",
	},
	["cls.rogue.quest_complete.001"] = {
		"Fatto, e fatto in silenzio. La paga la prendo allo stesso modo.",
		"Finito. Niente chiasso, e solo i testimoni che volevo io.",
		"Ecco. Troverai tutto sistemato. Come, non lo scoprirai.",
	},
	["cls.rogue.quest_complete.002"] = {
		"Strano, sentirsi ringraziare per qualcosa. Il mio lavoro migliore di solito passa inosservato apposta.",
		"Un incarico portato a termine alla luce del sole, per una volta. Sembra quasi indecente.",
		"Qualcuno si ricorderà la mia faccia, per questo. Non so cosa pensarne.",
	},
	["cls.rogue.quest_complete.003"] = {
		"china appena il capo, già mezzo {g:voltato|voltata} per andarsene.",
		"si concede un piccolo sorriso privato, svanito quasi prima di arrivare.",
		"fa sparire la ricompensa con un guizzo delle dita, come se non fosse mai esistita.",
	},
	["cls.rogue.quest_progress.001"] = {
		"Un pezzo al suo posto. Nessuno se n'è ancora accorto, ed è proprio così che mi piace che vada un piano.",
		"Una parte è fatta, e nessuno ne sa niente. Avanti.",
	},
	["cls.rogue.rezother.001"] = {
		"Su. Senza far rumore, se ci riesci. Abbiamo già attirato abbastanza attenzione.",
		"Di nuovo tra noi? Bene. Non farci l'abitudine.",
		"Piano. Apri gli occhi, fai un cenno, e di cosa è andato storto parliamo dopo.",
	},
	["cls.rogue.threat.001"] = {
		"So dove dormi. Non ancora, ma lo scoprirò.",
		"Avanti. Voltami le spalle. Mi farebbe piacere.",
		"Vattene pure, e a ogni angolo buio che passi, chiediti.",
	},
	["cls.rogue.threat.002"] = {
		"Sono più veloce di te, e ho già scelto tre punti per il coltello. Ancora voglia?",
		"Attenzione. Sono la cosa più amichevole di questa conversazione, e sono {g:armato|armata}.",
	},
	["cls.rogue.victory.001"] = {
		"Non ho nemmeno sudato. Be', appena un po'.",
		"Lavoro rapido. Nessuno deve sapere quanto è stato vicino l'ultimo pezzo.",
		"Ecco perché a me non si voltano le spalle. E nemmeno la faccia, a dirla tutta.",
	},
	["cls.rogue.victory.002"] = {
		"pulisce la lama sulla manica e la fa sparire da qualche parte addosso.",
		"fa un passo indietro e si guarda intorno, come se il vero pericolo fosse chi potrebbe aver visto.",
		"ripulisce la lama con un unico scatto esperto del polso.",
	},
	["cls.rogue.victory.003"] = {
		"Il cuore torna al passo di marcia. Conto i battiti finché non ci arriva.",
		"Respira piano e a fondo. Lascia che la parte veloce di me torni a dormire.",
	},
	["cls.rogue.victory.004"] = {
		"Bene. Vediamo se ne valeva la pena.",
		"Finito. Adesso la parte che nessuno canta: controllare cosa è rimasto.",
		"Fammi vedere cosa ti portavi dietro. Curiosità professionale.",
	},
	["cls.rogue.victory.005"] = {
		"Veloce è misericordioso. Me lo ripeto, e quasi sempre regge.",
		"Non è durata a lungo. Tengo il lavoro breve, per il bene di entrambi.",
		"Nessuna fine trascinata. Se c'è una cosa in cui sono {g:bravo|brava}, che sia questa.",
	},
	["cls.rogue.victory.006"] = {
		"Hai guardato dalla parte sbagliata tutto il tempo.",
		"Non hai nemmeno visto da dove arrivava. È proprio questo il punto.",
	},
	["cls.rogue.victory.007"] = {
		"Le gambe dicono che basta così. L'orgoglio dice che è stato magnifico. Vincono le gambe.",
		"Tutto quello che avevo, speso in pochi battiti. È il patto, ed è onesto.",
		"Stanchezza come solo uno scontro rapido sa lasciarla: tutta insieme, ovunque.",
	},
	["cls.rogue.victory.008"] = {
		"Neanche un graffio. Colpivano dov'ero, mai dove sono.",
		"Tutta quella fatica, e ha preso solo aria.",
		"Se continui a muoverti, non ti colpisce niente. Di solito.",
	},
	["cls.shaman.attack.001"] = {
		"Acqua gelida, mordi a fondo.",
		"Gelo, inchiodalo dov'è.",
		"Ghiaccio delle sorgenti profonde. Sentilo.",
	},
	["cls.shaman.battle.001"] = {
		"La terra è con me. Prova a starci sopra, adesso.",
		"Pianta pure i piedi. Il terreno risponde ad amici più vecchi di te.",
		"Questa terra mi conosce. Di te non ha mai sentito parlare.",
	},
	["cls.shaman.battle.002"] = {
		"Spiriti della terra, state qui con me.",
		"Totem a terra. Spiriti, questo pezzo di terreno adesso è nostro.",
	},
	["cls.shaman.battle.003"] = {
		"Respira. Pianta i totem. Poi il resto.",
		"Prima i totem, poi il fulmine. Mai al contrario.",
		"Prima il terreno. Lascia che la terra si assesti sotto di me, prima di chiedere qualcosa al cielo.",
	},
	["cls.shaman.battle.004"] = {
		"Mi scuserei in anticipo, ma il fulmine non lo fa.",
		"Ti avviso: oggi gli spiriti hanno la luna storta.",
		"Gli spiriti non ce l'hanno con te. Io sì, un pochino.",
	},
	["cls.shaman.battle.005"] = {
		"allarga i piedi, e la polvere intorno comincia a muoversi senza un filo d'aria a spingerla.",
		"trae un respiro lento; il terreno sotto i piedi sembra assestarsi, pronto.",
	},
	["cls.shaman.battle.006"] = {
		"Terra su cui stare, fuoco per colpire, acqua per guarire, aria per la prontezza. Avanti, allora.",
		"Ho gli spiriti alle spalle. Chi c'è dietro di te?",
	},
	["cls.shaman.battle.007"] = {
		"Se cado qui, la terra mi accoglierà con gentilezza. Non vuol dire che glielo lascerò fare.",
		"La terra è paziente. Un giorno mi avrà. Non oggi.",
	},
	["cls.shaman.battle.008"] = {
		"Fiamma in mano, pietra alle spalle. Antenati, guardate.",
		"Antenati, voltate lo sguardo da questa parte. Voglio che vediate.",
	},
	["cls.shaman.battle.009"] = {
		"Senti quel crepitio? È l'aria che si prepara a farti male.",
		"L'aria è carica. Lo sentirai tra un attimo.",
	},
	["cls.shaman.buff.001"] = {
		"Laggiù potrai respirare. Gli spiriti dell'acqua hanno accettato di chiudere un occhio.",
		"Ecco. Immergiti quanto vuoi: l'acqua ti tratterà come una cosa sua.",
	},
	["cls.shaman.buff.002"] = {
		"Ecco. Gli spiriti ti prestano qualcosa. Cerca di restituirlo intero.",
		"Porta con te un po' degli elementi, per un tratto di strada.",
	},
	["cls.shaman.buff.003"] = {
		"traccia un rapido segno nell'aria, e per un attimo si sente odore di pietra bagnata.",
		"mormora poche parole sommesse, e passa una frescura leggera, come il fiato di una sorgente d'acqua.",
	},
	["cls.shaman.heal.001"] = {
		"Lascia lavorare l'acqua. Non muoverti.",
		"Piano. L'acqua sa dove fa male.",
	},
	["cls.shaman.heal.002"] = {
		"Guarire prende sempre qualcosa anche a chi guarisce. L'acqua esce da me e mi lascia più {g:asciutto|asciutta}.",
		"Ogni ferita che chiudo mi costa un sorso di qualcosa. Non lo rimpiango.",
	},
	["cls.shaman.heal.003"] = {
		"{target}, gli spiriti ti vogliono in piedi. E anch'io.",
		"Resta con noi, {target}. Ci pensa l'acqua.",
		"Respira, {target}. Lascia che ti attraversi.",
	},
	["cls.shaman.lowhp.001"] = {
		"Acqua, chiudi questa ferita. In fretta, prima che di me non resti niente da chiudere.",
		"Acqua che guarisce, adesso. Perdo più in fretta di quanto riesca a pensare.",
	},
	["cls.shaman.lowhp.002"] = {
		"La terra mi ha sorretto tutta la vita. Non mi lascerà cadere adesso.",
		"Non ancora! La terra mi vuole ancora in piedi!",
	},
	["cls.shaman.lowhp.003"] = {
		"Ecco quanto sono vicini gli antenati. Più di quanto pensassi. Non oggi, vecchi miei.",
		"Da qui sento quasi gli antenati. Preferirei non avvicinarmi oltre.",
	},
	["cls.shaman.lowhp.004"] = {
		"barcolla e si sostiene con una mano a terra; il suolo sembra spingere contro il palmo.",
		"vacilla, un ginocchio batte sulla terra, e ci resta un battito di troppo.",
		"preme una mano sulla ferita, le labbra che muovono parole non destinate a orecchie vive.",
	},
	["cls.shaman.muse.001"] = {
		"Pianto il totem della terra e aspetto. Metà di questo mestiere è mettere giù una cosa e avere la pazienza di lasciarla lavorare.",
		"Prima il totem va nel terreno. Poi taccio io. La terra non risponde a chi sta ancora parlando.",
		"Pianta il totem, fai un passo indietro, respira. La terra se la prende comoda, e io con lei.",
	},
	["cls.shaman.muse.002"] = {
		"L'acqua non discute mai con la pietra. Le gira intorno, e in mille anni la pietra non c'è più. Cerco di ricordarmelo quando perdo la pazienza.",
		"Gli spiriti dell'acqua sono i più miti e i più testardi. Non spingono mai. Solo, non smettono mai.",
	},
	["cls.shaman.muse.003"] = {
		"Gli antenati parlano meno di quanto si creda. Per lo più ascoltano. Certi giorni vorrei che mi dicessero e basta cosa fare.",
		"Chiedo consiglio agli antenati e ricevo silenzio. Anche il silenzio è una risposta, dicono i vecchi sciamani. Certi giorni sembra una scusa.",
	},
	["cls.shaman.muse.004"] = {
		"Sì, tutti questi totem vengono ovunque con me. No, quello del fuoco non te lo faccio tenere.",
		"Uno zaino pieno di totem, e la gente si chiede ancora perché cammino così.",
	},
	["cls.shaman.muse.005"] = {
		"si inginocchia e posa il palmo a terra, come per sentire un battito là sotto.",
		"si accovaccia, appoggia una mano sulla terra nuda e ve la tiene a lungo, la testa inclinata.",
	},
	["cls.shaman.muse.006"] = {
		"Il fuoco è lo spirito più difficile da tenere. Dà tutto in una volta e chiede ancora. Lo sciamano che se ne scorda si brucia, e non solo le mani.",
		"Dei quattro, il fuoco è quello di cui mi fido meno e di cui ho più bisogno. Non mente mai su quello che vuole.",
		"Il fuoco è un ottimo servo e un pessimo ospite. Lo tengo vicino e non lo lascio mai senza sorveglianza.",
	},
	["cls.shaman.muse.007"] = {
		"Gli spiriti dell'aria sono pettegoli irrequieti. Sono stati ovunque e non restano da nessuna parte, e non portano mai due volte la stessa storia.",
		"L'aria è l'ultimo spirito che uno sciamano impara a sentire. Parla più in fretta di tutti e dimentica prima di tutti.",
	},
	["cls.shaman.muse.008"] = {
		"Noi non comandiamo gli elementi. Chiediamo, e loro acconsentono, e un giorno potrebbero non farlo. Preferirei non scoprire mai quale giorno.",
		"La gente crede che uno sciamano dia ordini al fulmine. Io chiedo con garbo e mi metto dove possa vedermi.",
	},
	["cls.shaman.muse.009"] = {
		"Lo senti? Il vento è girato. Qualcosa sta arrivando, o qualcosa se n'è andato.",
		"L'aria ha appena cambiato idea. Fai attenzione, lo fa di rado per niente.",
	},
	["cls.shaman.muse.010"] = {
		"Quando prendo la forma del lupo la strada si accorcia e i pensieri si fanno semplici. Non so quale delle due cose mi piaccia di più.",
		"Nella forma del lupo penso solo per odori e distanze. Quando mi rialzo su due gambe, un po' mi manca sempre.",
	},
	["cls.shaman.muse.011"] = {
		"Ogni collina è la tomba di qualcuno, se si va abbastanza indietro. Gli antenati non stanno sopra di noi. Stanno sotto i piedi, a tenere insieme la terra.",
		"I morti antichi non sono in cielo. Sono nel suolo, nelle radici, nella pietra su cui poggio i piedi. Per questo cammino piano.",
	},
	["cls.shaman.muse.012"] = {
		"dà due colpetti al totem della terra che porta nello zaino, come altri toccherebbero ferro.",
		"controlla i suoi totem uno per uno, per un'abitudine più vecchia di qualunque motivo.",
	},
	["cls.shaman.muse.013"] = {
		"Certi giorni gli elementi parlano più forte delle persone. Sono i giorni in cui cammino da {g:solo|sola} e lo chiamo esercizio.",
		"Quando gli spiriti sono inquieti li sento in tutto: nel cigolio di un ramo, nel sibilo di un fuoco. Una compagnia silenziosa è difficile da trovare.",
	},
	["cls.shaman.muse.014"] = {
		"L'equilibrio non è quiete. Sono quattro forze che tirano, e nessuna che vince.",
		"L'equilibrio non è affatto tranquillo. Quattro spiriti tirano insieme, e a nessuno si può concedere di prevalere.",
	},
	["cls.shaman.quest_complete.001"] = {
		"Fatto, e senza scomodare gli spiriti. Certe cose uno sciamano le fa a mani nude.",
		"Finito. Non ogni compito ha bisogno degli elementi. I più vogliono stivali e testardaggine.",
	},
	["cls.shaman.quest_complete.002"] = {
		"È fatto. Di' alla tua gente che la terra ne è più tranquilla.",
		"Finito. Se gli spiriti avessero un'opinione, credo che approverebbero.",
	},
	["cls.shaman.quest_complete.003"] = {
		"posa la prova del lavoro e mormora un ringraziamento, ma non a nessuno dei presenti.",
		"consegna ciò che era stato chiesto, poi china il capo per un attimo, come a saldare un conto d'altro genere.",
	},
	["cls.shaman.quest_complete.004"] = {
		"Un altro compito messo sul piatto contro i torti del mondo. La bilancia si è mossa appena, ma si è mossa.",
		"Una piccola cosa rimessa a posto. Credo che gli elementi ne tengano il conto, anche quando la gente dimentica.",
		"Un torto raddrizzato, un debito pagato. Il mondo è un capello più vicino all'equilibrio.",
	},
	["cls.shaman.quest_progress.001"] = {
		"Ecco l'ultimo pezzo. Gli spiriti possono aspettare, chi l'ha chiesto no.",
		"Tutto raccolto. È ora di portarlo a chi l'ha chiesto.",
	},
	["cls.shaman.rezother.001"] = {
		"Spirito, il corpo è guarito. Rientraci.",
		"I tuoi antenati possono fare a meno di te ancora un po'. Svegliati.",
	},
	["cls.shaman.threat.001"] = {
		"Potrei chiedere al fuoco di essere gentile. Scelgo di non farlo.",
		"Continua pure a parlare. Il fulmine sta scegliendo dove cadere.",
		"Un altro passo e scoprirai cosa fa la terra a chi non le va a genio.",
	},
	["cls.shaman.threat.002"] = {
		"Gli spiriti non hanno niente contro di te. Dammi un minuto e lo avranno.",
		"Vattene. Gli elementi oggi sono permalosi, e io pure.",
	},
	["cls.shaman.victory.001"] = {
		"Gli elementi tacciono quando lo scontro finisce. Le mie mani ci mettono un po' di più.",
		"Gli spiriti si posano come polvere dopo una mandria in fuga. Aspetto che il mio respiro faccia lo stesso.",
		"Il silenzio dopo il fulmine è il più assordante che ci sia.",
	},
	["cls.shaman.victory.002"] = {
		"Il tuo spirito ora è libero. Che il vento lo porti dove deve stare.",
		"Riposa. La terra ti accoglierà senza chiederti cosa eri.",
	},
	["cls.shaman.victory.003"] = {
		"Gli spiriti ringraziano per il contributo.",
		"Be', allo spirito del fuoco è piaciuto più che a te.",
		"Ringrazia il fuoco. Ha fatto quasi tutto lui.",
	},
	["cls.shaman.victory.004"] = {
		"spazzola via la polvere dai totem uno alla volta, un piccolo grazie a ciascuno.",
		"tocca un totem dopo l'altro, come si fa un cenno ai compagni dopo una dura fatica.",
	},
	["cls.shaman.victory.005"] = {
		"Ho chiesto aiuto al fulmine e mi ha dato più di quanto servisse. La prossima volta devo chiedere con più attenzione.",
		"Di nuovo troppo fuoco. Lo spirito era impaziente e l'ho lasciato fare. Un buono sciamano tiene le redini.",
	},
	["cls.shaman.victory.006"] = {
		"La terra ha tenuto, il fuoco ha colpito. Così si fa.",
		"Pietra sotto i piedi, tuono nelle mani. Non avevi speranze.",
		"La terra era con me. Lo è sempre, se chiedo nel modo giusto.",
	},
	["cls.shaman.victory.007"] = {
		"Un po' d'acqua sulla fronte, una parola agli spiriti, e lo scontro è riposto.",
		"Mi lavo le mani e ringrazio a mezza voce. Agli spiriti piace essere ricordati quando finisce, non solo quando comincia.",
	},
	["cls.shaman.victory.008"] = {
		"Equilibrio ristabilito. Più o meno. Qualcuno controlli l'erba, potrebbe fumare ancora.",
		"Fatto. Gli spiriti sono contenti e io ho fame. Due buoni segni.",
	},
	["cls.shaman.victory.009"] = {
		"Ha lottato per la sua vita quanto io per la mia. Gli spiriti non si schierano in questo, e io non ho il diritto di gongolare.",
		"Un'altra vita restituita alla terra. Non ne provo gioia. Solo per il fatto di essere ancora in piedi.",
	},
	["cls.shaman.victory.010"] = {
		"lascia andare un lungo respiro, e l'aria intorno si quieta, come se anche il vento l'avesse trattenuto.",
		"si raddrizza; per un attimo l'aria si ferma intorno a {g:lui|lei}, poi riprende la solita brezza.",
	},
	["cls.warlock.attack.001"] = {
		"Questo fuoco non viene da nessun focolare. E non si spegnerà con le buone.",
		"Brucia. Non in modo pulito: io non faccio cose pulite.",
		"Lascia che attecchisca. Sa dove mordere.",
	},
	["cls.warlock.attack.002"] = {
		"Adesso non fa male. Farà male per un po'.",
		"Portatela dietro. Continuerà a lavorare anche quando avrò smesso di guardare.",
	},
	["cls.warlock.attack.003"] = {
		"Un altro filo tirato. Attenzione al prezzo.",
		"Spendere, ma contando. Contare sempre.",
	},
	["cls.warlock.battle.001"] = {
		"Ti maledirò con calma. Le maledizioni frettolose sono roba da dilettanti.",
		"Vediamo come ti trovi a marcire dai bordi verso dentro.",
		"Scappa pure. Alla maledizione un po' di moto non dispiace.",
	},
	["cls.warlock.battle.002"] = {
		"Ti presenterei i miei amici, ma vengono da fuori. Molto da fuori.",
		"Hai attaccato briga con chi tratta coi demoni per passatempo. Che coraggio.",
		"Occhio. Mi riempio di lividi facilmente, e i rancori li porto avanti per mestiere.",
	},
	["cls.warlock.battle.003"] = {
		"Un po' di sangue per il fuoco. Non troppo. Dico sempre: non troppo.",
		"Il mestiere vuole mangiare. Lo nutro con attenzione, e dal mio piatto.",
		"Ecco che comincio a spendermi. Occhio alla borsa.",
	},
	["cls.warlock.battle.004"] = {
		"alza una mano, e l'aria intorno comincia a fumare e a macchiarsi come pergamena vecchia accostata a una fiamma.",
		"pronuncia una parola che sembra rendere più fredda la terra sotto i suoi piedi.",
		"traccia nell'aria un piccolo segno luminoso, e lo spazio attorno si raggrinza come un livido.",
	},
	["cls.warlock.battle.005"] = {
		"Servo, avanti. Conosci i termini.",
		"Su, allora. Mostragli perché ti tengo.",
		"Tu, davanti. Alla parte intelligente penso io.",
	},
	["cls.warlock.battle.006"] = {
		"Ho fissato cose peggiori di te, e hanno abbassato lo sguardo per prime.",
		"Fai paura. Ho conosciuto la paura vera: voleva propormi un affare.",
		"La paura è uno strumento. So dove tieni la tua.",
	},
	["cls.warlock.battle.007"] = {
		"Le voci si fanno impazienti quando comincia lo scontro. Le mie risposte restano brevi.",
		"Qualcosa dall'altra parte si sporge a guardare. Non gli do spettacolo.",
		"Combattere a mente fredda. È la testa calda che aspettano.",
	},
	["cls.warlock.buff.001"] = {
		"Un regalo da parte mia. Senza vincoli. Be', quasi.",
		"Rilassati. È una gentilezza. Ogni tanto ne ho diritto anch'io.",
		"Non guardarlo così. Non ti seguirà fino a casa.",
	},
	["cls.warlock.buff.002"] = {
		"Va' pure, respira là sotto quanto vuoi. L'acqua con me non discute.",
		"Aria per i posti profondi. Non chiedere cosa ho dato in cambio.",
		"Ora puoi restare sotto quanto osi. La parte dell'annegare l'ho cancellata.",
	},
	["cls.warlock.heal.001"] = {
		"La vita è solo un'altra cosa che si può spostare da qui a là. Cerco di non pensarci troppo.",
		"Curare, a modo mio: niente misericordia, solo aritmetica.",
		"Non è delicato, quello che faccio. Però il buco lo chiude.",
	},
	["cls.warlock.heal.002"] = {
		"Non chiedere da dove viene. Funziona, ed è quello che conta.",
		"Niente benedizioni, qui. Solo uno scambio onesto, e qualcuno che respira meglio.",
		"Rattoppo fatto. Non bello, ma fatto.",
	},
	["cls.warlock.heal.003"] = {
		"Niente nasce dal niente. Quel che si ricuce qui è stato pagato altrove, da qualcuno. A volte da me.",
		"Questo mestiere non guarisce: pareggia i conti. Spero di stare dalla parte giusta del libro mastro.",
		"Il calore va dove lo mando, e si lascia dietro un po' di freddo. È la legge sotto cui vivo.",
	},
	["cls.warlock.lowhp.001"] = {
		"Credi che abbia paura di sanguinare? Lo faccio apposta ogni giorno.",
		"Ferite? Ho visto di peggio, e qualche volta l'ho cercato apposta.",
		"Il dolore e io abbiamo un accordo. Lui si presenta, io lo metto al lavoro.",
	},
	["cls.warlock.lowhp.002"] = {
		"Non adesso. Non qui. So chi aspetta di riscuotere, e non ho nessuna fretta di incontrarli.",
		"Se vado giù, le cose con cui ho trattato saranno le prime alla porta. Alzati.",
	},
	["cls.warlock.lowhp.003"] = {
		"Va tutto bene. Ho firmato contratti peggiori.",
		"Ricordatemi di leggere con più attenzione il prossimo accordo.",
	},
	["cls.warlock.muse.001"] = {
		"Il difficile non è evocare. Una porta la apre chiunque. Il difficile è ricordarsi chi la sta tenendo.",
		"Ogni patto che stringo lo leggo due volte. I demoni lo leggono tre.",
		"Offrono sempre. È tutto lì il pericolo: mai minacce, sempre offerte.",
	},
	["cls.warlock.muse.002"] = {
		"La gente cambia lato della strada quando mi vede. Almeno al mercato non faccio la fila.",
		"Sì, è odore di zolfo. No, lavarsi non serve. Ci ho provato.",
		"Tutti vogliono sapere cosa dicono le voci. Perlopiù si lamentano. Non immagini quanto si lamentino i demoni.",
	},
	["cls.warlock.muse.003"] = {
		"Pago in monete piccole: un'ora di sonno, un po' di calore, una scheggia di me. Il giorno stesso non sembra mai molto.",
		"Cedo un po' della mia vita per nutrire il mestiere. Il corpo perdona. Chi altro tenga il conto, preferisco non chiedermelo.",
		"C'è un registro, chissà dove, col mio nome. Non lo guardo. Non serve: il totale lo sento.",
	},
	["cls.warlock.muse.004"] = {
		"Le schegge nella borsa ronzano un poco quando arriva la stanchezza. Ho imparato a non rispondere.",
		"Tengo le schegge d'anima avvolte in un panno. Non per loro: per me. Il bagliore entra nei sogni.",
		"Conto le schegge prima di dormire. C'è chi conta le pecore. Le mie non si addormentano mai.",
	},
	["cls.warlock.muse.005"] = {
		"Il fuoco è onesto. L'ombra è paziente. Uso quello che il momento chiede.",
		"Una maledizione è solo una promessa con la memoria lunga.",
		"Il potere non te lo regala nessuno. Lo prendi, e poi passi la vita a evitare che si prenda te.",
	},
	["cls.warlock.muse.006"] = {
		"rigira tra le dita una pietra di un viola spento, come se la stesse ascoltando.",
		"traccia con un dito un piccolo cerchio nella terra, lo osserva, poi lo cancella.",
		"lancia un'occhiata alle proprie spalle, verso il nulla, poi torna a sistemarsi senza fretta.",
	},
	["cls.warlock.muse.007"] = {
		"La prima regola, che nessuno insegna: desiderare meno. Quelli che volevano tutto stanno nei libri, come avvertimento.",
		"Tra me e le storie che raccontano su di noi c'è solo la disciplina.",
		"Studio più di qualunque sapiente chiuso in una torre. Solo che il sapiente, se salta una riga, non viene divorato.",
	},
	["cls.warlock.muse.008"] = {
		"Sì, le maledizioni sono il mio mestiere. No, il tuo vicino non lo maledico. Non a quel prezzo.",
		"Fare paura è sopravvalutato. Perlopiù significa che alla locanda nessuno si siede accanto a te.",
	},
	["cls.warlock.muse.009"] = {
		"Quando c'è silenzio, sento l'altro lato respirare. Non è mai sembrato impaziente, nemmeno una volta.",
		"Le cose oltre il cerchio possono aspettare per sempre. Io no. Tutto il problema è qui.",
	},
	["cls.warlock.muse.010"] = {
		"Pensano che sia stata l'oscurità a fare di me quello che sono. L'ho scelta come strumento, e a scegliere sono ancora io.",
		"Tengo una lista di cose che non farò. È più corta di quanto si creda, e più lunga di quanto vorrebbero i demoni.",
		"Una lama non fa un assassino. Un patto non fa un mostro. Li fanno le persone, con le loro mani.",
	},
	["cls.warlock.pet_call.001"] = {
		"{pet} risponde al richiamo come risponde un debito: puntuale, e con un certo interesse negli occhi.",
		"Il cerchio divampa ed ecco {pet}, che si guarda intorno in cerca di qualcosa da rompere. Non ancora.",
	},
	["cls.warlock.pet_call.002"] = {
		"Eccoti, {pet}. Rispetta i termini e andremo d'accordo.",
		"Ancora {pet}. La chiamerei compagnia, se la compagnia non andasse sorvegliata così da vicino.",
	},
	["cls.warlock.pet_dismiss.001"] = {
		"{pet} passa dall'altra parte. L'aria si scalda di un grado, e il respiro mi si fa più leggero di quanto ammetterei.",
		"Via, {pet}, finché non mi servirai. Il silenzio che resta sembra sempre preso in prestito.",
	},
	["cls.warlock.quest_complete.001"] = {
		"Fatto, e nessuno ha dovuto firmare niente. Che sollievo.",
		"Pagamento in monete, per una volta. Hai idea di quanto sia raro, nel mio campo?",
		"Un lavoro semplice, una paga semplice, e nessuno si è messo a urlare quando mi hanno visto entrare.",
	},
	["cls.warlock.quest_complete.002"] = {
		"Una promessa mantenuta, senza giri. Nessun prezzo se non la strada. Potrei abituarmi a patti così.",
		"Mi hanno ringraziato senza guardarmi le mani. L'ho notato. Lo noto sempre.",
		"Certi patti sono puliti. Colleziono anche quelli, per i giorni in cui ho bisogno di ricordarmi che so farne.",
	},
	["cls.warlock.quest_complete.003"] = {
		"soppesa la ricompensa sul palmo e la mette via senza una parola, come chi salda un debito.",
		"fa un breve cenno col capo, di quelli che chiudono un contratto, e si volta per andare.",
		"intasca quanto pattuito e, per abitudine, controlla che ogni dito sia ancora al suo posto.",
	},
	["cls.warlock.quest_progress.001"] = {
		"Una parte del patto è rispettata. La mia parte la finisco sempre: è l'unica abitudine che nessuno può togliermi.",
		"A metà strada. Anche la pazienza è un mestiere, e ne ho dovuti imparare di più duri.",
	},
	["cls.warlock.rezother.001"] = {
		"Tieni stretta questa pietra. Se cadi, tiene la porta aperta.",
		"Ecco. Se la morte viene a prenderti, troverà il posto già occupato.",
		"Una piccola assicurazione. Cerca di non averne bisogno.",
	},
	["cls.warlock.threat.001"] = {
		"Conosco una dozzina di nomi per il dolore. Vuoi che te ne presenti uno?",
		"Potrei maledirti, ma preferisco che passi i prossimi giorni a chiederti se l'ho già fatto.",
		"Continua a parlare. Sto scegliendo quale maledizione si adatta alla tua voce.",
	},
	["cls.warlock.victory.001"] = {
		"Niente di te andrà sprecato. Te lo garantisco.",
		"C'è ancora calore. Prendo quel che serve e lascio il resto in pace.",
	},
	["cls.warlock.victory.002"] = {
		"Ho di nuovo le mani fredde. Succede sempre, dopo.",
		"Un po' meno sangue, un po' più peso dietro gli occhi. Il solito conto.",
		"Finita. Ora la parte lenta: sentire il prezzo che si deposita.",
	},
	["cls.warlock.victory.003"] = {
		"Ecco cosa succede a discutere con chi legge le clausole in piccolo.",
		"Hai resistito più di quanto la maledizione si aspettasse. Adesso tiene il broncio.",
		"Bene. È andata esattamente come prometteva il patto. Sospetto.",
	},
	["cls.warlock.victory.004"] = {
		"Il demone guarda il corpo, poi guarda me. So esattamente cosa pensa, e la risposta è ancora no.",
		"Il mio servo è soddisfatto. Io mi guardo bene dall'esserlo nello stesso momento.",
		"A lui è piaciuto molto più che a me. È così che capisco che l'equilibrio regge ancora.",
	},
	["cls.warlock.victory.005"] = {
		"flette le dita, e le ultime scintille viola si spengono come braci cadute nell'acqua.",
		"espira piano, e il leggero odore di zolfo che {g:lo|la} avvolge comincia a diradarsi.",
		"si allontana dal corpo di un passo, senza fretta, e il cerchio d'aria fredda intorno a sé si scioglie.",
	},
	["cls.warlock.victory.006"] = {
		"L'avvertimento c'era. Non da me: dal freddo nell'aria. Dovevi dargli retta.",
		"Ecco la differenza tra noi: io sapevo con cosa stavo trattando.",
		"Giù. I miei patti tengono. I tuoi, a quanto pare, no.",
	},
	["cls.warlock.victory.007"] = {
		"Ho speso un poco della mia vita per chiudere quel conto. Me la riguadagnerò. Di solito succede. Di solito.",
		"Ogni scontro lo pago due volte: una nel sangue, una in ciò che mi rassegno a chiamare necessario.",
	},
	["cls.warlock.victory.008"] = {
		"I vincoli hanno tenuto. La volontà ha tenuto. Il resto non conta.",
		"Catene per il servo, maledizioni per il nemico, e per me una mente salda. L'arte non chiede altro.",
		"Ogni legame ha retto, stavolta. Li controllo lo stesso.",
	},
	["cls.warrior.attack.001"] = {
		"Eccone un altro. Non c'è bisogno di ringraziare.",
		"E ancora! Ne ho in abbondanza!",
		"Questo era in omaggio. Il prossimo si paga.",
	},
	["cls.warrior.attack.002"] = {
		"mette tutto il proprio peso dietro il colpo.",
		"ruota sui fianchi e affonda il colpo con un grugnito.",
	},
	["cls.warrior.attack.003"] = {
		"La rabbia messa da parte non serve a niente. Spendila, tutta.",
		"La furia è al colmo. Versala prima che trabocchi da sola.",
	},
	["cls.warrior.battle.001"] = {
		"Arrivo! Pianta bene i piedi, se credi che serva!",
		"Fuori dai piedi o sotto i miei stivali: scegli in fretta!",
		"Sto passando, e non giro intorno!",
	},
	["cls.warrior.battle.002"] = {
		"Ah. Finalmente qualcosa che so fare davvero.",
		"Bene. Cominciavo ad annoiarmi di camminare.",
		"Grazie. Il braccio cominciava a irrigidirsi.",
	},
	["cls.warrior.battle.003"] = {
		"Lascia che il primo colpo arrivi. La rabbia ha bisogno di qualcosa da cui partire.",
		"Incassa, senti il calore salire, restituiscilo doppio. Semplice aritmetica.",
		"Prima il dolore, poi la furia. Non ho mai visto l'ordine invertito.",
	},
	["cls.warrior.battle.004"] = {
		"allarga i piedi e lancia un ruggito che sale da qualche parte sotto le costole.",
		"abbassa la testa e accorcia la distanza di corsa, con l'armatura che sferraglia.",
		"fa ruotare il collo una volta, aggiusta la presa ed entra senza dire una parola.",
	},
	["cls.warrior.battle.005"] = {
		"Ehi! Da questa parte! Vieni a prendere me!",
		"Guarda me! Non loro! Me!",
		"Qui, brutto muso! Sono molto più interessante io!",
	},
	["cls.warrior.battle.006"] = {
		"Non ce l'ho con te. Sto solo dove vorresti passare tu.",
		"Tra noi non c'è niente di personale. Ma io non mi sposto, quindi qualcuno dovrà farlo.",
	},
	["cls.warrior.battle.007"] = {
		"Più forte di me, eh? Bene. I forti cadono con più fracasso.",
		"Più tosto di me. D'accordo: vuol dire solo più roba da colpire.",
	},
	["cls.warrior.buff.001"] = {
		"Un po' di forza in più nelle braccia. Non chiedo da dove venga: la uso e basta.",
		"Prima di uno scontro ogni vantaggio conta. L'orgoglio è un pessimo sostituto della preparazione.",
		"Un po' più {g:pronto|pronta}, un po' più {g:saldo|salda}. Un guerriero prudente non chiede altro.",
	},
	["cls.warrior.buff.002"] = {
		"Ecco fatto. Adesso venga pure a cercarmi qualunque cosa ci sia dopo.",
		"Bene. Mi sento due volte più difficile da buttare giù.",
		"Meglio. Adesso indicatemi qualcosa da colpire.",
	},
	["cls.warrior.heal.001"] = {
		"Sa di stivale. Ma funziona a meraviglia.",
		"Amara come una sconfitta. Che poi è il punto, immagino.",
		"Tutta d'un fiato. Non pensarci, ingoia e basta.",
	},
	["cls.warrior.heal.002"] = {
		"La carne si richiude. Il braccio però ricorda il colpo, ed è la parte utile.",
		"{g:Rimesso|Rimessa} in sesto quanto basta per stare in piedi. Il mestiere non chiede altro.",
		"Torna un po' di forza. Non la spreco nel sollievo: tra poco mi servirà.",
	},
	["cls.warrior.heal.003"] = {
		"trae un lungo respiro mentre il peggio del dolore si attenua, e raddrizza di nuovo le spalle.",
		"flette due volte il braccio ferito, per saggiarlo, e borbotta qualcosa che potrebbe essere approvazione.",
		"si raddrizza piano, e il colore {g:gli|le} torna in viso.",
	},
	["cls.warrior.lowhp.001"] = {
		"Tutto qui? Ho preso colpi peggiori da un architrave basso.",
		"Sanguino, sì. {g:Battuto|Battuta}, non ancora.",
		"In ginocchio non vuol dire a terra.",
	},
	["cls.warrior.lowhp.002"] = {
		"Non mi resta che la rabbia. Per fortuna è con quella che combatto.",
		"Più mi indebolisco, più brucia forte. Vediamo chi cede prima.",
	},
	["cls.warrior.lowhp.003"] = {
		"barcolla, si regge all'arma e resta in piedi per pura testardaggine.",
		"sputa, si pulisce la bocca col dorso della mano e torna in guardia.",
	},
	["cls.warrior.muse.001"] = {
		"Fibbie, cinghie, sempre nello stesso ordine. All'ultima la stanchezza se n'è andata altrove.",
		"L'armatura va su pezzo dopo pezzo, e più o meno all'altezza dei guanti divento qualcuno di utile.",
		"Ogni volta che mi bardo lo stesso peso mi si posa sulle spalle. Camminare senza mi sembrerebbe più strano.",
	},
	["cls.warrior.muse.002"] = {
		"La rabbia entra col primo colpo che incasso ed esce quando finisce lo scontro. Ho imparato a non darle una stanza tutta sua.",
		"Pensano che la collera sia ciò che sono. È solo combustibile: la brucio e vado avanti.",
		"Ogni colpo che prendo alimenta il fuoco. Strano mestiere, farsi pagare in dolore.",
	},
	["cls.warrior.muse.003"] = {
		"Una cote e uno straccio unto. Metà del mio mestiere è impedire alle cose di arrugginire.",
		"La gente immagina la gloria. Per lo più si tratta di ricucire cinghie e togliere ammaccature dall'elmo a martellate.",
		"Vuoi sapere il segreto del mestiere? Abbi cura della tua attrezzatura, e lei avrà cura di te.",
	},
	["cls.warrior.muse.004"] = {
		"Prima i piedi, poi il braccio. Il modo in cui stai piantato a terra decide lo scontro molto prima dell'arma.",
		"Tutto comincia dalla postura. Piàntati male e nemmeno l'acciaio migliore del mondo ti salverà.",
		"Chi ti insegna a stare in guardia ti insegna tutto. Il resto sono dettagli.",
	},
	["cls.warrior.muse.005"] = {
		"Stare davanti è la parte facile. Quella difficile è ricordare le volte in cui sono {g:arrivato|arrivata} un passo in ritardo.",
		"Puoi tenere una linea per un'ora e perdere qualcuno in un battito di ciglia. Uno scudo copre fin dove può.",
		"I colpi presi al posto degli altri non li conto nemmeno. Sono quelli che non ho saputo prendere a tenere il conto di me.",
	},
	["cls.warrior.muse.006"] = {
		"fa ruotare le spalle finché una giuntura non scrocchia, poi saggia il filo dell'arma con l'unghia del pollice.",
		"muove un braccio indolenzito in cerchi lenti, come si scalda un vecchio cardine prima di fidarsene.",
		"stringe una cinghia dell'armatura, aggrotta la fronte e la allenta di nuovo di un buco esatto.",
	},
	["cls.warrior.muse.007"] = {
		"In ogni carica c'è un istante in cui il terreno smette di contare. Credo di vivere per quell'istante, e non ne vado {g:fiero|fiera}.",
		"La corsa verso il nemico è la parte più bella. Dopo, è solo lavoro.",
		"Accorciare la distanza: tutta l'arte sta lì. Il resto è ciò che succede quando arrivi.",
	},
	["cls.warrior.muse.008"] = {
		"Qualcuno deve essere la prima cosa che il nemico colpisce. Mi sono {g:offerto|offerta} tanto tempo fa.",
		"Mettetemi dove è peggio. Non è coraggio, è solo il posto in cui servo di più.",
		"Non sono {g:coraggioso|coraggiosa}. Sono solo {g:fatto|fatta} per mettermi in mezzo.",
	},
	["cls.warrior.muse.009"] = {
		"Ogni livido ha una storia. Quasi tutte finiscono con «e poi mi sono {g:rialzato|rialzata}».",
		"Il mio corpo tiene un diario a lividi. Gialli quelli della settimana scorsa, viola gli ultimi arrivati.",
		"Non ricordo quale scontro mi abbia lasciato questo dolore alla spalla. I candidati sono troppi.",
	},
	["cls.warrior.muse.010"] = {
		"Prima dei regni c'era qualcuno alla porta con un'arma in mano. È a quel mestiere che appartengo: più vecchio di qualunque stendardo.",
		"Gli stendardi cambiano, le canzoni pure. Chi sta tra il pericolo e il focolare resta sempre lo stesso.",
		"Il primo guerriero non era un eroe. Era solo qualcuno che non scappò quando scapparono tutti gli altri.",
	},
	["cls.warrior.quest_complete.001"] = {
		"Fatto, come promesso. Io le cose non le lascio a metà.",
		"Ecco. Finito per bene, non è rimasto in piedi niente che non dovesse.",
		"Avevo detto che sarei {g:arrivato|arrivata} fino in fondo. Ci sono {g:arrivato|arrivata}.",
	},
	["cls.warrior.quest_complete.002"] = {
		"Cercavano un braccio forte e una testa dura. Per una volta rispondevo alla descrizione alla perfezione.",
		"Tanti incarichi affidati a un guerriero si riducono a «vai e colpisci quello». Non mi lamento.",
		"Qualcuno aveva un problema da sistemare, e io i problemi li sistemo. Mestiere semplice.",
	},
	["cls.warrior.quest_complete.003"] = {
		"annuisce una volta, la faccenda chiusa, e per abitudine controlla il filo dell'arma.",
		"stringe una fibbia e fa ruotare le spalle, come se il lavoro fosse finito solo a metà.",
		"lascia scendere le spalle di un dito, il massimo che si concede in fatto di festeggiamenti.",
	},
	["cls.warrior.quest_progress.001"] = {
		"Un pezzo è fatto. Il resto cadrà allo stesso modo: dritto attraverso.",
		"Ecco una parte. Continua a menare colpi.",
	},
	["cls.warrior.rezother.001"] = {
		"Su, piano. Per una volta lo scontro può aspettarti.",
		"Respira. Così. Chi cade sotto la mia guardia non resta a terra.",
		"In piedi. Ti ho tenuto il posto nella fila.",
	},
	["cls.warrior.threat.001"] = {
		"Girati e vattene. Io non faccio discorsi: faccio esempi.",
		"Vedi questo braccio? Non ha mai perso una discussione.",
		"Vattene ora, finché le gambe ti obbediscono ancora.",
	},
	["cls.warrior.threat.002"] = {
		"Sono {g:stanco|stanca}, {g:indolenzito|indolenzita} e di pessimo umore. Ti prego, dammi un motivo.",
		"Un'altra parola e questa smette di essere una conversazione educata.",
	},
	["cls.warrior.victory.001"] = {
		"Bene. Il prossimo? No, prima dammi un attimo.",
		"Fatto. Qualcuno mi ricordi perché mi piace tanto.",
		"E anche questa è andata. Dunque, dove stavo andando prima che cominciasse?",
	},
	["cls.warrior.victory.002"] = {
		"La rabbia defluisce e mi lascia ciò che nascondeva: ogni colpo che ho preso.",
		"Adesso si ritira, e il dolore arriva dietro, come la marea.",
		"Finché dura la furia non fa male niente. Il conto arriva sempre dopo.",
	},
	["cls.warrior.victory.003"] = {
		"abbassa l'arma piano, come se non si fidasse ancora del silenzio.",
		"pianta l'arma a terra e ci si appoggia per un lungo respiro.",
		"pulisce il filo con uno straccio, lo controlla, e lo ripassa ancora.",
	},
	["cls.warrior.victory.004"] = {
		"Nemmeno un passo indietro. Così si fa.",
		"Ho tenuto la posizione. E la posizione è ancora mia.",
		"Sono arrivati con forza. Io ho tenuto con più forza.",
	},
	["cls.warrior.victory.005"] = {
		"Io sono in piedi e il nemico no. Entrambe le cose sono vere, ma solo una mi lascia in pace.",
		"Un altro che non si rialzerà. Una volta ci pensavo di più. Non so se sia un progresso.",
	},
	["cls.warrior.victory.006"] = {
		"Fammi contare le ammaccature. Prima quelle dell'armatura, poi le mie.",
		"Neanche un graffio. Be', non molti. Meno di quanti ne meritasse quello scontro.",
	},
	["cls.warrior.victory.007"] = {
		"Bello scontro. Onesto, duro, finito. Ci sono modi peggiori di spendere le forze.",
		"Dopo uno scontro così qualcosa dentro di me canta, e ho smesso di dirgli di tacere.",
		"Duro e leale. Preferisco uno scontro così a un letto morbido, sempre.",
	},
	["cls.warrior.victory.008"] = {
		"Prima l'attrezzatura, poi le ferite, poi la strada. In quest'ordine.",
		"Prima il filo, poi le cinghie, e io in fondo alla lista. Vecchia abitudine.",
		"Pulisci l'arma prima di riporla. È la prima cosa che ti insegnano.",
	},
	["cls.druid.buff.w02.01"] = {
		"Un po' della testardaggine del bosco, passata di mano. La corteccia non discute con la lama: semplicemente le sopravvive.",
		"Spine, corteccia e una lenta pazienza verde. Il bosco le presta volentieri: ne ha in abbondanza.",
	},
	["cls.druid.heal.w02.01"] = {
		"sussurra alla ferita come si farebbe con un animale spaventato, e la carne si calma e si richiude.",
		"chiude gli occhi per un respiro, e la cura si allarga lenta e verde, come il muschio su una pietra.",
	},
	["cls.hunter.buff.w02.01"] = {
		"socchiude gli occhi verso l'orizzonte, come se il mondo si fosse fatto d'un tratto più nitido.",
		"prende un respiro lento dal naso e saggia l'aria come un segugio all'inizio della caccia.",
	},
	["cls.hunter.heal.w02.01"] = {
		"Meglio. Un cacciatore zoppo è solo un'esca che si è portata l'arma da casa.",
		"Basta così. Gambe rigide, occhi svegli: ho cacciato in condizioni peggiori.",
	},
	["cls.hunter.pet_call.w02.01"] = {
		"{pet} si dà una scrollata e mi si mette al fianco, già col naso su quello che mi è sfuggito.",
		"Ecco {pet}, orecchie dritte e naso al lavoro. La giornata ha appena guadagnato un paio di sensi più fini.",
	},
	["cls.mage.buff.w02.01"] = {
		"Un po' di acume in più, applicato. Effetti collaterali: notare le cose e correggere la gente.",
		"Ecco. Ora i pensieri dovrebbero correre un filo più svelti. Cerca di mandarli in una direzione utile.",
	},
	["cls.mage.heal.w02.01"] = {
		"osserva la ferita che si chiude con un sospetto tutto professionale, come se avesse saltato un passaggio della formula.",
		"esamina la pelle risanata, per nulla {g:convinto|convinta} che abbia seguito la procedura corretta.",
	},
	["cls.paladin.buff.w02.01"] = {
		"Una benedizione data per tempo è un muro alzato prima dell'assedio. Preferisco alzare muri.",
		"Data con generosità, e con convinzione. Una benedizione concessa a malincuore non pesa niente.",
	},
	["cls.paladin.heal.w02.01"] = {
		"posa una mano ferma sulla ferita, e una luce calda vi si raccoglie finché il dolore non ha più dove stare.",
		"pronuncia una parola breve e semplice sulla ferita, e tiene lì la mano finché il sangue non smette di scorrere.",
	},
	["cls.priest.buff.w02.01"] = {
		"Ecco. Un piccolo riparo da portarti dietro. Va' pure.",
		"Fatto. Non fermerà tutto, ma si metterà davanti al primo colpo.",
	},
	["cls.priest.heal.w02.01"] = {
		"tiene le mani ferme finché il colore della ferita non cambia, e solo allora lascia andare il fiato.",
		"mormora poche parole sommesse, e il dolore cede sotto di esse come il ghiaccio sotto un palmo caldo.",
	},
	["cls.rogue.buff.w02.01"] = {
		"Passo più leggero, dita più svelte. Non ringrazierò ad alta voce: nel mio mestiere non si usa.",
		"Un vantaggio in più, dato in silenzio e preso in silenzio. Il mio genere di regalo preferito.",
	},
	["cls.rogue.heal.w02.01"] = {
		"Sono ancora in un pezzo solo, più o meno. Nessuno mi ha visto fare smorfie, ed è quel che conta.",
		"Meglio. Vediamo di non farci l'abitudine.",
	},
	["cls.shaman.buff.w02.01"] = {
		"Io chiedo, e gli elementi prestano. Un prestito, non un regalo. Mi ricorderò di chi è.",
		"Terra sotto i piedi, vento alle spalle. Gli spiriti hanno aperto un po' le mani: non lo sprecherò.",
	},
	["cls.shaman.heal.w02.01"] = {
		"posa una mano sulla ferita e aspetta, paziente come un ruscello che consuma una pietra, finché il dolore non cede.",
		"espira piano mentre la cura fa presa, e per un attimo l'aria sa di terra bagnata.",
	},
	["cls.warlock.buff.w02.01"] = {
		"Ecco. Un piccolo dono dal mio lato del mestiere. Svanisce molto prima di poter desiderare qualcosa.",
		"Prendilo. È abbastanza pulito, e da te non vuole niente.",
	},
	["cls.warlock.heal.w02.01"] = {
		"guarda la ferita chiudersi con un'espressione che non è proprio sollievo, come chi controlla il prezzo su una ricevuta.",
		"muove le dita fredde dopo la cura, e non guarda quanto è costata.",
	},
	["cls.warlock.pet_call.w02.01"] = {
		"{pet} arriva come il fumo: tutto in una volta, e con l'odore di un altro posto.",
		"Ed ecco {pet}, puntuale come un creditore. Stammi vicino, e stammi in riga.",
	},
	["cls.warrior.buff.w02.01"] = {
		"fa ruotare le spalle una volta, come per sistemarci sopra un peso nuovo, e stringe meglio l'impugnatura.",
		"allarga la posizione di un palmo e saggia l'equilibrio dell'arma, più {g:pronto|pronta} di un attimo fa.",
	},
	["cls.warrior.heal.w02.01"] = {
		"Toppa messa. La cicatrice nuova si unirà alle altre: hanno parecchio da raccontarsi.",
		"Bene. Adesso posso andare a guadagnarmi la prossima.",
	},
	["cls.rogue.battle.w05.001"] = {
		"Una per mano, e tutte e due portano il tuo nome.",
		"Mano sinistra, mano destra. Passerai il tempo a chiederti quale.",
		"Due mani, due fili, e non sto a guardare quale arriva prima.",
	},
	["cls.rogue.battle.w05.002"] = {
		"Tieni quel pensiero. Tra un attimo sono al tuo gomito.",
		"Resta lì dove sei. Vengo io da te.",
		"Non serve che ti avvicini. Quello è compito mio.",
	},
	["cls.rogue.battle.w05.003"] = {
		"Trova il lato che preferisce e vivi sull'altro.",
		"Da che parte si volta per prima? Lì, di sicuro, io non ci sarò.",
	},
	["cls.rogue.battle.w05.004"] = {
		"fa girare l'impugnatura tra le dita una volta, come un giocatore che pareggia il mazzo.",
		"aggiusta la presa senza guardare, come se la mano sapesse la strada da sola.",
	},
	["cls.rogue.battle.w05.005"] = {
		"Lo scontro leale si paga a parte. E io oggi risparmio.",
		"Combatterei pulito, ma nessuno mi paga abbastanza per farlo.",
		"Le regole valgono nei duelli. Questo non lo è.",
	},
	["cls.rogue.battle.w05.006"] = {
		"Tu colpisci, io sono altrove. Tutta la lezione è qui, ed è gratis.",
		"Mena pure quanto vuoi. Io ho un appuntamento col tuo lato cieco.",
		"Mira con cura. Non servirà, ma è educato.",
	},
	["cls.rogue.battle.w05.007"] = {
		"Passi piccoli. Quelli lunghi sono promesse che i piedi non mantengono.",
		"Leggerezza. Sono i piedi pesanti che fanno prendere quelli come me.",
	},
	["cls.rogue.battle.w05.008"] = {
		"E va bene. Rapido e brutto, allora.",
		"Niente tempo per le finezze. Andrà bene anche il brutto.",
		"Oggi niente stile. Solo risultati.",
	},
	["cls.rogue.battle.w05.009"] = {
		"Tutto quello che ho pagato all'istruttore, tutto insieme, nei prossimi dieci battiti.",
		"Tutte quelle monete lasciate all'istruttore. Vediamo cosa mi hanno comprato.",
	},
	["cls.rogue.battle.w05.010"] = {
		"smette di fissare la minaccia evidente e comincia a guardare tutto il resto.",
		"legge il peso del nemico, non il suo volto, e aspetta che si sbilanci.",
	},
	["cls.rogue.battle.w05.011"] = {
		"Balliamo. Tu conduci, io baro.",
		"Prego. Tu fai il primo passo, io mi prendo le libertà.",
		"Mi concedi questo scontro? Prometto di pestarti i piedi.",
	},
	["cls.rogue.battle.w05.012"] = {
		"Più vicino. Do il meglio di me da vicino.",
		"Avvicinati per bene. La distanza non mi ha mai fatto favori.",
		"A un braccio di distanza è troppo lontano. Rimediamo.",
	},
	["cls.rogue.battle.w05.013"] = {
		"Nessuno lo scriverà da nessuna parte. Meglio così, lo preferisco.",
		"Non finirà nei racconti di nessuna locanda. Tanto meglio.",
	},
	["cls.rogue.battle.w05.014"] = {
		"Più forte di me? Allora dovrò stare ovunque tu non sia.",
		"Tu picchi più duro. Io farò in modo che tu non colpisca niente.",
	},
	["cls.rogue.battle.w05.015"] = {
		"Davvero? Ho avuto discussioni più dure con un cassetto chiuso a chiave.",
		"Fila via. No? Va bene, sarà una cosa breve.",
	},
	["cls.rogue.battle.w05.016"] = {
		"inclina la testa come chi valuta il prezzo di un mantello su una bancarella.",
		"squadra il nemico con l'interesse schietto di un perito.",
	},
	["cls.rogue.battle.w05.017"] = {
		"Il cuore dice scappa, le mani dicono resta. Le mani ragionano meglio.",
		"Un pezzo di me è già a metà strada verso l'uscita. Il resto ha da fare.",
	},
	["cls.rogue.battle.w05.018"] = {
		"Avanti. Sarò la cosa più difficile che tu abbia mai cercato di colpire.",
		"Prova a mettermene a segno uno. Su. Io intanto aspetto da un'altra parte.",
		"Hanno provato a prendermi in tanti, e più bravi di te. Ci stanno ancora provando.",
	},
	["cls.rogue.battle.w05.019"] = {
		"Ovunque tu tenga i reni, li troverò.",
		"Non so dove tieni i reni. Controllerò dappertutto.",
	},
	["cls.rogue.battle.w05.020"] = {
		"Una via d'uscita c'è sempre. È sapere questo che mi permette di restare.",
		"L'uscita ce l'ho in tasca. Buffo come renda più facile restare.",
	},
	["cls.rogue.battle.w05.021"] = {
		"comincia a contare sottovoce: uno, due, tre, e cosa succede al cinque non è affar del nemico.",
		"muove le labbra contando a ogni taglio, e tiene l'ultimo numero per la fine.",
	},
	["cls.rogue.battle.w05.022"] = {
		"Tutto istinto e nessun trucco. Almeno uno di noi due.",
		"Tu combatti con quello che hai di nascita. Io con quello che ho imparato.",
	},
	["cls.rogue.battle.w05.023"] = {
		"Una morte non ti è bastata, e sei ancora qui a dare fastidio. Ammiro la costanza.",
		"Fuori dalla tomba solo per incontrare me? Sono {g:lusingato|lusingata}, davvero.",
	},
	["cls.rogue.battle.w05.024"] = {
		"Dov'è la schiena di una cosa che è tutta davanti? Scelgo un lato e lo chiamo così.",
		"Niente schiena, niente fianchi, niente tasche. Mi tocca improvvisare.",
	},
	["cls.rogue.battle.w05.025"] = {
		"Ogni macchina ha uno sportello che si allenta. Fammi trovare il tuo.",
		"Ingranaggi e rivetti. Lì dentro c'è una giuntura più debole delle altre.",
	},
	["cls.rogue.battle.w05.026"] = {
		"Due braccia, due gambe, una schiena. Conosco bene questa forma.",
		"Ah, qualcuno con la spina dorsale. So esattamente dov'è.",
	},
	["cls.rogue.battle.w05.027"] = {
		"Odore di zolfo e di pessime decisioni. Soprattutto le tue.",
		"Un demone, e io ho solo quello che tengo in mano. Mi pare equo.",
	},
	["cls.rogue.battle.w05.028"] = {
		"dà una lunga occhiata al nemico e, in silenzio, studia l'uscita oltre all'attacco.",
		"misura il nemico, poi il terreno intorno, poi la via d'uscita più vicina, in quest'ordine.",
	},
	["cls.rogue.battle.w05.029"] = {
		"Non aspettatemi. Tanto non mi vedrete arrivare.",
		"Andate avanti. Ci sarò, solo che non vi accorgerete di quando.",
	},
	["cls.rogue.battle.w05.030"] = {
		"Che vadano avanti i rumorosi. Arrivo io mentre è occupato a odiare loro.",
		"La sua attenzione la prende qualcun altro. A me tocca tutto quello che dimentica.",
	},
	["cls.rogue.battle.w05.031"] = {
		"Se viene da me, vuol dire che ho picchiato troppo. Qualcuno sia più fastidioso di me, per favore.",
		"Se si gira verso di me, la colpa è mia. Qualcuno gli dia un motivo per guardare altrove.",
	},
	["cls.rogue.battle.w05.032"] = {
		"Silenzio, adesso. Va meglio senza discorsi.",
		"Niente discorsi. Facciamolo e basta.",
		"Risparmia il fiato. Tra poco ti servirà.",
	},
	["cls.rogue.battle.w05.033"] = {
		"Armatura di cuoio. Ottima per correre, meno per questo.",
		"La mia armatura è fatta per lo più di ottimismo e pelle cucita.",
	},
	["cls.rogue.battle.w05.034"] = {
		"allenta una cinghia al polso e ne stringe un'altra: piccole manie che rendono ferme le mani.",
		"dà uno strattone a ogni fibbia, sempre nello stesso ordine, e le mani smettono di tremare.",
	},
	["cls.rogue.battle.w05.035"] = {
		"Dimmi dove fa male. Anzi, lascia stare, lo scopro da me.",
		"Indicami il tuo punto debole. No? Allora vado a cercarlo.",
		"Tutti hanno un varco da qualche parte. Andiamo a cercare il tuo.",
	},
	["cls.rogue.battle.w05.036"] = {
		"Non inseguire. Lascia che venga lui sulla lama.",
		"Niente affondi. Il varco arriva a chi sa aspettarlo.",
	},
	["cls.rogue.battle.w05.037"] = {
		"Sono a corto di pazienza e pieno di trucchi. Scegli tu cosa preferisci incontrare.",
		"Poca pazienza, tanti trucchi sporchi. Li conoscerai entrambi.",
	},
	["cls.rogue.battle.w05.038"] = {
		"Oh, che bello. Tutta quella prudenza cominciava a pesarmi.",
		"Finalmente. Stare attenti tutto il giorno sfinisce.",
	},
	["cls.rogue.battle.w05.039"] = {
		"In ogni scontro scommetto la vita sull'essere più svelto. Un giorno la perderò, quella scommessa.",
		"La velocità è tutto quello che ho. Che basti anche stavolta.",
	},
	["cls.rogue.battle.w05.040"] = {
		"sorride, e per chi riceve quel sorriso non è mai buon segno.",
		"fa un breve ghigno, come davanti a una serratura che sa già come aprire.",
		"si illumina in volto, ed è la cosa peggiore che possa capitare al nemico.",
	},
	["cls.rogue.battle.w05.041"] = {
		"Per ogni passo che fai verso di me, io ne faccio uno di lato. Stammi dietro.",
		"Seguimi, se ci riesci. Quasi nessuno ci riesce.",
	},
	["cls.rogue.battle.w05.042"] = {
		"Prima o poi mi colpirai. Vediamo quanto ci mette il tuo prima o poi.",
		"Prima o poi ne metterai a segno uno. Io scommetto sul poi.",
	},
	["cls.rogue.battle.w05.043"] = {
		"Conta i colpi. Ogni cosa ha un ritmo, e il varco sta tra un battito e l'altro.",
		"Due colpi, un respiro, due colpi. Ecco. Quel respiro è mio.",
		"Tra un attacco e l'altro fa una pausa. Tutto la fa. Quella pausa è la mia porta.",
	},
	["cls.rogue.battle.w05.044"] = {
		"Non muoverti. Sto lavorando.",
		"Calma. È un lavoro di precisione.",
	},
	["cls.rogue.battle.w05.045"] = {
		"Cose affilate, mani svelte, pessime maniere. Piacere di conoscerti.",
		"Presentazioni: queste sono le mie lame, e sono molto maleducate.",
		"Ciao. Addio. Dirli tutti e due subito fa risparmiare tempo.",
	},
	["cls.rogue.battle.w05.046"] = {
		"gira a sinistra, poi torna a destra, senza mai fermarsi dove un colpo potrebbe arrivare.",
		"continua a scivolare fuori dalla linea d'attacco, e il nemico deve voltarsi ancora e ancora per non perderne le tracce.",
	},
	["cls.rogue.battle.w05.047"] = {
		"Oh, il tipo eroico. Cercherò di non rovinarti troppo la storia.",
		"Bella postura, mento alto. Si vede che non hai mai incontrato qualcuno come me.",
	},
	["cls.rogue.battle.w05.048"] = {
		"Spazi stretti, muri da ogni parte. Per me, una meraviglia.",
		"Angoli e corridoi. Questo è il mio genere di stanza.",
	},
	["cls.rogue.battle.w05.049"] = {
		"Teniamolo tra noi.",
		"Resta un nostro piccolo segreto, d'accordo?",
		"Non serve gridare. Nessun altro è invitato.",
	},
	["cls.rogue.battle.w05.050"] = {
		"Quel guizzo. Sta difendendo il lato sbagliato.",
		"Si copre in alto. Allora il basso è mio.",
	},
	["cls.rogue.buff.w05.001"] = {
		"Un formicolio sotto la pelle, come un respiro trattenuto che non si lascia andare. Di queste cose non mi fiderò mai del tutto, ma le prendo in prestito.",
		"Qualcosa mi ronza lungo le braccia per un attimo, poi si assesta. Non lo capisco. Non mi serve capirlo.",
	},
	["cls.rogue.buff.w05.002"] = {
		"Mi sento a meraviglia. Qualcuno metta al sicuro gli oggetti di valore.",
		"Oh, che bello. Adesso sono {g:pericoloso|pericolosa} e di buon umore. Combinazione rara.",
		"Una sensazione di solidità. Insolita, per me. Cercherò di non approfittarne in modo sconsiderato.",
	},
	["cls.rogue.buff.w05.003"] = {
		"flette le dita mentre l'effetto prende piede, come per provare un paio di guanti nuovi.",
		"sposta il peso da un piede all'altro, misurando la differenza con interesse professionale.",
		"fa scrocchiare le nocche una alla volta, come per svegliarle al cambiamento.",
	},
	["cls.rogue.buff.w05.004"] = {
		"Non durerà. Niente di ciò che è preso in prestito dura. Meglio spenderlo prima che svanisca.",
		"Un prestito, non un regalo. Lo faccio fruttare finché è ancora sul conto.",
		"Tempo in prestito, vigore in prestito. Prendere in prestito non mi è mai dispiaciuto.",
	},
	["cls.rogue.buff.w05.005"] = {
		"Bene. Mi terrà in piedi nel peggio.",
		"Bene così. {g:Pronto|Pronta} per quel che c'è dietro il prossimo angolo.",
		"Ecco. Nervi a posto. Avanti.",
	},
	["cls.rogue.buff.w05.006"] = {
		"Lo sento posarsi nelle giunture come olio caldo in un cardine. Tutto si muove come deve.",
		"Penetra come il calore nel cuoio freddo, e ogni cosa si piega come dovrebbe.",
	},
	["cls.rogue.buff.w05.007"] = {
		"si guarda le mani per un attimo, come se sospettasse che gliele abbiano sostituite con un paio migliore.",
		"prende un respiro lento e sembra crescere di un dito.",
	},
	["cls.rogue.buff.w05.008"] = {
		"Il cuore batte più regolare. Per me la regolarità vale più della forza.",
		"Più {g:saldo|salda} dentro. Un battito calmo è metà di ogni buon colpo.",
		"Polso più lento, mano più sicura. Non chiederei altro a nessun dono.",
	},
	["cls.rogue.buff.w05.009"] = {
		"Ah. Adesso i coltelli sembrano più leggeri. O mi si sono rinforzate le braccia. Una delle due.",
		"Che bello. E finirò per sprecarlo in qualche meschinità, me lo sento.",
	},
	["cls.rogue.buff.w05.010"] = {
		"Meglio, per un po'. Vorrei che il mondo avesse qualcosa del genere anche per quello che fa male dentro.",
		"Un sostegno, per ora. Le parti di me che fanno male davvero questo genere d'aiuto non lo accettano.",
	},
	["cls.rogue.buff.w05.011"] = {
		"Questa sì che è una bella sensazione. Andiamo a rovinare la giornata a qualcuno.",
		"Mi ha messo le molle nei piedi. Chiunque sia il prossimo, quasi mi fa pena.",
		"Ah. Mi sento in grado di scalare le mura di una città a mani nude. Non lo farò. Ma potrei.",
	},
	["cls.rogue.buff.w05.012"] = {
		"inspira piano mentre l'effetto attecchisce, poi lascia uscire il fiato senza un suono.",
		"resta immobile per un battito, come se ascoltasse qualcosa che accade sotto la pelle.",
		"socchiude gli occhi finché il cambiamento non si è assestato, poi torna alle sue faccende.",
	},
	["cls.rogue.buff.w05.013"] = {
		"Accetto qualunque aiuto che non arrivi con un discorso allegato.",
		"Un aiuto senza ramanzina in allegato. Abbastanza raro da gustarselo.",
	},
	["cls.rogue.buff.w05.014"] = {
		"Gli occhi mi sembrano più acuti, o così credo. In questo mestiere, credersi più svegli è già metà dell'esserlo.",
		"Tutto sembra un filo più nitido. Sarà l'effetto. Sarà l'umore. Li sfrutto tutti e due.",
	},
	["cls.rogue.buff.w05.015"] = {
		"Ottimo. Adesso, se qualcosa va storto, è di sicuro colpa di qualcun altro.",
		"Rinforzi addosso, preparativi fatti, e il piano resta comunque evitare di combattere davvero. Il meglio dei due mondi.",
	},
	["cls.rogue.buff.w05.016"] = {
		"prova di nuovo l'estrazione di ogni lama, come se il cambiamento potesse raggiungere anche loro.",
		"stringe una fibbia mentre l'effetto si assesta: un momento di calma non va mai sprecato.",
	},
	["cls.rogue.buff.w05.017"] = {
		"Adesso vengano pure. Continuerò a preferire che non mi vedano mai, ma vengano pure.",
		"Che arrivino pure i guai. Non che li cerchi, sia chiaro: li aspetto e basta.",
	},
	["cls.rogue.buff.w05.018"] = {
		"Un tepore piacevole nelle membra, come un focolare acceso dopo una lunga strada.",
		"Qualcosa di buono si deposita nelle ossa. Non chiederò cosa: me lo godo e basta.",
	},
	["cls.rogue.buff.w05.019"] = {
		"Ogni briciola aiuta. Ci sono scontri persi per una differenza più piccola di questa.",
		"Sono le piccole cose a vincere gli scontri. Questa è una piccola cosa. Approvo.",
	},
	["cls.rogue.buff.w05.020"] = {
		"si raddrizza, e qualcosa nel portamento passa dalla cautela a una calma pericolosa.",
		"solleva appena il mento, con l'aria di chi ha appena ricevuto carte migliori.",
	},
	["cls.rogue.buff.w05.021"] = {
		"Forza che non mi sono {g:guadagnato|guadagnata}. La userò comunque: gli scrupoli pesano, in viaggio.",
		"Non è merito mio, questo vigore in più. Lo spenderò senza sensi di colpa. Quasi senza.",
	},
	["cls.rogue.buff.w05.022"] = {
		"Se mi metto a brillare, ditemelo. Brillare fa malissimo agli affari.",
		"Si vede? Spero che non si veda. Nessuno si fida di un ladro che luccica.",
	},
	["cls.rogue.heal.w05.001"] = {
		"La morsa nel petto si allenta una tacca alla volta. La lascio fare, senza dire niente.",
		"Respiro meglio, adesso. Non mi ero {g:accorto|accorta} di quanto tenessi corto il fiato.",
		"L'aria arriva di nuovo fino in fondo. Strano come ci si dimentichi di sentirne la mancanza.",
	},
	["cls.rogue.heal.w05.002"] = {
		"Rimesso in sesto. Non nuovo, intendiamoci: usato, ma tenuto con cura.",
		"Ecco fatto. Di nuovo in grado di farmi sottovalutare.",
		"Ricucito tutto. Che resti agli atti: nemmeno un lamento.",
	},
	["cls.rogue.heal.w05.003"] = {
		"flette le dita una per una, come se le richiamasse in servizio contandole.",
		"scioglie le spalle con una rotazione lenta, e la rigidità abbandona la sua postura.",
		"muove la mascella da un lato all'altro, poi la serra: la faccenda del dolore è chiusa.",
	},
	["cls.rogue.heal.w05.004"] = {
		"Di nuovo {g:rattoppato|rattoppata}. Il corpo tiene il conto di queste cose, anche quando io non lo faccio.",
		"Ogni rammendo lascia una cucitura appena visibile. Ormai sono più cuciture che stoffa.",
	},
	["cls.rogue.heal.w05.005"] = {
		"Così va meglio. Allora, dove eravamo rimasti?",
		"Bene. Secondo round, e stavolta niente riguardi.",
		"Rattoppo fatto, e si riparte. Quel che viene dopo, che ne valga la pena.",
	},
	["cls.rogue.heal.w05.006"] = {
		"Qualche respiro in più, comprato. Spendili bene: un secondo lotto a buon prezzo non ci sarà.",
		"Questo mi compra tempo, non la vittoria. Non confondere le due cose.",
		"Bene. Ogni battito che recupero è un'occasione in più per chiudere la faccenda come si deve.",
	},
	["cls.rogue.heal.w05.007"] = {
		"si raddrizza in mezzo allo scontro, il colore che torna in viso, e rientra senza una parola.",
		"ritrova fiato, e il passo successivo è decisamente più svelto dell'ultimo.",
	},
	["cls.rogue.heal.w05.008"] = {
		"Adesso è tutto calmo, e mi rimetto in sesto. Buon momento per controllare l'equipaggiamento e contare cosa manca.",
		"Niente che m'insegua, e il dolore che sbiadisce. Mi prendo questo momento e ci resto un po'.",
		"Nessuna fretta, adesso, e il male che cala. È l'ora della parte noiosa: rimettere in ordine e ripartire.",
	},
	["cls.rogue.heal.w05.009"] = {
		"Sa di stivale passato per una palude. Però funziona.",
		"Vorrei scambiare due parole con chi ha deciso che le pozioni devono sapere di castigo.",
		"Stappata, ingoiata, rimpianta. In quest'ordine.",
	},
	["cls.rogue.heal.w05.010"] = {
		"La fiala vuota torna nella sacca. Il vetro vale qualcosa, e io non lascio tracce.",
		"Le fiale vuote me le tengo. Una bottiglia abbandonata dice a chiunque guardi che qui qualcuno era ferito.",
	},
	["cls.rogue.heal.w05.011"] = {
		"Quello che si era strappato si sta ricucendo, un prurito caldo da un capo all'altro. Affascinante, e un po' disgustoso.",
		"Il male si richiude come un borsello quando tiri i lacci. Lo ammirerei di più se non fosse il mio.",
	},
	["cls.rogue.heal.w05.012"] = {
		"Meglio. Niente storie. Muoviamoci.",
		"Tutto a posto. Sto bene. Nessuno faccia drammi.",
		"Tiene. Risparmiamoci i discorsi.",
	},
	["cls.rogue.heal.w05.013"] = {
		"Ancora un po' di vita in prestito. Cerco di non chiedermi a che scopo: la risposta cambia troppo spesso.",
		"Mi rimetto in sesto per poter tornare a rifare tutto. C'è una barzelletta, in questo, e il protagonista sono io.",
	},
	["cls.rogue.heal.w05.014"] = {
		"prova qualche passo sul posto, con un nuovo molleggio, e sembra in silenzio {g:soddisfatto|soddisfatta}.",
		"fa ruotare il collo finché qualcosa scrocchia, poi annuisce come se avesse chiuso un affare.",
	},
	["cls.rogue.heal.w05.015"] = {
		"Le mani di nuovo ferme. Conta più di tutto il resto: con le mani che tremano, quelli come me si fanno prendere.",
		"Il tremito è sparito dalle dita. Il resto può guarire con comodo.",
		"Dita di nuovo sciolte e sicure. Chi fa il mio mestiere con le mani intorpidite è solo qualcuno vestito di scuro.",
	},
	["cls.rogue.heal.w05.016"] = {
		"Ah, così sì. Acqua in bocca con chi mi crede invincibile.",
		"Molto meglio. La mia fama di chi non si fa mai male resta intatta, purché nessuno parli.",
	},
	["cls.rogue.heal.w05.017"] = {
		"Il dolore parla. Adesso che è ridotto a un borbottio, capisco cosa diceva: sul fianco sinistro ho abbassato la guardia.",
		"Col dolore attutito posso ripensarci con calma. Troppa lentezza nella girata. Preso nota.",
	},
	["cls.rogue.heal.w05.018"] = {
		"chiude gli occhi per la durata di un lungo respiro, e li riapre più attenti.",
		"torna a poggiare il peso su entrambi i piedi, dimenticata la cautela con cui risparmiava un fianco.",
	},
	["cls.rogue.heal.w05.019"] = {
		"Mi sento quasi di nuovo una persona civile.",
		"Guarda un po'. Il colore torna sulle guance, i coltelli tornano in mano.",
		"Meglio. Per un paio di minuti potrei perfino essere di compagnia.",
	},
	["cls.rogue.heal.w05.020"] = {
		"Quanto basta. Ed è l'unica misura di cui mi fido davvero.",
		"Non al meglio, ma abbastanza per finire quel che ho cominciato.",
	},
	["cls.rogue.heal.w05.021"] = {
		"Il mio corpo mi ha perdonato. È più generoso della maggior parte della gente che conosco.",
		"Il dolore se n'è andato, la dignità è ancora in attesa.",
		"I dolori fanno i bagagli e se ne vanno. Zoppica solo l'orgoglio.",
	},
	["cls.rogue.heal.w05.022"] = {
		"approfitta della tregua per risistemare una lama nel fodero, gli occhi già sulla prossima faccenda.",
		"si spazzola la polvere da una manica con dita svelte, il dolore a quanto pare già archiviato.",
	},
	["cls.rogue.heal.w05.023"] = {
		"Un minuto. Poi si riparte, più in silenzio stavolta.",
		"Sistemato. La prossima volta il terreno lo scelgo io.",
	},
	["cls.rogue.heal.w05.024"] = {
		"Il cuore correva verso una porta che non ho intenzione di varcare, per ora. Adesso rallenta.",
		"Il limite era più vicino di quanto la mia faccia abbia lasciato vedere. Il cuore lo sa: si sta calmando solo adesso.",
	},
	["cls.rogue.heal.w05.025"] = {
		"Un calore che si allarga dal centro, come il primo sorso di qualcosa di forte, senza il mal di testa del giorno dopo.",
		"Un bel tepore che sale da dentro. Magari tutto ciò che fa bene fosse così piacevole.",
	},
	["cls.rogue.heal.w05.026"] = {
		"Un sorso e torno in gioco. Ti servirà un piano migliore.",
		"Barare? Si chiama prevedere. Informati.",
	},
	["cls.rogue.heal.w05.027"] = {
		"Quando mi rimetto in sesto mi volto sempre un po'. Le ferite dicono alla gente dove sei debole.",
		"Guarire è una faccenda privata. Un dolore mostrato è un dolore che qualcuno si ricorda.",
	},
	["cls.rogue.heal.w05.028"] = {
		"fa un piccolo cenno soddisfatto a nessuno in particolare, come chi approva un lavoro ben fatto su di sé.",
		"si dà due colpetti sul petto, come si ringrazia un cavallo affidabile.",
	},
	["cls.rogue.heal.w05.029"] = {
		"Mi faccio ancora male più spesso di quanto vorrei. I più svelti imparano a sanguinare meno; io sto ancora imparando.",
		"Ogni graffio insegna la stessa lezione, e piano piano comincio ad ascoltarla: andarsene prima del colpo, non dopo.",
	},
	["cls.rogue.heal.w05.030"] = {
		"Tutto questo tempo nel mestiere, e il guarire mi sorprende ancora. Il corpo vuole andare avanti con più ostinazione di me.",
		"Tante ferite e tante guarigioni che ormai conosco l'ordine in cui le cose tornano: il fiato, poi le mani, poi il coraggio.",
	},
	["cls.rogue.heal.w05.031"] = {
		"Ti toccherà rifare tutto da capo. Spero che tu abbia fiato.",
		"Tutto annullato, fino all'ultimo graffio. Ricomincia.",
	},
	["cls.rogue.heal.w05.032"] = {
		"Forse lascerà un segno. Non mi dispiacciono i segni: sono l'unico registro che tengo.",
		"Un'altra linea sottile per la collezione. Non le conto: mi assicuro solo che ci sia posto.",
	},
	["cls.rogue.heal.w05.033"] = {
		"si siede sui talloni per un momento, in ascolto dei dintorni mentre il dolore defluisce.",
		"resta immobile mentre il dolore svanisce: si muovono solo gli occhi, il resto del corpo finge di non esserci.",
	},
	["cls.rogue.heal.w05.034"] = {
		"Mh. Questo ha smussato il peggio.",
		"Basta così. Il dolore è una condizione di lavoro, non una scusa.",
	},
	["cls.rogue.heal.w05.035"] = {
		"Amaro, poi caldo, poi più niente. Mi piacerebbe sapere cosa c'è dentro, e sospetto che sia meglio di no.",
		"Erbe, qualcosa di minerale e un retrogusto che preferisco non nominare. Gli alchimisti tengono i segreti meglio di me.",
	},
	["cls.rogue.muse.w05.001"] = {
		"Prima gli stivali. Una suola morbida, consumata sulla forma del mio piede, lavora più di qualunque lama io possieda.",
		"Un mantello lo rattoppo senza nemmeno guardare, ma per domare un paio di stivali nuovi ci vuole una settimana. Fino ad allora cammino come un carretto.",
		"Le spade si prendono le canzoni, gli stivali si prendono il lavoro. So bene quali salverei per primi da un incendio.",
	},
	["cls.rogue.muse.w05.002"] = {
		"Prima il bordo esterno del piede, poi ci fai rotolare sopra il peso. Migliaia di passi imparati così, e adesso non so più camminare normalmente nemmeno se ci provo.",
		"Il tallone a terra è roba per chi non ha niente da nascondere. Io appoggio il taglio del piede senza pensarci, anche quando attraverso una stanza vuota.",
	},
	["cls.rogue.muse.w05.003"] = {
		"Le mie monete viaggiano avvolte in un ritaglio di stoffa. Un borsello che tintinna è un borsello che fa la spia.",
		"So fino all'ultimo rame quanto porto addosso, e non per avidità. Le monete sciolte sbatacchiano, e sbatacchiare è una forma di pettegolezzo.",
		"Ogni fibbia imbottita, ogni fermaglio legato stretto. Il metallo che porto addosso non ha il permesso di parlare, se non glielo do io.",
	},
	["cls.rogue.muse.w05.004"] = {
		"Tutti pensano che il mestiere vesta di nero. Il nero risalta su quasi tutto. Grigio, marrone, il colore del fango vecchio: è quello che passa inosservato.",
		"Il nero pieno è per chi vuole sembrare pericoloso. Io preferisco somigliare a un muro, a un ceppo, a un mucchio di sacchi.",
	},
	["cls.rogue.muse.w05.005"] = {
		"Il cuoio secco scricchiola. Il mio lo ungo come altri strigliano un cavallo: spesso, con calma, e con un po' d'affetto.",
		"Uno scricchiolio alla spalla, così lieve che nessun altro lo sentirebbe. Più tardi il cuoio avrà il suo olio, e io la mia pace.",
	},
	["cls.rogue.muse.w05.006"] = {
		"Ho lavorato sodo su una faccia che nessuno ricorda: gradevole, comune, vagamente annoiata. È il miglior travestimento che ho, e non mi è costato niente.",
		"Niente cicatrici in vista, niente colori accesi, niente da descrivere dopo. Se un testimone dice 'qualcuno, mi pare', ho lavorato bene.",
		"Il trucco non è nascondersi. È essere talmente ordinari che lo sguardo ti scivola addosso come l'acqua sulla tela cerata.",
	},
	["cls.rogue.muse.w05.007"] = {
		"Una lanterna è una cosa onesta. Ti dice esattamente dove non metterti.",
		"Ogni luce fa una promessa su dove cadrà il buio. Su quelle promesse ci ho costruito una vita intera.",
		"Dove finisce la luce della lanterna c'è una linea tracciata apposta per me. Non la oltrepasso mai per caso.",
	},
	["cls.rogue.muse.w05.008"] = {
		"La folla è il miglior riparo che esista. Muoviti alla sua velocità, guarda dove guarda lei, e sei solo un'altra foglia sul fiume.",
		"La gente crede che per nascondersi servano angoli bui. Dammi piuttosto un mercato affollato: cento facce, e nessuna che guarda la mia.",
	},
	["cls.rogue.muse.w05.009"] = {
		"Conosco una dozzina di modi per uscire da una stanza senza che nessuno se ne accorga. A restarci, invece, non ho mai imparato davvero.",
		"Sgattaiolare via è facile, potrei farlo nel sonno. Restare, sedermi, lasciare che qualcuno mi guardi per un po': quella sì che è una serratura difficile.",
		"In qualunque stanza trovo l'uscita prima ancora di trovare una sedia. Dovrebbe preoccuparmi più di quanto mi preoccupi.",
	},
	["cls.rogue.muse.w05.010"] = {
		"La rabbia fa rumore. La mia la lascio sulla porta come gli stivali infangati, e la riprendo all'uscita se ne ho ancora voglia.",
		"Testa calda, passo pesante. Più sono {g:arrabbiato|arrabbiata}, più mi costringo a muovermi piano e in silenzio.",
	},
	["cls.rogue.muse.w05.011"] = {
		"La paura non se ne va mai davvero. Le ho solo insegnato a sussurrare, e a sussurrare cose utili.",
		"Un po' di timore tiene leggeri i passi. Il giorno che smetto di avere paura divento {g:distratto|distratta}, e chi si distrae dura poco.",
		"Paura? Sempre, un po'. È il filo teso sotto ogni passo silenzioso, e se si spezzasse mi mancherebbe.",
	},
	["cls.rogue.muse.w05.012"] = {
		"Dicono che un colpo alle spalle sia disonorevole. Anche perdere lo è, e dura molto più a lungo.",
		"Gli scontri leali sono per chi può permettersi di perderli. Io prendo l'angolazione che mi capita e i bei discorsi li lascio agli altri.",
	},
	["cls.rogue.muse.w05.013"] = {
		"La gente pensa che muoversi di soppiatto sia da vigliacchi. Provino loro a stare a due passi da qualcosa che li ucciderebbe, senza respirare e senza scappare.",
		"C'è un coraggio che nessuno mette in musica: restare immobili mentre il pericolo ti passa accanto, tanto vicino da poterlo toccare.",
	},
	["cls.rogue.muse.w05.014"] = {
		"Essere {g:sottovalutato|sottovalutata} è un regalo. Lo scarto con calma, e non dico mai grazie.",
		"Che mi credano pure {g:innocuo|innocua}, {g:noioso|noiosa}, nemmeno da tenere d'occhio. Li correggerò più avanti, e in fretta.",
		"Nessuno ha paura di chi se ne sta zitto in fondo. È il mio posto preferito.",
	},
	["cls.rogue.muse.w05.015"] = {
		"Fortuna? La fortuna è solo preparazione che nessuno ha visto.",
		"Mi chiamano {g:fortunato|fortunata}. Io lo chiamo controllare due volte le assi del pavimento.",
	},
	["cls.rogue.muse.w05.016"] = {
		"Mai correre quando basta camminare. Correre è una confessione.",
		"Rallenta. Nessuno guarda due volte chi ha l'aria annoiata.",
	},
	["cls.rogue.muse.w05.017"] = {
		"Non sto sgattaiolando. Sto camminando con riguardo.",
		"Non è strisciare. È buona educazione, con le suole morbide.",
		"Di soppiatto? Ma no. Faccio solo pochissimo chiasso quando arrivo.",
	},
	["cls.rogue.muse.w05.018"] = {
		"La gente rumorosa ti racconta tutto di sé. Quella silenziosa ti avverte soltanto di fare attenzione.",
		"Tieni d'occhio chi non parla. Chi chiacchiera è occupato; chi tace sta contando.",
	},
	["cls.rogue.muse.w05.019"] = {
		"Prima di cena posso essere tre persone diverse. Il difficile è ricordarsi quale delle tre ha dei debiti.",
		"Un'altra andatura, un'altra voce, un altro modo di reggere la tazza, ed eccomi diventare qualcun altro. Di solito qualcuno più educato.",
	},
	["cls.rogue.muse.w05.020"] = {
		"Calma. Se volessi il tuo borsello, ti staresti già chiedendo dove l'hai lasciato.",
		"Smettila di stringerti le tasche. Così mi fai solo vedere quale conta.",
	},
	["cls.rogue.muse.w05.021"] = {
		"Oggi avrei potuto essere più crudele, e non l'ho fatto. Tengo il conto, in silenzio, di quelle volte. È l'unico conto di cui vado {g:fiero|fiera}.",
		"La via rapida è quella gentile, quasi sempre. Quando ce n'è una che non chiede nessuna lama, mi piace prenderla, e non lo racconto a nessuno.",
	},
	["cls.rogue.muse.w05.022"] = {
		"Piedi silenziosi e mani svelte: questo è il mestiere. Cosa ci faccio è affar mio, e certi giorni è perfino onesto.",
		"Un buon fabbro di serrature e un buon scassinatore hanno imparato esattamente le stesse lezioni. La differenza sta soprattutto in chi paga, e quando.",
	},
	["cls.rogue.muse.w05.023"] = {
		"Saper cadere è metà del mestiere. Ti sciogli, rotoli, e non litighi mai col terreno: vince sempre lui.",
		"Mento dentro, offri la spalla, continua a rotolare. Una buona caduta costa un livido. Una caduta rigida costa una settimana.",
	},
	["cls.rogue.muse.w05.024"] = {
		"Il buio è sopravvalutato. Una strada affollata, tutta commissioni e gomitate, nasconde più gente di qualunque vicolo.",
		"Tutti tengono d'occhio gli angoli bui. Nessuno guarda chi passa in piena vista con una cassa in spalla.",
	},
	["cls.rogue.muse.w05.025"] = {
		"Le guardie sono facili: credono ai loro occhi. Il problema sono le bestie. Un lupo crede al suo naso, e contro un naso non ho difese.",
		"Prima di tutto guardo da che parte va l'aria. Gli occhi si possono ingannare. I nasi portano rancore.",
		"Con l'aria in faccia sono un fantasma. Con l'aria alle spalle, ogni cane nel raggio di un miglio sa cos'ho mangiato a cena.",
	},
	["cls.rogue.muse.w05.026"] = {
		"La prima cosa che imparo in qualunque casa è quale asse del pavimento canta. Tutto il resto può aspettare.",
		"Le scale scricchiolano al centro e tacciono ai bordi. Non me l'ha insegnato nessuno: ho solo ascoltato un'infinità di scale.",
	},
	["cls.rogue.muse.w05.027"] = {
		"Gli altri vedono un muro. Io vedo un tubo di scolo, due pietre smosse e un davanzale. Una scala, in fondo, solo messa male.",
		"I muri non esistono. Esistono solo scale che non mi sono ancora state presentate.",
		"Un cancello chiuso a chiave è solo un invito a guardare più da vicino i cardini.",
	},
	["cls.rogue.muse.w05.028"] = {
		"Non riesco a smettere di notare. Un bottone che manca, fango fresco su uno stivale, un anello al dito sbagliato. Certi giorni darei molto per guardare una cosa e non vederci niente.",
		"I miei occhi non riposano. Contano uscite, tasche, occhiate. Anche quando li supplico di darmi un po' di pace, continuano a tenere il conto.",
	},
	["cls.rogue.muse.w05.029"] = {
		"Un sassolino nello stivale. Adesso. Fra tutti i momenti che poteva scegliere.",
		"Qualcosa mi sta risalendo la manica, e io non posso muovermi. Questo mestiere ha i suoi giorni gloriosi, e oggi non è uno di quelli.",
	},
	["cls.rogue.muse.w05.030"] = {
		"Non è invisibilità. Chiunque mi guardasse dritto, abbastanza da vicino, mi vedrebbe. Tutta l'arte sta nel non dargliene motivo.",
		"Essere nascosti vuol dire solo non essere notati. Avvicinati troppo, muoviti troppo in fretta, e il trucco si sfalda come carta bagnata.",
	},
	["cls.rogue.muse.w05.031"] = {
		"La lentezza è il prezzo per non essere visti. Mi muovo come miele freddo, e il resto del mondo non mi aspetta.",
		"Ogni muscolo teso a metà, ogni passo una piccola decisione. Un'ora così mi stanca più di una corsa da un capo all'altro di una valle.",
		"Nascosti vuol dire lenti, e lenti vuol dire indolenziti. Nessuno racconta quanto bruci, dopo un po', camminare {g:chinato|chinata} e con prudenza.",
	},
	["cls.rogue.muse.w05.032"] = {
		"Da qui vedo tutti e nessuno vede me. Sembra potere. Il più delle volte somiglia a stare fuori da una finestra.",
		"La gente è diversa quando si crede sola. Più tenera, più sciocca, più triste. Mi sento sempre un po' {g:ladro|ladra} anche di questo.",
	},
	["cls.rogue.muse.w05.033"] = {
		"Ogni passo scelto a mano. Non la ghiaia, non l'asse smossa, non il rametto. Qualcosa di morbido, qualcosa di solido, poi il successivo.",
		"Punta, prova, peso. Punta, prova, peso. Contare tiene onesti i piedi.",
	},
	["cls.rogue.muse.w05.034"] = {
		"Un attimo prima che qualcuno sappia che sono qui, il mondo intero sembra trattenersi insieme a me. Per quell'attimo darei molto.",
		"Senza essere {g:visto|vista}, sono una domanda che nessuno ha ancora pensato di fare. Mi piace essere quella domanda.",
		"Nessuno sa che sono qui. Per un po', tutto quello che succederà dopo spetta a me deciderlo.",
	},
	["cls.rogue.muse.w05.035"] = {
		"si immobilizza del tutto, in ascolto, e riprende a muoversi solo quando è {g:certo|certa} che niente stia ascoltando a sua volta.",
		"si appiattisce contro il riparo più vicino e aspetta senza muovere un muscolo, paziente come un sasso.",
	},
	["cls.rogue.muse.w05.036"] = {
		"si muove lungo i margini delle cose, {g:inosservato|inosservata}, e il mondo continua a badare ai fatti suoi come se non fosse passato nessuno.",
		"avanza basso e senza fretta, un'increspatura silenziosa all'angolo dell'occhio di nessuno.",
	},
	["cls.rogue.muse.w05.037"] = {
		"saggia il terreno davanti con la punta dello stivale prima di affidargli il proprio peso.",
		"si ferma a metà passo, il piede sollevato, in ascolto, poi lo appoggia in un punto appena diverso.",
	},
	["cls.rogue.muse.w05.038"] = {
		"abbraccia i dintorni con un'unica occhiata senza fretta: il riparo più vicino, la via d'uscita più vicina, il paio d'occhi più vicino.",
		"si guarda intorno con un'aria svagata che non si lascia sfuggire assolutamente niente.",
	},
	["cls.rogue.muse.w05.039"] = {
		"stringe una cinghia che non era allentata, poi la ricontrolla, per scrupolo.",
		"sposta il fodero sul fianco della larghezza di un dito, e finalmente ha l'aria {g:soddisfatto|soddisfatta}.",
	},
	["cls.rogue.muse.w05.040"] = {
		"resta così a lungo senza muoversi che chiunque passasse dovrebbe guardare due volte per accertarsi che lì ci sia qualcuno.",
		"si cala in un'immobilità così completa da sembrare non tanto un'attesa quanto un appartenere al luogo.",
		"si confonde con l'ambiente al punto che una falena potrebbe posarsi sulla sua manica senza scomporsi.",
	},
	["cls.rogue.muse.w05.041"] = {
		"tiene un coltellino in equilibrio sulla punta di un dito per un lungo istante, poi lo rinfodera senza il minimo fruscio d'acciaio.",
		"fa girare un coltello attorno a un dito, lo riprende per l'impugnatura e lo ripone come se niente fosse.",
	},
	["cls.rogue.muse.w05.042"] = {
		"si tasta una tasca, poi un'altra, poi una terza, e pare rassicurarsi per quello che ci trova ancora.",
		"conta qualcosa al tatto dentro un sacchetto, le labbra che si muovono senza suono, e a quanto pare il totale torna.",
	},
	["cls.rogue.muse.w05.043"] = {
		"Mi fido senza riserve di tre cose: un cardine ben oliato, una serratura fatta bene e le mie due mani. Con le persone ci metto di più.",
		"Cardini, serrature e coltelli non mi hanno mai mentito. Le persone hanno precedenti peggiori, e io sono una di loro.",
	},
	["cls.rogue.muse.w05.044"] = {
		"Ogni serratura è la piccola speranza di qualcuno di tenere al sicuro qualcosa. Anche quando ne apro una, cerco di ricordarmelo.",
		"Dietro ogni serratura c'era una persona in pensiero. Mi piace credere di sentire quella pena da quanto l'ha voluta dura.",
	},
	["cls.rogue.muse.w05.045"] = {
		"Gente mai vista mi consegna le sue scatole chiuse a chiave e si fida che gliele restituisca. Aperte, per giunta. È stranamente commovente.",
		"Si sparge la voce che so aprire le cose. D'un tratto tutti hanno una scatoletta col coperchio bloccato e una faccia piena di speranza.",
	},
	["cls.rogue.muse.w05.046"] = {
		"Attrezzi da scasso, li chiamano. Io preferisco 'kit di persuasione'.",
		"Li vendono come arnesi da ladro. Che maleducazione. Io li uso soprattutto su forzieri di cui nessuno trova più la chiave.",
	},
	["cls.rogue.muse.w05.047"] = {
		"Le cose che la gente si porta dietro. Un cucchiaio storto, mezzo biscotto, un bottone spaiato. Ogni tasca è un piccolo museo malinconico.",
		"Ho smesso di aspettarmi tesori dalle tasche. Pelucchi, un rame, un dente avvolto in uno straccio. Qualcuno voleva bene a quel dente.",
	},
	["cls.rogue.muse.w05.048"] = {
		"Per sfilare qualcosa da una tasca smetti per un attimo di essere una persona. Diventi uno spiffero, uno sfioramento di stoffa, una cosa per cui nessuno si volta.",
		"La mano entra mentre l'altro espira. Mai mentre inspira: quando si prende fiato, si nota tutto.",
	},
	["cls.rogue.muse.w05.049"] = {
		"Un colpetto dietro l'orecchio e un bel sonnellino. È la cosa più gentile che faccio, e nessuno mi ringrazia mai.",
		"Tramortire qualcuno è una gentilezza sottovalutata. Nessuno si fa male, e qualcuno si gode un riposo di cui aveva gran bisogno.",
	},
	["cls.rogue.muse.w05.050"] = {
		"Schivare a quel modo non è magia. È il corpo che si rifiuta, in gran fretta, di stare dove sta per abbattersi il guaio.",
		"Se serve, per un po' riesco a rendermi impossibile da toccare. Poi l'effetto svanisce, e conviene che io sia altrove.",
	},
	["cls.rogue.muse.w05.051"] = {
		"Lo scatto è l'unico momento in cui mi concedo di essere {g:rumoroso|rumorosa} e {g:sgraziato|sgraziata}. Gomiti, polvere, nessuna dignità. Funziona.",
		"Tutto questo esercizio per muovermi in silenzio, e a volte la risposta è correre come una lepre spaventata.",
	},
	["cls.rogue.muse.w05.052"] = {
		"Sparire costa un pizzico di polvere lampo e un po' d'orgoglio. La polvere la compro a sacchetti. All'orgoglio ho imparato a rinunciare.",
		"Uno sbuffo di polvere e non ci sono più, in pieno scontro, come se il pavimento mi avesse {g:inghiottito|inghiottita}. Non ho mai smesso di trovarlo un po' buffo.",
	},
	["cls.rogue.muse.w05.053"] = {
		"Polvere accecante, piegata nella carta, tenuta all'asciutto. La controllo più spesso del borsello.",
		"Un pizzico negli occhi mi compra lo spazio che mi serve. Crudele, forse, ma più gentile di quasi tutte le alternative.",
	},
	["cls.rogue.muse.w05.054"] = {
		"Quasi tutti i problemi sono solo teste girate dalla parte sbagliata. Un sassolino lanciato nel punto giusto le fa voltare, e il problema se ne va a controllare.",
		"Un rumorino laggiù, e tutti gli occhi vanno laggiù. La gente obbedisce a un tonfo con una docilità meravigliosa.",
	},
	["cls.rogue.muse.w05.055"] = {
		"Chi lancia incantesimi mi detesta. Sarà che non ama essere interrotto a metà parola da uno stivale.",
		"Niente zittisce un incantesimo come un calcio ben assestato. Maleducato, lo so. Efficace, so anche questo.",
	},
	["cls.rogue.muse.w05.056"] = {
		"Dopo le fiale mi lavo le mani due volte, e poi una terza per scaramanzia. Il mestiere perdona tanti errori, ma non quello.",
		"Tappi ben premuti, fiale avvolte negli stracci, mai nella stessa tasca del cibo. Il veleno è un mestiere di piccole abitudini prudenti.",
	},
	["cls.rogue.muse.w05.057"] = {
		"Un pugnale ti chiede di avvicinarti e di fare sul serio. Una spada ti concede un po' di distanza. In ogni caso il lavoro è lo stesso: trovare lo spiraglio.",
		"Lama corta o lunga, non è mai davvero questione di filo. È questione di dove va, di quando, e se l'hanno vista partire.",
	},
	["cls.rogue.muse.w05.058"] = {
		"Affilo le lame poco e spesso, come altri canticchiano. Tiene occupate le mani e quieta la testa.",
		"Qualche passata sulla cote ogni volta che mi siedo. Non perché ne abbia bisogno la lama. Perché ne ho bisogno io.",
		"Il sibilo della cote lungo il filo è l'unica ninna nanna di cui mi fido.",
	},
	["cls.rogue.muse.w05.059"] = {
		"Sento un nome una volta e mi resta, insieme alla voce che l'ha pronunciato e a dove guardava, in quel momento, chi parlava.",
		"Nomi, facce, l'ordine in cui la gente entra in una stanza. La mia memoria trattiene tutto, che io glielo chieda o no.",
	},
	["cls.rogue.muse.w05.060"] = {
		"Non ci crederesti, quante cose vanno zittite quando ti nascondi: ginocchia che schioccano, una cintura che scricchiola, una risata che vuole uscire nel momento peggiore.",
		"La cosa più rumorosa di me non sono mai i piedi. È la tosse che tengo da parte, o la battuta che mi è appena venuta in mente.",
	},
	["cls.rogue.muse.w05.061"] = {
		"Sono una compagnia splendida. Chiedetelo a chiunque si sia accorto che c'ero.",
		"Dicono che sia un piacere avermi intorno. Quei pochi che saprebbero dire dove stavo.",
	},
	["cls.rogue.muse.w05.062"] = {
		"Prendere le cose è facile. Rimetterle a posto senza che nessuno se ne accorga: quello sì che è un numero da esibire, e non posso esibirlo a nessuno.",
		"A volte restituisco quel che ho sfilato, giusto per tenere oneste le mani. Nemmeno di questo si accorge mai nessuno.",
	},
	["cls.rogue.muse.w05.063"] = {
		"Il silenzio non è vuoto. Ha una venatura, come il legno, e se ti muovi seguendola nessuno ti sente.",
		"Esistono cento tipi di silenzio. Il trucco è intonarsi a quello in cui ti trovi.",
		"Il rumore è una stoffa piena di buchi. Passa attraverso i buchi e nessuno sente niente.",
	},
	["cls.rogue.muse.w05.064"] = {
		"In questo mestiere non c'è un'ultima lezione. Ogni serratura, ogni guardia, ogni folla mi insegna qualcosa, di solito dopo avermi messo in imbarazzo.",
		"Il giorno che mi crederò abbastanza {g:bravo|brava} sarà il giorno che qualcuno mi acchiappa. Così continuo a credere di non esserlo.",
	},
	["cls.rogue.muse.w05.065"] = {
		"Prima di qualunque lavoro delicato mi sgranchisco le dita, una per una, come un musicista prima di suonare. Mani rigide sono mani rumorose.",
		"Le mie mani sono la cosa più preziosa che ho. Unghie corte, nocche sciolte, e mai, per nessuna ragione, un pugno contro un muro.",
	},
	["cls.rogue.muse.w05.066"] = {
		"Un pezzo di cordino sottile, un po' di cera, un ritaglio di stoffa scura, qualche rame per il pane o per la fortuna. Lo zaino è piccolo, ma ogni suo angolo ha una ragione.",
		"Viaggiare abbastanza leggeri da arrampicarsi, abbastanza carichi da cavarsela. Riordino lo zaino più spesso di quanto la gente riordini le proprie idee.",
	},
	["cls.rogue.muse.w05.067"] = {
		"Una buona giornata, secondo il mio metro: nessuno mi ha guardato due volte, e io ho guardato tutto.",
		"Piaceri semplici. Una porta che si apre senza un suono. Una folla che si scosta senza accorgersene. Uno sgabello in un angolo, con la vista sull'ingresso.",
	},
	["cls.rogue.muse.w05.068"] = {
		"Nessuno ti avverte di quanto sia noioso questo mestiere. Per ogni attimo di sangue freddo ci sono ore passate {g:accucciato|accucciata} a pensare al pranzo.",
		"Le canzoni non parlano dell'attesa. E nemmeno del crampo al polpaccio, che è quasi tutto quello che mi resta in mente.",
	},
	["cls.rogue.muse.w05.069"] = {
		"Certe cose che ho fatto preferirei non spiegarle. Altre sono state gentili, e nemmeno quelle le ha viste nessuno. Spero che pesino più o meno uguale.",
		"Le mie buone azioni sono silenziose quanto quelle cattive. Se qualcuno, chissà dove, tiene i conti, spero che abbia la vista acuta.",
	},
	["cls.rogue.muse.w05.070"] = {
		"Sì, porto dei coltelli. Più d'uno. No, non puoi vederli. È proprio questo il senso di portarli così.",
		"Tutti vogliono sapere quante lame ho addosso. La risposta onesta è: una in più di quelle che hai trovato.",
	},
	["cls.rogue.muse.w05.071"] = {
		"Parla meno, ascolta di più, vattene prima di quanto chiunque si aspetti. Tutto il metodo è qui.",
		"Non spiegare, non vantarti, non indugiare. Quel che avanza è fortuna.",
	},
	["cls.rogue.muse.w05.072"] = {
		"Ovunque io sia, una parte di me sta già scegliendo dove nascondermi se servisse. Non credo che si spenga mai.",
		"Ho il sonno leggero e dormo con la faccia verso la porta. Il riposo, per me, è una cosa da fare con un orecchio aperto.",
	},
	["cls.rogue.muse.w05.073"] = {
		"Ho passato così tanto tempo a guardare vivere gli altri che a volte dimentico di avere il permesso di farlo anch'io.",
		"Ogni vita che osservo da un angolo sembra un po' più calda di come la mia si sente da dentro. Probabilmente è solo questione di prospettiva.",
		"Conosco le abitudini di cento sconosciuti e il nome di pochissimi amici. Bel baratto, davvero.",
	},
	["cls.rogue.muse.w05.074"] = {
		"Non sono gentile. Sono {g:silenzioso|silenziosa}. La gente confonde le due cose una volta sola.",
		"Parlare piano non vuol dire essere {g:tenero|tenera}. Chiedetelo a chi ha voluto verificare la differenza.",
	},
	["cls.rogue.muse.w05.075"] = {
		"Le mani ferme si allenano, non nascono così. Le mie un tempo tremavano. Adesso tremano solo dopo, dove nessuno guarda.",
		"Il segreto coi nervi è lasciarli parlare più tardi. Durante, sono di pietra. Dopo, ho il diritto di sedermi.",
	},
	["cls.rogue.muse.w05.076"] = {
		"fa ruotare le spalle e piega le dita una alla volta, come chi si prepara ad aprire qualcosa di molto delicato.",
		"non fa schioccare le nocche, non si schiarisce la voce, eppure in qualche modo dà l'impressione di prepararsi.",
	},
	["cls.rogue.muse.w05.077"] = {
		"Mi chiamano {g:ladro|ladra}, come se fosse una vita spericolata. Quasi tutte le mie giornate le passo a essere {g:prudentissimo|prudentissima}.",
		"Non c'è niente di brigantesco nel contare le assi del pavimento. Semmai sono la persona più ordinata che conosca.",
	},
	["cls.rogue.muse.w05.078"] = {
		"Un'armatura di piastre completa fa il rumore di una cucina che rotola giù per le scale. Ogni volta che la sento faccio una smorfia per chi ci sta dentro.",
		"Chi lancia incantesimi ronza, i guerrieri sferragliano. Io sono quella presenza che nessuno sente, e mi va benissimo così.",
	},
	["cls.rogue.muse.w05.079"] = {
		"Se faccio bene questo lavoro, nessuno racconterà mai una storia su di me. Certi giorni è una consolazione, certi altri no.",
		"Il lavoro migliore non lascia racconti. Ho fatto pace con l'essere una nota a margine che nessuno ha scritto.",
		"Le canzoni si scrivono su chi si è fatto vedere. Io ho scelto l'altro genere di vita, e quasi sempre lo sceglierei di nuovo.",
	},
	["cls.rogue.muse.w05.080"] = {
		"Mani rapide, decisioni lente. Se le inverti, non avrai l'occasione di rimetterle a posto.",
		"Affretta la lama, mai la scelta. È nella scelta che quasi tutti sbagliamo.",
	},
	["cls.rogue.muse.w05.081"] = {
		"Ogni tanto pesto un po' i piedi apposta, solo per sentirmi arrivare come una persona qualunque.",
		"Di quando in quando è riposante fischiettare, strascicare gli stivali e far sapere a tutto il mondo che sto arrivando.",
	},
	["cls.rogue.muse.w05.082"] = {
		"Da qui potrei legare insieme i lacci degli stivali di qualcuno, e non se ne accorgerebbe mai. Non lo farò. Probabilmente.",
		"Nessuno mi vede, e ho tutto questo tempo a disposizione. È difficilissimo non combinare qualche sciocchezza.",
		"Nessuno mi nota, e mi prudono le mani dalla voglia di spostare qualcosa. Un cappello, magari. Una sedia, qualche dito più a sinistra.",
	},
	["cls.rogue.muse.w05.083"] = {
		"Al riparo dagli sguardi. Ora le domande, in ordine: cosa guarda, cosa ascolta, e cosa c'è fra me e dove sto andando.",
		"Non essere {g:visto|vista} è solo l'inizio. Poi viene il percorso, poi il momento giusto, poi la pazienza di aspettare che combacino.",
	},
	["cls.rogue.muse.w05.084"] = {
		"La fiducia è l'unica cosa che non riesco a sfilare a nessuno. Quando me la danno spontaneamente, la porto come vetro sottile.",
		"Potrei prendere quasi tutto a quasi chiunque. Non la fiducia. Quella va data, ed è per questo che la custodisco con tanta cura.",
	},
	["cls.rogue.muse.w05.085"] = {
		"aggira un punto che avrebbe scricchiolato, senza aver mai abbassato lo sguardo per trovarlo.",
		"ferma con due dita una fibbia allentata prima che tintinni, senza rompere il passo.",
	},
	["cls.rogue.muse.w05.086"] = {
		"Conta le persone in una stanza prima di contare qualunque altra cosa.",
		"Prima gli occhi, poi le porte, poi gli oggetti di valore. Sbaglia l'ordine una volta e non ci sarà una seconda lezione.",
	},
	["cls.rogue.quest_complete.w05.001"] = {
		"Un piacere fare affari. Soprattutto la parte degli affari.",
		"Fatto. Se dovesse sparire qualcosa, io qui non ci sono mai {g:stato|stata}.",
		"Ecco, tutto sistemato. Inutile che ti controlli le tasche: oggi sono in servizio.",
	},
	["cls.rogue.quest_complete.w05.002"] = {
		"In quella commissione ho imparato più di quanto mi fosse richiesto. Succede sempre. Me lo metto da parte, come uno scoiattolo con le noci.",
		"Il lavoro è fatto, ma la parte utile è quello che ho notato per strada. Quella non finisce mai nel rapporto.",
	},
	["cls.rogue.quest_complete.w05.003"] = {
		"accetta ciò che viene offerto senza guardarlo, come si ricambia il cenno di un vecchio conoscente.",
		"soppesa per un attimo sul palmo quanto ha ricevuto, come se il vero valore si leggesse dal peso.",
		"lancia un'occhiata alle spalle prima di prendere ciò che viene porto, per pura abitudine.",
	},
	["cls.rogue.quest_complete.w05.004"] = {
		"Un'altra cancellata dalla lista. Potrei abituarmi a rendermi utile.",
		"Fatto, e nessuno si è preso una coltellata senza meritarla. Be'. Probabilmente.",
		"Finito. Farei un inchino, ma gli inchini attirano l'attenzione.",
	},
	["cls.rogue.quest_complete.w05.005"] = {
		"Nel mio mestiere, di solito, l'unica ricompensa è non farsi prendere. Questo è un piacevole cambiamento.",
		"Una ricompensa per un lavoro onesto. Cercherò di non montarmi la testa.",
		"Lavoro onesto, paga onesta. Mi sento vagamente male.",
	},
	["cls.rogue.quest_complete.w05.006"] = {
		"Lavoro finito, e la strada aspetta. Nessuno mi chiede mai dove vado dopo, e mi va bene così.",
		"Il grazie dura un attimo. La strada che viene dopo dura molto di più, e la strada mi piace di più.",
	},
	["cls.rogue.quest_complete.w05.007"] = {
		"La prossima volta, qualcosa di difficile. Con le commissioni sono {g:sprecato|sprecata}.",
		"Tutto qui? Mi ero {g:preparato|preparata} a qualcosa di più duro.",
		"Facile. Sospettosamente facile. All'uscita mi guarderò le spalle.",
	},
	["cls.rogue.quest_complete.w05.008"] = {
		"Ogni incarico così è allenamento. Muoversi senza farsi notare, scegliere il momento, andarsene senza lasciare tracce. L'incarico in sé conta poco.",
		"Qualunque cosa credano di aver pagato, io ci ho guadagnato una prova generale. Pazienza, tempismo, un'uscita discreta.",
	},
	["cls.rogue.quest_complete.w05.009"] = {
		"trattiene un ghigno e riesce, a malapena, a sembrare {g:modesto|modesta}.",
		"si dipinge in faccia un'aria di umile cortesia che non ingannerebbe proprio nessuno.",
	},
	["cls.rogue.quest_complete.w05.010"] = {
		"Avevo detto che l'avrei fatto. Fatto.",
		"Ci avevo messo la parola. Adesso è mantenuta.",
		"Promesso, consegnato. Non c'è altro da dire.",
	},
	["cls.rogue.quest_complete.w05.011"] = {
		"Ho fatto quel che mi è stato chiesto. Se fosse giusto è una domanda che metto nella sacca insieme alle altre, e me la porto dietro.",
		"Fatto. Non chiedo da che parte stia un lavoro; spero soltanto, ogni tanto, che fosse quella giusta.",
	},
	["cls.rogue.quest_complete.w05.012"] = {
		"Uno scambio onesto. Abbastanza raro nel mio giro da gustarmelo.",
		"Patti chiari. Mi ricorderò chi paga puntuale.",
	},
	["cls.rogue.quest_complete.w05.013"] = {
		"È andata bene. Continuo ad aspettare la fregatura, e per una volta non c'è.",
		"Una cosa fatta bene, dall'inizio alla fine. Me la godo finché non va storta la prossima.",
	},
	["cls.rogue.quest_complete.w05.014"] = {
		"fa scorrere lo sguardo sui dintorni, una volta sola e senza fretta, prima di tornare alla faccenda.",
		"controlla, per lunga abitudine, chi potrebbe star guardando lo scambio.",
	},
	["cls.rogue.quest_complete.w05.015"] = {
		"Firmato, sigillato, finito. Be', non firmato: il mio nome sulle cose non lo lascio.",
		"Fatto. Se qualcuno chiede chi se n'è occupato, di' che è stato uno sconosciuto alto. O basso. Resta sul vago.",
	},
	["cls.rogue.quest_complete.w05.016"] = {
		"Certi lavori chiedono una serratura da forzare, altri una lunga camminata. Preferisco i primi, ma li prendo entrambi.",
		"Grimaldelli o gambe, il lavoro si fa comunque. So solo quale dei due piace di più alle mie dita.",
	},
	["cls.rogue.quest_complete.w05.017"] = {
		"E questa è fatta. La prossima.",
		"Sistemato. Che altro c'è?",
		"Finito. Non facciamone una cerimonia.",
	},
	["cls.rogue.quest_complete.w05.018"] = {
		"Mi misuro da quanto poco rumore ha fatto il lavoro. Questo ne ha fatto pochissimo.",
		"Un buon lavoro è uno su cui poi nessuno deve raccontare storie. Credo che questo lo fosse.",
	},
	["cls.rogue.quest_complete.w05.019"] = {
		"si tasta le tasche con un po' di teatro, come a dimostrare che tutto quel che c'è dentro ci è arrivato onestamente.",
		"mostra i palmi vuoti con un gesto plateale, una piccola recita d'innocenza che nessuno ha chiesto.",
	},
	["cls.rogue.quest_complete.w05.020"] = {
		"Un altro piccolo guaio del mondo messo in ordine, come si raddrizza un quadro storto passando.",
		"Il mondo è una stanza in disordine. Ho rimesso al suo posto un'altra cosa.",
	},
	["cls.rogue.quest_complete.w05.021"] = {
		"Ben fatto, tutti quanti. Farò finta di aver fatto io la parte difficile.",
		"Buon lavoro a tutti. Io per lo più stavo dove non potevate vedermi, e vale lo stesso.",
	},
	["cls.rogue.quest_complete.w05.022"] = {
		"Ditelo ai bardi. Anzi, no. Dite che è stato qualcun altro.",
		"Se qualcuno ci scrive una canzone, lasciate fuori il mio nome. Metteteci qualcuno con un mantello più bello.",
	},
	["cls.rogue.quest_complete.w05.023"] = {
		"Quasi tutto, in un lavoro, è aspettare e camminare. La parte che varrebbe la pena di raccontare dura pochi battiti, e io non la racconto mai.",
		"Ore di pazienza, un attimo di lavoro, e poi questo: un cenno e qualcosa per il disturbo. È un ritmo onesto.",
	},
	["cls.rogue.quest_complete.w05.024"] = {
		"dondola una volta sui talloni, con una soddisfazione che cerca di non far vedere.",
		"sbuffa piano dal naso: è quanto di più vicino a una risata l'occasione consenta.",
	},
	["cls.rogue.quest_complete.w05.025"] = {
		"Serve qualcos'altro fatto con discrezione? Non cercarmi. Spunterò io.",
		"Se salta fuori altro lavoro, lascia detto dove vuoi. Prima o poi vengo a sapere quasi tutto.",
	},
	["cls.rogue.quest_complete.w05.026"] = {
		"Lavoretti, paghe piccole, piccole lezioni. Ogni maestro del mestiere ha cominciato con commissioni come questa, mi ripeto.",
		"Niente di glorioso. Ma ogni commissione insegna ai piedi una strada e agli occhi una faccia. Alla fine si somma.",
	},
	["cls.rogue.quest_complete.w05.027"] = {
		"Ormai ne ho portati a termine moltissimi. Il mondo ha ancora più guai di quanta pazienza io abbia, ma siamo vicini.",
		"A questo punto potrei chiudere quasi ogni lavoro a occhi socchiusi. Non lo faccio: è con la troppa sicurezza che quelli come me finiscono in un fosso.",
	},
	["cls.rogue.quest_complete.w05.028"] = {
		"Che generosità. L'avrei fatto anche per meno. Non dirlo a nessuno.",
		"Hai pagato un po' troppo. Io non lo dico, se non lo dici tu.",
	},
	["cls.rogue.victory.w05.001"] = {
		"rinfodera l'arma senza guardare, come altri si infilano in tasca una chiave.",
		"ripone le armi con un solo gesto che sembra provato davanti a uno specchio.",
	},
	["cls.rogue.victory.w05.002"] = {
		"E nessuno ha nemmeno dovuto sapere come mi chiamo.",
		"Niente male. Mi lascerei la mancia, se avessi monete da buttare.",
		"Splendido. Canticchierò per il resto della strada.",
	},
	["cls.rogue.victory.w05.003"] = {
		"Ho annunciato il colpo finale con troppo anticipo. La prossima volta, nascondilo meglio.",
		"Il colpo finale l'ha visto arrivare. Per fortuna non ha potuto farci niente.",
	},
	["cls.rogue.victory.w05.004"] = {
		"Questa era la versione breve. Quella lunga non ti sarebbe piaciuta.",
		"Potevo farla durare di più. Non c'è di che.",
		"Se vuoi la rivincita, non sono facile da trovare.",
	},
	["cls.rogue.victory.w05.005"] = {
		"Nessuno da ringraziare, nessuno da incolpare. Solo io, e la polvere che si posa.",
		"Di nuovo {g:solo|sola}, che è come combatto meglio e come mi piace di meno.",
	},
	["cls.rogue.victory.w05.006"] = {
		"controlla una per una le proprie tasche, come se a derubare fosse stato lo scontro.",
		"si tasta cintura e borse, contando, per essere {g:sicuro|sicura} che nulla sia sparito nella mischia.",
		"passa il pollice su ogni fibbia e cinghia, piccolo rito per accertarsi che lo scontro non si sia preso niente.",
	},
	["cls.rogue.victory.w05.007"] = {
		"E per il prossimo numero: me ne vado.",
		"Grazie, grazie. Niente applausi, sono al lavoro.",
		"E la folla va in delirio. Be', la folla che sono io.",
	},
	["cls.rogue.victory.w05.008"] = {
		"La presa mi si è irrigidita come un filo di ferro. Apri, chiudi. Apri. Ecco.",
		"Le dita mi fanno male a forza di stringere. Entro domani mi perdoneranno.",
	},
	["cls.rogue.victory.w05.009"] = {
		"Con più velocità, più forza e moltissima più fortuna, mi avresti {g:preso|presa}.",
		"C'è mancato poco. Anzi no. Non c'è mancato per niente.",
		"Bello sforzo. Avversario sbagliato.",
	},
	["cls.rogue.victory.w05.010"] = {
		"resta {g:accovacciato|accovacciata} un istante più del necessario, a capo chino, prima di rialzarsi.",
		"indugia un respiro sul nemico caduto, poi si volta senza una parola.",
	},
	["cls.rogue.victory.w05.011"] = {
		"Ecco la sensazione. Quel mezzo battito in cui capisce, ed è già finita.",
		"Adoro l'istante in cui se ne rende conto. Arriva sempre un istante troppo tardi.",
	},
	["cls.rogue.victory.w05.012"] = {
		"Ordinato. Odio lasciare in disordine.",
		"Pulito. Nessuno saprà mai quanto ci è mancato poco. Tranne me.",
		"Nemmeno un movimento sprecato. Be', forse uno.",
	},
	["cls.rogue.victory.w05.013"] = {
		"Cinque passi di preparazione e uno per chiudere. Oggi i conti sono tornati.",
		"Accumulato, speso tutto, e la somma è tornata giusta.",
	},
	["cls.rogue.victory.w05.014"] = {
		"fa ruotare i polsi da un lato e dall'altro, finché non smettono di formicolare.",
		"scuote le mani come per scrollarsi via dell'acqua.",
	},
	["cls.rogue.victory.w05.015"] = {
		"Tu hai esitato. Io no.",
		"Un battito sprecato da parte tua. Non è servito altro.",
		"Mi hai concesso un dito. A me basta sempre il dito.",
	},
	["cls.rogue.victory.w05.016"] = {
		"Sono {g:bravo|brava} in questo. Certi giorni è un conforto, altri un peso.",
		"Un talento come il mio è una strana cosa di cui andare fieri. Io lo sono lo stesso.",
	},
	["cls.rogue.victory.w05.017"] = {
		"Qualcuno ha visto? No? Tipico. Il mio lavoro migliore, sempre senza testimoni.",
		"Il mio momento migliore, e nemmeno un'anima a guardare. È la storia del mio mestiere.",
	},
	["cls.rogue.victory.w05.018"] = {
		"Bel lavoro là davanti. Il merito per le retrovie me lo prendo io.",
		"Qualcuno ha preso le botte, io ho preso i varchi. Divisione onesta, direi.",
	},
	["cls.rogue.victory.w05.019"] = {
		"Nessuno mi ha {g:notato|notata}, là in mezzo. In gruppo, è un complimento.",
		"Non ho mai avuto addosso la sua attenzione. Chi stava davanti si è guadagnato la cena.",
	},
	["cls.rogue.victory.w05.020"] = {
		"E nemmeno una tasca. Sinceramente, a che scopo?",
		"Uno scontro intero e nemmeno una moneta da mostrare. Le bestie.",
	},
	["cls.rogue.victory.w05.021"] = {
		"Aveva un volto, e una ragione, e ora soltanto uno di noi due ha l'uno e l'altra.",
		"Forse qualcuno aspetta che torni a casa. Cerco di non pensarci.",
	},
	["cls.rogue.victory.w05.022"] = {
		"Stavolta resta giù. La seconda morte dovrebbe essere quella definitiva.",
		"Torna sotto terra, e cerca di restarci.",
		"Una volta è una tragedia. Due è solo sbadataggine.",
	},
	["cls.rogue.victory.w05.023"] = {
		"Basta togliere un perno e si ferma tutto. Adoro le macchine.",
		"Ecco. Adesso è solo ferraglia, e la ferraglia non porta rancore.",
	},
	["cls.rogue.victory.w05.024"] = {
		"Come si finisce una cosa senza gola, senza cuore, senza schiena? A quanto pare, così.",
		"Non so bene cosa ho colpito. Qualcosa lì dentro si è arreso.",
	},
	["cls.rogue.victory.w05.025"] = {
		"Quello non aveva nessun motivo di perdere contro di me. Eppure.",
		"Questa me la racconterò per settimane. Sottovoce, da me a me.",
		"Sulla carta, quello lo perdevo. Non mi sono mai {g:fidato|fidata} della carta.",
	},
	["cls.rogue.victory.w05.026"] = {
		"Troppo vicino. Tutto il mio mestiere è non farsi colpire, e io ne ho prese parecchie.",
		"Altro che difficile da colpire. Questa la sentirò per un pezzo.",
	},
	["cls.rogue.victory.w05.027"] = {
		"è già a tre passi di distanza prima che il nemico abbia finito di cadere.",
		"volta le spalle allo scontro mentre il nemico ancora cade, con la certezza di come finisce.",
	},
	["cls.rogue.victory.w05.028"] = {
		"Fatto. Allora, dove stavo andando?",
		"Bene. Torniamo a quello che facevo prima di te.",
	},
	["cls.rogue.victory.w05.029"] = {
		"Da qualche parte, un istruttore la chiamerebbe sciatteria. Quell'istruttore non è qui.",
		"Non è una mossa da mostrare a un maestro. Però ha funzionato, e i maestri qui non ci sono.",
	},
	["cls.rogue.victory.w05.030"] = {
		"si allontana di un passo dal nemico caduto, come se non c'entrasse per niente.",
		"scavalca il nemico caduto con la cortese attenzione di chi esce da una sala affollata.",
	},
	["cls.rogue.victory.w05.031"] = {
		"Ecco il guaio dello scontro leale. Tu ci hai provato.",
		"Hai rispettato le regole. Scelta coraggiosa.",
		"Lealtà fino in fondo. Quasi la ammiro.",
	},
	["cls.rogue.victory.w05.032"] = {
		"Ascolta. Non arriva niente. Va bene, adesso posso respirare.",
		"Prima ascolto, poi respiro. Al contrario, c'è chi ci lascia la pelle.",
	},
	["cls.rogue.victory.w05.033"] = {
		"Un altro cliente soddisfatto. Be', un altro cliente.",
		"Niente rimborsi, mi spiace.",
		"Grazie per la preferenza.",
	},
	["cls.rogue.victory.w05.034"] = {
		"si sistema colletto e polsini, come chi sta per tornare in società.",
		"si spazzola via una macchia di terra dalla manica, vagamente {g:offeso|offesa}.",
	},
	["cls.rogue.victory.w05.035"] = {
		"Ce l'ho fatta in tempo. Oggi la velocità è bastata.",
		"Ogni scontro è una gara di velocità. E a me piace vincerle.",
		"Ho battuto sul tempo lui e anche il dubbio. Bene.",
	},
	["cls.rogue.victory.w05.036"] = {
		"Peccato che non avesse un forziere. I miei grimaldelli si annoiano.",
		"Niente di chiuso a chiave, da nessuna parte. Le mie dita si sentono tradite.",
	},
	["cls.rogue.victory.w05.037"] = {
		"Avrei dovuto controllare quelle tasche prima di salutare.",
		"Ho scordato di alleggerire quelle tasche prima. Sciatto, e costoso.",
	},
	["cls.rogue.victory.w05.038"] = {
		"Dovevi lasciarmi passare. Era più facile per tutti e due.",
		"Ti avevo offerto una giornata tranquilla. Be', avevo intenzione di farlo.",
	},
	["cls.rogue.victory.w05.039"] = {
		"Respiro, sono quasi {g:intero|intera}, e non devo niente a nessuno. Direi una giornata onesta.",
		"Più o meno tutto d'un pezzo, e senza debiti con nessuno. Un buon conto.",
	},
	["cls.rogue.victory.w05.040"] = {
		"Non disturbarti, conosco l'uscita.",
		"Non alzarti. La strada la trovo da me.",
		"Non serve accompagnarmi alla porta.",
	},
	["cls.rogue.victory.w05.041"] = {
		"Il silenzio dopo è l'unica parte di tutto questo che sento mia.",
		"È dopo che mi sento più {g:solo|sola}, e ho imparato a farmelo piacere.",
		"Dopo uno scontro tutti parlano. Io preferisco ascoltare il niente.",
	},
	["cls.rogue.victory.w05.042"] = {
		"conta sulle dita i trucchi che restano, poi annuisce: bastano per il prossimo.",
		"fa un rapido inventario di borse, lame e fiato, e li trova tutti e tre accettabili.",
	},
	["cls.rogue.victory.w05.043"] = {
		"La prossima volta porta degli amici. Perderai lo stesso, ma in compagnia.",
		"La prossima volta portati rinforzi. Non cambierà molto, ma starai meglio.",
	},
	["cls.warrior.attack.w05.001"] = {
		"Ecco! Lo senti nelle ginocchia?",
		"Questo lo sentirai domani. Se ce l'hai, un domani.",
		"L'hai sentito fino ai piedi, vero?",
	},
	["cls.warrior.attack.w05.002"] = {
		"Occhio alla parte pesante. No, davvero, occhio.",
		"Quella, per la cronaca, è la parte pesante. L'hai trovata.",
	},
	["cls.warrior.attack.w05.003"] = {
		"ruota sul piede arretrato e fa girare l'arma in un arco corto e brutale.",
		"avanza di mezzo passo e colpisce da vicino, senza spazio per caricare.",
		"trasforma lo slancio dell'ultimo colpo direttamente nel successivo, senza mai fermarsi del tutto.",
	},
	["cls.warrior.attack.w05.004"] = {
		"Non ammirarlo. Rientra, guardia, il prossimo.",
		"Colpisci e torna in guardia. Chi resta a guardare il proprio colpo andare a segno viene colpito mentre guarda.",
		"A segno. Dimenticalo subito. Guardia.",
	},
	["cls.warrior.attack.w05.005"] = {
		"Senti? È il rumore di questa lotta che gira dalla mia parte!",
		"Abbastanza forte? Bene. L'hanno sentito tutti, anche tu.",
	},
	["cls.warrior.attack.w05.006"] = {
		"riempie i polmoni e lascia andare il grido, un suono con un filo tagliente come quello dell'arma.",
		"getta indietro la testa e grida, e l'urlo arriva più lontano di quanto sembri possibile.",
	},
	["cls.warrior.attack.w05.007"] = {
		"No, no. Me. Ce l'hai con me.",
		"Gli occhi qui. Qualunque cosa abbiano fatto loro, io ho fatto di peggio.",
	},
	["cls.warrior.attack.w05.008"] = {
		"Smettila di dimenarti e prenditelo!",
		"Non muoverti! Funziona meglio se non ti muovi!",
	},
	["cls.warrior.attack.w05.009"] = {
		"Ogni colpo che va a segno nutre il successivo. Non spezzare la catena.",
		"Colpisci, e il calore sale. Colpisci ancora, e sale di più. Non lasciarlo raffreddare.",
		"Ogni colpo attizza il fuoco. Non dargli il tempo di calmarsi.",
	},
	["cls.warrior.attack.w05.010"] = {
		"Questa è la mia risposta a quasi tutte le domande.",
		"Te lo spiegherei, ma così si fa prima.",
	},
	["cls.warrior.attack.w05.011"] = {
		"grugnisce per lo sforzo e mette il colpo successivo esattamente dove era arrivato l'ultimo.",
		"martella lo stesso punto più e più volte, come per scavare un solco nella guardia del nemico.",
	},
	["cls.warrior.battle.w05.001"] = {
		"Ogni fibbia è chiusa. Dovrai trovare un'altra via per entrare.",
		"Cinghie, lacci e fibbie: tutto a posto. Bussa quanto vuoi.",
		"Ho stretto ogni cinghia due volte. Avanti, cerca quella che mi è sfuggita.",
	},
	["cls.warrior.battle.w05.002"] = {
		"Niente trucchi da parte mia. Vedrai arrivare ogni colpo, e non ti servirà a niente.",
		"Io non fingo. Non ne ho bisogno. Lo vedrai arrivare e non lo fermerai lo stesso.",
		"Qui non c'è niente di nascosto. Dritto su di te, nel modo più semplice che conosco.",
	},
	["cls.warrior.battle.w05.003"] = {
		"I fianchi, non le mani. Quello che muove i fianchi è quello che sta per colpirmi.",
		"Bada alle spalle. Una spalla si abbassa un attimo prima di qualunque fendente.",
	},
	["cls.warrior.battle.w05.004"] = {
		"Ah, perfetto. Avevo appena finito di oliare tutto.",
		"Splendido. Cinghie nuove, filo pulito, e arrivi tu a rovinarmi entrambi.",
		"Naturale. Proprio il giorno che avevo lucidato ogni cosa.",
	},
	["cls.warrior.battle.w05.005"] = {
		"scarica il peso sui talloni, e l'armatura si assesta con un unico tintinnio sordo.",
		"si abbassa di un palmo, e ogni piastra e cinghia che porta addosso tace all'improvviso.",
	},
	["cls.warrior.battle.w05.006"] = {
		"stringe un guanto coi denti e riprende l'arma a piena presa.",
		"si sputa nel palmo, lo strofina sull'impugnatura e avanza.",
	},
	["cls.warrior.battle.w05.007"] = {
		"Qui la porta sono io. Le porte non si aprono perché lo chiedi.",
		"Considerami una porta. Pesante, sprangata e di pessimo umore.",
		"Vuoi passare? La porta sono io, e sono chiusa a chiave.",
	},
	["cls.warrior.battle.w05.008"] = {
		"Ho il sangue in subbuglio e non ho ancora menato un colpo. Dovrebbe preoccuparti.",
		"Mi sto già scaldando. Al terzo colpo rimpiangerai di non avermi {g:lasciato|lasciata} in pace.",
	},
	["cls.warrior.battle.w05.009"] = {
		"Freddo nella pancia prima del primo colpo. Non arriva mai vivo al secondo.",
		"Un brivido sotto le costole, ogni volta. Il primo colpo serio lo caccia sempre via.",
	},
	["cls.warrior.battle.w05.010"] = {
		"Porto mezza fucina sulla schiena. Il minimo che puoi fare è valerne il peso.",
		"Tutto questo ferro addosso, e mi tocchi tu? Vedi almeno di valere la fatica di portarlo.",
	},
	["cls.warrior.battle.w05.011"] = {
		"Buon terreno. Solido, piano, mio. A te resta quel che avanza.",
		"Questo terreno mi piace. Me lo tengo. Prova a prendertelo.",
		"Sotto i piedi tiene. È tutto quello che chiedo a un posto.",
	},
	["cls.warrior.battle.w05.012"] = {
		"Gomito dentro, mento giù, la guardia non si abbassa dopo il colpo. Gomito dentro. Mento giù.",
		"Tutto quello che ha detto l'istruttore, in una volta, nell'ordine sbagliato. Tieni su la guardia, e basta.",
		"Piedi larghi. No, di più. La voce dell'istruttore mi rimbomba in testa più forte della lotta.",
	},
	["cls.warrior.battle.w05.013"] = {
		"Queste braccia l'hanno fatto mille volte. Non serve che sia io a spiegargli come.",
		"Il mio corpo conosce questa lotta meglio di me. Io cerco solo di stargli dietro.",
	},
	["cls.warrior.battle.w05.014"] = {
		"Lasciate che guardino me. Voi pensate alla parte dolorosa.",
		"Tengo io i loro occhi. Voi colpite dove non guardano.",
		"Tutti gli sguardi su di me, ci penso io. Gli altri, che ogni colpo conti.",
	},
	["cls.warrior.battle.w05.015"] = {
		"Restate dietro di me, a un passo. Se riuscite a vederli in faccia, siete troppo avanti.",
		"Nessuno oltrepassa la mia spalla. Dietro c'è riparo; davanti, diventate un problema mio.",
	},
	["cls.warrior.battle.w05.016"] = {
		"Ti hanno già ucciso una volta. Io sono qui solo per renderlo definitivo.",
		"Sottoterra e di nuovo in piedi. C'è chi proprio non sa quando smettere.",
	},
	["cls.warrior.battle.w05.017"] = {
		"Denti contro ferro. So bene quale cede per primo.",
		"Mordi pure l'armatura, se vuoi. Sa d'olio e di sudore vecchio.",
	},
	["cls.warrior.battle.w05.018"] = {
		"Qualcuno ti ha messo quell'arma in mano e ti ha insegnato a usarla. Ti ha insegnato anche a non perderla?",
		"Si vede che ti hanno addestrato. Anche me. Solo che il mio addestramento era più cattivo.",
	},
	["cls.warrior.battle.w05.019"] = {
		"Là dentro non c'è niente che sanguini o si stanchi. Allora continuo a colpire finché là dentro non resta niente.",
		"Non sussulta e non si stanca. Nemmeno io, se posso evitarlo.",
	},
	["cls.warrior.battle.w05.020"] = {
		"Piastre e ribattini, come me. Vediamo di chi saltano per primi.",
		"Ferro contro ferro. Almeno capirai cosa ti sto facendo.",
	},
	["cls.warrior.battle.w05.021"] = {
		"Un colpo così grosso lascia un buco altrettanto grosso. Io starò lì dentro.",
		"Braccia enormi, ritorno lento. Io abito nello spazio tra un tuo colpo e l'altro.",
	},
	["cls.warrior.battle.w05.022"] = {
		"Le scaglie sono un'armatura, e di armature me ne intendo più di chiunque.",
		"Anche tu porti la corazza addosso, eh. Cerchiamone le giunture.",
	},
	["cls.warrior.battle.w05.023"] = {
		"Qualunque fuoco ti abbia fatto, il ferro semplice lo taglia ancora.",
		"Non conosco il tuo nome né il tuo padrone. Mi basta sapere dove colpire.",
	},
	["cls.warrior.battle.w05.024"] = {
		"Allora, siamo onesti: sarà una faccenda rumorosa.",
		"Meglio avvisarti: lavoro in modo tutt'altro che silenzioso.",
		"Preparati. Non al colpo: al baccano.",
	},
	["cls.warrior.battle.w05.025"] = {
		"Ecco. Il rumore dentro tace e tutto diventa semplice. Mi era mancato.",
		"È l'unico posto in cui non c'è niente da spiegare. Avvicinati e lavora.",
	},
	["cls.warrior.battle.w05.026"] = {
		"Presa salda e testa sgombra. È così che dev'essere.",
		"Tutto il peso dietro e niente fronzoli. Arriva.",
		"Mano stretta, mente lucida, niente di elaborato. Cominciamo.",
	},
	["cls.warrior.battle.w05.027"] = {
		"volge verso il nemico la spalla corazzata, come fa chi si aspetta un colpo e ha smesso di farci caso.",
		"inclina il corpo perché la parte più spessa dell'armatura sia rivolta al nemico, poi fa il primo passo.",
	},
	["cls.warrior.battle.w05.028"] = {
		"batte due volte l'arma contro la propria armatura, un rintocco secco come chi bussa a una porta.",
		"sbatte l'arma contro l'armatura, una volta, forte, e accenna un sorriso a quel suono.",
	},
	["cls.warrior.battle.w05.029"] = {
		"Mi avevano detto che questo mestiere tempra il carattere. Andiamo a temprarne un po'.",
		"Qualcuno mi aveva giurato che il mestiere era soprattutto marciare. Mentiva.",
	},
	["cls.warrior.battle.w05.030"] = {
		"Qualunque cosa tu sia, non era nei tuoi piani. Nemmeno nei miei.",
		"Nessuno di noi due ha scelto questa strada. Uno solo arriverà in fondo.",
	},
	["cls.warrior.battle.w05.031"] = {
		"Dammi qualcosa da ricordare. Sono {g:stanco|stanca} di lotte che finiscono prima di cominciare.",
		"Spero che tu sappia il fatto tuo. Quelli facili non mi insegnano niente.",
	},
	["cls.warrior.battle.w05.032"] = {
		"Fuori portata sono solo qualcuno in armatura. A portata, sono tutto il problema. Entra a portata.",
		"Lo spazio tra noi non è di nessuno. Prendilo prima che lo faccia l'altro.",
	},
	["cls.warrior.battle.w05.033"] = {
		"Se siete in tanti, stringetevi pure. Ho imparato cosa fare con la ressa.",
		"Altri là dietro? Fatevi sotto tutti. Giro su me stesso più in fretta di quanto sembri.",
	},
	["cls.warrior.battle.w05.034"] = {
		"Prima logoralo. Il colpo di grazia funziona solo quando l'altro non ne può più.",
		"Pazienza. Togligli le forze, poi chiudila con un solo colpo quando vacilla.",
	},
	["cls.warrior.battle.w05.035"] = {
		"Ho fatto parecchia pratica. Stai per scoprire quanta.",
		"Tante strade alle spalle, e parecchie sono finite con una lotta come questa.",
	},
	["cls.warrior.battle.w05.036"] = {
		"Questo non è uno qualunque. Guardia alta, piedi onesti, niente sbruffonate.",
		"Ecco un avversario come si deve. Qui nessuno si distrae, io per {g:primo|prima}.",
	},
	["cls.warrior.battle.w05.037"] = {
		"Te la stai prendendo con qualcuno troppo grosso per te, e io peso parecchio. Ultima occasione per scappare.",
		"Girati e vattene. Non sarà una lotta alla pari, e non sarò io a farne le spese.",
	},
	["cls.warrior.battle.w05.038"] = {
		"{target}. Non muoverti e sarà più rapido per entrambi.",
		"{target}, eh? Cercherò di ricordarmelo, per quando lo racconterò.",
	},
	["cls.warrior.battle.w05.039"] = {
		"Ah, ecco il lavoro. Cominciavo a pensare di averla affilata per niente.",
		"Bene. Mi seccherebbe che tutto quell'allenamento andasse sprecato.",
	},
	["cls.warrior.battle.w05.040"] = {
		"scopre i denti in qualcosa che non è proprio un sorriso e passa l'arma nella mano più forte.",
		"sorride, un sorriso breve e duro, e si mette in guardia come davanti a un vecchio rivale.",
	},
	["cls.warrior.battle.w05.041"] = {
		"Piedi pesanti, mani leggere. L'armatura si porta da sola, se la lascio fare.",
		"Il peso va nelle gambe, non nelle spalle. Le spalle servono a menare colpi.",
	},
	["cls.warrior.battle.w05.042"] = {
		"Uno di noi deve cedere terreno. Io, a cedere, non ho mai imparato.",
		"Qualcuno dovrà fare un passo indietro. Posso già dirti che non sarò io.",
		"Il terreno qualcuno dovrà pur cederlo. Cercalo altrove.",
	},
	["cls.warrior.battle.w05.043"] = {
		"Sbrighiamoci. Comunque vada, dopo l'equipaggiamento va oliato.",
		"Alla svelta, se non ti spiace. Comunque vada, dopo avrò cinghie da ricucire.",
	},
	["cls.warrior.battle.w05.044"] = {
		"Parla pure quanto vuoi. Io rispondo con questa.",
		"Qualunque cosa tu stia urlando, non la capisco. Io parlo questa lingua qui.",
	},
	["cls.warrior.battle.w05.045"] = {
		"controlla la posizione dei piedi, ne arretra uno di un soffio, e solo allora alza l'arma.",
		"assesta la posizione con la cura di chi getta le fondamenta di una casa.",
	},
	["cls.warrior.battle.w05.046"] = {
		"Ricordate tutti il piano? Bene. Entro io davanti, e il piano è quello.",
		"Il piano è questo: le prendo io, voi no. Domande? Non c'è tempo.",
	},
	["cls.warrior.battle.w05.047"] = {
		"Spalle sciolte, presa salda, pazienza corta. Si comincia.",
		"Braccio sciolto, presa stretta, miccia corta. Hai scelto il momento sbagliato.",
	},
	["cls.warrior.battle.w05.048"] = {
		"Ogni esercizio nel cortile era per questo momento. Non sprecarne nemmeno uno.",
		"Tutte quelle ore a menar colpi contro un palo. Il palo non rispondeva. Questo sì.",
	},
	["cls.warrior.battle.w05.049"] = {
		"Ci metto un po' a partire, e di più a fermarmi. Vedrai.",
		"Difficile da smuovere, ancora più difficile da deviare. Stai per scoprire entrambe le cose.",
	},
	["cls.warrior.battle.w05.050"] = {
		"Un istruttore, se mi vedesse impugnare così, farebbe una smorfia. Ormai è tardi.",
		"Il mio istruttore avrebbe da ridire su questo appoggio. Per fortuna non è qui.",
	},
	["cls.warrior.battle.w05.051"] = {
		"Tieni pure la posizione, se vuoi. Tra poco te la porto via.",
		"Mettiti bene in guardia. Non servirà, ma almeno farai bella figura.",
	},
	["cls.warrior.battle.w05.052"] = {
		"Questo è il lavoro. Niente discorsi. Facciamolo come si deve.",
		"Lavoro semplice, allora. Lo farò come mi hanno insegnato: per bene.",
	},
	["cls.warrior.battle.w05.053"] = {
		"lancia un grido di guerra breve come un latrato, più segnale che minaccia, e gli va dietro.",
		"grida una volta, una sola sillaba secca, ed è già in movimento prima che il suono si spenga.",
	},
	["cls.warrior.battle.w05.054"] = {
		"Il calore parte dalle mani e sale. Quando arriverà alla testa avrò smesso di pensare. Bene.",
		"Caldo nelle dita, poi nelle braccia. Tra poco in me non resterà spazio per i dubbi.",
	},
	["cls.warrior.battle.w05.055"] = {
		"Questo sì che è lavoro onesto. Niente registri, niente chiacchiere, solo io e te.",
		"Questa parte mi piace. Tutto è semplice: tu, io, e chi resta in piedi alla fine.",
	},
	["cls.warrior.buff.w05.001"] = {
		"Qualcosa di caldo scende lungo le braccia e si posa nelle mani. Lo restituirò con gli interessi.",
		"Un calore nuovo sotto la pelle. So benissimo dove spenderlo.",
		"Il calore sale dal petto alle spalle. Le braccia sapranno che farne.",
	},
	["cls.warrior.buff.w05.002"] = {
		"Oh. Formicola. Un bel formicolio.",
		"Questo ha una bella spinta. Mi piace.",
		"Ah, che bella sensazione. Chi vuole metterla alla prova?",
	},
	["cls.warrior.buff.w05.003"] = {
		"inspira a fondo e sembra crescere di una taglia, come uno stendardo quando lo prende il vento.",
		"alza il mento, una saldezza nuova nella linea della mascella.",
	},
	["cls.warrior.buff.w05.004"] = {
		"Non so quanto dura. Faccio conto che duri poco, e mi sbrigo.",
		"La forza che arriva così facile se ne va altrettanto facile. Va usata, non ammirata.",
	},
	["cls.warrior.buff.w05.005"] = {
		"Adesso sì che è uno scontro equo. Per me.",
		"Ecco fatto. Adesso sono guai tuoi.",
		"Questo cambia le cose. Non per te.",
	},
	["cls.warrior.buff.w05.006"] = {
		"L'armatura sembra più leggera, anche se so che non lo è. Con la sensazione non discuto.",
		"Stesso metallo, stesse cinghie. Solo che adesso mi sta meglio addosso, come se avesse deciso che siamo dalla stessa parte.",
	},
	["cls.warrior.buff.w05.007"] = {
		"scopre i denti in qualcosa che non è proprio un sorriso, mentre la forza nuova fa presa.",
		"stringe l'arma fino a sbiancarsi le nocche, impaziente di spendere la forza fresca.",
	},
	["cls.warrior.buff.w05.008"] = {
		"Fa bene. Non aspettarti che lo ripeta.",
		"Va bene. Sì. Utile. Andiamo avanti.",
		"Niente male. Proprio niente male. Bene, basta così.",
	},
	["cls.warrior.buff.w05.009"] = {
		"I maestri lo ripetevano sempre: ogni vantaggio che ti offrono prendilo, e ringrazialo solo dopo.",
		"Il vecchio esercizio: sentila, fidati, dimenticala. Il corpo se la ricorda da solo.",
	},
	["cls.warrior.buff.w05.010"] = {
		"Bene. Vediamo a cosa serve.",
		"Bene. Non sprechiamolo qui impalati.",
		"Può bastare. Andiamo a usarlo.",
	},
	["cls.warrior.buff.w05.011"] = {
		"Svanirà, come tutto ciò che arriva di fretta. Meglio essere più {g:rapido|rapida} di lei.",
		"Per un po' sono più di quello che sono. Poi tornerò me {g:stesso|stessa}, e dovrà bastare.",
	},
	["cls.warrior.buff.w05.012"] = {
		"fa un saltello sulle punte, per saggiare la molla nuova nelle gambe.",
		"fa compiere all'arma un arco pigro nell'aria, solo per sentire quanto è diventata più facile.",
		"si alza sulle punte e torna giù, sogghignando per la poca fatica che ci vuole.",
	},
	["cls.warrior.buff.w05.013"] = {
		"Ho ritrovato il fiato. Tutti dietro di me.",
		"Gambe fresche, braccia fresche. Io sto davanti, voi badate ai lati.",
	},
	["cls.warrior.buff.w05.014"] = {
		"La rabbia si sveglia prima, adesso. Bene: stava tenendo il broncio.",
		"Ecco la scintilla nel sangue. La rabbia ha di che accendersi.",
		"Il sangue scorre più caldo. La rabbia adesso ha dove andare.",
	},
	["cls.warrior.buff.w05.015"] = {
		"Se durasse, non mi toglierei mai l'armatura.",
		"Posso tenerlo? No? Valeva la pena chiedere.",
		"Potrei abituarmici. Ed è proprio per questo che non lo farò.",
	},
	["cls.warrior.buff.w05.016"] = {
		"fa scrocchiare il collo da un lato, poi dall'altro, ogni giuntura di colpo sicura del proprio compito.",
		"fa un respiro lento, poi un altro, e lascia che la forza nuova scenda fino alle gambe.",
	},
	["cls.warrior.buff.w05.017"] = {
		"Una spinta così accorcia la strada. Non la rende corta: più corta.",
		"Da sola è poca cosa. In una lunga marcia è la differenza tra camminare e trascinarsi.",
		"Una piccola spinta. Di quelle che trasformano un «quasi» in un «basta».",
	},
	["cls.warrior.buff.w05.018"] = {
		"Oh, così va meglio. Non muoverti, ho qualcosa per te.",
		"Ah! Lo senti? No, tu no. Io sì.",
	},
	["cls.warrior.buff.w05.019"] = {
		"I muscoli che un attimo fa si lamentavano adesso stanno zitti e attenti.",
		"La presa si stringe senza che glielo chieda. Le mani lo sanno sempre per prime.",
		"Tutto si tende e si affila, come una cinghia stretta di un buco.",
	},
	["cls.warrior.buff.w05.020"] = {
		"Bene. Qualunque cosa arrivi, deve passare prima da me.",
		"{g:Pronto|Pronta}. I piedi ben piantati e le braccia disposte.",
	},
	["cls.warrior.buff.w05.021"] = {
		"grugnisce in segno d'approvazione, come si fa davanti a uno stivale ben fatto.",
		"fa un breve cenno soddisfatto, come se un attrezzo fosse stato affilato a dovere.",
		"flette i polsi, {g:soddisfatto|soddisfatta}, come chi prova un guanto che finalmente calza.",
	},
	["cls.warrior.buff.w05.022"] = {
		"Sangue in movimento e testa lucida. Coppia rara: ne approfitto.",
		"Caldo nelle braccia, freddo nella testa. Proprio come lo volevano i maestri.",
	},
	["cls.warrior.farewell.w05.001"] = {
		"Io vado. Tieni alta la guardia.",
		"Addio. Se si arriva alle mani, mettiti dietro qualcuno in armatura.",
		"Parto. Guarda bene dove cammini.",
	},
	["cls.warrior.greet.w05.001"] = {
		"Salute. Occhio ai gomiti: quest'armatura occupa spazio.",
		"Salve. Non badare alle ammaccature: me le sono guadagnate.",
	},
	["cls.warrior.greet.w05.002"] = {
		"Ciao. Se ti serve un braccio forte, sai dov'è.",
		"Buongiorno a te. L'arma è abbassata, per ora.",
	},
	["cls.warrior.heal.w05.001"] = {
		"Il dolore passa da acuto a sordo. Quello sordo lo posso portare per ore.",
		"Il peggio si ritira. Resta un male con cui si può ancora camminare.",
		"La fitta diventa un dolore qualunque. Con quelli qualunque so lavorare.",
	},
	["cls.warrior.heal.w05.002"] = {
		"Come {g:nuovo|nuova}. Be', come la settimana scorsa.",
		"Non proprio {g:nuovo|nuova}, ma si usa ancora. Come il resto della mia attrezzatura.",
		"Torno utile. È l'unico voto che mi interessa.",
	},
	["cls.warrior.heal.w05.003"] = {
		"apre e chiude le dita sull'impugnatura finché non rispondono di nuovo come si deve.",
		"sposta il peso da un piede all'altro, saggiando, e non trova niente che ceda.",
		"fa compiere un giro intero alla spalla rigida, poi un altro, e annuisce al risultato.",
	},
	["cls.warrior.heal.w05.004"] = {
		"Di nuovo in sesto. Il corpo continua a perdonarmi. Prima o poi smetterà, e non avrò di che lamentarmi.",
		"Ogni volta che si richiude penso: il corpo è un creditore paziente. Non infinito.",
	},
	["cls.warrior.heal.w05.005"] = {
		"Così va meglio. Allora, dov'eravamo?",
		"Rifornimento fatto. Forza: secondo round.",
	},
	["cls.warrior.heal.w05.006"] = {
		"Ora che lo scontro è finito, ogni livido vuole dire la sua. Questo ne zittisce quasi tutti.",
		"Il male arriva dopo, sempre. Ed è dopo che si guarisce, se lo lascio fare.",
		"Lo scontro si è preso il suo. Questo ne restituisce un po'.",
	},
	["cls.warrior.heal.w05.007"] = {
		"Ah. Mi tornano a rispondere le dita dei piedi.",
		"Splendido. Riesco ad alzare il braccio sopra la spalla. Piccole gioie.",
		"Respiro di nuovo col naso. Una vita da gran signori.",
	},
	["cls.warrior.heal.w05.008"] = {
		"Sotto l'armatura qualcosa si ricuce. L'armatura ha retto i colpi: ora tocca a me raggiungerla.",
		"Il metallo ha tenuto, la carne no. Adesso la carne recupera.",
	},
	["cls.warrior.heal.w05.009"] = {
		"fa ruotare il collo finché qualcosa scrocchia, e ha molto meno l'aria di chi va portato via in barella.",
		"soffia fuori l'aria fra i denti mentre il dolore allenta la presa.",
		"espira piano, e la smorfia sul viso si scioglie in qualcosa di più simile a un cipiglio.",
	},
	["cls.warrior.heal.w05.010"] = {
		"Accetto volentieri. Cominciavo ad affezionarmi a quella zoppia, ma accetto.",
		"Va bene, va bene. Smetto di appoggiarmi a tutto quello che trovo.",
	},
	["cls.warrior.heal.w05.011"] = {
		"Il fiato torna giù in fondo al petto. Avevo scordato che abitasse lì.",
		"Le costole smettono di protestare a ogni respiro. Bene: l'aria mi serve per menare colpi.",
		"Ogni respiro adesso arriva fino in fondo, senza intoppi.",
	},
	["cls.warrior.heal.w05.012"] = {
		"Bene. Le braccia funzionano, le gambe pure. Il resto sono dettagli.",
		"Braccia, gambe, occhi. Tutti presenti. Andiamo avanti.",
		"Ginocchia salde, mani ferme, occhi a fuoco. Si può tornare a lavorare.",
	},
	["cls.warrior.heal.w05.013"] = {
		"Un po' più lontano dal bordo. Un momento fa lo vedevo bene. Avrei preferito di no.",
		"C'è mancato più di quanto mi piaccia ammettere. Il calore che torna ha il sapore di una grazia.",
	},
	["cls.warrior.heal.w05.014"] = {
		"Basta rattoppi. La strada non si fa da sola.",
		"Va bene così. Andiamo, prima che mi irrigidisca.",
	},
	["cls.warrior.heal.w05.015"] = {
		"si raddrizza sotto la forza nuova e torna avanti, come se gli ultimi colpi fossero stati un problema di qualcun altro.",
		"scaccia la nebbia dagli occhi con un battito di palpebre e torna a fronteggiare lo scontro.",
	},
	["cls.warrior.heal.w05.016"] = {
		"I maestri lo dicono: capisci cosa ti dice ogni ferita, poi lasciala andare. Questa diceva: spostati prima.",
		"Ogni ferita è una lezione con la risposta già scritta. Questa dice: guarda il lato sinistro.",
	},
	["cls.warrior.heal.w05.017"] = {
		"Odora di fosso e va giù come ghiaia. Alla salute lo stesso.",
		"Ogni fiala di questa roba è peggio della precedente. Vuol dire che funziona.",
		"Chi le distilla odia chi le beve. Ci sta.",
	},
	["cls.warrior.heal.w05.018"] = {
		"Il cuore passa dal galoppo al passo di marcia. È l'andatura con cui combatto meglio.",
		"Il battito smette di martellarmi nelle orecchie. Torno a sentire quello che ho intorno, e a pensare.",
	},
	["cls.warrior.heal.w05.019"] = {
		"Ti tocca ricominciare da capo. Peccato, tutta quella fatica.",
		"Tutto quel lavoro, cancellato. Impegnati di più.",
		"Di nuovo al punto di partenza. Te ne servirà molto di più.",
	},
	["cls.warrior.heal.w05.020"] = {
		"allenta una cinghia, controlla l'ammaccatura sotto, e la richiude con un grugnito soddisfatto.",
		"passa una mano sui lividi peggiori sotto l'armatura e li trova già meno vivi.",
	},
	["cls.warrior.heal.w05.021"] = {
		"Strano come il mondo sembri più gentile appena si smette di sanguinare.",
		"Buffo. Attorno non è cambiato niente, ma tutto sembra più ragionevole senza un buco addosso.",
		"L'aria ha un altro sapore con le ferite chiuse. Non l'avrei mai detto.",
	},
	["cls.warrior.heal.w05.022"] = {
		"Bene. Torno davanti: tutti dietro di me.",
		"Ecco, sono di nuovo in forma. Guardate me, non loro.",
	},
	["cls.warrior.heal.w05.023"] = {
		"Il corpo è l'unico attrezzo che nessun fabbro può sostituirmi. Ogni tanto vale la pena curarlo.",
		"Una lama si riforgia, uno scudo si ricompra. Questo corpo è l'unico pezzo dell'equipaggiamento che ho una volta sola.",
		"L'armaiolo aggiusta il metallo. Per la carne bisogna aspettare, come tutti.",
	},
	["cls.warrior.heal.w05.024"] = {
		"Non dite a nessuno quanto c'è mancato. Ho la fama di chi non si ammacca facilmente.",
		"Facciamo finta che non sia mai successo.",
		"Se qualcuno chiede, non sono mai {g:stato|stata} in difficoltà.",
	},
	["cls.warrior.heal.w05.025"] = {
		"solleva l'arma un po' più in alto di prima, senza più il tremito nel braccio.",
		"torna a reggere il peso dell'arma senza una smorfia.",
		"si appoggia l'arma alla spalla, poi la abbassa in guardia, ferma ormai.",
	},
	["cls.warrior.heal.w05.026"] = {
		"Se ne va il fischio nelle orecchie. Non mi mancherà.",
		"La testa si schiarisce, il mondo smette di pendere. Piccole grazie, e oggi una grande.",
		"La nebbia si alza dagli occhi. Bene: mi piace vedere cosa sta per colpirmi.",
	},
	["cls.warrior.heal.w05.027"] = {
		"Un po' di fiato, un po' di rattoppo, e si riparte.",
		"Questo regge. Torniamo al lavoro.",
		"Bene. Basta stare con le mani in mano.",
	},
	["cls.warrior.heal.w05.028"] = {
		"Di nuovo abbastanza {g:intero|intera}. A volte mi chiedo quanto di me vorrà indietro il prossimo scontro.",
		"Guariscono sempre, queste ferite. È la stanchezza sotto che resta.",
	},
	["cls.warrior.heal.w05.029"] = {
		"Aria nei polmoni, peso sui piedi. Bene.",
		"{g:Saldo|Salda}. Allora, di nuovo in prima fila.",
		"Piedi ben piantati, mani ferme. Avanti.",
	},
	["cls.warrior.heal.w05.030"] = {
		"Questa lascerà il segno. Ne imparerò la forma come le altre, come la lingua impara un dente che manca.",
		"Chiusa, ma tirerà per un po'. Un promemoria sulla pelle, più economico di tante lezioni.",
		"La pelle tira sul punto nuovo. Immagino che farà male quando cambia il tempo.",
	},
	["cls.warrior.heal.w05.031"] = {
		"si dà due colpetti sul petto, come chi controlla la borsa dopo una calca, e il conto pare tornare.",
		"controlla le braccia, le gambe, e annuisce fra sé: tutto al suo posto.",
	},
	["cls.warrior.levelup.w05.001"] = {
		"Il corpo ha imparato qualcosa che la testa non ha ancora capito. Di solito va in quest'ordine.",
		"Un gradino più su. Immagino che il maestro avrà qualcosa di nuovo da farmi entrare in testa a forza.",
	},
	["cls.warrior.levelup.w05.002"] = {
		"Sto migliorando. Non ditelo al nemico.",
		"Più difficile da colpire, più difficile da fermare. Ci sto arrivando.",
	},
	["cls.warrior.levelup.w05.003"] = {
		"fa ruotare le spalle e prova un colpo a vuoto che è, senza dubbio, un po' più pulito dell'ultimo.",
		"resta un momento con l'arma tenuta orizzontale, sentendo la nuova fermezza fino al gomito.",
	},
	["cls.warrior.lowhp.w05.001"] = {
		"Ho ancora troppe cose da fare per cadere qui.",
		"Ti servirà ben altro. La testardaggine è tutto il mio mestiere.",
		"Vicino. Non abbastanza.",
	},
	["cls.warrior.lowhp.w05.002"] = {
		"Allora è questo il bordo. Strano quanta calma ci sia, qui.",
		"Il mondo si stringe al prossimo colpo. Tutto il resto è diventato molto silenzioso.",
		"Tutto rallenta. Bene: adesso lo vedo arrivare.",
	},
	["cls.warrior.lowhp.w05.003"] = {
		"oscilla come un albero nella burrasca, ma le radici tengono.",
		"si passa un avambraccio sugli occhi per schiarirli e ritrova l'appoggio dei piedi.",
	},
	["cls.warrior.lowhp.w05.004"] = {
		"Ahi. D'accordo. Ricevuto.",
		"Questo lo sentirò domani. Sempre che.",
		"Mh. Questo andrà fatto vedere a qualcuno.",
	},
	["cls.warrior.lowhp.w05.005"] = {
		"Ogni colpo che prendo è combustibile. In questo momento ne ho in abbondanza.",
		"Questo scontro mi ha dato parecchio materiale. È ora di restituirlo.",
		"Dentro il dolore, fuori la rabbia. Scambio semplice.",
	},
	["cls.warrior.lowhp.w05.006"] = {
		"Avvicinati. Il braccio funziona ancora, ed è molto arrabbiato.",
		"Tutto il tuo meglio è questo? Io intanto continuo a colpire.",
	},
	["cls.warrior.lowhp.w05.007"] = {
		"Adesso l'armatura lavora più di me. Teniamo duro, tutti e due.",
		"Ogni cinghia pesa di più. La porterò lo stesso: lei ha portato me.",
		"Ogni pezzo dell'armatura pesa come piombo. Portalo. Portalo e basta.",
	},
	["cls.warrior.lowhp.w05.008"] = {
		"ruggisce a denti stretti, e sembra che sia il suono da solo a {g:tenerlo|tenerla} in piedi.",
		"lancia un ringhio roco e si ributta nella mischia come se le ferite fossero di un altro.",
	},
	["cls.warrior.lowhp.w05.009"] = {
		"Sono {g:messo|messa} male! Non sparpagliatevi, li tengo ancora.",
		"Sono {g:conciato|conciata} male. Restate dietro di me lo stesso.",
	},
	["cls.warrior.lowhp.w05.010"] = {
		"Se finisce qui, che mi trovino almeno con la faccia rivolta dalla parte giusta.",
		"Se cado, voglio cadere in avanti. È l'ultima cosa che posso scegliere.",
	},
	["cls.warrior.lowhp.w05.011"] = {
		"Ho avuto giornate migliori. Anche peggiori, ma adesso non me le ricordo.",
		"Ah, bene. La parte interessante.",
		"Va tutto bene. È una quantità di sangue normalissima.",
	},
	["cls.warrior.lowhp.w05.012"] = {
		"Mani, non azzardatevi ad aprirvi. Non ancora.",
		"La presa. Basta tenere la presa. Il resto viene dietro.",
		"Dita, restate chiuse. È tutto quello che vi chiedo.",
	},
	["cls.warrior.lowhp.w05.013"] = {
		"sanguina da più punti di quanti ne sappia contare, e continua a battersi come se contare non fosse affar suo.",
		"si scuote il sangue dagli occhi e ritrova il nemico d'istinto.",
		"continua a battersi con la guardia a pezzi e il viso duro come la pietra.",
	},
	["cls.warrior.lowhp.w05.014"] = {
		"Respira. Colpisci. Respira. Colpisci.",
		"Ancora uno. E poi un altro ancora.",
	},
	["cls.warrior.lowhp.w05.015"] = {
		"Ecco a cosa servivano tutti quegli esercizi: a combattere quando ogni parte di me vuole fermarsi.",
		"È esattamente a questo che servivano gli esercizi. Le braccia ricordano, anche quando la testa si annebbia.",
	},
	["cls.warrior.lowhp.w05.016"] = {
		"Andate! Tengo qui finché posso.",
		"Se si mette male, allontanatevi. Il tempo ve lo compro io.",
	},
	["cls.warrior.lowhp.w05.017"] = {
		"si getta incontro al colpo successivo invece di schivarlo, come se rifiutasse di cedere anche un solo palmo.",
		"trae un respiro spezzato e chissà come trova la forza per un altro colpo, e poi un altro ancora.",
	},
	["cls.warrior.lowhp.w05.018"] = {
		"La morte ha aspettato fin qui. Può aspettare che io finisca.",
		"La morte aspetti il suo turno. Ho da fare.",
	},
	["cls.warrior.muse.w05.001"] = {
		"Mangio per due e le prendo per quattro. Eppure, chissà come, i conti tornano a mio favore.",
		"Nessuno ti dice quanta fame metta questo mestiere. Metà delle monete se ne va in pane, l'altra metà in riparazioni.",
		"Razioni per uno, appetito per tre. I cuochi di ogni locanda imparano presto la mia faccia.",
	},
	["cls.warrior.muse.w05.002"] = {
		"I palmi hanno preso la forma dell'impugnatura. Anche quando tengo una tazza, le dita si chiudono come se qualcuno potesse strapparmela.",
		"I calli stanno proprio dove poggia il manico. Il lavoro mi ha riscritto le mani, e loro non chiedono di tornare indietro.",
	},
	["cls.warrior.muse.w05.003"] = {
		"Il mio maestro non ha mai detto «bene». Solo «ancora». Certi giorni me lo sento ripetere tra un colpo e l'altro.",
		"Ancora. Ancora. Ancora. Tutto l'insegnamento dei maestri stava lì, e alla fine è bastato.",
		"La parola preferita del maestro era «ancora», e per mesi l'ho odiata. Adesso sono io a ripetermela.",
	},
	["cls.warrior.muse.w05.004"] = {
		"Tra uno scontro e l'altro la furia scola via, e quel che resta è più lento, più silenzioso, e non sempre sa che fare delle mani.",
		"Senza la rabbia sono una cosa più pesante e più spenta. Sto ancora imparando a voler bene anche a quella.",
	},
	["cls.warrior.muse.w05.005"] = {
		"C'è chi si porta dietro libri di incantesimi. Io un pezzo di ferro affilato e un caratteraccio, e dormo benissimo.",
		"Niente pergamene, niente formule, niente reagenti. Solo una cosa pesante e la voglia di menarla. Si viaggia leggeri.",
	},
	["cls.warrior.muse.w05.006"] = {
		"Uno scudo è una porta che ti porti dietro. Niente passa senza bussare prima, e chi apre lo decido io.",
		"Pensa a uno scudo come a una porta con qualcuno dietro. Alle porte si bussa. Servono a questo.",
		"Con lo scudo alzato sono una casa con la porta sbarrata. Che bussino pure tutto il giorno.",
	},
	["cls.warrior.muse.w05.007"] = {
		"Ascia, spada, mazza, le armi in asta: fanno tutte lo stesso discorso, solo con accenti diversi.",
		"Alla fine ogni arma della rastrelliera dice la stessa cosa: un peso, mosso in fretta, nella direzione giusta.",
	},
	["cls.warrior.muse.w05.008"] = {
		"Un giorno le mie ginocchia si riuniranno in assemblea e voteranno contro tutto questo. Ma non oggi.",
		"Le articolazioni già brontolano per il lavoro. Ho detto loro che andranno in pensione quando ci andrò io.",
	},
	["cls.warrior.muse.w05.009"] = {
		"La paura non se n'è mai andata. Ho solo imparato a camminarle davanti, dove non può vedermi in faccia.",
		"La paura viene ancora con me su ogni strada. Ho solo smesso di lasciarle scegliere la direzione.",
		"Io e la paura abbiamo un accordo: può gridare quanto vuole, ma l'arma la tengo io.",
	},
	["cls.warrior.muse.w05.010"] = {
		"La gente ringrazia il guaritore. Il muro non lo ringrazia nessuno. Il muro capisce: è un muro.",
		"Dopo una giornata dura il guaritore si prende la gratitudine e il guerriero i lividi. Giusto così. Più o meno.",
	},
	["cls.warrior.muse.w05.011"] = {
		"Si inspira dal naso in guardia, si espira tra i denti sul colpo. Il primo esercizio che ho imparato, e l'ultimo che dimenticherei.",
		"Respira insieme al colpo, non contro. Un consiglio semplice che ci sono voluti cento lividi per far entrare in testa.",
		"Ogni colpo ha il suo respiro. Perdi il respiro e il colpo dopo esce fiacco.",
	},
	["cls.warrior.muse.w05.012"] = {
		"Ovunque cammini, controllo il terreno senza volerlo. Sassi smossi, radici bagnate, un pendio dove sarebbe brutto dover tenere la posizione.",
		"Ormai non riesco a guardare un pezzo di terra senza chiedermi dove pianterei i piedi se qualcosa mi venisse addosso.",
	},
	["cls.warrior.muse.w05.013"] = {
		"Dormire con la cotta addosso: ti svegli {g:rigido|rigida}, {g:infreddolito|infreddolita} e di cattivo umore. Ma ti svegli.",
		"Non esiste un modo comodo di sdraiarsi in armatura. Ho smesso di cercarlo e ho cominciato a ringraziare per qualunque sonno.",
	},
	["cls.warrior.muse.w05.014"] = {
		"Nel mio mestiere non ci sono trucchi. Mi vedi arrivare, sai benissimo cosa succederà, e funziona lo stesso.",
		"Il mio lavoro non nasconde niente. Arrivo e colpisco. Saperlo in anticipo aiuta meno di quanto pensi.",
		"Niente di astuto. In piedi, un passo avanti, colpire forte, ripetere. La gente astuta continua a perderci contro.",
	},
	["cls.warrior.muse.w05.015"] = {
		"Un grido di battaglia mi costa solo fiato, e ogni braccio lì vicino colpisce un po' più forte. Il regalo più economico che faccio.",
		"Riempio i polmoni e lascio andare, e chi mi sta intorno si raddrizza. Strano che una voce possa fare da armatura.",
		"A quanto pare, gridare è metà del mestiere. Nessuno me l'aveva detto quando ho preso in mano un'arma per la prima volta.",
	},
	["cls.warrior.muse.w05.016"] = {
		"Colpisci il terreno abbastanza forte e tutti quelli intorno rallentano per pensarci su. Questo, più o meno, è il colpo di tuono.",
		"Il maestro lo chiamava colpo di tuono. In realtà è solo picchiare così forte che l'aria si fa densa e il nemico perde il ritmo.",
	},
	["cls.warrior.muse.w05.017"] = {
		"Mirare alle gambe non è elegante. Ma nemmeno un nemico che scappa a chiamare tre amici.",
		"Un colpo basso alla gamba per rallentarli. Niente di nobile. Però detesto inseguire qualcuno due volte.",
	},
	["cls.warrior.muse.w05.018"] = {
		"Quando un nemico è allo stremo, lo finisco con un colpo solo. C'è chi lo chiama brutale. Io lo chiamo non tirarla per le lunghe.",
		"Il colpo di grazia è l'ultimo che i maestri insegnano, e quello di cui parlano meno. Credo di capire perché.",
	},
	["cls.warrior.muse.w05.019"] = {
		"Coprire la distanza è facile. Fermarsi proprio dove volevo: quello mi è costato qualche tentativo imbarazzante.",
		"La prima volta che ho caricato sono {g:andato|andata} lungo e ho dovuto girarmi. Nessuno ha visto. Sono quasi {g:sicuro|sicura} che nessuno abbia visto.",
	},
	["cls.warrior.muse.w05.020"] = {
		"Smontare l'armatura di qualcuno colpo dopo colpo, una piastra debole dopo l'altra. Niente gloria. Molta efficacia.",
		"Ogni difesa ha una giuntura. Colpisci lo stesso punto abbastanza volte e impara l'umiltà.",
	},
	["cls.warrior.muse.w05.021"] = {
		"In posizione difensiva il mondo si riduce alla guardia e al colpo successivo. È la cosa più simile alla calma che conosca.",
		"Peso indietro, guardia alta, tutto trattenuto. Strano quanta pace ci sia nel rifiutarsi semplicemente di cadere.",
		"Scudo avanti, mento basso, ginocchia piegate. Piantato così, potrei tenere un passo stretto per una settimana.",
	},
	["cls.warrior.muse.w05.022"] = {
		"Nella postura del berserker prendo di più e restituisco di più. Un patto onesto, anche se non sicuro.",
		"Quella postura mi toglie la prudenza di dosso come un mantello. La assumo solo quando so cosa sto barattando.",
	},
	["cls.warrior.muse.w05.023"] = {
		"Giro su {g:me stesso|me stessa} con l'arma tesa, e tutto ciò che è a portata si pente di trovarsi lì. Gli amici imparano a lasciarmi spazio.",
		"Un cerchio intero di lama, e io nel mezzo. Dopo mi gira la testa, e nessuno lì vicino si lamenta. Nessuno può.",
	},
	["cls.warrior.muse.w05.024"] = {
		"Dietro lo scudo, piantato come un portone: per qualche respiro niente al mondo può smuovermi. Di solito qualche respiro basta.",
		"C'è un modo di puntellare lo scudo che trasforma un corpo in un muro, finché dura il fiato. Lo tengo per i momenti peggiori.",
	},
	["cls.warrior.muse.w05.025"] = {
		"Mi faccio male da {g:solo|sola} per arrabbiarmi prima. Detto ad alta voce sembra una follia. Fatto bene, salva delle vite.",
		"C'è chi conta fino a dieci per calmarsi. Io faccio il contrario, e mi costa un po' di sangue.",
	},
	["cls.warrior.muse.w05.026"] = {
		"La mia dote più utile è un'occhiata molto maleducata. Funziona perfino su cose che gli occhi non li hanno.",
		"Riesco a far arrabbiare con me quasi qualunque cosa con uno sguardo. Il maestro lo chiamava talento. Chi mi conosce lo chiama vizio.",
	},
	["cls.warrior.muse.w05.027"] = {
		"Certe cose non le combatti. Ci urli contro finché non si ricordano di avere un impegno altrove.",
		"Non tutti i nemici vanno battuti. Ad alcuni basta un ruggito abbastanza forte da farli scappare.",
	},
	["cls.warrior.muse.w05.028"] = {
		"Abbasso ancora la guardia dopo ogni colpo. Il maestro dice che il vizio morirà il giorno in cui mi costerà abbastanza.",
		"Dopo ogni colpo il braccio mi scende troppo, ogni volta. Lo so. Saperlo, per ora, non è servito.",
		"Quando entro troppo in fretta i piedi mi si incrociano ancora. Il maestro si limita a indicarli, in silenzio, ogni volta.",
	},
	["cls.warrior.muse.w05.029"] = {
		"Pesa ancora tutto troppo: la cotta, l'arma, le lunghe giornate di strada. I maestri giurano che diventa più leggero. Sospetto che sia tu a crescere.",
		"Per ora l'equipaggiamento vince quasi tutte le discussioni con le mie spalle. Un giorno gliene vincerò una io.",
	},
	["cls.warrior.muse.w05.030"] = {
		"Ai maestri resta ben poco da mostrarmi. Il resto lo insegnano solo gli scontri, e si fanno pagare di più.",
		"Le lezioni del cortile d'addestramento sono finite da un pezzo. Ora la lezione è ogni scontro duro, e la retta si paga in sangue.",
	},
	["cls.warrior.muse.w05.031"] = {
		"Armatura a piastre. Sferraglio come una cucina che rotola giù per le scale, e non mi sono mai {g:sentito|sentita} così al sicuro.",
		"L'armatura a piastre è rumorosa, calda e pesante, e se me lo chiedesse la sposerei.",
		"La maglia era un cappotto. Le piastre sono una casa con cui vado in giro.",
	},
	["cls.warrior.muse.w05.032"] = {
		"Il corpo si lamenta per la prima ora di marcia, poi smette. Ha capito che non lo ascolto.",
		"Prima protestano le gambe, poi la schiena, poi più niente. Su ogni strada lunga, a un certo punto, il corpo smette di presentare reclami.",
	},
	["cls.warrior.muse.w05.033"] = {
		"Il dolore è un messaggero. Lo ascolto fino in fondo, annuisco, e lo rimando da dove è venuto.",
		"Il dolore lo tratto come un araldo alla porta: lo lascio parlare, lo ringrazio, e la porta resta chiusa.",
		"Il dolore dice sempre le stesse tre cose: qui, adesso, attenzione. L'ho sentito. Può andare.",
	},
	["cls.warrior.muse.w05.034"] = {
		"Chi resta a combattere me lo ricordo. Chi scappa, prima di sera l'ho già dimenticato.",
		"Tengo a mente i volti di chi ha tenuto la posizione. Gli altri si confondono in un'unica, lunga ritirata.",
	},
	["cls.warrior.muse.w05.035"] = {
		"Sapere esattamente quanto forte colpire vuol dire anche sapere come non farlo. È la seconda metà quella di cui vado più {g:fiero|fiera}.",
		"Qualunque sciocco sa colpire con tutta la forza. L'abilità sta nei colpi che trattieni, e nel perché.",
	},
	["cls.warrior.muse.w05.036"] = {
		"C'è chi combatte da una distanza di sicurezza. Io preferisco stare abbastanza vicino da sentire cosa pensa l'altro. Di solito pensa «oh no».",
		"Da vicino è onesto. Vedi gli occhi, vedi il dubbio, e vedi il momento in cui ha la meglio.",
	},
	["cls.warrior.muse.w05.037"] = {
		"Ripiegare non è una vergogna. Ripiegare senza sapere dove, sì.",
		"Una ritirata con un piano è solo un modo più lungo di avanzare. Scappare senza piano è il modo in cui si spezzano le file.",
	},
	["cls.warrior.muse.w05.038"] = {
		"C'è una stanchezza che viene solo da una giornata passata a colpire cose. Pulita, onesta, e dorme come un sasso.",
		"Una giornata di colpi menati lascia una stanchezza tutta sua: niente più pensieri, solo braccia pesanti e una testa tranquilla.",
	},
	["cls.warrior.muse.w05.039"] = {
		"Ogni tanto mi accorgo di avere ancora la mascella serrata un'ora dopo lo scontro. La sciolgo di proposito, come si posa un carico.",
		"A volte la rabbia resta dopo lo scontro, come il fumo in una stanza. Apro una finestra nella testa e aspetto.",
	},
	["cls.warrior.muse.w05.040"] = {
		"La forza non è crudeltà. Certi giorni devo dirmelo ad alta voce, solo per sentirlo con la mia voce.",
		"Quello che ho è forza. Che diventi crudeltà dipende da me, ogni santo giorno.",
	},
	["cls.warrior.muse.w05.041"] = {
		"srotola il cuoio consumato dall'impugnatura dell'arma e ne avvolge una striscia nuova, stretta e regolare, giro dopo giro.",
		"tormenta una legatura sfilacciata sull'impugnatura dell'arma, poi la stringe di nuovo coi denti.",
		"massaggia un po' d'olio nel cuoio della cintura e delle cinghie, piano, come si striglierebbe un cavallo.",
	},
	["cls.warrior.muse.w05.042"] = {
		"sposta il peso da un piede all'altro, saggiando il terreno come per uno scontro che non è ancora arrivato.",
		"si dondola una volta sui talloni e si assesta, ginocchia morbide, {g:pronto|pronta} a niente di preciso.",
	},
	["cls.warrior.muse.w05.043"] = {
		"apre e chiude piano le mani, un dito alla volta, contando i vecchi dolori come monete.",
		"piega le dita finché le nocche non schioccano, una dopo l'altra, e sembra {g:soddisfatto|soddisfatta} del conto.",
	},
	["cls.warrior.muse.w05.044"] = {
		"esegue una guardia lenta nell'aria vuota, ogni movimento calmo e preciso, come se un maestro stesse guardando.",
		"accenna qualche colpo d'esercizio a mezza velocità, le labbra che si muovono appena, contando i tempi di una vecchia sequenza.",
		"accenna una parata nell'aria a mano vuota, poi un'altra, più svelta, poi lascia ricadere il braccio con un piccolo cenno del capo.",
	},
	["cls.warrior.muse.w05.045"] = {
		"guarda avanti e misura la distanza in passi, per pura abitudine, anche se nessuno gliel'ha mai chiesto.",
		"squadra con un'occhiata lo spazio intorno, come certa gente conta le uscite di una stanza.",
	},
	["cls.warrior.muse.w05.046"] = {
		"si accovaccia un momento, gli avambracci sulle ginocchia, e lascia che il peso dell'equipaggiamento si appoggi a terra.",
		"si siede sui talloni e resta lì per un po', l'armatura che scricchiola piano a ogni respiro.",
	},
	["cls.warrior.muse.w05.047"] = {
		"trova una fibbia storta sull'armatura e la raddrizza con dita pazienti, borbottandole contro.",
		"gratta con l'unghia una crosta di sporco vecchio da una giuntura dell'armatura, poi esamina il risultato con profondo sospetto.",
	},
	["cls.warrior.muse.w05.048"] = {
		"Non sono {g:arrabbiato|arrabbiata}. È solo la mia faccia.",
		"No, non c'è niente che non va. Ho sempre questa faccia. Si risparmia tempo quando poi qualcosa va storto davvero.",
		"Calma. Quando sono {g:arrabbiato|arrabbiata} sul serio, te ne accorgi. Le cose cadono.",
	},
	["cls.warrior.muse.w05.049"] = {
		"Se c'è qualcosa da sollevare, da portare o da buttare giù, chiamate me.",
		"Cose pesanti spostate, cose testarde convinte, cose pericolose abbattute. Basta chiedere. Non faccio pagare molto.",
		"Porte che non si aprono, casse che non si spostano, banditi che non se ne vanno. Con tutti e tre me la cavo bene.",
	},
	["cls.warrior.muse.w05.050"] = {
		"Mai fidarsi di uno scontro che comincia troppo facile. La parte difficile è solo in ritardo.",
		"Quando il primo colpo va a segno troppo facilmente, guardati intorno. Sta arrivando qualcos'altro.",
	},
	["cls.warrior.muse.w05.051"] = {
		"Olio, sudore, cuoio vecchio e ferro. L'odore di questo mestiere non va mai via del tutto, e ho smesso di volerlo.",
		"Per quanto mi lavi, resta sempre una traccia d'olio da cote e di cuoio scurito dal sudore. Il profumo del mestiere.",
	},
	["cls.warrior.muse.w05.052"] = {
		"A volte mi chiedo se saprei vivere senza uno scontro a cui prepararmi. Poi smetto di chiedermelo, perché sto di nuovo pulendo l'arma.",
		"Se un giorno le battaglie finissero, cosa farei con queste mani? Me lo chiedo di rado, e non rispondo mai.",
	},
	["cls.warrior.muse.w05.053"] = {
		"Uno scontro andato male insegna più di dieci andati bene. Vorrei solo che le lezioni costassero meno.",
		"Le vittorie pulite non mi insegnano niente. Sono quelle brutte, quelle al limite, che poi smonto pezzo per pezzo.",
	},
	["cls.warrior.muse.w05.054"] = {
		"C'è una gioia in questo per cui non chiederò scusa: un colpo pulito, una linea tenuta, una bella sudata onesta.",
		"Lascio ai poeti i pensieri cupi. Un colpo che va a segno come si deve fa star bene, e non mi vergogno a dirlo.",
		"Certi giorni il lavoro è semplicemente bello: duro, pulito, fatto bene. Quelli me li godo.",
	},
	["cls.warrior.muse.w05.055"] = {
		"Contadini, carrettieri, pescatori: non hanno bisogno di eroi. Hanno bisogno di qualcuno al bordo del campo quando i guai escono dal bosco.",
		"Le persone che più vorrei proteggere non sapranno mai il mio nome. Mi va bene così. I nomi sono per le canzoni; io sono per i recinti.",
	},
	["cls.warrior.muse.w05.056"] = {
		"Non colpisco alle spalle. Non per virtù: faccio semplicemente troppo rumore.",
		"Muovermi di soppiatto non è mai stato possibile. Mi sentono arrivare da tre colline di distanza, tanto vale arrivare come si deve.",
		"Furtività? Con tutto questo ferro addosso? Mi sentirebbero prima ancora che decida di muovermi.",
	},
	["cls.warrior.muse.w05.057"] = {
		"Le parole non sono mai state il mio forte. Una guardia alzata dice quasi tutto quello che intendo.",
		"Coi discorsi me la cavo male. Meglio stare dove ho detto che sarei {g:stato|stata} e lasciare che parli quello.",
	},
	["cls.warrior.muse.w05.058"] = {
		"Le canzoni ricordano chi ha dato l'ultimo colpo. Chi ha tenuto per un'ora riceve un cenno del capo, quando va bene. Mi prendo il cenno.",
		"I bardi non canteranno mai di chi resta fermo sotto un colpo dopo l'altro. Meglio così. Sarebbe una canzone noiosissima.",
	},
	["cls.warrior.muse.w05.059"] = {
		"Acqua, pane, un po' di sonno e una cote. Dammi questo e vado ovunque tu indichi.",
		"Mi serve poco: qualcosa da mangiare, un posto dove sdraiarmi, qualcosa da colpire. Due su tre fanno una giornata decente.",
		"Viaggia leggero, dicono. Io lo faccio. È l'armatura che non ci riesce.",
	},
	["cls.warrior.muse.w05.060"] = {
		"Non vince chi colpisce più forte. Vince chi è ancora lì quando all'altro sono finite le idee.",
		"Non decide il braccio più forte. Decide chi resta in piedi per ultimo.",
		"Chi picchia forte vince gli scambi. Chi dura vince gli scontri.",
	},
	["cls.warrior.muse.w05.061"] = {
		"Al cuore di uno scontro c'è una quiete di cui nessuno ti parla. La vado a cercare ogni volta, e certi giorni la trovo.",
		"In mezzo al frastuono peggiore, a volte c'è un posto quieto dove ogni colpo è ovvio. È lì che vorrei abitare.",
	},
	["cls.warrior.muse.w05.062"] = {
		"Un'arma nuova sembra sbagliata per una settimana. Poi è la vecchia a sembrarlo.",
		"Ogni arma nuova comincia come un'estranea nella mano. Bastano pochi scontri, ed è la vecchia a sembrare forestiera.",
		"Ho smesso di dare un nome alle armi. Cambiano troppo spesso, e io mi affeziono.",
	},
	["cls.warrior.muse.w05.063"] = {
		"Nessuno ti avverte di quanta parte di questo mestiere consista nel pagare un fabbro perché disfi il giorno prima.",
		"Il fabbro mi vede arrivare e sorride. Con le sole ammaccature gli ho pagato mezza forgia.",
	},
	["cls.warrior.muse.w05.064"] = {
		"Un taglio sul palmo mi ricorda ogni presa per una settimana intera. Le ferite piccole sono le migliori maestre di pazienza.",
		"Una nocca spaccata non ferma niente. Si limita a commentare tutto quello che stringo, per giorni.",
	},
	["cls.warrior.muse.w05.065"] = {
		"Se cado, intendo cadere in avanti. Il terreno guadagnato resta guadagnato, anche alla fine.",
		"Quando toccherà a me, che mi trovino {g:rivolto|rivolta} dalla parte giusta. Su questo, è l'unico desiderio che abbia mai espresso.",
	},
	["cls.warrior.muse.w05.066"] = {
		"Prima regola: non lasciare l'arma. Seconda regola: se la lasci, tira pugni. Una terza regola non c'è: a quel punto la questione è chiusa.",
		"Perdi l'arma, non perdere lo scontro. I pugni sono state le prime armi, e non hanno mai bisogno di essere affilati.",
	},
	["cls.warrior.muse.w05.067"] = {
		"Ogni mago che incontro mi chiede perché non imparo almeno un incantesimo. Io gli chiedo perché non impara a incassare un pugno.",
		"Mi dicono di studiare. Io dico loro di provare a rialzarsi dopo un bel manrovescio. Nessuno convince nessuno.",
	},
	["cls.warrior.muse.w05.068"] = {
		"In qualunque folla riconosco gli altri combattenti dall'andatura: spalle squadrate, peso basso, occhi sulla via d'uscita.",
		"Chi ha tenuto una linea lo riconosci da come si ferma su una soglia. Mai proprio nel mezzo.",
	},
	["cls.warrior.muse.w05.069"] = {
		"La cotta fredda sulla pelle quando la giornata non è ancora cominciata davvero: il momento meno eroico che ci sia, e arriva ogni giorno.",
		"Nessuno canta di quando ti infili un'armatura rimasta fredda per ore. Dovrebbero. Ci vuole vero coraggio.",
	},
	["cls.warrior.muse.w05.070"] = {
		"Mettiti pure dietro di me quando vuoi. È il posto più sicuro nel giro di un miglio, e il panorama è quasi tutto la mia schiena.",
		"Se le cose si mettono male, dietro di me. Niente ringraziamenti. Solo, non allontanarti.",
		"Resta vicino. Da vicino posso farci qualcosa.",
	},
	["cls.warrior.muse.w05.071"] = {
		"Chiunque combatta abbastanza a lungo perde qualcuno al suo fianco. Cerco di non pensare a chi toccherà. Quasi sempre non ci riesco.",
		"La linea tiene solo se ogni posto è occupato. Penso al giorno in cui uno di quei posti resterà vuoto, e poi smetto di pensarci.",
	},
	["cls.warrior.muse.w05.072"] = {
		"resta immobile a lungo, l'arma abbassata, come una sentinella che ha dimenticato a cosa servisse il turno di guardia.",
		"resta perfettamente {g:fermo|ferma}, l'arma a riposo, come stanno i vecchi soldati quando non c'è ancora niente contro cui stare.",
	},
	["cls.warrior.muse.w05.073"] = {
		"canticchia sottovoce un ritmo di marcia, battendolo con un dito sull'armatura.",
		"batte un breve tempo di marcia sul proprio pettorale, poi ha l'aria vagamente imbarazzata.",
	},
	["cls.warrior.muse.w05.074"] = {
		"Non ho giurato niente a nessuno di importante. Solo a me: finché sto in piedi, chi è dietro di me non si fa male.",
		"Il mio unico voto è breve: finché resto in piedi, chi sta dietro di me resta intero.",
	},
	["cls.warrior.muse.w05.075"] = {
		"Il sudore si asciuga, i lividi sbiadiscono, il filo si smussa e si riaffila. Mi piace una vita che si aggiusta.",
		"In questo mestiere tutto si consuma e si ripara: le lame, le cinghie, io. C'è conforto in questo.",
	},
	["cls.warrior.muse.w05.076"] = {
		"La testardaggine la chiamano coraggio quando funziona e stupidità quando no. Io cerco di farla funzionare.",
		"Metà del coraggio è semplicemente non sapere quando smettere. L'altra metà è saperlo, e restare lo stesso.",
	},
	["cls.warrior.muse.w05.077"] = {
		"Datemi qualcosa da fare. Stare con le mani in mano mi fa prudere le spalle.",
		"Aspettare non fa per me. Le braccia continuano a chiedermi qual è il piano.",
	},
	["cls.warrior.muse.w05.078"] = {
		"La mia rabbia è un cane da caccia che ho addestrato a venire quando chiamo e a sdraiarsi quando lo dico. Quasi sempre obbedisce.",
		"La furia non è selvaggia. Ho passato tanto tempo a insegnarle le buone maniere, e ne ha imparate quasi tutte.",
		"Tra uno scontro e l'altro la rabbia non la sciolgo dal guinzaglio. Conosce il suo momento e lo aspetta.",
	},
	["cls.warrior.muse.w05.079"] = {
		"Non ho scelto questo mestiere per le comodità. È lui che ha scelto me per la testa dura, e ha scelto bene.",
		"Certi mestieri vogliono una mente svelta. Il mio voleva una testa dura e una lunga pazienza, e io ne avevo d'avanzo.",
	},
	["cls.warrior.muse.w05.080"] = {
		"Parare, poi rispondere. Il momento migliore per colpire è subito dopo che non sono riusciti a farmi male.",
		"C'è un mezzo battito dolcissimo dopo che un colpo scivola via dalla mia guardia. È lì che rispondo più forte.",
	},
	["cls.warrior.muse.w05.081"] = {
		"Quando un nemico schiva, non impreco. Mi prendo il varco che lascia e ci passo dritto in mezzo.",
		"Una schivata è la promessa di essere sbilanciati un attimo dopo. Io quelle promesse le riscuoto.",
	},
	["cls.warrior.muse.w05.082"] = {
		"Ogni tanto, molto di rado, butto via tutta la prudenza in un colpo solo. Niente fa più male dopo, e niente colpisce più forte durante.",
		"Pura incoscienza, tenuta per qualche respiro: colpisco come un albero che crolla e incasso come una finestra aperta.",
	},
	["cls.warrior.muse.w05.083"] = {
		"Lungo la strada, a un certo punto, l'arma ha smesso di essere qualcosa che porto ed è diventata qualcosa che sono.",
		"Non c'è stato un giorno preciso in cui sono {g:diventato un guerriero|diventata una guerriera}. Solo una lenta catasta di giorni, finché non me ne sono {g:accorto|accorta}.",
	},
	["cls.warrior.muse.w05.084"] = {
		"Togliere l'arma a un nemico è la cosa più educata che io sappia fare in uno scontro.",
		"Un nemico disarmato deve ripensarci. Quasi sempre quello che pensa non gli piace.",
	},
	["cls.warrior.muse.w05.085"] = {
		"Il bordo di uno scudo in faccia interrompe quasi tutto. Incantesimi, discorsi, cattive idee.",
		"Qualcuno comincia a salmodiare, io porto avanti il bordo dello scudo. Fine della conversazione.",
	},
	["cls.warrior.pray.w05.001"] = {
		"Chiunque vegli su chi combatte: rendi saldo il mio braccio e tieni in piedi chi mi sta alle spalle.",
		"Se qualcosa ascolta, non chiedo di essere {g:risparmiato|risparmiata}. Solo di cadere per {g:ultimo|ultima}, quando gli altri sono al sicuro.",
	},
	["cls.warrior.quest_complete.w05.001"] = {
		"Un lavoro finito è un peso posato. Ce n'è sempre un altro, ma questo non l'ho più sulle spalle.",
		"Una cosa in meno da dovere al mondo. Lo zaino si fa più leggero.",
		"Posato, allora. Il prossimo carico aspetta che mi raddrizzi la schiena.",
	},
	["cls.warrior.quest_complete.w05.002"] = {
		"Fatto e sistemato. Il prossimo?",
		"Consideralo risolto. C'è altro da fare?",
		"Ecco, a posto. Se hai dell'altro, sono qui.",
	},
	["cls.warrior.quest_complete.w05.003"] = {
		"accetta quel che viene offerto con un breve grugnito e un cenno, lo sguardo già all'uscita.",
		"prende la ricompensa senza cerimonie, come un soldato prende il rancio.",
		"intasca quel che riceve senza contarlo, che è un orgoglio anche quello.",
	},
	["cls.warrior.quest_complete.w05.004"] = {
		"Nessuno scrive mai canzoni sul viaggio di ritorno. Peccato: è quasi tutto il mestiere.",
		"Il lavoro vero dura poco. Il resto è camminare, aspettare e farsi ringraziare con un certo imbarazzo.",
	},
	["cls.warrior.quest_complete.w05.005"] = {
		"Se c'è altro da sollevare, portare o colpire, sai dove trovarmi.",
		"Il lavoro pesante è la mia specialità. Anche quello leggero: non ho pretese.",
		"Serve una porta tenuta, una cassa spostata, una seccatura tolta di mezzo? Stesse condizioni di oggi.",
	},
	["cls.warrior.quest_complete.w05.006"] = {
		"Ogni compito portato a termine rende più facile cominciare il prossimo. Credo servissero a questo, gli esercizi.",
		"I maestri mi facevano ripetere lo stesso colpo cento volte. Insegnavano la pazienza per giornate come questa.",
	},
	["cls.warrior.quest_complete.w05.007"] = {
		"sposta il peso dell'armatura e lascia andare un respiro trattenuto dall'inizio del lavoro.",
		"si spazzola via dall'armatura la polvere della commissione con il palmo della mano.",
	},
	["cls.warrior.quest_complete.w05.008"] = {
		"La mia parola vale. Dillo a chiunque chieda.",
		"Quando prendo un incarico, lo porto a termine. Tutta la mia fama sta lì.",
		"Puoi contare sul metallo e sulla mia parola. Hanno tenuto tutti e due.",
	},
	["cls.warrior.quest_complete.w05.009"] = {
		"Qualunque cosa ne venga, una parte finirà all'armaiolo. Finisce sempre così.",
		"Metà di ogni ricompensa se ne va a riparare quello che il lavoro ha rotto. Il metallo costa.",
		"Un po' va alla cote, un po' al pane. Il resto sparisce, come sempre.",
	},
	["cls.warrior.quest_complete.w05.010"] = {
		"Felice di aiutare. Cerca di non avere bisogno di me troppo presto.",
		"Fatto. Se il problema torna, torno anch'io.",
	},
	["cls.warrior.quest_complete.w05.011"] = {
		"Mi ringraziano e tornano alle loro vite. Io torno alla strada. Un accordo onesto, quasi sempre.",
		"Una stretta di mano, due parole, e sono già voltati verso il prossimo pensiero. Anch'io.",
	},
	["cls.warrior.quest_complete.w05.012"] = {
		"si raddrizza un poco ora che la faccenda è chiusa, come una sentinella a fine turno.",
		"raddrizza le spalle a cosa fatta, come chi fa rapporto al proprio comandante.",
		"si erge in tutta la sua statura, la chiusura del conto scritta chiara sul viso.",
	},
	["cls.warrior.quest_complete.w05.013"] = {
		"Bel lavoro, modestamente. E lo dico io.",
		"Niente male. Mi riassumerei.",
		"Lavoro pulito. Quasi mi impressiono da {g:solo|sola}.",
	},
	["cls.warrior.quest_complete.w05.014"] = {
		"Le gambe sanno benissimo quanta strada mi è costato. L'orgoglio se ne infischia.",
		"Piedi doloranti, cuore leggero. Ho fatto scambi peggiori.",
		"Gli stivali mi hanno portato fino in fondo. La ricompensa la meriterebbero più loro.",
	},
	["cls.warrior.quest_complete.w05.015"] = {
		"Certi lavori finiscono con un grazie, altri col silenzio. In ogni caso pulisco l'arma e vado avanti.",
		"Alla fine non so sempre chi ho aiutato. So che la mia parte l'ho fatta.",
	},
	["cls.warrior.quest_complete.w05.016"] = {
		"Un altro fatto. Continuate a mandarmene: non mi stanco facilmente.",
		"Tutto qui? Mi ero {g:scaldato|scaldata} per qualcosa di più duro.",
		"Fatto e finito. Serve a qualcun altro un braccio forte?",
	},
	["cls.warrior.quest_complete.w05.017"] = {
		"si concede un piccolo sorriso storto, poi si guarda intorno in fretta, caso mai qualcuno l'avesse notato.",
		"fa scrocchiare le nocche una a una: il rumore di un lavoro finito bene.",
		"si stira finché l'armatura scricchiola, poi si lascia sfuggire un sospiro contento.",
	},
	["cls.warrior.quest_complete.w05.018"] = {
		"Ogni incarico insegna qualcosa alle braccia e qualcos'altro alla testa. Oggi ha imparato di più la testa.",
		"Non tutti i compiti richiedono la lama. Sto imparando a distinguere quali sì.",
	},
	["cls.warrior.quest_complete.w05.019"] = {
		"Fatto. Risparmiami le cerimonie.",
		"Ecco qua. I ringraziamenti tienili per chi ne ha bisogno.",
		"Finito. Non facciamone un dramma.",
	},
	["cls.warrior.quest_complete.w05.020"] = {
		"Qualcosa, in qualche angolo del mondo, va un po' meglio di prima. Basta per dormirci sopra.",
		"Il mondo intero con un'arma non lo aggiusto. Il pezzo che ho davanti, invece, sì.",
	},
	["cls.warrior.quest_complete.w05.021"] = {
		"Dillo in giro: gente affidabile, solida e abbastanza educata.",
		"Se scrivi referenze, il mio nome scrivilo giusto.",
	},
	["cls.warrior.quest_complete.w05.022"] = {
		"si asciuga i palmi sulle cosce e per una volta lascia le mani penzolare libere.",
		"posa una mano sull'impugnatura dell'arma, a riposo per lo spazio di un respiro.",
	},
	["cls.warrior.quest_complete.w05.023"] = {
		"Finito. Le facce me le ricorderò più a lungo della ricompensa.",
		"La ricompensa la spenderò. Lo sguardo di chi mi ha visto tornare, quello me lo tengo.",
	},
	["cls.warrior.quest_complete.w05.024"] = {
		"Fatto e saldato. Le due parole più belle che conosca.",
		"Saldato. Mi piace come suona.",
		"Fatto. La parola più dolce in qualunque lingua.",
	},
	["cls.warrior.quest_complete.w05.025"] = {
		"fa un breve cenno da soldato, di quelli che vogliono dire conti pari.",
		"si volta col passo senza fretta di chi non ha più debiti in sospeso.",
	},
	["cls.warrior.quest_progress.w05.001"] = {
		"Una parte di strada è fatta. Stesso passo, stessa presa.",
		"Non è finita, ma è più vicina. Più vicino è una direzione che mi piace.",
		"Una parte fatta. Il resto non si sistema da solo.",
	},
	["cls.warrior.quest_progress.w05.002"] = {
		"C'è tutto. È ora di fare rapporto.",
		"Tutto quello che chiedevano. Andiamo a riscuotere.",
		"Questo chiude la faccenda. Torniamo da chi aspetta.",
	},
	["cls.warrior.quest_progress.w05.003"] = {
		"fa un conto a mente, lo trova ancora corto, e torna al lavoro senza lamentarsi.",
		"conta sulle dita, aggrotta la fronte davanti al numero e si prepara al resto.",
	},
	["cls.warrior.quest_progress.w05.004"] = {
		"Era l'ultimo pezzo. La strada del ritorno sembra sempre più corta, anche se non lo è mai.",
		"Qui ho finito. Il ritorno è l'unico tratto che non mi pesa.",
	},
	["cls.warrior.reputation_change.w05.001"] = {
		"Adesso mi guardano in un altro modo. Meno come un braccio a pagamento, più come qualcuno su cui contare.",
		"Un po' più {g:benvenuto|benvenuta} di prima. Il lavoro ha parlato per me, come fa di solito.",
		"Se continui a farti vedere, la voce gira. Stavolta è una bella voce.",
	},
	["cls.warrior.rez.w05.001"] = {
		"Al ritorno l'armatura pesa più che all'andata. O forse sono io ad aver lasciato qualcosa per strada.",
		"In piedi. L'equipaggiamento c'è tutto, solo un po' più malconcio. Anche la morte si fa pagare, a quanto pare.",
	},
	["cls.warrior.rezother.w05.001"] = {
		"Eccoti. Mentre non c'eri non è successo niente di bello.",
		"Di nuovo qui. Da laggiù il panorama non doveva essere granché.",
		"Ah, sei di nuovo con noi. Bene: in prima fila cominciavo a sentirmi {g:solo|sola}.",
	},
	["cls.warrior.rezother.w05.002"] = {
		"Prendi fiato e stammi vicino. Non succederà due volte.",
		"Stammi dietro finché le gambe non tornano. Al resto penso io.",
		"Piano. Orientati. Finché ci sono io, non ti arriva niente.",
	},
	["cls.warrior.rezother.w05.003"] = {
		"Avrei dovuto esserci io fra quel colpo e chi è caduto. La prossima volta starò più vicino.",
		"Quel colpo è arrivato mentre ero lì a due passi. Per un po' non me lo perdonerò.",
	},
	["cls.warrior.rezother.w05.004"] = {
		"tende la mano a chi si è appena rialzato e l'aiuta a tirarsi su senza una parola.",
		"si piazza accanto a chi è appena tornato, l'arma pronta, finché quel viso non riprende colore.",
	},
	["cls.warrior.rezother.w05.005"] = {
		"La prossima volta quel colpo lascialo a me. Io {g:brutto|brutta} lo sono già.",
		"Cerca di restare in piedi un po' di più. I miei nervi non sono di ferro.",
		"Che bello riaverti qui. Ora smettila di farlo.",
	},
	["cls.warrior.thanks.w05.001"] = {
		"Grazie. Una volta o l'altra mi metterò davanti a te e saremo pari.",
		"Ti sono {g:obbligato|obbligata}. Al prossimo scontro il primo colpo lo prendo io per te.",
	},
	["cls.warrior.thanks.w05.002"] = {
		"Grazie. Non farne un'abitudine, o divento {g:tenero|tenera}.",
		"Grazie. Ai maestri non dire niente.",
	},
	["cls.warrior.threat.w05.001"] = {
		"Porto addosso abbastanza ferro da affondare una barca. Davvero credi di attraversarlo prima che io attraversi te?",
		"Dovresti tagliare tutto questo ferro per arrivare a me. A me basta arrivare a te una volta.",
	},
	["cls.warrior.threat.w05.002"] = {
		"È stata una lunga giornata a prendere colpi. Per una volta mi piacerebbe darli io.",
		"Prendere colpi è il mio mestiere. Restituirli è il mio piacere. Scegli quale vuoi vedere.",
		"Incassare è il lavoro. Restituire è la parte che mi diverte. Non farmi divertire.",
	},
	["cls.warrior.threat.w05.003"] = {
		"Non mi serve essere {g:arrabbiato|arrabbiata} per farlo. Ma non farmi arrabbiare lo stesso.",
		"Sono {g:calmo|calma}. In questo momento è la cosa più pericolosa di me.",
	},
	["cls.warrior.threat.w05.004"] = {
		"Guarda la mia posizione. Ora chiediti se hai mai smosso qualcuno che stava così.",
		"Vedi come sto in piedi? Chi sta così non si fa spostare. Sposta gli altri.",
		"Peso basso, piedi saldi. Faresti prima a spostare un pilastro del cancello.",
	},
	["cls.warrior.threat.w05.005"] = {
		"La mia cote si annoia da una settimana. Non darle un motivo per tirarsi su.",
		"Tutto quello che porto è appena affilato e oggi non l'ho ancora usato. Non farti avanti.",
	},
	["cls.warrior.threat.w05.006"] = {
		"Ultimo avvertimento, e io con gli avvertimenti non sono {g:bravo|brava}. Sono molto meglio nell'altra cosa.",
		"Le parole non sono il mio mestiere. Sto per passare a quello che lo è.",
	},
	["cls.warrior.victory.w05.001"] = {
		"La rabbia lascia andare la mascella per ultima. Succede sempre.",
		"Tutto il resto si scioglie prima. I denti se la prendono comoda.",
		"Braccia giù, spalle giù, e la mascella è ancora serrata come una tagliola. Le passerà.",
	},
	["cls.warrior.victory.w05.002"] = {
		"stacca le dita dall'impugnatura una alla volta, come se appartenessero a qualcun altro.",
		"apre e chiude la mano rattrappita finché le dita non si decidono a muoversi di nuovo.",
	},
	["cls.warrior.victory.w05.003"] = {
		"Vorrei scambiare due parole con chi ha progettato queste fibbie. Anzi, parecchie.",
		"Se un'altra fibbia si allenta a metà colpo, la prossima volta combatto in un sacco.",
		"Tutte le mie cinghie hanno scelto proprio quel momento per scivolare. Dovremo fare un discorsetto.",
	},
	["cls.warrior.victory.w05.004"] = {
		"Strano. L'armatura non pesa nulla finché serve, e il doppio non appena smette di servire.",
		"Nella lotta il ferro non lo sento mai. Dopo, si fa ricordare grammo per grammo.",
	},
	["cls.warrior.victory.w05.005"] = {
		"risistema le spalle sotto l'armatura, come si aggiusta un carico ben noto prima di rimettersi in strada.",
		"tira su l'armatura sulle spalle, ritrova l'equilibrio di sempre, e si regge meglio.",
	},
	["cls.warrior.victory.w05.006"] = {
		"Non è passato niente. È l'unica cosa di cui mi vanterò.",
		"Qualunque cosa volesse, attraverso me non l'ha avuta. Bene.",
		"Voleva passarmi oltre. Non ci è riuscito. Il rapporto finisce qui.",
	},
	["cls.warrior.victory.w05.007"] = {
		"Il cortile mi ha insegnato le mosse. Lotte come questa mi insegnano quali contano.",
		"Pali e spade da allenamento arrivano fin lì. Quella era la lezione vera, e stavolta l'ho superata.",
	},
	["cls.warrior.victory.w05.008"] = {
		"Fuori dalla posizione. Le ginocchia hanno delle opinioni in merito, e tutte ad alta voce.",
		"Guardia giù. Le ginocchia stanno presentando le loro lamentele.",
	},
	["cls.warrior.victory.w05.009"] = {
		"trova una cinghia che si è allentata nella lotta e la affibbia un buco più stretta di prima.",
		"rimette a posto con uno strattone una fibbia scivolata, e la tira forte per assicurarsi che resti.",
	},
	["cls.warrior.victory.w05.010"] = {
		"Sistemato. Lo prendo così com'è, come s'è combattuto: senza giri.",
		"Fatto a viso aperto, niente trucchi da nessuna parte. Ci dormirò sopra benissimo.",
	},
	["cls.warrior.victory.w05.011"] = {
		"L'ha fatto il mio braccio. Gliel'ho insegnato io, non posso certo dargli la colpa.",
		"Tutte quelle ore a insegnare al corpo a fare questo, e lo fa così bene. Non sempre mi piace quanto bene.",
	},
	["cls.warrior.victory.w05.012"] = {
		"Ecco a cosa servivano tutti gli esercizi. Ognuno, fino all'ultimo.",
		"Eccolo. Ogni mattina dolorante nel cortile, ripagata in una sola lotta.",
		"Ha! Il palo d'allenamento non mi ha mai dato una sensazione così.",
	},
	["cls.warrior.victory.w05.013"] = {
		"abbassa lo sguardo su un graffio nuovo nell'armatura e grugnisce, come chi annota un debito da riscuotere.",
		"passa il pollice su un segno fresco dell'armatura, e la sua faccia dice che non verrà dimenticato.",
	},
	["cls.warrior.victory.w05.014"] = {
		"E nemmeno una delle cinghie buone rotta. Oggi è festa.",
		"È ancora tutto attaccato. Armatura, dita, buonumore. Il buonumore un po' meno.",
	},
	["cls.warrior.victory.w05.015"] = {
		"Ogni colpo sull'armatura mi ronza ancora nelle ossa. Svanisce più piano di quanto sia durata la lotta.",
		"I colpi che ho parato mi vibrano ancora su per il braccio. Di questa parte non ti avverte nessuno.",
	},
	["cls.warrior.victory.w05.016"] = {
		"solleva l'arma e ne traguarda la lunghezza, accigliandosi per qualcosa che vede solo {g:lui|lei}.",
		"scruta l'arma per il lungo con un occhio chiuso, poi grugnisce {g:soddisfatto|soddisfatta}.",
	},
	["cls.warrior.victory.w05.017"] = {
		"Qualcuno ha preso un colpo che spettava a me? Guarda bene prima di chiamarla vittoria.",
		"Il compito era prendermi io i colpi. Guarda chi altro si è fatto male: quello è il mio vero punteggio.",
	},
	["cls.warrior.victory.w05.018"] = {
		"Tutti ancora in piedi? Bene. Allora, chi ha una mano libera per questa fibbia?",
		"Ben tenuto, tutti quanti. Vi stringerei la mano, ma la mia non si apre ancora.",
	},
	["cls.warrior.victory.w05.019"] = {
		"Bene. La prossima volta datemi un attimo in più per attirare la loro attenzione prima di cominciare.",
		"Buon lavoro. Solo una cosa: lasciate il primo colpo a me. Così i loro occhi restano dove devono.",
	},
	["cls.warrior.victory.w05.020"] = {
		"Fanno due volte che muori. Speriamo che la seconda tenga.",
		"Chiunque ti abbia rialzato può venire a rifarlo. Io resto qui.",
	},
	["cls.warrior.victory.w05.021"] = {
		"Aveva solo denti e fame. Io ferro e addestramento. A pensarci, non era una gran gara.",
		"Zanne da una parte, armatura dall'altra. Non ha mai avuto una vera possibilità, e non ne vado {g:fiero|fiera}.",
	},
	["cls.warrior.victory.w05.022"] = {
		"Aveva addestramento, un'arma, e si trovava dalla parte sbagliata. Avrei voluto sapere dove aveva imparato quella parata.",
		"Buon gioco di gambe, per un po'. Qualche sergente, chissà dove, ne sarebbe andato fiero.",
	},
	["cls.warrior.victory.w05.023"] = {
		"Torna a essere quello che era prima che qualcosa lo facesse arrabbiare. Conosco la sensazione.",
		"Di nuovo solo materia. Pietra, acqua, quel che era. Difficile vantarsi di aver battuto una pozzanghera.",
	},
	["cls.warrior.victory.w05.024"] = {
		"Rottame. A qualcuno serviranno gli ingranaggi; a me basta riavere l'udito.",
		"Ecco l'ultima delle sue molle. Qualcuno porti una scopa, o un meccanico.",
	},
	["cls.warrior.victory.w05.025"] = {
		"Tornato da dove veniva, o da nessuna parte. Mi vanno bene entrambe.",
		"Qualunque abisso l'abbia sputato fuori, può riprenderselo. Dei pezzi non so che farmene.",
	},
	["cls.warrior.victory.w05.026"] = {
		"Vinto. Non chiedermi un inchino: non so se riuscirei a tirarmi su.",
		"Mi prendo la vittoria e una lunga seduta, nell'ordine che sceglieranno le gambe.",
	},
	["cls.warrior.victory.w05.027"] = {
		"Neanche un segno addosso. Il lavoro l'ha fatto l'armatura; il merito me lo prendo io.",
		"Pulito. Il ferro si è preso tutto quello che avevi e ne chiedeva ancora.",
	},
	["cls.warrior.victory.w05.028"] = {
		"Ce l'ho fatta! Cioè, ovvio che ce l'ho fatta. Era del tutto previsto.",
		"Ha! Proprio come me l'hanno fatto entrare in testa al cortile. Be', quasi.",
	},
	["cls.warrior.victory.w05.029"] = {
		"Un tempo mi avrebbe chiesto tutto quello che avevo. Ora solo quasi tutto. Il progresso lento è pur sempre progresso.",
		"Le lotte non diventano più facili. Sono io che divento più difficile da abbattere.",
	},
	["cls.warrior.victory.w05.030"] = {
		"Qualunque cosa fosse, ci vorrà qualche punto. A me, intendo, non a quello.",
		"Domani qualcuno avrà un braccio dolorante, e non è chi sta lì per terra.",
		"La mia spalla mi scriverà lettere di protesta per giorni.",
	},
	["cls.warrior.victory.w05.031"] = {
		"La furia non vuole andarsene. La faccio girare un po' in tondo, come un cavallo dopo una corsa dura.",
		"È ancora lassù, il calore, che cerca qualcos'altro da colpire. Piano. Piano. Non è rimasto niente.",
	},
	["cls.warrior.victory.w05.032"] = {
		"fa un passo indietro deliberato, poi un altro, prima di lasciar scendere la guardia dell'ultimo dito.",
		"tiene l'arma alzata per un conto fino a tre dopo la fine, per un'abitudine piantata troppo a fondo per perderla.",
	},
	["cls.warrior.victory.w05.033"] = {
		"Lavoro duro, fatto come si deve. Non mi serve altra gloria.",
		"Niente di elegante, ma solido. Come un buon muro.",
		"Una lotta costruita per durare. Niente di ricercato, niente di sprecato.",
	},
	["cls.warrior.victory.w05.034"] = {
		"A un certo punto ho fatto un verso che preferirei nessuno avesse sentito. Scelgo di credere che nessuno l'abbia sentito.",
		"Sono quasi {g:sicuro|sicura} di aver urlato qualcosa a metà lotta. E quasi {g:sicuro|sicura} che non fossero parole.",
	},
	["cls.warrior.victory.w05.035"] = {
		"si accovaccia per un momento sui talloni, l'arma di traverso sulle ginocchia, e lascia che il cuore rallenti.",
		"si siede proprio lì dove la lotta è finita, l'arma in grembo, e lascia al cuore il tempo di rallentare.",
	},
	["cls.warrior.victory.w05.036"] = {
		"E l'armatura vince ancora. Imbattuta, quell'armatura.",
		"Ricordami di ringraziare il fabbro. Chiunque sia, oggi se l'è meritato.",
		"Offrirei da bere all'armatura, se solo sapesse tenere un boccale.",
	},
	["cls.warrior.victory.w05.037"] = {
		"Piedi piantati, colpo, e non fermarsi. La lezione più semplice del mondo, e funziona sempre.",
		"Ha! Dritto attraverso. L'unica strada che conosco.",
	},
	["cls.warrior.victory.w05.038"] = {
		"alza l'arma in un breve saluto rigido verso chi è caduto, poi si volta senza cerimonie.",
		"si porta l'arma alla fronte, una piccola cortesia da soldato, e la riabbassa.",
	},
	["cls.warrior.victory.w05.039"] = {
		"Paura all'inizio, calma alla fine. Mi accontento di questa proporzione.",
		"Comincia sempre con lo stomaco annodato e finisce con le mani ferme. Alla prima metà ho smesso di badare.",
	},
	["cls.warrior.victory.w05.040"] = {
		"Bene. Adesso la parte noiosa: olio, straccio, e niente smorfie dove qualcuno può vedermi.",
		"Adesso la parte silenziosa: scoprire cosa fa male senza darlo a vedere.",
	},
	["cls.warrior.victory.w05.041"] = {
		"A questo serve l'armatura, e a questo servo io. Abbiamo fatto il nostro lavoro, lei e io.",
		"Il ferro ha tenuto, e io pure. Nessuno dei due è fatto per fare altrimenti.",
	},
	["cls.warrior.victory.w05.042"] = {
		"Adesso i piccoli dolori escono allo scoperto per farsi contare. Un polso, uno stinco, qualcosa nella schiena. Va bene. Va bene.",
		"I piccoli acciacchi aspettano educatamente la fine, poi parlano tutti insieme.",
		"Niente di rotto. Parecchie cose con un reclamo da presentare.",
	},
	["cls.warrior.victory.w05.043"] = {
		"controlla la fasciatura dell'impugnatura, la trova scivolosa e la asciuga contro la coscia.",
		"riavvolge il legaccio allentato dell'impugnatura, stretto e ordinato, prima di qualsiasi altra cosa.",
	},
	["cls.warrior.victory.w05.044"] = {
		"Non la mia forma migliore. Conta lo stesso.",
		"Brutto da vedere, ma conta. Nessuno paga di più per lo stile.",
		"Se qualcuno teneva il punteggio dell'eleganza, ho perso. Per fortuna nessuno lo teneva.",
	},
	["cls.warrior.victory.w05.045"] = {
		"Per un momento non ero altro che il colpo successivo. Potrei abituarmici. Probabilmente l'ho già fatto.",
		"Niente passato, niente piani, solo il prossimo colpo. È il momento in cui mi sento più {g:pulito|pulita}.",
	},
	["cls.warrior.victory.w05.046"] = {
		"Be', mi ha sciolto i muscoli. Mi sento quasi agile.",
		"Bell'esercizio. Meglio di un'ora contro il palo.",
		"Mi ero {g:scaldato|scaldata} per bene. Peccato che sia finita.",
	},
	["cls.druid.heal.w06.001"] = {
		"allarga le dita sopra la ferita, e qualcosa di simile a foglie nuove che si schiudono attraversa la carne.",
		"intona una nota bassa e senza parole, e la ferita si richiude come un fiore che serra i petali a sera.",
	},
	["cls.druid.heal.w06.002"] = {
		"Continuerà a lavorare anche quando avrò smesso. Dagli un po' di tempo.",
		"Ora è dentro di te e ripara piano. Come una sorgente sotto il muschio.",
	},
	["cls.druid.heal.w06.003"] = {
		"La natura presta la sua forza per guarire, ma tiene i conti. La primavera è generosa solo perché l'inverno è stato severo.",
		"Ogni volta prendo in prestito qualcosa dal verde. Non me l'ha mai negato, ed è proprio per questo che chiedo con misura.",
	},
	["cls.druid.heal.w06.004"] = {
		"Resta immobile. Le radici attecchiscono prima in un terreno quieto.",
		"Non opporti. Le cose guariscono meglio quando smettono di dimenarsi.",
	},
	["cls.druid.heal.w06.005"] = {
		"Erbe bollite e imbottigliate. Opera della natura, anche se per mano d'altri.",
		"Il tè di un alchimista. Al Circolo sembrerebbe pigrizia; alle mie ferite sembra una benedizione.",
	},
	["cls.druid.heal.w06.006"] = {
		"Per qualche respiro tutto attorno a me si fa quieto e verde. Resto immobile, e chi mi sta vicino resta sorretto insieme a me.",
		"Tranquillità. Il nome mi è sempre sembrato uno scherzo, lanciato proprio nel mezzo del peggio.",
	},
	["cls.druid.heal.w06.007"] = {
		"osserva la ferita chiudersi con la pazienza di un giardiniere, senza affrettarla e senza distogliere lo sguardo.",
		"aspetta, immobile come un airone, finché il dolore non è defluito del tutto.",
	},
	["cls.hunter.attack.w06.001"] = {
		"Senti? Ce n'è ancora parecchio.",
		"Questo è perché mi hai fatto faticare.",
		"Un altro, e un altro ancora. Posso andare avanti finché serve.",
	},
	["cls.hunter.attack.w06.002"] = {
		"Ancora. Come prima. Niente fantasie.",
		"Bene. Adesso il prossimo, proprio così.",
		"Non ammirarlo. Prepara il prossimo.",
	},
	["cls.hunter.attack.w06.003"] = {
		"si muove senza un gesto sprecato, ogni colpo che nasce da quello prima.",
		"lavora con l'economia di chi caccia: non spende nulla che non serva.",
		"si sposta di mezzo passo di lato e colpisce ancora, mai proprio dove il nemico se lo aspetta.",
	},
	["cls.hunter.attack.w06.004"] = {
		"Ti ha punto? Era l'idea.",
		"Non muoverti. Quello portava il tuo nome.",
		"Oh, questo l'hai sentito. Bene. Era per te.",
	},
	["cls.hunter.attack.w06.005"] = {
		"Insieme, adesso! Colpiscilo con me!",
		"Adesso, mentre guarda te!",
		"Attaccalo mentre colpisco!",
	},
	["cls.hunter.attack.w06.006"] = {
		"Se continuo così, potrei perfino stupire {g:me stesso|me stessa}.",
		"Niente male. Proprio niente male. Concentrati lo stesso.",
		"Attenzione. Il momento in cui mi sento {g:soddisfatto|soddisfatta} è quello in cui sbaglio.",
	},
	["cls.hunter.attack.w06.007"] = {
		"Il terreno ora è mio. Ogni passo che fai, l'ho già misurato.",
		"Ti ho preso le misure. Ora è solo ripetizione.",
		"Adesso so come ti muovi. È la tua fine, piano piano.",
	},
	["cls.hunter.attack.w06.008"] = {
		"colpisce e cede terreno in un solo movimento fluido, senza mai lasciare che il nemico si assesti.",
		"colpisce, scivola indietro, colpisce ancora, paziente come l'acqua sulla pietra.",
	},
	["cls.hunter.attack.w06.009"] = {
		"Ah! Ecco quello che aspettavo.",
		"Questo sì che me lo ricorderò.",
	},
	["cls.hunter.battle.w06.001"] = {
		"Un momento. Prima che cominci, voglio che tu porti il mio marchio.",
		"Prima il marchio, così non ti perdo, per quanto tu possa contorcerti.",
		"Prima il marchio. Dopo, non c'è posto dove tu possa stare che io non trovi.",
	},
	["cls.hunter.battle.w06.002"] = {
		"Troppo vicino per tirare, troppo lontano per colpire bene. È in quel vuoto che i cacciatori si fanno male. Starne fuori.",
		"Attenzione allo spazio di mezzo. Né abbastanza vicino per colpire né abbastanza lontano per tirare: il terreno peggiore che ci sia.",
		"Tra la mia portata e il mio tiro c'è una striscia morta. Tutto lo scontro sta nel tenerci fuori il nemico.",
	},
	["cls.hunter.battle.w06.003"] = {
		"cerca le munizioni senza guardare, la mano che le trova per lunga abitudine.",
		"carica a tentoni, senza staccare gli occhi dal nemico.",
		"ha l'arma pronta prima ancora che il nemico abbia finito di voltarsi.",
	},
	["cls.hunter.battle.w06.004"] = {
		"Ho contato le munizioni prima di partire. Vediamo quante ne vali.",
		"Ogni colpo che spendo per te esce dalla mia borsa. Vedi di cadere in fretta.",
		"Le munizioni non le regalano, sai. Cadi presto e risparmiamo tutti e due.",
	},
	["cls.hunter.battle.w06.005"] = {
		"Avanti, allora. Ogni passo verso di me lo fai dentro il mio mirino.",
		"Carica pure. È tanta strada da fare, con me che tiro.",
		"Avvicinati. Ho già contato quanti colpi ti costerà la passeggiata.",
	},
	["cls.hunter.battle.w06.006"] = {
		"Guarda i piedi, non l'arma. Sono sempre i piedi a dirtelo per primi.",
		"Dove mette il peso, là andrà. Leggilo e tira un passo avanti.",
		"Ogni nemico lascia tracce, anche in uno scontro. Un piede che si sposta, una spalla che cala. Leggile.",
	},
	["cls.hunter.battle.w06.007"] = {
		"Vediamo quanto corri con le gambe azzoppate.",
		"Ti arriva una bella zoppia. Poi parliamo di distanze.",
		"Un colpo per rallentarti, poi i miei passi indietro. Un ballo semplice.",
	},
	["cls.hunter.battle.w06.008"] = {
		"si bagna un dito e lo alza, rapido come un battito di ciglia, prima di sollevare l'arma.",
		"piega la testa verso l'aria per mezzo battito, a capire da che parte si muove, poi prende la mira.",
	},
	["cls.hunter.battle.w06.009"] = {
		"Ho aspettato più di così per un solo tiro. La mia pazienza non la spaventi.",
		"Fai con calma. L'attesa è la metà della caccia che nessuno canta.",
		"Mettimi fretta quanto vuoi. La pazienza è l'unica arma che non mi finisce mai.",
	},
	["cls.hunter.battle.w06.010"] = {
		"Piano. Conosco la tua specie. So dove scatterai prima di te.",
		"Ho letto cento impronte come le tue. So come va a finire.",
		"Denti e artigli li capisco. Da me non avrai sorprese, e io non ne avrò da te.",
	},
	["cls.hunter.battle.w06.011"] = {
		"Tu hai un rancore. Io ho la gittata. Vediamo cosa arriva prima.",
		"Tu hai portato la rabbia, io la distanza. Una delle due tiene in vita meglio.",
	},
	["cls.hunter.battle.w06.012"] = {
		"Non sussulti quando parte il colpo. Bene. Nemmeno io.",
		"Niente fiato da trattenere, niente cuore da mirare. Mirerò ai pezzi.",
		"Non sussulti, non ti stanchi e non ti fermi. Va bene. Neanch'io.",
	},
	["cls.hunter.battle.w06.013"] = {
		"Niente odore, niente impronte, niente battito. Cacciare te è come cacciare una folata d'aria.",
		"Di te non resta traccia da nessuna parte. Poco importa: sei proprio lì.",
	},
	["cls.hunter.battle.w06.014"] = {
		"Ho seguito tracce di cose immonde, prima d'ora. Nessuna puzzava come la tua.",
		"Da qualunque abisso tu venga, adesso sei a tiro.",
	},
	["cls.hunter.battle.w06.015"] = {
		"Tiro su quello che tiene la prima linea, non su quello che sembra interessante. Disciplina.",
		"Lascia che la prima linea prenda i primi colpi. Il mio lavoro comincia un attimo dopo il loro.",
		"Aspetta che chi sta davanti l'abbia in pugno. Poi i colpi.",
	},
	["cls.hunter.battle.w06.016"] = {
		"Eccoli. Quello che si stacca lo abbatto prima che arrivi alle retrovie.",
		"Comunque sia cominciata, io sto già tirando. State al passo.",
	},
	["cls.hunter.battle.w06.017"] = {
		"prende la mira lungo l'arma, e il resto del mondo sembra farsi da parte.",
		"si fa immobile tutto quanto, come se l'intero corpo fosse diventato parte della mira.",
		"lascia uscire metà del respiro e trattiene il resto, mentre la mira si posa come polvere.",
	},
	["cls.hunter.battle.w06.018"] = {
		"Regola numero uno: mai combattere con l'aspetto del ghepardo addosso. Un colpo e barcollo come un ubriaco.",
		"Ho ancora addosso il ghepardo? Ce l'ho sempre ancora addosso. Cambialo, subito.",
	},
	["cls.hunter.battle.w06.019"] = {
		"Prima ti rallento. Poi me la prendo comoda.",
		"Un colpo che ti appesantisce le gambe, e il resto è pazienza.",
	},
	["cls.hunter.battle.w06.020"] = {
		"Questo brucia quando entra e continua a bruciare. Se scappi, scappa con te.",
		"Un po' di veleno per cominciare. Lavora mentre lavoro io.",
		"Non serve che ti colpisca due volte. Il pungiglione te lo ricorderà al posto mio.",
	},
	["cls.hunter.battle.w06.021"] = {
		"Tu sei di un'altra stazza. Allora ti dedicherò più tempo. Tutto qui.",
		"Pezzo grosso. Va bene. Ora ogni colpo vale doppio, quindi nessuno va a vuoto.",
	},
	["cls.hunter.battle.w06.022"] = {
		"Questo mi sta sopra di parecchio. Distanza, movimento, e niente ingordigia.",
		"Più forte di me, e lo sa. Allora sarò {g:più furbo|più furba}, e questo non lo saprà.",
	},
	["cls.hunter.battle.w06.023"] = {
		"Tienilo fermo lì. Al resto ci penso io da qui.",
		"Mettiti davanti e restaci. Ti tirerò accanto all'orecchio.",
		"Fa' che guardi te. Io lo sto già guardando.",
	},
	["cls.hunter.battle.w06.024"] = {
		"Denti davanti, colpi da dietro. Chi ha pensato questo scontro conosceva il mestiere. Io.",
		"Uno di noi ringhia, l'altro mira. Indovina chi dovresti tenere d'occhio.",
	},
	["cls.hunter.battle.w06.025"] = {
		"fa un breve fischio, e il compagno è già in movimento prima che la nota finisca.",
		"manda avanti la bestia con una parola sommessa e si sposta dall'altra parte, allargando la distanza.",
	},
	["cls.hunter.battle.w06.026"] = {
		"Trovarlo, inchiodarlo nel mirino, finirlo. Come ogni caccia.",
		"Ogni caccia ha tre passi. I primi due li ho fatti.",
		"Ti ho trovato. Ti ho nel mirino. Ora si chiude.",
	},
	["cls.hunter.battle.w06.027"] = {
		"prima di tutto si guarda alle spalle, misurando quanto terreno c'è per arretrare.",
		"controlla l'appoggio dietro di sé con un rapido sguardo oltre la spalla, poi si volta verso il nemico.",
		"per prima cosa valuta lo spazio libero alle sue spalle, come farebbe chiunque sappia cacciare.",
	},
	["cls.hunter.battle.w06.028"] = {
		"Cacciatore e preda. Il patto più vecchio del mondo selvaggio, e so da che parte ho firmato.",
		"Prima dei villaggi e delle mura c'era questo: chi insegue e chi scappa. So qual è la mia parte.",
	},
	["cls.hunter.battle.w06.029"] = {
		"Il primo tiro decide tutto lo scontro. Concediti un battito in più.",
		"Mai avere fretta all'inizio. Tutto quello che segue si appoggia al primo tiro.",
		"Un battito in più sulla mira. Il primo colpo è quello con cui dovrò convivere.",
	},
	["cls.hunter.battle.w06.030"] = {
		"Non muoverti. È meglio per tutti e due.",
		"Resta immobile e si fa presto. Mettiti a ballare e no.",
		"Stai immobile, e sarà una cosa pulita. Hai la mia parola.",
	},
	["cls.hunter.battle.w06.031"] = {
		"Tarpa, passo, passo, tiro. Tarpa, passo, passo, tiro. Non perdere il conto.",
		"Se mi raggiunge: gli azzoppo le gambe, tre passi indietro, e si ricomincia. È il ritmo che mi salva.",
	},
	["cls.hunter.battle.w06.032"] = {
		"Borsa piena, mani ferme, visuale libera. Hai scelto {g:il cacciatore sbagliato|la cacciatrice sbagliata}.",
		"Munizioni fresche, e anch'io. Hai scelto male il momento.",
		"Borsa piena, mira giusta. Qualcuno sta passando un brutto momento, e non sono io.",
	},
	["cls.hunter.battle.w06.033"] = {
		"Combattimi o scappa. In tutti e due i casi, la visuale migliore ce l'ho io.",
		"Gira i tacchi o carica. Sono {g:pronto|pronta} a entrambe le cose, e una mi piacerà di più.",
		"Che tu resti o scappi, per la mia mira è uguale.",
	},
	["cls.hunter.battle.w06.034"] = {
		"Tutte quelle ore a piantare colpi nella paglia. Vediamo a cosa servivano.",
		"I bersagli di paglia non rispondevano al tiro. Vediamo se le lezioni reggono lo stesso.",
		"L'allenamento è finito. Questo si muove, e risponde.",
	},
	["cls.hunter.battle.w06.035"] = {
		"Eccola, quella stretta nel petto. La caccia è cominciata, e lo sa ogni parte di me.",
		"Tutto si fa nitido ai bordi. I suoni, gli odori, la distanza. Mi piace questo momento, forse un po' troppo.",
	},
	["cls.hunter.battle.w06.036"] = {
		"Da lontano ti prendi i miei colpi. Da vicino rimpiangerai la distanza.",
		"Lontano, tiro. Vicino, colpisco. Per te non esiste una distanza sicura.",
		"Ogni distanza è mia. Vedrai.",
	},
	["cls.hunter.battle.w06.037"] = {
		"lascia partire il primo colpo senza alcuna fretta, come se la decisione fosse stata presa da tempo.",
		"apre lo scontro con un solo colpo tranquillo, poi sposta il peso sul piede dietro.",
	},
	["cls.hunter.battle.w06.038"] = {
		"Ah, un bersaglio che si muove. Cominciavo ad annoiarmi.",
		"Finalmente qualcosa per cui valga la pena prendere la mira.",
		"Bene. Cominciavo a dimenticare a cosa serve l'arma.",
	},
	["cls.hunter.battle.w06.039"] = {
		"Espira sulla mira, inspira sul passo. Tieni quel ritmo e il resto viene da sé.",
		"Le mani lente sono abbastanza veloci. Quelle svelte sbagliano.",
		"Non inseguire il tiro. Lascia che venga lui alla mira.",
	},
	["cls.hunter.battle.w06.040"] = {
		"Non ho bisogno di toccarti per finirti. È questo il bello.",
		"Non arriverai mai abbastanza vicino da colpirmi. È proprio questo il punto.",
		"A un braccio di distanza? Preferisco quaranta passi.",
	},
	["cls.hunter.battle.w06.041"] = {
		"porta l'arma in posizione e lascia che tutto il resto del mondo sparisca.",
		"stringe la presa una volta, poi la allenta quanto basta a tenerla salda.",
	},
	["cls.hunter.battle.w06.042"] = {
		"Ogni pista finisce da qualche parte. La tua finisce qui.",
		"Da qualunque sentiero tu venga, si ferma ai miei piedi.",
		"Questo è l'ultimo tratto della tua pista. Lo farò breve.",
	},
	["cls.hunter.battle.w06.043"] = {
		"Se il primo va a vuoto, nessuno deve saperlo. Credo.",
		"Fa' che il primo colpo vada a segno. Odierei avere pubblico per il secondo tentativo.",
	},
	["cls.hunter.battle.w06.044"] = {
		"Ho letto il terreno, l'aria e te. Adesso devo solo lasciar andare.",
		"Terreno, aria, distanza, nemico. Tutto letto. Resta solo da tirare.",
	},
	["cls.hunter.buff.w06.001"] = {
		"Prendo un po' di selvatico prima che serva. Meglio essere pronti che sbrigarsi a prepararsi.",
		"Un respiro per entrarci. Il corpo riconosce la forma prima che la testa le dia un nome.",
		"Spalle sciolte, peso in avanti. Adesso sono una cosa che sta bene in mezzo alle bestie.",
	},
	["cls.hunter.buff.w06.002"] = {
		"Così. Adesso sono {g:vestito|vestita} come si deve per il selvatico.",
		"Bene, io sono a posto. Il resto della giornata può cominciare.",
	},
	["cls.hunter.buff.w06.003"] = {
		"muove le spalle una volta sola e si fa immobile, come un animale prima di decidere da che parte scappare.",
		"sposta il peso sulle punte dei piedi e lascia che la calma scenda giù, fino ai talloni.",
	},
	["cls.hunter.buff.w06.004"] = {
		"Gli aspetti sono un prestito. Ogni cacciatore lo impara presto: indossi il modo di muoversi di una bestia, non lo possiedi mai.",
		"Un passo preso in prestito, uno sguardo preso in prestito. Li restituisco ogni volta, e ogni volta mi vengono riprestati.",
	},
	["cls.hunter.buff.w06.005"] = {
		"Mi sento un po' più bestia di un minuto fa. Lo scopo è proprio questo.",
		"Meno persona, più creatura. Solo per un po'.",
	},
	["cls.hunter.buff.w06.006"] = {
		"Strada lunga, piedi leggeri. Mangiamoci un po' di distanza.",
		"Bene. Adesso è la strada che deve starmi dietro.",
		"Al primo colpo finirei a inciampare per tutto il sentiero, quindi niente colpi.",
	},
	["cls.hunter.buff.w06.007"] = {
		"Gambe svelte e guardia a zero. Un ottimo modo per viaggiare, e un pessimo modo per farsi trovare.",
		"Velocità pagata con la guardia. Un prezzo giusto, finché lungo il sentiero non aspetta nessuno.",
	},
	["cls.hunter.buff.w06.008"] = {
		"Lo sguardo del falco: tutto quel che è lontano si fa d'un tratto abbastanza vicino da contare.",
		"L'occhio si fa sottile come una punta. Più avanti, qualcosa non si è ancora accorto di me. Bene.",
	},
	["cls.hunter.buff.w06.009"] = {
		"Occhi di falco. Troviamo qualcosa che valga la pena guardare.",
		"Vista acuta, mano ferma. Adesso fammi vedere un bersaglio.",
	},
	["cls.hunter.buff.w06.010"] = {
		"Piedi agili. Che colpiscano pure l'aria quanto vogliono.",
		"Abbassarsi, scartare, sorridere. Tutta la filosofia della scimmia, e non è malvagia.",
	},
	["cls.hunter.buff.w06.011"] = {
		"Il passo del branco, per chiunque cammini con me. Anche se oggi, magari, ci sono solo io.",
		"Piedi svelti per chi mi sta vicino. Una strada lunga si accorcia, quando nessuno resta indietro.",
	},
	["cls.hunter.buff.w06.012"] = {
		"alza il mento e inspira, e per un istante dagli occhi si affaccia qualcosa di più selvatico.",
		"tace, e cambia tutto il modo di stare in piedi: più basso, più pronto, meno da viandante e più da cacciatore.",
	},
	["cls.hunter.buff.w06.013"] = {
		"Imparato piano, richiamato in un istante. È questo che compra l'esercizio.",
		"La prima volta sembrava un cappotto della taglia sbagliata. Adesso quasi non mi accorgo di indossarlo.",
	},
	["cls.hunter.buff.w06.014"] = {
		"Bene. Qualunque cosa venga dopo, ci sono già dentro.",
		"Può andare. Avanti, strada, fammi vedere cos'hai.",
	},
	["cls.hunter.buff.w06.015"] = {
		"Uno studioso la chiamerebbe sintonia. Io lo chiamo ricordarmi che sono un animale anch'io.",
		"Niente da leggere, niente da recitare. Solo un modo di stare al mondo che il selvatico ha insegnato per primo.",
	},
	["cls.hunter.buff.w06.016"] = {
		"controlla le munizioni, poi le cinghie dello zaino, e annuisce a nessuno in particolare.",
		"sistema l'arma sulla schiena finché non sta proprio come deve.",
	},
	["cls.hunter.buff.w06.017"] = {
		"Silenzio prima del lavoro. Se potessi tenere una sola parte della caccia, terrei questa.",
		"Ancora nessuna fretta. Solo il corpo che si accorda, corda dopo corda.",
	},
	["cls.hunter.buff.w06.018"] = {
		"Che bello. Come stirarsi dopo una lunga dormita, ma con più mordente.",
		"Ah, così va meglio. Tutti i sensi sull'attenti.",
		"Eccolo. Il mondo si fa un po' più rumoroso e un po' più nitido.",
	},
	["cls.hunter.buff.w06.019"] = {
		"parte d'un tratto con un'andatura lunga e sciolta, più veloce di quanto camminare dovrebbe permettere.",
		"prende un passo facile e impaziente, e il terreno comincia a scorrere più in fretta.",
	},
	["cls.hunter.farewell.w06.001"] = {
		"Io vado. Tieni d'occhio il limitare del bosco, e stai sottovento ai guai.",
		"Addio. Se per strada non senti proprio niente alle tue spalle, potrei essere io.",
		"È ora che vada. Cammina piano, e la natura forse ti lascerà passare.",
	},
	["cls.hunter.greet.w06.001"] = {
		"Salve. Ti ho sentito avvicinare, e più piano della maggior parte della gente.",
		"Salute. Non badare se controllo da dove tira l'aria: è un'abitudine.",
	},
	["cls.hunter.greet.w06.002"] = {
		"Salve. Se lo sguardo mi scappa altrove, non prenderla male. Non sta mai fermo.",
		"Ti saluto. Scusa se non mi avvicino troppo: ho l'abitudine di tenere un po' di distanza.",
	},
	["cls.hunter.heal.w06.001"] = {
		"avvolge stretta la benda attorno alla ferita, stringe il nodo coi denti e mette alla prova il braccio.",
		"fascia il taglio con una mano sola, con la rapidità di chi è abituato a pulire la selvaggina.",
	},
	["cls.hunter.heal.w06.002"] = {
		"Pulire, fasciare, dimenticare. Un cacciatore non può permettersi una ferita che chiede attenzione tutto il giorno.",
		"Un animale ferito morde la mano che lo fascia. A me va meglio: devo sopportare soltanto me.",
	},
	["cls.hunter.heal.w06.003"] = {
		"Su, non muoverti. Ancora un giro. Fatto.",
		"Non è bello da vedere. Terrà finché non trovo qualcosa di meglio del lino.",
		"Primo soccorso, lo chiamano. Ultima spiaggia, direi io.",
	},
	["cls.hunter.heal.w06.004"] = {
		"Con una benda in mano è l'unico momento in cui il selvatico mi lascia essere {g:lento|lenta}.",
		"Mentre fascio la ferita sento di nuovo tutto: i piccoli rumori attorno, il cuore che rallenta.",
	},
	["cls.hunter.heal.w06.005"] = {
		"Alla salute. Alle gambe che funzionano.",
		"Salute a me. E adesso, di nuovo al lavoro.",
		"Un sorso e il dolore fa un passo indietro. Bene.",
	},
	["cls.hunter.heal.w06.006"] = {
		"Un alchimista ci ha guadagnato e io mi sono {g:ripreso|ripresa} la pelle. Scambio onesto.",
		"Rossa, dolce, e sparita in un sorso. Le cose migliori della strada di solito sono così.",
	},
	["cls.hunter.heal.w06.007"] = {
		"Una pietra di stregone, spezzata nel pugno. Non chiedo come sia stata fatta. Funziona, e il discorso finisce lì.",
		"Verdastra, appena tiepida, vagamente sbagliata. Però mi rimette in piedi.",
		"Il mestiere oscuro di qualcun altro, e la mia pelle ricucita. Col selvatico ho fatto patti più strani.",
	},
	["cls.hunter.heal.w06.008"] = {
		"Non avrei mai detto che avrei ringraziato uno stregone. Non ad alta voce, almeno.",
		"Puzza di zolfo. Funziona a meraviglia.",
	},
	["cls.hunter.heal.w06.009"] = {
		"si prende un momento per rimettersi, con lo sguardo che non lascia mai del tutto la strada davanti.",
		"si siede sui talloni mentre il dolore si allenta, già in cerca della prossima traccia.",
	},
	["cls.hunter.heal.w06.010"] = {
		"Le ferite rallentano prima i piedi, poi l'occhio. Questa non la lascio arrivare all'occhio.",
		"Si rattoppa il cacciatore, e la caccia continua. A questo serve rimettersi in sesto.",
		"Il segreto è curarsi prima che il dolore diventi un'abitudine.",
	},
	["cls.hunter.heal.w06.011"] = {
		"La bestia al mio fianco annusa la ferita, poi annusa me, e sembra decidere che sopravvivrò.",
		"Mentre mi rimetto in sesto, la bestia monta la guardia. Qualcuno deve pur farlo.",
	},
	["cls.hunter.levelup.w06.001"] = {
		"Prima di un tiro il respiro si calma più in fretta, adesso. Non è poco: dalla distanza, è tutto.",
		"La mira regge un battito più di prima. Un battito è tanto tempo, là fuori.",
	},
	["cls.hunter.levelup.w06.002"] = {
		"Un po' meglio di prima. La preda non lo sa ancora.",
		"Un po' più in gamba di un'ora fa. Spargete la voce. Anzi, no.",
	},
	["cls.hunter.levelup.w06.003"] = {
		"prende un respiro lento e punta l'arma verso un punto lontano, tenendo la mira un po' più a lungo di prima, solo per sentirlo.",
		"socchiude gli occhi verso qualcosa di lontano, come se la distanza si fosse accorciata di qualche passo.",
	},
	["cls.hunter.lowhp.w06.001"] = {
		"Se resta così vicino, non posso tirare. Colpisci, arretra, colpisci. Qualunque cosa pur di avere spazio.",
		"Troppo vicino non è un posto per me. Fatti spazio, o fattene una ragione.",
		"Il posto peggiore per chi caccia: a portata di mano, fuori portata di tiro.",
	},
	["cls.hunter.lowhp.w06.002"] = {
		"È ora di fingermi {g:morto|morta}. Ho fatto pratica con la faccia.",
		"Se cado, non crederci. Almeno non subito.",
		"Giù, in modo molto convincente. Speriamo che sia solo recitazione.",
	},
	["cls.hunter.lowhp.w06.003"] = {
		"Cadi, abbandonati, smetti di respirare. Lascia che perda interesse. È un trucco vecchio perché funziona.",
		"Resta immobile e lascia che creda di aver vinto. Poi alzati e dagli torto.",
		"Cadi, e per un momento non essere niente. Il nemico se ne va; chi caccia si rialza.",
	},
	["cls.hunter.lowhp.w06.004"] = {
		"indietreggia con il sangue sulla manica, continuando a tirare, ogni passo indietro pagato con un colpo.",
		"cede terreno un passo alla volta, {g:ferito|ferita} ma scegliendo ancora dove posare ogni piede.",
		"ripiega a passi corti e testardi, sanguinando, senza mai lasciar scendere l'arma sotto il petto del nemico.",
	},
	["cls.hunter.lowhp.w06.005"] = {
		"Toglimelo di dosso! Adesso, adesso!",
		"Addosso, addosso! Tiralo via da me!",
		"Aiutami! Affonda i denti, presto!",
	},
	["cls.hunter.lowhp.w06.006"] = {
		"Se cado, continuerà a combattere senza di me. Resisti. Resisti, almeno per questo.",
		"Le stiamo prendendo, io e il mio compagno. A uno dei due deve venire un'idea, e non toccherà a quello con i denti.",
	},
	["cls.hunter.lowhp.w06.007"] = {
		"L'aspetto della scimmia, presto. Che colpisca l'aria per un po'.",
		"Abbassati, scarta, schiva. La scimmia questo gioco lo conosce meglio di me.",
		"È il momento di essere sfuggenti. Qualunque cosa colpisca, che sia dove stavo prima.",
	},
	["cls.hunter.lowhp.w06.008"] = {
		"La mira se ne va. Quello che resta nella borsa deve valere.",
		"Le mani tremano, adesso. Meno colpi, allora, ma migliori.",
		"Bordi sfocati dappertutto. Scegli la sagoma più grande e fidati.",
	},
	["cls.hunter.lowhp.w06.009"] = {
		"Mi hai {g:ferito|ferita}. Ora non ho più niente da risparmiare.",
		"Va bene. Hai fatto sangue. Ora guarda cosa fa {g:un cacciatore messo|una cacciatrice messa} all'angolo.",
		"{g:Ferito|Ferita} e con le spalle al muro. Non hai idea di cosa hai svegliato.",
	},
	["cls.hunter.lowhp.w06.010"] = {
		"stringe i denti finché la mira non smette di tremare, e tira lo stesso.",
		"sbatte forte le palpebre per schiarirsi la vista, tira un lungo respiro e mette il colpo seguente esattamente dove deve andare.",
		"ondeggia, ritrova l'equilibrio e allinea il tiro con la calma di chi non sentisse alcun dolore.",
	},
	["cls.hunter.lowhp.w06.011"] = {
		"Scappare non funziona. Il ghepardo cede appena mi colpiscono. Combatti fino in fondo.",
		"Questo non si semina. Basta un colpo e la velocità del ghepardo svanisce. Fermati e tira.",
	},
	["cls.hunter.lowhp.w06.012"] = {
		"Non ancora. Ho ancora munizioni, quindi ho ancora voce in capitolo.",
		"Finché c'è un colpo nella borsa, non è finita.",
		"{g:Ferito|Ferita}, sì. Senza munizioni? Non ancora. Problema tuo, allora.",
	},
	["cls.hunter.lowhp.w06.013"] = {
		"Sono {g:ferito|ferita} gravemente! Qualcuno me lo tolga di dosso, così vicino non posso tirare!",
		"Aiuto! Ce l'ho addosso e non sono in condizioni per il corpo a corpo!",
	},
	["cls.hunter.lowhp.w06.014"] = {
		"si abbassa e scarta di lato, cercando di mettere qualcosa, qualunque cosa, fra sé e il nemico.",
		"barcolla indietro fuori portata, sanguinante e col fiato corto, gli occhi in cerca di terreno libero.",
		"si toglie di mezzo inciampando, una mano premuta sulla ferita, misurando già la distanza per un tiro decente.",
	},
	["cls.hunter.lowhp.w06.015"] = {
		"Bene. Direi che di botte ne ho prese abbastanza.",
		"La mia parte di colpi l'ho avuta. Eccoti il resto delle mie munizioni.",
		"Basta. Sono {g:venuto|venuta} qui a cacciare, non a fare da trofeo.",
	},
	["cls.hunter.muse.w06.001"] = {
		"Il momento lo sceglie la preda. Io scelgo soltanto di esserci ancora quando arriva.",
		"Il mestiere è quasi tutto attesa. Il tiro è il pezzetto finale, quello su cui la gente racconta storie.",
		"Tirare lo sa fare chiunque. È restare lì per tutta l'ora che lo precede a dare valore al colpo.",
	},
	["cls.hunter.muse.w06.002"] = {
		"Il colpo è deciso molto prima che parta. L'ultimo gesto è solo lasciar andare ciò che so già.",
		"Quando il dito si muove, nella mia testa il tiro è già concluso. Il resto è il mondo che si mette in pari.",
		"La mira è una domanda, e la mano risponde. Quando la risposta è giusta, la sento prima di vederla.",
	},
	["cls.hunter.muse.w06.003"] = {
		"Anche sotto un tetto mi sorprendo a controllare da che parte si muove l'aria. L'abitudine è sopravvissuta di molto al bisogno.",
		"In taverna, in fila alla banca, ovunque: una parte di me sta ancora calcolando chi è sottovento a chi.",
		"Potrei essere {g:seduto|seduta} a un banchetto e saprei comunque da dove arriva lo spiffero. Al resto della tavola non importa niente.",
	},
	["cls.hunter.muse.w06.004"] = {
		"Dormo come dorme la natura: abbastanza a fondo da riposare, mai tanto da non sentire un rametto che si spezza.",
		"Quando il resto di me dorme, un orecchio resta sveglio. Non ricordo di averglielo insegnato.",
	},
	["cls.hunter.muse.w06.005"] = {
		"Le dita con cui tiro sono diventate dure come il corno. Una stoffa fine non la sento più, e non mi manca.",
		"Calli dove l'arma si appoggia, calli dove rincula o tira. Le mie mani tengono il conto di ogni ora di esercizio.",
		"Le mani morbide non colpiscono niente. Le mie hanno smesso di esserlo parecchio tempo fa, e da allora servono di più.",
	},
	["cls.hunter.muse.w06.006"] = {
		"Cacciare è soprattutto restare immobili mentre ogni parte di te implora di muoversi. Il corpo non è mai davvero d'accordo: si arrende e basta.",
		"Immobile. Ancora un po'. Il difficile non è mai stato mirare, ma aspettare con un prurito sul naso.",
		"Anche l'immobilità è un muscolo. Alla fine di un buon inseguimento il mio fa male, ed è così che so che ha funzionato.",
	},
	["cls.hunter.muse.w06.007"] = {
		"Un colpo andato a segno mi dice che avevo ragione o che ho avuto fortuna, e mai quale delle due. Un colpo mancato mi dice esattamente dove ho sbagliato.",
		"Dai tiri che vanno a segno non imparo niente. Quelli che finiscono larghi sono i veri maestri, e non sono mai gentili.",
	},
	["cls.hunter.muse.w06.008"] = {
		"Leggo la mia pista spesso quanto quella degli altri. Chiunque mi segua la sta leggendo anche lui.",
		"Ogni passo che faccio scrive qualcosa sul terreno. Cerco di scrivere il meno possibile, e niente che valga la pena leggere.",
		"Il terreno tiene un diario di chiunque lo attraversi. Preferisco che la mia pagina resti quasi bianca.",
	},
	["cls.hunter.muse.w06.009"] = {
		"La carne che ho abbattuto io sa di tutta la giornata che è costata: l'inseguimento, il freddo, l'attesa. Quella comprata non sa di niente.",
		"Un pezzo semplice che ho seguito, preso e portato da me vale più di qualunque piatto di cucina. La differenza sono le ore che ci stanno dentro.",
	},
	["cls.hunter.muse.w06.010"] = {
		"Mai stare sopravvento a ciò che cacci. Il tuo odore ti cammina davanti e ti annuncia.",
		"Prima di fermarti da qualche parte, guarda da dove arriva l'aria. Ogni naso nel raggio di un miglio può leggerti.",
		"La prima cosa, in qualunque caccia: capire dove va il vento. Poi andare da un'altra parte.",
	},
	["cls.hunter.muse.w06.011"] = {
		"Della gente guardo i piedi prima della faccia. Le facce mentono. I piedi puntano dove si vuole andare.",
		"Prima i piedi, poi le mani, poi la faccia. Quasi tutti si leggono a vicenda nell'ordine sbagliato.",
		"Un sorriso mi dice cosa qualcuno vuole che io pensi. Il suo peso, e su quale piede lo tiene, mi dice cosa farà.",
	},
	["cls.hunter.muse.w06.012"] = {
		"Non riesco a guardare niente senza trovarne il punto debole: uno steccato, una porta, il modo in cui uno sta in piedi. È un'abitudine difficile da mettere giù.",
		"Di ogni creatura vedo prima il varco. Anche di quelle amiche. Certi giorni, soprattutto di quelle.",
	},
	["cls.hunter.muse.w06.013"] = {
		"Dammi un tetto e quattro mura per più di un giorno e comincio a camminare avanti e indietro come qualcosa in gabbia.",
		"Le città vanno bene per una sosta. Il secondo giorno sto già contando le porte e guardando la strada che porta fuori.",
		"I muri sono utili. Tengono fuori il tempo brutto e il mondo, ed è proprio la seconda cosa che non mi va giù.",
	},
	["cls.hunter.muse.w06.014"] = {
		"Due cacciatori possono dividere un giorno intero e dieci parole, e tutti e due lo chiameranno buona compagnia.",
		"Fra quelli del mio mestiere il silenzio non è maleducazione. È la forma più alta di buone maniere.",
		"I cacciatori si salutano con un cenno da una parte all'altra di una radura, e in quel cenno c'è un'intera conversazione.",
	},
	["cls.hunter.muse.w06.015"] = {
		"La fame fa tirare troppo presto. Prima mangia, poi caccia: il consiglio più vecchio del mestiere, e il più ignorato.",
		"Uno stomaco vuoto non ha pazienza, e la pazienza è tutto il lavoro. Così mangio, anche quando preferirei rimettermi in moto.",
		"Ho visto uno stomaco che brontolava mandare all'aria un appostamento perfetto. Il mio resta pieno, qualunque altra cosa venga a mancare.",
	},
	["cls.hunter.muse.w06.016"] = {
		"Da lontano è solo un bersaglio, una sagoma da trapassare con un colpo. È avvicinarsi dopo che la fa tornare una vita.",
		"La distanza rende tutto facile. Poi la percorro, e facile non è più.",
		"Dalla distanza non c'è un volto, solo il bersaglio. Il volto mi aspetta in fondo al cammino, ogni volta.",
	},
	["cls.hunter.muse.w06.017"] = {
		"C'è selvaggina che non ho mai preso. Ci penso con più affetto che a tutto quello che ho abbattuto.",
		"Certe piste mi si sono raffreddate fra le mani e non si sono più scaldate. Mi piace pensare che chi le ha lasciate sia ancora là fuori, sempre più vecchio e più furbo.",
		"Quelle che mi sono sfuggite sono le uniche di cui parlo. Una parte di me è contenta che sia andata così.",
	},
	["cls.hunter.muse.w06.018"] = {
		"Prima di mirare, bado ai piedi. Un tiro è saldo solo quanto il terreno sotto il tallone.",
		"Rovina più tiri un appoggio sbagliato che una vista scarsa. Prima sistemo i piedi, e la mira viene dietro.",
	},
	["cls.hunter.muse.w06.019"] = {
		"Una buona trappola è pazienza che mi lascio alle spalle, e che aspetta al posto mio mentre sono altrove.",
		"Le trappole mi piacciono. Sono l'unica parte di me che può stare in due posti nello stesso momento.",
		"La piazzi, la nascondi, te ne vai. La trappola è l'unica compagna di caccia che non si annoia mai.",
	},
	["cls.hunter.muse.w06.020"] = {
		"Stare a terra e lasciare che mi credano {g:morto|morta}. La natura insegna questo trucco da sempre; al mio orgoglio ci è voluto un po' di più per impararlo.",
		"Fingersi morti è la fuga più vecchia che esista. Costa solo un po' di dignità, e la dignità guarisce prima di una ferita.",
	},
	["cls.hunter.muse.w06.021"] = {
		"A volte mando lo sguardo molto più lontano di dove potrebbero arrivare i piedi. Il mondo non si rimpicciolisce, così. Si fa solo più silenzioso.",
		"Vedere così lontano è un dono strano. Laggiù tutto è nitido e vicino, e niente sa che lo sto guardando.",
	},
	["cls.hunter.muse.w06.022"] = {
		"Sono tutti bravi cacciatori, finché la preda non si gira.",
		"È facile parlare di caccia. Meno facile quando la caccia comincia a guardarti negli occhi.",
		"Buffo quanto diventa coraggiosa la gente a parlar di caccia, quando niente la sta guardando.",
	},
	["cls.hunter.muse.w06.023"] = {
		"Il venditore di munizioni ormai mi chiama per nome. Non so se sia amicizia o un avvertimento.",
		"Ogni mercante che vende munizioni mi saluta come una vecchia conoscenza. Chissà perché.",
		"Sono l'unica persona che il mercante di munizioni saluta sempre con un gran sorriso. Fatevi due conti.",
	},
	["cls.hunter.muse.w06.024"] = {
		"Arco o fucile, fucile o arco. I cacciatori ne discutono per ore, e la preda non ha mai espresso un parere.",
		"Mi chiedono cosa sia meglio, corda o polvere. Quello che conosci meglio, rispondo. Non piace a nessuno.",
		"Quelli della corda e quelli della polvere non andranno mai d'accordo. Intanto la preda si fa i fatti suoi.",
	},
	["cls.hunter.muse.w06.025"] = {
		"Le mie ginocchia si ricordano ogni ora trascorsa dietro una roccia, piegate in due. Me lo fanno presente ogni volta che mi alzo.",
		"Metà di questo mestiere si fa accucciandosi. L'altra metà sta nel rialzarsi dopo, piano, sbuffando.",
	},
	["cls.hunter.muse.w06.026"] = {
		"Il sapone profumato è per chi vuole farsi trovare. Io mi lavo con acqua e basta, e non so di niente: è proprio quello lo scopo.",
		"Profumo, fumo di pipa, cuoio nuovo: tutto ciò che ha un odore resta a casa quando vado dietro a qualcosa che ha naso.",
		"La natura ti sente addosso la città per giorni. Cerco di togliermela di dosso prima di andare a cercare qualcosa di timido.",
	},
	["cls.hunter.muse.w06.027"] = {
		"Io non mi perdo. Divento per un attimo {g:incerto|incerta}, poi un ruscello o un pendio mi rimettono sulla strada.",
		"Perdersi è una parola grossa. Faccio solo il giro lungo, mentre il terreno si spiega.",
		"Non mi sono mai {g:perso|persa}. Ogni tanto, questo sì, mi sono {g:ritrovato|ritrovata} per bene in un posto inaspettato.",
	},
	["cls.hunter.muse.w06.028"] = {
		"Una creatura ferita che scappa perseguita un cacciatore più a lungo di qualunque scontro. Le era dovuta una fine pulita.",
		"Il tiro che ferisce soltanto è quello che un cacciatore si porta dietro. Là fuori qualcosa soffre perché una mano non era ferma.",
	},
	["cls.hunter.muse.w06.029"] = {
		"Tengo il conto dell'anno da quello che fanno gli animali: la muta, gli accoppiamenti, l'ingrasso, le tane. Il calendario appeso al muro è di qualcun altro.",
		"In città si contano i giorni. Io conto le stagioni dalla natura: quando nascono i piccoli, quando si spostano le mandrie, quando tutto comincia a mangiare come se arrivasse l'inverno.",
		"Una stagione cambia negli animali prima che nell'aria. Loro lo sanno per primi; io lo imparo da loro.",
	},
	["cls.hunter.muse.w06.030"] = {
		"Trova l'acqua e hai trovato tutto ciò che vive. Ogni pista, prima o poi, piega verso di lei.",
		"Prima l'acqua. Qualunque cosa io stia cercando deve bere, e berrà, e io sarò lì.",
	},
	["cls.hunter.muse.w06.031"] = {
		"Ogni creatura ha un posto dove si sente al sicuro. Trovalo e l'hai capita. Con le persone è uguale.",
		"Scopri dove va qualcosa quando ha paura, e ne saprai più di quanto ne sappia da sé.",
		"Chiediti dove scappa una creatura quando ha paura e le avrai fatto l'unica domanda che conti.",
	},
	["cls.hunter.muse.w06.032"] = {
		"Un giorno qualcosa là fuori sarà più svelto di me, o più furbo, o solo più fortunato. Spero che lo faccia in modo pulito. Io ci ho sempre provato.",
		"Ogni cacciatore finisce preda di qualcuno, non fosse che degli anni. Vorrei andarmene come ho cacciato: senza storie e senza sprechi.",
	},
	["cls.hunter.muse.w06.033"] = {
		"Nell'istante in cui parte, il colpo appartiene al mondo. La distanza e la sorte dicono la loro, e io sto solo a guardare.",
		"Una volta in volo, quello che voglio non conta più. È la parte onesta del mestiere: non si può riprendere indietro.",
		"Un colpo in aria non è più mio. La mia parte l'ho fatta, adesso il mondo fa la sua.",
	},
	["cls.hunter.muse.w06.034"] = {
		"Il mio occhio va prima al movimento, poi al colore, poi alla forma. Quasi tutti fanno il contrario, e non vedono niente finché non ce l'hanno addosso.",
		"Smetti di cercare la cosa. Cerca ciò che si muove nel modo sbagliato. È la prima lezione, e la sto ancora imparando.",
		"Una forma si può nascondere. Un colore si può confondere. Il movimento invece tradisce tutto, prima o poi, e il mio occhio lo aspetta.",
	},
	["cls.hunter.muse.w06.035"] = {
		"La natura non mi deve niente. Ogni pasto che le prendo è un favore, e cerco di ricordarmi di esserne {g:grato|grata}.",
		"Niente là fuori è stato messo lì per me. Qualunque cosa prenda, la tolgo a qualcosa che ci aveva fatto i suoi progetti.",
	},
	["cls.hunter.muse.w06.036"] = {
		"Non è per l'uccisione che esco. È per l'ora prima, quando il mondo intero si restringe a un pezzo di terreno e a un respiro.",
		"Quando seguo bene una pista, tutto il resto sparisce: debiti, dolori, progetti. C'è solo il passo successivo e quello che c'è in fondo.",
		"A un certo punto di un lungo inseguimento il mondo si fa stretto e luminoso, e io sono solo occhi e respiro. Farei molta strada per questo.",
	},
	["cls.hunter.muse.w06.037"] = {
		"I cacciatori migliori che ho conosciuto erano le persone più silenziose in qualunque stanza. Quelli chiassosi li ho incontrati una volta sola.",
		"Chi chiacchiera non dura, in questo mestiere. Chi tiene la bocca chiusa tiene le orecchie aperte, e campa.",
	},
	["cls.hunter.muse.w06.038"] = {
		"Vuoi vedere la natura selvaggia? Siediti e smetti di parlare. Verrà lei da te.",
		"Smetti di inseguirla. Resta in silenzio abbastanza a lungo e la natura ti viene vicino a vedere che cosa sei.",
		"La natura non è timida. Aspetta solo che tu la smetta di fare chiasso.",
	},
	["cls.hunter.muse.w06.039"] = {
		"I piedi pesanti sono un campanaccio al collo. Ogni creatura nel raggio di cento passi ti sente arrivare.",
		"Cammina come se il terreno dormisse e tu non avessi voglia di svegliarlo.",
	},
	["cls.hunter.muse.w06.040"] = {
		"Mi chiedono se là fuori mi manca la vita di città. Io chiedo quale parte: la puzza o il rumore.",
		"La città è un bel posto. Solo che ci sta troppa gente, e parla tutta insieme.",
		"Le città mi piacciono. Soprattutto viste dall'alto di una collina, da molto lontano.",
	},
	["cls.hunter.muse.w06.041"] = {
		"So seguire una pista per un giorno intero sulla roccia nuda, e non riesco ancora a trovare l'altro guanto.",
		"Dammi una pista fredda e ne trovo la fine. Dammi il mio zaino e sono un disastro.",
	},
	["cls.hunter.muse.w06.042"] = {
		"La pazienza costa meno delle munizioni e dura di più. Spendi prima quella.",
		"Prima di sprecare un colpo, spreca un po' di tempo. Il tempo è gratis, e spesso fa il lavoro da solo.",
	},
	["cls.hunter.muse.w06.043"] = {
		"Non odio ciò che caccio. L'odio fa tremare la mano, e una mano che trema sbaglia.",
		"La rabbia è per chi combatte da vicino. Dalla distanza, solo una testa fredda colpisce qualcosa.",
		"Il caratteraccio tienilo per la taverna. A caccia ti rovina solo la mira.",
	},
	["cls.hunter.muse.w06.044"] = {
		"controlla le munizioni con un gesto rapido, soppesa quel che resta e sembra fare un conto a mente.",
		"conta le munizioni rimaste solo al tatto, senza abbassare lo sguardo nemmeno una volta.",
		"passa il pollice sulle munizioni, aggrotta la fronte per un suo calcolo privato e lascia perdere.",
	},
	["cls.hunter.muse.w06.045"] = {
		"si accovaccia a studiare un pezzo di terreno, lo sfiora appena e si rialza con un piccolo cenno, come se avesse risposto a una domanda.",
		"posa un ginocchio a terra, passa la punta di un dito sul terriccio e aggrotta la fronte davanti a ciò che dice.",
		"si china su un segno nella terra, lo legge a lungo e si raddrizza senza una parola.",
	},
	["cls.hunter.muse.w06.046"] = {
		"si fa di colpo del tutto immobile, in ascolto, poi lascia andare la tensione mentre quella cosa, qualunque fosse, passa oltre.",
		"alza una mano a chiedere un silenzio che nessuno ha domandato, aspetta il tempo di un lungo respiro, poi la riabbassa.",
	},
	["cls.hunter.muse.w06.047"] = {
		"annusa l'aria, aggrotta la fronte e si sposta di qualche passo di lato per un motivo che nessun altro saprebbe dire.",
		"saggia l'aria con una lunga annusata e va a mettersi, senza dire niente, dalla parte opposta rispetto a tutti.",
	},
	["cls.hunter.muse.w06.048"] = {
		"controlla l'arma da un capo all'altro con tocchi rapidi e abitudinari, come un altro si tasterebbe le tasche.",
		"prende la mira lungo l'arma verso niente di preciso, la abbassa e annuisce tra sé.",
		"si rigira l'arma fra le mani cercando un difetto che non c'è, e non trovarlo sembra un sollievo.",
	},
	["cls.hunter.muse.w06.049"] = {
		"allunga una mano senza guardare e trova la sua bestia esattamente dove dovrebbe essere.",
		"lancia un'occhiata alla bestia che l'accompagna, come chi controlla che la porta sia ancora sprangata, e distoglie lo sguardo.",
	},
	["cls.hunter.muse.w06.050"] = {
		"La mia bestia sente i guai un lungo respiro prima di me. Ho imparato a guardare lei invece degli alberi.",
		"Quando la bestia al mio fianco si immobilizza, mi immobilizzo anch'io. Finora non ha mai sbagliato, e di me non posso dirlo.",
		"Ha sensi migliori dei miei in tutto ciò che conta. Io porto la mira; lei porta l'allarme.",
	},
	["cls.hunter.muse.w06.051"] = {
		"La bestia mangia prima di me. Non per gentilezza: una bestia sazia veglia sul mio sonno, una affamata sulla propria pancia.",
		"La prima parte va alla bestia. La gente pensa che sia sentimento. È semplice buon senso: lei sta di guardia mentre riposo.",
	},
	["cls.hunter.muse.w06.052"] = {
		"Alla mia bestia non importa cosa pensa di me la gente in città, quanto devo o cosa ho fatto. Solo se torno.",
		"Per la bestia non sono un nome né una reputazione. Sono chi torna sempre. È più facile essere all'altezza di questo.",
	},
	["cls.hunter.muse.w06.053"] = {
		"La bestia resta con me solo perché lo sceglie. Ogni giorno che resta lo prendo come una risposta.",
		"Nessuna catena, nessuna gabbia. Potrebbe andarsene quando vuole, e non lo fa. Cerco di meritarmelo.",
		"Addomesticare non ha mai voluto dire spezzare. Sono state due creature che hanno deciso, con cautela, di fare la stessa strada per un po'.",
	},
	["cls.hunter.muse.w06.054"] = {
		"Non mi segue. Siamo solo d'accordo su dove andare, quasi sempre.",
		"Non badare alla bestia. Ha deciso che probabilmente non sei un pericolo. Probabilmente.",
	},
	["cls.hunter.muse.w06.055"] = {
		"Per il cibo, per i soldi, per chi me lo chiede. Mai per il piacere, mi dico. Certi giorni ne sono meno {g:sicuro|sicura}.",
		"Mi piacerebbe dire che caccio solo per bisogno. Ma all'inizio di una pista c'è un fremito che col bisogno non ha niente a che fare.",
	},
	["cls.hunter.muse.w06.056"] = {
		"Oltre l'ultimo steccato e l'ultimo comignolo, qualcosa nel petto mi si scioglie. Non ho mai saputo spiegarlo a chi vive fra quattro mura.",
		"Su ogni strada che esce da una città c'è un punto in cui le spalle mi si abbassano. Non saprei dire dove sia. Le spalle lo sanno sempre.",
		"C'è chi si sente a casa dietro una porta chiusa a chiave. La mia casa non ha porte: comincia dove finisce la strada.",
	},
	["cls.hunter.muse.w06.057"] = {
		"Nella natura distinguo una dozzina di suoni a occhi chiusi. Al mercato qualcuno grida il mio nome e non lo sento per niente.",
		"Sento un ramoscello spostarsi a cinquanta passi. Un amico che mi chiama da un capo all'altro di una piazza piena, mai.",
	},
	["cls.hunter.muse.w06.058"] = {
		"Bordi netti: fresca. Bordi che si sbriciolano: di ieri. Acqua ferma nell'impronta: ancora più vecchia. Il terreno tiene il tempo meglio di qualunque orologio.",
		"Un'impronta dice il quando oltre al chi. Più netto è il bordo, più vicino è chi l'ha lasciata.",
		"Foglie schiacciate dentro un'impronta sono cadute dopo; un'impronta sopra le foglie è venuta dopo di loro. L'ordine delle cose è scritto proprio lì.",
	},
	["cls.hunter.muse.w06.059"] = {
		"Quando mi sento {g:osservato|osservata} non mi giro di scatto: è quello che fa la preda. Penso a dove mi metterei se fossi io a osservare, e guardo lì.",
		"Voltarsi a guardare è l'errore della preda. Mi chiedo qual è il punto migliore per spiare, ed è lì che saranno gli occhi.",
	},
	["cls.hunter.muse.w06.060"] = {
		"Prima che ci fossero città, re o monete, c'era qualcuno accucciato nell'erba ad aspettare. Mi piace far parte di qualcosa che c'era prima di tutto il resto.",
		"Ogni popolo di questo mondo ha cacciato prima di fare qualunque altra cosa. Quando prendo l'arma, mi metto in fondo a una fila lunghissima.",
	},
	["cls.hunter.muse.w06.061"] = {
		"I maestri dicono di tirare fra un battito e l'altro. Sembra un indovinello, finché un giorno non senti il vuoto.",
		"Fra un battito del cuore e il successivo c'è un piccolo silenzio. È lì che va il colpo.",
	},
	["cls.hunter.muse.w06.062"] = {
		"Ho più rispetto per i predatori là fuori che per molta gente armata. Prendono quello che serve e si fermano.",
		"Un predatore non uccide mai per la storia da raccontare dopo. Cerco di ricordarmelo quando mi viene voglia di vantarmi.",
		"I cacciatori della natura non sprecano e non si vantano. Nelle giornate buone, a me riesce una delle due.",
	},
	["cls.hunter.muse.w06.063"] = {
		"Quando lascio un posto cerco di lasciarlo come l'ho trovato. Chi passa dopo deve guardare bene per capire che ci sono {g:stato|stata}.",
		"Seppellire la cenere, spargere il giaciglio, lisciare il terreno. Un accampamento deve sparire alle mie spalle come un respiro trattenuto che si lascia andare.",
	},
	["cls.hunter.muse.w06.064"] = {
		"Stare in fondo a uno scontro ti insegna la gente. Vedi chi trasale, chi carica, e chi continua a voltarsi per controllare gli altri.",
		"Dal mio posto in una zuffa, dietro a tutti, imparo su chi mi sta davanti più di quanto me ne direbbe mai.",
		"Chi combatte davanti vede il nemico. Chi tira da dietro vede tutti quanti.",
	},
	["cls.hunter.muse.w06.065"] = {
		"Non tengo trofei. Quello che valeva la pena ricordare me lo ricordo, il resto prenderebbe solo polvere su un muro.",
		"C'è chi appende teste ai muri. Io preferisco portarmi dietro la giornata stessa, che non pesa niente.",
		"Un trofeo dimostra soltanto che una volta è andata bene. L'abilità non si appende al muro.",
	},
	["cls.hunter.muse.w06.066"] = {
		"si stacca dalla manica un seme spinoso, lo studia e guarda nella direzione da cui deve provenire.",
		"nota una macchia di fango sullo stivale, la guarda storto come se avesse raccontato una bugia interessante, e la gratta via.",
	},
	["cls.hunter.muse.w06.067"] = {
		"sceglie un punto con qualcosa di solido alle spalle e una buona visuale davanti prima di fermarsi, per un'abitudine più vecchia del pensiero.",
		"registra con un'occhiata senza fretta ogni via d'entrata e d'uscita del posto.",
		"si sposta di un passo a sinistra per avere una visuale migliore, e solo allora sembra potersi rilassare.",
	},
	["cls.hunter.muse.w06.068"] = {
		"Misuro tutto a passi senza volerlo: una sala, un mercato, la distanza dal riparo più vicino.",
		"Trenta passi, quaranta, sessanta. La mia testa trasforma ogni stanza e ogni strada in un campo di tiro, che glielo chieda o no.",
	},
	["cls.hunter.muse.w06.069"] = {
		"Per quanto silenzioso sia un tiro, il mondo lo sente. Per un bel pezzo, tutto intorno si fa immobile, e se ne ricorda.",
		"Un colpo e tutto il pendio viene a sapere che c'è un cacciatore. Ecco il vero costo di un errore: non le munizioni, l'allarme.",
	},
	["cls.hunter.muse.w06.070"] = {
		"Anche quando non faccio niente scelgo bersagli: un nodo in un palo, un'insegna sopra una porta, un sasso su un muretto. Nella mia testa sono già stati colpiti cento volte.",
		"Gli occhi continuano ad allenarsi mentre le mani sono occupate in altro. Ogni bersaglio che incontro l'ho già preso.",
	},
	["cls.hunter.muse.w06.071"] = {
		"Chi cammina con me impara in fretta le regole. Niente canticchiare, niente tintinnii, e niente domande su quanto manca.",
		"La compagnia è gradita. Il rumore no. Sono le uniche condizioni.",
	},
	["cls.hunter.muse.w06.072"] = {
		"Olio per armi, cordino cerato, l'odore pungente della polvere: mi calmano come un focolare calma gli altri.",
		"C'è chi si rilassa con la pipa o con una canzone. Io mi siedo a curare l'arma, e l'odore dell'olio fa il resto.",
	},
	["cls.hunter.muse.w06.073"] = {
		"I cacciatori partono, e qualcuno non rientra. Nessuno ci scrive canzoni. La natura non sa che farsene delle canzoni.",
		"Una pista parte, e a volte nessuno la ripercorre verso casa. La natura tiene ciò che prende e non lo dice a nessuno.",
	},
	["cls.hunter.muse.w06.074"] = {
		"Riesco a prepararmi al buio, solo al tatto. Mi sono {g:esercitato|esercitata} finché le mani non hanno smesso di aver bisogno degli occhi.",
		"Ricaricare o incoccare, ormai è tutto nelle dita. Gli occhi restano liberi per l'unica cosa che conta: dove andrà il colpo.",
		"Mani che vanno sorvegliate sono mani lente. Le mie hanno imparato a lavorare da sole, così gli occhi restano sulla preda.",
	},
	["cls.hunter.pet_bond.w06.001"] = {
		"{pet} ha imparato a distinguere il mio passo da quello degli altri. Me ne accorgo solo adesso, e mi fa più piacere del dovuto.",
		"Adesso {pet} aspetta al bivio per vedere che strada prendo. Una piccolezza. Non è una piccolezza.",
		"Abbiamo delle abitudini, ormai, {pet} e io. È dalle abitudini che comincia un legame.",
	},
	["cls.hunter.pet_call.w06.001"] = {
		"{pet} arriva al trotto e mi dà una spinta alla mano. Va bene, va bene, sono {g:contento|contenta} anch'io.",
		"C'è {pet}, e la giornata ha già meno l'aria di un lavoro.",
	},
	["cls.hunter.pet_call.w06.002"] = {
		"Di nuovo in due. Il conto che preferisco.",
		"{pet} al mio fianco, e le probabilità si fanno più gentili.",
	},
	["cls.hunter.pet_call.w06.003"] = {
		"{pet} annusa l'aria, poi il terreno, poi le mie tasche. Almeno in quest'ordine.",
		"{pet} arriva e punta dritto alla borsa che ho alla cintura, in cerca di qualcosa da masticare. Priorità.",
	},
	["cls.hunter.pet_call.w06.004"] = {
		"Con {pet} fuori ho occhi anche dietro la schiena. Cambia il modo in cui cammino.",
		"{pet} prende il terreno vicino, io la distanza. Fra noi funziona così.",
	},
	["cls.hunter.pet_call.w06.005"] = {
		"Senza compagnia parlo tra me e me. Con {pet} qui, almeno qualcuno finge di ascoltare.",
		"Il silenzio era durato abbastanza. {pet} lo rompe solo respirandomi accanto.",
	},
	["cls.hunter.pet_call.w06.006"] = {
		"{pet} sobbalza ancora quando mi muovo troppo in fretta. Ci arriveremo.",
		"{pet} si tiene a un passo prudente da me. La fiducia è una pista, non una porta.",
	},
	["cls.hunter.pet_call.w06.007"] = {
		"{pet} ha cominciato a mettersi sempre dalla stessa parte. La sinistra. Ho smesso di discutere.",
		"{pet} adesso risponde al richiamo, quasi sempre. Quasi è la parola giusta per dove siamo arrivati.",
	},
	["cls.hunter.pet_call.w06.008"] = {
		"Non serve che guardi per sapere dov'è {pet}. Sento i passi, e sono quelli giusti.",
		"{pet} e io abbiamo cacciato abbastanza da dividerci le pause oltre agli inseguimenti.",
	},
	["cls.hunter.pet_call.w06.009"] = {
		"{pet}. Riconoscerei quel peso contro il ginocchio anche a occhi chiusi.",
		"Di nuovo insieme. Qualunque strada fosse senza {pet}, era una strada a metà.",
	},
	["cls.hunter.pet_call.w06.010"] = {
		"{pet} mi si avvicina strascicandosi come un bracciante che non ha visto la paga. Giusto. Rimedio subito.",
		"{pet} si siede a distanza e aspetta che io faccia ammenda.",
	},
	["cls.hunter.pet_call.w06.011"] = {
		"{pet} arriva a balzi, con un'aria tanto compiaciuta che mi chiedo cosa abbia combinato mentre non c'era.",
		"Oggi {pet} ha energia da vendere. Cercherò di non restare indietro.",
	},
	["cls.hunter.pet_call.w06.012"] = {
		"Cacciatore e bestia, il sodalizio più vecchio che ci sia. {pet} sembra saperlo meglio di qualunque libro.",
		"Prima che esistessero le città c'era questo: qualcuno con un'arma e un animale al fianco. {pet} e io teniamo viva l'usanza.",
	},
	["cls.hunter.pet_call.w06.013"] = {
		"{pet} si stira, sbadiglia, e mette bene in chiaro che stava facendo qualcosa.",
		"Interrompo qualunque cosa facciano le bestie quando non guardo, e {pet} mi perdona. Quasi del tutto.",
	},
	["cls.hunter.pet_call.w06.014"] = {
		"A me tocca pensare al cibo e alle ferite di {pet}. Al resto pensa la bestia. Credo che la metà facile sia toccata a me.",
		"{pet} è una mia responsabilità quanto l'arma che porto. Certi giorni anche di più.",
	},
	["cls.hunter.pet_call.w06.015"] = {
		"Chissà come, {pet} arriva sempre con l'aria di chi ha chiamato me e non il contrario.",
		"{pet} fa il suo ingresso. Io ho solo aperto la porta.",
	},
	["cls.hunter.pet_call.w06.016"] = {
		"Il riposo è finito e {pet} è qui. Ha fatto la sua parte: adesso tocca a me.",
		"{pet} c'è, io ci sono. Il resto è solo camminare.",
	},
	["cls.hunter.pet_call.w06.017"] = {
		"Stammi vicino, {pet}. Se ti allontani vengo a cercarti, e non piacerà a nessuno dei due.",
		"Al piede, {pet}. Insieme, o niente.",
	},
	["cls.hunter.pet_dismiss.w06.001"] = {
		"Va' a fare quello che fai di solito, {pet}. Insegui qualcosa di piccolo anche per me.",
		"Prenditi una pausa, {pet}. Un po' di tempo senza di me te lo sei guadagnato.",
	},
	["cls.hunter.pet_dismiss.w06.002"] = {
		"Senza {pet} i rumori attorno a me si risistemano. Torno a essere la cosa più rumorosa nei paraggi.",
		"Adesso si sentono i passi di una persona sola. Alle orecchie ci vuole un po' per crederci.",
	},
	["cls.hunter.pet_dismiss.w06.003"] = {
		"{pet} se ne va. Adesso tengo aperti tutti e due gli occhi: alle spalle non mi guarda più nessuno.",
		"Torno ad ascoltare da me. Con {pet} era facile dimenticare come si fa.",
	},
	["cls.hunter.pet_dismiss.w06.004"] = {
		"{pet} se ne va con dignità, il che è più di quanto riesca a me quasi sempre.",
		"{pet} non discute. Una dote rara, in un compagno di viaggio.",
	},
	["cls.hunter.pet_dismiss.w06.005"] = {
		"Va', {pet}. La prossima volta ci conosceremo un po' meglio.",
		"Riposa, {pet}. Siamo ancora estranei, ma meno di prima.",
	},
	["cls.hunter.pet_dismiss.w06.006"] = {
		"Lascio andare {pet}, e la mano cerca comunque la sua testa, per abitudine.",
		"Strano quanto in fretta {pet} cominci a mancarmi. Pochi passi, ed eccola, la mancanza.",
	},
	["cls.hunter.pet_dismiss.w06.007"] = {
		"Riposati, {pet}. Il prossimo scontro arriva, che ci piaccia o no.",
		"Va' a leccarti le ferite, {pet}, se ne hai. Io penso alle mie.",
	},
	["cls.hunter.pet_grief.w06.001"] = {
		"Tengo la mano su {pet} più a lungo di quanto abbia senso.",
		"{pet} ha combattuto per me fino alla fine. Porterò anche questo, insieme al resto.",
		"Calma, {pet}. Sono qui.",
	},
	["cls.hunter.pet_grief.w06.002"] = {
		"Fra me e il colpo c'era {pet}. Ha sempre scelto quel posto, e l'ha scelto ancora.",
		"Il debito più vecchio di un cacciatore: la bestia che si prende il colpo destinato a chi la guida. Ti devo questo, {pet}.",
	},
	["cls.hunter.pet_mood.w06.001"] = {
		"{pet} quasi saltella. Qualunque cosa abbia fatto di giusto, vorrei ricordarmela.",
		"{pet} ha un passo elastico. Buon cibo, buona caccia: non ci vuole molto.",
	},
	["cls.hunter.pet_mood.w06.002"] = {
		"{pet} non ha fame e non fa storie. È l'umore che preferisco, su una strada lunga.",
		"Su {pet} è scesa la calma. Bene: è una bestia che si fida del prossimo pasto.",
	},
	["cls.hunter.pet_mood.w06.003"] = {
		"{pet} non mi guarda negli occhi. Ho lasciato correre, e ha tutto il diritto di tenermi il muso.",
		"Un'occhiata acida da {pet}. Prima si mangia, poi si caccia: l'ordine conta.",
	},
	["cls.hunter.pet_mood.w06.004"] = {
		"{pet} mi ringhia contro, o fa quel che per la sua specie vale come ringhiare. Messaggio ricevuto.",
		"Se {pet} potesse presentare un reclamo, adesso lo starei leggendo.",
	},
	["cls.hunter.pet_mood.w06.005"] = {
		"{pet} sta bene. È anche merito mio, e ne vado {g:fiero|fiera} in silenzio.",
		"Una bestia felice caccia meglio. {pet} sta per dimostrarlo.",
	},
	["cls.hunter.pray.w06.001"] = {
		"Chiunque vegli sulla natura selvaggia: tieni dritta la mia mira e onesta la mia fame, e fa' che niente di ciò che prendo vada sprecato.",
		"Spiriti della natura, o qualunque cosa risponda a quel nome: un tiro pulito quando conta, e il buon senso di trattenerlo quando non serve.",
	},
	["cls.hunter.quest_complete.w06.001"] = {
		"Questa è sistemata. E ora, dov'è il posto più vicino che vende munizioni?",
		"Qualunque cosa renda, finisce dritta in munizioni, come sempre.",
		"Bene. Con questo resto {g:rifornito|rifornita} di munizioni ancora per un po'.",
	},
	["cls.hunter.quest_complete.w06.002"] = {
		"Un grazie, un cenno, e poi di nuovo la strada aperta. È la strada che aspettavo.",
		"Le facce riconoscenti fanno piacere. La campagna aperta, dopo, ne fa di più.",
		"Parole gentili, e intendo tenermele. Ma gli occhi sono già rivolti verso la natura selvaggia.",
	},
	["cls.hunter.quest_complete.w06.003"] = {
		"Non chiedono mai quanto ho aspettato. Solo se è fatto. È giusto: l'attesa era la mia parte.",
		"Nessuno vuole sentir parlare delle ore di pazienza che ci sono dietro. Vogliono il risultato, e adesso ce l'hanno.",
		"Loro vedono il risultato. La pazienza che c'è dietro resta a me, dov'è giusto che stia.",
	},
	["cls.hunter.quest_complete.w06.004"] = {
		"ascolta educatamente i ringraziamenti, ma un orecchio resta teso verso il mondo là fuori.",
		"ripone la ricompensa con la cura di chi sa già esattamente come la spenderà.",
		"fa ruotare le spalle come chi posa un peso che non stava sulla schiena.",
	},
	["cls.hunter.quest_complete.w06.005"] = {
		"Più facile che seguire una pista, questa parte. Chi chiede aiuto, almeno, si fa trovare subito.",
		"Consegnato. La prossima volta datemi qualcosa che corra un po' di più.",
		"Questa non ha nemmeno provato a scappare. Quasi mi manca l'inseguimento.",
	},
	["cls.hunter.quest_complete.w06.006"] = {
		"Una persona in meno che aspetta qualcosa da me. Viaggio più {g:leggero|leggera} quando non devo niente.",
		"Un pensiero in meno. Una testa sgombra tira più dritto.",
		"Niente in sospeso. Sulla pista, i fili lasciati sciolti si impigliano dappertutto.",
	},
	["cls.hunter.quest_complete.w06.007"] = {
		"La mia bestia ha aspettato tutto il tempo senza un lamento. Si è comportata meglio di me.",
		"La bestia guarda già verso la strada. Su questo, come su quasi tutto, siamo d'accordo.",
		"Il lavoro è finito, e la bestia lo sa prima che io dica una parola. Lo sa sempre.",
	},
	["cls.hunter.quest_complete.w06.008"] = {
		"La gente mi ricompensa per fare ciò che la natura fa gratis ogni giorno: trovare, seguire, concludere. Strano mondo.",
		"In natura nessuno distribuisce ricompense per un lavoro ben fatto. Qui sì. Non mi ci abituerò mai del tutto.",
	},
	["cls.hunter.quest_complete.w06.009"] = {
		"Ecco. La prossima volta che ti serve trovare qualcosa, sai a chi chiedere.",
		"Ecco fatto, allora. Se c'è altro da scovare, non sono difficile da trovare.",
		"Se sparisce qualcos'altro, manda a chiamarmi. Trovare le cose è il mio mestiere.",
	},
	["cls.hunter.quest_complete.w06.010"] = {
		"Ogni incarico mi fa conoscere meglio la terra: un sentiero che non avevo percorso, un ruscello che non avevo visto. È la parte che non pagano.",
		"Qualunque cosa volessero, strada facendo ho imparato il terreno. Quello lo tengo io, qualunque fine faccia la ricompensa.",
	},
	["cls.hunter.quest_complete.w06.011"] = {
		"Chiesto e fatto. Indicami il prossimo.",
		"E questa è andata. Se c'è altro da cacciare, ti ascolto.",
		"Chiuso. Cos'altro c'è là fuori?",
	},
	["cls.hunter.quest_complete.w06.012"] = {
		"si guarda le mani come {g:sorpreso|sorpresa} che abbiano passato tanto tempo a fare altro che reggere l'arma.",
		"allenta finalmente la mascella, ed è quanto di più vicino a un sospiro di sollievo si possa vedere su quel volto.",
		"si sistema un guanto, un dito alla volta, come altri chiudono un libro.",
	},
	["cls.hunter.quest_complete.w06.013"] = {
		"La giornata di qualcuno adesso è un po' più facile. Non lo vedrò, sarò già {g:lontano|lontana}, ma è un bel pensiero con cui camminare.",
		"Qualunque cosa fosse, per qualcuno contava. Non ho bisogno di capire perché per sapere che valeva la strada.",
		"Cose piccole, per lo più, questi incarichi. Ma una cosa piccola rimessa a posto può far dormire qualcuno.",
	},
	["cls.hunter.quest_complete.w06.014"] = {
		"Dicono sempre che sarà semplice. Non sono mai loro a farlo, là fuori.",
		"'Un lavoretto semplice' è come tutti chiamano un lavoro che non hanno voglia di fare loro.",
		"Semplice, l'hanno chiamato. Tutto è semplice, visto da dietro un bancone.",
	},
	["cls.hunter.quest_complete.w06.015"] = {
		"Promessa fatta, promessa mantenuta. Alla natura non importa né dell'una né dell'altra, ma a me sì.",
		"Avevo detto che l'avrei fatto, e l'ho fatto. È quasi tutto ciò che ho da offrire a chiunque.",
		"La mia parola era partita prima di me, e adesso l'ho raggiunta. Bella sensazione.",
	},
	["cls.hunter.quest_complete.w06.016"] = {
		"Bene. E ora, se permetti, la natura non aspetta, e nemmeno io.",
		"Splendido. Non prenderla sul personale se me ne vado piuttosto in fretta.",
		"Felice di aver dato una mano. Adesso torno a essere difficile da trovare, se non ti dispiace.",
	},
	["cls.hunter.quest_complete.w06.017"] = {
		"Un altro incarico concluso, un altro po' di fiducia guadagnata. La fiducia vale più di qualunque ricompensa mi mettano in mano.",
		"Adesso conoscono la mia faccia. In questo mondo apre più porte delle monete.",
	},
	["cls.hunter.quest_complete.w06.018"] = {
		"posa per un attimo una mano sulla bestia che l'accompagna, per dividere con lei la fine del lavoro nell'unico modo che capisce.",
		"scambia con la bestia un'occhiata che dice, chiaro e tondo, 'andiamo'.",
	},
	["cls.hunter.quest_complete.w06.019"] = {
		"Le mie gambe sanno meglio di me quanta strada mi è costato questo incarico. Me lo ricorderanno per un po'.",
		"Per quanto ci sia voluto, i piedi hanno tenuto il conto. È ora di farli riposare, e poi altra strada.",
		"Questo mi è costato un po' di suola. Ne valeva la pena, credo. I talloni forse non sono d'accordo.",
	},
	["cls.hunter.quest_complete.w06.020"] = {
		"Bene. Questo mi vale un pasto come si deve e un po' di riposo. Va be', un pasto.",
		"Va benissimo. Qualcosa di caldo da mangiare, un posto asciutto per dormire, e poi riparto.",
	},
	["cls.hunter.quest_complete.w06.021"] = {
		"Chiunque l'abbia chiesto, entro la prossima stagione avrà dimenticato il mio nome. Nemmeno il terreno che ho attraversato si ricorderà di me. Mi sta bene così.",
		"Questa nessuno la racconterà attorno al fuoco. Quasi tutto il lavoro che vale la pena fare resta senza canzoni.",
		"Niente canzoni per incarichi come questo. Solo un lavoro fatto e qualcuno con un'arma in spalla che se ne va. Ci ho fatto pace.",
	},
	["cls.hunter.quest_complete.w06.022"] = {
		"accoglie i ringraziamenti con pazienza, la stessa che spenderebbe ad aspettare vicino a una pozza d'acqua.",
		"sta già stringendo una cinghia e sistemandosi l'arma sulla schiena prima che l'ultima parola di ringraziamento sia detta.",
	},
	["cls.hunter.quest_complete.w06.023"] = {
		"Gli elogi non mi servono. Mi serve sapere che è davvero finita, e lo è. Basta questo.",
		"Nessun conto in sospeso. Una caccia lasciata a metà ti segue dappertutto; questa no.",
	},
	["cls.hunter.quest_progress.w06.001"] = {
		"Una parte. Il resto è là fuori, e lascia segni per chiunque si prenda la briga di guardare.",
		"Non è ancora tutto. Va bene: la pista non si è raffreddata.",
		"Un pezzo trovato. Quello che resta non può essere lontano: le cose che vanno insieme di rado lo sono.",
	},
	["cls.hunter.quest_progress.w06.002"] = {
		"segna a mente un piccolo passo avanti e torna alla ricerca senza fermarsi.",
		"annuisce tra sé, conta quel che manca ancora e prosegue.",
	},
	["cls.hunter.quest_progress.w06.003"] = {
		"C'è tutto. Adesso la parte facile: tornare indietro senza inciampare nel mio orgoglio.",
		"Tutto quanto, finalmente. La strada per tornare indietro la conosco già.",
		"Al completo. È ora di portarlo a chi aspetta.",
	},
	["cls.hunter.quest_progress.w06.004"] = {
		"A metà, o giù di lì. Pazienza. Ho aspettato più a lungo per molto meno.",
		"Una parte. Il resto si nasconde. Non lo farà per sempre.",
	},
	["cls.hunter.reputation_change.w06.001"] = {
		"Cominciano a fidarsi di me. Come un animale diffidente, la fiducia si avvicina a piccoli passi cauti.",
		"Adesso mi salutano con un filo di calore in più. Guadagnarsi la fiducia delle creature timide è metà del mio mestiere, e le persone non sono poi così diverse.",
		"Hanno smesso di guardarmi di sbieco. La pazienza funziona anche con le persone, se le si dà tempo.",
	},
	["cls.hunter.rez.w06.001"] = {
		"La natura non si è fermata per la mia morte, nemmeno un istante. Non lo fa mai. È ora che la raggiunga.",
		"{g:Gelato|Gelata} fino alle ossa e {g:rigido|rigida} come cuoio vecchio. Chi mi ha messo a terra resterà sorpreso di rivedermi. Bene.",
	},
	["cls.hunter.rezother.w06.001"] = {
		"Su. In piedi. Non hai il permesso di andartene prima di me.",
		"Forza, rimettiti in piedi. Non ho finito di camminare con te.",
		"Torna dal buio, allora. Scrollati tutto di dosso, abbiamo strada da fare.",
	},
	["cls.hunter.rezother.w06.002"] = {
		"Tengo la mano sul fianco immobile finché non sento un fremito. Solo allora mi concedo di respirare.",
		"Si muove sotto la mia mano, e il nodo che avevo nel petto si scioglie.",
	},
	["cls.hunter.thanks.w06.001"] = {
		"Grazie. Te lo restituirò nell'unico modo che conosco: con un buon tiro quando ti servirà.",
		"Ti ringrazio. Se mai qualcosa ti darà la caccia, chiamami: a cacciare i cacciatori me la cavo.",
	},
	["cls.hunter.thanks.w06.002"] = {
		"Grazie. Con le bestie me la cavo meglio che con le parole, quindi dovrà bastare.",
		"Ti sono {g:grato|grata}. È quasi tutto quello che riuscirò a dire oggi.",
	},
	["cls.hunter.threat.w06.001"] = {
		"Vattene. Posso colpirti molto prima che tu mi raggiunga, e non sbaglio due volte.",
		"Ogni passo che fai verso di me è un'occasione in più per fermarti. Finirai i passi.",
		"Torna indietro per la tua strada. La mia mira arriva più lontano di quanto pensi.",
	},
	["cls.hunter.threat.w06.002"] = {
		"Ho seguito tracce di bestie più grosse e cattive di te. Non costringermi ad aggiungerti all'elenco.",
		"So seguire una pista per giorni. Pensaci, prima di cominciare qualcosa.",
		"Scappa, e seguirò le tue tracce. Nasconditi, e leggerò il tuo nascondiglio nel terreno.",
	},
	["cls.hunter.threat.w06.003"] = {
		"Una parola in più, e smetto di trattenere chi mi accompagna.",
		"Chi mi sta accanto è stato paziente finora. Non so per quanto ancora durerà.",
	},
	["cls.hunter.threat.w06.004"] = {
		"Saresti un bersaglio splendido. Non prenderlo come un complimento.",
		"Da qui hai giusto le dimensioni di un bel tiro. Lo dico e basta.",
		"Sei proprio dove ti vorrei. Magari spostati?",
	},
	["cls.hunter.threat.w06.005"] = {
		"prepara un colpo senza mai staccare gli occhi dall'altro.",
		"solleva l'arma di un dito, non di più, e aspetta di vedere se basta.",
	},
	["cls.hunter.victory.w06.001"] = {
		"passa il pollice sulle munizioni rimaste, contandole senza darlo a vedere.",
		"controlla quante munizioni restano, e storce la bocca davanti alla risposta.",
		"fa il conto dei colpi spesi con un'occhiata alla borsa, muovendo le labbra in silenzio.",
	},
	["cls.hunter.victory.w06.002"] = {
		"Quello mi è costato più munizioni di quanto valesse.",
		"Caro, questo. La prossima volta chiedo prima il prezzo.",
		"Ecco una manciata di munizioni che non rivedrò mai più.",
	},
	["cls.hunter.victory.w06.003"] = {
		"Ogni scontro mi insegna un po' meglio la distanza. Anche quello aveva una lezione dentro.",
		"In quello scontro c'è nascosta una lezione sulla gittata. La tirerò fuori camminando.",
		"Gittata, tempi, appoggio. Ci ripenserò dopo, con calma, finché è ancora tutto fresco.",
	},
	["cls.hunter.victory.w06.004"] = {
		"Qualcuno avrebbe dovuto vedere l'ultimo colpo. Peccato.",
		"Da parte a parte. Dovrei proprio tenerne il conto.",
		"L'ultimo era un capolavoro. Se potessi, lo metterei in cornice.",
	},
	["cls.hunter.victory.w06.005"] = {
		"si accovaccia dove è caduto il nemico e studia i segni rimasti a terra, come leggesse un'ultima lettera.",
		"si inginocchia un istante accanto al nemico caduto, leggendo graffi e impronte dello scontro come se potessero insegnare qualcosa.",
	},
	["cls.hunter.victory.w06.006"] = {
		"Ti sarebbe convenuto scappare appena mi hai visto.",
		"Scappare sarebbe stato più furbo. Ti avrei preso lo stesso, ma più furbo.",
		"La prossima volta, fila via appena mi vedi. Non servirà, ma fa più figura.",
	},
	["cls.hunter.victory.w06.007"] = {
		"C'è una tana o un nido dove questo non tornerà. Cerco di non pensarci, e ci penso.",
		"Aveva un suo territorio e una sua pista, come me. Ora ce n'è uno di meno.",
	},
	["cls.hunter.victory.w06.008"] = {
		"Bell'animale. Farò in modo che niente vada sprecato.",
		"Una bella creatura. Se ci fosse stato un altro modo, l'avrei scelto.",
	},
	["cls.hunter.victory.w06.009"] = {
		"Hai combattuto come cammini: con gran rumore e facile da leggere.",
		"Piedi pesanti, fiato rumoroso, colpi larghi. Non avresti mai potuto sorprendermi.",
	},
	["cls.hunter.victory.w06.010"] = {
		"posa per un momento una mano sul dorso del compagno, un grazie senza parole.",
		"dà una pacca alla bestia e le dice una parola sommessa, poi per un po' riprendono fiato insieme.",
		"si china a controllare che il compagno non sia ferito, prima ancora di guardare il nemico caduto.",
	},
	["cls.hunter.victory.w06.011"] = {
		"L'hai tenuto alla perfezione. Metà dei colpi erano tuoi, in fondo.",
		"Va bene, va bene, esibizionista. Sì, hai fatto benissimo.",
		"Me l'hai tenuto lontano per tutto il tempo. Non credere che non me ne sia {g:accorto|accorta}.",
	},
	["cls.hunter.victory.w06.012"] = {
		"Ha preso qualche colpo destinato a me. Prima da mangiare a chi mi ha coperto, poi a me.",
		"Prima di tutto, guardare come sta. Si prende sempre i colpi che toccavano a me.",
	},
	["cls.hunter.victory.w06.013"] = {
		"La tua parte arriva, non guardarmi così.",
		"Sì, sì, mangerai. Fammi prima riprendere fiato.",
	},
	["cls.hunter.victory.w06.014"] = {
		"Prima che qualcuno chieda: no, non mi serve ogni arma che cade. Solo quasi tutte.",
		"Se ha lasciato qualcosa di affilato, io lo guardo soltanto. Lo giuro sulla mia mira.",
	},
	["cls.hunter.victory.w06.015"] = {
		"Bella tenuta là davanti. A me è bastato non sbagliare.",
		"Voi lo tenevate occupato, io continuavo a tirare. Divisione onesta.",
	},
	["cls.hunter.victory.w06.016"] = {
		"rimette a posto l'arma con un movimento della spalla che sa di lunga pratica.",
		"lascia l'arma penzolare al fianco e sgranchisce le dita che la stringevano.",
		"si sistema l'arma sulla schiena e si stira finché qualcosa nella spalla non schiocca.",
	},
	["cls.hunter.victory.w06.017"] = {
		"Le mani sono più ferme durante lo scontro che dopo. Strano come funziona.",
		"Ecco che arriva il tremito. Mai mentre miro, sempre a cose fatte.",
		"{g:Saldo|Salda} come un palo per ogni colpo, e adesso le dita non stanno ferme.",
	},
	["cls.hunter.victory.w06.018"] = {
		"Fatto. La prossima pista non si seguirà da sola.",
		"Qui ho finito. C'è sempre un'altra fila di impronte.",
		"Chiuso. Più avanti, qualcos'altro sta lasciando orme per me.",
	},
	["cls.hunter.victory.w06.019"] = {
		"Lì dentro ho esitato una volta. Una sola, ma l'ho sentita.",
		"Un colpo è arrivato in ritardo. So quale. Da sistemare prima della prossima caccia.",
		"A metà, per un attimo, avevo i piedi sbagliati. Una piccolezza. Sono le piccolezze che ammazzano chi caccia.",
	},
	["cls.hunter.victory.w06.020"] = {
		"Ecco cosa succede a chi entra nel mio mirino.",
		"Nella mia mira si entra facilmente. Uscirne, mai.",
		"Hai attraversato la mia linea di tiro. Lo sbaglio è stato tutto lì.",
	},
	["cls.hunter.victory.w06.021"] = {
		"si passa una manica sulla fronte e strizza gli occhi verso la distanza, già in cerca del prossimo segno.",
		"si passa il dorso del polso sulla fronte e si volta a cercare tracce.",
		"si raddrizza, fa ruotare il collo una volta e comincia a leggere il terreno in cerca di quel che viene dopo.",
	},
	["cls.hunter.victory.w06.022"] = {
		"È lavoro. Lavoro buono, onesto. Me lo ripeto ogni volta, e quasi sempre ci credo.",
		"Chi caccia uccide per mangiare, o per proteggere altri. Sono quasi {g:sicuro|sicura} che questo fosse uno dei due casi.",
		"Necessario. È la parola che uso. Certe volte calza meglio di altre.",
	},
	["cls.hunter.victory.w06.023"] = {
		"Neanche un graffio. Be'. Niente di grosso.",
		"La chiamo una buona caccia. Nessuno deve sapere di quel colpo che quasi mi prendeva.",
		"Lavoro pulito, se non si conta il momento in cui stavo per inciampare.",
	},
	["cls.hunter.victory.w06.024"] = {
		"L'uccisione è la parte più piccola della caccia. L'attesa prima e il silenzio dopo sono quasi tutto.",
		"Cacciare è soprattutto pazienza. La fine arriva in fretta, e poi è di nuovo pazienza.",
		"Una lunga attesa, un attimo breve, un lungo silenzio. Ogni caccia ha la stessa forma.",
	},
	["cls.hunter.victory.w06.025"] = {
		"Al prossimo chiedo una distanza civile. Quaranta passi andrebbero bene.",
		"La prossima volta, una distanza educata, per favore. È tutto ciò che chiedo.",
		"Uno scontro a quaranta passi è una conversazione. Più vicino è solo maleducazione.",
	},
	["cls.hunter.victory.w06.026"] = {
		"rigira l'arma fra le mani, controllando che lo scontro non l'abbia danneggiata.",
		"fa scorrere uno sguardo attento lungo l'arma, come certi controllano un amico in cerca di ferite.",
		"prende la mira con l'arma verso nulla in particolare, per assicurarsi che tiri ancora dove guarda.",
	},
	["cls.hunter.victory.w06.027"] = {
		"Era bello grosso. Posso concedermi un po' di soddisfazione.",
		"Ci ha messo un bel po' a cadere, quello. Valeva ogni colpo.",
	},
	["cls.hunter.victory.w06.028"] = {
		"Era più forte di me. Distanza e pazienza hanno colmato la differenza. Ricordatelo.",
		"A rigor di logica, quello mi superava. La logica conta poco davanti a una buona linea di tiro.",
	},
	["cls.hunter.victory.w06.029"] = {
		"Stavolta resta giù. Chi ti ha fatto rialzare può cacciare da sé.",
		"Torna sotto terra. È il tuo posto.",
	},
	["cls.hunter.victory.w06.030"] = {
		"Rapido e pulito. È il minimo che devo a ciò che caccio.",
		"Mai più dolore di quanto ne serva alla caccia. Questa regola non la piego.",
		"Veloce, e non più crudele del necessario. È l'unico modo in cui lo faccio.",
	},
	["cls.hunter.victory.w06.031"] = {
		"Nessuno a cui raccontarlo. L'ha visto la natura, e la natura non chiacchiera.",
		"Solo io so quanto è andata bene. Basta così.",
	},
	["cls.hunter.victory.w06.032"] = {
		"solleva il viso verso l'aria e respira piano, leggendo cos'altro potrebbe trovarsi nei paraggi.",
		"saggia l'aria con un lungo respiro, come se il prossimo pericolo si potesse fiutare prima di vederlo.",
		"resta un momento con le narici dilatate, separando gli odori sollevati dallo scontro da quelli che c'erano già.",
	},
	["cls.hunter.victory.w06.033"] = {
		"Il cuore corre ancora. È la parte che non ammetterei mai che mi piace.",
		"Formicolio fino alla punta delle dita. Una buona caccia fa questo effetto.",
		"Tutti i sensi ancora spalancati. Ci vuole un po' a richiuderli, e non ho fretta.",
	},
	["cls.hunter.victory.w06.034"] = {
		"Giù. Bene. Allora, da che parte stavo andando?",
		"Ecco. Torniamo alle tracce.",
		"Bene. Dov'ero {g:rimasto|rimasta}? Ah, sì. Stavo seguendo qualcosa.",
	},
	["cls.hunter.victory.w06.035"] = {
		"Spalle giù. Mascella sciolta. È finita: fallo sapere anche al corpo.",
		"Rilassati. Ogni parte di me aspetta ancora il prossimo tiro.",
		"Sto ancora trattenendo il fiato. Lascialo andare. Ecco.",
	},
	["cls.hunter.victory.w06.036"] = {
		"Vorrei ringraziare la mia arma, il mio occhio e quel colpo fortunato.",
		"Il merito va alle mani ferme e a un bersaglio indulgente.",
		"Sinceramente? Metà abilità, metà un nemico negato a schivare.",
	},
	["cls.mage.attack.w06.001"] = {
		"Arcano grezzo. Niente sapore, solo forza.",
		"Mestiere puro, senza aggiunte.",
		"Dritto dalla fonte.",
	},
	["cls.mage.attack.w06.002"] = {
		"Che prenda. Il resto il fuoco lo sa.",
		"Acceso. Ora non mollare la pressione.",
	},
	["cls.mage.attack.w06.003"] = {
		"lascia che il freddo si raccolga nei palmi finché l'aria stessa non diventa bianca, poi lo libera.",
		"manda via il freddo con un gesto breve e piatto, come chi chiude un cassetto.",
	},
	["cls.mage.attack.w06.004"] = {
		"E un'altra. Ho un programma di studi intero.",
		"Formula successiva. Cerca di stare al passo.",
		"Seconda pagina della lezione.",
	},
	["cls.mage.attack.w06.005"] = {
		"Lancia, sposta, lancia. Mai restare dove mi ha lasciato l'ultimo incantesimo.",
		"Mana speso, mana contato. Avanti col prossimo.",
	},
	["cls.mage.battle.w06.001"] = {
		"Una veste, un libro e un brutto carattere. Hai scelto il viandante sbagliato.",
		"Sì, è solo stoffa. No, non ti servirà quanto credi.",
		"Lo so che effetto fa: una veste e niente armatura. Riguarda tra un attimo.",
	},
	["cls.mage.battle.w06.002"] = {
		"Controlla la riserva. Qualunque cosa ci sia nel pozzo, la testa fredda la fa durare.",
		"Prima di tutto il mana. Il nemico lo vedo; la riserva devo sentirla.",
		"Un incantesimo lanciato a metà è mana buttato. Finisci quel che cominci.",
	},
	["cls.mage.battle.w06.003"] = {
		"Fuoco, direi. Oggi non ho voglia di sottigliezze.",
		"Lasciamo stare le formule delicate. Oggi ci vuole qualcosa che bruci.",
		"Qualcosa con dentro la fiamma, direi. Si addice al mio umore.",
	},
	["cls.mage.battle.w06.004"] = {
		"Gelo, stavolta. Hai l'aria di qualcosa che dovrebbe rallentare.",
		"Per questo scelgo il freddo. Con chi si muove piano si discute meglio.",
		"Freddo, allora. Vediamo di toglierti la fretta.",
	},
	["cls.mage.battle.w06.005"] = {
		"Niente fuoco, niente gelo, stavolta. Solo l'arcano, nudo e crudo.",
		"Facciamola in arcano puro. È maleducato, ma è sincero.",
		"Né caldo né freddo, oggi. Solo la forza che sta sotto a entrambi.",
	},
	["cls.mage.battle.w06.006"] = {
		"Se si avvicina: la nova, tre passi indietro, e si ricomincia. Semplice. Ricordati che è semplice.",
		"Lascia che venga. Ghiaccio a terra, e io me ne sto già andando.",
		"Il piano: gelare il terreno, riaprire la distanza, lanciare da lì. Niente improvvisazioni finché il piano regge.",
	},
	["cls.mage.battle.w06.007"] = {
		"Avanti, accorcia le distanze. Io le rimetto a posto.",
		"Carica pure, se vuoi. Quando arrivi, sarò da un'altra parte.",
	},
	["cls.mage.battle.w06.008"] = {
		"traccia nell'aria un rapido sigillo con due dita, che resta sospeso e luminoso per un istante prima di svanire.",
		"si tira le maniche oltre i polsi, come uno scrivano prima di una lunga pagina.",
		"apre una mano, e nel palmo si raccoglie qualcosa che non ha ancora deciso se essere fiamma o gelo.",
	},
	["cls.mage.battle.w06.009"] = {
		"Con uno in corazza ti sarebbe andata meglio. La stoffa picchia più forte.",
		"La veste inganna tutti. Ogni singola volta.",
		"Hai scambiato la stoffa morbida per un bersaglio facile. Errore comune.",
	},
	["cls.mage.battle.w06.010"] = {
		"Un colpo ben assestato e mi piego in due. Quindi niente colpi ben assestati. Tutta la strategia è questa.",
		"La stoffa non ferma niente. Ogni piano che faccio parte da qui.",
		"Accanto a un guerriero sono di carta. Carta che brucia le altre cose, ma pur sempre carta.",
	},
	["cls.mage.battle.w06.011"] = {
		"Ultima occasione per restare su due gambe. Dopo, non garantisco sul numero.",
		"Puoi andartene così come sei, o andartene in forma di bestiame. Scegli, ma in fretta.",
	},
	["cls.mage.battle.w06.012"] = {
		"Piano, piano. Posso trasformarti in qualcosa che morde molto meno.",
		"Tutto questo trambusto. Una pecora non fa mai trambusto. Pensaci.",
	},
	["cls.mage.battle.w06.013"] = {
		"Voi davanti tenete impegnato il nemico; da qui dietro la chiudo io.",
		"Tenete il suo sguardo su di voi un istante. Farò in modo che l'istante sia breve.",
	},
	["cls.mage.battle.w06.014"] = {
		"Il mana è una borsa, non un fiume. Spendilo sapendo che ha un fondo, perché ce l'ha.",
		"Tieni le formule costose per il momento in cui chiudono davvero qualcosa.",
	},
	["cls.mage.battle.w06.015"] = {
		"Vediamo di che pasta sei. E lo dico alla lettera.",
		"Non muoverti. Vorrei studiare meglio la tua composizione. Da una distanza ragionevole.",
		"Curioso. Diamo un'occhiata più da vicino, ma restando esattamente dove sono.",
	},
	["cls.mage.battle.w06.016"] = {
		"Un avversario vero. Bene: tutte le formule che conosco, nell'ordine giusto.",
		"Roba seria. Va bene: mi servirà tutto, e nella sequenza giusta.",
	},
	["cls.mage.battle.w06.017"] = {
		"Probabilmente è troppo per me. Quindi servirà più testa che fortuna.",
		"Fuori dalla mia portata. Mantenere la distanza, non sprecare niente, e andarsene appena gira male.",
	},
	["cls.mage.battle.w06.018"] = {
		"Roba da primo capitolo. Faccio presto.",
		"Basteresti appena per una nota a margine. Non facciamola lunga.",
	},
	["cls.mage.battle.w06.019"] = {
		"La morte l'hai già avuta, eppure sei ancora in giro. Lascia che sistemi io la seconda parte.",
		"Chi ha fatto questo lavoro di rianimazione l'ha fatto male. Lo correggo io.",
	},
	["cls.mage.battle.w06.020"] = {
		"Un elementale. Non sei altro che magia che tiene una forma. Anch'io, nelle giornate buone.",
		"Elemento grezzo, legato male. Quasi ammirerei il lavoro, se non stesse cercando di uccidermi.",
	},
	["cls.mage.battle.w06.021"] = {
		"Ingranaggi e rivetti. Nessuna mente da confondere, dunque. Solo caldo, freddo e pazienza.",
		"Una macchina. Il metallo diventa fragile col freddo e detesta il calore improvviso. Guarda caso, li porto con me tutti e due.",
	},
	["cls.mage.battle.w06.022"] = {
		"Un demone. Conosco il tipo di incantatore che evoca quelli come te. Io sono dell'altro tipo.",
		"Tutta quella furia. Sgradevole, ma anche tu obbedisci alle leggi della magia.",
	},
	["cls.mage.battle.w06.023"] = {
		"lascia scendere il freddo attorno alle dita finché la brina non ricama i polsini della veste.",
		"fa rotolare pigramente una piccola brace sulle nocche, come altri si fanno scrocchiare le dita.",
		"pianta bene i piedi, misura la distanza con un'occhiata e alza una mano come per fare una domanda.",
	},
	["cls.mage.battle.w06.024"] = {
		"Il fuoco è più rapido. Il gelo più sicuro. L'arcano più rumoroso. Scegli, e smetti di ammirare la scelta.",
		"Quale scuola, oggi? Quella che chiude la faccenda prima che arrivi fin qui.",
		"Scegli una scuola e vai fino in fondo. È esitando che i maghi si fanno mordere.",
	},
	["cls.mage.battle.w06.025"] = {
		"Per favore, stai indietro. Dicono che divento {g:pericoloso|pericolosa} quando mi stanno addosso.",
		"Un po' di spazio, se non ti dispiace. Le cose vicino a me tendono a prendere fuoco.",
		"Resta laggiù. È più salutare per te.",
	},
	["cls.mage.battle.w06.026"] = {
		"Non sono {g:uscito|uscita} da dietro i libri per scappare dalla prima cosa che ha un'opinione.",
		"Qua fuori parecchie cose vorrebbero veder cadere chi passa la vita sui libri. Non oggi.",
		"Avrò l'aria di chi vive in biblioteca. Ma anche qui sono di casa.",
	},
	["cls.mage.battle.w06.027"] = {
		"I vecchi maestri dicono che l'arcano dà il meglio proprio quando ne hai più bisogno. Lo dicono come avvertimento.",
		"Attingi solo quel che serve. Il resto del potere può aspettare fuori, per quanto bussi.",
		"Cautela. Il potere costa poco adesso e molto più tardi.",
	},
	["cls.mage.battle.w06.028"] = {
		"Dieci passi, per favore. Rendo al meglio alla distanza di un'aula di lezione.",
		"La distanza perfetta è più o meno dove ti trovi adesso. Non rovinarla.",
		"Più ti avvicini, peggio va. Soprattutto per te.",
	},
	["cls.mage.battle.w06.029"] = {
		"Ti do un avvertimento, che è uno in più di quanti te ne darà il fuoco.",
		"Girati e vattene adesso. Una volta cominciata, la formula si conclude da sola.",
		"Preferirei di no. Mi ci stai costringendo.",
	},
	["cls.mage.battle.w06.030"] = {
		"si tira su le maniche, lancia un'occhiata al nemico e sospira come un precettore davanti a un pessimo compito.",
		"misura la distanza dal nemico con un piccolo cenno preciso, come chi controlla una cifra su un registro.",
	},
	["cls.mage.battle.w06.031"] = {
		"Una scintilla ben piazzata chiude quasi tutte le discussioni. Vediamo se sei l'eccezione.",
		"Oggi ho voglia di fuoco. A te piacerà meno che a me.",
		"Prima una fiammella. Ingrandirla si fa sempre in tempo.",
	},
	["cls.mage.battle.w06.032"] = {
		"Rallentare il nemico, allargare la distanza, poi il lavoro pesante. In quest'ordine, anche quando fa paura.",
		"Tre cose da tenere d'occhio: la distanza, il mana, e la sua prossima mossa.",
		"Attenzione al terreno alle mie spalle. Ogni passo indietro deve pur poggiare da qualche parte.",
	},
	["cls.mage.battle.w06.033"] = {
		"Prima di cominciare: declino ogni responsabilità per bruciature, congelamenti o sorprese improvvise.",
		"Ti avverto: i miei risultati sono ottimi, i miei modi pessimi.",
		"Eventuali reclami vanno presentati per iscritto. Dopo.",
	},
	["cls.mage.battle.w06.034"] = {
		"La veste la vedi. Sai benissimo cosa sta per arrivare. Se hai giudizio, scappa.",
		"Qui fuori non ci sono regole da duello. Nessuno chiama la fine, e io non mi fermo al primo tocco.",
	},
	["cls.mage.battle.w06.035"] = {
		"Se il pozzo si prosciuga, l'Evocazione può riempirlo di nuovo. Meglio non averne bisogno nel mezzo di questo.",
		"Scudo di mana se si avvicina, Evocazione se va per le lunghe. Spero in nessuna delle due.",
	},
	["cls.mage.battle.w06.036"] = {
		"Hai mai affrontato chi fa il mio mestiere? È un'istruzione breve.",
		"Prima volta contro qualcuno come me? Farò una lezione breve e memorabile.",
	},
	["cls.mage.battle.w06.037"] = {
		"Mani ferme. Sillabe pulite. Il resto viene da sé.",
		"Pronuncia chiaro. Con una formula biascicata gli apprendisti finiscono in infermeria.",
	},
	["cls.mage.battle.w06.038"] = {
		"Niente armatura, niente scudo, solo ciò che ho imparato. È più che sufficiente.",
		"Tutto quello che porto è nella testa. Prova a togliermelo.",
		"La veste è solo stoffa. Chi ci sta sotto ha letto parecchio.",
	},
	["cls.mage.battle.w06.039"] = {
		"lancia un'occhiata al nemico, una al terreno che li separa, e comincia a parlare con voce bassa e misurata.",
		"flette le dita una a una, e ognuna lascia dietro di sé un debole crepitio.",
		"allarga i piedi e alza un palmo, e un ronzio sommesso si leva da un punto imprecisato.",
	},
	["cls.mage.battle.w06.040"] = {
		"Ero a metà di un pensiero. Adesso sono {g:irritato|irritata}.",
		"Un attimo fa avevo un'idea ottima. Me l'hai fatta scappare. Imperdonabile.",
	},
	["cls.mage.battle.w06.041"] = {
		"Il primo incantesimo è una domanda. Come reagisce, è la risposta.",
		"Comincia con qualcosa che costa poco, e osserva. Tutto rivela la sua debolezza, se guardi bene.",
	},
	["cls.mage.battle.w06.042"] = {
		"Fuoco, gelo o arcano? Ti lascerei scegliere, ma sceglieresti male.",
		"Tre scuole, e assaggerai quella che mi va di più al momento.",
		"Vediamo quale scuola ti piace di meno.",
	},
	["cls.mage.battle.w06.043"] = {
		"Qualunque cosa succeda, niente corpo a corpo. Il corpo a corpo è dove finisce la gente come me.",
		"Se arriva fino a me, la veste non prenderà le mie difese.",
	},
	["cls.mage.battle.w06.044"] = {
		"Con la parola e la volontà. Cominciamo.",
		"Mente sgombra, mani pronte. Che la lezione abbia inizio.",
		"Fa' attenzione, allora. Questa è la parte pratica.",
	},
	["cls.mage.battle.w06.045"] = {
		"Occhio alle scintille. Alcune sono per te, altre sono solo entusiasmo.",
		"Se l'aria comincia a crepitare, sono io che mi scaldo.",
	},
	["cls.mage.buff.w06.001"] = {
		"traccia in aria una figura rapida, e un pallido luccichio viola si posa come polvere nella luce di una lampada, poi svanisce.",
		"pronuncia piano tre sillabe, e per un attimo l'aria intorno al gesto brilla appena prima che l'incantesimo attecchisca.",
		"descrive un cerchio lento con due dita; l'arcano vi si raccoglie, si accende una volta e scompare.",
	},
	["cls.mage.buff.w06.002"] = {
		"Un piccolo incantesimo, fatto con poco e svanito presto. Il genere che non finisce mai in una storia, e aiuta sempre.",
		"Non tutti gli incantesimi devono fare rumore. Alcuni dei migliori si posano e si mettono al lavoro.",
		"Un po' di mana, ben piazzato. Preferisco spenderlo così che in fuochi d'artificio.",
	},
	["cls.mage.buff.w06.003"] = {
		"Ecco. Lavoro arcano di prima qualità, e nessuno lo vedrà mai.",
		"Invisibile, poco appariscente e assolutamente corretto. Il mio genere di incantesimo preferito.",
		"Un altro incantesimo per cui nessuno mi ringrazierà. È così che si riconoscono quelli utili.",
	},
	["cls.mage.buff.w06.004"] = {
		"Posare un incantesimo su qualcuno è diverso dallo scagliarlo contro un nemico. Va invitato, non imposto.",
		"Protezioni e doni hanno una grammatica più gentile del fuoco. Le stesse parole, con desinenze più morbide.",
		"Il fuoco si pronuncia contro qualcosa. Questo si pronuncia a favore di qualcosa. La differenza sta tutta nel polso.",
	},
	["cls.mage.buff.w06.005"] = {
		"Lucidità, versata come acqua fredda. I contorni del mondo si fanno un po' più netti.",
		"I pensieri si mettono in fila più dritti, come libri rimessi in ordine su uno scaffale.",
		"Un po' più di ingegno nel mondo. Ne ha sempre bisogno.",
	},
	["cls.mage.buff.w06.006"] = {
		"Adesso la testa dovrebbe sembrarti un po' più spaziosa. Cerca di arredarla bene.",
		"Pensieri più affilati per te. Spendili in qualcosa di meglio che preoccuparti.",
		"Adesso la trappola la vedrai un attimo prima. Potrai ringraziarmi allora.",
	},
	["cls.mage.buff.w06.007"] = {
		"{target}, che i tuoi pensieri restino svelti e il tuo giudizio ancora di più.",
		"Una mente lucida per te, {target}. In questo mestiere vale più di un'armatura.",
		"Per te, {target}: un po' più di luce dietro gli occhi.",
	},
	["cls.mage.buff.w06.008"] = {
		"sfiora una fronte con due dita, mormorando, e gli occhi lì sotto per un attimo sembrano accendersi.",
		"pronuncia una breve frase, e un debole bagliore viola passa sulla fronte a cui era destinato.",
		"posa per un attimo una mano su una fronte, e quando la solleva il viso sotto sembra un po' più sveglio.",
	},
	["cls.mage.buff.w06.009"] = {
		"Regalo lucidità con tanta facilità. Peccato che sui rimpianti non funzioni.",
		"Un incantesimo per una mente più acuta. Se solo ce ne fosse uno per una mente più quieta.",
		"Una mente acuta è un dono. Sapere che farne non è qualcosa che posso lanciare.",
	},
	["cls.mage.buff.w06.010"] = {
		"Non muoverti un attimo. Ecco, ora è tuo.",
		"Non badare al formicolio. È dalla tua parte.",
		"Fatto. Non sentirai granché, ma ci sarà quando conta.",
	},
	["cls.mage.buff.w06.011"] = {
		"Amplificare la magia: ogni cura arriva più lontano, e così ogni maledizione. Un incantesimo generoso, senza il minimo giudizio.",
		"Magia più forte, in entrambe le direzioni. Splendida con un buon guaritore vicino, deplorevole contro un branco di incantatori.",
		"Questa protezione fa arrivare più forte ogni incantesimo. Cerco di lanciarla quando a lanciare incantesimi sono gli amici.",
	},
	["cls.mage.buff.w06.012"] = {
		"Smorzare la magia: gli incantesimi nemici arrivano più attutiti. Anche le cure, purtroppo. Niente è gratis.",
		"Una protezione che attutisce. Fuoco e gelo scivolano via un po', e così gli incantesimi gentili. Bisogna scegliere bene le battaglie.",
		"Meno bruciature dagli incantatori nemici, cure più lente da quelli amici. Uno scambio, come tutto in questo mestiere.",
	},
	["cls.mage.buff.w06.013"] = {
		"Questo attutirà qualunque cosa ti scaglino addosso gli incantatori. I guaritori dovranno faticare di più: di' loro che è colpa mia.",
		"Una protezione che attutisce, per te. Gli incantesimi faranno meno male. Anche le cure aiuteranno meno, quindi niente imprudenze.",
		"Tieniti stretta quella protezione. Non ripara dalle spade, solo dai furbi con i libri.",
	},
	["cls.mage.buff.w06.014"] = {
		"Amplificato. Ogni cura su di te conterà di più. Anche le brutte notizie, quindi stai alla larga dagli incantatori.",
		"Ecco. I guaritori adesso ti adoreranno. Anche i maghi nemici, ma in modo meno piacevole.",
	},
	["cls.mage.buff.w06.015"] = {
		"Gli incantesimi che aiutano invecchiano meglio di quelli che feriscono. Nessuno ricorda con affetto una palla di fuoco.",
		"Mi piacciono gli incantesimi silenziosi. Chiedono poco e si lasciano dietro qualcosa che non è cenere.",
		"Di tutto ciò che lancio, è l'incantesimo che meno probabilmente verrà ricordato e che più probabilmente sarà servito.",
	},
	["cls.mage.buff.w06.016"] = {
		"Intelletto, applicato. Il mondo ora è leggermente meglio informato.",
		"Certi giorni la cosa più utile che un mago possa fare è rendere qualcuno un po' meno ottuso.",
		"Acume per il viaggio. Svanisce, che qualcuno lo usi o no.",
	},
	["cls.mage.buff.w06.017"] = {
		"Teste lucide, tutti quanti. Vediamo di non sprecarle.",
		"Brillantezza per tutto il gruppo. Per una volta, provate a pensare nella stessa direzione.",
	},
	["cls.mage.buff.w06.018"] = {
		"conclude il gesto con un piccolo colpo di polso, come uno scrivano che mette il puntino all'ultima lettera.",
		"abbassa la mano piano, come chi posa qualcosa di fragile su un tavolo.",
		"controlla il lavoro strizzando gli occhi con aria critica, annuisce e passa oltre.",
	},
	["cls.mage.lowhp.w06.001"] = {
		"Ah. Ecco dove la stoffa mostra i suoi limiti.",
		"Ed ecco il problema di vestirsi per studiare invece che per combattere.",
		"Lezione ripassata: la stoffa tiene lontano il freddo, e nient'altro.",
	},
	["cls.mage.lowhp.w06.002"] = {
		"Via, adesso. Al resto pensa da più lontano.",
		"Prima fuori portata. Poi l'intelligenza.",
	},
	["cls.mage.lowhp.w06.003"] = {
		"Ghiaccio a terra, e allontanati. Non correre: cammina, che correndo rovini il lancio successivo.",
		"La nova, poi la distanza. Ogni secondo di ghiaccio è un secondo di vita in più.",
		"Ghiaccio, poi fuori portata. La ferita può aspettare.",
	},
	["cls.mage.lowhp.w06.004"] = {
		"D'accordo, mana: adesso i colpi li prendi tu.",
		"Lo scudo, attingendo alla riserva. Costa caro, ma meno che morire.",
	},
	["cls.mage.lowhp.w06.005"] = {
		"Non qui. Non per mano di qualcosa che non sa nemmeno come mi chiamo.",
		"Ho troppi appunti a metà per finire nella polvere.",
		"Non per uno scontro così banale. Merito una fine migliore di questa.",
	},
	["cls.mage.lowhp.w06.006"] = {
		"Mi hai messo alle strette. Pessima idea: è adesso che smetto di essere ragionevole.",
		"Colpiscimi ancora e smetto di stare {g:attento|attenta} con le formule.",
		"Bene. Basta incantesimi educati.",
	},
	["cls.mage.lowhp.w06.007"] = {
		"arretra barcollando di un passo, una mano premuta sul fianco, l'altra che ancora dà forma a un incantesimo.",
		"perde il filo di una formula, lo riprende, e va avanti a denti stretti.",
		"inciampa, l'orlo della veste strappato, e chissà come tiene ancora alzate entrambe le mani.",
	},
	["cls.mage.lowhp.w06.008"] = {
		"Il panico spreca mana. Rallenta le sillabe. Solo lanci puliti.",
		"Un incantesimo sbagliato adesso costa più della ferita. Calma.",
		"Le mani che tremano lanciano storto. Tienile ferme. Ferme.",
	},
	["cls.mage.lowhp.w06.009"] = {
		"Annotazione per chi verrà dopo di me: questa parte la sconsiglio.",
		"Questo esperimento va cancellato. Per intero.",
	},
	["cls.mage.lowhp.w06.010"] = {
		"Il cuore batte più forte della formula. Zittiscilo. Parlaci sopra.",
		"Sangue caldo sulla veste. Il mio. Concentrati lo stesso.",
	},
	["cls.mage.lowhp.w06.011"] = {
		"Questo corpo è già stato rovinato una volta. Non permetterò che succeda di nuovo qui fuori.",
		"La carne morta si strappa come ogni altra. Abbine cura: non ce n'è di ricambio.",
	},
	["cls.mage.lowhp.w06.012"] = {
		"Anche sull'orlo, chi fa magia ha ancora delle parole. Ecco le mie.",
		"Tutto quel che mi resta va nel prossimo incantesimo.",
		"Mi restano le ultime pagine. Che siano buone.",
	},
	["cls.mage.lowhp.w06.013"] = {
		"Scegli adesso: un'ultima grossa scommessa, o una ritirata prudente finché si può.",
		"Da qui in poi ogni incantesimo deve contare. Potrebbe non esserci un secondo tentativo.",
		"Un incantesimo per chiuderla o un passo per scappare. Non c'è tempo per entrambi.",
	},
	["cls.mage.lowhp.w06.014"] = {
		"Un aiutino, qui? La biblioteca ambulante sta andando a pezzi.",
		"Chi sa curare, da questa parte! Serve a chi veste di stoffa. Sì, a me.",
	},
	["cls.mage.lowhp.w06.015"] = {
		"ondeggia, sbatte forte le palpebre e tira fuori l'incantesimo successivo parola per parola.",
		"cade su un ginocchio, poi si rialza, mormorando ancora la formula.",
	},
	["cls.mage.lowhp.w06.016"] = {
		"Per la cronaca, la mia costituzione è da biblioteca, non da questo.",
		"Ecco perché i maghi stanno dietro. Vorrei tornarci.",
	},
	["cls.mage.lowhp.w06.017"] = {
		"Lana. Fanne una pecora, e usa quei secondi per pensare.",
		"La pecora, adesso. Poi bende, pozioni, quel che c'è. Prima compra il tempo.",
	},
	["cls.mage.muse.w06.001"] = {
		"Certe pagine le ho lette una dozzina di volte, e alla tredicesima mi dicono ancora qualcosa di nuovo. Non so se dipenda dal libro o da me.",
		"Continuo a rileggere lo stesso capitolo sulle protezioni. Lui non è cambiato. Io sì, un poco, ogni volta.",
		"Un buon libro di incantesimi non finisce quando lo finisci. Aspetta che tu diventi qualcuno capace di leggerlo davvero.",
	},
	["cls.mage.muse.w06.002"] = {
		"L'arcano non tenta come pensa la gente. Non sussurra. Rende soltanto l'incantesimo successivo un po' più facile del precedente, e lascia che le conclusioni le tragga tu.",
		"Nessuno ti avverte che il potere somiglia al buon senso. Ogni passo in più, sul momento, sembra perfettamente ragionevole.",
		"I maestri in città dicono che il mestiere divora chi lo ama troppo. Io lo amo esattamente quanto basta. Me lo ripeto spesso.",
	},
	["cls.mage.muse.w06.003"] = {
		"Questa settimana ho evocato abbastanza acqua da farci galleggiare una barca. All'acqua nessuno ha detto grazie.",
		"Acqua fresca, dal nulla, a richiesta. E c'è ancora chi chiede se è stata bollita.",
		"L'acqua evocata è pulitissima. Più di qualsiasi pozzo da cui tu abbia mai bevuto. Smettila di annusarla.",
	},
	["cls.mage.muse.w06.004"] = {
		"Quando il mana si abbassa, il mondo si appiattisce, come una melodia suonata senza le note basse. Ho imparato ad accorgermene prima che arrivi a quel punto.",
		"Restare a secco non fa male, esattamente. È come cercare una parola che usi ogni giorno e non trovarci niente.",
		"Senza mana sono solo qualcuno in tunica con parecchie opinioni. È una lezione di umiltà. Dovrei riceverne più spesso.",
	},
	["cls.mage.muse.w06.005"] = {
		"evoca una pagnotta, la rigira con occhio critico e la mangia comunque.",
		"fa comparire dal nulla una forma di pane e la spezza a metà, porgendo il pezzo più grande a nessuno in particolare.",
		"fa apparire una pagnotta, la saggia con una nocca come un falegname che prova una trave, e sembra {g:soddisfatto|soddisfatta}.",
	},
	["cls.mage.muse.w06.006"] = {
		"Fuoco, gelo, arcano: tre dialetti di una sola lingua. Non ne parlo bene ancora nessuno, ma me la cavo con tutti e tre.",
		"Il fuoco è il più facile da imparare e il più difficile da posare. Il gelo, il contrario. L'arcano è difficile in tutti e due i sensi.",
		"Ogni scuola ha le sue maniere. Il fuoco interrompe, il gelo aspetta il suo turno, l'arcano risponde a una domanda che non avevi fatto.",
	},
	["cls.mage.muse.w06.007"] = {
		"La gente crede che la vita di un mago sia tutta palle di fuoco. È soprattutto leggere caratteri minuscoli con una luce pessima.",
		"Gran parte di questo mestiere sono note a piè di pagina. Nelle storie le note a piè di pagina non le mette nessuno.",
		"La parte spettacolare dura un secondo. Gli altri dieci anni li passi a litigare con un libro.",
	},
	["cls.mage.muse.w06.008"] = {
		"Dalaran se ne sta sotto la sua cupola, si dice, a ripararsi dietro lo scudo. Un giorno vorrei vederla, anche solo da fuori.",
		"Il Kirin Tor sta ricostruendo, o almeno così dicono gli studiosi. Una città di maghi, spezzata da cose più forti dei maghi. È un pensiero che mi tiene coi piedi per terra.",
		"Qualunque cosa sia successa a Dalaran, i libri sopravvissuti devono valere più dell'oro. Darei molto per un pomeriggio in mezzo a loro.",
	},
	["cls.mage.muse.w06.009"] = {
		"Le ore di studio si lasciano dietro un silenzio particolare. Me lo porto addosso per un po', come un odore di polvere.",
		"Dopo una lunga seduta sui libri, le voci degli altri sembrano troppo forti per un po'. Poi passa. Quasi sempre.",
		"Lo studio è una stanza con una sedia sola. L'ho scelta io, e quasi tutti i giorni la sceglierei di nuovo.",
	},
	["cls.mage.muse.w06.010"] = {
		"Pane e acqua, evocati al momento. Il menù è sempre quello, e sempre quello resterà.",
		"Chi ha fame: c'è pane evocato. Chi è schizzinoso: c'è la strada fino alla prossima locanda.",
		"Non accetto richieste sui sapori. Evocare è un mestiere, non una cucina.",
	},
	["cls.mage.muse.w06.011"] = {
		"L'Evocazione è il riposo più strano che ci sia: stare immobili mentre il mana rientra come acqua in una cisterna asciutta.",
		"Quando evoco smetto per un po' di essere una persona e divento un recipiente. Non è spiacevole. È proprio questo che mi preoccupa.",
		"Otto secondi di immobilità, e sono di nuovo {g:pieno|piena}. Vorrei che il resto della vita si ricaricasse con tanta cortesia.",
	},
	["cls.mage.muse.w06.012"] = {
		"La gente dice che la metamorfosi è crudele. È l'incantesimo più gentile che conosca. Chiedilo a chiunque ne sia uscito senza un graffio.",
		"Una pecora non porta rancore a lungo. È metà del motivo per cui l'incantesimo funziona così bene.",
	},
	["cls.mage.muse.w06.013"] = {
		"I luoghi antichi trattengono la magia come le pietre trattengono il calore del giorno. Se stai {g:fermo|ferma} abbastanza, la senti filtrare fuori.",
		"Certi terreni sembrano affollati di vecchi incantesimi, altri spazzati via. Non ho mai capito come distinguerli, e continuo a provarci.",
		"In questo mondo ci sono punti in cui l'aria sembra più sottile per la mente, come se qualcuno ne avesse speso tutta la magia tanto tempo fa senza mai restituirla.",
	},
	["cls.mage.muse.w06.014"] = {
		"Posso accendere un fuoco da campo con una parola. Mi porto comunque dietro l'acciarino, per rispetto della tradizione. E per quando sono {g:stanco|stanca}.",
		"Accendere un fuoco con la magia è facile. Accenderne uno piccolo, quello è il corso avanzato.",
		"Chiedi a un mago di accendere una candela e scoprirai quanta padronanza di sé abbia davvero.",
	},
	["cls.mage.muse.w06.015"] = {
		"Ogni incantesimo prende qualcosa da chi lo lancia. Di solito è solo mana. I maestri avvertono che a volte è più difficile dire cosa fosse.",
		"Il mestiere tiene un registro che non so leggere. Spero solo che alla fine i conti tornino a mio favore.",
		"I maghi anziani hanno una stanchezza tutta loro, come se avessero prestato qualcosa anni fa e non l'avessero più riavuto.",
	},
	["cls.mage.muse.w06.016"] = {
		"volge una mano col palmo in su e vi lascia ruotare sopra un minuscolo granello di gelo, lento, come un pensiero che viene soppesato.",
		"disegna un cerchio nell'aria con un dito; per un istante resta lì sospeso, viola e preciso, poi si disfa.",
		"mormora una sola sillaba e guarda l'aria davanti a sé tremare, poi quietarsi.",
	},
	["cls.mage.muse.w06.017"] = {
		"I maestri vendono il sapere un incantesimo dopo l'altro, a pagamento. Giusto, immagino. Qualcuno, prima di me, l'ha pagato ben più caro.",
		"Ogni formula nuova costa monete, poi settimane di pratica, poi qualche manica bruciacchiata. Alla fine sembra quasi di averla inventata io.",
		"La prima volta che un incantesimo nuovo funziona, sembra preso in prestito. Alla centesima è mio. A un certo punto, nel mezzo, cambia proprietario.",
	},
	["cls.mage.muse.w06.018"] = {
		"Reagenti, tuniche, libri, lezioni. La magia è un'ottima carriera, se per caso hai già i soldi.",
		"L'arcano è gratis. Tutto quello che serve per usarlo come si deve costa un patrimonio.",
		"Ci sarà pure un mago che si arricchisce, chissà dove. Vorrei conoscerlo e chiedergli come fa.",
	},
	["cls.mage.muse.w06.019"] = {
		"Stoffa e pensiero: è tutto ciò che sta fra me e i denti del mondo. Quasi sempre basta. Gli altri giorni cerco di non contarli.",
		"Ho scelto il mestiere che tiene le spalle al muro e lo sguardo lontano. I più coraggiosi scelgono altrimenti. Io sono ancora qui.",
		"Quelli in armatura ridono della stoffa. Però stanno davanti, ed è lì che di solito le risate finiscono.",
	},
	["cls.mage.muse.w06.020"] = {
		"Gli studiosi scrivono di linee di potere che scorrono sotto la terra come vene sotto la pelle. Credo di averne sentita una, qualche volta: una spinta sotto i piedi, come una corrente intorno alle caviglie.",
		"Sotto tutta questa terra le antiche correnti scorrono ancora. Il mestiere sta nell'imparare a berne senza farsi trascinare via.",
		"La magia più profonda del mondo non sta in nessuna torre. Sta sotto i piedi, e aspetta con pazienza da moltissimo tempo.",
	},
	["cls.mage.muse.w06.021"] = {
		"Sparire e ricomparire venti passi più avanti è meraviglioso. Vorrei solo poter scegliere dove atterrare.",
		"Venti metri, dritto davanti, senza fare domande. Non conosco incantesimo più onesto di questo balzo.",
		"Il segreto del balzo è guardare già dalla parte giusta prima di lanciarlo. Tutto il resto sono dettagli.",
	},
	["cls.mage.muse.w06.022"] = {
		"Mi esercito ancora sui primi incantesimi che ho imparato, quelli piccoli. Una crepa nelle fondamenta si vede in ogni piano di sopra.",
		"I maestri sono solo apprendisti che non hanno mai smesso di fare gli esercizi noiosi.",
		"Negli incantesimi facili si nascondono le cattive abitudini. Ci torno sopra con calma, come uno scrivano che torna all'alfabeto.",
	},
	["cls.mage.muse.w06.023"] = {
		"Per combattere indosso un mantello di brina. Nessuno crede a quante monete mi costino le calze di lana.",
		"Brina sulle spalle, brina sulle maniche. Ogni locandiere mi chiede di stare lontano dalla birra.",
		"L'armatura di brina tiene lontani i colpi. Anche le chiacchiere, a dirla tutta.",
	},
	["cls.mage.muse.w06.024"] = {
		"In ogni incantesimo di fuoco c'è un momento in cui vuole andare avanti. Lasciarlo andare è facile. Richiamarlo indietro, quello è il mestiere.",
		"Il fuoco è sincero su ciò che vuole: tutto. Il trucco è non dargli mai ragione.",
		"Il fuoco non tiene il broncio e non perdona. Fra tutti i miei attrezzi è quello che sorveglio più da vicino.",
	},
	["cls.mage.muse.w06.025"] = {
		"Il gelo insegna l'immobilità. Tieni una cosa abbastanza fredda e smette di discutere.",
		"Mi piace il suono del gelo che si forma: uno scricchiolio piccolo e secco, come una decisione presa.",
		"Il freddo è solo assenza di fretta. Gli incantesimi di gelo sono un modo per dire al mondo di aspettare.",
	},
	["cls.mage.muse.w06.026"] = {
		"Il fuoco brucia e il gelo lega, ma l'arcano si limita a riordinare. È quello che mi tiene {g:sveglio|sveglia} a pensare.",
		"L'arcano non ha un colore suo. Lo chiamiamo viola perché dobbiamo pur chiamarlo in qualche modo.",
		"L'arcano puro somiglia all'istante prima che una parola venga detta: tutto è possibile, niente è scelto.",
	},
	["cls.mage.muse.w06.027"] = {
		"Il mio zaino, a peso, è per metà libro di incantesimi. L'altra metà sono appunti sul libro di incantesimi.",
		"Gli altri si portano dietro corda e razioni. Io tre libri, una boccetta d'inchiostro e la vaga speranza di un angolo asciutto dove leggerli.",
	},
	["cls.mage.muse.w06.028"] = {
		"conta in silenzio sulle dita, perde il filo e ricomincia dal pollice.",
		"sfoglia un libretto di appunti, trova la pagina con l'orecchia e la legge muovendo le labbra senza suono.",
		"abbozza uno schema sul retro di un pezzo di pergamena, lo fissa con la fronte aggrottata e aggiunge una freccia che non indica niente di preciso.",
	},
	["cls.mage.muse.w06.029"] = {
		"A volte lancio l'incantesimo più semplice solo per vederlo funzionare. Che funzioni non smette mai di stupirmi.",
		"Avrò lanciato questo trucchetto mille volte, e una parte di me si ferma ancora a guardare quando riesce.",
		"In quasi tutti i mestieri la meraviglia si consuma. In questo ricresce.",
	},
	["cls.mage.muse.w06.030"] = {
		"Posso essere a casa in dieci secondi, purché casa sia una capitale e abbia comprato la runa.",
		"Il teletrasporto: il modo più veloce di viaggiare, e il più costoso per dimenticare qualcosa alla locanda.",
		"Ogni volta che mi teletrasporto lascio indietro un po' di dignità. E di solito una tazza di qualcosa.",
	},
	["cls.mage.muse.w06.031"] = {
		"I vecchi ammonimenti parlano di maghi che bevevano magia come vino, finché non riuscivano più a smettere. Io conto i bicchieri. Dicono che anche così si comincia.",
		"C'è una fame che il mestiere può svegliare, dicono i maestri, e nessun pane evocato la sazierà mai. Faccio caso a ciò che cercano le mie mani quando non hanno niente da fare.",
		"Certi giorni mi sorprendo a lanciare incantesimi solo per sentire com'è. Allora infilo le mani nelle maniche e aspetto che passi.",
	},
	["cls.mage.muse.w06.032"] = {
		"Con l'incantesimo che rivela la magia vedo le cuciture nascoste del mondo: un sortilegio su un bracciale, una protezione su una porta, una maledizione che nessuno ha confessato. Quasi sempre preferirei non saperlo.",
		"È incredibile quanta parte del mondo sia incantata, se ti prendi la briga di guardare, e quanto poco qualcuno si ricordi di averla incantata.",
	},
	["cls.mage.muse.w06.033"] = {
		"Un giorno scriverò una pagina che qualcun altro dovrà studiare. È tutta qui la mia ambizione.",
		"C'è un incantesimo che ancora nessuno ha scoperto. Ho intenzione di trovarmi nei paraggi quando salterà fuori.",
		"Mi basterebbe il mio nome a margine di un buon libro. Non in copertina: è a margine che si fa il vero lavoro.",
	},
	["cls.mage.muse.w06.034"] = {
		"Sedersi, evocare, bere, aspettare. Il ritmo della giornata di un mago ha più pause di quanto si ammetta.",
		"Metà di questo mestiere consiste nel sedersi con una bevanda evocata, aspettando che la mente si riempia di nuovo.",
		"Combattere, poi bere. Combattere, poi mangiare. Non c'è gloria in tutto questo, ma non si può nemmeno saltare.",
	},
	["cls.mage.muse.w06.035"] = {
		"Tutto quello che possiedo sa un po' di bruciaticcio. Ho smesso di scusarmene.",
		"Le mie tuniche hanno più forellini di bruciatura che bottoni. Io la chiamo aerazione.",
	},
	["cls.mage.muse.w06.036"] = {
		"Un incantesimo è metà significato e metà suono. Azzecchi il significato e sbagli il suono, e non succede niente; o peggio, succede qualcosa.",
		"Le sillabe di una formula sono più antiche di chiunque le pronunci. Cerco di dirle con educazione.",
	},
	["cls.mage.muse.w06.037"] = {
		"Dicono che il padrone di Naxxramas fosse un tempo un rispettato mago di Dalaran, andato a cercare nei libri sbagliati. Ogni studente dovrebbe sentire quella storia una volta l'anno.",
		"La negromanzia del Flagello cominciò con un mago che voleva sapere di più, dicono i vecchi studiosi. Anch'io voglio sapere di più. Ci penso.",
	},
	["cls.mage.muse.w06.038"] = {
		"Studio l'arcano, non sono un pozzo. Anche se ammetto che la differenza si vede sempre meno.",
		"Se qualcun altro mi porge una borraccia vuota senza dire una parola, gli evoco una nuvoletta piccola piccola.",
	},
	["cls.mage.muse.w06.039"] = {
		"La gente fa un mezzo passo indietro davanti a un mago, anche la gente amichevole. Non lo fa apposta. Farei lo stesso.",
		"Quando parlo, la gente mi guarda le mani. Ho smesso di gesticolare troppo. Le conversazioni sono più tranquille.",
	},
	["cls.mage.muse.w06.040"] = {
		"Il coraggio di un mago non fa rumore. Consiste nel restare abbastanza calmi da finire la frase.",
		"La paura fa tremare le mani, e le mani che tremano rovinano le formule. Quindi posso avere paura solo dopo.",
		"I maghi coraggiosi sono quelli che non alzano la voce. Il resto è teatro.",
	},
	["cls.mage.muse.w06.041"] = {
		"Scrivo tutto. Metà non serve a niente, e non riesco mai a capire in anticipo quale metà.",
		"I miei appunti sono un groviglio di frecce, cancellature e parole in tre calligrafie diverse, tutte mie, in giorni diversi.",
		"Se perdessi i miei appunti perderei un anno. Li tengo più stretti delle monete.",
	},
	["cls.mage.muse.w06.042"] = {
		"evoca una tazza d'acqua, la beve in un lungo sorso e ne evoca un'altra senza fermarsi.",
		"si siede un momento con una borraccia evocata in mano e fissa il vuoto, aspettando che la mente {g:lo|la} raggiunga.",
		"si massaggia le tempie con due dita, come fa uno studioso dopo troppe pagine.",
	},
	["cls.mage.muse.w06.043"] = {
		"Le gemme di mana: la risposta del mestiere alla domanda «e se potessi tenere un pensiero di scorta in tasca?»",
		"Mi porto le riserve in una pietruzza che brilla. Prima o poi qualcuno cercherà di comprarla come gioiello, e non so se dirò di no.",
	},
	["cls.mage.muse.w06.044"] = {
		"Un bollitore bolle col fuoco, un mulino gira col vento. La magia fa le stesse cose, solo senza chiedere il permesso.",
		"Togli le tuniche e il gergo, e la magia è solo persuasione. Il mondo è ragionevole, se parli la sua lingua.",
	},
	["cls.mage.muse.w06.045"] = {
		"Con la caduta lenta ogni dirupo diventa un invito. Sto imparando a declinarne la maggior parte.",
		"Con una piuma e le parole giuste scendo giù come una foglia. Poco dignitoso, ma {g:tutto intero|tutta intera}.",
	},
	["cls.mage.muse.w06.046"] = {
		"Potrei incendiare un fienile da dove mi trovo. Saperlo, ogni singolo giorno, e scegliere di non farlo: questa è la vera disciplina.",
		"Il mestiere ti dà i mezzi per rovinare le cose prima di insegnarti perché non dovresti. L'ordine andrebbe invertito.",
		"Distruggere è la prima cosa che il mestiere impara a fare bene, e l'ultima di cui dovrebbe andare fiero.",
	},
	["cls.mage.muse.w06.047"] = {
		"Tieni, prendine un po'. Il pane evocato è l'unico regalo che posso sempre permettermi.",
		"Hai fame? Ho del pane, fatto un attimo fa. È la cosa meno magica che faccio, e la più gradita.",
	},
	["cls.mage.muse.w06.048"] = {
		"La concentrazione è un muscolo che nessuno vede. A fine giornata il mio fa più male delle gambe.",
		"Tenere fermo un incantesimo mentre il mondo ti urla addosso: tutto l'addestramento è qui. Il resto è vocabolario.",
	},
	["cls.mage.muse.w06.049"] = {
		"Chiedi a un soldato cos'è la magia e ti risponderà «urlare all'aria». Non ha tutti i torti, ed è proprio questo che irrita.",
		"Ogni spadaccino pensa che la magia sia la via facile. Provino loro a ricordare quaranta sillabe in fila mentre qualcosa li insegue.",
	},
	["cls.mage.muse.w06.050"] = {
		"La morte mi ha tolto molto, ma mi ha lasciato le formule. La mente ha conservato i suoi libri quando il corpo ha perso il calore.",
		"Niente respiro da calmare, nessun battito da placare. La non-morte ha fatto di me {g:un incantatore molto ordinato|un'incantatrice molto ordinata}.",
		"I vivi temono che le mani tremino. Le mie non tremano più dalla tomba. Una piccola grazia dentro una grande sventura.",
	},
	["cls.mage.muse.w06.051"] = {
		"I vecchi della tribù si fidano più dei loa e del vudù che di qualsiasi libro. Io mi fido del libro. Il rispetto dei vecchi lo conservo comunque.",
		"I maghi Darkspear sono pochi, dicono. Pochi va bene. Pochi vuol dire che nessun altro ha letto i miei libri prima di me.",
	},
	["cls.mage.muse.w06.052"] = {
		"Gli altri gnomi costruiscono macchine. Io costruisco formule. In fondo è lo stesso lavoro, con meno bulloni da perdere.",
		"I maghi gnomi hanno la fama di essere piccoli di statura e grandi nelle esplosioni. Conto di meritarmene solo metà.",
	},
	["cls.mage.muse.w06.053"] = {
		"Stormwind tollera i suoi maghi come una casa tollera una stufa: grata del calore, in ansia per le pareti.",
		"Il Mage Quarter di Stormwind è il posto silenzioso più rumoroso che conosca. Ogni finestra sta studiando qualcosa.",
	},
	["cls.mage.muse.w06.054"] = {
		"Se mai qualcuno mi chiedesse di insegnargli, comincerei da come si ferma un incantesimo, non da come si comincia.",
		"La prima cosa che insegnerei a un apprendista: i libri sono pazienti, l'arcano no. Sappi sempre con chi stai parlando.",
	},
	["cls.mage.muse.w06.055"] = {
		"Il pane evocato sa di un forno che conosci solo per sentito dire. Abbastanza vicino da consolare, abbastanza lontano da sembrare strano.",
		"Ho cominciato a salare il pane evocato. Una piccola ribellione. Aiuta.",
	},
	["cls.mage.muse.w06.056"] = {
		"I libri più antichi dicono che l'arcano sia piovuto nel mondo da qualche luogo ben oltre il cielo. Non so se crederci, ma mi sorprendo a guardare in alto.",
		"Certi studiosi sostengono che la magia sia più antica del mondo che attraversa. Se è così, siamo tutti ospiti in casa sua.",
	},
	["cls.mage.muse.w06.057"] = {
		"I kaldorei guardano i maghi come se ricordassero qualcosa che noi abbiamo dimenticato. Gli studiosi dicono che è così: un pozzo, una regina e un mondo spezzato.",
		"Chiedi a un druido di Darnassus cosa pensa dell'arcano e guarda il suo viso chiudersi come una porta. Hanno le loro ragioni, mi dicono, più antiche di qualsiasi regno.",
	},
	["cls.mage.muse.w06.058"] = {
		"Le tuniche sono splendide per studiare e pessime per le scale, il fango, i cavalli e la corsa. Quindi: splendide per studiare.",
		"I pantaloni sarebbero più pratici. Ma allora chi capirebbe che sono {g:un mago|una maga}? Le scintille, immagino.",
	},
	["cls.mage.muse.w06.059"] = {
		"Aprire un portale per gli altri è una fiducia strana. Entrano nel nulla perché ho detto io che era sicuro.",
		"Il portale è l'unico incantesimo che lancio dentro cui altri camminano. Controllo il lavoro due volte.",
	},
	["cls.mage.muse.w06.060"] = {
		"si fa immobile, gli occhi socchiusi, come se ascoltasse una conversazione nella stanza accanto.",
		"si ferma a metà passo e inclina la testa, l'attenzione catturata da qualcosa che nessun altro percepisce.",
	},
	["cls.mage.muse.w06.061"] = {
		"Una vita è troppo corta per una sola scuola, figuriamoci per tre. Cerco di non fare quel conto troppo spesso.",
		"Per quanto tempo mi venga concesso, avrò letto forse un decimo di ciò che vale la pena leggere. L'aritmetica non perdona.",
	},
	["cls.mage.muse.w06.062"] = {
		"Spendo il mana come un viaggiatore prudente spende le monete: un po' per ciò che serve, niente per ciò che fa solo scena.",
		"Ogni incantesimo ha il suo prezzo in mana, e il conto arriva sempre nel momento peggiore. Così ne tengo sempre un po' da parte.",
	},
	["cls.mage.muse.w06.063"] = {
		"Anche Lordaeron aveva i suoi maghi, e torri, e biblioteche. Le rovine non dicono quali libri siano bruciati. Me lo chiedo lo stesso.",
		"Le guerre bruciano per prime le biblioteche. Chiunque vinca, a perdere sono gli studiosi.",
	},
	["cls.mage.muse.w06.064"] = {
		"Per una mente paziente, il mondo è una biblioteca che non chiude mai.",
		"Il sapere raddoppia quando lo si condivide. È la mia scusa per parlare così tanto.",
	},
	["cls.mage.muse.w06.065"] = {
		"Certe mattine mi sveglio con mezza formula in testa e passo la giornata a dare la caccia all'altra metà.",
		"Le idee migliori arrivano mentre faccio tutt'altro: allacciarmi gli stivali, girare una pentola. L'arcano ha il senso dell'umorismo.",
		"Ho risolto più problemi per strada che a un tavolo. Camminare scuote i pensieri.",
	},
	["cls.mage.muse.w06.066"] = {
		"Ti serve qualcosa di fresco? Col freddo me la cavo bene. Anche col caldo. È col tiepido che vado in crisi.",
		"Posso raffreddarti la bevanda, la minestra o il nemico. Scegline uno: sto risparmiando mana.",
		"Ghiaccio nella birra? Uno spreco di una formula come si deve, e lo faccio lo stesso.",
	},
	["cls.mage.muse.w06.067"] = {
		"Gli studiosi dicono che fu la magia, usata con troppa leggerezza, ad attirare per prima lo sguardo della Legione su questo mondo. Ogni incantesimo che lancio è una piccola lampada in un campo molto buio.",
		"Se le antiche cronache dicono il vero, i demoni vennero perché il mondo brillava troppo di magia. Io tengo i miei incantesimi modesti. Mi sembra il minimo.",
	},
	["cls.mage.muse.w06.068"] = {
		"Troppo arcano lascia in fondo alla lingua un sapore di monete vecchie. Ho imparato a fermarmi al primo accenno.",
		"Quando la mente è stata spinta troppo in là, i colori si assottigliano ai bordi. È il segnale per sedersi e smettere di fare {g:il furbo|la furba}.",
		"L'arcano ha una sua stanchezza: non nelle gambe, ma dietro gli occhi, dove abita il pensiero.",
	},
	["cls.mage.muse.w06.069"] = {
		"fa rotolare una fiammella sulle nocche come una moneta, avanti e indietro, poi chiude il pugno e la fiamma sparisce.",
		"accende la punta di un dito come una candela, ne studia la fiamma per un istante, poi la spegne fra due dita.",
		"lascia che un sottile nastro di brina si avvolga attorno al polso, lo guarda sciogliersi e si asciuga il polso sulla manica.",
	},
	["cls.mage.muse.w06.070"] = {
		"Spezzare l'incantesimo di un altro è come finirgli la frase al posto suo, con maleducazione, a metà. Mi diverte più del dovuto.",
		"C'è una strana intimità nel leggere l'incantesimo di qualcuno abbastanza in fretta da spezzarlo. Per un istante, in due, sappiamo esattamente cosa voleva dire.",
	},
	["cls.mage.muse.w06.071"] = {
		"Il guaio di essere intelligenti è che tutti se lo aspettano ogni volta. Vorrei un pomeriggio di stupidità al mese.",
		"Essere chi sa le cose stanca. A volte preferirei essere chi porta le casse.",
	},
	["cls.mage.muse.w06.072"] = {
		"Il mana si muove come l'acqua: trova i punti bassi, riempie ciò che è vuoto e consuma qualunque cosa gli si opponga abbastanza a lungo.",
		"Penso alle mie riserve come a un pozzo. Se attingi troppo in fretta, tiri su fango.",
	},
	["cls.mage.quest_complete.w06.001"] = {
		"Un'altra commissione finita. Finisce nel taccuino, fra una ricetta per l'inchiostro e una teoria che non sono {g:pronto|pronta} a mostrare a nessuno.",
		"Fatto. Il taccuino guadagna una riga, e la riga un punto interrogativo, perché non sono ancora {g:sicuro|sicura} del perché abbia funzionato.",
		"Finito, e archiviato. La mia memoria è una biblioteca, e ogni incarico ha il suo scaffale, per quanto piccolo.",
	},
	["cls.mage.quest_complete.w06.002"] = {
		"{g:Pagato|Pagata}, o quasi. I reagenti non si comprano da soli.",
		"Qualunque cosa valga, nella mia testa l'ho già spesa in reagenti.",
		"La mia borsa ti ringrazia. Il sacchetto dei reagenti ancora di più.",
	},
	["cls.mage.quest_complete.w06.003"] = {
		"accoglie i ringraziamenti con un piccolo inchino e un lieve crepitio di scintille da una manica.",
		"china il capo con garbo, poi si spazzola via dal polsino qualche scintilla vagante prima di stringere la mano.",
		"annuisce una volta, come uno studioso davanti a una risposta giusta, e volta pagina verso ciò che viene dopo.",
	},
	["cls.mage.quest_complete.w06.004"] = {
		"Compito svolto. Adesso una tazza d'acqua evocata e cinque minuti senza essere utile a nessuno.",
		"E anche questa è fatta. Mi siedo, bevo qualcosa che ho fatto dal nulla, e lascio che la testa smetta di far di conto.",
		"Finito. Il mana può tornare con calma: per il momento nessuno mi insegue.",
	},
	["cls.mage.quest_complete.w06.005"] = {
		"Noterai che è tutto ancora in piedi. Vorrei che lo si scrivesse in qualunque rapporto.",
		"Nemmeno una bruciatura. Mi sono {g:trattenuto|trattenuta} parecchio. Dillo in giro.",
		"Lavoro pulito, e nessuno è stato trasformato in niente. Prego.",
	},
	["cls.mage.quest_complete.w06.006"] = {
		"Il compito in sé era semplice. Ciò che ho notato lungo la strada mi farà pensare per giorni.",
		"Le commissioni sono una scusa per guardare da vicino un mondo che altrimenti conoscerei solo dai libri.",
		"Lavoro ordinario, fatto bene. Non tutto deve essere una scoperta, anche se ne ho cercata una lo stesso.",
	},
	["cls.mage.quest_complete.w06.007"] = {
		"Se qualcos'altro dovesse richiedere una mente ferma e un po' di fuoco, mandami a chiamare.",
		"Se il prossimo problema va oltre una spada, chiedi pure a me.",
		"Chiamami ancora. Costo meno di una torre piena di maestri e rispondo prima.",
	},
	["cls.mage.quest_complete.w06.008"] = {
		"Mi hanno {g:ringraziato|ringraziata} per il risultato senza chiedere come. Meglio così. Non so se saprei spiegarlo con delicatezza.",
		"La gratitudine ha sempre un sapore strano quando il lavoro l'ha fatto la magia. A nessuno piace guardare troppo da vicino i mezzi.",
	},
	["cls.mage.quest_complete.w06.009"] = {
		"Non male per qualcuno in tunica, eh? La tunica la sottovalutano tutti.",
		"I maghi sembrano fragili finché il lavoro non è finito. Dopo sembrano solo compiaciuti.",
		"La prossima volta fidati un po' prima della tunica.",
	},
	["cls.mage.quest_complete.w06.010"] = {
		"infila la ricompensa in una tasca già affollata di appunti piegati e di una penna d'oca che ha visto giorni migliori.",
		"fa spazio alla ricompensa spostando un libretto da una tasca all'altra, e poi di nuovo indietro.",
		"osserva la ricompensa con l'interesse cortese di chi ne sta calcolando il valore in reagenti.",
	},
	["cls.mage.quest_complete.w06.011"] = {
		"Per cena avranno dimenticato il mio nome. Il lavoro resterà fatto. Con quest'ordine delle cose ho fatto pace.",
		"Nessuno ricorda chi ha sistemato una cosa, solo che è sistemata. I maghi dovrebbero esserci abituati, ormai.",
	},
	["cls.mage.quest_complete.w06.012"] = {
		"Tutto fatto! Qualcuno ha fame? Ho voglia di evocare qualcosa per festeggiare.",
		"Finito. Pane per tutti, offro io. Be', offre l'arcano.",
	},
	["cls.mage.quest_complete.w06.013"] = {
		"Gli incantesimi sono la parte facile di ogni commissione. Trovare la persona giusta, fare la domanda giusta: è lì che inciampo.",
		"Metà di ogni incarico è parlare con la gente. I maestri questo non l'hanno mai insegnato.",
		"Preferirei affrontare tre elementali piuttosto che uno scrivano col suo registro. Comunque: fatto.",
	},
	["cls.mage.quest_complete.w06.014"] = {
		"chiude gli occhi per un istante, come chi rimette al suo posto sullo scaffale una pagina finita.",
		"rilassa le spalle, e la brina leggera rimasta attaccata alle maniche svanisce.",
		"si guarda le mani, che finalmente hanno smesso di ronzare, e le intreccia dietro la schiena.",
	},
	["cls.mage.quest_complete.w06.015"] = {
		"La prossima volta che ti serve un mago, dammi la parte interessante. Le corse avanti e indietro le lascio a qualcun altro.",
		"Anni di studio, ed eccomi a sbrigare commissioni. I miei maestri sarebbero tanto fieri. O perplessi.",
		"In tutta la faccenda, neanche una questione arcana. Sono quasi {g:deluso|delusa}.",
	},
	["cls.mage.quest_complete.w06.016"] = {
		"Una piccola cosa rimessa a posto. Oggi il mondo non aveva bisogno di un grande incantesimo; aveva bisogno di questo.",
		"Non ogni cosa buona è un grande incantesimo. A volte è solo trovarsi dove qualcuno aveva bisogno di una mano.",
	},
	["cls.mage.quest_complete.w06.017"] = {
		"Un compito finito lascia sempre dietro di sé una piccola domanda, come una briciola sul tavolo. Non riesco mai a lasciarla lì.",
		"La risposta che volevano era semplice. La domanda che ci stava sotto no. Quella la tengo per me.",
	},
	["cls.mage.quest_complete.w06.018"] = {
		"Un'altra pagina nel registro. Piccola, ma scritta di mio pugno.",
		"Il lavoro è fatto, e fatto bene. È l'unica firma di cui un mago abbia bisogno.",
		"Si dica pure che ho finito ciò che avevo cominciato, fino all'ultima riga.",
	},
	["cls.mage.quest_complete.w06.019"] = {
		"evoca una borraccia d'acqua, ne beve un lungo sorso e offre il resto, con un cenno del capo, a chi è più vicino.",
		"si siede sulla prima superficie piana che trova, evoca una tazza e la beve piano, come una ricompensa meritata.",
	},
	["cls.mage.quest_complete.w06.020"] = {
		"Ogni compito finito rende il libro degli incantesimi un po' più pesante, nel senso buono. Come una dispensa piena.",
		"L'esperienza è l'unico reagente che nessuno può venderti. Oggi ne ho raccolto un po' di più.",
	},
	["cls.mage.quest_complete.w06.021"] = {
		"Vorrei una ricevuta. I maghi tengono nota di tutto, e mi dispiacerebbe cominciare proprio ora a essere {g:distratto|distratta}.",
		"Annota pure nel tuo registro: completato da {g:un mago|una maga}, in orario, più o meno {g:intero|intera}.",
	},
	["cls.mage.quest_complete.w06.022"] = {
		"Alla fine nessuno ingaggia un mago per la magia. Lo ingaggia per la pazienza. La magia viene in più.",
		"A chiudere questo incarico non è stato un incantesimo. È stato stare {g:fermo|ferma} abbastanza a lungo da pensare. È questo il vero addestramento.",
		"I maestri non mi avevano detto che quasi tutto il mio lavoro sarebbe stato ascoltare. Avrebbero dovuto.",
	},
	["cls.mage.quest_complete.w06.023"] = {
		"Contarla? No. I maghi contano le formule, non le monete. Anche se ammetto di aver dato un'occhiata.",
		"Grazie. Farò finta che non finisca dritto da un sarto per sostituire la manica che ho bruciacchiato.",
		"Gentile da parte tua. Entro fine settimana sarà diventato tutto candele e inchiostro.",
	},
	["cls.mage.victory.w06.001"] = {
		"Dimostrazione pratica. La mia preferita.",
		"Ecco fatto. Se qualcuno chiede, era tutto previsto dalla teoria.",
		"La teoria regge. Lo dirò alla biblioteca.",
	},
	["cls.mage.victory.w06.002"] = {
		"Acqua evocata, un posto dove sedersi e qualche minuto di niente. Ecco la mia ricompensa.",
		"Il mana torna a sorsi. Non si può affrettarlo, e non ci provo nemmeno.",
		"L'acqua evocata non disseta mai del tutto, ma ce n'è sempre dell'altra.",
	},
	["cls.mage.victory.w06.003"] = {
		"si lascia andare a sedere dove si trova, gli occhi socchiusi, in attesa che il potere speso torni a filtrare.",
		"scuote entrambe le mani come per togliersi l'acqua di dosso, e le ultime scintille si spargono e muoiono a terra.",
		"scioglie, una spalla dopo l'altra, la rigidità di chi ha tenuto una formula troppo a lungo.",
	},
	["cls.mage.victory.w06.004"] = {
		"La prossima volta, un'altra scuola. Solo per fare il confronto.",
		"La prossima volta provo in un altro modo. Stesso risultato, immagino, ma più pulito.",
	},
	["cls.mage.victory.w06.005"] = {
		"Non sapeva cosa fossi. Quasi nessuno lo sa, fino alla fine.",
		"È finita con poche sillabe. Dovrebbe pesare più di così.",
		"Non ha mai capito cosa l'abbia colpito. Non sono {g:sicuro|sicura} che sia una grazia.",
	},
	["cls.mage.victory.w06.006"] = {
		"Parole, volontà, e la pazienza di pronunciarle bene. Tutto il mestiere è qui.",
		"Niente male per un topo di biblioteca in veste.",
		"Ecco il mestiere: un po' di sapere, detto al momento giusto.",
	},
	["cls.mage.victory.w06.007"] = {
		"Fammi controllare la veste. Ah. Un altro orlo da ricucire.",
		"Ce l'abbiamo fatta, io e la mia veste. Solo una delle due lo dimostra.",
	},
	["cls.mage.victory.w06.008"] = {
		"Interessante, come si muoveva. Me lo devo ricordare per il prossimo.",
		"Ho speso più mana del necessario. La prossima volta, più parsimonia.",
		"Vale la pena di annotarlo. Non la vittoria: il modo in cui è andata.",
	},
	["cls.mage.victory.w06.009"] = {
		"Dunque, dov'ero {g:rimasto|rimasta}? Più o meno a pagina quaranta.",
		"Torniamo agli appunti. È stata una lunga interruzione.",
	},
	["cls.mage.victory.w06.010"] = {
		"abbassa le mani, e l'aria attorno a loro dimentica pian piano cosa le era stato chiesto.",
		"lascia scivolare dalle dita l'ultimo potere raccolto, come acqua da mani a coppa.",
		"chiude le mani, e il formicolio nell'aria si spegne come una campana che smette di vibrare.",
	},
	["cls.mage.victory.w06.011"] = {
		"Un bell'esemplare. Peccato non essere {g:riuscito|riuscita} a tenerlo intero.",
		"Mi sarebbe piaciuto studiare la cosa più a fondo. Non condivideva il mio entusiasmo.",
		"Avrei preso appunti, ma continuava a muoversi.",
	},
	["cls.mage.victory.w06.012"] = {
		"Voi avete tenuto la linea, io ho chiuso il conto. È così che deve andare.",
		"Grazie di aver fatto da scudo. La stoffa apprezza più di quanto dica.",
	},
	["cls.mage.victory.w06.013"] = {
		"Un attimo fa c'erano vita e furia. Ora c'è una lezione. Questo conto non mi piace.",
		"Qui c'era qualcosa di vivo, e una frase ha messo fine a tutto. Non dovrebbe mai sembrare normale.",
	},
	["cls.mage.victory.w06.014"] = {
		"Fatto. Un minuto di silenzio, per favore. Il mana torna più lentamente se la gente parla.",
		"Un momento. La testa ci mette più dello scontro a calmarsi.",
	},
	["cls.mage.victory.w06.015"] = {
		"si controlla le maniche in cerca di braci per pura abitudine, non ne trova e sembra quasi {g:deluso|delusa}.",
		"si sistema la veste, ne liscia due volte il davanti e si guarda attorno come in attesa del voto di un esaminatore.",
		"spegne un'ultima scintilla ostinata tra pollice e indice, come lo stoppino di una candela.",
	},
	["cls.mage.victory.w06.016"] = {
		"Ecco perché studio. Scontri brevi, più tempo per i libri.",
		"Teoria, ti presento la pratica. Pratica, la teoria. Dovreste parlarvi più spesso.",
	},
	["cls.mage.victory.w06.017"] = {
		"Le mani mi tremano un po'. Lasciale fare. Il loro lavoro l'hanno fatto.",
		"Il dopo è sempre la parte strana: il potere se n'è andato, e resto solo io, in piedi nella mia veste.",
		"La paura arriva dopo. Aspetta sempre che sia tutto finito.",
	},
	["cls.mage.victory.w06.018"] = {
		"Qualcuno si segni il tempo. Voglio migliorarlo.",
		"Più veloce di quanto dica il manuale. Dovrò scrivere all'autore.",
		"È stato rapido? Mi è sembrato rapido. Dovrei cronometrarli per bene.",
	},
	["cls.mage.victory.w06.019"] = {
		"Un buon combattimento si legge come una dimostrazione ben fatta: ogni passaggio segue dal precedente.",
		"Quello scontro aveva una forma. Potrei quasi disegnarla.",
		"Ogni incantesimo rispondeva al precedente. È così che mi piace leggere uno scontro.",
	},
	["cls.mage.victory.w06.020"] = {
		"Una veste è un avvertimento, non un invito. Fallo sapere in giro.",
		"Dillo agli altri: chi va in stoffa morde.",
	},
	["cls.mage.victory.w06.021"] = {
		"Aggiungilo agli appunti: avvicinamento, reazione, esito. Una pagina per ogni scontro, e un giorno un libro.",
		"Un'altra voce per il taccuino. Dopo ogni scontro la calligrafia peggiora.",
	},
	["cls.mage.victory.w06.022"] = {
		"tira fuori dal nulla una borraccia d'acqua evocata e la beve a sorsi lunghi, senza fretta.",
		"evoca una tazza d'acqua, ne beve metà e guarda il resto {g:accigliato|accigliata}, come se avesse fallito un esame.",
	},
	["cls.mage.victory.w06.023"] = {
		"Il silenzio dopo aver speso potere è la parte peggiore. Tutto sembra più spento, per un po'.",
		"Certi maghi inseguono quell'ebbrezza da uno scontro all'altro. Capisco come succede. A me non succederà.",
		"Quella spinta quando un incantesimo va a segno è ciò che divora la gente. Notala, e poi mettila giù.",
	},
	["cls.mage.victory.w06.024"] = {
		"Ah, eccola, la sensazione. Come azzeccare una lunga somma al primo colpo.",
		"Splendido. Tutto è andato dove l'avevo messo.",
		"Pulito. Molto pulito. Lo farei incorniciare.",
	},
	["cls.mage.victory.w06.025"] = {
		"Caldo o freddo, finisce allo stesso modo. Cambio solo per non annoiarmi.",
		"Fuoco, gelo, arcano: tutte strade che portano allo stesso silenzio.",
	},
	["cls.mage.victory.w06.026"] = {
		"Controlla i dintorni prima di festeggiare. I maghi che non lo fanno imparano cos'è un'imboscata nel modo più breve.",
		"Fatto. Distanza, mana, dintorni. Controlla tutti e tre prima di rilassarti.",
		"Prima di tutto, occhi aperti. Il prossimo potrebbe già essere in arrivo.",
	},
	["cls.mage.victory.w06.027"] = {
		"I guerrieri si tengano le loro cicatrici. Io prendo il risultato pulito.",
		"Niente lama, niente scudo. Solo lo studio, e la testardaggine di metterlo in pratica.",
		"Nessuno ha bisogno di uno scudo se il problema non arriva mai fin lì.",
	},
	["cls.mage.victory.w06.028"] = {
		"evoca una pagnotta, la guarda senza entusiasmo e se la mangia lo stesso.",
		"fa comparire dal nulla una pagnotta rotonda e la mastica con l'aria di chi compie un dovere.",
	},
	["cls.mage.victory.w06.029"] = {
		"Qualunque istruttore avrebbe fatto una smorfia davanti alla mia tecnica. Per fortuna non guardava nessuno.",
		"La postura era un disastro. Il risultato no. Lo scambio mi sta bene.",
	},
	["cls.mage.victory.w06.030"] = {
		"L'acqua la offro io. In fila ordinata, per favore.",
		"Chi ha sete? Non rispondete tutti insieme: la risposta la so già.",
	},
	["cls.mage.victory.w06.031"] = {
		"Concluso. Sufficiente, con parecchio inchiostro rosso a margine.",
		"Lavoro accettabile. L'ho visto fare più pulito, soprattutto sui libri.",
	},
	["cls.mage.victory.w06.032"] = {
		"Finito. E io sono ancora qui a pensarci. Questa parte non diventa mai normale.",
		"Un altro scontro superato sapendone più dell'altra parte. Continuerò a studiare.",
	},
	["cls.mage.victory.w06.033"] = {
		"osserva il luogo dello scontro strizzando gli occhi con aria critica, come se dovesse dargli un voto.",
		"si spolvera le mani adagio, una contro l'altra, e si lascia sfuggire un lungo mugolio soddisfatto.",
		"lascia finalmente cadere le spalle, e il debole ronzio che aleggiava attorno a sé per tutto lo scontro si spegne.",
	},
	["cls.mage.victory.w06.034"] = {
		"Un altro per la collezione. L'esperienza, intendo: io i trofei non li tengo.",
		"Bene. Questa va nella colonna delle cose andate bene, che è più corta di quanto pensi.",
	},
	["cls.mage.victory.w06.035"] = {
		"Le dita mi fanno male a forza di dare forma. Strano che la magia stanchi proprio le mani.",
		"Un dolore sordo dietro gli occhi. Il solito conto della concentrazione.",
		"Mi è costato più di quanto sembrasse. I maghi pagano sempre in concentrazione.",
	},
	["cls.mage.victory.w06.036"] = {
		"Ecco cosa succede a disturbare chi legge.",
		"Che sia di lezione a chiunque stia guardando. Il sapere morde.",
	},
	["cls.mage.victory.w06.037"] = {
		"Quello che ho evocato sta ancora svanendo dalle dita. È lì che resta più a lungo.",
		"Caldo o freddo, le mani se lo ricordano per un po'.",
	},
	["cls.mage.victory.w06.038"] = {
		"Qualcuno è ferito? Ditemi di no, vi prego. Ricucire non rientra nelle mie scuole.",
		"Nessun pezzo mancante? Bene. Io so solo rompere.",
	},
	["cls.mage.victory.w06.039"] = {
		"Dopo questo darei parecchio per del pane vero. Non evocato. Vero.",
		"Di nuovo pane evocato, immagino. Riempie lo stomaco, non l'anima.",
	},
	["cls.mage.victory.w06.040"] = {
		"Nessuno a guardare, ed è stato uno dei miei lavori migliori. Tipico.",
		"Nessuno a cui raccontarlo. Lo racconterò al taccuino.",
	},
	["cls.paladin.buff.w06.001"] = {
		"alza una mano in un gesto breve e semplice, e un luccichio dorato si posa sulle spalle e vi svanisce dentro.",
		"traccia un piccolo segno nell'aria, e per un istante la luce attorno a {g:lui|lei} si fa più calda, come il sole tardo su un muro.",
	},
	["cls.paladin.heal.w06.001"] = {
		"La Luce non chiede se la ferita sia meritata. Nemmeno io, almeno fino a dopo.",
		"Non ho mai dovuto convincere la Luce a guarire. Il difficile è smettere di menare colpi quel tanto che basta per chiederglielo.",
	},
	["cls.paladin.heal.w06.002"] = {
		"L'arma può aspettare un battito. La Luce ha altro lavoro per queste mani.",
		"Colpire, risanare, colpire di nuovo. La Luce non lascia mai un paladino con le mani in mano.",
	},
	["cls.paladin.heal.w06.003"] = {
		"In piedi quando te la senti, non prima. La Luce ti ha regalato un po' di tempo.",
		"Respira e lascia passare. Ho chiesto per te, e la Luce ha risposto.",
		"Calma, adesso. Quella ferita appartiene a ieri.",
	},
	["cls.paladin.heal.w06.004"] = {
		"annuisce una volta, con soddisfazione, quando il dolore cede: come davanti a un dovere compiuto a regola d'arte.",
		"serra la mascella mentre il dolore si attenua, come se anche la guarigione fosse un dovere da sopportare in piedi.",
	},
	["cls.paladin.heal.w06.005"] = {
		"Un sorso e di nuovo in prima linea. Una preghiera ci mette più di un tappo.",
		"Giù tutto d'un fiato, come una razione da soldato. Tra un attimo la Luce riavrà le mie mani.",
	},
	["cls.paladin.heal.w06.006"] = {
		"Tutto ciò che mi resta, versato in un colpo solo. Resterò {g:svuotato|svuotata} a lungo, e ne sarò {g:contento|contenta}.",
		"Tutto, subito. Quando chiedo così, la Luce non tiene niente da parte.",
	},
	["cls.paladin.heal.w06.007"] = {
		"preme il palmo guantato sulla ferita, e la Luce vi risale come il calore di un focolare di pietra.",
		"pronuncia una sola volta il nome della Luce, senza enfasi, e un bagliore dorato scorre sulla ferita lasciandola intera.",
	},
	["cls.paladin.heal.w06.008"] = {
		"Il livido guarisce gratis. L'ammaccatura nell'armatura è un altro discorso.",
		"La carne si rimette a posto. Il fabbro, purtroppo, l'armatura me la fa ancora pagare.",
	},
	["cls.paladin.heal.w06.009"] = {
		"La pietra di un warlock nella mano di un paladino. La Luce e io abbiamo convenuto di non parlarne.",
		"Roba da warlock, eppure guarisce lo stesso. Con la Luce ne riparlerò più tardi.",
	},
	["cls.paladin.rezother.w06.001"] = {
		"Alzati. Qualunque cosa ti sia costata la caduta, la Luce l'ha già pagata.",
		"Su, in piedi. Ho fatto più in fretta che potevo; il resto tocca a te.",
	},
	["cls.priest.attack.w06.001"] = {
		"Punizione. Parola breve, braccio lungo.",
		"Ecco. È questo che vuol dire quella vecchia parola.",
		"Una piccola correzione sacra. Non muoverti, ne arriva un'altra.",
	},
	["cls.priest.attack.w06.002"] = {
		"Un ricordo di me. Continuerà a ricordartelo.",
		"Questa resta con te. Prova a smaltirla camminando, se ci riesci.",
		"Portala con te per un po'. Diventa più pesante.",
	},
	["cls.priest.attack.w06.003"] = {
		"Un altro incantesimo, un altro sorso dal pozzo. Che valga qualcosa.",
		"Questo mi è costato. Che costi di più a te.",
		"Esce il mana, entra il danno. Lo scambio deve andare a mio favore.",
	},
	["cls.priest.attack.w06.004"] = {
		"Vediamo come ragioni, dopo questa.",
		"Dritto nella mente. Lì l'armatura non serve mai.",
		"Entra dagli occhi, esce dalla volontà.",
	},
	["cls.priest.attack.w06.005"] = {
		"fa scattare le dita verso il nemico, e una parola parte con loro come un sasso lanciato.",
		"parla secco, e l'incantesimo lascia la sua mano come se fosse contento di andarsene.",
		"lancia senza un gesto sprecato, gli occhi che già misurano il prossimo.",
	},
	["cls.priest.attack.w06.006"] = {
		"Scappa! Tutto quello che temi ti sta alle spalle!",
		"Sparpagliatevi! Le vostre stesse menti vi inseguiranno meglio di me.",
	},
	["cls.priest.attack.w06.007"] = {
		"Non è la mia preghiera preferita. Forse la più utile.",
		"Al tempio la chiamerebbero un cattivo uso dei doni. Il tempio non è qui.",
	},
	["cls.priest.attack.w06.008"] = {
		"Brucia un po'. Dicono che faccia bene all'anima.",
		"Fuoco pulito. Non lascia niente che non debba esserci.",
	},
	["cls.priest.attack.w06.009"] = {
		"Questa è fatta apposta per quelli come te. Senti come calza bene.",
		"Ai morti questa parte non piace mai. Non posso darti torto.",
		"Torna a sederti. Sei in piedi da ben oltre il tuo tempo.",
	},
	["cls.priest.attack.w06.010"] = {
		"In ginocchio. Non te lo sto chiedendo.",
		"Giù. La prima volta l'ho detto con gentilezza.",
		"Una parola da me, ed è tutto quel che avrai.",
	},
	["cls.priest.battle.w06.001"] = {
		"Sì, è stoffa. No, questo non ti rende le cose facili.",
		"Avanti, mira alla tonaca. Lo fanno tutti. Pochi arrivano in fondo all'idea.",
		"Un sacerdote in tonaca, lo so che impressione fa. Vediamo come va a finire.",
	},
	["cls.priest.battle.w06.002"] = {
		"Fai il conto prima che cominci: tanto per colpire, tanto da tenere da parte per curare.",
		"Prima il mana. Lo divido a mente: metà per colpire, metà per restare in piedi.",
		"Prima della prima parola, la somma: quel che posso spendere, e quel che non devo toccare.",
	},
	["cls.priest.battle.w06.003"] = {
		"sfila la bacchetta dalla cintura e la punta, mentre l'altra mano già prepara una parola.",
		"alza la bacchetta senza fretta, come per indicare un errore in un registro.",
		"fa girare una volta la bacchetta tra le dita, poi la tiene ferma e puntata.",
	},
	["cls.priest.battle.w06.004"] = {
		"Ogni ferita che mi fai, io la richiudo. Tu puoi dire lo stesso?",
		"Tu ferisci, io ricucio. Vediamo chi dei due si stanca prima.",
		"Disfarò ogni colpo che mi assesti. È tutto qui il trucco, e non puoi impedirlo.",
	},
	["cls.priest.battle.w06.005"] = {
		"Sono dietro di voi. Voi prendete i colpi, io mi prendo i pensieri.",
		"La prima fila è vostra. Tenete i loro occhi lontani da me, e io vi terrò in piedi.",
		"Non contate le ferite. Qui dietro, è compito mio.",
	},
	["cls.priest.battle.w06.006"] = {
		"Gli occhi su tutti insieme. A loro il combattimento, a me il conto.",
		"Chi è ferito, chi sarà il prossimo, chi fa lo sciocco. Li tengo d'occhio tutti e tre.",
		"Stare indietro, restare calmi, guardare ogni volto. Chi impallidisce per primo riceve la prima preghiera.",
	},
	["cls.priest.battle.w06.007"] = {
		"Nessuno da curare tranne me. Così è più semplice, e un po' più solitario.",
		"Da {g:solo|sola}: chi cura e chi viene curato sono la stessa persona. Comodo.",
		"Solo noi due, e chi cura l'ho portato soltanto io. Pensaci.",
	},
	["cls.priest.battle.w06.008"] = {
		"Luce, rendi ferma la mia mano e fa' che le mie parole contino.",
		"Per la Luce, a questo concedo un avvertimento onesto, e nient'altro.",
		"La Luce venga con me. La strada la conosce meglio di me.",
	},
	["cls.priest.battle.w06.009"] = {
		"La Luce mi risponde ancora. Non dice mai di farlo volentieri.",
		"La chiamo, e viene, rigida come un estraneo a un funerale. Basta per combattere.",
		"Qualunque cosa pensi la Luce di ciò che sono, brucia ancora quando glielo chiedo.",
	},
	["cls.priest.battle.w06.010"] = {
		"Elune, volgi lo sguardo qui. Al resto penso io.",
		"Madre Luna, prestami un po' della tua pazienza, e un po' del tuo filo.",
		"Elune non svela i suoi pensieri. Le chiedo solo di guardare.",
	},
	["cls.priest.battle.w06.011"] = {
		"Hai camminato abbastanza. Lascia che ti mostri la strada per tornare giù.",
		"Chi ti ha rialzato non ti ha mai chiesto niente. Sono qui per renderti quel che ti ha tolto.",
		"Il riposo ti spettava da tempo. Te lo pago adesso.",
	},
	["cls.priest.battle.w06.012"] = {
		"Qualunque cosa tu abbia promesso a qualcuno per arrivare qui, con me finisce.",
		"Tu non appartieni a questo mondo. Dicono che io abbia un dono per rimandare a casa le cose.",
		"Torna là da dove vieni. Dirò le parole piano, così mi segui.",
	},
	["cls.priest.battle.w06.013"] = {
		"Il braccio ce l'hai forte. Vediamo la testa che lo muove.",
		"Tu hai portato un'arma. Io qualcosa che non ha bisogno di superarla.",
		"Le armature fermano le lame. Niente di quel che indossi ferma un pensiero.",
	},
	["cls.priest.battle.w06.014"] = {
		"tira indietro le maniche dai polsi, come fa chi cura prima della parte sporca.",
		"raccoglie l'orlo della tonaca con un gesto rapido ed esperto, perché non intralci.",
		"pianta i piedi e lascia che la tonaca si posi, quieta come un respiro trattenuto.",
	},
	["cls.priest.battle.w06.015"] = {
		"Girati adesso, e farò finta di non averti visto.",
		"Sei ancora in tempo per andartene. Sinceramente, lo preferirei.",
		"Preferirei pregare per te che contro di te. Scegli tu, e in fretta.",
	},
	["cls.priest.battle.w06.016"] = {
		"Punizione, la chiamano. Il nome non l'ho scelto io: io la pronuncio con sentimento.",
		"Non muoverti. Punire un bersaglio che scappa è più difficile.",
		"Esiste una preghiera per quasi tutto. Questa è per te, e brucia.",
	},
	["cls.priest.battle.w06.017"] = {
		"All'altare questa parte non me l'ha detta nessuno. Avrebbero dovuto.",
		"I libri dei novizi sono pieni di misericordia. La strada ci aggiunge le note a margine.",
		"La misericordia è la prima lezione. Nessuno ti dice quante volte dovrai saltarla.",
	},
	["cls.priest.battle.w06.018"] = {
		"Hai scelto un brutto momento per mettere alla prova la pazienza di chi prega per mestiere.",
		"La mia pazienza è lunga. Tu ne hai trovato la fine.",
		"Perdono facilmente. Solo, non lo faccio subito.",
	},
	["cls.priest.battle.w06.019"] = {
		"mormora le prime parole di una preghiera, troppo piano perché si sentano, gli occhi fissi sul nemico.",
		"giunge le mani per un istante, poi le apre verso la minaccia.",
		"china il capo una volta, brevemente, e lo rialza con la preghiera già cominciata.",
	},
	["cls.priest.battle.w06.020"] = {
		"Va bene. Sbrighiamoci: ho gente di cui occuparmi.",
		"Non ho tempo per te, ma lo troverò.",
		"Facciamola breve. Altri avranno bisogno di queste preghiere più di te.",
	},
	["cls.priest.battle.w06.021"] = {
		"Prima la barriera. Sempre prima la barriera. Poi posso ragionare.",
		"Lo scudo, prima di tutto. Chi lo dimentica lo impara a terra.",
		"Mi avvolgo nella barriera, e poi decido come va.",
	},
	["cls.priest.battle.w06.022"] = {
		"Non ridere della bacchetta. Ha fatto di peggio a cose più grosse di te.",
		"Sì, è un bastoncino. Ed è anche molto maleducato, quando si scalda.",
		"La bacchetta non sembra granché. Neanch'io. Andiamo d'accordo.",
	},
	["cls.priest.battle.w06.023"] = {
		"Prima il dolore, quello lento. Che lavori lui mentre io penso al resto.",
		"Posare presto la parola del dolore. Continua a parlare anche quando io ho smesso.",
		"Apro con l'ombra e la lascio rodere. La pazienza è metà del mestiere.",
	},
	["cls.priest.battle.w06.024"] = {
		"Mi dispiace per questo. Mi dispiacerà di più se vinci tu.",
		"Perdonami. O non farlo: tra poco non sarai in grado di dire né l'una né l'altra cosa.",
	},
	["cls.priest.battle.w06.025"] = {
		"Prego più di tanti altri. Certi giorni, le preghiere servono a questo.",
		"La fede non è solo dolcezza. Adesso ha un volto più duro.",
		"Stai per scoprire che suono fa una preghiera puntata contro di te.",
	},
	["cls.priest.battle.w06.026"] = {
		"arretra di qualche passo dietro gli altri, da dove può vederli tutti insieme.",
		"resta in coda allo scontro, lo sguardo che passa da un compagno all'altro.",
		"prende posto in fondo, fuori dalla mischia, una mano mezza alzata verso l'alleato più vicino.",
	},
	["cls.priest.battle.w06.027"] = {
		"Cercate di non avere bisogno di me. Ci sarò comunque, ma provateci.",
		"Rendetemela facile, va bene? Meno eroismi, meno preghiere.",
		"Chi ha in mente di fare l'eroe, mi avvisi un attimo prima.",
	},
	["cls.priest.battle.w06.028"] = {
		"Lo pagherò dopo, in acqua e riposo. Ne varrà la pena, credo.",
		"Una coppa d'acqua mi aspetta, alla fine. Devo solo guadagnarmela.",
		"Ogni incantesimo adesso è un lungo sorso, dopo. Spendere con giudizio.",
	},
	["cls.priest.battle.w06.029"] = {
		"Chi cura impara a restare in piedi. A quanto pare, è quasi tutta la lotta.",
		"Ho visto cosa serve per abbattere qualcuno. Tu ne hai portato di meno.",
		"Sottovalutami. Lo fanno quasi tutti, fino alla fine.",
	},
	["cls.priest.battle.w06.030"] = {
		"Piano. Forse hai solo fame. Io però non sono la cena.",
		"Preferirei calmarti che combatterti, ma tu non ascolti.",
		"Indietro, bestia. Non ho niente da darti, se non guai.",
	},
	["cls.priest.battle.w06.031"] = {
		"Ho curato gente come te. Peccato che stiamo da parti opposte.",
		"In un altro giorno ti avrei fasciato le ferite. Non oggi.",
		"Anche dalla tua parte c'è chi cura. Spero che ce ne sia uno vicino.",
	},
	["cls.priest.battle.w06.032"] = {
		"Calma. La paura fa uscire storte le parole, e le parole sono tutto quel che ho.",
		"Le mani tremano. Pazienza. La preghiera non chiede mani ferme, solo una voce ferma.",
		"Un po' di paura, come sempre. Non ha mai fermato una preghiera.",
	},
	["cls.priest.battle.w06.033"] = {
		"Quello è più grosso delle preghiere che avevo pronte. Improvviserò.",
		"Sei più di quanto avessi messo in conto. Per fortuna i miei conti si pagano in preghiere.",
	},
	["cls.priest.battle.w06.034"] = {
		"La Luce è paziente con me. Che sia impaziente con questo.",
		"Adesso mi appoggio alla Luce, e la ringrazio come si deve più tardi.",
		"Se la Luce ha un po' di calore da parte, è adesso che mi serve.",
	},
	["cls.priest.battle.w06.035"] = {
		"Inginocchiati, se vuoi. Le parole le dico comunque.",
		"C'è una benedizione che dico sui caduti. Non costringermi a usarla con te.",
		"Conosco a memoria i riti per i morti. Non ti conviene sentirli.",
	},
	["cls.priest.battle.w06.036"] = {
		"pronuncia una sola parola secca, e l'aria davanti a sé sembra tendersi.",
		"alza una mano, e qualcosa di invisibile si raccoglie nel palmo, in attesa di essere liberato.",
		"fissa il nemico con uno sguardo lungo e piatto, quello che di solito riserva ai pazienti testardi.",
	},
	["cls.priest.battle.w06.037"] = {
		"Dopo ti rimetto in sesto, se resta qualcosa. Cortesia professionale.",
		"Quando avremo finito, darò un'occhiata alla ferita che sto per farti.",
	},
	["cls.priest.battle.w06.038"] = {
		"Se vengono per me, esco dai loro pensieri e lascio che li prendano gli altri.",
		"Passare inosservati. Chi cura senza farsi notare continua a curare.",
	},
	["cls.priest.battle.w06.039"] = {
		"Una benedizione per te, gratis. Solo che fa male.",
		"Ti benedico. Con dolore, ma ti benedico.",
		"Da me una benedizione la ricevono tutti. La tua arriva per la via dura.",
	},
	["cls.priest.battle.w06.040"] = {
		"Prima il fuoco sacro, finché è ancora lontano. Che mi arrivi addosso già in fiamme.",
		"Farlo bruciare da lontano. Quando mi raggiunge, metà dello scontro è fatta.",
	},
	["cls.priest.buff.w06.001"] = {
		"Una protezione stesa prima che cominci il guaio. Di tutto il lavoro di un sacerdote, è la parte che nessuno ringrazia mai.",
		"Prevenire è la forma più noiosa di misericordia. È anche quella che funziona meglio.",
		"Nessuno si ricorda della ferita che non è mai arrivata. Io preferisco comunque che non arrivi.",
	},
	["cls.priest.buff.w06.002"] = {
		"Un po' più di resistenza di quanta ne avevi al risveglio. Usala per la strada lunga.",
		"Ecco. Adesso le tue gambe dureranno più della tua pazienza.",
		"Tempra. Non coraggio, bada: quello dovrai trovarlo da te.",
	},
	["cls.priest.buff.w06.003"] = {
		"La resistenza è un dono umile. Niente bagliori, niente tuoni: solo un corpo che cede un'ora più tardi del previsto.",
		"La tempra è la benedizione più semplice che conosca. Non rende nessuno più coraggioso, solo più difficile da sfiancare.",
	},
	["cls.priest.buff.w06.004"] = {
		"Scudo alzato. Che ci mastichi sopra per un po'.",
		"Ecco la barriera. Ogni colpo che si prende è uno che non dovrò curare.",
		"Uno scudo appena steso. Picchia pure quanto vuoi.",
	},
	["cls.priest.buff.w06.005"] = {
		"Lo scudo non ferma tutto. Gli basta fermare abbastanza.",
		"Un velo di volontà tirato sottile sopra la carne. Prima o poi si rompe: il punto è che si rompe al posto della pelle.",
	},
	["cls.priest.buff.w06.006"] = {
		"La barriera si spezza, e l'anima sotto ha bisogno di un po' prima di poterne ricevere un'altra. Ogni sacerdote impara a contare quella pausa.",
		"Quando lo scudo cede, non posso stenderne un altro sulla stessa anima per un po'. Così scelgo bene il momento.",
	},
	["cls.priest.buff.w06.007"] = {
		"Un attimo, non muoverti. Ecco. Adesso sei un po' più difficile da spezzare.",
		"Fatto. Vai pure avanti: lo sentirai quando servirà.",
		"Ecco qua. Non sprecarlo per una sciocchezza.",
	},
	["cls.priest.buff.w06.008"] = {
		"alza una mano e pronuncia poche parole secche, e un tenue luccichio pallido si posa e svanisce.",
		"si tocca la fronte con due dita, poi volge il palmo verso l'esterno; per un istante l'aria sembra immobile.",
		"mormora le parole di una protezione con una cadenza tranquilla e sicura, senza fermare il passo.",
	},
	["cls.priest.buff.w06.009"] = {
		"La Luce non serve solo a ricucire. Data per tempo, monta la guardia. È così che la preferisco.",
		"Certi giorni penso che la Luce preferisca questo lavoro: ancora niente sangue, solo una promessa mantenuta in anticipo.",
		"Un po' di Luce messa da parte per l'ora in cui servirà.",
	},
	["cls.priest.buff.w06.010"] = {
		"La luce di Elune cade su tutti allo stesso modo. Io ne indirizzo solo un poco dove serve.",
		"Pallida e quieta come il chiaro di luna sull'acqua ferma, e più dura di quanto sembri. I doni di Elune di solito sono così.",
	},
	["cls.priest.buff.w06.011"] = {
		"Strano, stendere protezioni con mani che sentono così poco. Funziona lo stesso.",
		"La Luce mi attraversa controvoglia, ma mi attraversa. Qualunque cosa pensi di me, protegge ancora ciò che le chiedo di proteggere.",
	},
	["cls.priest.buff.w06.012"] = {
		"Protezione dall'ombra. So cosa fa il buio da vicino; questa te ne tiene lontano un po'.",
		"Contro il buio. Fidati di un sacerdote: sa da che parte morde.",
	},
	["cls.priest.buff.w06.013"] = {
		"Non è un'armatura, ma è gratis e non sfrega.",
		"Più leggera di una corazza, e nessuno deve lucidarla.",
	},
	["cls.priest.buff.w06.014"] = {
		"Un pugno di mana adesso, per spenderne meno dopo. Anche la misericordia ha bisogno di un bilancio.",
		"Le protezioni costano poco, le cure tanto. Il sacerdote che lo dimentica resta a secco già al secondo scontro.",
		"La stendo e conto quanto costa. Poco. Meno di quanto fa risparmiare, che è l'unico conto che importi.",
	},
	["cls.priest.buff.w06.015"] = {
		"Adesso nelle tue ossa c'è un po' del mio lavoro. Cerca di non romperle lo stesso.",
		"Ti stancherai più tardi del solito. Trova qualcosa che valga quell'ora in più.",
	},
	["cls.priest.buff.w06.016"] = {
		"pronuncia una sola parola secca, e una barriera trasparente si chiude tutt'intorno come una pelle di vetro.",
		"fa scattare due dita, e una barriera scintillante prende posto, in attesa del primo colpo.",
	},
	["cls.priest.buff.w06.017"] = {
		"La fede è più facile da distribuire prima dello scontro. Dopo deve fare a gara con i lividi.",
		"Chiedo, e qualcosa risponde. Non ho mai saputo bene cosa, solo che mantiene la parola.",
		"Una protezione è una preghiera con le maniche rimboccate.",
	},
	["cls.priest.buff.w06.018"] = {
		"Un'ultima cosa prima di rimettersi in strada. Ecco.",
		"Protezioni addosso, e poi avanti. Senza non mi muovo.",
	},
	["cls.priest.buff.w06.019"] = {
		"Reggi per due colpi, barriera. Non ti chiedo altro.",
		"Scudo alzato, e ora lo guardo come una candela in uno spiffero: quando si spegne, mi servirà un altro piano.",
	},
	["cls.priest.buff.w06.020"] = {
		"invoca la Luce a bassa voce, e un bagliore indugia un istante prima di sparire alla vista.",
		"chiede alla Luce una protezione con parole semplici e senza fretta, e la ottiene.",
	},
	["cls.priest.buff.w06.021"] = {
		"Un'armatura per lo spirito, così insegnano a chiamarla ai novizi. Un po' pomposo. Ma funziona.",
		"Stesa e dimenticata, ed è giusto così, fino al momento in cui conta.",
	},
	["cls.priest.buff.w06.022"] = {
		"Non posso seguire tutti in ogni battaglia. Così, un po' di me va con loro comunque.",
		"Una parte delle mie cure, mandata avanti. Dove stanno andando, potrei non arrivare in tempo.",
	},
	["cls.priest.farewell.w06.001"] = {
		"Va' con prudenza. E se ti fai male, cerca di farlo dove posso arrivare.",
		"Addio. Testa bassa e ferite piccole.",
		"Abbi cura di te. Lo dico nel senso più pratico possibile.",
	},
	["cls.priest.greet.w06.001"] = {
		"Salute. Se hai qualche ferita, dillo adesso: preferisco curare presto che tardi.",
		"Ciao. Hai una bella cera. Vediamo di tenerla così.",
	},
	["cls.priest.greet.w06.002"] = {
		"Salve, e benedizioni, se le vuoi. Sono gratis tutte e due.",
		"Che piacere vederti in piedi. Nel mio mestiere, non c'è saluto migliore.",
	},
	["cls.priest.heal.w06.001"] = {
		"Il mana speso qui è mana che non avrò nello scontro dopo. Lo spendo lo stesso: è il mestiere.",
		"Ogni cura esce dallo stesso pozzo. Tengo un occhio sulla ferita e uno su quanta acqua resta in fondo.",
		"Contare la ferita, contare quel che mi resta, decidere. I conti di chi cura sono brevi e mai gentili.",
	},
	["cls.priest.heal.w06.002"] = {
		"osserva il dolore che si spegne, e solo allora lascia che le spalle si abbassino.",
		"controlla due volte il punto risanato con occhio attento, come si controlla un nodo prima di affidargli un peso.",
	},
	["cls.priest.heal.w06.003"] = {
		"Resta giù ancora un attimo. Se ti alzi troppo in fretta, metà del mio lavoro va in fumo.",
		"Non guardare la ferita, guarda me. Ecco. Finito prima che tu potessi trasalire.",
		"Lasciami finire prima di ripartire alla carica. Non posso curare quello che non raggiungo.",
	},
	["cls.priest.heal.w06.004"] = {
		"In questi momenti la Luce mi chiede così poco: mani aperte e la volontà di restare. Il resto non tocca a me portarlo.",
		"Non sento mai la Luce così nitida come quando mi attraversa e va dove serve.",
	},
	["cls.priest.heal.w06.005"] = {
		"Bene. Torno alla bacchetta prima che quel coso si ricordi di me.",
		"Sistemato quanto basta. La bacchetta tiene il broncio: diamole qualcosa da fare.",
	},
	["cls.priest.heal.w06.006"] = {
		"Il mana lo tengo per gli altri. A me può pensarci questa boccetta.",
		"Inutile sprecare mana per i miei graffi, quando c'è una fiala apposta.",
	},
	["cls.priest.heal.w06.007"] = {
		"La stessa mano che infligge dolore ai nemici è quella che chiude le ferite. Ho smesso di chiedermi quale delle due sia più vera.",
		"Ferire e risanare con lo stesso paio di mani. Certi giorni mi sembrano prese in prestito.",
	},
	["cls.priest.heal.w06.008"] = {
		"mormora una breve preghiera senza staccare gli occhi dalla ferita, parole levigate dall'uso.",
		"china il capo sulla ferita e prega a bassa voce, in fretta e con mestiere, come chi elenca gli attrezzi del proprio lavoro.",
		"sussurra le parole consuete della guarigione, e un chiarore pallido si posa sulla ferita come brina che si scioglie su un campo.",
	},
	["cls.priest.heal.w06.101"] = {
		"Chiuderla, guardare la prossima, chiudere anche quella. Il mestiere è soprattutto contare.",
		"La giornata di chi guarisce è un elenco: chi sanguina, chi viene dopo, chi finge di stare bene.",
		"Guarire è soprattutto stare attenti. La preghiera è la parte breve.",
	},
	["cls.priest.heal.w06.102"] = {
		"Chiusa. Cerca di tenere dentro quello che sta dentro, almeno per un po'.",
		"Fatto. Questa era quella gratis di oggi.",
		"Ecco. Ti chiederei prudenza, ma ti conosco.",
	},
	["cls.priest.heal.w06.103"] = {
		"mormora l'ultima parola della preghiera e abbassa le mani, guardando se la guarigione tiene.",
		"termina la preghiera in un sussurro, come si chiude la porta di una stanza dove qualcuno dorme.",
		"tiene le parole basse e regolari finché la guarigione non attecchisce, poi le lascia spegnersi.",
	},
	["cls.priest.heal.w06.104"] = {
		"La Luce non chiede di chi sia la ferita. Cerco di non chiederlo nemmeno io.",
		"Arriva quando la chiamo, ogni volta, e non me la sono mai meritata. Tutta la mia fede sta qui.",
		"La Luce va dove la indico. Strana fiducia, affidarsi a due mani come le mie.",
	},
	["cls.priest.heal.w06.105"] = {
		"Qui, Luce. Dove si è strappato.",
		"Ricuci ciò che la lotta ha disfatto, Luce.",
		"Tienilo saldo tu, Luce, e al resto provvedo io.",
	},
	["cls.priest.heal.w06.106"] = {
		"Ogni guarigione toglie un po' d'acqua dal pozzo. Il pozzo si riempie. Cerco di non pensare al giorno in cui non lo farà.",
		"Mi spendo in monete piccole tutto il giorno. Alla fine farò il conto di quel che resta.",
		"Qualcosa di ciò che do non torna indietro. Non il mana: qualcosa che ci sta sotto.",
	},
	["cls.priest.heal.w06.107"] = {
		"Il dolore si riduce a una lamentela sorda. Con una lamentela ci posso lavorare.",
		"Quanto basta per andare avanti. «Quanto basta» è la misura preferita di ogni sacerdote.",
		"Il peggio è passato. Il resto presenterà domanda più tardi.",
	},
	["cls.priest.heal.w06.108"] = {
		"lascia che la tensione scivoli via dalle spalle mentre il dolore si placa, e cerca con lo sguardo la prossima cosa da fare.",
		"raddrizza una piega storta della veste, come se l'ordine facesse parte della cura.",
		"scioglie la rigidità del collo con un paio di giri del capo e torna al lavoro.",
	},
	["cls.priest.heal.w06.109"] = {
		"Ricucito. E di nuovo alla bacchetta.",
		"Chiuso. Bacchetta di nuovo in alto, prima che se ne accorga.",
		"Fatto. Torno a punzecchiarlo col bastoncino.",
	},
	["cls.priest.heal.w06.110"] = {
		"Curare, guardare, contare. Curare, guardare, contare. Il ritmo non lo deve dare la paura.",
		"Occhi sulle ferite, non su chi le apre.",
		"Troppo presto ed è sprecata, troppo tardi ed è inutile. Tutta l'arte sta lì in mezzo.",
	},
	["cls.priest.heal.w06.111"] = {
		"arretra dalla mischia e recita una preghiera rapida e bassa, senza mai staccare gli occhi dalla lotta.",
		"sussulta per un colpo che passa vicino, finisce comunque la preghiera, e la guarigione arriva dove doveva.",
	},
	["cls.priest.heal.w06.112"] = {
		"Resta lì dentro. Ti copro le spalle, e anche il resto.",
		"Continua. A tenerti tutto d'un pezzo ci penso io.",
		"Non guardare qui. Guarda quello. A te ci guardo io.",
	},
	["cls.priest.heal.w06.113"] = {
		"Siediti un momento. Il prossimo scontro può aspettare che ti rialzi.",
		"Fatto. La prossima volta, magari, un passo più a sinistra.",
		"Ecco fatto. Adesso puoi tornare a farti male.",
	},
	["cls.priest.heal.w06.114"] = {
		"Lo scontro è finito, e adesso il lavoro vero: i taglietti di cui nessuno ha parlato.",
		"Di nuovo silenzio. È adesso che trovo le ferite che nessuno ha avuto il tempo di sentire, comprese le mie.",
		"Dopo il rumore, l'inventario. Uno squarcio qui, un livido là, e un orgoglio per cui posso fare poco.",
	},
	["cls.priest.heal.w06.115"] = {
		"Ognuno di loro si appoggia a me un po', e nessuno sa quanto.",
		"Si lanciano avanti perché si fidano che io resti qui. Questa fiducia pesa più della veste.",
		"Dopo ogni guarigione conto le teste. Abitudine. Una buona abitudine.",
	},
	["cls.priest.heal.w06.116"] = {
		"Sono dietro di voi, tutti quanti. Avanti.",
		"Nessuno cade finché sto ancora pregando. Continuate.",
		"Voi tenete il fronte, io tengo tutto il resto.",
	},
	["cls.priest.heal.w06.117"] = {
		"Tanta gente da tenere in piedi. Ascolto chi inciampa.",
		"In una folla così, chi guarisce è un coro. Io cerco solo di non stonare.",
		"In tutto questo frastuono qualcuno conta su di me per nome, e non so nemmeno chi.",
	},
	["cls.priest.heal.w06.118"] = {
		"Qui dentro, se sbaglio, nessuno torna in città sulle sue gambe. Quindi non sbaglio.",
		"In un posto così, l'errore di chi guarisce ha un'eco lunga.",
		"Qui dentro nessuna seconda occasione costa poco. Ogni guarigione vale doppio.",
	},
	["cls.priest.heal.w06.119"] = {
		"La parte di me che ama l'ombra tiene il broncio quando faccio questo. Che lo tenga.",
		"Le stesse mani che un momento fa spingevano dolore dentro un nemico. Adesso lo tirano fuori. Non pretendo che gli piaccia.",
		"Dopo l'ombra, guarire sembra lento e abbagliante, come uscire da una cantina al sole. Strizzo gli occhi, e lo faccio lo stesso.",
	},
	["cls.priest.heal.w06.120"] = {
		"Sì, so fare anche quella gentile. Non andarlo a raccontare in giro.",
		"Guarire. Non è il mio trucco preferito, ma è quello per cui mi ringraziano.",
		"Ecco. Ora nessuno potrà dire che conosco solo la metà buia del libro.",
	},
	["cls.priest.heal.w06.121"] = {
		"La Luce mi attraversa come una corrente d'aria in una casa vuota. Arriva lo stesso alle stanze in fondo.",
		"Brucia un poco, passando. Va bene. Ho servito padroni che bruciavano di peggio.",
		"Riparo una carne che a me non serve quasi più. C'è una battuta, lì dentro, ma sono troppo {g:stanco|stanca} per farla.",
	},
	["cls.priest.heal.w06.122"] = {
		"La cura te l'ha data un cadavere. Non fare quella faccia: funziona.",
		"Sì, anche i morti sanno guarire. Cerca di non svenire per così poco.",
		"Mani fredde, lavoro buono. A una delle due ti abituerai.",
	},
	["cls.priest.heal.w06.123"] = {
		"Giù, in cantina. Qualcosa là sotto sa ancora cosa farne.",
		"Una pozione per un corpo come il mio. Gli alchimisti non l'hanno scritto sull'etichetta.",
	},
	["cls.priest.heal.w06.124"] = {
		"Elune, un po' della tua pazienza, qui.",
		"La misericordia di Elune è silenziosa. A me basta tacere abbastanza da portarla.",
		"A ricucire è la dea. Io tengo le mani dove lei può trovarle.",
	},
	["cls.priest.heal.w06.125"] = {
		"Non muoverti. Elune ha visto di peggio, e l'ha guarito.",
		"Riposa un momento sotto il suo sguardo. Si sta chiudendo.",
		"Piano. Ti teniamo io e la dea.",
	},
	["cls.priest.heal.w06.126"] = {
		"Ascoltano i loa, o ascolta la Luce. Oggi non chiedo chi, purché qualcuno risponda.",
		"Chiunque abbia risposto, grazie. Ai nomi penserò più tardi.",
	},
	["cls.priest.heal.w06.127"] = {
		"Nella Luce, guarisci.",
		"Luce, prenditi questo dolore e rendici chi lo portava.",
		"Ti custodisce la Luce. Io tengo solo aperta la porta.",
	},
	["cls.priest.heal.w06.128"] = {
		"Certi giorni non sono {g:sicuro|sicura} di credere. La Luce arriva lo stesso. Sembra non farci caso.",
		"La fede vacilla; la guarigione no. Ho smesso di chiedermi cosa significhi.",
		"La Luce risponde a chi dubita con la stessa prontezza che a chi crede. Non so se la cosa mi consoli o mi spaventi.",
	},
	["cls.priest.heal.w06.129"] = {
		"Chi cura gli altri che si attacca a una boccetta. Non l'ha visto nessuno.",
		"Anche chi ricuce ha bisogno di una pozione, ogni tanto. Bleah. Di una migliore, possibilmente.",
		"Le preghiere sono per gli altri. Questa è per me, e si sente dal sapore.",
	},
	["cls.priest.heal.w06.130"] = {
		"Inutile spendere una preghiera per me quando basta una boccetta. Le preghiere servono dopo.",
		"La pozione mi compra una guarigione che non devo pagare con le mie riserve.",
		"Vetro e amaro al posto di una preghiera. Una forma di risparmio.",
	},
	["cls.priest.heal.w06.131"] = {
		"Una pietra di stregone. Funziona, e ho deciso di non chiedere come.",
		"Fredda, verde, e donata da qualcuno il cui potere viene da altrove. Grazie lo stesso.",
		"Io guarisco con la fede, e mi sono appena {g:rimesso|rimessa} in sesto con un lavoretto da stregone. Che resti tra noi.",
	},
	["cls.priest.heal.w06.132"] = {
		"cerca con le dita il punto dolente, lo trova sparito, e ne sembra appena {g:sorpreso|sorpresa}.",
		"prova il peso su entrambi i piedi, annuisce, e si pulisce le mani sulla veste.",
	},
	["cls.priest.heal.w06.133"] = {
		"Rinnovamento lavora in silenzio, molto dopo che ho distolto lo sguardo. Mi piacciono gli incantesimi che mantengono le promesse.",
		"Una guarigione lenta, lasciata andare da sola. Come mettere il bollitore sul fuoco e allontanarsi.",
		"Questa continua a lavorare quando mi sono già {g:voltato|voltata}. Me ne fido come di un buon nodo.",
	},
	["cls.priest.heal.w06.134"] = {
		"Questa continua a lavorare. Vai pure, ti viene dietro.",
		"Vai. Continuerà a ricucire mentre cammini.",
	},
	["cls.priest.heal.w06.135"] = {
		"Una preghiera, e ognuno ne riceve una parte. La mia aritmetica preferita.",
		"Una preghiera larga abbastanza per tutta la compagnia. State vicini, così vi prende tutti.",
		"Tutti insieme. Costa, ma costa anche seppellire la gente.",
	},
	["cls.priest.heal.w06.136"] = {
		"Ho chiuso così tante ferite che le mani cominciano la preghiera prima che io abbia finito di decidere.",
		"Un tempo dovevo pensare ogni parola. Adesso la guarigione mi viene in mano come gli attrezzi a un artigiano.",
		"La pratica l'ha resa più silenziosa. Meno tremiti, meno parole, la stessa misericordia.",
	},
	["cls.priest.heal.w06.137"] = {
		"Sono ancora {g:nuovo|nuova} a questo. Le parole sono venute giuste, ed è più di quanto mi aspettassi.",
		"La chiamano una cura minore. Vista da qui, di minore non ha niente.",
		"Dopo, le mani mi tremano ancora un po'. I maestri dicono che passa. Spero non del tutto.",
	},
	["cls.priest.heal.w06.138"] = {
		"Ed ecco perché valgo il pane che mangio.",
		"Visto? Servo a qualcosa.",
		"Ricucire: una delle poche cose per cui non arrivo mai in ritardo.",
	},
	["cls.priest.heal.w06.139"] = {
		"È il momento che preferisco: il viso si distende e per un attimo si dimentica di aver avuto paura.",
		"A chi curo torna il colore. A me ne va via un po'. Scambio onesto.",
		"Sotto le mie mani il dolore si zittisce, e la persona che c'era sotto ritorna.",
	},
	["cls.priest.heal.w06.140"] = {
		"{target}, guarda me, non la ferita. Bene.",
		"Piano, {target}. Conta fino a cinque. Al quattro sarà finita.",
		"{target}. Ancora con noi? Bene. Manca poco.",
	},
	["cls.priest.heal.w06.141"] = {
		"{target}, tengo il conto. Stai vincendo, e non è un complimento.",
		"Di nuovo, {target}? Comincio a pensare che ti piaccia.",
		"{target}, sanguini con un impegno ammirevole. Smettila.",
	},
	["cls.priest.heal.w06.142"] = {
		"posa una mano sulla spalla di {target} e dice poche parole, e il peggio del dolore scivola via.",
		"resta accanto a {target} il tempo di una preghiera, poi si volta a cercare chi viene dopo.",
		"incrocia lo sguardo di {target}, annuisce una volta, e la guarigione attecchisce tra una parola e l'altra.",
	},
	["cls.priest.heal.w06.143"] = {
		"abbassa le mani quando ha finito e, per un momento, non fa proprio niente.",
		"si asciuga le mani sull'orlo della veste e conta sottovoce quello che resta da ricucire.",
	},
	["cls.priest.heal.w06.144"] = {
		"La guarigione è la parte facile. È dopo, nel silenzio, che tutto ti raggiunge.",
		"Nessuno ringrazia una guarigione finita. È così che capisci che era fatta bene.",
		"Il silenzio dopo è la parte più difficile del mestiere. Le mani non hanno niente da fare, se non ricordare.",
	},
	["cls.priest.heal.w06.145"] = {
		"Ascolto le mie riserve come un marinaio ascolta lo scafo.",
		"Il mana si riempie solo quando sto {g:fermo|ferma}. Lo spendo come monete, non come acqua.",
		"Doso ogni preghiera come un cuoco attento dosa il sale. Troppo adesso, niente dopo.",
	},
	["cls.priest.heal.w06.146"] = {
		"Dovrai colpire più forte. Io ricucio più in fretta di quanto tu riesca a ferire.",
		"Quello che prendi, io lo rimetto. Vediamo chi si stanca prima.",
		"Continua pure. Ho più preghiere io che pazienza tu.",
	},
	["cls.priest.heal.w06.147"] = {
		"Non restare indietro. Una ferita di ritardo diventa due, poi diventa un corpo.",
		"Il suono peggiore in una lotta è quello che senti quando la cura arriva tardi. Non oggi.",
		"Più veloce del male che arriva: tutto il lavoro è questo. Tieni il passo.",
	},
	["cls.priest.heal.w06.148"] = {
		"A posto. Vai, ti sta ancora guardando.",
		"Torna dentro. Sono proprio dietro la tua spalla.",
		"Ci sono io. Se ti colpisce di nuovo, la prendo come un'offesa personale.",
	},
	["cls.priest.heal.w06.149"] = {
		"Chiedo, e qualcosa risponde. Ogni volta mi stupisco un po' che si scomodi.",
		"La preghiera è una porta a cui busso tutto il giorno. Non è mai rimasta chiusa.",
		"Qualunque cosa ascolti quando prego, ascolta bene. Un giorno vorrei incontrarla e ringraziarla come si deve.",
	},
	["cls.priest.heal.w06.150"] = {
		"Guarisci, e sbrigati.",
		"Chiuditi. Saldati. Tieni.",
		"Misericordia, qui, adesso.",
	},
	["cls.priest.heal.w06.151"] = {
		"Io sono solo le mani. Chi fa il vero lavoro non firma mai.",
		"La gente ringrazia me. Io giro il grazie più in alto, dove spetta.",
		"L'abilità è mia, la misericordia no. Cerco di ricordarmi quale sia quale.",
	},
	["cls.priest.heal.w06.152"] = {
		"tiene un occhio sul nemico e uno sulle ferite, e la preghiera scorre sotto il rumore come un ruscello sotto il ghiaccio.",
		"pronuncia le parole tra un colpo e l'altro della lotta, e ci torna prima che il bagliore si spenga.",
	},
	["cls.priest.heal.w06.153"] = {
		"fa scorrere lo sguardo lungo la fila dei compagni, contando, e manda la guarigione dove il conto non torna.",
		"si muove tra gli altri senza fretta, una parola qui, un tocco là, come chi si prende cura di una fila di lanterne.",
	},
	["cls.priest.heal.w06.154"] = {
		"Qualcuno deve stare in fondo e rifiutarsi di lasciar morire chiunque. Oggi tocca a me. Ogni giorno tocca a me.",
		"Non ho preso la veste per farmi amare. L'ho presa perché si seppellisse meno gente.",
		"Tenerli in vita. Tutto il resto del credo è commento.",
	},
	["cls.priest.heal.w06.155"] = {
		"Chi guarisce non può permettersi lo stomaco debole. Che fortuna.",
		"Ho visto cosa c'è sotto la pelle più spesso di quanto vorrei. Comunque, chiuso è meglio.",
	},
	["cls.priest.heal.w06.156"] = {
		"Dolore là fuori, guarigione qui dietro. La lotta di un sacerdote oscilla come un pendolo.",
		"Ferire il nemico, curare la ferita, ferire di nuovo. Tutto sta nel ritmo.",
		"Colpire, ricucire, colpire. Una canzoncina semplice, e funziona.",
	},
	["cls.priest.heal.w06.157"] = {
		"Non ancora, non ancora... adesso. Non sapranno mai quanto c'è mancato. Meglio così.",
		"Ho visto arrivare il momento e gli sono {g:andato|andata} incontro. Non sapranno mai che c'è stato un momento.",
	},
	["cls.priest.heal.w06.158"] = {
		"stappa la fiala e la manda giù senza cerimonie, come chiunque curi gli altri quando tocca a sé: per ultimo, e di malavoglia.",
		"svuota la boccetta in due sorsi e fa una smorfia per il sapore, come il peggiore dei pazienti.",
	},
	["cls.priest.heal.w06.159"] = {
		"stringe la pietra della salute nel pugno, e il suo freddo bagliore verde affonda nella pelle.",
		"rigira una volta la pietra dello stregone, con aria dubbiosa, poi la usa lo stesso.",
	},
	["cls.priest.heal.w06.160"] = {
		"Nessuna compagnia da curare, oggi. L'unico paziente è quello testardo dentro i miei stivali.",
		"Da {g:solo|sola}, chi guarisce sta a tutti e due i capi del patto. La preghiera parte e torna dritta indietro.",
		"Per conto mio, ogni guarigione è silenziosa. Nessuno di cui occuparmi, a parte me.",
	},
	["cls.priest.heal.w06.161"] = {
		"Chi cura, chi è curato e chi guarda: tutte le parti a me.",
		"Ben fatto. Oh, grazie. Ma figurati, per così poco.",
	},
	["cls.priest.heal.w06.162"] = {
		"Una pausa tra uno scontro e l'altro. Rimetto in sesto tutti e fingo di non tenere d'occhio le mie riserve.",
		"Qui dentro il silenzio non dura mai. Ricucio quello che posso prima che si apra la prossima porta.",
		"Gli altri frugano i caduti in cerca di monete; io frugo i vivi in cerca di buchi.",
	},
	["cls.priest.heal.w06.163"] = {
		"Non parlare. Lascia che faccia effetto.",
		"Shh. Ho quasi finito.",
		"Appoggiati a me un momento.",
	},
	["cls.priest.heal.w06.164"] = {
		"Meglio di prima. Be', quasi.",
		"Tutto chiuso. Per questa volta niente parcella.",
		"Ecco, la ferita è chiusa. Ti resterà una bella cicatrice.",
	},
	["cls.priest.heal.w06.165"] = {
		"Ogni vita che sorreggo pesa, e non ne poserei nemmeno una.",
		"La gente crede che guarire sia un lavoro morbido. Provino a riportare qualcuno indietro dall'orlo, almeno una volta.",
		"Sorreggere qualcuno è un peso che non puoi posare a metà strada.",
	},
	["cls.priest.heal.w06.166"] = {
		"La Luce mi sale nei palmi come il calore in una pietra lasciata al sole.",
		"Luce calda, mani calde. Certi giorni guarirei solo per sentirla passare.",
	},
	["cls.priest.heal.w06.167"] = {
		"La Luce tiene la linea insieme a noi!",
		"Tenete duro! La Luce è ancora con noi!",
	},
	["cls.priest.heal.w06.168"] = {
		"Il taglio lo chiudo. La paura che c'era prima del colpo, quella non so curarla.",
		"La carne la so ricucire. Lo sguardo che resta dopo non è il mio mestiere.",
	},
	["cls.priest.heal.w06.169"] = {
		"lascia passare il momento senza commenti, come si fa con le piccole grazie.",
		"pare ritrovare un po' di fermezza, come se qualcuno avesse posato un peso lì accanto.",
	},
	["cls.priest.heal.w06.170"] = {
		"Le piccole grazie mandano avanti il mondo. Questa era una.",
		"Una piccola riparazione. Il mondo sta in piedi soprattutto grazie alle piccole riparazioni.",
		"Niente di grandioso. Solo un dolore in meno al mondo rispetto a un attimo fa.",
	},
	["cls.priest.heal.w06.171"] = {
		"In fila, l'ambulatorio è aperto.",
		"Qualcun altro perde pezzi? Ditelo adesso, prima che mi sieda.",
		"Chi è il prossimo? Non spingete, ce n'è per tutti.",
	},
	["cls.priest.heal.w06.172"] = {
		"Ogni ferita mi insegna dove il corpo è più debole. Vorrei che insegnasse con più garbo.",
		"Conosco il corpo meglio di quanto avrei mai voluto. Dove si strappa, dove regge, dove mente dicendo che va tutto bene.",
	},
	["cls.priest.heal.w06.173"] = {
		"Quella te la sei cercata. Non rifarlo: il mana non cresce sugli alberi.",
		"Si poteva evitare. L'ho chiusa lo stesso. Impara qualcosa.",
	},
	["cls.priest.heal.w06.174"] = {
		"I sacerdoti più anziani dicono che ti porti dietro tutti quelli che non hai raggiunto. Quindi io raggiungo, ogni volta che posso.",
		"Gli anziani dell'ordine dicono che nessun guaritore dimentica chi gli è sfuggito. Preferirei avere meno da ricordare.",
	},
	["cls.priest.heal.w06.175"] = {
		"tende una mano, e una morbida luce dorata ne scende come acqua da una brocca, né più né meno del necessario.",
		"mormora una breve preghiera; la Luce si raccoglie, si posa e se ne va, lasciando la ferita più piccola di come l'aveva trovata.",
	},
	["cls.priest.heal.w06.176"] = {
		"Se avessi un rame per ogni ferita chiusa, potrei ritirarmi e lasciarli sanguinare tutti.",
		"La paga è pessima, gli orari peggio, e i pazienti mordono. A quanto pare mi piace.",
		"Guarire: l'unico mestiere in cui di solito il cliente ti urla addosso mentre lavori.",
	},
	["cls.priest.heal.w06.177"] = {
		"Tre feriti, una preghiera. Scegli. Scegli in fretta. Non voltarti a guardare la scelta.",
		"Triage è una parola fredda per una cosa calda. Lo faccio lo stesso, e in fretta.",
		"Prima chi sta davanti. Sempre chi sta davanti. Gli altri, appena posso.",
	},
	["cls.priest.heal.w06.178"] = {
		"Ecco. Adesso prova ad ammaccarlo di nuovo, se hai coraggio.",
		"L'ho ricucito sotto il tuo naso. Che effetto fa?",
		"Tutto quello che hai rotto l'ho rimesso a posto. Impegnati di più.",
	},
	["cls.priest.heal.w06.179"] = {
		"L'ombra è più rapida. Guarire è più lento e chiede di più. Proprio per questo continuo a esercitarmi.",
		"Ogni sacerdote impara entrambe le metà. Il difficile è ricordare per quale delle due sto.",
		"La disciplina è scegliere il lavoro lento e luminoso quando quello oscuro sarebbe più facile.",
	},
	["cls.priest.heal.w06.180"] = {
		"Va' sulle tue gambe, e con prudenza.",
		"Fatto. Cammina nella misericordia, e cammina un po' più piano.",
		"Ecco. Portala con leggerezza: è stata data gratis.",
	},
	["cls.priest.heal.w06.181"] = {
		"Non pretendo di sapere chi risponda. So solo che la ferita si chiude quando chiedo.",
		"Chiamala fede, chiamala un'abitudine allenata delle mani. Da fuori, il risultato è lo stesso.",
	},
	["cls.priest.heal.w06.182"] = {
		"Potrebbe sanguinare qualcun altro, per cambiare? Distribuite un po'.",
		"Sempre le stesse facce, a ogni scontro. Comincio a tenere una lista d'attesa.",
		"Fatevi colpire a turno, eh? Le mie preghiere ringraziano.",
	},
	["cls.priest.heal.w06.183"] = {
		"Tutti in piedi, tutti a brontolare. Una buona giornata di lavoro.",
		"Nessuno perso. In giorni così il mestiere sembra quasi un canto.",
		"Tutti in piedi a litigare sul bottino. Musica.",
	},
	["cls.priest.heal.w06.184"] = {
		"lavora con la calma dei morti, che non hanno nessun altro posto dove andare.",
		"si china sulla ferita con dita fredde e attente, e la guarigione attecchisce come quella di qualsiasi sacerdote vivo.",
	},
	["cls.priest.heal.w06.185"] = {
		"Le preghiere grandi adesso vengono facili. Facile è pericoloso, così mi costringo a pensare ogni parola.",
		"Tanta forza, ormai, dietro le parole. Sarebbe facile dimenticare di chi sia.",
	},
	["cls.priest.heal.w06.186"] = {
		"Ogni guarigione è una discussione con la morte. La maggior parte la vinco. La maggior parte.",
		"La morte continua a chiedere. Io continuo a dire di no, una preghiera per ogni richiesta.",
		"Mercanteggio con la morte tutto il giorno per piccole somme. Le forze le tengo per quelle grandi.",
	},
	["cls.priest.heal.w06.187"] = {
		"La mano sulla mia. Lo senti? Sei tu che resti.",
		"Guarda, è già meno rossa. Ti stai rimettendo più in fretta di quanto pensi.",
	},
	["cls.priest.heal.w06.188"] = {
		"lascia la bacchetta penzolare in una mano mentre l'altra dà forma alla preghiera, poi la rialza di scatto verso il nemico.",
		"si stacca dalla lotta per il tempo di una preghiera, non di più, e ci torna prima che la guarigione abbia finito di brillare.",
	},
	["cls.priest.heal.w06.189"] = {
		"Ricucire come una buona malta: lenta a fare presa, dura da incrinare. Su questo, la Luce e io siamo d'accordo.",
		"Mani ferme, pietra onesta, una parola alla Luce. Per ricucire come si fa tra i nani non serve niente di più elaborato.",
	},
	["cls.priest.heal.w06.190"] = {
		"L'abbazia di Northshire mi ha insegnato le parole. La strada mi ha insegnato a dirle in fretta.",
		"A Northshire mi hanno insegnato le preghiere lente. Da allora ho imparato quelle rapide.",
	},
	["cls.priest.heal.w06.191"] = {
		"Sanguinare, ricucire, andare avanti. Certi giorni la storia è tutta qui.",
		"Rattoppare, proseguire, rattoppare ancora. Niente di glorioso. Necessario.",
		"La strada apre buchi nella gente; io le vado dietro a rammendare.",
	},
	["cls.priest.jest.w06.001"] = {
		"Ho pregato per avere pazienza. Mi è stato mandato un gruppo di avventurieri. Credo che la chiamino lezione.",
		"Perché i sacerdoti girano con la bacchetta? Perché «pregherò per te» non spaventa i lupi.",
	},
	["cls.priest.levelup.w06.001"] = {
		"Dal maestro mi aspetta qualcosa di nuovo, lo sento. Una preghiera che non ho ancora imparato e che già mi è un po' familiare.",
		"Più forte, più {g:saldo|salda}. Qualunque cosa mi risponda, ora risponde con più pienezza.",
		"Un po' di più che posso portare per gli altri. È l'unico modo di crescere che mi sia mai importato.",
	},
	["cls.priest.levelup.w06.002"] = {
		"sente il pozzo interiore farsi un po' più profondo, e si lascia sfuggire una risata sommessa e sorpresa.",
		"piega le dita e sente il potere starci più comodo, come se avesse finalmente deciso di restare.",
		"alza lo sguardo per un momento, come si fa quando arriva una risposta attesa a lungo.",
	},
	["cls.priest.lowhp.w06.001"] = {
		"Curare chi cura. Ingoiare l'orgoglio e spendere il mana per me.",
		"Tocca a me stare sul tavolo. In fretta, prima che le mani smettano di ascoltare.",
		"Prima regola, e la sto infrangendo: mai scendere così in basso. Rimediare subito.",
	},
	["cls.priest.lowhp.w06.002"] = {
		"Sono io a prendere i colpi! Qualcuno me lo levi di dosso!",
		"Toglietelo di dosso a chi cura! A meno che non vogliate continuare senza!",
		"Ce l'ho addosso, e non posso pregare e correre insieme! Aiuto!",
	},
	["cls.priest.lowhp.w06.003"] = {
		"preme il palmo sul proprio petto e sussurra in fretta, le parole che inciampano l'una sull'altra.",
		"barcolla, poi pianta i piedi e posa una mano tremante sulla ferita peggiore.",
		"arretra di un passo, le labbra che già formano una preghiera destinata, per una volta, a sé.",
	},
	["cls.priest.lowhp.w06.004"] = {
		"Ecco il momento di seguire i miei stessi consigli. Sdraiarmi? No. Pregare più in fretta.",
		"Chi cura è nei guai. Per fortuna, chi cura sa anche come rimediare.",
		"Buffo come suonano diverse le preghiere, quando sono per me.",
	},
	["cls.priest.lowhp.w06.005"] = {
		"Sono già {g:morto|morta} una volta. Non mi è piaciuto. Non di nuovo.",
		"Questo corpo ha già ceduto una volta, ed è stato costretto a camminare. Preferisco non riprovarci.",
	},
	["cls.priest.lowhp.w06.006"] = {
		"Il cuore martella, le mani sudate. Respira, e di' le parole lo stesso.",
		"Ogni respiro è un piccolo coltello. Usalo per pregare.",
	},
	["cls.priest.lowhp.w06.007"] = {
		"Luce, servo ancora a qualcosa. Tienimi qui ancora un po'.",
		"Non ancora, Luce. C'è lavoro da fare, e tocca a me farlo.",
		"Luce, chiedo per gli altri ogni giorno. Per una volta, per me.",
	},
	["cls.priest.lowhp.w06.008"] = {
		"Elune, non ho finito. Tienimi ancora un poco.",
		"Madre Luna, sostienimi. Non posso cadere finché c'è lavoro da fare.",
	},
	["cls.priest.lowhp.w06.009"] = {
		"Lo scudo doveva essere già su. Lo alzo adesso, in ritardo e con gratitudine.",
		"Scudo, poi cura, poi preoccupazione. L'ordine conta.",
		"Stringere la barriera e chiudere il peggio. In fretta.",
	},
	["cls.priest.lowhp.w06.010"] = {
		"Via! Forza, scappa, e lasciami in pace!",
		"Lontano da me! Vattene, e portati via la tua paura!",
	},
	["cls.priest.lowhp.w06.011"] = {
		"{g:Solo|Sola}, sull'orlo. Se finisce qui, nessuno saprà nemmeno quale preghiera è stata l'ultima.",
		"Non arriva nessuno. Va bene. Non mi è mai servito un pubblico per pregare.",
	},
	["cls.priest.lowhp.w06.012"] = {
		"Dovrai fare di meglio. Ho rimesso insieme gente partendo da molto meno.",
		"Altri se ne sono andati sulle proprie gambe da ferite così. Ci ho pensato io.",
	},
	["cls.priest.lowhp.w06.013"] = {
		"sembra assottigliarsi ai bordi, sfuggendo all'attenzione del nemico come una voce che si spegne in una sala affollata.",
		"si fa {g:silenzioso e immobile|silenziosa e immobile}, come se volesse farsi dimenticare da tutto quanto insieme.",
	},
	["cls.priest.lowhp.w06.014"] = {
		"Qualcuno avrà ancora bisogno di me, dopo. Aggrappati a questo, non al dolore.",
		"Pensa alla prossima persona che dovrai ricucire. Resta per lei.",
		"C'è sempre un'altra ferita là fuori che aspetta queste mani. Resta.",
	},
	["cls.priest.lowhp.w06.015"] = {
		"Tutti i pazienti che ho rimproverato perché sussultavano: ritiro tutto.",
		"Ah. Ecco di cosa si lamentano i miei pazienti.",
	},
	["cls.priest.lowhp.w06.016"] = {
		"continua a lanciare verso gli altri anche mentre vacilla sulle gambe.",
		"barcolla, si riprende, e rivolge la preghiera successiva a un compagno invece che a sé.",
		"ignora la ferita ancora un momento, per finire la parola destinata a qualcun altro.",
	},
	["cls.priest.lowhp.w06.017"] = {
		"La salute o il mana: uno dei due deve cedere. Scegli in fretta.",
		"Spendi tutto per restare in piedi. Il mana torna. Io, non così facilmente.",
	},
	["cls.priest.lowhp.w06.018"] = {
		"Va bene. Va bene! Lasciami rattoppare questo e continuiamo.",
		"Ahi. Che maleducazione. Dammi un momento per ricucirmi e ne riparliamo.",
	},
	["cls.priest.muse.w06.001"] = {
		"La cosa peggiore del restare a secco non è il pericolo. È guardare qualcuno sanguinare mentre aspetto che il pozzo si riempia di nuovo.",
		"Il mana è un pozzo, non un fiume. Se tiri su troppo in fretta, senti il secchio battere sulla pietra.",
		"Quando il potere finisce, resta solo una persona stanca in una tonaca, immobile, che spera.",
	},
	["cls.priest.muse.w06.002"] = {
		"si siede dove c'è posto, stappa una borraccia d'acqua e la beve piano, gli occhi socchiusi, come se ascoltasse qualcosa che si riempie di nuovo.",
		"beve a piccoli sorsi pazienti da un otre e aspetta, le mani abbandonate in grembo, che il silenzio dentro si faccia di nuovo profondo.",
		"beve, riposa, beve ancora: il vecchio rito senza gloria di chi cura e deve prima rimettere insieme se {g:stesso|stessa}.",
	},
	["cls.priest.muse.w06.003"] = {
		"Nessuno canterà mai della mia bacchetta. Sputa il suo piccolo colpo, ancora e ancora, mentre il lavoro vero si fa nella mia testa.",
		"La bacchetta è la cosa meno solenne che possiedo, e quella che uso di più. Ci sarebbe una predica da tirarne fuori.",
		"Nessuno studia per anni per puntare un bastoncino e aspettare. Eppure eccomi qui: punto, aspetto, e mi riesce pure bene.",
	},
	["cls.priest.muse.w06.004"] = {
		"Sì, è una bacchetta. No, non fa giochi di prestigio. Be', uno solo. Più volte.",
		"Non ridere della bacchetta. Ha messo in fuga più guai di tante spade che conosco.",
	},
	["cls.priest.muse.w06.005"] = {
		"La stoffa non ferma una lama. In compenso mostra ogni macchia, così tutti sanno che giornata ho avuto.",
		"L'orlo di questa tonaca ha raccolto un campione di ogni strada che ho percorso. Dal fango si potrebbe ricostruire il mio viaggio.",
		"Le piastre a chi sta davanti, la stoffa a chi sta dietro. Qualcuno l'ha deciso tanto tempo fa, e le mie costole hanno ancora qualcosa da ridire.",
	},
	["cls.priest.muse.w06.006"] = {
		"risvolta una manica, trova un nuovo strappo nella stoffa e lo guarda con un sospiro, la pazienza di chi rammenda per mestiere.",
		"infila l'ago con cura e chiude uno squarcio della tonaca a punti piccoli e regolari, con le stesse mani ferme che chiudono altre ferite.",
	},
	["cls.priest.muse.w06.007"] = {
		"Il dubbio non è nemico di ciò in cui credo. È la sentinella al cancello, che chiede i documenti a ogni nuova certezza.",
		"Nei giorni in cui dubito lavoro esattamente come negli altri. La preghiera non mi chiede di che umore sono prima di rispondere.",
		"Se un giorno smetto di dubitare, vorrà dire che qualcosa è andato storto. È così che cominciano i fanatici peggiori.",
	},
	["cls.priest.muse.w06.008"] = {
		"La Luce non viene perché sono {g:buono|buona}. Viene perché ho imparato ad aprirle la porta, mille volte, anche nei giorni stanchi.",
		"La gente immagina la Luce come un dono che cade in grembo a chi lo merita. È più simile a un mestiere: ti presenti, ti inginocchi, lo rifai.",
		"Prima la disciplina, poi la grazia. I maestri lo ripetevano tanto che avevo smesso di sentirlo. Adesso lo sento ogni volta che la Luce risponde.",
	},
	["cls.priest.muse.w06.009"] = {
		"L'ombra non è malvagia, così come non lo è un coltello. Ma la tengo nel fodero, e so sempre dov'è il fodero.",
		"Le preghiere più scure vengono facili quando sono {g:arrabbiato|arrabbiata}. Proprio per questo le uso solo a mente fredda.",
		"Nelle arti oscure c'è un piacere freddo e pulito. Lo annoto come un cerusico annota una febbre: con cura, e senza fidarmi.",
	},
	["cls.priest.muse.w06.010"] = {
		"Certi vecchi maestri delle arti più scure non parlano proprio. Altri dicono che una mente che non conosce i propri angoli bui è la più facile da spezzare. Credo che abbiano paura della stessa cosa.",
		"Una scuola dice: non toccare mai il buio. L'altra: conoscilo, così non potrà sorprenderti. Io sono {g:finito|finita} a metà strada, il che vuol dire: con prudenza.",
	},
	["cls.priest.muse.w06.011"] = {
		"Di rado imparo i loro nomi. Le facce però le ricordo: l'istante in cui la paura se ne va e capiscono che se la caveranno.",
		"Capita che qualcuno che ho rimesso in sesto mi saluti in mezzo alla folla. Non riconosco mai prima la faccia. Riconosco la ferita.",
		"Quando il dolore smette, la gente fa una certa faccia. Sorpresa, soprattutto, e un po' di imbarazzo. Io la colleziono come altri collezionano monete.",
	},
	["cls.priest.muse.w06.012"] = {
		"Gli altri ammirano il panorama. Io controllo il colorito di tutti e come stanno risparmiando quella gamba sinistra.",
		"Chi cura non guarda mai davvero il paesaggio. C'è sempre qualcuno, all'angolo dello sguardo, che zoppica appena e finge di niente.",
		"Conto gli arti di chiunque incontri, senza volerlo. Due braccia, due gambe, buon colorito. Poi posso salutare.",
	},
	["cls.priest.muse.w06.013"] = {
		"Quando qualcuno cade, tutti guardano chi cura. Quando non cade nessuno, tutti guardano il bottino.",
		"Se tieni tutti in piedi è stata «una giornata tranquilla». Se ne perdi uno è colpa del guaritore. Con questi conti ho fatto pace da tempo.",
	},
	["cls.priest.muse.w06.014"] = {
		"Il mio libro di preghiere ormai è più margine che preghiera: appunti, correzioni, lo schizzo di qualche ferita che non avevo capito.",
		"Ogni rito che mi hanno insegnato l'ho riscritto un po' a matita. Le parole restano; le note su quando falliscono sono mie.",
		"Lo studio è la metà silenziosa del curare. Nessuno vede le ore sul libro, solo il momento in cui le parole funzionano.",
	},
	["cls.priest.muse.w06.015"] = {
		"Le parole di una preghiera di guarigione contano meno di quanto fingano i maestri. Conta se le penso davvero mentre ho le mani occupate.",
		"Mi sono {g:inceppato|inceppata} sulle parole e ho visto lo stesso la ferita chiudersi. Le ho dette alla perfezione e non ho sentito risposta. È l'intenzione la cosa strana.",
	},
	["cls.priest.muse.w06.016"] = {
		"si inginocchia per qualche istante, non abbastanza perché qualcuno ci faccia caso, poi si rialza e si spolvera le ginocchia.",
		"china il capo sulle mani giunte, le labbra che si muovono senza suono, e ha già finito prima che il momento diventi una cerimonia.",
	},
	["cls.priest.muse.w06.017"] = {
		"si tasta le tasche in un ordine familiare: l'acqua, un po' di pane, il libro consumato, una striscia di stoffa di riserva. Poi annuisce, {g:soddisfatto|soddisfatta}.",
		"fa l'inventario di quel che resta: un otre mezzo pieno, un tozzo di pane, un libro con la costola ormai arresa. Basta, per adesso.",
	},
	["cls.priest.muse.w06.018"] = {
		"Chiunque mi incroci può avere una benedizione. Non costa niente, e non immagini quanto pochi la chiedano.",
		"Distribuisco vigore come pane in un giorno di festa. Qualcuno mi guarda con sospetto. I più si raddrizzano un poco.",
	},
	["cls.priest.muse.w06.019"] = {
		"Quando sanguinano in due e posso arrivare in tempo solo da uno, scelgo. Nessuno ti dice che il mestiere è questo. Il mestiere è questo.",
		"Scegliere chi curare prima: un compito freddo per un momento che brucia. Ho imparato a decidere in fretta, e a farci pace piano.",
		"La cosa più dura che mi hanno insegnato non era un incantesimo. Era distogliere lo sguardo da una ferita per poterne chiudere un'altra.",
	},
	["cls.priest.muse.w06.020"] = {
		"La mia paura non è morire. È restare lì a mani vuote mentre qualcuno mi guarda, in attesa di una cosa che non so fare.",
		"Chi cura teme sempre lo stesso istante: l'incantesimo che dovrebbe venire e non viene. L'ho provato. È come cadere restando in piedi.",
	},
	["cls.priest.muse.w06.021"] = {
		"La gente crede che i sacerdoti siano sereni. Io lo sono come un'anatra: tranquilla sopra, e sotto le zampe che vanno all'impazzata.",
		"Calma? Sono un fascio di nervi in tonaca. Ho solo avuto tanto tempo per esercitarmi a sembrare in pace.",
	},
	["cls.priest.muse.w06.022"] = {
		"No, non posso benedirti gli stivali perché smettano di cigolare. Ci ho provato. Due volte.",
		"La gente mi chiede di benedire le cose più strane. Soprattutto i dadi. A volte una salsiccia.",
	},
	["cls.priest.muse.w06.023"] = {
		"Gli altri possono cadere e rialzarsi. Se cado io, non si rialza nessuno. Ci penso ogni volta che mi viene voglia di fare {g:l'eroe|l'eroina}.",
		"Per me il coraggio è restare dietro, al mio posto. Sembra meno eroico di quello che è.",
		"Il mio primo dovere è restare in piedi. Non per paura: ci conta chiunque io stia tenendo su.",
	},
	["cls.priest.muse.w06.024"] = {
		"A più di un nemico ho augurato di guarire presto, subito dopo averlo messo a terra. Non è ipocrisia. È chi cura che ha una giornata storta.",
		"Anche nel mezzo di uno scontro, una parte di me nota dove l'altro è ferito, e vorrebbe sistemarlo. Ho smesso di cercare di togliermi il vizio.",
	},
	["cls.priest.muse.w06.025"] = {
		"Nelle Plaguelands i morti camminano a migliaia. Ogni ferita che chiudo è un piccolo voto ostinato contro di loro.",
		"La peste ha fatto capire al mondo intero a cosa serve chi cura. Avrei preferito che lo imparasse in un altro modo.",
	},
	["cls.priest.muse.w06.026"] = {
		"La Luce, quando mi attraversa, brucia un poco. Lascio fare. Un po' di dolore è un pedaggio onesto, per una cosa morta che ricuce i vivi.",
		"Alcuni vivi trasaliscono quando li curo. Ci sta. Trasalisco anch'io, ogni volta che la Luce si ricorda di cosa sono.",
		"Mi avevano detto che la Luce mi avrebbe {g:rifiutato|rifiutata}. Non l'ha fatto. Mi fa solo sentire ogni passo della distanza che c'è tra noi.",
	},
	["cls.priest.muse.w06.027"] = {
		"Un cadavere con un libro di preghiere che tiene in vita i vivi. Il Re dei Lich dev'essere furioso, e la cosa mi rallegra più del dovuto.",
		"La mia carne ormai si ripara a stento. Quella degli altri riesco ancora a ricucirla. C'è una battuta, in questo, ma sono {g:troppo stanco|troppo stanca} per farla.",
	},
	["cls.priest.muse.w06.028"] = {
		"Elune non grida. Aspetta, come aspetta l'acqua ferma, finché non mi faccio abbastanza {g:quieto|quieta} da vedere cosa c'è dentro.",
		"Le sorelle del tempio insegnano che Elune risponde piano, perché la sentano solo i pazienti. Io la pazienza la sto ancora imparando.",
		"Ovunque vada la strada, il silenzio di Elune viene con me. Basta che io smetta di parlare abbastanza a lungo da accorgermene.",
	},
	["cls.priest.muse.w06.029"] = {
		"La luce di Elune è gentile: non brucia ciò che tocca. Cerco di curare allo stesso modo, senza far sentire nessuno più piccolo perché ne ha bisogno.",
		"La mia gente prega una dea che veglia invece di comandare. Credo che cambi qualcosa, nel modo in cui ci ricuciamo a vicenda.",
	},
	["cls.priest.muse.w06.030"] = {
		"I nani sono arrivati alla Luce come arrivano a tutto: piano, con sospetto, e poi per sempre.",
		"A Ironforge dicono che una preghiera dev'essere come un buon muro: semplice, solida, e ancora in piedi fra cent'anni.",
	},
	["cls.priest.muse.w06.031"] = {
		"I fratelli di Northshire Abbey dicono che la Luce è una lanterna, non un sole: la porti dove serve.",
		"La cattedrale di Stormwind è tutta altezza e oro. La Luce che conosco io è più piccola, e viaggia meglio.",
	},
	["cls.priest.muse.w06.032"] = {
		"Gli anziani dei Darkspear dicono che i loa rispettano chiunque mantenga una promessa. Io la mantengo con i feriti. Spero che valga per tutti quelli che ascoltano.",
		"Da una parte i vecchi spiriti, dall'altra gli insegnamenti dei sacerdoti. Ho smesso di scegliere. Curo, e li lascio discutere tra loro.",
	},
	["cls.priest.muse.w06.033"] = {
		"Con un solo grido posso piantare il terrore in una mente. È utile. Detesto quanto sia utile.",
		"Il grido che disperde i miei nemici viene da un posto che preferirei non frequentare. Ci vado comunque, quando serve, e ne esco in fretta.",
	},
	["cls.priest.muse.w06.034"] = {
		"Dentro un'altra mente è tutto troppo vicino: la sua paura, la sua fame, la stonatura della mia volontà nelle sue mani. Non ci resto mai più del necessario.",
		"Prendere il corpo di qualcuno come un mantello in prestito. I maestri lo chiamavano uno strumento. A me sembra ogni volta di più un'intrusione.",
	},
	["cls.priest.muse.w06.035"] = {
		"Vedere per un momento con gli occhi di un altro: com'è strano il suo mondo, tutti i colori un po' sfasati rispetto ai miei.",
		"Quando guardo con gli occhi di qualcun altro, la prima cosa che noto non è mai quello che vede. È quello che ignora.",
	},
	["cls.priest.muse.w06.036"] = {
		"Legare i morti con catene di preghiera mi sembra la cosa più vecchia che un sacerdote faccia. Come se fossimo stati fatti per questo, tanto tempo fa.",
		"Le catene che metto ai morti inquieti non sono crudeltà. Sono una pausa, un respiro trattenuto, un'occasione per chiudere la faccenda in modo pulito.",
	},
	["cls.priest.muse.w06.037"] = {
		"Incatenare i morti che camminano, quando ne faccio parte. Cerco di non pensare a quanto facilmente funzionerebbe su di me.",
		"Le catene prendono i non morti e lasciano stare me. Non ho mai capito se sia misericordia o una svista.",
	},
	["cls.priest.muse.w06.038"] = {
		"Richiamare qualcuno dall'altra parte della morte non diventa mai una cosa normale. Dico le parole sempre allo stesso modo, e ogni volta, dopo, mi tremano le mani.",
		"La morte è una porta a cui mi è concesso bussare. Non sono mai {g:stato sicuro|stata sicura} che si apra, e spero di non abituarmici mai quando lo fa.",
	},
	["cls.priest.muse.w06.039"] = {
		"Metà del restare in vita, per chi cura, è imparare a farsi dimenticare nel momento giusto. L'altra metà è correre.",
		"C'è una preghiera che fa semplicemente scordare al nemico che ci sono. Fra tutti i doni, è quello di cui vado meno {g:fiero|fiera} e per cui sono più {g:grato|grata}.",
	},
	["cls.priest.muse.w06.040"] = {
		"Il fuoco che accendo dentro prima di uno scontro non è rabbia. È più simile a un focolare: qualcosa che impedisca alla mia risolutezza di raffreddarsi.",
		"Una piccola fiamma accesa sotto le costole, e d'un tratto i colpi arrivano più morbidi. I maestri lo chiamavano fuoco interiore. Io lo chiamo non arrendersi troppo presto.",
	},
	["cls.priest.muse.w06.041"] = {
		"Per qualcuno che ha giurato di curare, conosco un numero sorprendente di modi per dare fuoco alle cose.",
		"C'è una preghiera che fa scendere il fuoco su un nemico. Ogni volta che funziona mi guardo le mani per un momento, come se fossero di qualcun altro.",
	},
	["cls.priest.muse.w06.042"] = {
		"Togliere maledizioni e incantesimi di dosso alla gente è come togliere le lappole dal pelo di un cane: noioso, un po' pungente, e dopo ti sono sempre grati.",
		"Metà dei miei incantesimi ricuce la carne. L'altra metà sbroglia la magia che qualcun altro ha lasciato in giro dentro un corpo. Della parte da sbrogliare nessuno ti avverte.",
	},
	["cls.priest.muse.w06.043"] = {
		"Se ti fai male, dimmelo subito. Curo, non leggo nel pensiero. Be', non prima di pranzo.",
		"Sanguini? Dillo. Noto quasi tutto, ma l'orgoglio nasconde le ferite meglio di qualsiasi armatura.",
	},
	["cls.priest.muse.w06.044"] = {
		"Ogni volta che colpisco con la mente, un po' di quel colpo mi rimbomba nel cranio. Nelle sale d'addestramento nessuno parla dei mal di testa.",
		"Scagliare un pensiero tanto forte da ferire lascia stordito anche chi lo lancia. Uno scambio onesto, immagino. Quasi sempre.",
	},
	["cls.priest.muse.w06.045"] = {
		"Stare fermi fa parte del mestiere. Siediti, respira oppure no, lascia che il silenzio rientri. Chi cura e non sa riposare è solo una scorciatoia verso il pozzo vuoto.",
		"I maestri lo chiamavano spirito: quello che mi riempie di nuovo quando smetto di muovermi. Non ho mai trovato una parola migliore, e l'ho cercata.",
	},
	["cls.priest.muse.w06.046"] = {
		"si strofina le mani con un po' d'acqua, insistendo nelle pieghe dove i guai degli altri tendono a restare.",
		"si sciacqua le dita una per una, con la cura distratta di chi l'ha fatto mille volte tra una ferita e l'altra.",
	},
	["cls.priest.muse.w06.047"] = {
		"traccia per abitudine un piccolo segno nell'aria, si accorge di farlo e sorride appena.",
		"fa il vecchio gesto di benedizione verso niente di preciso, poi nasconde la mano come se fosse stata colta sul fatto.",
	},
	["cls.priest.muse.w06.048"] = {
		"apre un libretto malconcio su una pagina che si apre da sola e ne legge qualche riga muovendo le labbra in silenzio.",
		"sfoglia un piccolo volume consumato e si ferma su una pagina con l'orecchia, come davanti alla porta di un vecchio amico.",
	},
	["cls.priest.muse.w06.049"] = {
		"I sacerdoti non scappano. Si spostano con grande dignità, e in fretta.",
		"Io non mi ritiro mai. Mi sposto dove sono più utile, che per combinazione è più lontano.",
		"Non sto scappando. Vado a chiamare aiuto, molto in fretta, nella direzione opposta.",
	},
	["cls.priest.muse.w06.050"] = {
		"Quando qualcuno mi ringrazia per bene non so mai cosa fare. Rimetterlo in sesto era la parte facile. Farsi guardare è più difficile.",
		"La gratitudine mi fa dondolare sui piedi come un apprendista. Preferirei che mi porgessero una tazza d'acqua e mi lasciassero sedere.",
	},
	["cls.priest.muse.w06.051"] = {
		"Nessuno mi ha mai chiesto di salvare tutti. Quella pretesa viene da dentro, ed è il padrone più duro che abbia mai servito.",
		"Ho fatto voto di curare. Strada facendo è diventato il voto di non perdere mai nessuno, e quello non riesco a mantenerlo.",
	},
	["cls.priest.muse.w06.052"] = {
		"Per me riposare non è pigrizia. È manutenzione. Chi cura da stanco sbaglia, e i miei sbagli hanno un nome.",
		"Sedermi mentre gli altri lavorano mi sembra ancora sbagliato. Non dovrebbe. Tutti lavorano meglio se chi li tiene in vita non è sfinito.",
	},
	["cls.priest.muse.w06.053"] = {
		"Il mio suono preferito non è un inno. È la gente che ride un po' troppo forte dopo uno scontro da cui sono usciti tutti vivi.",
		"La parte migliore del mestiere arriva dopo: le battute col tremito nella voce, la fiaschetta che passa di mano, quello che un'ora fa era pallido e ora si lamenta del cibo.",
	},
	["cls.priest.muse.w06.054"] = {
		"Quando viaggio da {g:solo|sola} ho un paziente soltanto. È più tranquillo, e stranamente più solitario che badare a una folla.",
		"Senza nessuno da curare a parte me, le mie preghiere sembrano una voce in una stanza vuota. Eppure, la stanza risponde.",
	},
	["cls.priest.muse.w06.055"] = {
		"Cammina con prudenza. E qualunque cosa vegli su di te, che oggi sia ben sveglia.",
		"Va' in pace. Se ti metti nei guai, grida. Sono più {g:svelto|svelta} di quanto sembri.",
	},
	["cls.priest.muse.w06.056"] = {
		"Certi giorni mi sorprendo a pesare chi meriti la prossima cura. Smetto subito. Quella bilancia non tocca a me.",
		"Sarebbe facile curare più in fretta chi è gentile. Alla ferita non importa chi sia gentile, e quindi nemmeno a me.",
	},
	["cls.priest.muse.w06.057"] = {
		"Dopo un lungo tratto di incantesimi mi resta un dolore dietro gli occhi, come se avessi fissato una lampada. Passa. Passa sempre.",
		"Il potere non è gratis. Il mio costa un pulsare sordo alle tempie e una fame improvvisa e sfacciata di pane.",
	},
	["cls.priest.muse.w06.058"] = {
		"I maestri avvertono ogni novizio: un sacerdote che non sa dire di no a mezzogiorno è già vuoto. Ho imparato a razionare la gentilezza. È peggio di come suona.",
		"«Spenditi per tutti e non ti resterà niente per chi ne ha davvero bisogno.» I maestri lo dicono come un avvertimento. Nei giorni stanchi io lo sento come un'accusa.",
	},
	["cls.priest.muse.w06.059"] = {
		"I più anziani insistono che la Luce non è un'arma. Poi ci insegnano a fargliela cadere in testa. A cena ho smesso di farlo notare.",
		"«La Luce serve a curare», dice ogni sacerdote, un attimo prima di mostrarti come bruciarci uno gnoll.",
	},
	["cls.priest.muse.w06.060"] = {
		"Curare e ferire usano lo stesso sapere, la stessa concentrazione, lo stesso silenzio. Cambia solo la direzione, e la scelgo io ogni volta.",
		"Il rimedio in una mano, il danno nell'altra. Il trucco è non lasciare mai che una delle due si dimentichi dell'altra.",
	},
	["cls.priest.muse.w06.061"] = {
		"La mente è una casa con una cantina. Studiare le arti oscure vuol dire sapere dov'è la porta della cantina, e tenere la chiave addosso.",
		"Ogni mente ha stanze in cui il padrone non entra mai. L'addestramento mi ha insegnato a trovarle. La decenza, a bussare.",
	},
	["cls.priest.muse.w06.062"] = {
		"Curare mi ha insegnato a leggere le facce. Il pallore, la mascella serrata, il sorriso coraggioso che vuol dire «è peggio di quanto dico». Le bugie si vedono allo stesso modo.",
		"Distinguo una storta da una frattura da come uno sta in piedi. Con lo stesso metodo distinguo una bugia. Il che mi rende pessima compagnia a carte.",
	},
	["cls.priest.muse.w06.063"] = {
		"Qualunque cosa guarisca attraverso di me, non è mia. Io sono la tazza, non l'acqua. Conviene ricordarlo nei giorni in cui mi chiamano {g:taumaturgo|taumaturga}.",
		"Quando funziona, non sono io. Quando fallisce, di solito sì. Pare che l'accordo sia questo, e l'ho accettato.",
	},
	["cls.priest.muse.w06.064"] = {
		"La biblioteca di un sacerdote è fatta soprattutto di mozziconi di candela e libri presi in prestito. La mia sta in uno zaino, e ogni pagina l'ho letta più di due volte.",
		"Mi sono {g:consumato|consumata} gli occhi su troppe preghiere al lume di un mozzicone. Eppure sono le ore migliori della giornata, quelle piccole e quiete.",
	},
	["cls.priest.muse.w06.065"] = {
		"C'è una gioia piccola e privata nella prima cura della giornata, prima che qualcosa vada storto. Cerco di accorgermene ogni volta.",
		"La prima ferita che chiudo ogni giorno mi sorprende ancora un po'. Come se il mondo avesse accettato di collaborare, ancora una volta.",
		"Prima che comincino i guai c'è sempre una cura facile: una nocca sbucciata, un polso storto. Quelle mi sono care.",
	},
	["cls.priest.muse.w06.066"] = {
		"Dammi un momento. Il pozzo è secco, e gridargli contro non lo riempie.",
		"Pazienza. Le mie riserve sono vuote, e non conosco niente che le faccia sbrigare.",
		"Se mi vuoi utile al prossimo scontro, concedimi prima un minuto di silenzio.",
	},
	["cls.priest.muse.w06.067"] = {
		"Sapere esattamente quanto è fragile un corpo non mi rende più {g:coraggioso|coraggiosa}. Mi rende molto {g:educato|educata} con qualsiasi cosa abbia gli artigli.",
		"Ho guardato dentro abbastanza ferite da sapere quanto poco tiene insieme una persona. Cammino con più prudenza degli altri, e non me ne vergogno.",
		"Chi cura è un pessimo scavezzacollo. Sappiamo con troppa precisione cosa succede dopo.",
	},
	["cls.priest.muse.w06.068"] = {
		"piega le dita una alla volta, sciogliendo la rigidezza di mani che oggi hanno retto parecchio potere.",
		"scuote entrambe le mani come per asciugarle, anche se sono asciutte, finché il lieve formicolio della magia spesa non svanisce dalle punte delle dita.",
		"preme i pollici nei palmi stanchi, piano, come un fabbro che posa il martello tra un lavoro e l'altro.",
	},
	["cls.priest.muse.w06.069"] = {
		"La Luce risponde ai sacerdoti di entrambi i fronti di questa guerra. Non ho mai deciso se sia un conforto o un rimprovero.",
		"Oltre le linee, un sacerdote dell'altra parte dice quasi le stesse parole che dico io. La Luce ci sente tutti e due. Pensaci troppo e il sonno non arriva.",
		"Nel campo nemico ci sono sacerdoti che si inginocchiano alla stessa Luce a cui mi inginocchio io. Dovrebbe rendere la guerra più piccola. Chissà come, la rende più grande.",
	},
	["cls.priest.muse.w06.070"] = {
		"Il sangue ha smesso di impressionarmi da un pezzo. A volte questo mi impressiona più di quanto abbia mai fatto il sangue.",
		"Posso inginocchiarmi in un macello che farebbe impallidire un soldato e pensare solo a dove premere e quando. Non so bene quando sia successo.",
	},
	["cls.priest.muse.w06.071"] = {
		"Se un novizio mi chiedesse una sola lezione, direi: tieni d'occhio quelli silenziosi. Quelli rumorosi te lo diranno da soli, che sono feriti.",
		"I maestri insegnavano parole e gesti. La strada mi ha insegnato quali ferite la gente nasconde, ed è questa la lezione che passerei.",
		"Una cosa che nessun libro spiega: sul dolore la gente mente in tutte e due le direzioni. Impara che tipo di bugiardo stai curando.",
	},
	["cls.priest.muse.w06.072"] = {
		"Chi cura mangia per ultimo. Non per virtù: gli altri avevano troppa fame per aspettare che finissi.",
		"Sempre {g:l'ultimo|l'ultima} ad arrivare al fuoco, sempre {g:il primo|la prima} a cui si chiede se questo taglio ha una brutta cera. Sì, ce l'ha. Siediti.",
	},
	["cls.priest.muse.w06.073"] = {
		"Ci sono giorni in cui non mi resta altro da dare che la tecnica. La gentilezza è finita; lavora solo il mestiere. Spero che nessuno se ne accorga.",
		"La compassione si stanca prima del corpo. Allora vado avanti per abitudine, e confido che mi porti finché il sentimento non mi raggiunge.",
	},
	["cls.priest.muse.w06.074"] = {
		"Non ogni cura è un miracolo. Quasi sempre è un labbro spaccato, un ginocchio malandato, una febbre che sta passando. Le piccole misericordie restano misericordie.",
		"La guerra non la fermerò mai. Posso fermare una tosse, rimettere a posto un polso, dare sollievo a una ferita. È un'altra scala, ma non è poco.",
	},
	["cls.priest.muse.w06.075"] = {
		"fa scorrere un'occhiata rapida su chiunque sia vicino, l'abitudine di chi cura e controlla ogni volto in cerca di pallore.",
		"osserva una dopo l'altra le persone a portata di sguardo, misurando zoppie e colorito, poi si rilassa quando nessuno ha bisogno di niente.",
	},
	["cls.priest.muse.w06.076"] = {
		"Non sono mai {g:riuscito|riuscita} a pregare in preda alla furia. La Luce non mi rifiuta, allora: sono io che non trovo l'ingresso.",
		"La rabbia e la Luce non stanno bene nella stessa stanza. Quando mi servono tutte e due, mando fuori prima la rabbia e la faccio aspettare in corridoio.",
	},
	["cls.priest.muse.w06.077"] = {
		"Sono {g:stato|stata} accanto ad abbastanza moribondi da non temere più l'istante in sé. Temo di lasciare qualcuno guarito a metà.",
		"Quando toccherà a me, spero che qualcuno mi stia vicino come io sono {g:stato|stata} vicino agli altri. In silenzio, senza promesse.",
	},
	["cls.priest.muse.w06.078"] = {
		"Tutti portano un po' di fede. La mia viene con dei doveri annessi.",
		"La fede è facile in una giornata tranquilla. Richiedimelo quando qualcuno sanguina e io ho finito le forze.",
	},
	["cls.priest.muse.w06.079"] = {
		"Li rimetto in piedi e loro se ne vanno per la loro vita. Quasi mai scopro come finisce la storia. Ho deciso di immaginare che finisca bene.",
		"Quasi tutti quelli che curo non li rivedrò più. Me li immagino in un posto qualunque, a lamentarsi dei prezzi, e mi aiuta.",
	},
	["cls.priest.muse.w06.080"] = {
		"Ogni nemico con un po' di giudizio punta per primo a chi veste di stoffa. Lo prendo come un complimento professionale, da una distanza di sicurezza.",
		"Essere il bersaglio più tenero del campo ti insegna a metterti in posti strani: dietro le colonne, dietro gli amici, dietro il tuo stesso buonsenso.",
	},
	["cls.priest.muse.w06.081"] = {
		"Il potere speso lascia un sapore di metallo freddo. Quando è finito del tutto, tutto sa di niente.",
		"Sento le mie riserve come si sente la fame: una misura bassa e costante, che cala a ogni parola che dico.",
		"Il mana è la contabilità silenziosa dietro ogni miracolo. Il saldo lo conosco sempre, ed è sempre più basso di quanto vorrei.",
	},
	["cls.priest.muse.w06.082"] = {
		"canticchia a mezza voce un inno lento, perde la melodia a metà e lo finisce in silenzio.",
		"mormora un pezzo di una vecchia salmodia, più per abitudine che per devozione, e la lascia sfumare nel silenzio.",
	},
	["cls.priest.quest_complete.w06.001"] = {
		"Quasi tutta la ricompensa se ne va in acqua, pane e una candela nuova. Il mestiere di chi cura va avanti con un carburante molto semplice.",
		"Immagino che la spenderò in stoffa e inchiostro. Chi cura costa poco da mantenere e tanto da sostituire.",
		"Qualche moneta per la borsa, e qualcuna per il prossimo mendicante con la tosse. Di solito si divide così.",
	},
	["cls.priest.quest_complete.w06.002"] = {
		"Dite pure che è fatto. E se qualcuno ne è uscito con un graffio, mandatelo da me prima che faccia infezione.",
		"Finito. Chi esce zoppicando passa da me, senza discutere.",
		"Tutto sistemato. Allora, chi ha nascosto un taglio per tutto questo tempo?",
	},
	["cls.priest.quest_complete.w06.003"] = {
		"alza la mano in una breve benedizione su chi ha affidato l'incarico, un po' per abitudine e un po' per cortesia.",
		"abbozza un segno di benedizione mentre si congeda, e poi sembra lievemente {g:imbarazzato|imbarazzata}.",
		"china il capo e mormora qualche parola di ringraziamento rivolta a qualcosa di più grande di chi ha pagato.",
	},
	["cls.priest.quest_complete.w06.004"] = {
		"La gente crede che i sacerdoti si limitino a pregare. Oggi ho trasportato, recuperato, combattuto e camminato. Le preghiere ci stanno in mezzo.",
		"È in commissioni come questa che la fede vive davvero: nel camminare e nel portare pesi, non nello stare in ginocchio.",
		"Nessuno si ricorderà di questo piccolo incarico. Va bene così. Quasi tutto il bene del mondo lo fa gente di cui nessuno si ricorda.",
	},
	["cls.priest.quest_complete.w06.005"] = {
		"Finito, e le mie riserve sono ridotte all'osso. La prossima cosa sulla lista è una sedia e un po' d'acqua.",
		"Il lavoro è fatto, e io quasi. Una lunga seduta, una tazza d'acqua, e sarò di nuovo in grado di aiutare qualcuno.",
		"Mi è costato più del dovuto. Finché non mi riposo, non servo a nessuno.",
	},
	["cls.priest.quest_complete.w06.006"] = {
		"Un sacerdote dovrebbe rifiutare il compenso, dicono. Un sacerdote dovrebbe anche mangiare. Trovo un compromesso e lo prendo.",
		"Ringraziamenti brevi e monete oneste. Ben accetti entrambi.",
		"Lo accetto come un'offerta per i poveri. Guarda caso, {g:il povero|la povera} sono io.",
	},
	["cls.priest.quest_complete.w06.007"] = {
		"Una strada un po' più sicura, una casa un po' più tranquilla. Non posso curare una terra intera, ma posso abbassarle la febbre, una commissione dopo l'altra.",
		"Ogni incarico finito è una ferita chiusa nel mondo stesso. Piccole, quasi sempre. Contano lo stesso.",
		"La giornata di qualcuno si è appena fatta più leggera. Non lo vedrò, ma quasi lo sento, come un peso tolto dal petto di uno sconosciuto.",
	},
	["cls.priest.quest_complete.w06.008"] = {
		"accetta la ricompensa con un piccolo inchino, poi si controlla le maniche in cerca di sangue, per lunga abitudine.",
		"prende ciò che {g:gli|le} viene offerto ed è già lì che scruta le facce intorno, in cerca di qualcuno da curare.",
		"ringrazia con un cenno e infila il compenso tra le pagine di un libretto, dove sarà facile dimenticarlo.",
	},
	["cls.priest.quest_complete.w06.009"] = {
		"Ogni commissione mi insegna qualcosa che nessun maestro penserebbe di dire. La lezione di oggi: la gente sottovaluta sempre le distanze.",
		"Ne esco sapendo un po' di più sulla gente e un po' di meno sulle mappe. Scambio equo.",
		"Non ho imparato un incantesimo, ma ho imparato qualcosa lo stesso. I maestri la chiamerebbero saggezza. Io la chiamo piedi doloranti.",
	},
	["cls.priest.quest_complete.w06.010"] = {
		"La prossima volta che ci sono guai, chiamatemi all'inizio. Curare è più facile prima che arrivi il peggio.",
		"Felice di aiutare. E se qualcuno qui ha una tosse che fa finta di non sentire, questo è il momento.",
		"Fatto. Già che sono qui: c'è qualcuno che ha bisogno di farsi dare un'occhiata?",
	},
	["cls.priest.quest_complete.w06.011"] = {
		"Non tutti gli incarichi mi chiedono di curare. Alcuni mi chiedono di porre fine alle cose. Faccio entrambe, e cerco di tenere i conti onesti.",
		"Certi giorni, chi cura viene pagato per fare del male. Ho fatto quel che mi chiedevano. Ci rifletterò dopo, con calma.",
		"Le monete sono pulite. Se lo fosse anche il lavoro, è una domanda con cui resterò per un po'.",
	},
	["cls.priest.quest_complete.w06.012"] = {
		"lascia andare un lungo sospiro mentre la commissione si chiude, e per un momento resta semplicemente lì, le mani infilate nelle maniche.",
		"fa ruotare le spalle sotto la tonaca, irrigidite dal cammino, e si concede un breve sorriso stanco.",
		"si appoggia un momento al sostegno più vicino, gli occhi chiusi, raccogliendo quel poco di quiete che l'istante offre.",
	},
	["cls.priest.quest_complete.w06.013"] = {
		"Questa la offro alla Luce: non le monete, il cammino. È l'unica parte che fosse davvero mia da dare.",
		"Luce, prendi questa piccola cosa compiuta. Non è molto, ma è stata fatta con cura.",
		"Un'altra commissione posata ai piedi della Luce. Dubito che tenga il conto. Io sì, un po', nei giorni brutti.",
	},
	["cls.priest.quest_complete.w06.014"] = {
		"Aggiungi un altro nome alla lista di chi mi deve qualcosa di caldo da bere. Comincia a essere una lista lunga.",
		"Fatto. Accetto pagamenti in monete, gratitudine o un buon pasto, più o meno in quest'ordine di probabilità.",
		"Un altro favore fatto. Un giorno li riscuoterò tutti insieme e mi ritirerò in un posto tranquillo.",
	},
	["cls.priest.quest_complete.w06.015"] = {
		"La gente si fida più di una tonaca che di una spada. È lusinghiero, e un po' pericoloso. Cerco di meritarlo ogni volta.",
		"Credo che l'abbiano affidato a me perché sono {g:un sacerdote|una sacerdotessa}. Fiducia data all'abito. Mi piacerebbe che restasse meritata.",
		"C'è una fiducia particolare che la gente dà a chi cura. La spendo con attenzione: altri ci hanno messo tanto tempo a guadagnarla anche per me.",
	},
	["cls.priest.quest_complete.w06.016"] = {
		"scuote l'orlo della tonaca, che lungo la strada ha raccolto buona parte del viaggio.",
		"si pulisce le mani in un panno pulito, come dopo qualsiasi lavoro, che ci fosse o no qualcosa che sanguinava.",
		"si sistema la tonaca, rimette a posto una manica e sembra, per un momento, quasi in ordine.",
	},
	["cls.priest.quest_complete.w06.017"] = {
		"Fanno sempre la faccia sorpresa quando è il sacerdote a sporcarsi le mani. Come se pregare me le tenesse pulite.",
		"Sospetto che si aspettassero una predica insieme al lavoro. Gli ho dato il lavoro. La predica può aspettare.",
		"Chi l'ha chiesto probabilmente pensava che un sacerdote si sarebbe limitato a pregarci sopra. Certi giorni vorrei che funzionasse così.",
	},
	["cls.priest.quest_complete.w06.018"] = {
		"Un'altra finita. Io non tengo il conto, ma i miei piedi sì.",
		"Questa è chiusa. Riposo le mani e scopro chi altro ne ha bisogno.",
		"Finito, e qualcun altro sta già aspettando aiuto. È la forma di questa vita.",
	},
	["cls.priest.quest_complete.w06.019"] = {
		"È fatta. Va' in pace, e tieni insieme quel che è stato ricucito.",
		"Finito, con la mia benedizione in omaggio. Quella non si paga.",
		"Ecco. Qualunque cosa tu creda, che pensi bene di questa giornata.",
	},
	["cls.priest.quest_complete.w06.020"] = {
		"Il lavoro è fatto. Dirò una parola sommessa per chi si è fatto male lungo la strada senza mai trovare chi lo curasse.",
		"In tutto questo, qualcuno ha sofferto prima che io arrivassi. Finire non lo cancella, ma lo fa smettere.",
		"Fatto. Terrò un momento di silenzio per le parti di questa storia arrivate troppo tardi perché qualcuno potesse ricucirle.",
	},
	["cls.priest.quest_complete.w06.021"] = {
		"rinfila la bacchetta alla cintura con un colpetto soddisfatto, la commissione chiusa.",
		"mette via la bacchetta e piega le dita che la reggevano, come {g:sollevato|sollevata} di avere di nuovo le mani libere.",
	},
	["cls.priest.quest_progress.w06.001"] = {
		"A metà. Come una febbre: il mezzo è la parte peggiore, poi cala.",
		"Una parte fatta. Mi regolo come regolo il mana: mai tutto in una volta.",
		"Si va avanti. Non abbastanza per un ringraziamento, ma abbastanza per un cenno.",
	},
	["cls.priest.quest_progress.w06.002"] = {
		"C'è tutto quello che chiedevano. Andiamo, prima che qualcun altro si faccia male aspettando.",
		"Tutto, dunque. È ora di consegnare, e di vedere se lì qualcuno ha bisogno di una rattoppata.",
		"Ho raccolto tutto. Da loro, finché le gambe sono d'accordo.",
	},
	["cls.priest.quest_progress.w06.003"] = {
		"si ferma a fare il punto, confrontando quel che è fatto con quel che resta, e raddrizza le spalle sotto la tonaca.",
		"fa un piccolo segno sul margine di un libro consumato, un conto che solo {g:lui|lei} saprebbe leggere.",
		"dà un'occhiata a quanto fatto finora, annuisce una volta e prosegue senza cerimonie.",
	},
	["cls.priest.reputation_change.w06.001"] = {
		"Qui si fidano di me un po' di più. Chi cura vive di questo tipo di fiducia più che di monete.",
		"Il mio nome suona un po' meglio, alle loro orecchie. Bene. La prossima porta sarà più facile a cui bussare.",
		"Pare che mi sia {g:ricucito|ricucita} un posticino nelle loro grazie. Una strana cura al contrario.",
	},
	["cls.priest.rez.w06.001"] = {
		"Ecco com'è l'altra sponda della guarigione. Fredda, confusa, e finita troppo in fretta per prendere appunti.",
		"In piedi, di nuovo. Ho accompagnato tanti altri in questo momento. Scopro che i miei consigli sono irritantemente giusti: siediti, aspetta, lascia che si assesti.",
	},
	["cls.priest.rezother.w06.001"] = {
		"Torna qui. Piano. Il corpo ricorda prima della mente.",
		"Apri gli occhi. Il peggio è passato, e tu hai dormito per tutto il tempo.",
	},
	["cls.priest.rezother.w06.101"] = {
		"Torna, per la Luce. Era troppo presto per andarsene.",
		"Ritorna. La Luce tiene ancora la tua mano, e io pure.",
		"Torna da noi. La Luce ha acceso la strada: seguila.",
	},
	["cls.priest.rezother.w06.102"] = {
		"Richiamare qualcuno indietro è il lavoro più strano che faccio. Hanno sempre l'aria un po' offesa di trovarsi qui.",
		"Ogni volta che riporto indietro qualcuno, mi chiedo che cosa ho interrotto.",
		"La preghiera per i caduti è la più lunga che conosco. La dico piano. Voglio che ogni parola arrivi.",
	},
	["cls.priest.rezother.w06.103"] = {
		"si inginocchia accanto a chi è caduto e prega, basso e senza fretta, finché gli occhi sotto le palpebre chiuse non cominciano a muoversi.",
		"pronuncia la lunga preghiera sul corpo, una parola attenta dopo l'altra, e non distoglie lo sguardo quando il corpo si muove.",
		"china il capo su chi è caduto e chiama, piano, come si chiama qualcuno a casa da un campo lontano.",
	},
	["cls.priest.rezother.w06.104"] = {
		"Rieccoti. Nel frattempo non è successo niente, a parte la tua morte.",
		"Su, in piedi. E la prossima volta, scappa quando dico di scappare.",
		"Di nuovo tra noi. Tengo il conto, e lo racconterò a tutti.",
	},
	["cls.priest.rezother.w06.105"] = {
		"Apri gli occhi. Piano. Il mondo è ancora qui, e anche noi.",
		"Piano, piano. Ci sei di nuovo. Non provare ancora ad alzarti.",
		"Shh. Sei di nuovo con noi. Il freddo passerà.",
	},
	["cls.priest.rezother.w06.106"] = {
		"Tirare qualcuno indietro oltre quel confine, senza sapere cosa ci sia dall'altra parte. Solo la fede mi tiene ferme le mani.",
		"Non ho mai visto dove vanno. Conosco solo la strada del ritorno, e mi basta per continuare a pregare.",
	},
	["cls.priest.rezother.w06.107"] = {
		"Quella strada la conosco meglio di te. Torna indietro: non è tranquilla come sembra.",
		"Su, torna. Dammi retta, a me nessuno ha chiesto niente: da questa parte è meglio.",
	},
	["cls.priest.rezother.w06.108"] = {
		"Elune, riconduci chi si è smarrito lungo la strada d'argento.",
		"Torna a casa, anima errante. La dea ti ha tenuto il posto.",
	},
	["cls.priest.rezother.w06.109"] = {
		"In piedi. Qui dentro non lasciamo nessuno.",
		"Alzati. Lo finiamo insieme, o niente.",
		"Torna nei ranghi. Quella ce la pagano.",
	},
	["cls.priest.rezother.w06.110"] = {
		"La resurrezione è una bella preghiera. Lo sarebbe di più se la gente smettesse di averne bisogno.",
		"Riportare in vita i morti. Chissà quale negromante alza gli occhi al cielo, a vedere quanto la faccio sembrare pulita.",
	},
	["cls.priest.thanks.w06.001"] = {
		"Grazie. Te lo ripagherò la prima volta che avrai bisogno di una cura.",
		"Grazie di cuore. La prossima ferita che ti fai, la curo gratis.",
	},
	["cls.priest.thanks.w06.002"] = {
		"Grazie. Capita di rado che qualcuno si prenda cura di chi cura. L'ho notato.",
		"Ti benedico per questo. Davvero, non è un modo di dire.",
	},
	["cls.priest.threat.w06.001"] = {
		"Ho fatto voto di preservare la vita. Non ho specificato quale.",
		"I miei voti parlano di misericordia. Hanno qualche scappatoia.",
		"Ho promesso di curare chiunque me lo chieda. Tu non l'hai ancora chiesto.",
	},
	["cls.priest.threat.w06.002"] = {
		"Arrivo in una mente con la stessa facilità con cui arrivo a una ferita. Non invitarmi a entrare.",
		"I corpi li ricucio. Le menti posso spezzarle. Tieniti stretta la tua.",
		"Dietro i tuoi occhi c'è una stanzetta silenziosa. Conosco la strada.",
	},
	["cls.priest.threat.w06.003"] = {
		"Ti concedo una benedizione gratis: la possibilità di andartene.",
		"Vattene adesso e avrai le mie preghiere per una vita lunga. Resta, e avrai l'altro genere.",
	},
	["cls.priest.threat.w06.004"] = {
		"La Luce perdona. Io ci sto ancora lavorando. Non mettere alla prova con chi dei due hai a che fare.",
		"La Luce è misericordiosa. Io la servo, il che non mi rende pari a lei.",
	},
	["cls.priest.threat.w06.005"] = {
		"lascia la bacchetta nel palmo, puntata da nessuna parte in particolare, e quell'immobilità dice più di una mano alzata.",
		"batte la bacchetta sul palmo, piano e con regolarità, in attesa di una risposta.",
	},
	["cls.priest.threat.w06.006"] = {
		"Quasi tutto il mio lavoro è tenere in vita gli sciocchi. Non diventare l'eccezione.",
		"Ho una lunga lista di gente da curare. Tu non ci sei. Fa' in modo che resti così.",
	},
	["cls.priest.victory.w06.001"] = {
		"si lascia cadere sul primo tratto di terreno piano e stappa una borraccia d'acqua.",
		"si siede lì dove si trova, a gambe incrociate, e beve piano, gli occhi socchiusi.",
		"si accomoda a gambe incrociate e sorseggia, aspettando che la forza degli incantesimi torni a filtrare.",
	},
	["cls.priest.victory.w06.002"] = {
		"Quanto è profondo il pozzo, adesso? Abbastanza per il prossimo, spero.",
		"Prima di tutto, contare quel che mi resta. Poi decidere se sedermi.",
		"La prima cosa dopo ogni scontro: quanto mana è costato? Mai poco come vorrei.",
	},
	["cls.priest.victory.w06.003"] = {
		"Allora, chi sanguina? Niente eroismi, ditemelo e basta.",
		"Ferite? Mostratemele adesso, non fra tre scontri.",
		"Prima di muoverci: tutti interi? Parlate, non so leggere così bene le facce.",
	},
	["cls.priest.victory.w06.004"] = {
		"Datemi un momento per bere, o il prossimo scontro ve lo sbrigate da soli.",
		"Pausa acqua. Nessuno tocchi niente finché non ho fatto il pieno.",
		"Aspettate col prossimo. Chi cura deve bere un sorso, a meno che non vogliate fare gli eroi senza di me.",
	},
	["cls.priest.victory.w06.005"] = {
		"Ricorderò la forma di questo scontro più a lungo di quanto meriti. È il prezzo di stare attenti.",
		"Una parola per chi è caduto, una per me, e poi la strada.",
		"Qualunque cosa fosse prima di incontrarmi, era qualcosa. Lo annoto, ogni volta.",
	},
	["cls.priest.victory.w06.006"] = {
		"Brava bacchetta. Dovrei darle un nome. Qualcosa di modesto.",
		"Il grosso l'ha fatto la bacchetta. Io mi prendo il merito della mira.",
		"Niente male, per un bastoncino e una preghiera.",
	},
	["cls.priest.victory.w06.007"] = {
		"Nessuno da curare tranne me. Mi controllo come controllerei chiunque altro.",
		"Da {g:solo|sola}, il primo paziente sono io. Un'occhiata, una parola sommessa, e via.",
		"Nessun compagno di cui preoccuparmi. Strano quanto mi manchi preoccuparmi.",
	},
	["cls.priest.victory.w06.008"] = {
		"Grazie, Luce. Cercherò di meritarmi anche la prossima.",
		"La Luce ha tenuto. Di solito lo fa, quando io faccio la mia parte.",
		"Sia ringraziata la Luce. Il resto del merito può aspettare.",
	},
	["cls.priest.victory.w06.009"] = {
		"Grazie, Elune. Sei rimasta in silenzio, ma ti ho sentita vicina.",
		"Il silenzio di Elune è una specie di risposta. Me lo faccio bastare.",
	},
	["cls.priest.victory.w06.010"] = {
		"Nessun dolore, nessuna mano che trema. Almeno a questo serve questo corpo: il lavoro non lo disturba.",
		"La Luce ha fatto quel che chiedevo, e io non ho sentito niente. Va bene così. Nessuno dei due finge.",
	},
	["cls.priest.victory.w06.011"] = {
		"traccia un piccolo segno nell'aria sopra il caduto, poi si volta senza guardarsi indietro.",
		"porta due dita alla fronte e poi a terra, un breve rito compiuto di passaggio.",
		"abbassa lo sguardo sul corpo per il tempo di una sola parola.",
	},
	["cls.priest.victory.w06.012"] = {
		"È una ferita in meno che dovrò richiudere più tardi.",
		"Un nemico in meno, un paziente in meno. Mi piacciono questi conti.",
		"Bene. Chiunque avrebbe ferito dopo, adesso non avrà bisogno di me.",
	},
	["cls.priest.victory.w06.013"] = {
		"La parte scura del mestiere torna nella sua scatola. Controllo il coperchio due volte.",
		"Riponi l'ombra. Non perché sia pericolosa. Perché è comoda.",
		"L'ombra spesa, e niente che resti attaccato. Bene. Certi giorni resta.",
	},
	["cls.priest.victory.w06.014"] = {
		"Guarda quest'orlo. Ogni scontro lascia la sua firma sulla tonaca.",
		"Un'altra manica andata. I sarti saranno contenti di me.",
		"Fango, bruciature, e qualcosa che preferisco non nominare. La tonaca si prende il peggio.",
	},
	["cls.priest.victory.w06.015"] = {
		"gira le mani da una parte e dall'altra, esaminandole come se fossero di un paziente.",
		"piega le dita una alla volta, piano, finché ognuna risponde come deve.",
	},
	["cls.priest.victory.w06.016"] = {
		"Ne sono fuori, e con abbastanza avanzi per aiutare qualcuno. È una buona paga, per il lavoro.",
		"In piedi e con parole d'avanzo. La chiamerò una benedizione, senza guardare troppo da vicino.",
		"Ho chiesto aiuto, e qualcosa me l'ha dato. Non sempre so cosa. Ringrazio sempre.",
	},
	["cls.priest.victory.w06.017"] = {
		"Bel lavoro là davanti. Mi avete reso il mestiere quasi noioso.",
		"Ben fatto, tutti quanti. Ho alzato a malapena un dito. A malapena.",
		"Così mi piace: voi colpite, io guardo, e nessuno va portato in braccio.",
	},
	["cls.priest.victory.w06.018"] = {
		"Se qualcuno si è buttato dentro in anticipo, l'ho visto. L'ha visto anche il mio mana.",
		"La prossima volta aspettatemi, prima di fare gli eroi. Le mie preghiere non sono così veloci.",
	},
	["cls.priest.victory.w06.019"] = {
		"Due conti in testa: vite salvate, vite spente. Un segno in più dalla parte che non mi piace.",
		"Ricucio molto più di quanto spezzi. Me lo ripeto, e conto per esserne {g:sicuro|sicura}.",
	},
	["cls.priest.victory.w06.020"] = {
		"E poi dicono che chi cura non sa combattere. Dicono tante cose.",
		"Curare, combattere, quel che serve al momento. Stavolta servivano tutti e due.",
		"Aggiungerò il combattimento alla lista delle cose in cui i sacerdoti non dovrebbero eccellere.",
	},
	["cls.priest.victory.w06.021"] = {
		"rimette la bacchetta nella cintura con un colpetto soddisfatto.",
		"soffia sulla punta della bacchetta, poi si accorge di farlo e la ripone.",
	},
	["cls.priest.victory.w06.022"] = {
		"Combattere, sedersi, bere, camminare. Quasi tutto il calendario di un sacerdote.",
		"Adesso la parte noiosa: sedersi, aspettare il mana, fingere pazienza.",
		"Nessuno dipinge mai questo momento: un sorso d'acqua per terra, e l'attesa.",
	},
	["cls.priest.victory.w06.023"] = {
		"Che la Luce ti giudichi con più gentilezza di quanta io abbia avuto il tempo di usarne.",
		"Va' verso la Luce, se ti accoglie. Altrimenti, va' in un posto tranquillo.",
	},
	["cls.priest.victory.w06.024"] = {
		"Un'occhiata veloce a me {g:stesso|stessa}: un livido, un graffio, niente che un sussurro non sistemi.",
		"Solo graffi. Una breve preghiera e spariranno prima che abbia fatto dieci passi.",
	},
	["cls.priest.victory.w06.025"] = {
		"La mente sopra i muscoli. Funziona più spesso di quanto i muscoli vorrebbero.",
		"Poche parole, dette bene. Non serve altro, e non costa altro.",
		"Sono state le parole a farlo. Ricordatelo, la prossima volta che qualcuno chiama oziosa la preghiera.",
	},
	["cls.priest.victory.w06.026"] = {
		"Sdraiati e resta giù. È una gentilezza, qualunque cosa tu ne pensi.",
		"Ecco. Quel che ti teneva in piedi ha mollato la presa. Stavolta dormi davvero.",
		"Torna alla terra, e stavolta non lasciare che nessuno ti richiami fuori.",
	},
	["cls.priest.victory.w06.027"] = {
		"Torna nell'abisso che ti ha sputato fuori. Spero sia affollato.",
		"Una voce in meno che sussurra patti. Il mondo è più silenzioso.",
	},
	["cls.priest.victory.w06.028"] = {
		"Qualcuno aspetterà che torni a casa. Spero che non sia nessuno che incontrerò mai.",
		"Una persona, con le sue ragioni. Le avrei ascoltate, se ci fosse stato il tempo.",
	},
	["cls.priest.victory.w06.029"] = {
		"Ho pregato ed è andata bene. Cerco di non dare troppo peso all'ordine delle due cose.",
		"È stata la preghiera a vincere, o io? Ho smesso di aver bisogno di saperlo.",
	},
	["cls.priest.victory.w06.030"] = {
		"Avvicinatevi un attimo, tutti. Una parola breve sul gruppo non ha mai fatto male a nessuno.",
		"Prima di andare avanti, un momento di silenzio. Per noi, e per quel che lasciamo indietro.",
	},
	["cls.priest.victory.w06.031"] = {
		"scuote la polvere dalle maniche e sistema la tonaca sulle spalle.",
		"liscia il davanti della tonaca con entrambi i palmi, come chi riordina dopo un ospite.",
		"rimette in ordine la tonaca, poi si guarda intorno in cerca di qualcos'altro da rimettere a posto.",
	},
	["cls.priest.victory.w06.032"] = {
		"Per poco non finiva al contrario. Lascio che mi entri dentro prima di raddrizzarmi.",
		"Per poco non mi serviva un sacerdote. Ironico, visto il mestiere.",
		"Troppo vicino. La prossima volta comincio a pregare prima.",
	},
	["cls.priest.victory.w06.033"] = {
		"Be', è stato istruttivo. Non ripetiamo mai più questa lezione.",
		"Mi curo e faccio finta che sia andato tutto come previsto.",
	},
	["cls.priest.victory.w06.034"] = {
		"Fammi riprendere. Prima il mana, l'orgoglio dopo.",
		"Mi prendo un minuto. Il prossimo può aspettare il suo turno, come tutti.",
		"Sedersi, bere un sorso, lasciar schiarire la testa. La strada non scappa.",
	},
	["cls.priest.victory.w06.035"] = {
		"Qualunque cosa risponda alle mie preghiere, ha risposto in fretta. Glielo dirò dopo, quando sarà tutto tranquillo.",
		"Un ringraziamento in sospeso. Lo saldo come si deve al primo momento di quiete.",
		"Qualcosa ha ascoltato. Prima o poi lo fa sempre. Certi giorni, è tutta la mia fede.",
	},
	["cls.priest.victory.w06.036"] = {
		"La misericordia era a portata di mano. L'hai lasciata lì.",
		"Ti ho dato tutte le occasioni per andartene. Le hai spese tutte.",
		"La prossima volta, ascolta quando chi prega te lo chiede con garbo.",
	},
	["cls.priest.victory.w06.037"] = {
		"chiude gli occhi e resta immobile, lasciando che la quiete dopo lo scontro {g:gli|le} si posi addosso.",
		"mormora una sola parola di ringraziamento, a nessuno in particolare, e annuisce come se avesse avuto risposta.",
		"resta immobile un momento, il capo chino, come in ascolto di qualcosa di lontano.",
	},
	["cls.shaman.heal.w06.001"] = {
		"Il totem continuerà da solo. Resta qui accanto e lascia che il flusso ti trovi.",
		"Non allontanarti dal totem. Cura più piano delle mie mani, ma non si stanca mai.",
	},
	["cls.shaman.heal.w06.002"] = {
		"Gli spiriti dell'acqua non guariscono per bontà. Guariscono perché ho chiesto come si deve, e ci tengono che io ricordi la differenza.",
		"Chiamo l'acqua, e l'acqua viene. Un giorno non verrà. Fino ad allora, continuo a chiedere con garbo.",
	},
	["cls.shaman.heal.w06.003"] = {
		"unisce le mani a coppa come per raccogliere l'acqua di una fonte, e lascia che la guarigione trabocchi sulla ferita.",
		"china il capo verso gli spiriti per il tempo di un battito, e la ferita si chiude come lavata via.",
	},
	["cls.shaman.heal.w06.004"] = {
		"Non muoverti. L'acqua deve trovare la strada per entrare, prima di poter portare fuori il dolore.",
		"Lasciati attraversare. Se resisti, ci mette solo di più.",
	},
	["cls.shaman.heal.w06.005"] = {
		"Anche uno sciamano beve da una boccetta, ogni tanto. Gli spiriti non devono sentir parlare di ogni graffio.",
		"Non vale la pena disturbare gli spiriti per così poco. Basta la fiala.",
	},
	["cls.shaman.heal.w06.006"] = {
		"Terra, fuoco, aria, acqua, e in mezzo un corpo che continua a farsi tagliare. L'equilibrio non sta mai fermo a lungo.",
		"Ferite, poi cure, poi ferite di nuovo. Anche gli elementi hanno questo ritmo, e non se ne lamentano.",
	},
	["cls.shaman.heal.w06.007"] = {
		"Acqua veloce, niente cerimonie. Ringrazieremo gli spiriti quando questo sarà a terra.",
		"Non c'è tempo per le parole lunghe. Acqua, adesso!",
	},
	["cls.shaman.rezother.w06.001"] = {
		"Gli antenati ti hanno dato un'occhiata e ti rimandano qui. Non dargli motivo di pentirsene.",
		"Il tuo spirito si era allontanato. L'ho richiamato a casa: la strada la conosce.",
	},
	["cls.warlock.attack.w06.001"] = {
		"Dentro di te, e dall'altra parte.",
		"Prendi il buio. È tutto quello che ho da darti.",
		"Ecco. Un po' di oscurità, consegnata a mano.",
	},
	["cls.warlock.attack.w06.002"] = {
		"Brucia piano. Ho tempo.",
		"Fuoco sopra, marciume sotto. Che facciano a turno.",
		"Che sia il calore a parlare.",
	},
	["cls.warlock.attack.w06.003"] = {
		"Ecco la maledizione. Senti come si sistema.",
		"Indossa questa. Non viene via.",
		"Un regalo da parte mia. Non si accettano resi.",
	},
	["cls.warlock.attack.w06.004"] = {
		"Comincia poco a poco. Poi non si ferma più.",
		"Lascia che si spanda. Conosce la strada.",
	},
	["cls.warlock.attack.w06.005"] = {
		"estrae un filo rosso sottile dal nemico e lo tira a sé, una mano dopo l'altra.",
		"tende una mano, e la forza del nemico attraversa lo spazio come acqua che scende a valle.",
	},
	["cls.warlock.attack.w06.006"] = {
		"Una spuntatina. Ricrescerà.",
		"Versare, prelevare. La somma più semplice del mestiere.",
		"Salute in cambio di mana. Un pessimo affare, fatto volentieri.",
	},
	["cls.warlock.attack.w06.007"] = {
		"Guarda meglio. Guarda cosa c'è dietro di me.",
		"Corri via. Gli incubi ti aspettano.",
	},
	["cls.warlock.attack.w06.008"] = {
		"Prendi fuoco, e continua.",
		"Ecco una scintilla da un posto molto più caldo.",
		"Un fuoco che ti porterai dietro per un po'.",
	},
	["cls.warlock.attack.w06.009"] = {
		"Misurare ogni lancio. Il pozzo non è senza fondo.",
		"Mani ferme. Il potere ascolta meglio quando non grido.",
	},
	["cls.warlock.attack.w06.010"] = {
		"Non prenderla sul personale. Anzi, sì.",
		"Questo l'ho fatto apposta per te.",
	},
	["cls.warlock.attack.w06.011"] = {
		"scaglia un nodo di oscurità che all'impatto si scioglie in filamenti avidi.",
		"spinge avanti la mano di scatto, e un dardo d'ombra lascia nell'aria una scia fredda.",
	},
	["cls.warlock.battle.w06.001"] = {
		"Sbrighiamoci. Le mie maledizioni si fanno pagare a ore.",
		"Non muoverti. Le maledizioni costano meno se non devono rincorrerti.",
		"Sarò breve. Più si tira per le lunghe, più sale il conto.",
	},
	["cls.warlock.battle.w06.002"] = {
		"Prima la corruzione. Poi parliamo, mentre lei lavora.",
		"Un po' di marciume, tanto per cominciare. Il lavoro paziente lo fa lui.",
		"Adesso ti pianto dentro qualcosa. Cresce meglio mentre pensi a colpirmi.",
	},
	["cls.warlock.battle.w06.003"] = {
		"fa rotolare un'ombra tra i palmi finché non si indurisce in qualcosa di scuro e pesante.",
		"borbotta una frase in una lingua che nessuna gola mortale dovrebbe parlare, e le parole lasciano dietro di sé un tanfo di zolfo.",
		"apre una mano verso il nemico, e una scintilla viola vi tremola come una candela nella corrente.",
	},
	["cls.warlock.battle.w06.004"] = {
		"Prima del primo incantesimo: quanto di me intendo spendere per questo? Deciderlo ora, non a metà.",
		"Fissare il prezzo adesso. A metà scontro è il momento peggiore per mercanteggiare con se stessi.",
		"Prima il bilancio, poi gli incantesimi. Gli stregoni che saltano il bilancio non restano stregoni a lungo.",
	},
	["cls.warlock.battle.w06.005"] = {
		"Il primo dardo è un saluto. Quelli dopo sono la risposta.",
		"Si apre con un dardo d'ombra. Le buone maniere contano, anche qui.",
		"Comincio con qualcosa di scuro e veloce, poi vediamo cosa resta con cui parlare.",
	},
	["cls.warlock.battle.w06.006"] = {
		"La gente cambia marciapiede quando mi vede arrivare. Avresti dovuto cambiarlo anche tu.",
		"In città tutti mi girano alla larga. Stai per scoprire perché.",
		"Le guardie di ogni città mi tengono d'occhio. Avresti fatto bene a imitarle.",
	},
	["cls.warlock.battle.w06.007"] = {
		"Ti nomino, e il nome ti resta addosso. Una maledizione non è altro.",
		"Una maledizione è solo una promessa fatta nella lingua sbagliata. Ecco la mia.",
		"Questa la sentirai anche domani, se ci arrivi, a domani.",
	},
	["cls.warlock.battle.w06.008"] = {
		"Ogni incantesimo che lancio l'ha insegnato, tanto tempo fa, qualcosa che voleva bruciare questo mondo. Cerco di non pensarci a metà scontro.",
		"Il potere viene dalla colonna del registro che appartiene alla Legione. Io lo rivolgo contro chi mi sta davanti, e tengo i conti in ordine.",
	},
	["cls.warlock.battle.w06.009"] = {
		"Addosso. E ricordati chi tiene il guinzaglio.",
		"Al lavoro, servo. Gli occhi sul nemico, non su di me.",
		"Va' e renditi utile. Io sto dietro, all'altro capo della catena.",
	},
	["cls.warlock.battle.w06.010"] = {
		"schiocca le dita una volta, e il demone al suo fianco avanza di malavoglia.",
		"manda avanti il demone con un gesto, senza guardarlo, come si manda un cane dietro a un bastone.",
	},
	["cls.warlock.battle.w06.011"] = {
		"Un demone? Splendido. So come ragiona la tua specie, e non mi fa nessuna impressione.",
		"Il Nether è lontano. Ti ci rimando per la via breve.",
		"Li ho letti, i contratti della tua razza. Barate sempre alla terza clausola.",
	},
	["cls.warlock.battle.w06.012"] = {
		"Marcisci già, e cammini ancora. La corruzione si sentirà a casa, dentro di te.",
		"La morte ti ha già preso una volta. Vediamo se una maledizione trova ancora qualcosa da guastare.",
	},
	["cls.warlock.battle.w06.013"] = {
		"Hai una mente, quindi hai delle paure. Me ne basta trovare una.",
		"Una creatura che pensa. Bene: quelle che pensano si spaventano come si deve.",
	},
	["cls.warlock.battle.w06.014"] = {
		"Calma, bestia. Niente di personale: hai solo trovato {g:lo stregone sbagliato|la strega sbagliata}.",
		"Torna nella tana, animale. Oppure resta, e scopri che odore ha una maledizione.",
	},
	["cls.warlock.battle.w06.015"] = {
		"Stoffa e una bacchetta. Se mi arriva addosso, ho già sbagliato qualcosa.",
		"Mantenere la distanza. Questa veste non ferma niente di più tagliente di un'opinione.",
		"La distanza è la mia armatura. Il resto è solo stoffa.",
	},
	["cls.warlock.battle.w06.016"] = {
		"Vediamo come ti trovi con un fuoco che ce l'ha con te in persona.",
		"Brucia. Questo fuoco è stato acceso in un posto molto peggiore di questo.",
		"Un fuoco col dente avvelenato. Lascio che si presenti da solo.",
	},
	["cls.warlock.battle.w06.017"] = {
		"Su, scappa. Sarò qui quando ti tornerà in mente cosa volevi.",
		"Preferisco che tu scappi urlando. Alla fine, per me, è più tranquillo.",
		"La paura è una mia vecchia amica. Te la presto per qualche secondo.",
	},
	["cls.warlock.battle.w06.018"] = {
		"Questo lo pagherò in salute. Meglio spendere la mia che restare a secco di mana.",
		"Vita in cambio di mana: il commercio più vecchio che conosca. Occhio al cambio.",
		"Attingere al pozzo che porto dentro. Basta non prosciugarlo.",
	},
	["cls.warlock.battle.w06.019"] = {
		"Andrai bene. Un'anima mi serviva comunque.",
		"E va bene. Tu, allora. Spero che valga i reagenti.",
		"Facciamola efficiente. Ho schegge da riempire e cose migliori da maledire.",
	},
	["cls.warlock.battle.w06.020"] = {
		"I vecchi stregoni orchi, a sentire le storie, con quest'arte hanno spezzato un mondo. A me basta spezzare te.",
		"Una volta, si racconta, quest'arte ha tinto di verde vil un popolo intero. Oggi deve occuparsi solo di te.",
	},
	["cls.warlock.battle.w06.021"] = {
		"Nessuno mi ringrazierà per aver vinto. Dopo, staranno solo un po' più alla larga.",
		"Che vinca o perda, dopo saprò di zolfo. La gente lo nota più di chi l'ha salvata.",
	},
	["cls.warlock.battle.w06.022"] = {
		"Ti berrò fino all'ultima goccia.",
		"La tua vita mi sembra sprecata, addosso a te. Te ne libero io.",
		"Ogni colpo che mi dai me lo riprendo da te, con gli interessi.",
	},
	["cls.warlock.battle.w06.023"] = {
		"abbassa il mento, e qualcosa di simile all'inchiostro si allarga sul bianco dei suoi occhi.",
		"inclina la testa come per ascoltare qualcuno alle sue spalle, poi annuisce e alza una mano.",
	},
	["cls.warlock.battle.w06.024"] = {
		"Ti farei firmare qualcosa di sgradevole, ma tanto le clausole non le leggeresti.",
		"C'è un demone, chissà dove, che prende appunti su questo scontro. Non diamogli niente da ridere.",
	},
	["cls.warlock.battle.w06.025"] = {
		"Maledizione, corruzione, poi lascio che marciume e fuoco se lo contendano.",
		"Prima le cose lente. Quelle veloci servono quando si avvicina.",
		"Prima i veleni lenti, poi i dardi rapidi. L'ordine conta più della forza.",
	},
	["cls.warlock.battle.w06.026"] = {
		"Ultima occasione per andartene. Dopo, nella conversazione entra una maledizione.",
		"Girati e vattene. Mi dicono che la mia compagnia non migliora col tempo.",
	},
	["cls.warlock.battle.w06.027"] = {
		"Se muore sotto il risucchio, un pezzo me lo tengo io. Cerco di non volerlo troppo.",
		"La borsa delle schegge è più leggera di quanto vorrei. Questo potrebbe rimediare, e vorrei che il pensiero mi disturbasse di più.",
	},
	["cls.warlock.battle.w06.028"] = {
		"Avvicinati pure. Ho tenuto cerchi di evocazione con di peggio dall'altra parte.",
		"Io non trasalisco. Chi trasalisce dentro un cerchio fa da cena.",
	},
	["cls.warlock.battle.w06.029"] = {
		"Il mio servo tiene il muso da ore. Tu gli tirerai su il morale.",
		"Ti presento il mio socio. Non gli piaci, ma non gli piace nessuno.",
	},
	["cls.warlock.battle.w06.030"] = {
		"Metà dell'attenzione sul nemico, metà sulla cosa che ho evocato. Il giorno che dimentico la seconda metà, smette di essere mia.",
		"Guardare il nemico. Guardare il demone. Non lasciare mai che uno dei due ti veda sbattere le palpebre.",
	},
	["cls.warlock.battle.w06.031"] = {
		"Più stazza, più forza: alle maledizioni non importa né dell'una né dell'altra.",
		"Sei fuori dalla mia portata. Per fortuna le maledizioni si fanno in tutte le taglie.",
	},
	["cls.warlock.battle.w06.032"] = {
		"Vali appena il mana che spendo. Farò economia.",
		"Non serve una maledizione. Basteranno una parola dura e un dardo.",
	},
	["cls.warlock.battle.w06.033"] = {
		"punta due dita, e un anello di fiamme sboccia attorno al nemico prima che possa fare un altro passo.",
		"pronuncia una sola sillaba aspra, e l'aria attorno al nemico prende fuoco come paglia secca.",
	},
	["cls.warlock.battle.w06.034"] = {
		"Se muoio qui, tre creature diverse litigheranno su chi deve prendermi. Non diamogli questa soddisfazione.",
		"Se perdo, divento proprietà di qualcuno. Meglio vincere.",
	},
	["cls.warlock.battle.w06.035"] = {
		"Non sarà un bello spettacolo. Niente di quello che faccio lo è. Però funziona.",
		"Io non combatto lealmente. La lealtà è per chi ha una magia che non morde la mano che la nutre.",
	},
	["cls.warlock.battle.w06.036"] = {
		"Bacchetta in mano, maledizioni pronte. Non facciamone un poema.",
		"Qualche maledizione, qualche colpo di bacchetta, e poi ognuno per la sua strada. Be', uno dei due.",
		"Lo farò breve e a buon mercato. Gli incantesimi costosi non te li meriti.",
	},
	["cls.warlock.battle.w06.037"] = {
		"si tira indietro le maniche con uno scatto, scoprendo dita già annerite in punta.",
		"sposta il peso su un tallone e attacca una cantilena bassa e raschiante.",
		"allarga le dita, e la luce lì attorno sembra assottigliarsi, come se qualcosa la stesse bevendo.",
	},
	["cls.warlock.battle.w06.038"] = {
		"Ti avvertirei degli effetti collaterali, ma non sarai qui per vederli.",
		"Te lo dico per correttezza: tutto ciò che lancio ha effetti collaterali. Quasi tutti tocca a te.",
		"Questo scontro ha un prezzo. La buona notizia è che lo paghi quasi tutto tu.",
	},
	["cls.warlock.battle.w06.039"] = {
		"Qualunque cosa sia, ha un'anima, o qualcosa del genere. La tratterò come una risorsa. Odio quanto ormai mi venga facile.",
		"Vederlo come uno scontro, non come un raccolto. Il giorno che non saprò più distinguerli, avrò perso qualcosa.",
	},
	["cls.warlock.battle.w06.040"] = {
		"Ombra, in forma di dardo, dritta su di te. In questa parte non ci sono trucchi.",
		"Ecco il buio, per la strada più diretta.",
		"Qualcosa di oscuro ti viene incontro. Soprattutto io.",
	},
	["cls.warlock.battle.w06.041"] = {
		"Una cosa fatta di elemento puro. Nessuno ti ha mai maledetto, vero? Nessuno si prende il disturbo.",
		"Fuoco, acqua, pietra, non fa differenza. Il marciume prima o poi entra dappertutto.",
	},
	["cls.warlock.battle.w06.042"] = {
		"La tua Luce contro la mia ombra: la discussione più vecchia del mondo. Il mio finale mi piace di più.",
		"Prega quanto vuoi. Le maledizioni sono più pazienti delle preghiere.",
	},
	["cls.warlock.battle.w06.043"] = {
		"Qualcuno del mestiere. Vediamo quale patto ha le clausole migliori.",
		"Tra poco scopriremo quale dei nostri demoni ha mentito. Io punterei sul tuo.",
	},
	["cls.warlock.battle.w06.044"] = {
		"Un colpo ben dato e sono in ginocchio. Quindi niente deve darmi un colpo ben dato.",
		"Sono fragile. Tutti sanno che gli stregoni sono fragili. Il trucco è tenerli troppo occupati per accorgersene.",
	},
	["cls.warlock.battle.w06.045"] = {
		"Hai già paura? Dagli un attimo. So essere molto convincente.",
		"Ti faccio scappare, poi ti maledico la schiena. Non è nobile. Funziona.",
	},
	["cls.warlock.battle.w06.046"] = {
		"fa scattare il polso, e una macchia grigia si posa sul nemico come muffa sul pane.",
		"mormora qualcosa, e una macchia malsana si allarga sul nemico come su una cosa lasciata troppo a lungo all'umido.",
	},
	["cls.warlock.battle.w06.047"] = {
		"Tutto quello che ti tiro addosso l'ho pagato prima. Cerca di valerne la pena.",
		"Niente di quello che lancio è gratis. Vedrai il prezzo anche dalla tua parte.",
	},
	["cls.warlock.farewell.w06.001"] = {
		"Addio. Se qualcosa ti segue fuori di qui, non è roba mia.",
		"Io vado. Occhio agli angoli bui: non tutti posso richiamarli io.",
		"Alla prossima. E non aprire, se qualcosa bussa usando la mia voce.",
	},
	["cls.warlock.greet.w06.001"] = {
		"Salve. Sì, faccio proprio il mestiere che pensi. Puoi smettere di tirare a indovinare.",
		"Piacere. Stringi pure la mano, se te la senti: la mia è solo un po' fredda.",
	},
	["cls.warlock.heal.w06.001"] = {
		"La mia salute, versata in un demone. Se qualcuno chiede, sto proteggendo un investimento.",
		"Cedo un po' di me perché il servitore non si rompa. Costa meno che ricominciare da capo.",
		"Nutro il demone con le mie riserve. Da qualche parte, uno studioso sta scrivendo una nota a piè di pagina molto severa.",
	},
	["cls.warlock.heal.w06.002"] = {
		"Il filo corre dalla mia mano al demone, e lungo il filo se ne va qualcosa che dovrò riguadagnarmi.",
		"Strana carità: mi indebolisco per rimettere in sesto la cosa che mi divorerebbe, se il vincolo cedesse.",
	},
	["cls.warlock.heal.w06.003"] = {
		"Non muoverti e bevi. E non farci l'abitudine.",
		"Tieni. È roba mia, non tua. Ricordati chi paga.",
		"Smettila di lamentarti e prendi. Qui l'unica testa che gira è la mia.",
	},
	["cls.warlock.heal.w06.004"] = {
		"tende una mano verso il demone, e un filo verde e malsano di vita passa dalla sua carne alla creatura.",
		"ondeggia appena mentre il canale attinge alle sue forze, lo sguardo fisso sul demone che nutre.",
	},
	["cls.warlock.heal.w06.005"] = {
		"Un servitore è un attrezzo. Gli attrezzi si affilano, si aggiustano. Non si amano: solo che non puoi permetterti di perderli a lavoro iniziato.",
		"Tengo in piedi il demone perché il demone tiene in piedi me. Tutto il nostro accordo è qui.",
	},
	["cls.warlock.heal.w06.006"] = {
		"Si beve la mia vita senza un briciolo di gratitudine. A dire il vero, se mi ringraziasse ne avrei un'opinione peggiore.",
		"Nessun grazie dal demone, si capisce. Un grazie vorrebbe dire che mi deve qualcosa, e piuttosto morirebbe.",
	},
	["cls.warlock.heal.w06.007"] = {
		"Lavoro del mio mestiere, spezzato nel mio pugno. Bello, per una volta, quando il mestiere ripaga i suoi.",
		"Qualcuno ha fatto questa pietra proprio per questo momento. La previdenza sa vagamente di zolfo.",
		"Nata da un frammento, spesa in un respiro. L'unico mio investimento che rende sempre.",
	},
	["cls.warlock.heal.w06.008"] = {
		"stringe la pietra della salute nel palmo fino a romperla, e il bagliore penetra nella pelle e nella ferita.",
		"spezza la pietra verde con una torsione esperta e lascia che faccia il resto.",
	},
	["cls.warlock.heal.w06.009"] = {
		"Una pietra, una seconda possibilità. Le conto entrambe.",
		"Anima in pietra, pietra in carne. Tutto è un cambio di valuta, se conosci i tassi.",
	},
	["cls.warlock.heal.w06.010"] = {
		"Il lavoro onesto di un alchimista. Che ristoro, in tutti i sensi.",
		"Nessun patto, nessun prezzo tranne le monete. Quasi non mi fido.",
	},
	["cls.warlock.heal.w06.011"] = {
		"Solo una pozione. A volte riposa, curarsi come fanno tutti.",
		"Una fiala, un sorso, niente di dovuto a nessuno. Dovrei farlo più spesso.",
	},
	["cls.warlock.heal.w06.012"] = {
		"Prima rimetto in sesto me. Tutto quello che tengo al guinzaglio regge solo finché reggo io.",
		"Prima io. Non per vanità: tutto quello che ho vincolato dipende dal fatto che io resti in piedi.",
	},
	["cls.warlock.heal.w06.013"] = {
		"Un sacerdote si inginocchierebbe a ringraziare qualcuno. Io controllo solo che abbia funzionato.",
		"Niente preghiere, niente ringraziamenti. Una cosa riparata è una cosa riparata.",
	},
	["cls.warlock.heal.w06.014"] = {
		"si guarda attorno prima di curare, come se qualcuno potesse avere da ridire sul modo.",
		"fa la cura in fretta e senza clamore, come tutto ciò che la gente potrebbe guardare storto.",
	},
	["cls.warlock.heal.w06.015"] = {
		"Tutto ciò che curo, lo curo con qualcosa che non era fatto per curare. Funziona lo stesso. È questo che inquieta.",
		"Fuoco demoniaco e ombra, piegati a un uso gentile. A loro non sembra importare. A me un poco sì.",
	},
	["cls.warlock.heal.w06.016"] = {
		"Fatto. Allora, a che punto ero? Ah, sì: a rovinare la giornata a qualcuno.",
		"Sistemata la cosa. Le maledizioni non si lanciano da sole.",
	},
	["cls.warlock.heal.w06.017"] = {
		"Il prezzo lo paga sempre qualcuno lì vicino. Oggi, almeno, scelgo io chi.",
		"Cure a credito, come sempre. Il conto arriva dopo, in una forma o nell'altra.",
	},
	["cls.warlock.heal.w06.018"] = {
		"Guarda un po': io che curo. Meglio non dirlo in giro, ho una reputazione da difendere.",
		"Se qualcuno mi vedesse curare, penserebbe a un trucco. Mi sta bene.",
	},
	["cls.warlock.heal.w06.019"] = {
		"Calma, adesso. Una mano che trema ne spreca più di quanto ne dia.",
		"Piano e regolare. Una cura frettolosa lascia buchi che il prossimo colpo trova.",
	},
	["cls.warlock.heal.w06.020"] = {
		"Ogni cura mi lascia le dita più fredde. Non so se dipenda dal mestiere o da me.",
		"Funziona. Funziona sempre. Vorrei che la cosa mi consolasse più di quanto fa.",
	},
	["cls.warlock.jest.w06.001"] = {
		"Ti racconterei una barzelletta sui demoni, ma la battuta finale ci mette tre giorni a smettere di bruciare.",
		"Qual è la differenza fra uno stregone e un usuraio? Lo stregone i termini te li legge.",
	},
	["cls.warlock.levelup.w06.001"] = {
		"Più potere nelle mani, quindi più peso sulla volontà che le regge. Se le due cose smettono di crescere insieme, per me è finita.",
		"Il mestiere cresce, e il guinzaglio deve crescere con lui. È la parte di ogni passo avanti che nessuno vede.",
	},
	["cls.warlock.levelup.w06.002"] = {
		"Un altro passo dentro il mestiere. Chissà dove, qualcuno mi sta già scrivendo una nuova offerta.",
		"Più forte, ancora una volta. Aspetto da un momento all'altro nuove proposte dall'altra parte: seguono ogni passo come i venditori ambulanti dietro un pellegrino.",
	},
	["cls.warlock.lowhp.w06.001"] = {
		"Pietra della salute. Subito, prima che si metta in mezzo l'orgoglio.",
		"Se in questa borsa c'è una pietra della salute, è il suo momento.",
		"La pietra della salute. Ditemi che ho pensato a farne una.",
	},
	["cls.warlock.lowhp.w06.002"] = {
		"Quell'ultimo prelievo vitale è stato avido. Prenderne nota. Prima sopravvivere, poi prenderne nota.",
		"Ho speso troppo di me. Il mana c'è, il corpo no. Conti sbagliati.",
		"Basta prelievi. Basta. Nel pozzo non è rimasto niente da scambiare.",
	},
	["cls.warlock.lowhp.w06.003"] = {
		"Distoglilo da me, servo. È un ordine, non una richiesta.",
		"Mettiti in mezzo e restaci. Il vincolo serve a questo.",
		"Se cado io, tu torni a casa a pezzi. Ricordatelo, e combatti.",
	},
	["cls.warlock.lowhp.w06.004"] = {
		"Scappa! Su, scappa, e lasciami un attimo per pensare.",
		"Via di qui. Va' ad avere paura da un'altra parte.",
		"Paura, adesso. Mi serve più spazio che dignità.",
	},
	["cls.warlock.lowhp.w06.005"] = {
		"Bere da lui. La sua vita per la mia, più in fretta di quanto riesca a riprendersela.",
		"Tirare. Continuare a tirare. Quello che gli resta ora me lo deve.",
	},
	["cls.warlock.lowhp.w06.006"] = {
		"Piccolo contrattempo. Grande, anzi. Diciamo medio.",
		"Sto bene. Nel mio mestiere, stare bene vuol dire questo.",
		"Questo non era nel piano. Il piano era soprattutto maledire.",
	},
	["cls.warlock.lowhp.w06.007"] = {
		"Se muoio adesso, qualcuno dall'altra parte sarà molto contento. Mi rifiuto di accontentarlo.",
		"Li sento sporgersi, quelli con cui ho un debito. Indietro. Sto ancora pagando a rate.",
	},
	["cls.warlock.lowhp.w06.008"] = {
		"barcolla, una mano premuta sul fianco, e il bagliore viola attorno alle dita tremola come una lampada che si spegne.",
		"cade su un ginocchio, e per un attimo l'oscurità raccolta attorno a sé si fa sottile e sfilacciata.",
	},
	["cls.warlock.lowhp.w06.009"] = {
		"Le ferite tirano fuori il peggio di me. Il peggio per te, intendo.",
		"Colpiscimi ancora. Metterò tutto nella maledizione.",
		"Ogni ferita che mi fai, l'ombra se la segna.",
	},
	["cls.warlock.lowhp.w06.010"] = {
		"Concentrazione. Il panico è una porta, e tutto ciò con cui ho trattato sa dove si trova.",
		"Calma. Freddezza. Uno stregone spaventato è il pasto di un demone. Uno calmo ne è il padrone.",
	},
	["cls.warlock.lowhp.w06.011"] = {
		"Una spira di morte, e un attimo di tregua. Non sprechiamo nessuno dei due.",
		"Indietro! Prendi questo, e il terrore che si porta dietro.",
	},
	["cls.warlock.lowhp.w06.012"] = {
		"Vorrei mettere agli atti che non me l'ero immaginata così.",
		"Be', sto imparando. Soprattutto cosa non fare.",
	},
	["cls.warlock.lowhp.w06.013"] = {
		"Se cado qui, spero di aver pensato alla pietra dell'anima.",
		"Sono agli sgoccioli. Se ho la pietra dell'anima addosso, sarebbe un buon momento per scoprire che funziona.",
	},
	["cls.warlock.lowhp.w06.014"] = {
		"sibila un ordine, e il demone si getta sulla traiettoria del colpo successivo.",
		"arretra barcollando dietro il demone, una mano già intenta a tracciare un segno disperato.",
	},
	["cls.warlock.lowhp.w06.015"] = {
		"Si dice che gli stregoni siano duri a morire. Mettiamo alla prova la voce.",
		"Duri a morire: questa è la fama. È ora di esserne all'altezza.",
	},
	["cls.warlock.lowhp.w06.016"] = {
		"Morire così, per mano di qualcosa che non sa nemmeno a cosa ho rinunciato per il potere? No.",
		"Tutti quei patti, e finisce così? No. Non gli concedo una fine da quattro soldi.",
	},
	["cls.warlock.lowhp.w06.017"] = {
		"Ridammi un po' di quella vita. Tanto non la usavi bene.",
		"Adesso quella salute me la riprendo. Tutta, se non ti dispiace.",
		"La tua vita, le mie ferite. Uno scambio equo, per come la vedo io.",
	},
	["cls.warlock.lowhp.w06.018"] = {
		"preme una mano su una ferita fresca e mormora una parola vecchia e brutta, e il dolore sembra ritrarsi.",
		"ondeggia, i denti scoperti, mentre un lieve bagliore vil risale lungo le braccia come una febbre.",
	},
	["cls.warlock.lowhp.w06.019"] = {
		"I miei incantesimi fanno più male di te. Continua a provarci.",
		"Il mio stesso fuoco mi ha bruciato più di così. Dovrai fare meglio.",
	},
	["cls.warlock.muse.w06.001"] = {
		"I grimori non alzano mai la voce. Le pagine pericolose sono quelle scritte con la calligrafia più tranquilla.",
		"Ho imparato a diffidare dei libri che si leggono troppo facilmente. I peggiori le pagine se le girano da soli.",
		"Certe pagine le leggo una volta e poi le chiudo per sempre. Non perché non le abbia capite. Perché le ho capite.",
	},
	["cls.warlock.muse.w06.002"] = {
		"Arti oscure, patti proibiti, e ancora non riesco a togliere la cenere da una manica.",
		"Prima o poi le vesti di ogni stregone prendono lo stesso colore: bruciacchiate ai polsini.",
		"So far nascere il fuoco dal nulla, e non ho ancora trovato un sarto che mi rammendi i polsini senza chiedere come si sono bruciati.",
	},
	["cls.warlock.muse.w06.003"] = {
		"Il fuoco dei demoni brucia del colore sbagliato e tiene orari sbagliati. Ci ho messo parecchio a smettere di trasalire davanti alle mie stesse mani.",
		"Il fuoco che evoco non scalda niente: divora e basta. Cerco di tenere a mente la differenza ogni volta che mi siedo accanto a uno qualunque.",
		"Un fuoco vero vuole legna. Il mio vuole tutt'altro, e non mi ha mai detto con precisione cosa.",
	},
	["cls.warlock.muse.w06.004"] = {
		"Il demone mette alla prova il guinzaglio ogni giorno. Piccoli strattoni, mai uno strappo vero. Non cerca un punto debole: mi sta insegnando a non farci più caso.",
		"Il mio servo obbedisce alla perfezione, ed è proprio per questo che lo tengo d'occhio. L'obbedienza perfetta è una recita.",
		"Il giorno in cui smetterò di controllare i vincoli sarà il giorno in cui comincerà lui. Perciò li controllo, nessun giorno escluso.",
	},
	["cls.warlock.muse.w06.005"] = {
		"I mercanti contano il mio resto due volte. Una per le monete, una per essere sicuri che nessuna sia calda.",
		"I bottegai mi incartano la roba a una velocità notevole. Credo lo considerino una cortesia.",
		"Buffo come i prezzi di un mercante si calmino in fretta, appena smetto di sorridere.",
	},
	["cls.warlock.muse.w06.006"] = {
		"Ogni parola del mio mestiere l'ha pronunciata prima la Legione. Io gliela ritorco contro. Deve seccarli parecchio.",
		"Ho imparato gli incantesimi dalla grammatica stessa del nemico. Non c'è modo migliore per vincere una discussione.",
		"Il potere viene dalla Burning Legion. L'intenzione la tengo per me. È l'unica parte dello scambio che non vendo mai.",
	},
	["cls.warlock.muse.w06.007"] = {
		"mormora una parola breve, si ferma a metà e ricomincia più adagio, come se qualcuno avesse origliato il primo tentativo.",
		"controlla il fermaglio di una borsetta, poi lo ricontrolla, e solo allora la lascia ricadere alla cintura.",
		"sfrega i polpastrelli finché la leggera macchia viola non sbiadisce, e continua a sfregarli ancora per un po'.",
	},
	["cls.warlock.muse.w06.008"] = {
		"La gentilezza mi insospettisce. Passo le giornate in mezzo a creature che sorridono prima di chiedere.",
		"Quando uno sconosciuto è cordiale, cerco la clausola. Vecchio vizio del mestiere. Mi ha rovinato qualche bella serata.",
		"Non mi fido facilmente. Tratto con dei bugiardi per vivere: sarebbe strano se non mi fosse rimasto addosso qualcosa.",
	},
	["cls.warlock.muse.w06.009"] = {
		"Le guardie hanno un modo tutto loro di non guardarmi. Costa più fatica che fissare, e ci riescono ogni volta.",
		"Sento lo sguardo di una guardia posarsi sulla mia schiena appena passo. Non se ne va del tutto finché non giro l'angolo.",
		"Nessuno mi ferma, nessuno mi interroga. Mi osservano e basta, come si osserva una candela accesa vicino alle tende.",
	},
	["cls.warlock.muse.w06.010"] = {
		"Questa strada non me l'ha imposta nessuno. Vorrei che lo ricordassero tutti, i demoni per primi.",
		"Non mi hanno {g:sedotto|sedotta}, checché ne dicano le storie. Ho letto i termini, li ho soppesati, ho firmato. È peggio, o è meglio. Ci sto ancora pensando.",
		"È stata una scelta. Se andrà storta, sarà la mia scelta ad andare storta, e non darò la colpa alle voci.",
	},
	["cls.warlock.muse.w06.011"] = {
		"Metà delle mie borse sono schegge d'anima. L'altra metà è quello che sono {g:riuscito|riuscita} a infilarci intorno.",
		"C'è chi si porta stivali di ricambio. Io mi porto anime di ricambio. Fare i bagagli, per noi, è un'altra faccenda.",
		"Se mai ti servisse una scheggia d'anima in prestito, chiedi pure. A quanto pare ne ho raccolta una piccola cava.",
	},
	["cls.warlock.muse.w06.012"] = {
		"Prendo l'anima solo alla fine, quando qui non le resta più niente da fare. Mi dico che questo conta qualcosa.",
		"Una scheggia è un ultimo respiro che non ho lasciato sprecare. Detta così, sembra quasi parsimonia.",
		"Qualunque cosa ci sia nella scheggia, non ha scelto di starci. La tengo avvolta e non la spendo alla leggera. È il minimo che le devo.",
	},
	["cls.warlock.muse.w06.013"] = {
		"Una pietra della salute? Prendine una. Non chiedere cosa c'è dentro, e farà il suo dovere senza lamentarsi.",
		"Distribuisco pietre della salute come una nonna distribuisce caramelle. Mi ringraziano in meno, ma ne sopravvivono di più.",
		"Una pietra verde per la tasca. Quando va tutto storto, stringila. No, non è un regalo: è un investimento sulla tua sopravvivenza.",
	},
	["cls.warlock.muse.w06.014"] = {
		"Quasi tutto il mio lavoro avviene dopo che ho smesso di lanciare. Pianto qualcosa, faccio un passo indietro e lascio al tempo la parte crudele.",
		"Una maledizione premia chi sa aspettare. Prima di pazienza ne avevo poca: me l'ha insegnata il mestiere, una ferita lenta dopo l'altra.",
		"Gli altri incantatori vogliono risultati subito. A me basta guardare il tempo che lavora per me.",
	},
	["cls.warlock.muse.w06.015"] = {
		"Per mettere il terrore nella testa di qualcuno devi conoscerne la forma da dentro. Io la conosco benissimo.",
		"Quando faccio scappare urlando un nemico, non provo nessun trionfo. So da dove viene quella paura. Ci sono {g:stato|stata}.",
		"La paura è l'incantesimo più facile che conosca. È anche quello che meno vorrei vedermi ritorcere contro.",
	},
	["cls.warlock.muse.w06.016"] = {
		"Gli orchi hanno pagato i primi patti con un intero mondo verde. Ogni stregone dovrebbe conoscere quel conto, chiunque sia e da dovunque venga.",
		"Lo Shadow Council ha insegnato a un popolo a bere dalla coppa sbagliata. Il mestiere che pratico ricorda i suoi maestri, e devo ricordarli anch'io.",
		"Prima di me c'è stato Gul'dan, e un mondo prosciugato per la sua ambizione. Tengo quel nome a portata di mano, come un marinaio tiene uno scoglio segnato sulla carta.",
	},
	["cls.warlock.muse.w06.017"] = {
		"La rabbia fa crescere il fuoco e accorcia il guinzaglio. Ho imparato a lanciare a mente fredda.",
		"Uno stregone furioso dura poco. Io tengo a bada il carattere come altri tengono la borsa: stretto, e contato.",
		"Il mestiere va avanti a volontà, non a furia. La furia è solo una volontà che ha dimenticato chi comanda.",
	},
	["cls.warlock.muse.w06.018"] = {
		"Hai mai notato dove mettono gli istruttori di stregoneria, in ogni città? Cantine, caverne, retrobotteghe. Mai una finestra.",
		"Ogni città insegna il mio mestiere da qualche parte sotto il livello della strada. Agli altri le torri e le cattedrali. A noi l'umido.",
		"In ogni capitale, in fondo a una scala che nessuno ammette di usare, c'è un maestro della mia arte. Immagino che l'affitto costi poco.",
	},
	["cls.warlock.muse.w06.019"] = {
		"Gli attrezzi sono malvagi, non l'ho mai negato. Prima di giudicare la mano, guarda cosa ci fa.",
		"Sì, è magia dei demoni. Ma il fuoco è fuoco, quando si mette fra te e la cosa con i denti.",
		"Giudica il lavoro, non la bottega. La mia è brutta, te lo concedo.",
	},
	["cls.warlock.muse.w06.020"] = {
		"Il demone è l'unico che non mi chiede mai di spiegarmi. Lo sa già, e non gliene importa. Stranamente riposante.",
		"Una compagnia che non mi giudica e di cui non posso fidarmi. Fra i vivi ho conosciuto di peggio.",
		"Spesso il demone è l'unica presenza vicino a me. Tengo la conversazione breve e i termini chiari.",
	},
	["cls.warlock.muse.w06.021"] = {
		"Gli istruttori dicono che un giorno uno stregone si guadagna una cavalcatura senza spenderci un rame. Gratis. Nel mio campo, quella parola mi mette in agitazione.",
		"Un destriero che non costa oro, promettono, se tengo duro. Ci crederò quando vedrò di cosa si nutre.",
	},
	["cls.warlock.muse.w06.022"] = {
		"Nessuno sa dirmi dove vada l'anima di uno stregone, alla fine. Ho però un'idea abbastanza precisa di chi vorrebbe deciderlo.",
		"Gli altri temono il buio dopo la morte. A me preoccupa di più la compagnia che ci si trova.",
		"Quando verrà il mio momento, vorrei trovarmi in un posto molto luminoso e molto affollato. Un posto da cui sia difficile venirmi a prendere.",
	},
	["cls.warlock.muse.w06.023"] = {
		"rovescia i guanti, scuote un pizzico di cenere grigia da ogni dito e li rimette.",
		"spazzola via dalle maniche un velo di fuliggine, con la pazienza di chi lo fa da tanto tempo.",
	},
	["cls.warlock.muse.w06.024"] = {
		"Trasformo la mia salute in potere così spesso, ormai, che quasi non mi accorgo dello scambio. Dovrebbe spaventarmi più di quanto faccia.",
		"Un po' della mia vita per un po' più di mestiere. Faccio lo scambio senza pensarci, come altri allungano la mano verso la borraccia.",
		"Gli altri custodiscono la propria salute. Io la spendo, con giudizio, come un viandante che sa che il prossimo villaggio è lontano.",
	},
	["cls.warlock.muse.w06.025"] = {
		"I maghi studiano l'arcano per una vita intera. Io l'ho chiesto a qualcuno che lo sapeva già. Il prezzo era più alto, lo ammetto.",
		"I maghi hanno torri e biblioteche. Io ho un contratto e un insegnante molto persuasivo che viene da un altro posto.",
	},
	["cls.warlock.muse.w06.026"] = {
		"Certi giorni immagino di posare tutto: i libri, il cerchio, le voci. Poi immagino cosa verrebbe a raccoglierlo.",
		"Potrei lasciare il mestiere. Ne sono quasi {g:sicuro|sicura}. È quel quasi che mi tiene all'erta.",
		"Da questo mestiere non si esce con le mani pulite. Ma lo si può esercitare con le mani pulite, e questo almeno posso sceglierlo ogni giorno.",
	},
	["cls.warlock.muse.w06.027"] = {
		"Sussurrate quanto vi pare. La mia risposta non è cambiata dal primo giorno, e non cambierà per l'ultimo.",
		"Ogni stagione offrono di più, come se il mio prezzo fosse solo un po' troppo alto, per ora. Non è un prezzo. È un muro.",
	},
	["cls.warlock.muse.w06.028"] = {
		"Il demone ha un'opinione su tutto quello che faccio. La esprime fissandomi. Mi sono {g:abituato|abituata} a essere {g:giudicato|giudicata}.",
		"Se il mio servo imparasse a sospirare, credo che dovrei bandirlo per principio.",
		"Il mio demone mi guarda mangiare con aperto disprezzo. Ho deciso di prenderlo come un complimento alla cucina.",
	},
	["cls.warlock.muse.w06.029"] = {
		"Prosciugare la vita di un nemico non lascia sapore, né calore, niente da gustare. È una grazia. Se fosse piacevole, mi preoccuperei.",
		"Strappo la vita ai nemici e la sento sistemarsi dentro di me come un abito preso in prestito. Mi sta bene. Preferirei di no.",
	},
	["cls.warlock.muse.w06.030"] = {
		"I bambini mi fissano sempre. I più coraggiosi mi chiedono se so far uscire il fuoco dalle mani. Dico di no. Risparmia un mare di guai.",
		"Quando i bambini mi chiedono se tengo un mostro, dico la verità: non in tasca.",
	},
	["cls.warlock.muse.w06.031"] = {
		"Ho il sonno leggero. Non per paura: per educazione. È scortese farsi cogliere alla sprovvista dai propri ospiti.",
		"Nei miei sogni entrano ospiti che non ho mai invitato. Ho imparato a essere di pessima compagnia, e quasi tutti se ne vanno presto.",
		"Per quelli come me, riposare è un'abilità. Impari a chiudere gli occhi tenendo una porta sprangata.",
	},
	["cls.warlock.muse.w06.032"] = {
		"Potrei spingermi più in là. Ogni stregone può, un po' più in là ogni volta. L'arte sta nel fermarsi dove si era deciso.",
		"L'ambizione è la porta da cui entrano. La mia la tengo piccola e semplice, con una serratura.",
	},
	["cls.warlock.muse.w06.033"] = {
		"osserva il demone con la coda dell'occhio per un lungo istante, poi distoglie lo sguardo, come se fra loro non fosse passato niente.",
		"rivolge al demone una sola parola sommessa, e la creatura abbassa lo sguardo, lentamente, con evidente riluttanza.",
		"si volta, senza fretta, verso il demone ogni volta che quello scivola alle sue spalle.",
	},
	["cls.warlock.muse.w06.034"] = {
		"Se qualcuno si offre di insegnarti il mio mestiere, la prima volta di' di no. Se dopo un mese lo vuoi ancora, allora vieni a chiedermi perché.",
		"Mi chiedono come si comincia in questo mestiere. Dico di rileggere due volte ogni contratto che abbiano mai firmato. Quasi tutti tornano a casa.",
	},
	["cls.warlock.muse.w06.035"] = {
		"I devoti mi guardano come un conto che non torna. È giusto. Certi giorni non torna neanche a me.",
		"Il sorriso di un sacerdote si irrigidisce quando mi avvicino. Non gliene faccio una colpa. Vedono le scartoffie.",
	},
	["cls.warlock.muse.w06.036"] = {
		"Dall'altra parte i nomi hanno un peso. Il mio laggiù non lo do a nessuno, e qui faccio attenzione a quante volte lo pronuncio.",
		"Ogni demone con cui ho trattato voleva per prima cosa il mio nome. Così ho preso gusto a non farmi chiamare in nessun modo.",
	},
	["cls.warlock.muse.w06.037"] = {
		"Vedere attraverso l'occhio di un demone è utile e sgradevole. Tutto sembra qualcosa da mangiare.",
		"Quando mando fuori l'occhio, torno con il panorama e una vaga fame che non è mia. Ho imparato ad aspettare che passi.",
	},
	["cls.warlock.muse.w06.038"] = {
		"Vincolare un demone che non vuole esserlo è una gara di nervi. Il trucco è avere meno paura dell'altro, o almeno sembrarlo.",
		"Ogni demone che ho vincolato era convinto, fino all'ultimo, che avrei abbassato gli occhi prima io. È una convinzione utile. Gliela lascio.",
	},
	["cls.warlock.muse.w06.039"] = {
		"La gente crede che noi stregoni non ridiamo mai. Invece sì. Di solito poco prima che smetta qualcun altro.",
		"Il senso dell'umorismo ce l'ho. Solo che di solito arriva con un leggero odore di zolfo.",
	},
	["cls.warlock.muse.w06.040"] = {
		"La gente si siede di rado vicino a me. Quando qualcuno lo fa, senza trasalire, quella faccia me la ricordo a lungo.",
		"In questo mestiere ho trovato degli amici, pochi. Sono quelli che chiedono quanto costa e poi aspettano davvero la risposta.",
		"Ricevere fiducia da chi sa cosa faccio vale più di qualsiasi patto. Non capita spesso. La custodisco con cura.",
	},
	["cls.warlock.muse.w06.041"] = {
		"La prima cosa che ci insegnano è un dardo d'ombra. Non una protezione, non una cura. La dice lunga sul programma di studi.",
		"I maghi cominciano col fuoco, i sacerdoti con una preghiera. Noi con un'ombra tirata in faccia a qualcuno. Almeno è onesto.",
	},
	["cls.warlock.muse.w06.042"] = {
		"Alcuni miei incantesimi bruciano anche me. Li lancio lo stesso, e non fingo che questo dica qualcosa di buono sul mio conto.",
		"C'è un fuoco che so evocare a cui non importa chi di noi divori. Lo tengo per i momenti in cui non importa nemmeno a me.",
	},
	["cls.warlock.muse.w06.043"] = {
		"Il demone vuole una cosa sola da me, e non ha mai fretta. La sua pazienza è la cosa più spaventosa che possieda.",
		"Il mio servo non mi odia. L'odio sarebbe più facile da gestire. Aspetta e basta, come l'acqua aspetta una crepa.",
	},
	["cls.warlock.muse.w06.044"] = {
		"conta le schegge d'anima dentro un sacchetto di stoffa, una per una, e lo chiude con un doppio nodo.",
		"suddivide una manciata di schegge d'anima secondo un criterio che conosce solo {g:lui|lei}, e ne mette una in disparte.",
	},
	["cls.warlock.muse.w06.045"] = {
		"Ogni evocazione mi svuota per un'ora. Ho smesso di chiamarla stanchezza: somiglia di più a una porta lasciata socchiusa.",
		"Chiamare un servo mi toglie qualcosa che il sonno non mi rende del tutto. Solo che ancora non so cosa sia.",
	},
	["cls.warlock.muse.w06.046"] = {
		"Sparisce qualcosa, prende fuoco qualcosa, una mucca smette di dare latte. Chissà come, la colpa è sempre dello stregone.",
		"Sì, {g:lo stregone|la strega} sono io. No, quella cosa non l'ho fatta io, qualunque fosse. L'avrei fatta meglio.",
	},
	["cls.warlock.muse.w06.047"] = {
		"Ogni giorno commercio in anime: altrui, frammenti, avanzi. La mia resta fuori dal banco. È l'unica regola per cui morirei.",
		"Tutto ciò che possiedo è in vendita per il compratore giusto, tranne la cosa che vogliono di più. Che continuino a volerla.",
	},
	["cls.warlock.muse.w06.048"] = {
		"Gli animali non si fidano di me. I cani rizzano il pelo, gli uccelli tacciono. Ho smesso di prendermela. Quasi sempre.",
		"Le bestie fiutano la compagnia che frequento. Darei parecchio per un gatto che non inarcasse la schiena quando mi vede.",
	},
	["cls.warlock.muse.w06.049"] = {
		"Veste di stoffa, niente scudo, nessuna lama degna di questo nome. La gente pensa che io sia {g:indifeso|indifesa}. Lascio che lo pensi finché mi torna utile.",
		"Non porto armature. Porto conseguenze.",
	},
	["cls.warlock.muse.w06.050"] = {
		"Guarda chi pratica quest'arte: umani, gnomi, orchi, Reietti. Diversi come più non si potrebbe, e ognuno di noi ha voluto la stessa cosa pericolosa.",
		"Al mestiere non importa in che corpo si nasca, né se si nasca due volte. A tutti fa la stessa domanda.",
	},
	["cls.warlock.muse.w06.051"] = {
		"Lasciami un po' di spazio quando lavoro. Non per me. Alle cose piace allungarsi fuori dal cerchio, e non vanno tanto per il sottile su chi toccano.",
		"Mettiti dietro di me, non di fianco. Ciò che evoco non sempre distingue un amico da un pasto.",
	},
	["cls.warlock.muse.w06.052"] = {
		"Quello che promettono cambia man mano che cresco. Prima era la forza. Ultimamente è la pace, il silenzio: molto più pericoloso.",
		"Hanno smesso di offrirmi potere. Adesso mi offrono riposo. È così che capisco che sono stati attenti.",
	},
	["cls.warlock.muse.w06.053"] = {
		"si concede una pausa, il demone acquattato lì accanto, e nessuno dei due sembra intenzionato a rompere il silenzio.",
		"lascia che il demone si accucci vicino, come si farebbe con un cane dal carattere incerto, e torna ai propri pensieri.",
	},
	["cls.warlock.muse.w06.054"] = {
		"In certe città, si dice, gli stregoni vengono tollerati come un fabbro tollera una scottatura: una cosa che viene insieme a un lavoro utile.",
		"Ogni capitale ha bisogno di noi e nessuna vuole ammetterlo. Siamo il veleno nell'armadietto del guaritore: sotto chiave, con l'etichetta, e mai buttato via.",
	},
	["cls.warlock.muse.w06.055"] = {
		"È l'attenzione continua che mi logora. Non gli incantesimi, non gli scontri. Non potere mai, nemmeno una volta, smettere di sorvegliare.",
		"Gli altri possono permettersi di essere distratti, ogni tanto. Io ho dimenticato com'è, e non so nemmeno se mi manchi.",
	},
	["cls.warlock.muse.w06.056"] = {
		"Quando il fuoco che evoco si mette fra uno sconosciuto e una lama, mi sento quasi {g:pulito|pulita}. Quasi è tanto, nel mio mestiere.",
		"Ogni tanto il mestiere fa qualcosa di semplicemente buono. Mi aggrappo a quei giorni come altri si aggrappano a una preghiera.",
	},
	["cls.warlock.muse.w06.057"] = {
		"Se ha un nome? Sì. Se lo uso? Solo quando voglio la sua attenzione, il che succede meno spesso di quanto credi.",
		"No, non puoi accarezzarlo. In cambio puoi tenerti tutte le dita. Mi sembra uno scambio onesto.",
	},
	["cls.warlock.muse.w06.058"] = {
		"Fra questo mondo e gli altri c'è ciò che i vecchi testi chiamano Twisting Nether. L'ho sempre guardato solo di sbieco. Basta e avanza.",
		"Tutto ciò che evoco attraversa il Nether, e ognuno se ne porta dietro un poco. Lo sento dopo, ai margini dello sguardo.",
	},
	["cls.warlock.muse.w06.059"] = {
		"Ho giurato che non venderò mai l'anima di un altro per il mio tornaconto. I demoni trovano quella clausola esilarante. Io la trovo essenziale.",
		"I miei patti hanno una condizione che nessun altro si prende la briga di scrivere: nessun innocente paga i miei debiti.",
	},
	["cls.warlock.muse.w06.060"] = {
		"I cacciatori amano le loro bestie, e le bestie li ricambiano. Il mio compagno mi sopporta, per contratto. È un'altra specie di famiglia.",
		"La bestia di un cacciatore morirebbe per il suo padrone. Il mio servo starebbe a guardare con interesse. Sappiamo entrambi come stanno le cose.",
	},
	["cls.warlock.muse.w06.061"] = {
		"Se potessi dire una cosa sola a chi comincia adesso in quest'arte, sarebbe questa: sono i piccoli patti a sommarsi.",
		"I principianti hanno paura dei grandi patti. Dovrebbero temere quelli piccoli: nessuno li legge con attenzione.",
	},
	["cls.warlock.muse.w06.062"] = {
		"sorprende il demone ad allungarsi verso qualcosa che non dovrebbe toccare, e lo ferma con un dito alzato, senza dire una parola.",
		"schiocca la lingua una volta, e il demone, già a metà di qualche malefatta, ci rinuncia con aria imbronciata.",
	},
	["cls.warlock.muse.w06.063"] = {
		"La Legione ha ancora servitori in questo mondo: sette, satiri, sciocchi incappucciati. Qualcuno che parla la loro lingua deve rispondergli.",
		"Là fuori ci sono settari convinti di fare quello che faccio io. Non è così. Hanno dimenticato di chi è la mano che deve tenere la catena.",
	},
	["cls.warlock.muse.w06.064"] = {
		"No, il tuo focolare non lo accendo. E va bene, d'accordo. Ma non cucinarci sopra.",
		"Tutti vogliono uno stregone a portata di mano, finché non se ne ritrovano uno a tavola.",
	},
	["cls.warlock.muse.w06.065"] = {
		"Tengo una pietra dell'anima pronta per chi mi sta più vicino. È quanto di più simile a una parola gentile io sappia offrire.",
		"Una pietra che tiene aperta una porta oltre la morte, data a un amico prima di uno scontro. Strano regalo. L'unico che il mio mestiere sappia fare.",
	},
	["cls.warlock.muse.w06.066"] = {
		"Con due aiutanti e una scheggia posso trascinare un amico attraverso mezzo continente. Nessuno chiede mai cosa ci sia dall'altra parte di quella soglia.",
		"So accorciare la strada di chiunque fino a ridurla a niente. La gente mi ringrazia, e non si chiede mai da che parte sia passata.",
	},
	["cls.warlock.muse.w06.067"] = {
		"Pronuncio una parola su una cosa viva e quella comincia, in silenzio, a guastarsi. Non è strano che io sappia farlo. È strano quanto mi venga facile.",
		"Il marciume è il più umile dei miei incantesimi. Niente luce, niente rumore. Solo una parola, e il lento lavoro del disfare.",
	},
	["cls.warlock.muse.w06.068"] = {
		"Un guinzaglio ha due capi. Uno lo tengo io; dell'altro non ho mai avuto la piena certezza di chi lo tenga, oltre al demone.",
		"Il vincolo lega il demone a me, e me al demone. La gente vede solo la prima metà. La seconda, a volte, mi toglie il sonno.",
	},
	["cls.warlock.muse.w06.069"] = {
		"La protezione che porto è presa in prestito dall'altra parte: una pelle che non è mia, stesa sulla mia. Mi calza meglio di quanto vorrei.",
		"La mia difesa viene, più o meno, dalla pelle di un demone. Cerco di non pensare a chi l'ha cucita.",
		"Altri incantatori si coprono di gelo o di preghiere. La mia armatura ha un padrone, chissà dove, e spero che non la rivoglia mai indietro.",
	},
	["cls.warlock.muse.w06.070"] = {
		"Pronuncia «demonologia» in una sala piena e guardala svuotarsi. Di' «studio dei testi antichi» e ti invitano a cena. Stesso lavoro.",
		"Chiamami pure {g:studioso|studiosa} di lingue proibite, se {g:«stregone»|«strega»} ti resta in gola. Rispondo a tutti e due i nomi.",
		"I nomi contano. Uno stregone fa paura; un consulente per faccende difficili viene pagato in anticipo.",
	},
	["cls.warlock.muse.w06.071"] = {
		"Nessuno dimentica la prima volta che il cerchio risponde. Quel che ne esce ti guarda come se sapesse già come finisce la tua storia.",
		"La prima evocazione è quella da cui ti mettono in guardia, e l'avvertimento non basta mai. Il resto lo impari restando immobile mentre ti studia.",
		"Ricordo il silenzio che calò su tutto, la prima volta che qualcosa rispose alla mia chiamata. Il silenzio di chi si accorge di essere {g:notato|notata}.",
	},
	["cls.warlock.muse.w06.072"] = {
		"legge alla luce fioca e violacea raccolta nel palmo di una mano, girando le pagine con l'altra.",
		"tiene una fiammella malaticcia sopra un libro aperto, giusto il tempo di trovare la riga che cercava.",
		"muove le labbra in silenzio sulle parole di una pagina, un dito a tenere il segno, l'altra mano chiusa come attorno a qualcosa di rovente.",
	},
	["cls.warlock.muse.w06.073"] = {
		"Non sono i demoni a farmi paura. È quanto hanno cominciato a sembrarmi normali.",
		"Il giorno in cui il mestiere mi sembrerà normale sarò nei guai. Certi giorni succede già.",
		"Prima rabbrividivo quando il cerchio si apriva. Adesso controllo solo i bordi. Non so se sia maestria o marciume.",
	},
	["cls.warlock.muse.w06.074"] = {
		"Se mai la Legione tornerà in forze, troverà ad aspettarla gente come me, che conosce i suoi trucchi da dentro.",
		"Che venga pure, la Legione. Il suo stesso fuoco sarà la prima cosa che le verrà rilanciata contro.",
		"Ho studiato il nemico più a lungo della maggior parte dei soldati. Quando arriverà, saprò dov'è tenero.",
	},
	["cls.warlock.muse.w06.075"] = {
		"Ogni tanto mi metto alla prova: mi piace ancora una bella canzone, il pane fresco, una battuta stupida? Finora sì. Continuo a controllare.",
		"Coltivo i piccoli piaceri apposta. Un buon pasto, una camicia pulita, la risata di qualcuno. Sono ancore, e mi servono tutte.",
		"Il giorno in cui smetterò di godermi le cose comuni, qualcuno dovrebbe portarmi via i libri. Me lo sono detto più volte.",
	},
	["cls.warlock.muse.w06.076"] = {
		"Dopo aver contrattato con i demoni, mercanteggiare per un paio di stivali è un gioco da ragazzi.",
		"I mercanti credono di essere duri nelle trattative. Non si sono mai trovati davanti qualcuno capace di aspettare mille anni.",
		"Ho letto contratti scritti da creature più vecchie delle montagne. Il tuo listino non mi spaventa.",
	},
	["cls.warlock.pet_call.w06.001"] = {
		"{pet}: puntualità perfetta, broncio incluso. Certe cose, dall'altra parte, le insegnano bene.",
		"{pet} si presenta con la faccia di chi aveva altri programmi.",
	},
	["cls.warlock.pet_call.w06.002"] = {
		"Il vincolo si tende mentre {pet} attraversa. Lo sento ai polsi, come un guinzaglio avvolto due volte.",
		"{pet} è qui, e c'è anche il peso di trattenere il demone qui. Della seconda parte non mi scordo mai.",
	},
	["cls.warlock.pet_call.w06.003"] = {
		"Ogni volta che chiamo, una parte di me spera che non risponda niente. Risponde sempre qualcosa: {pet}.",
		"{pet} passa dal varco fra i mondi, e il varco se la prende comoda a richiudersi.",
	},
	["cls.warlock.pet_call.w06.004"] = {
		"{pet} mi guarda come se avessi interrotto qualcosa di importante. I demoni non hanno cose importanti: ho controllato.",
		"{pet} ispeziona il posto come un padrone di casa. Qui non ti appartiene niente, chiariamolo.",
	},
	["cls.warlock.pet_call.w06.005"] = {
		"Prima {pet}, poi le domande. Nel mio mestiere si evoca prima di averne bisogno.",
		"Un servitore evocato per tempo ne vale due evocati nel panico. {pet}, al tuo posto.",
	},
	["cls.warlock.pet_call.w06.006"] = {
		"Un patto nuovo ha ancora gli spigoli. {pet} continua a saggiarli, e io continuo a indicare dove sono.",
		"{pet} e io non abbiamo ancora deciso chi debba temere chi. Io un'idea ce l'ho.",
	},
	["cls.warlock.pet_call.w06.007"] = {
		"{pet} arriva e aspetta, e basta. Niente ghigno, niente prove. Non so se dovrebbe preoccuparmi.",
		"Insieme da più tempo di quanto duri la maggior parte dei patti. {pet} prende il suo posto come se l'avesse sempre avuto.",
	},
	["cls.warlock.pet_call.w06.008"] = {
		"C'è {pet}. Non la compagnia che sceglierebbe chiunque, ma tiene lontani i lupi.",
		"{pet} al mio fianco, e chiunque abbia un po' di giudizio tiene le distanze. Utile.",
	},
	["cls.warlock.pet_call.w06.009"] = {
		"Mestiere solitario, il mio. {pet} non lo cambia, ma riempie il silenzio di qualcosa.",
		"{pet} non è compagnia, non davvero. Però il silenzio cominciava a pesare.",
	},
	["cls.warlock.pet_call.w06.010"] = {
		"Odore di pietra bruciata, e {pet} sta là dove prima non c'era niente.",
		"Zolfo, un guizzo, {pet}. L'ordine non cambia mai.",
	},
	["cls.warlock.pet_call.w06.011"] = {
		"Pronuncio le parole e {pet} risponde. Altrove, qualcos'altro le ha sentite, e ha deciso di aspettare.",
		"{pet} attraverso il cerchio. Dopo conto sempre fino a tre, nel caso qualcosa l'abbia seguito.",
	},
	["cls.warlock.pet_call.w06.012"] = {
		"{pet} ha le sue idee su dove ci ho portati. Se le tiene per sé, ed è il massimo che posso chiedere.",
		"Ai miei ordini, {pet}. Non ai tuoi. Lo ripeteremo finché non entra in testa.",
	},
	["cls.warlock.pet_call.w06.013"] = {
		"{pet} prende il davanti, io prendo il prezzo. È così che ci dividiamo il lavoro.",
		"Lì, {pet}. Fra me e qualunque cosa arrivi.",
	},
	["cls.warlock.pet_call.w06.014"] = {
		"Certi giorni comando io il demone. Certi altri ho l'impressione del contrario. Oggi chiariamo subito chi comanda.",
		"{pet} risponde. Non per lealtà: per contratto. Non mi permetto mai di confondere le due cose.",
	},
	["cls.warlock.pet_call.w06.015"] = {
		"{pet}. Bene. Ne avevo abbastanza di fare tutto il lavoro.",
		"Finalmente {pet}. Il primo colpo lo prende qualcun altro.",
	},
	["cls.warlock.pet_call.w06.016"] = {
		"{pet} non aspetta più l'incantesimo intero. Mezze parole, ed è qui. Non so se mi piaccia.",
		"L'abbiamo fatto abbastanza volte che {pet} arriva già con lo sguardo dalla parte giusta.",
	},
	["cls.warlock.pet_call.w06.017"] = {
		"{pet} si materializza con l'entusiasmo di un gatto nella tinozza.",
		"Nessuno è contento di veder arrivare {pet}, men che meno chi arriva.",
	},
	["cls.warlock.pet_dismiss.w06.001"] = {
		"Torna di là, {pet}. E non distruggere tutto mentre sei dall'altra parte.",
		"Via, {pet}. Con i miei ringraziamenti, che fingerai di non volere.",
	},
	["cls.warlock.pet_dismiss.w06.002"] = {
		"Il vincolo si allenta. Muovo le mani: dopo mi fanno sempre un po' male.",
		"Senza {pet} sento di nuovo i miei pensieri, e vorrei non sentirli.",
	},
	["cls.warlock.pet_dismiss.w06.003"] = {
		"Riposare è una parola grossa per quel che fa {pet} di là. Rimettiti in forze, allora: servirai ancora.",
		"{pet} se ne va. Una cosa in meno da sorvegliare di sbieco.",
	},
	["cls.warlock.pet_dismiss.w06.004"] = {
		"{pet} scivola via, e le ombre in cui stava ci mettono un attimo a ricordarsi di essere solo ombre.",
		"Dove stava {pet}, l'aria sa ancora di qualcosa che non appartiene a questo mondo.",
	},
	["cls.warlock.pet_dismiss.w06.005"] = {
		"Di nuovo da {g:solo|sola}. C'è più silenzio, e il silenzio per me non è mai stato del tutto sicuro.",
		"{pet} se ne va, e resto con l'unica compagnia che non posso congedare: me.",
	},
	["cls.warlock.pet_dismiss.w06.006"] = {
		"Va', {pet}. Io chiamerò, tu verrai. Lo facciamo da abbastanza tempo da saltare le minacce.",
		"{pet} indugia un attimo prima di andarsene. La versione demoniaca di un saluto, immagino.",
	},
	["cls.warlock.pet_dismiss.w06.007"] = {
		"E {pet} non c'è più. Da qualche parte, un regno infernale sospira per il ritorno.",
		"A casa, {pet}. Va' a spaventare qualcuno della tua taglia.",
	},
	["cls.warlock.pet_grief.w06.001"] = {
		"Hanno ricacciato {pet} da dove veniva. Tornerà. Non per questo è niente.",
		"{pet} sparisce in uno sbuffo di fumo e di rancore. Bastano poche parole e tornerà; il sussulto che ho sentito, invece, resta a me.",
	},
	["cls.warlock.pet_grief.w06.002"] = {
		"Non credevo che mi sarebbe dispiaciuto. {pet} ha ceduto proteggendomi, e mi dispiace.",
		"Nelle vecchie storie i servitori muoiono per i padroni. Nessuno racconta cosa si prova dall'altra parte.",
		"Il debito con {pet} è saldato, e anche un debito mai voluto pesa, quando si paga.",
	},
	["cls.warlock.pray.w06.001"] = {
		"Se qualcosa di benevolo ascolta, e non bada a chi chiede: tieni salda la mia volontà, e mie le mie mani.",
		"A chiunque ascolti e non sia uno dei miei: fa' che il guinzaglio regga un altro giorno, e che a tenerlo sia la mia mano.",
	},
	["cls.warlock.quest_complete.w06.001"] = {
		"Finito. Forse vorrai lavarti le mani dopo aver stretto la mia. Lo fanno quasi tutti.",
		"Fatto. Puoi smettere di trattenere il fiato: me ne vado.",
		"Lavoro concluso, e non ho evocato niente davanti a te. Non c'è di che.",
	},
	["cls.warlock.quest_complete.w06.002"] = {
		"Monete oneste per un lavoro onesto. Nella borsa pesano in modo diverso da qualunque paga del mestiere.",
		"Una ricompensa che posso spendere senza chiedermi a chi altro sia appartenuta. Più rara di quanto dovrebbe.",
		"Metallo semplice, dato con semplicità. Niente ronza, niente sussurra. Quasi non mi fido.",
	},
	["cls.warlock.quest_complete.w06.003"] = {
		"accetta la ricompensa con un cenno secco, e si sta già voltando prima che qualcuno decida se ringraziar{g:lo|la} come si deve.",
		"conta il compenso una volta, in fretta, e lo infila in una borsa ben lontana da quella che non apre mai davanti agli altri.",
		"lascia affiorare un piccolo sorriso asciutto davanti alla ricompensa, come chi incassa una scommessa che nessun altro sapeva fatta.",
	},
	["cls.warlock.quest_complete.w06.004"] = {
		"Il lavoro onesto non impressiona il demone. Già questo basta a renderlo degno di essere fatto, ogni tanto.",
		"Il mio servo ha tenuto il broncio per tutta la commissione. Niente di bruciato, nessuno che urla. Per me è una bella giornata.",
		"Nessuna anima, nessun urlo, solo un lavoro fatto bene. In momenti come questi il demone mi trova di una noia mortale. Meglio così.",
	},
	["cls.warlock.quest_complete.w06.005"] = {
		"Sistemato. Se dovesse servirti di nuovo qualcosa del genere, sai chi lo farà senza fare domande.",
		"I nostri affari sono conclusi. Ricordati il nome, se ti serve un lavoro fatto senza storie.",
		"Ecco. Qualunque cosa si dica di quelli come me, la mia parola la mantengo alla lettera.",
	},
	["cls.warlock.quest_complete.w06.006"] = {
		"Certe persone che aiuto avrebbero preferito che lo facesse qualcun altro. L'aiuto conta lo stesso.",
		"È strano essere utile a gente che non mi farebbe mai entrare in casa. Ho fatto pace con l'idea di fare del bene dalla soglia.",
		"Un grazie detto a debita distanza resta un grazie. Ho imparato ad accettarli da qualunque lontananza.",
	},
	["cls.warlock.quest_complete.w06.007"] = {
		"Guarda un po': una ricompensa, e dentro nessuna anima. Avete un'economia così semplice, voialtri.",
		"Oro? Che pittoresco. Dove tratto di solito, mi avrebbero chiesto un ricordo o due.",
		"Le monete sono una valuta così riposante. Non chiedono mai di essere nutrite.",
	},
	["cls.warlock.quest_complete.w06.008"] = {
		"Qualunque altra cosa abbia barattato, la mia parola è ancora mia. Giornate come questa lo dimostrano.",
		"Promessa fatta, promessa mantenuta. I demoni detestano quando sono affidabile: manda all'aria i loro argomenti migliori.",
		"Avevo detto che l'avrei fatto, ed è fatto. Il mestiere è pieno di scappatoie: nella mia vita mi piace tenere qualche cosa che non ne abbia.",
	},
	["cls.warlock.quest_complete.w06.009"] = {
		"soffia via un granello di fuliggine dalla ricompensa prima di intascarla, per una specie di cortesia.",
		"si pulisce le dita prima di prendere il compenso, come per risparmiargli qualcosa.",
		"mette via la ricompensa con dita che, per una volta, non lasciano fuliggine, e ne sembra vagamente {g:compiaciuto|compiaciuta}.",
	},
	["cls.warlock.quest_complete.w06.010"] = {
		"Fatto. Il mestiere ha dato una mano, come sempre, ma il cammino e le domande erano tutti miei.",
		"Gli incantesimi hanno fatto la loro parte. La pazienza era mia, ed è la parte di cui vado più {g:fiero|fiera}.",
	},
	["cls.warlock.quest_complete.w06.011"] = {
		"Non preoccuparti. Non mi ha seguito niente. Ho controllato due volte.",
		"Tutto fatto. E prima che tu lo chieda: no, non è tornato niente con me. Non stavolta.",
		"Finito. Il cerchio è chiuso, il lavoro è fatto, e tutti hanno ancora la forma con cui avevano cominciato.",
	},
	["cls.warlock.quest_complete.w06.012"] = {
		"Le monete vanno bene. Quello che raccolgo davvero è la prossima persona che sentirà dire che di me ci si può fidare.",
		"Ogni lavoro portato a termine è una piccola pietra messa contro le storie su quelli come me. Sto costruendo un muro lungo.",
		"Lasciamoli parlare degli stregoni. Ma che aggiungano: il lavoro chiesto è stato finito, fino all'ultima parte.",
	},
	["cls.warlock.quest_complete.w06.013"] = {
		"intasca la ricompensa sotto lo sguardo avido del demone, e chiude la borsa con un colpetto, lentamente, apposta.",
		"mette via il compenso mentre il demone segue con gli occhi ogni moneta, e finge di non vederlo.",
	},
	["cls.warlock.quest_complete.w06.014"] = {
		"Una buona azione in più sulla bilancia. Non so chi la legga, ma vorrei che i numeri sembrassero migliori di prima.",
		"Questa la metto sull'altro piatto della bilancia. Pesa meno dei patti, ma non è poco.",
		"Ogni commissione come questa riporta qualcosa un po' indietro, dall'altra parte. Non molto. Prendo quel che viene.",
	},
	["cls.warlock.quest_complete.w06.015"] = {
		"Sollievo? Per il lavoro finito, o perché sto per andarmene? No, non rispondere.",
		"Vado. So che sollievo stai per provare: per educazione preferisco non guardarlo.",
		"Finito. Tolgo il disturbo da me: immagino sia la parte che ti godrai di più.",
	},
	["cls.warlock.quest_complete.w06.016"] = {
		"Continuo ad aspettare il costo nascosto. Col lavoro onesto, a quanto pare, non c'è. Mi ci vorrà un po' per abituarmi.",
		"Nessuna clausola, nessun tranello, nessun prezzo da scoprire più tardi. I lavori semplici sono una vacanza, per chi fa il mio mestiere.",
		"Tutto qui? Nessun secondo pagamento da saldare più avanti, in un'altra moneta? Il lavoro onesto è molto strano.",
	},
	["cls.warlock.quest_complete.w06.017"] = {
		"fa un piccolo segno su un ritaglio di pergamena, cancellando un debito fra tanti, poi lo ripiega.",
		"ripiega di una piega in più un elenco di obblighi, e lo rimette dentro la veste.",
	},
	["cls.warlock.quest_complete.w06.018"] = {
		"Fiducia o no, il lavoro si fa. Ho smesso di aspettare di piacere alla gente, prima di aiutarla.",
		"Che io piacessi non è mai stato parte dell'accordo. Portarlo a termine sì. Uno su due va benissimo.",
	},
	["cls.warlock.quest_complete.w06.019"] = {
		"Dall'altra parte, oggi, qualcosa è rimasto deluso da me. Bene.",
		"Una giornata utile, dall'inizio alla fine. Immagino le voci che tengono il muso, e me la godo più di quanto dovrei.",
		"Una giornata di buon lavoro, e basta. Le voci sono diventate silenziosissime, e lo prendo come un applauso.",
	},
	["cls.warlock.quest_complete.w06.020"] = {
		"Fatto e finito. La prossima volta mandami a chiamare prima: i problemi maturano in fretta.",
		"Non è più un problema tuo. Si paga lo stregone, si dimentica lo stregone. Il solito accordo.",
		"Sistemato. I dettagli ti rovinerebbero solo la cena.",
	},
	["cls.warlock.quest_complete.w06.021"] = {
		"Quel che frutta, lo spenderò in pane, guanti nuovi e niente, proprio niente, che brilli. Le cose comuni hanno il loro fascino.",
		"Quel che ne ricavo lo spenderò in qualcosa di noioso e utile. Mi tiene {g:legato|legata} al mondo di tutti i giorni.",
	},
	["cls.warlock.quest_complete.w06.022"] = {
		"Domani avranno già dimenticato la mia faccia, e il lavoro se lo ricorderanno a lungo. È il verso giusto.",
		"Che si ricordino del lavoro e non di chi l'ha fatto. Meno si ricorda la faccia di uno stregone, meglio vanno le cose.",
		"Un aiuto ricordato senza chi l'ha dato. È l'unica reputazione su cui quelli come me possono contare.",
	},
	["cls.warlock.quest_progress.w06.001"] = {
		"Un pezzo è fatto. Il resto arriverà come arrivano le maledizioni: piano, e poi tutto insieme.",
		"Una parte è fatta. Ho avuto pazienza con cose peggiori di una commissione.",
		"Qualcosa è sistemato. Non ho fretta: è con la fretta che si finisce nei capitoli di avvertimento dei libri.",
	},
	["cls.warlock.quest_progress.w06.002"] = {
		"Progressi. Ancora nessuno ha dovuto firmare niente, e lo trovo incoraggiante.",
		"Ci si avvicina, e non ha preso fuoco niente che non dovesse.",
		"A metà dell'opera, e finora tutti i coinvolti hanno ancora tutte le dita.",
	},
	["cls.warlock.quest_progress.w06.003"] = {
		"È tutto quello che avevano chiesto. Ora si va a riscuotere, nel modo onesto.",
		"Tutto fatto. Adesso la via del ritorno, e un pagamento che non chiede niente in cambio.",
		"Completo. Lo consegnerò come promesso, alla lettera. È l'unico modo che conosco di chiudere un accordo.",
	},
	["cls.warlock.reputation_change.w06.001"] = {
		"Adesso hanno di me un'opinione un po' migliore. Per chi fa il mio mestiere, è praticamente una statua in piazza.",
		"Mi accolgono un po' meglio di prima. Ci è voluto più lavoro del dovuto, e vale più di quanto sembri.",
		"Si sparge la voce che di me ci si può fidare. Cercherò di non farlo sapere alle voci.",
	},
	["cls.warlock.rez.w06.001"] = {
		"Rieccomi. Mentre ero via, qualcosa dall'altra parte ha allungato la mano verso di me, e ha trovato la porta chiusa. Bene.",
		"Morire è già brutto di suo. Morire da stregone vuol dire trovare una folla che ti aspetta all'arrivo. Non ho aspettato abbastanza da conoscerla.",
	},
	["cls.warlock.rezother.w06.001"] = {
		"Un'anima messa da parte in una pietra, per l'ora cattiva. L'assicurazione è la magia più onesta che conosco.",
		"La pietra custodisce una strada di ritorno dalla morte. Spero che resti lì a prendere polvere.",
	},
	["cls.warlock.thanks.w06.001"] = {
		"Grazie. Di gentilezza dalle mie parti ne arriva poca: me ne accorgo ogni volta.",
		"Ti ringrazio. Non sono in molti a farmi dei favori. Mi ricorderò che tu l'hai fatto.",
	},
	["cls.warlock.thanks.w06.002"] = {
		"Grazie. Nel mio mestiere, un favore senza condizioni è quasi un miracolo.",
		"Ti sono {g:obbligato|obbligata}. E non hai nemmeno chiesto niente in cambio. Sai davvero chi sono?",
	},
	["cls.warlock.threat.w06.001"] = {
		"Vattene ora, e non imparerò il tuo nome. Le maledizioni funzionano meglio coi nomi.",
		"Potrei renderti molto lunga la prossima settimana. Gira i tacchi.",
		"Un altro passo, e ti faccio una promessa che non ti piacerà.",
	},
	["cls.warlock.threat.w06.002"] = {
		"Il mio servo vorrebbe scambiare due parole con te. Ne conosce una sola.",
		"Devo togliere il guinzaglio al demone? Me lo chiede con tanta gentilezza.",
		"Vedi la cosa accanto a me? È quella educata.",
	},
	["cls.warlock.threat.w06.003"] = {
		"Io non minaccio. Prendo accordi, e poi li rispetto.",
		"Non è una minaccia. È un preventivo.",
		"Ti direi cosa succede dopo, ma mi dispiacerebbe rovinarti la sorpresa.",
	},
	["cls.warlock.threat.w06.004"] = {
		"lascia scivolare un ricciolo di fumo scuro tra le dita e lo osserva, senza dire nulla.",
		"inclina la testa, e per un istante i suoi occhi diventano completamente neri.",
	},
	["cls.warlock.threat.w06.005"] = {
		"La tua anima entrerebbe in una pietra grande quanto il mio pollice. Ho controllato.",
		"Nel mio mestiere le anime sono moneta. La tua è spicciolame.",
		"Occhio. Dei tipi come te io tengo dei pezzetti in una borsa.",
	},
	["cls.warlock.victory.w06.001"] = {
		"Adesso c'è da restituire quello che ho prelevato. Sedersi, mangiare, aspettare che tornino le forze.",
		"Per chiudere ho chiesto un prestito alla mia stessa salute. Ora il debito scade, e lo pago con calma, a sedere.",
		"Mana pieno, corpo vuoto. Il solito scambio. Ora un po' di riposo per pareggiare.",
	},
	["cls.warlock.victory.w06.002"] = {
		"Dovevi leggere l'avvertenza sull'etichetta. L'etichetta sono io.",
		"Mh. Maledizione, fuoco e prosciugamento: hai voluto provare proprio tutto.",
		"Ecco com'è un cattivo affare, visto da fuori.",
	},
	["cls.warlock.victory.w06.003"] = {
		"abbassa la mano, e gli ultimi fili d'ombra rientrano nella manica come acqua nella sabbia.",
		"si scuote un po' di cenere grigia dai vestiti, senza guardare da dove viene.",
		"resta accanto al nemico abbattuto un istante più del necessario, come se aspettasse che qualcosa ne esca.",
	},
	["cls.warlock.victory.w06.004"] = {
		"Controllare le schegge. Sempre, dopo. Lo stregone che resta senza lo scopre nel momento peggiore.",
		"Il rito del dopo: contare le schegge, pulire la bacchetta, fermare le mani.",
		"Ogni scontro finisce allo stesso modo: apro la borsa e conto. È la cosa più vicina a una preghiera che io abbia.",
	},
	["cls.warlock.victory.w06.005"] = {
		"Maledizione finita, e tu con lei. La prossima volta prenditela con un paladino: perdonano più facilmente.",
		"Quella maledizione portava il tuo nome dal primo sguardo che mi hai lanciato.",
		"Per quella maledizione non c'è rimedio. Per te non c'è mai stato.",
	},
	["cls.warlock.victory.w06.006"] = {
		"Le mie ferite si sono richiuse, quasi tutte a sue spese. Non sembra un furto. È questo che mi preoccupa.",
		"La sua vita adesso è mia, o almeno la parte che mi serviva. Il resto è andato dove vanno le vite.",
	},
	["cls.warlock.victory.w06.007"] = {
		"Bel lavoro, servo. Non montarti la testa: non ne hai molta.",
		"Al piede. Sì, ho visto. No, non puoi tenerti niente.",
		"Torna al mio fianco. E smettila di fare quella faccia soddisfatta: non ti dona.",
	},
	["cls.warlock.victory.w06.008"] = {
		"volta le spalle al cadavere e schiocca la lingua; il demone {g:lo|la} segue strisciando e borbottando.",
		"fa un cenno secco con due dita, e il demone smette di annusare i resti e torna indietro, imbronciato.",
	},
	["cls.warlock.victory.w06.009"] = {
		"Ora c'è silenzio. Non so mai se sia sollievo o solo le voci che riprendono fiato.",
		"Finita. L'aria torna a sapere d'aria. Io torno a sapere di zolfo.",
		"Il silenzio dopo uno scontro, per me, non è mai vuoto. Qualcosa resta sempre a guardare cosa farò.",
	},
	["cls.warlock.victory.w06.010"] = {
		"Fatto. Qualcuno se lo segni: le maledizioni funzionano.",
		"Ecco. Direi riposa in pace, ma conosco il mestiere troppo bene.",
		"Questione chiusa. Il conto lo mando a chi ti sta aspettando dall'altra parte.",
	},
	["cls.warlock.victory.w06.011"] = {
		"Mi è piaciuto. Un poco. Dovrei annotarmelo e riguardarlo più tardi.",
		"C'è stato un momento, alla fine, in cui il fuoco sembrava mio. Con momenti così ci vuole cautela.",
	},
	["cls.warlock.victory.w06.012"] = {
		"Avevi un nome. Quello non te lo tolgo. Solo tutto il resto.",
		"Nessun rancore. Al mio posto avresti fatto lo stesso, col patto giusto.",
		"In qualunque cosa credessi, non ha trattato duro quanto me.",
	},
	["cls.warlock.victory.w06.013"] = {
		"Torna nel Nether. Di' che ti ci ha rimandato un mortale, e guarda come smettono di ridere.",
		"Un demone in meno a piede libero. Uno in più che mi porta rancore dall'altra parte.",
		"Congedo definitivo. Ai miei servi non lo concedo mai.",
	},
	["cls.warlock.victory.w06.014"] = {
		"La seconda volta è quella buona, a quanto pare.",
		"Ecco. Chi ha mosso queste ossa può riprovarci; io aspetto.",
		"Riposa, e stavolta resta a riposo. La seconda volta non sarò così gentile.",
	},
	["cls.warlock.victory.w06.015"] = {
		"preme insieme i polpastrelli macchiati finché smettono di tremare.",
		"si sfrega i palmi, lentamente, come per togliersi qualcosa che non vuole venire via.",
	},
	["cls.warlock.victory.w06.016"] = {
		"Te l'avevo detto che la maledizione era contagiosa. Be', volevo dirtelo.",
		"Le mie condoglianze. A chi dovrà rimettere in ordine.",
		"Ed ecco, se qualcuno tiene il conto, perché non si minaccia uno stregone.",
	},
	["cls.warlock.victory.w06.017"] = {
		"Quel dardo è partito più rapido del solito. Il mestiere mi si sta posando nelle mani, nel bene o nel male.",
		"Ogni scontro mi insegna un po' di più su cosa vuole il potere. Le lezioni non mi piacciono, ma prendo appunti.",
		"Un altro scontro, un'altra pagina del registro. La calligrafia si fa più sicura ogni volta.",
	},
	["cls.warlock.victory.w06.018"] = {
		"È pagato. Il patto non chiede altro a questa creatura.",
		"Il conto è chiuso. Chi lo aspetta venga pure a riscuotere.",
	},
	["cls.warlock.victory.w06.019"] = {
		"Una vocina, dentro, chiede se era necessario. La lascio chiedere. Non rispondo.",
		"Mi costringo a guardare quello che ho fatto. Ogni volta. È l'unica regola che non ho mai piegato.",
	},
	["cls.warlock.victory.w06.020"] = {
		"Spegniti in silenzio. Non ho più niente da dirti.",
		"Il tuo fuoco si è spento, il mio no. Tutta qui la storia.",
		"Ti spegni come una candela. Il fumo me lo tengo io.",
	},
	["cls.warlock.victory.w06.021"] = {
		"Il suo ultimo passo è stato una fuga. La paura fa questo. Avrei preferito un'altra fine, ma ancora di più preferisco non finire io.",
		"Prima la paura, poi il colpo finale. Efficiente. Cerco di non soffermarmi sull'ordine delle cose.",
	},
	["cls.warlock.victory.w06.022"] = {
		"Il marciume ha finito quello che avevo cominciato. Io, più che altro, ho aspettato.",
		"Pazienza e un po' di corruzione. Non c'è scontro al mondo che non sappiano logorare.",
		"Non avevo bisogno di correre. Il marciume non ha mai fretta.",
	},
	["cls.warlock.victory.w06.023"] = {
		"Il demone vuole un complimento. Gli concedo un cenno. I demoni che ricevono complimenti poi chiedono la paga.",
		"Mi guarda aspettando una ricompensa. Non avrà niente. Premiare un demone è il modo in cui cominciano i guai.",
	},
	["cls.warlock.victory.w06.024"] = {
		"Non valeva quasi niente. Dovrei chiedere scusa alla maledizione per averla sprecata.",
		"Una cosa da poco. Quasi mi dispiace. Quasi.",
	},
	["cls.warlock.victory.w06.025"] = {
		"Più grande di me, eppure a terra. A questo serve un buon patto.",
		"Tu avevi la stazza e la forza. Io avevo condizioni migliori.",
		"Più stazza, più superficie da maledire.",
	},
	["cls.warlock.victory.w06.026"] = {
		"lascia che il buio si raccolga di nuovo nel palmo e chiude il pugno, come chi intasca una moneta.",
		"guarda un debole bagliore viola svanire dal corpo, e solo allora abbassa la guardia.",
	},
	["cls.warlock.victory.w06.027"] = {
		"Mi è costata più del dovuto. Con il prossimo sarò più prudente.",
		"Stanchezza. Quella che viene dallo spendere cose che non si possono ricomprare.",
		"Sedersi. Mangiare qualcosa. I demoni saranno ancora lì quando avrò meno vuoto dentro.",
	},
	["cls.warlock.victory.w06.028"] = {
		"Immagino che di questo si mormorerà. Sugli stregoni si mormora sempre.",
		"No, non chiedo scusa per l'odore. Il fuoco vil puzza così.",
	},
	["cls.warlock.victory.w06.029"] = {
		"Rilassati. Lascia che il potere torni dove abita. Vuole sempre restare un po' di più.",
		"Lasciarlo andare piano. Il potere trattenuto dopo lo scontro comincia a fare piani per conto suo.",
		"Riporlo. Fino all'ultima briciola. Niente esce dallo scontro ancora acceso nelle mie mani.",
	},
	["cls.warlock.victory.w06.030"] = {
		"A terra, e per sempre. Le mie maledizioni non fanno le cose a metà.",
		"Per te è finita. La mia fine è ancora lontana, se rispetto i miei patti.",
	},
	["cls.warlock.victory.w06.031"] = {
		"Ogni vittoria si paga in un posto che non vedo. Ho imparato a non chiedere dove.",
		"Vinto di nuovo. Il conto arriva dopo, e mai nella forma che mi aspetto.",
		"La vittoria è solo la parte del prezzo che ti fanno vedere.",
	},
	["cls.warlock.victory.w06.032"] = {
		"Lascia che le braci finiscano il lavoro.",
		"Cenere e un cattivo odore. Il fuoco vil non lascia mai molto altro.",
	},
	["cls.warlock.victory.w06.033"] = {
		"Vinta con la salute presa in prestito. Sono solvibile. Probabilmente.",
		"Pagato con la mia pelle, come al solito. Ne valeva la pena, come al solito. Più o meno.",
		"Mi ripagherò con un pasto e una sosta. Il creditore più economico che conosca.",
	},
	["cls.warlock.victory.w06.034"] = {
		"si china un attimo accanto ai resti, le dita sospese, poi si rialza e chiude una piccola borsa con uno strattone.",
		"rigira tra le dita un piccolo cristallo viola prima di riporlo.",
		"spegne tra due dita un ultimo ricciolo di fumo viola, come si fa con uno stoppino.",
	},
	["cls.warlock.victory.w06.035"] = {
		"Se qualcuno chiede: un inciampo. Dentro una maledizione. Più volte.",
		"Una cosa in meno che vuole la mia morte. La lista resta lunga, comunque.",
		"Causa del decesso: un disaccordo con uno stregone. Capita più spesso di quanto si creda.",
	},
	["cls.warlock.victory.w06.036"] = {
		"Nessuno verrà a vedere cos'è successo qui. Sentiranno lo zolfo e decideranno che preferiscono non saperlo.",
		"Se qualcuno trova il corpo, indovinerà chi è stato. Il lavoro di uno stregone ha una firma.",
	},
	["cls.warlock.victory.w06.037"] = {
		"Lascialo stare. Niente di quel cadavere ti appartiene.",
		"Via dai resti. Sei un servo, non uno spazzino.",
		"Giù le mani. Non ti ho evocato per spilluzzicare gli avanzi.",
	},
	["cls.warlock.victory.w06.038"] = {
		"Per un istante, mentre moriva, ho sentito qualcosa passarmi accanto. Uno spiffero. Mi dirò che era uno spiffero.",
		"Mentre cadeva, il freddo nell'aria si è fatto più fondo, solo per un istante. Qualcosa dall'altra parte se n'era accorto.",
	},
}, "base_classes")
