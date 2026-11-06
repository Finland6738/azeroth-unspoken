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
	["cls.druid.attack.w07.001"] = {
		"Ancora. Come il picchio: prima o poi l'albero cede.",
		"Un'altra. La pazienza passa attraverso tutto, se ci provi abbastanza volte.",
		"E ancora. La via lenta arriva sempre.",
	},
	["cls.druid.attack.w07.002"] = {
		"Spendi solo quello che lo scontro chiede. La natura non paga mai più del prezzo.",
		"Piano. Non sprecare forze per fare scena.",
		"Con misura. In natura nessuno colpisce più forte del necessario.",
	},
	["cls.druid.attack.w07.003"] = {
		"incalza il nemico senza fretta, ogni mossa che nasce dalla precedente come gli anelli di un tronco.",
		"non dà tregua al nemico, con la parsimonia instancabile di una creatura selvatica: niente di sprecato fra una mossa e l'altra.",
	},
	["cls.druid.attack.w07.004"] = {
		"Portalo addosso per un po'. Luce di luna che brucia, e continua a bruciare.",
		"Un marchio d'argento. Non verrà via tanto presto.",
	},
	["cls.druid.attack.w07.005"] = {
		"Vai da qualche parte? Il terreno non è d'accordo.",
		"Radici ai piedi. Adesso possiamo parlarne con calma.",
		"Non muoverti. Ora il terreno ti tiene per le caviglie.",
	},
	["cls.druid.attack.w07.006"] = {
		"Niente incantesimi in questa forma. Solo peso e filo.",
		"Questa forma non tratta. Morde e basta.",
		"Peso più di quanto sembri. Molto di più.",
	},
	["cls.druid.attack.w07.007"] = {
		"Lento da invocare, difficile da dimenticare. Valeva l'attesa.",
		"Tutto quel raccogliere, per una sola caduta luminosa. Che conti qualcosa.",
	},
	["cls.druid.attack.w07.008"] = {
		"Questo era il modo della natura di dire di no.",
		"Mi dispiace. Be'. Più o meno.",
		"Prendilo come un educato invito ad andartene.",
	},
	["cls.druid.attack.w07.009"] = {
		"Lascia che sia il vento a sistemarti. Ha esperienza.",
		"Ecco la burrasca. Tieniti a qualcosa.",
	},
	["cls.druid.attack.w07.010"] = {
		"Ecco. Adesso brilli. Prova a nasconderti, ora.",
		"Brilli come una lanterna. Non c'è più modo di nasconderti.",
	},
	["cls.druid.battle.w07.001"] = {
		"A una quercia servono cento inverni per crescere. A te posso dedicare un minuto.",
		"Gli alberi sopravvivono alle tempeste per mestiere. E tu sei una tempesta piccolina.",
		"Ho imparato la pazienza da cose che restano ferme nello stesso posto per secoli. Corri pure, se ti va.",
	},
	["cls.druid.battle.w07.002"] = {
		"Niente di personale. Il ciclo ha solo deciso che uno di noi torna alla terra.",
		"Nessuno dei due è malvagio. Solo che uno di noi sta per diventare cibo per l'erba, tutto qui.",
		"Nessun rancore. Solo la vecchia somma: uno resta in piedi, l'altro va a nutrire la terra.",
	},
	["cls.druid.battle.w07.003"] = {
		"Respira. Senti il terreno. Poi rispondi.",
		"Prima rallenta il cuore. In natura nessuno ha fretta per il colpo che conta.",
		"Prima le radici. Tutto il resto cresce da lì, da dove sto.",
	},
	["cls.druid.battle.w07.004"] = {
		"si zittisce del tutto, ma non per paura: è l'immobilità di chi ha già deciso.",
		"abbassa il baricentro e lascia che il rumore del mondo defluisca, finché non resta che il nemico.",
		"guarda il nemico avanzare con uno sguardo senza fretta, la calma di chi è sopravvissuto a parecchie tempeste.",
	},
	["cls.druid.battle.w07.005"] = {
		"Stavo contando funghi. Mi hai rovinato una passeggiata tranquillissima.",
		"Stavo ascoltando uno scarabeo. Era più interessante di te, e più educato.",
		"Proprio adesso? Io e il muschio ci godevamo un silenzio delizioso.",
	},
	["cls.druid.battle.w07.006"] = {
		"Hai fatto pendere la bilancia troppo da una parte. Sono qui per riportarla in pari.",
		"Qualcuno deve rimettere in equilibrio le cose. A quanto pare tocca a me.",
		"L'equilibrio non si mantiene da solo. Qualcuno deve appoggiarsi dall'altra parte.",
	},
	["cls.druid.battle.w07.007"] = {
		"Ogni stagione finisce. La tua sta finendo adesso.",
		"L'inverno arriva per tutte le cose. Per te sono solo un po' in anticipo.",
		"Primavera, estate, il lungo autunno. Per te siamo all'ultima stagione.",
	},
	["cls.druid.battle.w07.008"] = {
		"Il giardiniere pota senza rabbia. Non prenderla sul personale, è solo una potatura.",
		"Certi rami vanno tagliati perché il resto respiri. Oggi il ramo sei tu.",
		"Il giardiniere non ce l'ha col rovo. Ma lo estirpa comunque.",
	},
	["cls.druid.battle.w07.009"] = {
		"Non c'è odio in me. L'odio sbaglia mira.",
		"La rabbia si consuma. Io ho la pazienza, e quella non si consuma mai.",
	},
	["cls.druid.battle.w07.010"] = {
		"Ricorda: le cure sono per dopo. E per durante. Soprattutto per durante, conoscendomi.",
		"Prima si combatte, poi si cura. O il contrario. Più probabilmente tutt'e due insieme.",
		"Stavolta cerca di non aver bisogno di cure. Ah. Come se avesse mai funzionato.",
	},
	["cls.druid.battle.w07.011"] = {
		"Gli anziani dicono che fu Cenarius a insegnare ai primi druidi a difendere il verde. La lezione mi è arrivata intatta.",
		"Fu Cenarius a dare al nostro ordine le prime lezioni, così raccontano gli anziani. Questa è una di quelle.",
	},
	["cls.druid.battle.w07.012"] = {
		"Mantengo la promessa di ogni druido: proteggere ciò che cresce. E tu ci stai in mezzo.",
		"Proteggere ciò che cresce. Ogni druido lo giura, in un modo o nell'altro. E tu ci hai messo i piedi sopra.",
		"Ognuno di noi porta la stessa vecchia promessa: custodire il verde. Tu lo stai calpestando.",
	},
	["cls.druid.battle.w07.013"] = {
		"Il muschio batte la pietra. Ci mette un po', ma vince sempre.",
		"L'acqua consuma la roccia senza mai alzare la voce. Posso essere altrettanto paziente.",
		"Le radici spaccano i massi un dito dopo l'altro. Di dita ne ho in abbondanza.",
	},
	["cls.druid.battle.w07.014"] = {
		"Il Sogno, laggiù sotto ogni cosa, tiene il mondo come dovrebbe essere. Scommetto che lì non c'è niente di simile a te.",
		"Il Sogno conserva la forma più vera di ogni essere vivente, insegnano i vecchi druidi. Dubito che riconosceresti la tua.",
	},
	["cls.druid.battle.w07.015"] = {
		"Ogni creatura riconosce il momento in cui è messa all'angolo. Guardati intorno: è questo.",
		"Le creature selvatiche sanno quando non hanno più dove scappare. L'hai già capito?",
		"Guardati intorno. Non c'è più un posto dove scappare in cui io non possa seguirti.",
	},
	["cls.druid.battle.w07.016"] = {
		"Un incendio nel bosco sgombra il legno vecchio perché cresca il nuovo. Pensami come un incendio piccolo ed educato.",
		"L'incendio è crudele, ma poi il prato torna più verde. Cercherò di essere crudele come piace al prato.",
	},
	["cls.druid.battle.w07.017"] = {
		"L'airone resta immobile un'ora e colpisce una volta sola. E io aspetto già da un po'.",
		"Il gufo non insegue. Aspetta, e poi non sbaglia.",
		"La serpe aspetta sotto il sasso per ore. Poi è velocissima.",
	},
	["cls.druid.battle.w07.018"] = {
		"Avanti, attirate la sua attenzione. Io faccio in modo che respiriate tutti.",
		"Colpite duro. Qualunque cosa vi renda indietro, la posso ricucire.",
		"Dateci dentro. Se qualcuno comincia a sanguinare, gridi, e il verde risponderà.",
	},
	["cls.druid.battle.w07.019"] = {
		"Ditemi di cosa ha bisogno questo scontro, cure o muscoli. Posso essere l'una o l'altra cosa.",
		"Cure o botte, decidete voi. Prendo la forma che serve allo scontro.",
	},
	["cls.druid.battle.w07.020"] = {
		"Qualunque forma io abbia addosso, dentro c'è la stessa volontà. Non perderla.",
		"Pelliccia o pelle, chi tiene le redini non cambia. Ricordati chi le tiene.",
	},
	["cls.druid.battle.w07.021"] = {
		"Piano. Fai solo quello che fa la tua specie. Anch'io.",
		"So cosa ti fa infuriare così. Anche questo terreno è tuo. Mi dispiace, ma non posso tirarmi indietro.",
		"Non c'è malvagità in te, solo fame. Vorrei che questo cambiasse qualcosa.",
	},
	["cls.druid.battle.w07.022"] = {
		"Dovevi tornare alla terra. Qualcosa te l'ha impedito. Finirò io il lavoro.",
		"Un ciclo spezzato a metà. Lascia che lo chiuda io.",
		"Ciò che è morto appartiene alla terra, a nutrire ciò che viene dopo. Tu hai sbagliato strada.",
	},
	["cls.druid.battle.w07.023"] = {
		"Dove passa la tua razza non cresce più niente. Farò in modo che tu non faccia un altro passo.",
		"Avveleni il terreno solo a starci sopra. Facciamo in fretta.",
	},
	["cls.druid.battle.w07.024"] = {
		"Fuoco, pietra o vento, poco importa: un pezzo di mondo che se ne va in giro da solo. È ora di fermarsi.",
		"Sei un pezzo del mondo fuori posto. Lascia che ti rimetta dove stavi.",
	},
	["cls.druid.battle.w07.025"] = {
		"Ingranaggi e fumo. Dai qualche anno al bosco e ti avrà arrugginito fino all'ultimo bullone. Gli risparmio l'attesa.",
		"Non respiri, non cresci e perdi olio sul muschio. Abbiamo finito di parlare.",
		"Ferro e vapore. Il muschio verrà a prenderti comunque; io arrivo solo prima.",
	},
	["cls.druid.battle.w07.026"] = {
		"Ha più forza di me. Come ogni quercia, eppure l'edera le abbatte lo stesso.",
		"Troppa forza per uno scontro frontale. Allora sarò il rampicante: lento, e dappertutto.",
	},
	["cls.druid.battle.w07.027"] = {
		"Hai avuto il tempo di diventare forte. La natura lo rispetta. E ti abbatterà lo stesso.",
		"Tanta mole e tanto orgoglio. Gli alberi più alti sono quelli che cadono col tonfo più forte.",
		"Una forza antica resta solo forza. La pazienza è più antica ancora.",
	},
	["cls.druid.battle.w07.028"] = {
		"inspira piano, come se assaporasse il nemico nell'aria, e lo restituisce in un suono basso.",
		"aspira l'odore del nemico una volta, a fondo, e qualcosa di selvatico si posa dietro i suoi occhi.",
	},
	["cls.druid.battle.w07.029"] = {
		"sposta l'appoggio una volta sola e poi non si muove più, con la pazienza e la tenacia di una radice nella roccia.",
		"affronta il nemico senza una parola e senza fretta, come la marea che sale.",
	},
	["cls.druid.battle.w07.030"] = {
		"Ogni scontro costa qualcosa alla natura, chiunque vinca. Teniamo basso il conto.",
		"Chiunque cada qui, la terra ci perde un poco. Facciamo in fretta, e non peggioriamo le cose.",
	},
	["cls.druid.battle.w07.031"] = {
		"Non tiriamola per le lunghe. La natura odia gli sprechi, e anch'io.",
		"Una cosa rapida e pulita. Da uno scontro lungo non ci guadagna nessuno.",
		"Dentro e fuori, nessuno spreco. La natura fa così.",
	},
	["cls.druid.battle.w07.032"] = {
		"Ho scelto questa strada per prendermi cura dei viventi. Certi giorni prendersene cura vuol dire questo.",
		"I druidi curano. E i druidi difendono. Vorrei più giornate del primo tipo.",
	},
	["cls.druid.battle.w07.033"] = {
		"Radice e ramo, bestia e fiore: di tutto ciò che vive qui, rispondo io.",
		"Foglia, pelle e pietra stanno con me. Vieni a metterle alla prova tutte quante.",
	},
	["cls.druid.battle.w07.034"] = {
		"Dosa le forze. Uno scontro è una stagione, non una raffica sola.",
		"Non bruciare tutto al primo respiro. La natura non lo fa mai.",
		"Tieni qualcosa da parte. La forza spesa subito è forza che poi mi mancherà.",
	},
	["cls.druid.battle.w07.035"] = {
		"Hai preso da questa terra senza chiedere. Oggi è la terra a chiederti il conto.",
		"Tutto ciò che hai preso alla natura, lei lo rivuole indietro. Sono qui a riscuotere.",
	},
	["cls.druid.battle.w07.036"] = {
		"Ti offrirei la pace, ma hai già quella faccia lì.",
		"Ho pensato di ragionare con te. Ci ho pensato, almeno. Per un attimo.",
		"Potremmo andarcene ognuno per la sua strada. No? Allora diamoci da fare.",
	},
	["cls.druid.battle.w07.037"] = {
		"rivolge al terreno un rapido sguardo, quasi una scusa, poi si volta verso lo scontro.",
		"per un battito di cuore sembra ascoltare il terreno, prima che lo scontro cominci.",
	},
	["cls.druid.battle.w07.038"] = {
		"Ho camminato nella quiete di Moonglade. Il tuo baccano non mi spaventa.",
		"Dopo la calma di Moonglade, tutto questo trambusto sembra davvero poca cosa.",
	},
	["cls.druid.battle.w07.039"] = {
		"Gli anziani facevano sembrare tutto questo elegante. Io mi accontento che funzioni.",
		"L'eleganza la lascio ai vecchi druidi. A me bastano disordine e pelle salva.",
		"Mi piacerebbe avere la grazia serena dei vecchi druidi. Non oggi, a quanto pare.",
	},
	["cls.druid.battle.w07.040"] = {
		"Hai ancora tanto da crescere. Voltati e vivi qualche stagione in più.",
		"Ancora un germoglio. Hai tempo per scappare e invecchiare un po'.",
	},
	["cls.druid.battle.w07.041"] = {
		"Per qualunque stendardo tu combatta, la terra ci accoglie tutti allo stesso modo. Vediamo di non anticipare il mio turno.",
		"La tua parte, la mia parte. Le radici sotto di noi non tengono il conto di nessuna delle due.",
	},
	["cls.druid.battle.w07.042"] = {
		"Fame, paura, territorio. Ogni scontro in natura si riduce a uno di questi. Questo quale sarà?",
		"Che cosa vuole? Cibo, terreno, o soltanto vivere. Sapere quale delle tre mi dice come combatterà.",
	},
	["cls.druid.battle.w07.043"] = {
		"Come vuoi. La natura ti ha dato ogni possibilità di andartene.",
		"Hai avuto tutti gli avvertimenti che dà la natura: il silenzio, l'odore, me. Ormai è tardi.",
	},
	["cls.druid.battle.w07.044"] = {
		"emette un suono basso, dal fondo del petto, più avvertimento che grido di guerra.",
		"scopre i denti, per un attimo e senza alcuna allegria.",
	},
	["cls.druid.battle.w07.045"] = {
		"La paura è solo la natura che mi dice di fare attenzione. La sto facendo.",
		"Un po' di paura. Bene. Ogni creatura che vive a lungo ne ha.",
	},
	["cls.druid.buff.w07.001"] = {
		"Il Marchio sulla mia pelle. Un po' più spessa, un po' più salda, un po' di più in tutto.",
		"Il Marchio si posa come uno strato di corteccia in più, invisibile e testardo.",
	},
	["cls.druid.buff.w07.002"] = {
		"Spine sulla mia pelle. Chi vuole un morso di me, lo paghi.",
		"{g:Spinoso|Spinosa} per scelta. Che imparino la lezione dei rovi.",
		"Ecco. Adesso sono la siepe che nessuno dovrebbe provare ad attraversare.",
	},
	["cls.druid.buff.w07.003"] = {
		"si sfiora il petto con due dita, e per un battito la pelle assume il tenue lucore della corteccia giovane.",
		"mormora una breve frase e si passa una mano lungo il braccio; un luccichio verde segue il palmo e svanisce.",
		"pronuncia una parola rivolta a nessuno in particolare, e qualcosa di verde e quieto si posa sulle sue spalle come un mantello.",
	},
	["cls.druid.buff.w07.004"] = {
		"Prima della strada, il mantello della natura. Non vado da nessuna parte senza, come un orso non va in giro senza pelliccia.",
		"Un druido si veste due volte: una di cuoio, una di verde.",
		"Stivali allacciati, il dono della natura posato. Adesso la strada può fare del suo peggio.",
	},
	["cls.druid.buff.w07.005"] = {
		"Benedizione fatta in casa. Niente di elegante, ma alla natura l'eleganza non interessa.",
		"La natura non bada a chi sbriga le formalità: mi segno da {g:solo|sola}.",
	},
	["cls.druid.buff.w07.006"] = {
		"Una rosa non chiede scusa per le sue spine. Nemmeno io.",
		"Le spine sono solo una pianta che dice di no in una lingua che capiscono tutti.",
		"Il cardo non è mai stato mangiato di sorpresa. Seguo il suo consiglio.",
	},
	["cls.druid.buff.w07.007"] = {
		"Qualcosa di saldo si posa sotto la pelle, come radici che trovano l'acqua.",
		"Lo sento attecchire: una fermezza lenta e verde, la pazienza degli alberi antichi prestata per un po'.",
		"Penetra e tiene, quieto come un seme che decide di restare.",
	},
	["cls.druid.buff.w07.008"] = {
		"Natura, avvolgimi.",
		"Corteccia e rovo, custoditemi.",
		"Verde, fammi da cerchio.",
	},
	["cls.druid.buff.w07.009"] = {
		"Di nuovo posato il segno. L'ho fatto così tante volte che le mani si muovono prima del pensiero.",
		"Svanito di nuovo. Questi doni non durano mai quanto vorrei, ma costano poco e sono miei.",
	},
	["cls.druid.buff.w07.010"] = {
		"Spine alzate nel bel mezzo dello scontro. Adesso ogni colpo che mi danno costa loro qualcosa.",
		"Che continui pure a colpirmi. Ogni colpo gli torna indietro con qualche spina attaccata.",
		"Avanti, colpisci. Il conto lo tengono i rovi.",
	},
	["cls.druid.buff.w07.011"] = {
		"traccia un rapido segno sul proprio cuore, e per un attimo sulla pelle brilla la sagoma di un'impronta di zampa, poi svanisce.",
		"posa il palmo sulla propria fronte, e un luccichio simile alla luce tra le foglie {g:gli|le} scorre addosso.",
	},
	["cls.druid.buff.w07.012"] = {
		"Nei racconti antichi il Marchio fu il primo dono di Cenarius a chi custodiva i suoi boschi. Lo porto come una promessa che non ho ancora finito di mantenere.",
		"Un dono del Signore della Foresta ai suoi custodi, così narra la storia. Cerco di meritarmelo nei giorni in cui lo rinnovo.",
	},
	["cls.druid.buff.w07.013"] = {
		"Ecco il Marchio. Un po' più di tutto: forza, fiato, pelle dura.",
		"Il Marchio della Natura. Non sentirai granché, ma durerai di più.",
		"Fatto, il Marchio. Ti scrollerai di dosso un paio di cose che altrimenti avresti sentito.",
	},
	["cls.druid.buff.w07.014"] = {
		"Ti ho messo le spine. Chiunque ti colpisca si pentirà della scelta.",
		"Adesso sei un roveto. Che provino ad afferrarti.",
		"Pungente, ma dalla nostra parte. Vai pure.",
	},
	["cls.druid.buff.w07.015"] = {
		"Un po' di natura adesso viaggia con quella persona. Mi piace saperlo, ovunque vada.",
		"Segno posato, e via. Un pezzo di verde cammina al suo fianco anche dove io non posso.",
	},
	["cls.druid.buff.w07.016"] = {
		"allunga una mano e sfiora la spalla di {target}, lasciando un tenue luccichio verde che affonda nella pelle.",
		"solleva una mano verso {target} e pronuncia una sola parola sommessa; un luccichio come luce tra le foglie si posa e svanisce.",
	},
	["cls.druid.buff.w07.017"] = {
		"Non grattarti. Non è quel genere di segno.",
		"Non si vedrà, promesso. La natura è discreta.",
		"No, non ti spunteranno le foglie. Probabilmente.",
	},
	["cls.druid.buff.w07.018"] = {
		"Per la strada che ti aspetta. La natura veglia sui suoi.",
		"Portalo con te. Le strade sono lunghe e il verde è buona compagnia.",
		"Qualcosa per il viaggio. Non pesa niente e dura a lungo.",
	},
	["cls.druid.buff.w07.019"] = {
		"Spine sulla pelle di qualcun altro. Chi la morde si ricorderà di me, o almeno dei miei rovi.",
		"Regalo le spine più volentieri di quanto le porti. Vederle lavorare su qualcun altro è un piacere silenzioso.",
	},
	["cls.druid.buff.w07.020"] = {
		"Porta la natura con te.",
		"Adesso la natura cammina con te.",
		"Va' con il verde al tuo fianco.",
	},
	["cls.druid.farewell.w07.001"] = {
		"Buon cammino. Sta' all'ombra quando puoi, e lascia stare gli alberi giovani.",
		"Addio. Che la strada che prendi sia una che la terra porta volentieri.",
		"Strade sicure. E se un bosco ti sembra vigile, sii cortese: probabilmente lo è.",
	},
	["cls.druid.greet.w07.001"] = {
		"Salute. Che il terreno ti sia gentile sotto i piedi.",
		"Salve. Cammina con passo leggero, e da me troverai sempre accoglienza.",
	},
	["cls.druid.greet.w07.002"] = {
		"Ciao. Perdona le foglie nei capelli: ho avuto una conversazione con una siepe.",
		"Salve. Sì, quello sui miei stivali è muschio. No, non mi scuserò.",
	},
	["cls.druid.heal.w07.001"] = {
		"Rimettere in sesto le mie ferite è un lavoro curioso: sono io le mani e sono io la ferita, e la ferita ha di gran lunga il carattere peggiore.",
		"Curarmi è il genere di guarigione più strano. Sono io a dare, e sono sempre io a lamentarmi.",
		"Metà di me ricuce, l'altra metà fa smorfie. Sul ritmo non si sono mai trovate d'accordo.",
	},
	["cls.druid.heal.w07.002"] = {
		"Nessun altro l'avrebbe fatto. Chiuditi, tu.",
		"Nessun guaritore a portata di mano, a parte me. Che fortuna, allora.",
		"Fai da te, come al solito. Chiuditi.",
	},
	["cls.druid.heal.w07.003"] = {
		"preme il palmo contro le proprie costole, e il livido sotto sfuma dal viola al verde al nulla, come una stagione che passa in un respiro.",
		"posa una mano sulla propria ferita e aspetta; i lembi lacerati si riavvicinano piano, come radici che si chiudono attorno a un sasso.",
	},
	["cls.druid.heal.w07.004"] = {
		"Che sbadataggine. Ci sono {g:finito|finita} dentro a occhi chiusi. Il corpo perdona prima di me.",
		"Colpa mia, quel taglio. La carne lo dimenticherà presto; io lo ricorderò più a lungo, ed è proprio questo il punto.",
	},
	["cls.druid.heal.w07.005"] = {
		"I vecchi druidi dicono che il corpo è solo terra presa in prestito. Guarirlo vuol dire chiedere a chi l'ha prestata ancora un po' di tempo.",
		"La carne è terra in prestito, insegnano gli anziani del Circolo. Io chiedo solo di rinnovare il prestito ancora un poco.",
		"Terra prestata, terra dovuta, come dicevano i vecchi druidi. Oggi chiedo una proroga, con garbo.",
	},
	["cls.druid.heal.w07.006"] = {
		"Una toppa da vecchia quercia. Reggerà.",
		"Corteccia sopra il taglio. Per ora basta così.",
		"La linfa sigilla il tronco, e io sigillo il taglio. Avanti.",
	},
	["cls.druid.heal.w07.007"] = {
		"Ogni colpo mi fa perdere il filo dell'incantesimo. Pazienza. È più lento di qualunque cosa mi stia colpendo, ma arriva.",
		"Difficile finire un incantesimo lungo con qualcosa che mi martella addosso. Riprendo le parole, e poi ancora, come un seme che spinge nella terra calpestata.",
	},
	["cls.druid.heal.w07.008"] = {
		"Il Ringiovanimento sulla mia pelle è come la linfa che risale a primavera, da dentro. Continuo a camminare e lo lascio lavorare.",
		"Lo avvio e me ne dimentico. Quando mi viene in mente di controllare, il taglio è già mezzo chiuso.",
	},
	["cls.druid.heal.w07.009"] = {
		"La Ricrescita lavora due volte: una ricucitura svelta adesso, poi una più lenta, sotto. La prima per lo scontro, la seconda per il dopo.",
		"La cura rapida e quella lenta in un solo incantesimo. Anche la natura si tiene una carta di riserva.",
	},
	["cls.druid.heal.w07.010"] = {
		"mormora sulla propria ferita una lunga fila di parole morbide e senza fretta, e una luce verde si raccoglie nel palmo a coppa prima di affondare.",
		"trae un respiro lento e lascia che le parole della guarigione vengano col loro passo, mentre un tenue bagliore verde si posa sulla ferita.",
	},
	["cls.druid.heal.w07.011"] = {
		"Il mana è poco, la fiaschetta è piena. Scelta facile.",
		"Potrei spendere il mana per questo, oppure lasciar fare alla boccetta. Alla boccetta non dispiace.",
		"Un sorso, e il mana resta lì per quando servirà davvero.",
	},
	["cls.druid.heal.w07.012"] = {
		"Amara, densa, sa di radice e di ferro. Chi l'ha fatta conosceva le erbe. Il calore va dritto alla ferita.",
		"Chi l'ha distillata ha colto le foglie giovani: lo sento in bocca. Il dolore già si allenta.",
	},
	["cls.druid.heal.w07.013"] = {
		"stappa una fiaschetta coi denti, l'annusa con la smorfia di chi conosce le erbe, e la beve lo stesso.",
		"manda giù una pozione rossa in un sorso solo e si pulisce la bocca, già in cerca della prossima cosa da fare.",
	},
	["cls.druid.heal.w07.014"] = {
		"Una pietra di stregone, tiepida nella mano. Non chiedo cosa ci sia dentro. Funziona, e la ferita si chiude.",
		"Preferisco non sapere come si fa una pietra della salute. Le sono {g:grato|grata} lo stesso.",
	},
	["cls.druid.heal.w07.015"] = {
		"Una pietra che guarisce. Al bosco non era mai venuto in mente. La prendo.",
		"Non coltivata, non distillata: fabbricata, da qualcuno con abitudini più strane delle mie. Me la tengo.",
	},
	["cls.druid.heal.w07.016"] = {
		"Non c'è tempo per parole e luce verde. Stappa, bevi, continua a combattere.",
		"Con questa cosa addosso l'incantesimo ci metterebbe troppo. La fiaschetta è più svelta.",
		"Il mana per dopo, la pozione per adesso. Bevi e torna sotto.",
	},
	["cls.druid.heal.w07.017"] = {
		"Il mana che verso sulla mia pelle adesso è mana che non avrò per il prossimo scontro. Ne vale la pena. Probabilmente.",
		"Misuro quel che mi resta contro quel che ancora mi aspetta. Oggi la ferita vince la discussione.",
		"Il mana di un druido è un pozzo solo, e io ci attingo per i miei graffi. Con parsimonia, allora.",
	},
	["cls.druid.heal.w07.018"] = {
		"Lascio andare l'orso per curarmi. Se ne va sempre controvoglia, e il dolore che nascondeva arriva tutto in una volta.",
		"Fuori dalla pelliccia, dentro le mani. Il dolore che l'orso scrollava di dosso adesso è mio, e anche la guarigione.",
	},
	["cls.druid.heal.w07.019"] = {
		"Verde, torna da me.",
		"Radice e foglia, chiudete questa ferita.",
		"Ricopriti, ferita. Come il muschio su un tronco caduto.",
	},
	["cls.druid.heal.w07.020"] = {
		"Uccido e curo con le stesse mani, a volte nella stessa ora. Il Circolo la chiama equilibrio. Certi giorni mi sembra solo lavoro.",
		"Dente ed erba, ferita e cura. Un druido le tiene nella stessa tasca, e impara a non confonderle.",
	},
	["cls.druid.heal.w07.021"] = {
		"piega piano il braccio guarito, mettendolo alla prova come si saggia un ramo prima di caricarlo di peso.",
		"ruota la spalla due volte e l'ascolta come un boscaiolo ascolta un ramo che scricchiola.",
	},
	["cls.druid.heal.w07.022"] = {
		"Se il Sogno custodisce davvero la prima forma di ogni essere vivente, come insegna il Circolo, allora da qualche parte c'è una versione di me senza questo taglio. Prendo in prestito solo il suo contorno.",
		"Il Circolo insegna che il Sogno ricorda ogni creatura intera. Quando mi curo, mi piace pensare di copiare da quel ricordo.",
	},
	["cls.druid.heal.w07.023"] = {
		"Le spine mi hanno fatto di peggio. Non molte, ma qualcuna.",
		"Da un roveto ho preso di peggio. Be'. Quasi.",
		"Un rovo si vergognerebbe di un graffio così superficiale. O quasi.",
	},
	["cls.druid.heal.w07.024"] = {
		"Tranquillità, lanciata solo per me. È come apparecchiare un banchetto per una persona sola, ma la ferita non si lamenta.",
		"Tutto quel verde quieto riversato su di me e sulla mia povera ferita. Uno spreco, forse. Funziona.",
	},
	["cls.druid.heal.w07.025"] = {
		"La Tranquillità mi chiede di non muovermi e di continuare le parole, qualunque cosa arrivi. La parte più difficile è non sussultare.",
		"Un respiro dopo l'altro con i piedi radicati, mentre il verde mi esce dalle mani. Neanche un albero scappa.",
	},
	["cls.druid.heal.w07.026"] = {
		"resta {g:radicato|radicata} a cantilenare, e una morbida quiete verde si allarga su tutti quelli che ha vicino.",
		"pianta i piedi e solleva le mani, e per qualche respiro l'aria attorno a tutto il gruppo sembra mettere foglie.",
	},
	["cls.druid.heal.w07.027"] = {
		"Lo scontro è finito. Adesso la parte lenta: sedersi, respirare, lasciare che il verde faccia il suo lavoro paziente.",
		"Niente mi insegue, adesso. Posso usare l'incantesimo lungo, quello accurato, e fare le cose per bene.",
	},
	["cls.druid.heal.w07.028"] = {
		"Un lupo si lecca le ferite e va avanti. Io ho strumenti migliori, eppure invidio quanto poco ci faccia caso.",
		"Gli animali feriti si nascondono, guariscono, e non ne parlano. Sto cercando di imparare la parte del non parlarne.",
		"Nessuna bestia selvatica ha mai fatto un discorso su un taglio. Me lo tengo a mente, e taccio.",
	},
	["cls.druid.heal.w07.029"] = {
		"Anche chi coltiva un giardino si punge. Il segreto è prendersi cura di sé prima di appassire.",
		"Prima o poi ogni giardiniere si graffia. Prima si curano le mani, poi la siepe.",
	},
	["cls.druid.heal.w07.030"] = {
		"Chi sa curare e muore dissanguato è solo un cadavere ben informato. Non oggi.",
		"Morire con una cura ancora in tasca sarebbe imbarazzante. La spendo adesso.",
	},
	["cls.druid.heal.w07.031"] = {
		"La prima guarigione che ogni druido impara è anche la più lenta. Mi sono {g:affezionato|affezionata} a quella lentezza: mi costringe a restare immobile e a fare attenzione.",
		"L'incantesimo più vecchio che conosco, e ancora quello di cui mi fido di più. Parole lunghe, una cura grande, nessuna scorciatoia.",
	},
	["cls.druid.heal.w07.032"] = {
		"Piccole misericordie, una dopo l'altra. Il Ringiovanimento non ha mai fretta, e nemmeno una foresta.",
		"Non una grande cura sola ma una manciata di piccole, ognuna puntuale. Mi piacciono gli incantesimi educati.",
	},
	["cls.druid.heal.w07.033"] = {
		"arretra giusto il tempo di mormorare qualche parola sulla propria ferita, poi torna avanti.",
		"si interrompe per un battito di cuore, una mano premuta sul fianco e una luce verde che filtra tra le dita, prima di tornare allo scontro.",
	},
	["cls.druid.heal.w07.034"] = {
		"Troppo vicino. Le radici stavano già allungandosi verso di me.",
		"Più vicino di quanto mi piaccia. Sentivo la terra prepararsi.",
	},
	["cls.druid.heal.w07.035"] = {
		"La prima cosa che un vecchio druido mi disse sulla guarigione: le mani che curano gli altri non servono a nulla se tremano. Prima cura le tue.",
		"Prima si cura chi cura, dicono i vecchi druidi, altrimenti presto non resta nessuno a curare nessuno.",
	},
	["cls.druid.heal.w07.036"] = {
		"La pelle si richiude come l'erba su un sentiero calpestato: non tutta insieme, ma senza mai dubitare che succederà.",
		"L'erba dimentica un'impronta in pochi giorni. La mia pelle fa prima, con un piccolo aiuto.",
		"Un prato calpestato si rialza filo dopo filo. Anche questa, solo più in fretta.",
	},
	["cls.druid.heal.w07.037"] = {
		"Mana ben speso, soprattutto per rimediare alla mia goffaggine.",
		"Ed ecco quanto mi costa l'orgoglio, in cure.",
		"Ecco andata una cura che speravo di tenere per qualcun altro.",
	},
	["cls.druid.heal.w07.038"] = {
		"Chiusa. Qualcosa di selvatico in me tira già il guinzaglio, impaziente di tornare dentro.",
		"La ferita è chiusa, e la parte inquieta di me vuole tornare nella mischia prima ancora che abbia finito di pensarlo.",
	},
	["cls.druid.heal.w07.039"] = {
		"Fu Cenarius il primo a insegnare la guarigione ai druidi, o almeno così racconta il Circolo. Chissà se a lui è mai toccato farlo così di fretta.",
		"Il Circolo dice che i primi druidi lo impararono da Cenarius in persona. Spero che fosse più paziente con i suoi allievi di quanto io lo sia con le mie ferite.",
	},
	["cls.druid.heal.w07.040"] = {
		"si toglie il sangue con la manica e osserva la pelle nuova e rosata sotto, {g:soddisfatto|soddisfatta}.",
		"strofina via il sangue secco col palmo della mano e annuisce alla pelle pulita che c'è sotto.",
	},
	["cls.druid.heal.w07.041"] = {
		"Una quercia ci mette anni a coprire di corteccia la cicatrice di un fulmine. A me bastano pochi respiri. Cerco di non darlo per scontato.",
		"Gli alberi guariscono così piano che la gente crede che non lo facciano. Io posso farlo in pochi istanti, e mi sembra ancora un dono in prestito.",
	},
	["cls.druid.heal.w07.042"] = {
		"Ricuciti, come un nido intrecciato rametto dopo rametto.",
		"Di nuovo insieme, come un nido dopo il vento.",
	},
	["cls.druid.heal.w07.043"] = {
		"Non sono io a fare la guarigione. Tengo solo la porta aperta e la lascio passare, cercando di non mettermi in mezzo.",
		"Il lavoro lo fa il verde. La mia parte è chiedere con garbo e tenere ferme le mani.",
		"Ciò che mi guarisce non è mio. Conosco soltanto il modo di chiederlo.",
	},
	["cls.druid.heal.w07.044"] = {
		"Il dolore è il corpo che parla chiaro. L'ho ascoltato. Adesso può smettere di gridare.",
		"La ferita aveva fatto il suo discorso. Ho imparato la lezione e ho mandato via il dolore.",
		"Messaggio ricevuto, ferita. Adesso puoi andare.",
	},
	["cls.druid.heal.w07.045"] = {
		"si cura con poche parole sommesse, e per un istante l'aria attorno sa di terra smossa e di foglie nuove.",
		"chiude la ferita con un mormorio, lasciandosi dietro un breve odore di erba schiacciata e corteccia umida.",
	},
	["cls.druid.heal.w07.046"] = {
		"La Ricrescita costa più di quanto sembri valere, finché la parte lenta continua a ricucire quando ormai non ci penso più.",
		"Costosa, la Ricrescita. Ma continua a rendere quando ho già dimenticato di averla lanciata.",
	},
	["cls.druid.heal.w07.047"] = {
		"Un gatto si nasconderebbe sotto un cespuglio a leccarsela per un giorno intero. Io ho un incantesimo e nessun cespuglio. Scambio onesto.",
		"Qualunque bestia dei campi zoppicherebbe via sperando nel meglio. Io posso aggiustarla. Il piccolo vantaggio di avere le mani.",
	},
	["cls.druid.heal.w07.048"] = {
		"Pensare prima alla mia ferita non è egoismo. Se cado io, qui non viene curato più nessuno.",
		"Agli altri servo in piedi più che {g:coraggioso|coraggiosa}. Quindi prima io, per questa volta.",
	},
	["cls.druid.heal.w07.049"] = {
		"Pelle nuova. Be', nuova come la primavera scorsa.",
		"Di nuovo verde. Più o meno.",
		"Pelle fresca come una foglia appena spuntata, e robusta più o meno uguale. Basterà.",
	},
	["cls.druid.heal.w07.050"] = {
		"I vecchi druidi dicono che Malfurion insegnava a sentire fino in fondo una ferita prima di chiuderla. Questa l'ho sentita. Basta così.",
		"Senti la ferita prima di chiuderla, dice l'antico insegnamento, così non va sprecata. L'ho sentita. Abbondantemente.",
	},
	["cls.druid.heal.w07.051"] = {
		"esamina il taglio appena richiuso, aggrotta la fronte davanti alla sottile cicatrice rimasta e decide di considerarla carattere.",
		"osserva la nuova cicatrice sottile e scrolla le spalle, archiviandola a quanto pare tra le lezioni imparate.",
	},
	["cls.druid.heal.w07.052"] = {
		"La vita vuole andare avanti. Lo ha sempre voluto. Tutto ciò che un druido fa davvero è sgombrarle la strada.",
		"Sotto ogni cosa, ciò che vive vuole vivere. Io mi limito a smettere di contraddirlo.",
		"A nessun essere vivente si deve insegnare a guarire. Basta permetterglielo. Questo è tutto il segreto, e non è un segreto.",
	},
	["cls.druid.heal.w07.053"] = {
		"La parte di me che corre su quattro zampe dice di ignorarla e andare avanti. La parte che ha le mani ne sa di più.",
		"L'istinto dice di stringere i denti e andare avanti. Il buon senso dice di fermarsi e curarsi. Vince il buon senso, per un soffio.",
	},
	["cls.druid.heal.w07.054"] = {
		"Primavera, qui. Solo un poco di te.",
		"Vieni, verde. Solo quanto mi serve.",
	},
	["cls.druid.heal.w07.055"] = {
		"Presto, prima che qualcos'altro mi trovi in questo stato.",
		"Guarire in fretta. Le creature ferite attirano l'attenzione, e preferirei non essere il cervo più lento del prato.",
	},
	["cls.druid.heal.w07.056"] = {
		"Respira con me. Piano. Il verde segue il respiro.",
		"Dentro, e fuori. Lascia che si posi dove serve.",
		"Respiri tranquilli. La cura viaggia su di loro.",
	},
	["cls.druid.heal.w07.057"] = {
		"Ecco fatto, {target}. Una toppa verde, e regge.",
		"{target}, questo dovrebbe reggere. Non metterlo troppo alla prova.",
		"Fatto, {target}. Cerca di non disfarlo per almeno un'ora.",
	},
	["cls.druid.heal.w07.058"] = {
		"Sanguini come una betulla abbattuta. Smettila.",
		"Tutto quel rosso per una persona sola. Il resto teniamolo dentro.",
		"La linfa sta negli alberi e il sangue sta dentro di te. Non muoverti.",
	},
	["cls.druid.heal.w07.059"] = {
		"Guardare una ferita altrui che si chiude è meglio che guardare la mia. Posso vedere la sorpresa sul suo viso.",
		"Non mi stanco mai dell'istante in cui il dolore lascia gli occhi di qualcuno. È la cosa più simile alla primavera che possa portare tra le mani.",
	},
	["cls.druid.heal.w07.060"] = {
		"tende una mano verso {target}, e un tenue bagliore verde attraversa la distanza come polline nella brezza.",
		"si volta verso {target} e pronuncia poche parole sommesse, e la ferita comincia a chiudersi come una foglia che si arriccia.",
		"manda verso {target} un filo di luce verde, costante e senza fretta, come un ruscello che trova il suo letto.",
	},
	["cls.druid.heal.w07.061"] = {
		"Hai addosso il Ringiovanimento. Piccole cure, una dopo l'altra, ancora per un po'.",
		"È una cura lenta, {target}. La sentirai arrivare a ondate.",
	},
	["cls.druid.heal.w07.062"] = {
		"Ricrescita. La parte svelta è fatta; il resto ricresce da sé.",
		"Un po' adesso, il resto dopo. La Ricrescita funziona così, {target}.",
	},
	["cls.druid.heal.w07.063"] = {
		"Continua così. Ti copro le spalle, e anche le ferite.",
		"Non voltarti, combatti. Ti curo alla stessa velocità con cui sanguini.",
		"Occhi avanti. Della parte che fa male mi occupo io.",
	},
	["cls.druid.heal.w07.064"] = {
		"Guarda loro, non il nemico. Il nemico è un problema di qualcun altro finché qualcuno non cade.",
		"I miei occhi restano sugli altri. La parte selvatica di me può tenere il broncio perché si perde lo scontro.",
	},
	["cls.druid.heal.w07.065"] = {
		"Piano, adesso. Il dolore fa rumore, ma non ha l'ultima parola.",
		"Shh. Lascia che si faccia silenzio. Guarire non è altro.",
		"Lascia che il dolore si sfoghi. Poi se ne va.",
	},
	["cls.druid.heal.w07.066"] = {
		"Dalla radice al ramo, risana questa ferita.",
		"Terra sotto, foglia sopra, chiudi questa ferita.",
		"Dalle radici profonde in su: guarisci.",
	},
	["cls.druid.heal.w07.067"] = {
		"La prossima volta prova ad abbassarti. Gli alberi non possono, e guarda cosa gli succede.",
		"La prossima volta abbassati. Anche gli alberelli si piegano quando arriva il vento.",
		"Il salice si piega e si tiene i rami. Pensaci, la prossima volta.",
	},
	["cls.druid.heal.w07.068"] = {
		"Non so come si chiami, e il verde non lo chiede. Non lo fa mai.",
		"Conosciuto o no, la cura è la stessa. La natura non ha mai imparato a fare preferenze.",
	},
	["cls.druid.heal.w07.069"] = {
		"tiene un occhio sullo scontro e uno su {target}, e la cura arriva appena prima del colpo successivo.",
		"si distoglie dal nemico giusto il tempo di mandare una cura rapida verso {target}, poi torna a guardarlo.",
	},
	["cls.druid.heal.w07.070"] = {
		"Smettila di dimenarti. Non sei un pesce e io non ho finito.",
		"Ti dispiace non muoverti? Curare un bersaglio che si sposta costa il doppio della fatica.",
		"Agitati pure quanto vuoi, ma l'incantesimo arriva dove arriva.",
	},
	["cls.druid.heal.w07.071"] = {
		"Siediti un momento. La carne a riposo accoglie meglio la cura.",
		"Prendi fiato prima di ripartire. Voglio che questa si saldi per bene.",
		"Adesso non c'è fretta. Se si chiude piano, si chiude per sempre.",
	},
	["cls.druid.heal.w07.072"] = {
		"Il mana versato nella ferita di un altro non mi sembra mai sprecato, anche quando è l'ultimo che ho.",
		"Potrei tenerlo per me. Non lo farò. È tutto qui il patto di chi cura.",
	},
	["cls.druid.heal.w07.073"] = {
		"Cenarius insegnò ai primi druidi a ricucire ciò che la natura strappa, dicono al Circolo. Oggi tocca a te.",
		"È il dono più antico del Circolo, dicono. Fortuna tua: ti arriva gratis.",
	},
	["cls.druid.heal.w07.074"] = {
		"osserva {target} con attenzione mentre la luce verde penetra, come si guarda una piantina appena trapiantata.",
		"studia {target} con gli occhi socchiusi di chi cura, finché il dolore non si è chiaramente attenuato.",
	},
	["cls.druid.heal.w07.075"] = {
		"Meglio? Bene. Il bosco ti manda i suoi saluti.",
		"Ecco. Omaggio di tutte le querce sotto cui mi sono {g:seduto|seduta}.",
		"Tutto a posto. Ringrazia un albero, quando ne incroci uno.",
	},
	["cls.druid.heal.w07.076"] = {
		"Resisti. La cura grande ha bisogno di qualche respiro per raccogliersi.",
		"Dammi un momento. L'incantesimo lento è quello forte.",
	},
	["cls.druid.heal.w07.077"] = {
		"Chiuderò questa ferita, e via di nuovo dentro il prossimo scontro. È il mio lavoro. Ci ho fatto pace, più o meno.",
		"Curare, guardare chi riparte alla carica, curare di nuovo. Un druido impara la pazienza dagli alberi e da gente così.",
	},
	["cls.druid.heal.w07.078"] = {
		"Piano. Il peggio se ne sta andando.",
		"Lo senti? È il dolore che fa i bagagli.",
		"Eccolo che se ne va. Il dolore sta uscendo dalla porta.",
	},
	["cls.druid.heal.w07.079"] = {
		"solleva le mani verso {target} come per offrire dell'acqua, e la luce verde trabocca.",
		"unisce le mani a coppa e le apre verso {target}, e qualcosa di simile a un'aria tiepida di primavera passa tra loro.",
	},
	["cls.druid.heal.w07.080"] = {
		"Non serve ringraziarmi. Prima o poi pianta qualcosa.",
		"Ringrazia la natura, non me. Meglio ancora, non calpestare i funghi lungo la strada.",
		"Se vuoi sdebitarti, lascia in piedi un alberello da qualche parte.",
	},
	["cls.druid.heal.w07.081"] = {
		"Sì, un attimo fa ero un orso. Per questo servono le mani. Non muoverti.",
		"Via la pelliccia, fuori le mani. Fammi vedere quella ferita.",
	},
	["cls.druid.heal.w07.082"] = {
		"Vai. Hai le spalle coperte, e dietro di me c'è tutto il bosco.",
		"Torna dentro. Adesso ogni radice della terra sta dalla tua parte.",
	},
	["cls.druid.heal.w07.083"] = {
		"mormora le antiche parole della guarigione, senza staccare gli occhi da chi è ferito, la voce costante come acqua che cade.",
		"parla piano e senza sosta finché la ferita di chi ha davanti non si è chiusa.",
	},
	["cls.druid.heal.w07.084"] = {
		"Ti resterà una cicatrice. Portala come la corteccia: la prova che hai resistito a qualcosa.",
		"Lascerà il segno. Gli alberi portano i loro per secoli e nessuno li trova brutti.",
	},
	["cls.druid.heal.w07.085"] = {
		"Un Ringiovanimento posato e lasciato a lavorare. Ora posso guardare altrove per qualche respiro.",
		"Avviarlo su chi ne ha bisogno e voltarsi. Le cure lente sono quelle che lasciano pensare chi cura.",
	},
	["cls.druid.heal.w07.086"] = {
		"Appoggia il tuo peso alla terra per un momento, {target}. Ha portato cose ben più pesanti di te.",
		"Affidati al terreno, {target}. Non ha mai lasciato cadere niente.",
	},
	["cls.druid.heal.w07.087"] = {
		"Fammi vedere. Mh. Ho visto di peggio su un tasso, e il tasso si lamentava meno.",
		"I cinghiali ne prendono di peggiori e non fanno neanche metà del chiasso.",
	},
	["cls.druid.heal.w07.088"] = {
		"si inginocchia accanto a {target} e lavora senza fretta, come si cura un'aiuola di piantine.",
		"si sistema accanto a {target} e si prende il suo tempo, senza fretta, come il muschio.",
	},
	["cls.druid.jest.w07.001"] = {
		"Quanti druidi servono per piantare un albero? Uno, più tre stagioni di pazienza per vedere se ha funzionato.",
		"Perché i druidi non giocano a nascondino? Gli alberi fanno sempre la spia.",
	},
	["cls.druid.levelup.w07.001"] = {
		"Il verde in me scorre un po' più a fondo. Incantesimi che prima mi prendevano tutto il fiato ora me ne chiedono metà.",
		"Le mie radici sono arrivate un po' più in profondità. Lo sento da come mi reggo saldamente in piedi.",
	},
	["cls.druid.levelup.w07.002"] = {
		"prende un respiro profondo, e per un attimo l'aria intorno sembra profumare appena di foglie nuove.",
		"resta immobile, le dita aperte, come se sentisse la linfa salire lungo le braccia.",
	},
	["cls.druid.levelup.w07.003"] = {
		"Più forte. La natura è stata paziente con me: sembra che stia dando frutto.",
		"Adesso, quando chiamo, risponde un po' più di natura. Bene. È stato un lungo apprendistato.",
	},
	["cls.druid.lowhp.w07.001"] = {
		"Il tronco è spaccato. Le radici non se ne sono accorte. E nemmeno io.",
		"Il tronco si è aperto in due, ma le radici tengono. È così che fanno gli alberi vecchi.",
	},
	["cls.druid.lowhp.w07.002"] = {
		"Se ho addosso una forma, lasciala. Se no, comincia a curarti. Subito.",
		"Orso, gatto o pelle nuda: qualunque sia, è ora di curarsi.",
	},
	["cls.druid.lowhp.w07.003"] = {
		"Avevo sempre messo in conto di tornare alla terra, prima o poi. Intendevo molto, molto poi.",
		"I vermi possono aspettare. Sono famosi per la loro pazienza.",
		"Se questo è il mio ultimo scontro, la terra riceverà un regalo molto arrabbiato.",
	},
	["cls.druid.lowhp.w07.004"] = {
		"barcolla, si riprende e torna a piantarsi a terra con un respiro spezzato, come un albero che non cede al vento.",
		"arretra barcollando di mezzo passo, si riprende, e il respiro esce duro e aspro.",
	},
	["cls.druid.lowhp.w07.005"] = {
		"Ecco come si sente il cervo verso la fine. Il resto non ho bisogno di impararlo.",
		"All'angolo e sanguinante. Conosco questa scena dall'altra parte. Questa parte non mi piace.",
		"I lupi scelgono chi inciampa. Smetti di inciampare.",
	},
	["cls.druid.lowhp.w07.006"] = {
		"Un animale ferito è il più pericoloso. Spero per te che lo sapessi.",
		"Mi hai fatto male, eh? Adesso vedrai perché i cacciatori temono le prede ferite.",
		"Con le spalle al muro e sanguinante, ma ancora qui. È la versione di me peggiore da affrontare.",
	},
	["cls.druid.lowhp.w07.007"] = {
		"Il compito di ricucire sarebbe mio. Qualcuno ricucia me.",
		"Io rimetto in sesto tutti voi. E me chi mi rimette in sesto? Qualcuno? In fretta?",
	},
	["cls.druid.lowhp.w07.008"] = {
		"Il dolore è solo il corpo che parla. Lascialo parlare. Io ascolto lo scontro.",
		"Fa male. Ne prendo atto. Adesso torniamo a ciò che conta.",
		"Più tardi sentirò tutto. Non adesso.",
	},
	["cls.druid.lowhp.w07.009"] = {
		"Verde sotto di me, reggimi ancora un poco.",
		"Inspira il verde, espira il dolore. Ancora.",
		"Linfa e radice, prestatemi un altro respiro.",
	},
	["cls.druid.lowhp.w07.010"] = {
		"Moonglade può fare a meno di un altro nome da piangere. Non oggi.",
		"Il Circolo ne perde già abbastanza, di noi. Qui non perderà me.",
	},
	["cls.druid.lowhp.w07.011"] = {
		"La terra è stata paziente con me per tutta la vita. Può esserlo ancora un po'.",
		"Non ancora. Non ho finito di essere una creatura viva.",
		"Un'altra stagione. Chiedo solo un'altra stagione.",
	},
	["cls.druid.lowhp.w07.012"] = {
		"sanguina e non cede terreno, gli occhi fissi e lucidi come quelli di una creatura all'angolo.",
		"si raccoglie in sé: come ogni cosa selvatica, ferita diventa più pericolosa.",
	},
	["cls.druid.lowhp.w07.013"] = {
		"Un graffietto. Be', parecchi. D'accordo, davvero tanti.",
		"Un rovo mi ha fatto di peggio. Non è vero, ma suonava coraggioso.",
		"Niente di serio. Quasi tutto di me è ancora al suo posto.",
	},
	["cls.druid.lowhp.w07.014"] = {
		"Tu sei più forte. Io sono più {g:testardo|testarda}. Vediamo chi cede per primo.",
		"Forte, eh. Alla pazienza non importa.",
		"Più forza di me, d'accordo. Ma dovrai finire il lavoro, e non te lo renderò facile.",
	},
	["cls.druid.lowhp.w07.015"] = {
		"Non arriverà nessuno. Qualunque cura ci sia, me la faccio da {g:solo|sola}.",
		"Da {g:solo|sola} con questa. Va bene. La natura cresce i suoi piccoli perché se la cavino.",
	},
	["cls.druid.lowhp.w07.016"] = {
		"L'inverno si prende le foglie, mai la radice. Riprova.",
		"Mi hai tolto le foglie. Il resto di me sta svernando, non morendo.",
		"Rami spogli. Non legno morto. C'è differenza.",
	},
	["cls.druid.lowhp.w07.017"] = {
		"Resta in piedi. Troppe cose crescono ancora e hanno bisogno di cure.",
		"Non qui. C'è ancora troppo di cui occuparsi.",
	},
	["cls.druid.muse.w07.001"] = {
		"Una quercia impiega cent'anni a diventare ciò che la ghianda aveva già in mente. Cerco di non mettere fretta a niente che non me l'abbia chiesto.",
		"Gli alberi non hanno mai fretta nella parte che conta. Qualunque cosa io stia diventando, sospetto che funzioni allo stesso modo.",
		"Le cose più lente del bosco sono quelle che restano in piedi quando tutto ciò che era veloce se n'è andato.",
	},
	["cls.druid.muse.w07.002"] = {
		"Un tronco caduto nutre più vita da sdraiato di quanta ne abbia mai nutrita in piedi. Mi consola, nei giorni in cui penso alla mia fine.",
		"Muschio, coleotteri, funghi: un albero morto continua a nutrire il bosco per anni. Finire non vuol dire smettere.",
	},
	["cls.druid.muse.w07.003"] = {
		"Mi chiedono dove finiscano gli stivali quando divento un orso. Ho smesso di rispondere, soprattutto perché non lo so nemmeno io.",
		"Ogni forma mi restituisce con lo zaino in spalla e gli stivali allacciati. Ho deciso di non chiedermi come. La natura non ama le domande sulla sua sartoria.",
	},
	["cls.druid.muse.w07.004"] = {
		"L'equilibrio non è stare fermi. È un trampoliere su una zampa nella corrente: cento piccole correzioni che nessuno vede.",
		"La gente immagina l'equilibrio come calma. Somiglia di più ad attraversare l'acqua rapida su un tronco caduto: non si finisce mai di aggiustarsi.",
		"In natura niente resta in equilibrio a lungo. Pende, si riprende, pende dall'altra parte. Tutta l'arte sta in quel riprendersi.",
	},
	["cls.druid.muse.w07.005"] = {
		"Ovunque mi trovi, Moonglade è a un incantesimo di distanza. Nessuna strada è davvero lunga, con una porta così in tasca.",
		"Potrei essere a Moonglade prima di finire questo pensiero. Quasi sempre mi basta saperlo, e resto dove c'è bisogno di me.",
		"Ogni druido porta con sé la stessa via d'uscita, piegata in piccolo. La uso di rado. Sapere che c'è rende più leggere le strade lunghe.",
	},
	["cls.druid.muse.w07.006"] = {
		"A Moonglade nessuno ti chiede da dove vieni. Ti chiedono che cosa hai ascoltato.",
		"A Moonglade la prima domanda non è mai il tuo nome. È che cosa ti ha raccontato la terra di recente, e aspettano una risposta vera.",
	},
	["cls.druid.muse.w07.007"] = {
		"Il Cenarion Circle non ha mura né trono. È una promessa fatta da molta gente testarda: continuare a presentarsi.",
		"Ciò che tiene insieme il Cenarion Circle non è il rango. È l'abitudine comune di inginocchiarsi a guardare le cose da vicino.",
		"Niente stendardo, niente capitale, niente re. Il Cenarion Circle sta insieme grazie a druidi che si rifiutano, semplicemente, di smettere di tenerci.",
	},
	["cls.druid.muse.w07.008"] = {
		"I vecchi druidi dicono che alcuni dei nostri più anziani dormono per anni di fila, camminando nel Sogno. Non so decidere se sia la devozione più grande o il pisolino più lungo.",
		"Certi druidi, dicono gli anziani, restano addormentati per anni interi mentre vagano nel Sogno. Spero che qualcuno ogni tanto apra loro una finestra.",
	},
	["cls.druid.muse.w07.009"] = {
		"Ultimamente gli anziani parlano del Sogno a voce più bassa. Qualcosa vi si è insinuato, dicono, e non lo nominano ad alta voce.",
		"Nel Cenarion Circle si mormora che il Sogno non sia più verde come un tempo. Nessuno aggiunge altro, ed è così che capisco che è vero.",
	},
	["cls.druid.muse.w07.010"] = {
		"I vecchi druidi dicono che chi ci ha fondati è ancora là fuori, addormentato e in ascolto. Cerco di fare il lavoro come se potesse controllarlo.",
		"Malfurion ci ha fondati, dicono gli anziani, e poi è andato dove non possiamo seguirlo. I maestri che spariscono lasciano gli allievi più scrupolosi.",
	},
	["cls.druid.muse.w07.011"] = {
		"I primi di noi impararono da Cenarius in persona, così narrano le storie. Ogni druido da allora ha imparato da qualcuno che aveva imparato da lui.",
		"Di maestro in maestro, fino al signore della foresta. La lezione è passata per tante mani, e sta ancora in un respiro: prima ascolta.",
	},
	["cls.druid.muse.w07.012"] = {
		"La fame dell'orso mi resta addosso per un po' dopo averlo lasciato. Ho imparato a non andare al mercato subito dopo uno scontro.",
		"Uscendo dall'orso ho sempre voglia di miele e di un lungo sonno. Me ne concedo una delle due.",
		"L'orso se ne va, ma il suo appetito si trattiene come un ospite che non coglie l'allusione. Così sono sparite pagnotte intere.",
	},
	["cls.druid.muse.w07.013"] = {
		"Sott'acqua, nella forma della foca, i suoni arrivano da ogni parte insieme. Poi, sulla terraferma, il mondo sembra stranamente sbilenco.",
		"La foca non si preoccupa mai del respiro. Ogni volta che la lascio andare, i polmoni si ricordano tutti insieme di avere un lavoro.",
	},
	["cls.druid.muse.w07.014"] = {
		"Il gatto nota tutto e non gli importa quasi di niente. Un maestro utile, anche se maleducato.",
		"Nella forma del gatto vedo tre cose insieme: ciò che si muove, ciò che si nasconde e ciò che sta per sbagliare.",
		"Il gatto mi ha insegnato a stare in mezzo a un trambusto senza battere ciglio, e poi agire sull'unico dettaglio che contava.",
	},
	["cls.druid.muse.w07.015"] = {
		"Muovermi di soppiatto mi insegna quanto rumore faccio il resto del tempo. Due gambe sono cose goffe.",
		"Su zampe morbide il sottobosco diventa una mappa di ciò che non va calpestato. Con gli stivali, calpesto l'intera pagina.",
	},
	["cls.druid.muse.w07.016"] = {
		"In corsa, su quattro zampe, smetto di essere di passaggio nella terra e divento qualcosa che è abituata a vedere.",
		"Correndo nella forma veloce non attraverso la terra: per un po' ne faccio parte.",
	},
	["cls.druid.muse.w07.017"] = {
		"Certi semi si aprono solo dopo un incendio. Me lo ricordo quando una stagione va male.",
		"Le pigne che hanno bisogno delle fiamme per aprirsi l'hanno capita: a volte il caldo peggiore è l'unica chiave.",
		"Un pendio bruciato torna verde prima di quanto chiunque si aspetti. La natura non ha mai chiesto il permesso di ricominciare.",
	},
	["cls.druid.muse.w07.018"] = {
		"La decomposizione è la generosità del bosco. Tutto ciò che ha avuto, reso alla terra, senza trattenere niente.",
		"La gente arriccia il naso davanti a un mucchio di foglie marce. Io ci vedo un banchetto apparecchiato per la prossima primavera.",
	},
	["cls.druid.muse.w07.019"] = {
		"Quando verrà il mio momento, vorrei essere {g:deposto|deposta} dove un albero possa trovarmi. Mi sembra il minimo, dopo tutte le volte che mi ci sono {g:appoggiato|appoggiata}.",
		"Seppellitemi senza cassa. Ho preso in prestito dalla terra per tutta la vita: è giusto che possa riscuotere.",
	},
	["cls.druid.muse.w07.020"] = {
		"Il bosco andrebbe avanti benissimo anche senza di me. Prendermene cura non è un favore che gli faccio: è un privilegio che mi concede.",
		"Non sono io a fare la guardia al bosco. Sono tra i suoi ospiti, e per caso spazzo anche il pavimento.",
		"La natura non ha bisogno di me. Mi lascia aiutare, che è un'altra cosa, e più gentile.",
	},
	["cls.druid.muse.w07.021"] = {
		"Ogni erba che conosco l'ho imparata due volte: una per ciò che cura, una per ciò che fa se sbagli la dose.",
		"Le erbacce più umili lungo una strada hanno tenuto in vita più gente di qualsiasi lama. Nessuno le canta.",
	},
	["cls.druid.muse.w07.022"] = {
		"Metà del lavoro di un druido è decidere di non intervenire. L'altra metà è convivere con le volte in cui era la scelta sbagliata.",
		"A volte l'equilibrio mi chiede di lasciar mangiare il lupo. Lo faccio. Non devo per forza farmelo piacere.",
		"La cosa più difficile che ho imparato è restare in disparte mentre qualcosa soffre, perché intervenire costerebbe di più alla natura.",
	},
	["cls.druid.muse.w07.023"] = {
		"Sento il cambio di stagione nelle giunture prima di vederlo nelle foglie. La natura si è scritta dentro di me.",
		"Molto prima che ingiallisca la prima foglia, qualcosa in me comincia a rallentare, a prepararsi. Ho smesso di discuterci.",
	},
	["cls.druid.muse.w07.024"] = {
		"Un gufo può restare un'ora sullo stesso ramo senza perdersi niente. Ci ho provato. Mi perdo un sacco di cose, e mi si addormenta una gamba.",
		"I falchi restano sospesi nell'aria per tutto il tempo che serve. Io resisto finché lo stomaco non comincia a trattare.",
	},
	["cls.druid.muse.w07.025"] = {
		"Cuoio e legno, niente che sferragli. La natura sente il metallo arrivare da un miglio e decide di avere altro da fare.",
		"Cuoio morbido, un bastone semplice. Tutto quello che porto potrebbe un giorno marcire nella terra, e la cosa mi piace.",
	},
	["cls.druid.muse.w07.026"] = {
		"Le città sono foreste anche loro, solo che lì tutto ha fretta e niente può marcire in pace.",
		"In città conto gli alberi come un marinaio conta le stelle: per sapere di non essere {g:andato|andata} troppo alla deriva.",
	},
	["cls.druid.muse.w07.027"] = {
		"Far uscire le radici dalla terra è un prestito. Tornano giù stanche, e io devo loro una stagione tranquilla.",
		"Le radici stringono qualunque cosa io chieda. Proprio per questo sto {g:attento|attenta} a cosa chiedo.",
	},
	["cls.druid.muse.w07.028"] = {
		"Addormentare una bestia è insieme una pietà e un inganno. Non so mai quale dei due ricordi, al risveglio.",
		"Una bestia addormentata sogna qualcosa. Spero sia l'erba, e non io.",
	},
	["cls.druid.muse.w07.029"] = {
		"Per calmare un animale spaventato serve la stessa voce che per calmare una persona spaventata. Le persone ci mettono solo di più ad ammettere che ha funzionato.",
		"Ammansire una bestia vuol dire soprattutto fare meno paura di ciò che l'ha spaventata. Quasi sempre ci riesco.",
	},
	["cls.druid.muse.w07.030"] = {
		"La forza accumulata ristagna come acqua ferma. Passare la mia a chi ha finito le forze è la cosa più naturale che conosca.",
		"La natura non ha mai voluto che la sua forza ristagnasse in un posto solo. Quando passo la mia a qualcun altro, è solo l'acqua che trova la strada verso valle.",
	},
	["cls.druid.muse.w07.031"] = {
		"Sotto le Barrens, dicono gli anziani, alcuni druidi cercarono di sognare verde una terra arida e si risvegliarono come qualcos'altro. Ogni mia ambizione la misuro contro di loro.",
		"Gli anziani raccontano di druidi che volevano guarire troppo in una volta, e furono inghiottiti dal loro stesso sognare. Le mie speranze le tengo grandi quanto un orto.",
	},
	["cls.druid.muse.w07.032"] = {
		"Gli anziani parlano di Felwood come i guaritori parlano della peste: a bassa voce, e con le mani occupate.",
		"Felwood, dicono, una volta era verde fino alle radici. Ci penso ogni volta che sono {g:tentato|tentata} di dire che una ferita è troppo profonda per curarla.",
	},
	["cls.druid.muse.w07.033"] = {
		"I draghi verdi custodiscono il Sogno, dicono le storie. Mi piace pensare che saprebbero riconoscere un druido in mezzo alla folla. Più probabilmente, per loro odoriamo tutti di muschio.",
		"Sopra tutti noi, dicono le storie, i draghi verdi vegliano sul Sogno. Spero siano più gentili con chi dorme di quanto le storie lascino intendere.",
	},
	["cls.druid.muse.w07.034"] = {
		"Da quando ho preso questa strada, i miei sogni si sono fatti più verdi e più silenziosi. Non so se sia il Sogno o solo una stanchezza onesta.",
		"Certe mattine mi sveglio con l'odore di una foresta in cui non ho mai camminato. Gli anziani sorridono e basta, quando lo racconto.",
	},
	["cls.druid.muse.w07.035"] = {
		"Ogni forma che imparo si porta via un pezzetto della mia vecchia certezza su dove finisco io. Mi manca meno di quanto pensassi.",
		"A ogni nuova forma, il confine fra me e la bestia si fa un po' più sfumato. Eppure mi sento più me, non meno.",
	},
	["cls.druid.muse.w07.036"] = {
		"L'orso non è arrabbiato, qualunque cosa pensi la gente. Ha semplicemente finito la pazienza.",
		"La gente crede che l'orso sia furia. Non lo è. È peso, messo esattamente dove serve.",
		"Nell'orso non c'è furia, solo certezza. Ha deciso tanto tempo fa cosa sopportare e cosa no.",
	},
	["cls.druid.muse.w07.037"] = {
		"I funghi sono il patto silenzioso del bosco: mangiano ciò che è morto, nutrono ciò che vive e chiedono soltanto ombra.",
		"In ogni bosco i funghi smontano in silenzio le foglie dell'anno scorso, senza aspettarsi un grazie. I lavoratori migliori della natura non hanno volto.",
	},
	["cls.druid.muse.w07.038"] = {
		"Il Cenarion Circle tiene un avamposto ai margini di Silithus, dicono gli anziani, dove la sabbia cerca di divorare tutto ciò che è verde. Qualcuno deve sedersi su quel confine e dire di no.",
		"Laggiù a Silithus, mi dicono, i druidi del Cenarion Circle tengono una linea contro il deserto stesso. Sembra un'impresa disperata. Ed è esattamente ciò per cui esistiamo.",
	},
	["cls.druid.muse.w07.039"] = {
		"Qui fuori la solitudine mi pesa di rado. Stare in mezzo a cose che non parlano è tutt'altra faccenda.",
		"La gente la chiama solitudine quando passo una settimana senza parlare. Il bosco ha chiacchierato tutto il tempo: io semplicemente non avevo niente da aggiungere.",
	},
	["cls.druid.muse.w07.040"] = {
		"Quando trovo un boschetto tagliato senza motivo, l'orso dentro di me si sveglia prima che io abbia deciso qualcosa. Lo lascio camminare avanti e indietro. Non sempre lo lascio uscire.",
		"Le asce sconsiderate mi fanno prudere le mani, come se volessero artigli. Quasi sempre ho imparato a respirare finché il prurito passa.",
	},
	["cls.druid.muse.w07.041"] = {
		"L'acqua non combatte mai contro la pietra. Continua a scorrere, e in qualche migliaio di anni la pietra ha cambiato idea.",
		"Prima o poi un ruscello vince ogni discussione con una roccia. Semplicemente non smette mai di ribadire il suo punto.",
	},
	["cls.druid.muse.w07.042"] = {
		"Due popoli hanno imparato quest'arte dallo stesso maestro, raccontano le storie, e nessuno dei due ha capito male la lezione. Dovrebbe contare più di quanto conta.",
		"Zoccolo o piede nudo, lo stesso maestro ci ha mostrato la via, dicono gli anziani. Al bosco non è mai importato chi di noi stesse ascoltando.",
	},
	["cls.druid.muse.w07.043"] = {
		"Dicono che Remulos non abbia mai avuto fretta, nemmeno una volta. E a Moonglade non sembra appassire niente. Dubito che sia un caso.",
		"Remulos cura Moonglade senza fretta, dicono i druidi, e tutto fiorisce. Continuo a provare quel trucco in posti che non sono Moonglade.",
	},
	["cls.druid.muse.w07.044"] = {
		"Da quando conosco l'orso mi fido più del naso che degli occhi. Gli occhi li inganna un'ombra; un odore è una confessione.",
		"Gli occhi vedono ciò che c'è. Il naso mi dice cosa è successo. Le forme mi hanno insegnato a chiedere prima al naso.",
	},
	["cls.druid.muse.w07.045"] = {
		"L'inverno non è morte. È la terra che trattiene il fiato e conta quello che le resta.",
		"I rami spogli sembrano morti solo a chi ha fretta. Guarda meglio, e ognuno sta mantenendo una promessa fatta alla primavera.",
	},
	["cls.druid.muse.w07.046"] = {
		"Il potere che uso non è mio. Mi attraversa come l'acqua attraversa una radice, e cerco di non intasarlo con l'orgoglio.",
		"Non sono io a far crescere qualcosa. Mi tolgo soltanto di mezzo davanti a ciò che voleva crescere.",
		"Qualunque cosa risponda quando chiamo, io ne sono solo il canale. Un canale ostruito non aiuta nessuno, perciò tengo pulito il mio.",
	},
	["cls.druid.muse.w07.047"] = {
		"Certi giorni la bestia sta più vicina alla superficie di quanto vorrei. In quei giorni porto il mio volto con prudenza.",
		"Ci sono mattine in cui mi sveglio con la voglia di ringhiare alla luce. Mi lavo la faccia, aspetto e ritrovo le buone maniere.",
	},
	["cls.druid.muse.w07.048"] = {
		"Il lutto, insegna la natura, è breve e pratico. La cerva piange, poi mangia.",
		"Gli animali soffrono per chi perdono, qualunque cosa pensi la gente. Solo che non smettono di vivere per farlo.",
	},
	["cls.druid.muse.w07.049"] = {
		"Non ho mai capito chi ha paura del buio di una foresta. È il posto più affollato del mondo, se conti tutto ciò che vi è sveglio.",
		"Un bosco buio è pieno, non vuoto. La paura viene dal credere di esserci soltanto tu.",
	},
	["cls.druid.muse.w07.050"] = {
		"Ogni volta che invoco la natura sento la terra sporgersi un poco, curiosa. Cerco di meritare la sua attenzione.",
		"La forza della natura non arriva se la comando. Arriva quando ho detto con sincerità di che cosa ho bisogno.",
	},
	["cls.druid.muse.w07.051"] = {
		"Le strade sono la via più breve fra due città e la più lunga per capire la terra che sta in mezzo.",
		"Lascio la strada ogni volta che posso. È nella terra fra una pietra miliare e l'altra che vive davvero tutto.",
	},
	["cls.druid.muse.w07.052"] = {
		"Un druido che non sopporta di veder morire niente dovrebbe cercarsi un'altra vocazione. La natura è una lunga, paziente discussione fra mangiare ed essere mangiati.",
		"Curare la natura vuol dire curare anche le sue morti. Nessuno te lo dice, all'inizio.",
	},
	["cls.druid.muse.w07.053"] = {
		"Quando indurisco la pelle come corteccia, viene con lei anche un po' dell'indole dell'albero: lenta, imperturbabile, difficilissima da affrettare.",
		"Con la corteccia al posto della pelle, anche un colpo sembra maltempo: qualcosa da sopportare restando in piedi.",
	},
	["cls.druid.muse.w07.054"] = {
		"La forma del grande orso mi calza meglio ogni anno. Non so se sono io a crescerci dentro o lei dentro di me.",
		"Più è grande l'orso che divento, più delicatezza mi serve con gli stipiti delle porte, e con tutti.",
	},
	["cls.druid.muse.w07.055"] = {
		"Scatenare una tempesta sui nemici è la cosa meno gentile che faccio, e la più sincera. Anche la natura ha i suoi scatti d'ira.",
		"Quando trascino il vento in una burrasca, lo sento sempre tirare dall'altra parte, a saggiare se merito di tenerlo.",
	},
	["cls.druid.muse.w07.056"] = {
		"Estrarre il veleno da una ferita è come strappare un'erbaccia: prendi tutta la radice, o ricresce più cattiva.",
		"Una maledizione si aggrappa come il convolvolo. La srotolo piano, dal capo da cui è partita, altrimenti stringe e basta.",
	},
	["cls.druid.muse.w07.057"] = {
		"I druidi non possiedono la terra. Siamo piuttosto i suoi vecchi amici che continuano a presentarsi con la minestra.",
		"Nessuno possiede un bosco. Al massimo gli fai da vicino di casa tollerato: quello che ripara gli steccati e chiede poco.",
	},
	["cls.druid.muse.w07.058"] = {
		"Ho smesso di pensare agli anni come a una linea. Sono una ruota, e a ogni giro ne conosco un po' meglio i raggi.",
		"Primavera, raccolto, il freddo, di nuovo primavera. A ogni giro della ruota incontro le stesse stagioni da persona un po' diversa.",
	},
	["cls.druid.muse.w07.059"] = {
		"La fame la perdono a chiunque. Una preda uccisa per un trofeo e lasciata a marcire è un'altra faccenda, e la natura se ne ricorda più a lungo di me.",
		"Uccidi per mangiare, e la natura alza le spalle. Uccidi per vantarti e lascia il resto a marcire, e qualcosa nella terra si raffredda nei tuoi confronti.",
	},
	["cls.druid.muse.w07.060"] = {
		"Mi fido di chiunque piaccia a un cane e dubito di chiunque faccia scartare un cavallo. Le bestie leggono le persone da molto più tempo di me.",
		"Quando gli animali intorno a qualcuno si fanno silenziosi e guardinghi, mi faccio così anch'io. Raramente si sono sbagliati.",
	},
	["cls.druid.muse.w07.061"] = {
		"Una forma non è un travestimento. Ognuna ha le sue opinioni, e devo ascoltarle per tutto il tempo che la porto.",
		"La gente crede che io indossi l'orso come un mantello. È più come invitare un ospite con idee molto precise su come ci si siede.",
	},
	["cls.druid.muse.w07.062"] = {
		"Preferisco curare che combattere. Ma un giardiniere che non strappa mai un'erbaccia non tiene a lungo un giardino.",
		"Curare e combattere sono lo stesso lavoro dai due capi opposti. In entrambi si decide che cosa può continuare a crescere.",
	},
	["cls.druid.muse.w07.063"] = {
		"Ogni sorgente che trovo la ripulisco un poco. Una manciata di foglie, un ramo caduto. È la forma più piccola di devozione che conosca.",
		"Non riesco a passare accanto a un ruscello intasato senza liberarlo un po'. Non è dovere. È come togliere una foglia dai capelli di un amico.",
	},
	["cls.druid.muse.w07.064"] = {
		"No, non ti trasformo in uno scoiattolo. Neanche per un minuto. Chiedi a qualcuno con meno principi.",
		"Non posso farti diventare un orso. Certe mattine ci riesco a fatica perfino io, prima di colazione.",
	},
	["cls.druid.muse.w07.065"] = {
		"Sì, parlo alle piante. No, non rispondono. Però ascoltano meglio della maggior parte della gente.",
		"Parlare agli alberi non è follia. Pretendere che si sbrighino, quella è follia.",
	},
	["cls.druid.muse.w07.066"] = {
		"Prendi solo quello che userai. La natura tiene il conto, anche se il conto non te lo manda mai.",
		"Uccidi quello che mangerai, raccogli quello che ti serve. Prendi di più, e la terra comincia a tenere una lista in silenzio.",
	},
	["cls.druid.muse.w07.067"] = {
		"Il mio bastone è solo un ramo che ha accettato di venire con me.",
		"Questo bastone una volta era un ramo. Ancora adesso fa un po' il broncio se mi ci appoggio troppo.",
	},
	["cls.druid.muse.w07.068"] = {
		"Ogni creatura che incontri qui fuori è la cena di qualcuno o la madre di qualcuno. Di solito tutte e due.",
		"In natura niente è soltanto un mostro. È una bocca da sfamare e una tana da difendere, come tutto.",
	},
	["cls.druid.muse.w07.069"] = {
		"Vuoi sapere se un posto è sano? Ascolta. Un bosco malato è un bosco silenzioso.",
		"Conta i canti degli uccelli prima di contare gli alberi. Dove il canto si ferma, c'è qualcosa che non va.",
	},
	["cls.druid.muse.w07.070"] = {
		"La pazienza non è aspettare. È lavorare alla velocità di ciò su cui stai lavorando.",
		"Non puoi mettere fretta a un albero, a una ferita o a un druido. Tutti e tre ascoltano qualcosa di più lento di te.",
	},
	["cls.druid.muse.w07.071"] = {
		"La parte peggiore della forma d'orso? Ogni cacciatore nel raggio di un miglio che si chiede quanto varrei al mercato.",
		"Prendi la forma dell'orso vicino a un accampamento di cacciatori anche una volta sola, e imparerai a salutare prima di cambiare.",
	},
	["cls.druid.muse.w07.072"] = {
		"Prendi qualcosa dalla terra, restituisci qualcosa: un seme, una sorgente ripulita, un sasso tolto da un germoglio. I vecchi druidi lo chiamavano tenere i conti.",
		"Qualunque cosa prendi alla natura, ripagane un poco prima di dormire. I vecchi druidi lo chiamavano tenere i conti, e non sono mai andati in rosso.",
	},
	["cls.druid.muse.w07.073"] = {
		"La gente si aspetta che i druidi profumino di fiori. Perlopiù sappiamo di cane bagnato e resina.",
		"Mi dicono che profumo di muschio. Ho deciso di prenderlo come un complimento.",
	},
	["cls.druid.muse.w07.074"] = {
		"Quando puoi, gira intorno al muschio. Cresce un dito all'anno e non si lamenta mai.",
		"Occhio al muschio. Ci ha messo anni ad arrivare fin lì, e tu lo attraversi in due passi.",
	},
	["cls.druid.muse.w07.075"] = {
		"si accovaccia, prende un pizzico di terra fra due dita e lo annusa, come un mercante che saggia una moneta.",
		"sfrega un po' di terra fra i polpastrelli e la osserva con aria pensosa, come se avesse risposto a una domanda.",
	},
	["cls.druid.muse.w07.076"] = {
		"si toglie una foglia dai capelli, la studia e la ripone in una borsa invece di gettarla.",
		"trova un rametto impigliato nel colletto e, invece di buttarlo via, lo pianta dritto nel primo lembo di terra.",
	},
	["cls.druid.muse.w07.077"] = {
		"mugola piano in gola, un suono più vicino a un animale assopito che a un motivo.",
		"lascia uscire dal naso un respiro lento che finisce, appena accennato, in qualcosa di simile a un ringhio, e poi sembra vagamente in imbarazzo.",
	},
	["cls.druid.muse.w07.078"] = {
		"si rigira un seme nel palmo a lungo, prima di riporlo con cura.",
		"spinge un seme nella terra con il pollice, lo ricopre e prosegue senza voltarsi.",
	},
	["cls.druid.muse.w07.079"] = {
		"scuote braccia e collo, come chi si scrolla di dosso un cappotto più pesante di quello che indossa.",
		"rotea le spalle e inarca la schiena in un lungo stiramento quasi animale.",
	},
	["cls.druid.muse.w07.080"] = {
		"osserva un coleottero attraversare il sentiero e lo scavalca con cura, senza rompere il passo.",
		"si ferma a lasciar passare una fila di formiche, con la pazienza di chi aspetta un corteo reale.",
	},
	["cls.druid.muse.w07.081"] = {
		"si appoggia al bastone e chiude gli occhi per qualche respiro, come se ascoltasse la terra attraverso il legno.",
		"pianta il piede del bastone nel terreno e vi posa sopra entrambe le mani, in attesa di niente in particolare.",
	},
	["cls.druid.muse.w07.082"] = {
		"sfiora con la mano tutto ciò che cresce lungo il sentiero, camminando, come chi lascia scorrere le dita nell'acqua.",
		"cammina per un tratto con una mano aperta lungo il fianco, la punta delle dita che sfiora foglie e steli come per salutarli di passaggio.",
	},
	["cls.druid.muse.w07.083"] = {
		"si gratta distrattamente dietro un orecchio con un dito piegato, poi si accorge di cosa sta facendo e smette.",
		"sbadiglia vistosamente, mostrando più denti di quanto sembri educato, poi si guarda intorno per vedere se qualcuno se n'è accorto.",
	},
	["cls.druid.muse.w07.084"] = {
		"resta {g:seduto|seduta} a gambe incrociate per un po', i palmi appoggiati a terra, respirando piano finché il respiro e la terra sembrano trovare lo stesso passo.",
		"si inginocchia e posa entrambi i palmi sulla terra, a occhi chiusi, come in ascolto di un battito molto più in basso.",
	},
	["cls.druid.muse.w07.085"] = {
		"L'incantesimo per Moonglade mi lascia sempre un po' {g:stordito|stordita}, come se il mondo fosse stato piegato e io fossi {g:rimasto|rimasta} nella piega.",
		"Arrivando a Moonglade per incantesimo faccio sempre un passo per controllare che il terreno sia vero. Lo è sempre, e sembra sempre un dono.",
	},
	["cls.druid.muse.w07.086"] = {
		"I druidi sono pessimi giardinieri. Continuiamo a lasciar crescere le cose dove vogliono.",
		"Chiedi a un druido di mettere in ordine un giardino e te lo restituirà più selvatico, più sano e molto più difficile da attraversare.",
	},
	["cls.druid.muse.w07.087"] = {
		"Sotto un tetto dormo leggero e mi sveglio tutto {g:indolenzito|indolenzita}. Con la terra sotto la schiena dormo come una radice.",
		"Dammi un letto morbido e resterò {g:sveglio|sveglia} a contare i muri. Dammi del muschio e mi addormento prima di finire il pensiero.",
	},
	["cls.druid.pray.w07.001"] = {
		"Cenarius, Signore della Foresta: dammi la pazienza della quercia, e il giudizio per capire quando invece essere il lupo.",
		"Signore della Foresta, se ascolti le voci piccole: custodisci l'equilibrio dentro di me, e fa' che io curi più di quanto strappi.",
	},
	["cls.druid.quest_complete.w07.001"] = {
		"Sistemato. La ricompensa va bene, ma la vera paga è un angolo di mondo che sta un po' più dritto.",
		"Pagato, e il giusto. Eppure la parte che terrò è la sensazione di una cosa rimessa a posto.",
		"La borsa è gradita. Il silenzio dopo, quando qualcosa è stato rimesso a posto, vale di più.",
	},
	["cls.druid.quest_complete.w07.002"] = {
		"Ecco. Se qualcos'altro da queste parti ha bisogno di cure, mandami a chiamare.",
		"Tutto fatto. Chiamami di nuovo, se la natura da queste parti ha bisogno di una mano.",
		"Finito. Un albero vicino a me c'è sempre, se avrai ancora bisogno.",
	},
	["cls.druid.quest_complete.w07.003"] = {
		"accetta la ricompensa con un breve cenno e la ripone senza contarla, lo sguardo già all'orizzonte.",
		"intasca il compenso senza guardarlo e passa più tempo a spazzolarsi via dalle maniche la polvere della strada.",
	},
	["cls.druid.quest_complete.w07.004"] = {
		"Qualunque cosa mi abbiano dato, l'avrei scambiata con la promessa di lasciare in piedi un vecchio albero.",
		"Le monete sono utili. La promessa che qualcuno lascerà stare le siepi lo sarebbe di più, ma non è mai tra le offerte.",
	},
	["cls.druid.quest_complete.w07.005"] = {
		"Un altro compito tolto dalle spalle. Camminerò un po' fuori strada prima di prendere il prossimo, e lascerò che la terra mi rimetta in ordine.",
		"Finito, e mi sento più {g:leggero|leggera}. Prima di qualunque altra cosa, un'ora tranquilla in un posto verde.",
		"Questo non mi pesa più. Mi siederò un po' lontano dalla strada e lascerò che il respiro rallenti al passo della terra.",
	},
	["cls.druid.quest_complete.w07.006"] = {
		"Ho fatto ciò che mi era stato chiesto. Se la terra ne avesse bisogno è una domanda che continuerò a rigirarmi per un po'.",
		"È finito, e loro sono contenti. La natura potrebbe avere un'opinione diversa: di solito ci mette una stagione a esprimerla.",
		"Mi hanno {g:ringraziato|ringraziata} di cuore. Aspetterò il grazie della terra, che arriva più lento e mai a parole.",
	},
	["cls.druid.quest_complete.w07.007"] = {
		"È stato un piacere. Tieni d'occhio la terra intorno a te: ti dirà che qualcosa non va prima di chiunque altro.",
		"Con piacere. La prossima volta guarda gli animali: ti avvisano prima che arrivino i guai.",
	},
	["cls.druid.quest_complete.w07.008"] = {
		"si attarda dopo lo scambio, accovacciandosi a strappare un'erbaccia al bordo del sentiero prima di ripartire.",
		"chiude la faccenda in poche parole e si pulisce le mani su un ciuffo d'erba, come se il compito vi avesse lasciato qualcosa.",
	},
	["cls.druid.quest_complete.w07.009"] = {
		"Molti di questi incarichi si pagano in vite, in un modo o nell'altro. Spero che questo abbia comprato più di quanto è costato.",
		"Se per finirlo è stato versato del sangue, voglio che ne sia valsa la pena. È l'unica contabilità di cui mi fido.",
	},
	["cls.druid.quest_complete.w07.010"] = {
		"Finito, e nessuno è stato trasformato in niente. La chiamo una buona giornata di lavoro.",
		"Tutto sistemato, e non mi sono dovuti spuntare gli artigli neanche una volta. Notevole.",
		"Concluso, e nemmeno una forma cambiata per rabbia. L'orso ne resterà deluso.",
	},
	["cls.druid.quest_complete.w07.011"] = {
		"Un compito piccolo per un piccolo guaio. La natura è fatta quasi tutta di cose piccole, e si sommano.",
		"Niente di grandioso. Ma un bosco è solo diecimila piccole cose che stanno in piedi insieme.",
	},
	["cls.druid.quest_complete.w07.012"] = {
		"Per quanto ci sia voluto, ci è voluto il tempo necessario. Chiedi a una quercia cosa pensa delle scadenze.",
		"Finito al suo ritmo, l'unico che abbia mai tenuto qualunque cosa valga la pena di fare.",
		"Veloce o lento, è finito come si deve. È l'unica velocità che conta.",
	},
	["cls.druid.quest_complete.w07.013"] = {
		"Vuoi ringraziarmi? Pianta qualcosa, qualsiasi cosa, e lasciala crescere. È paga sufficiente.",
		"Non servono discorsi. Metti un seme nella terra prima che cambi la stagione, e siamo pari.",
	},
	["cls.druid.quest_complete.w07.014"] = {
		"annusa il compenso con curiosità prima di riporlo, una vecchia abitudine che {g:gli|le} vale uno sguardo perplesso.",
		"accetta la ricompensa, poi la saggia distrattamente con i denti, come una creatura saggia qualsiasi cosa nuova.",
	},
	["cls.druid.quest_complete.w07.015"] = {
		"I cervi non sanno niente di tutto questo. È la misura migliore che ho: la natura che va avanti, indisturbata.",
		"Là fuori una volpe sbriga la sua giornata senza sapere cosa si è sistemato qui. Ed è bene che sia così.",
	},
	["cls.druid.quest_complete.w07.016"] = {
		"Un'altra promessa mantenuta. La parola di un druido dovrebbe essere lenta a spezzarsi come una radice.",
		"Avevo detto che l'avrei portato a termine, e l'ho fatto. Nemmeno le radici mollano a metà.",
		"Avevo dato la mia parola, e ora è mantenuta. Mi importa più di qualunque cosa ci fosse nella borsa.",
	},
	["cls.druid.quest_complete.w07.017"] = {
		"Bene! Una preoccupazione in meno per questa gente, e un motivo in più per riprendere la strada col sorriso.",
		"Ecco qua. Tutti un po' più contenti, persino i corvi, probabilmente.",
		"Splendido. Adoro i finali in cui non c'è niente da seppellire.",
	},
	["cls.druid.quest_complete.w07.018"] = {
		"Se mi hanno pagato per sfoltire le bestie, dopo dovrò controllare di non averle sfoltite troppo. L'equilibrio non giudica le intenzioni.",
		"Pagato per abbattere, forse, o per recuperare, o per combattere. Qualunque cosa fosse, terrò d'occhio ciò che ricresce al suo posto.",
	},
	["cls.druid.quest_complete.w07.019"] = {
		"china il capo davanti a chi aveva chiesto, con la lenta cortesia di chi è abituato al ritmo degli alberi.",
		"fa un piccolo inchino solenne, più adatto a una radura che a un banco di bottega, e prende congedo.",
	},
	["cls.druid.quest_complete.w07.020"] = {
		"La gente chiede aiuto per i guai che vede. Per il male più silenzioso della terra, nessuno appende mai un avviso.",
		"Fatto, e volentieri. Ma i guai che più hanno bisogno di un druido non arrivano mai con una ricompensa.",
	},
	["cls.druid.quest_complete.w07.021"] = {
		"Sistemato. Concedi alla terra qui intorno qualche giorno di quiete, e il resto lo aggiusterà da sola.",
		"Questa era la mia parte. Il resto spetta al tempo e al terreno, e loro sono più bravi di me.",
		"Dalla mia parte è fatto. Radici e pazienza penseranno al resto.",
	},
	["cls.druid.quest_complete.w07.022"] = {
		"Chissà perché, un compito non mi sembra mai concluso finché, dopo, non passo un po' di tempo fra le cose vive.",
		"Il grazie di chi l'ha chiesto chiude l'accordo. Qualche minuto con i palmi sulla terra chiude il compito.",
	},
	["cls.druid.quest_complete.w07.023"] = {
		"lascia uscire dal naso un lungo respiro, e la tensione del compito scivola via come acqua nella sabbia.",
		"si stiracchia lentamente, dalla punta delle dita ai talloni, come un animale dopo una lunga attesa.",
		"ruota il collo lentamente finché qualcosa cede con uno scricchiolio sommesso, e con esso se ne va un po' della rigidità del compito.",
	},
	["cls.druid.quest_complete.w07.024"] = {
		"Un'altra ricompensa che probabilmente spenderò in semi. I mercanti penseranno che io coltivi i campi vestendo in modo assai strano.",
		"Lo spenderò in qualcosa di sensato, come i semi, e in qualcosa di sciocco, come un pasto caldo che avrei potuto raccogliere da me.",
	},
	["cls.druid.quest_complete.w07.025"] = {
		"Il Cenarion Circle la chiamerebbe una piccola gentilezza e se ne aspetterebbe altre dodici entro la fine della stagione. E avrebbe ragione.",
		"Un'altra cosa che potrei raccontare agli anziani di Moonglade, se mai me lo chiedessero. Non lo faranno. Annuirebbero e basta, aspettandosi la prossima.",
	},
	["cls.druid.quest_complete.w07.026"] = {
		"Lo chiamano un prezzo giusto. Lo deciderà la terra, fra qualche stagione.",
		"Paga onesta, dicono. Giudicherò da come sarà la collina la prossima primavera.",
	},
	["cls.druid.quest_complete.w07.027"] = {
		"È fatto. Tratta bene la terra qui, e lei tratterà bene te.",
		"Finito. Sii gentile con ciò che cresce intorno a te: se ne ricorda.",
	},
	["cls.druid.quest_progress.w07.001"] = {
		"Non è finito, ma si muove. Come la linfa a inizio primavera: non la vedi, ma sale.",
		"Una parte di strada è fatta. Il resto lo farò al passo della terra, non di chi me l'ha chiesto.",
		"Un po' più avanti. Gli alberi crescono un dito alla volta, e nessuno li chiama lenti.",
	},
	["cls.druid.quest_progress.w07.002"] = {
		"si ferma, fa il conto di ciò che resta e riparte con l'andatura tranquilla e costante di un animale in cammino.",
		"ripone quanto raccolto finora, annusa l'aria come per orientarsi e riprende il cammino.",
		"dà un'occhiata al terreno già percorso, poi si volge al resto senza una parola.",
	},
	["cls.druid.quest_progress.w07.003"] = {
		"C'è tutto. Pronto da consegnare, come un cesto pieno alla fine della raccolta.",
		"Tutto quello che volevano, raccolto. Andrò da loro passando fra gli alberi, se ce ne sono.",
		"Raccolto completo. È ora di posarlo alla porta giusta.",
	},
	["cls.druid.reputation_change.w07.001"] = {
		"Si stanno affezionando a me, piano, come un albero che si scalda in primavera. Le cose buone crescono a quel ritmo, o non crescono affatto.",
		"Un po' più di fiducia da parte loro. La curerò come curerei un germoglio: con attenzione, e senza fissarlo troppo.",
		"Il mio nome qui sta mettendo radici. Le radici non fanno rumore, ma tengono.",
	},
	["cls.druid.rez.w07.001"] = {
		"Il ciclo mi ha {g:preso|presa} per un momento e poi mi ha {g:restituito|restituita}. A quanto pare non sono ancora {g:pronto|pronta} a nutrire il prato.",
		"Prima la morte, poi di nuovo la vita. Ogni druido predica il ciclo; pochi possono lamentarsene da entrambe le parti.",
	},
	["cls.druid.rezother.w07.001"] = {
		"In piedi! Lo scontro non è finito, e nemmeno tu.",
		"Respira. Alzati. Qui non abbiamo finito.",
	},
	["cls.druid.rezother.w07.002"] = {
		"In mezzo a tutto questo, una vita strappata alla terra. Un giorno la natura vorrà qualcosa in cambio.",
		"La morte aveva già cominciato il suo lavoro. Le ho chiesto di restituire questa vita, e per una volta l'ha fatto.",
	},
	["cls.druid.thanks.w07.001"] = {
		"Grazie. La gentilezza penetra come l'acqua nella terra secca: non la dimenticherò presto.",
		"Ti ringrazio. La passerò a qualcosa che cresce, come farebbe la natura.",
	},
	["cls.druid.thanks.w07.002"] = {
		"Grazie. Se mai ti servisse un orso, sai dove trovarne uno.",
		"Grazie davvero. Se mai qualcosa avesse bisogno di essere curato, o sbranato, chiamami.",
	},
	["cls.druid.threat.w07.001"] = {
		"Arretra piano. È quello che fanno gli animali saggi.",
		"I cervi sanno quando andarsene. Abbi la saggezza di un cervo.",
		"Ogni creatura qui sa quando voltarsi e andare. Fai come loro.",
	},
	["cls.druid.threat.w07.002"] = {
		"Faccio prosperare i rovi nella sabbia. Tu saresti un lavoro molto più facile.",
		"Passo le giornate a convincere le piante a crescere. Immagina cosa potrei convincere te a fare.",
		"Il mio mestiere è far crescere le cose. Farle smettere è l'altra metà.",
	},
	["cls.druid.threat.w07.003"] = {
		"Ti restituirei alla terra senza rancore. Dovrebbe spaventarti più della rabbia.",
		"Non ti odierò per questo. Lascerò semplicemente che la terra ti prenda. Pensaci.",
		"Niente rabbia, niente rancore. Solo la terra che aspetta. Vattene.",
	},
	["cls.druid.threat.w07.004"] = {
		"si immobilizza e regge lo sguardo dell'altro senza battere ciglio, come fa una creatura selvatica prima di decidere.",
		"lascia che il silenzio si allunghi finché non ha detto tutto ciò che c'era da dire.",
		"osserva l'altro senza una parola, paziente come una pietra, e altrettanto difficile da smuovere.",
	},
	["cls.druid.threat.w07.005"] = {
		"Posso aspettare qui finché il muschio non ricopre tutti e due. E tu?",
		"Gli alberi mi hanno insegnato ad aspettare. Vuoi vedere quanto?",
	},
	["cls.druid.victory.w07.001"] = {
		"Al resto penseranno scarafaggi e vermi. Niente va sprecato.",
		"Torna alla terra. Qualcosa di piccolo e verde te ne sarà grato.",
		"Resta lì. Per la prossima primavera farai parte di qualcosa di meglio.",
	},
	["cls.druid.victory.w07.002"] = {
		"Lascia rallentare il cuore. Non deve più cacciare.",
		"Butta fuori il fiato. Lo scontro è finito, il corpo non l'ha ancora saputo.",
		"Piano, adesso. Di' al sangue che può smettere di correre.",
	},
	["cls.druid.victory.w07.003"] = {
		"Hai lottato per la tua vita. Non c'è vergogna in questo, né nel perderla.",
		"Hai tenuto la posizione finché hai potuto. La natura non chiede altro a nessuno.",
		"Hai lottato per ogni respiro. È tutto ciò che può fare un essere vivente.",
	},
	["cls.druid.victory.w07.004"] = {
		"Più tardi chiederò scusa ai cespugli. Hanno visto tutto.",
		"Mi spiace per i fiori. Erano in mezzo, soprattutto in mezzo a me.",
		"In tutto questo qualche felce è finita calpestata. Qualcuno me lo rinfaccerà.",
	},
	["cls.druid.victory.w07.005"] = {
		"lascia andare un lungo respiro, e la furia selvatica defluisce dalla sua postura come l'acqua dalla sabbia.",
		"resta un momento nel silenzio improvviso, finché il respiro non si accorda al passo più lento del mondo.",
		"scrolla le spalle una volta, e l'ultima traccia dello scontro scivola via.",
	},
	["cls.druid.victory.w07.006"] = {
		"Tagli, graffi, un livido degno di nota. I rovi hanno fatto di peggio.",
		"Niente che un po' di cure non possa sistemare. Vediamo il danno.",
	},
	["cls.druid.victory.w07.007"] = {
		"La bilancia torna indietro di un capello. È tutto quello che può fare un solo scontro.",
		"Un po' più in pari di prima. La bilancia non sta mai del tutto ferma: oscilla solo di meno.",
		"Di nuovo in pari, o quasi. La natura non pretende la perfezione.",
	},
	["cls.druid.victory.w07.008"] = {
		"Riposa, ora. Difendevi solo il tuo territorio, come avrei fatto io.",
		"Dormi. Era fame, non crudeltà. Conosco la differenza.",
		"Entra piano nel buio. Non hai fatto niente che la tua specie non faccia.",
	},
	["cls.druid.victory.w07.009"] = {
		"Di nuovo sotto terra, e stavolta per sempre. Ci penseranno le radici.",
		"Ecco. Riposa come avresti dovuto fare la prima volta.",
		"La terra ti aveva già preso una volta. Stavolta lascia che ti tenga.",
	},
	["cls.druid.victory.w07.010"] = {
		"Perfino i vermi ci penseranno due volte, con te. La terra se la caverà, col tempo.",
		"Fatto. Ci vorrà un po' per togliere questo fetore dall'aria.",
	},
	["cls.druid.victory.w07.011"] = {
		"Torna pietra, acqua e vento. Silenzio, adesso. Sei dove devi stare.",
		"Il mondo da cui ti avevano strappato ti riprende. Per te non c'è fine più gentile.",
	},
	["cls.druid.victory.w07.012"] = {
		"Entro un anno ti avrà coperto il muschio, la ruggine in due. Il bosco non ha fretta, ma finisce sempre il lavoro.",
		"Ripensaci un po', lì per terra. L'edera arriverà a momenti.",
	},
	["cls.druid.victory.w07.013"] = {
		"Questa l'hai scelta tu. Almeno il cinghiale non sceglie mai.",
		"Una bestia combatte perché deve. Tu potevi scegliere. Per questo ti piangerò di meno.",
		"Il lupo non ha scelta. Tu l'avevi, e hai scelto male.",
	},
	["cls.druid.victory.w07.014"] = {
		"Siete a posto? Fatemi vedere i tagli, ci penso io.",
		"In fila, prima chi è ferito. Nessuno se ne va sanguinando.",
		"Bel lavoro. Ora fatemi vedere chi zoppica.",
	},
	["cls.druid.victory.w07.015"] = {
		"Niente male. La natura sarebbe stata fiera di un branco così.",
		"Abbiamo cacciato come un branco. Potrei abituarmici.",
	},
	["cls.druid.victory.w07.016"] = {
		"Nessuno l'ha visto tranne la terra, e la terra non fa pettegolezzi.",
		"Da {g:solo|sola}, e ancora in piedi. Alla natura, in fondo, piace così.",
		"Di nuovo io e il silenzio. Mi sta bene.",
	},
	["cls.druid.victory.w07.017"] = {
		"Dovrei smettere di fare quel brontolio basso dopo gli scontri. La gente mi guarda strano.",
		"Dopo uno scontro dimentico sempre in che forma sono. I locandieri sono sempre felici di ricordarmelo.",
	},
	["cls.druid.victory.w07.018"] = {
		"Qualunque cosa cresca qui intorno ora è un po' più al sicuro. Per uno scontro basta e avanza.",
		"Un pericolo in meno per ciò che è giovane e verde. Come ricompensa mi basta.",
	},
	["cls.druid.victory.w07.019"] = {
		"resta accanto al nemico sconfitto un po' più del necessario, a capo chino, poi riparte.",
		"guarda il caduto per un lungo respiro, senza trionfo, e poi distoglie lo sguardo.",
	},
	["cls.druid.victory.w07.020"] = {
		"Qualcosa, nella natura, se n'è accorto. Spero che il suo giudizio sia stato equo.",
		"Il bosco tiene un suo registro. Chissà in quale colonna è finito questo.",
		"Ho spostato l'equilibrio o l'ho rimesso a posto? Non lo saprò mai con certezza.",
	},
	["cls.druid.victory.w07.021"] = {
		"Ah! Le vecchie querce avrebbero annuito, a questa.",
		"Così la natura chiude una discussione. In fretta, e senza appello.",
	},
	["cls.druid.victory.w07.022"] = {
		"Prima mossa troppo lenta. La prossima volta, meno attesa e più decisione.",
		"C'era una lezione, lì dentro. La natura insegna a buon mercato, se presti attenzione.",
		"Da ricordare: lascia che sia il nemico a venire da me. Il terreno favorisce chi sa aspettare.",
	},
	["cls.druid.victory.w07.023"] = {
		"Torna al ciclo. Non gli dovevi altro che questo, e io nemmeno.",
		"Dentro il lungo ciclo. Gira lento, ma gira per tutti.",
	},
	["cls.druid.victory.w07.024"] = {
		"Oggi la natura era dalla mia parte. Domani cercherò di meritarmelo.",
		"Oggi il verde ha combattuto con me. Non lo darò per scontato.",
		"Il verde mi ha prestato di nuovo la sua forza. Gli devo una giornata tranquilla.",
	},
	["cls.druid.victory.w07.025"] = {
		"osserva il terreno calpestato, come se contasse quanto è costato lo scontro alla terra.",
		"guarda la terra smossa attorno al luogo dello scontro e aggrotta la fronte, come davanti a un orto dopo il passaggio di una mandria.",
	},
	["cls.druid.victory.w07.026"] = {
		"Un giorno sarò io a giacere immobile, e qualcosa si nutrirà di me. Giusto così. Solo, non ancora.",
		"Lo stesso ciclo verrà a prendermi, alla fine. Non ce l'ho con lui. Vorrei solo qualche stagione in più, prima.",
		"Un giorno anch'io farò da concime all'erba. Preferirei solo che fosse lontano.",
	},
	["cls.druid.victory.w07.027"] = {
		"Gli scoiattoli ne parleranno per settimane.",
		"C'è un corvo lassù che lo sta già raccontando ai suoi amici.",
	},
	["cls.druid.victory.w07.028"] = {
		"Bene. Qualcun altro? No? Perfetto. Vorrei sedermi.",
		"Fatto. Una macchia di muschio e un minuto per sedermi, non chiedo altro.",
		"Finita. Qualcuno mi trovi un ceppo su cui sedermi.",
	},
	["cls.druid.victory.w07.029"] = {
		"I vecchi druidi dicono che ogni morte manda un'increspatura nel Sogno. Chissà fin dove è arrivata questa.",
		"Un'increspatura nel Sogno, direbbero gli anziani. Piccola, e già svanita.",
	},
	["cls.druid.victory.w07.030"] = {
		"C'è mancato poco. La terra stava per prendersi tutti e due.",
		"Troppo vicino alle radici per stare tranquilli. La prossima volta, cure prima.",
	},
	["cls.druid.victory.w07.031"] = {
		"Fatto. Non mi è piaciuto, e lo rifarei.",
		"Necessario, non piacevole. Gran parte di quel che fa un druido è così.",
		"Nessun orgoglio. Nemmeno rimpianti. La natura non chiede mai scusa, e io ho smesso di pretenderlo.",
	},
	["cls.druid.victory.w07.032"] = {
		"Ascolta. Gli uccelli ricominciano a cantare. È così che capisci che è davvero finita.",
		"Tornano i piccoli rumori: gli insetti, un uccello, le foglie. La natura ha deciso che è tutto a posto.",
	},
	["cls.druid.victory.w07.033"] = {
		"Adesso c'è un seme che non verrà calpestato. Anche le piccole vittorie sono vittorie.",
		"Forse ho salvato una ghianda. Mi basta.",
	},
	["cls.druid.victory.w07.034"] = {
		"Qualunque forma abbia preso quello scontro, sono sempre io a uscirne. Bene.",
		"Pelliccia o pelle nuda, chi se ne va sono sempre io. Controlla le ferite e via.",
	},
	["cls.druid.victory.w07.035"] = {
		"Era molto più forte di me, ed è a terra. La pazienza batte la forza più spesso di quanto alla forza piacerebbe.",
		"Più forte di me, eppure giace lì. La via lenta funziona.",
	},
	["cls.druid.victory.w07.036"] = {
		"La natura ha visto tutto e non ha detto nulla. Non lo fa mai. Ci ricresce sopra e basta.",
		"Gli alberi non esultano e non piangono. Continuano a crescere. Ci proverò anch'io.",
		"Le radici lo assorbiranno e ne faranno qualcosa, senza commenti.",
	},
	["cls.druid.victory.w07.037"] = {
		"Dicono che la natura sia crudele. La natura è rimasta a guardare mentre io facevo tutto.",
		"Il merito se lo prende la natura, naturalmente. Come sempre.",
	},
	["cls.druid.victory.w07.038"] = {
		"volge il viso all'aria aperta e per un po' respira e basta, lasciando che il mondo torni.",
		"resta in ascolto del silenzio che viene dopo, come si ascolta un fiume che si calma dopo la piena.",
	},
	["cls.druid.victory.w07.039"] = {
		"Un'altra cosa restituita al verde. Tengo un conto che nessun altro tiene.",
		"Anche questo torna al verde. Cerco di ricordarli tutti, almeno per un po'.",
	},
	["cls.druid.victory.w07.040"] = {
		"In piedi, una spolverata, e si riparte. Questa è tutta la danza della vittoria di un druido.",
		"Niente urla di gioia. Solo un cenno alla terra, e avanti.",
	},
	["cls.paladin.attack.w07.001"] = {
		"Giudizio! Pesato, e colpito.",
		"Ecco il tuo verdetto. Consegnato di persona.",
		"Giudizio emesso. Processo breve.",
	},
	["cls.paladin.attack.w07.002"] = {
		"Resta lì dove sei. È un ordine della Luce.",
		"Non muoverti. La giustizia pesa più di quanto sembri.",
		"Ti gira la testa? Bene. Pensa alle tue scelte.",
	},
	["cls.paladin.attack.w07.003"] = {
		"Lascia andare questo mondo. La Luce ti sta aprendo le dita a forza.",
		"Qualunque cosa ti tenga in piedi, ne taglio i fili.",
	},
	["cls.paladin.attack.w07.004"] = {
		"Brucia in un fuoco più pulito del tuo.",
		"Ecco come la Luce dice di no a quelli come te.",
	},
	["cls.paladin.attack.w07.005"] = {
		"Sei quasi alla fine. Lascia che concluda io la frase.",
		"L'ultima parola spetta al martello.",
	},
	["cls.paladin.attack.w07.006"] = {
		"Conta il mana, guarda il colpo. Il resto lo fa la Luce.",
		"Spendilo dove conta. Ogni incantesimo è calore preso in prestito.",
		"Un respiro per incantesimo. Né più né meno.",
	},
	["cls.paladin.attack.w07.007"] = {
		"pronuncia un'unica parola secca, e la luce balza dalla mano come una scintilla dall'acciarino.",
		"protende il pugno guantato, e un lampo dorato gli risponde.",
	},
	["cls.paladin.attack.w07.008"] = {
		"Altra Luce per te. È gratis, e la odierai fino all'ultima goccia.",
		"Il bis? La Luce è molto generosa con quelli come te.",
	},
	["cls.paladin.attack.w07.009"] = {
		"fa girare l'arma in un arco breve e pesante, e il bagliore che la percorre divampa nell'istante del colpo.",
		"accompagna il colpo con tutto il peso del corpo, e l'armatura risuona.",
	},
	["cls.paladin.attack.w07.010"] = {
		"Sigillo posto. Adesso ogni colpo parla per la Luce.",
		"Sigillato. Vediamo se te lo scrolli di dosso.",
	},
	["cls.paladin.attack.w07.011"] = {
		"Prenditelo. È la cosa più pulita che ti tocchi da anni.",
		"Senti questo calore? Non è dalla tua parte.",
		"Questa è la Luce, e non è in vena.",
	},
	["cls.paladin.battle.w07.001"] = {
		"Dovrai passare prima da me, e mi dicono che sono un bel pezzo di strada.",
		"Qui sono la prima cosa che incontri. Fattene una ragione.",
		"Qualunque cosa tu cerchi, ci sono io di mezzo.",
	},
	["cls.paladin.battle.w07.002"] = {
		"Peso sul piede dietro. Che venga lui: sono {g:fatto|fatta} per ricevere.",
		"Non inseguire. Un paladino che insegue ha già ceduto il terreno.",
		"Lascia che colpisca per primo. L'armatura serve proprio a questo.",
	},
	["cls.paladin.battle.w07.003"] = {
		"si tocca la fronte con due dita, poi il petto, e un oro tenue si insinua lungo il filo dell'arma.",
		"mormora poche parole semplici, e l'aria attorno a {g:lui|lei} si scalda come se si fosse aperta una porta su una stanza illuminata.",
	},
	["cls.paladin.battle.w07.004"] = {
		"Fra tutti, hai scelto chi porta l'armatura lucida. Audace. Poco saggio, ma audace.",
		"Con tutta la gente che passa di qui, hai scelto chi brilla. Scelta curiosa.",
		"Avanti. Tutti vogliono ammaccare un paladino, almeno una volta.",
	},
	["cls.paladin.battle.w07.005"] = {
		"Ho giurato di oppormi a cose come questa. I miei giuramenti li mantengo.",
		"In me c'è un giuramento più vecchio di questo scontro. Dice: resta.",
		"Il mio giuramento ha una clausola breve per momenti come questo. Dice: tieni duro.",
	},
	["cls.paladin.battle.w07.006"] = {
		"Torna sottoterra. Ci penserà la Luce a rimboccarti le coperte.",
		"Ti hanno già seppellito una volta. Farò in modo che la seconda sia quella buona.",
		"Chi ti ha svegliato non ti ha fatto un favore. Rimedio io.",
	},
	["cls.paladin.battle.w07.007"] = {
		"Da qualunque fuoco tu sia strisciato fuori, può riprenderti.",
		"Puzzi di zolfo e di patti sbagliati. Facciamola finita.",
		"Un demone. Bene. Con te non devo mai chiedermi se te lo meriti.",
	},
	["cls.paladin.battle.w07.008"] = {
		"I vecchi paladini dicono che la Luce non prova gioia in battaglia. E allora perché arriva così in fretta quando ne comincia una?",
		"Ci insegnano che la Luce è mite. Nessuno spiega perché risponda più in fretta quando ho un'arma in mano.",
	},
	["cls.paladin.battle.w07.009"] = {
		"Bene. Vediamo se il fabbro si è guadagnato la paga con quest'armatura.",
		"Bene. Non lucido quest'armatura per niente.",
	},
	["cls.paladin.battle.w07.010"] = {
		"assesta il peso dell'armatura con un'alzata di spalle e si piazza in pieno sul cammino del nemico.",
		"allarga i piedi, l'armatura che scricchiola, e alza il mento come per farsi vedere bene.",
	},
	["cls.paladin.battle.w07.011"] = {
		"Guardate me. Se fissa me, non fissa voi.",
		"È mio. Che venga da me; voi colpitelo di fianco.",
		"Mi prendo la sua attenzione. Voi fategliela rimpiangere.",
	},
	["cls.paladin.battle.w07.012"] = {
		"Contali: chi è già ferito, chi è avventato, chi avrà bisogno per primo della Luce. Poi combatti.",
		"Metà dello sguardo sul nemico, metà sugli altri. Un paladino non può mai guardare una cosa sola.",
	},
	["cls.paladin.battle.w07.013"] = {
		"Luce, a colpire penso io. Tu pensa a giudicare.",
		"Luce, decidi tu cosa merita chi ho davanti. Io mi limito a consegnarlo.",
	},
	["cls.paladin.battle.w07.014"] = {
		"Ho marciato per ore con quest'armatura addosso. Hai scelto il momento sbagliato per darmi fastidio.",
		"Ore di cammino in armatura completa, e adesso tu. Hai un pessimo tempismo.",
	},
	["cls.paladin.battle.w07.015"] = {
		"L'Alleanza mi chiede di tenere al sicuro la sua gente. Tu sei uno dei motivi per cui deve chiederlo.",
		"Servo l'Alleanza e la Luce, e nessuna delle due mi ha detto di lasciarti passare.",
		"Niente di personale. Porti i colori sbagliati nel posto sbagliato.",
	},
	["cls.paladin.battle.w07.016"] = {
		"Più grosso, più vecchio, più forte di me. La Luce non ha mai dato troppo peso a questi numeri.",
		"Troppo per me, a contare onestamente. Per fortuna la Luce non è mai stata brava con i conti.",
	},
	["cls.paladin.battle.w07.017"] = {
		"Non sei alla mia altezza, e lo sai. Scappa, e non ti seguirò.",
		"Lasciamo perdere. Non puoi vincere, e non voglio essere io a insegnartelo.",
	},
	["cls.paladin.battle.w07.018"] = {
		"prende un respiro lento, e un pallido cerchio di luce si allarga da {g:lui|lei} sul terreno, fermo come una nota tenuta.",
		"lascia che l'aura si posi attorno a {g:lui|lei}, un tremolio leggero ai margini della vista che non vacilla.",
	},
	["cls.paladin.battle.w07.019"] = {
		"Uno grosso. Bene. Mi seccherebbe essermi {g:vestito|vestita} a festa per niente.",
		"Ecco, questo vale la lucidata all'armatura.",
		"Se ne parlerà, comunque vada. Diamo a chi racconta un bel finale.",
	},
	["cls.paladin.battle.w07.020"] = {
		"Ormai piastre dalla testa ai piedi. Al primo colpo trasalisco ancora, e spero di farlo sempre.",
		"Tutta questa corazza, e il primo colpo trova ancora sotto la stessa vecchia paura. Bene. La paura mi tiene {g:onesto|onesta}.",
	},
	["cls.paladin.battle.w07.021"] = {
		"I vecchi paladini dicono che la Mano d'Argento l'avete spezzata voi. Allora sono un pezzo che non ha mai ricevuto la notizia.",
		"Le vecchie storie dicono che la Mano d'Argento cadde per mano del Flagello. Qualcosa del suo giuramento cammina ancora, e cammina verso di te.",
	},
	["cls.paladin.battle.w07.022"] = {
		"Non ho niente contro di te, bestia. Purtroppo tu qualcosa contro di me ce l'hai.",
		"Ti benedirei e ti lascerei andare, ma non mi sembri il tipo che sta fermo per riceverla.",
		"Buono... buono. No? D'accordo, allora.",
	},
	["cls.paladin.battle.w07.023"] = {
		"Prima il sigillo, poi il giudizio, e dopo una parola con te, se mi stai ancora ascoltando.",
		"Il sigillo si posa, il giudizio cala. Se vuoi protestare, fallo in fretta.",
	},
	["cls.paladin.battle.w07.024"] = {
		"Mana per due cure, da tenere da parte comunque vada. Tutto il resto posso spenderlo qui.",
		"Tenere abbastanza riserva per curarmi due volte. Il resto va nello scontro.",
	},
	["cls.paladin.battle.w07.025"] = {
		"Fatti avanti e lasciati pesare. La Luce ha bilance oneste.",
		"Sali sulla bilancia. Leggerò io cosa dice.",
	},
	["cls.paladin.battle.w07.026"] = {
		"piega le dita dentro il guanto d'arme, una alla volta, poi le chiude attorno all'impugnatura.",
		"rotea le spalle una volta sotto l'armatura e lascia uscire un lungo respiro dal naso.",
	},
	["cls.paladin.battle.w07.027"] = {
		"Preferirei essere da qualche parte a riparare steccati. Ma eccoti qui, ed eccomi qui.",
		"Ci sono cento cose che preferirei fare. Nessuna ti lascerebbe passare.",
	},
	["cls.paladin.battle.w07.028"] = {
		"Sapevo che stavi arrivando, cosa fredda. La Luce ha fiuto per quelli come te.",
		"Un paladino non lo si coglie di sorpresa. I morti si tradiscono con quel gelo.",
	},
	["cls.paladin.battle.w07.029"] = {
		"Ogni volta che chiedo, mi aspetto un po' il silenzio. Ogni volta, il calore arriva lo stesso.",
		"Non mi fido mai del tutto che la Luce risponda, finché non lo fa. Finora non mi ha mai {g:deluso|delusa}; io continuo a controllare.",
	},
	["cls.paladin.battle.w07.030"] = {
		"Hai attaccato briga con un giuramento. I giuramenti non si stancano.",
		"Ho promesso di fermare cose come te. Le promesse non si stancano, e io nemmeno.",
	},
	["cls.paladin.battle.w07.031"] = {
		"Niente predica oggi. Ti becchi la versione breve.",
		"Ti farei prima una predica, ma non mi sembri il tipo che ascolta.",
	},
	["cls.paladin.battle.w07.032"] = {
		"affronta la cosa morta a viso aperto, e la luce che {g:lo|la} avvolge si fa più netta, bianca e dura come una selce percossa.",
		"avanza verso il non morto senza esitare, e un bagliore duro si raccoglie lungo le braccia.",
	},
	["cls.paladin.battle.w07.033"] = {
		"La Luce c'era prima di te, demone, e ci sarà dopo.",
		"Ogni patto che ti ha portato fin qui finisce in questo punto.",
	},
	["cls.paladin.battle.w07.034"] = {
		"Non la rabbia. Mai la rabbia. Solo la prossima cosa giusta, fatta fino in fondo.",
		"Pulito. Un paladino che combatte con rabbia è solo un soldato che luccica.",
	},
	["cls.paladin.battle.w07.035"] = {
		"Colpite forte e non preoccupatevi dei lividi. Rimettervi in sesto è compito mio.",
		"Menate pure. Qualunque cosa vi faccia, io la disfo.",
	},
	["cls.paladin.battle.w07.036"] = {
		"Corazza completa, un sigillo e la Luce alle spalle. E tu hai portato... quello. Che coraggio.",
		"Io ho la corazza, un sigillo e un'aura. Tu hai l'entusiasmo. È un inizio.",
	},
	["cls.paladin.battle.w07.037"] = {
		"Diamo alla Luce qualcosa che valga la pena di guardare.",
		"Ecco uno scontro di cui la Luce potrà andare fiera. Facciamo in modo che sia così.",
	},
	["cls.paladin.battle.w07.038"] = {
		"Un respiro per la Luce, uno per il giuramento, e il terzo per lo scontro.",
		"Inspira ciò in cui credo. Espira ciò che temo. Poi via.",
	},
	["cls.paladin.battle.w07.039"] = {
		"Questa parte del giuramento nessuno la dipinge sugli stendardi. Ma ne fa parte lo stesso.",
		"La gloria è roba da canzoni. Questo è solo il giuramento che fa il suo lavoro.",
	},
	["cls.paladin.battle.w07.040"] = {
		"Che finisca in fretta, per tutti e due. È l'unica preghiera che ho per questo momento.",
		"Rapido e pulito, se ci riesco. Questo lo devo perfino a un nemico.",
	},
	["cls.paladin.battle.w07.041"] = {
		"Sono solo una lanterna. Vedrai cosa pensa di te la Luce che ho alle spalle.",
		"Non guardare me. Guarda cosa brilla attraverso.",
	},
	["cls.paladin.battle.w07.042"] = {
		"inchioda il nemico con uno sguardo fermo, di quelli che hanno già emesso il verdetto.",
		"socchiude gli occhi sul nemico come chi legge un atto d'accusa, e lo trova vero riga per riga.",
	},
	["cls.paladin.battle.w07.043"] = {
		"Bene, uno scontro. Cominciavo a pensare di essermi {g:armato|armata} per niente.",
		"Ah, finalmente. Tutta quest'armatura cominciava a sentirsi sola.",
	},
	["cls.paladin.battle.w07.044"] = {
		"Spingi pure. Mi hanno {g:addestrato|addestrata} a essere la cosa che non si sposta.",
		"Un passo indietro puoi farmelo fare. Il secondo ti costerà caro.",
	},
	["cls.paladin.battle.w07.045"] = {
		"Aspetta il primo colpo. Rispondi al secondo.",
		"Non buttare tutto all'inizio. Un paladino resiste più a lungo: è tutto qui il mestiere.",
	},
	["cls.paladin.battle.w07.046"] = {
		"Nel nome della Luce, e con le mie due mani.",
		"La forza la presta la Luce. Le mani sono mie, e sono pronte.",
	},
	["cls.paladin.battle.w07.047"] = {
		"Ho affrontato di peggio, e me ne sono sempre {g:andato|andata} sulle mie gambe.",
		"Qualunque cosa tu sia, ho visto di più brutto, e gli sono {g:sopravvissuto|sopravvissuta}.",
	},
	["cls.paladin.battle.w07.048"] = {
		"posa il palmo sul proprio petto per un battito, come se vi imprimesse un sigillo prima dello scontro.",
		"abbassa il capo per il tempo di un respiro, poi lo rialza con lo sguardo di chi ha ricevuto risposta.",
	},
	["cls.paladin.battle.w07.049"] = {
		"Avanti. Non mi sono {g:messo|messa} addosso tutto questo metallo per restare a guardare.",
		"Allora? Non ho trascinato fin qui tutto quest'acciaio per ammirare il panorama.",
	},
	["cls.paladin.battle.w07.050"] = {
		"Ogni scontro potrebbe chiudere la partita. Ho imparato a mettere in ordine i miei conti nello spazio di un respiro.",
		"Se è questo lo scontro che mi porterà via, che mi trovi a fronte alta.",
	},
	["cls.paladin.battle.w07.051"] = {
		"Da qualche parte c'è chi dorme più tranquillo perché io sono qui fuori. Mi basta come motivo.",
		"Ogni nemico fermato qui è uno che non arriverà mai a un villaggio. Per me basta.",
	},
	["cls.paladin.battle.w07.052"] = {
		"Se va male, ho un trucco. Se va malissimo, ho uno scudo che nessuno può toccare.",
		"Fai del tuo peggio. Posso fare una cosa che pochi sanno fare: smettere di farmi colpire, per un po'.",
	},
	["cls.paladin.buff.w07.001"] = {
		"Prima una benedizione sulle mie spalle. Chiedere aiuto fa parte del giuramento, anche quando a rispondere sono io.",
		"Mi benedico come controllerei le cinghie: non per vanità, solo perché sono io a doverla portare.",
		"Prima di chiunque altro, benedico chi so che ci sarà di sicuro. Cioè io, guarda caso.",
	},
	["cls.paladin.buff.w07.002"] = {
		"posa la mano aperta sul proprio cuore e pronuncia una parola breve, e un oro tenue affonda sotto il palmo.",
		"si benedice con la sobria praticità di chi si allaccia gli stivali, e il bagliore svanisce quasi prima di vedersi.",
	},
	["cls.paladin.buff.w07.003"] = {
		"La Potenza, sul mio braccio. L'arma sembra più leggera, e quindi il prossimo colpo cadrà più pesante.",
		"Un po' più di peso dietro ogni colpo. La Luce non si fa pregare quando c'è da prestare muscoli.",
		"Prima la Potenza. Come spenderla, lo scoprirò strada facendo.",
	},
	["cls.paladin.buff.w07.004"] = {
		"La Saggezza per me, che in pratica vuol dire mana che si riempie più in fretta. Quella vera devo ancora cercarla a piedi.",
		"La chiamano Saggezza. Fa riempire il mio pozzo più in fretta. Se poi mi renda più {g:saggio|saggia}, è tutto da vedere.",
	},
	["cls.paladin.buff.w07.005"] = {
		"Intoccabile per qualche battito, e senza poter menare un colpo. Non è coraggio, ma è il modo di averne ancora dopo.",
		"Nessuna lama mi raggiunge, e ho le mani legate. Uno strano dono, e in questo momento ben accetto.",
	},
	["cls.paladin.buff.w07.006"] = {
		"Che provino a inchiodarmi adesso. Per un po' i miei piedi rispondono solo a me.",
		"Niente lacci, niente prese, niente rallentamenti. Per qualche respiro il terreno non può trattenermi.",
	},
	["cls.paladin.buff.w07.007"] = {
		"La Salvezza, su di me. Non per l'anima: solo perché il bruto là davanti guardi qualcun altro.",
		"Il nome più solenne di tutti, e serve solo a rendermi meno interessante per chi è arrabbiato.",
	},
	["cls.paladin.buff.w07.008"] = {
		"Una benedizione che rende più forte la Luce quando cade su di me. Strana cosa da chiedere, a meno di sapere quanto spesso me ne servirà.",
		"Luce sulla Luce. La prossima guarigione che mi raggiunge andrà più a fondo.",
	},
	["cls.paladin.buff.w07.009"] = {
		"Mi sono {g:benedetto|benedetta} da {g:solo|sola}. Qualcuno doveva farlo, ed ero proprio qui.",
		"La prima benedizione va a chi benedice. Il grado ha i suoi privilegi.",
		"Benedizione fai-da-te. Finora il destinatario non si lamenta.",
	},
	["cls.paladin.buff.w07.010"] = {
		"Benedire me {g:stesso|stessa} ha un che di vanitoso. Poi ricordo chi deve stare in prima fila, e la sensazione passa.",
		"È superbia, puntare la Luce su di me? Ho deciso che è manutenzione. La Luce non ha obiettato.",
		"C'è un po' di superbia, nel posare la Luce sul mio capo. Lascio andare la superbia e tengo la benedizione.",
	},
	["cls.paladin.buff.w07.011"] = {
		"si ferma un attimo a benedirsi, veloce come chi stringe una cintura, poi riparte.",
		"mormora una benedizione sul proprio capo e se la sistema addosso come un vecchio mantello.",
	},
	["cls.paladin.buff.w07.012"] = {
		"Benedizione fatta. Vediamo cosa mi riserva la strada.",
		"Ecco. La Luce è sulle mie spalle; il resto spetta al mio braccio.",
		"La benedizione è addosso. Qualunque cosa ci sia davanti, ci troverà in due.",
	},
	["cls.paladin.buff.w07.013"] = {
		"Una benedizione data a se stessi è più silenziosa di una donata. Nessuno che alzi lo sguardo, nessuno che annuisca. Solo il calore che si posa.",
		"Mi piace l'istante in cui la benedizione si posa: nessun bagliore, solo un piccolo calore che resta, come un sasso che ha trattenuto il sole.",
		"Posata su di me, la benedizione non fa scena. Si sistema e basta, come un inquilino che paga puntuale.",
	},
	["cls.paladin.buff.w07.014"] = {
		"Su ogni schiena può stare una sola mia benedizione, compresa la mia. Scegliere quale è un piccolo rompicapo onesto.",
		"Pochi minuti di benedizione, poi svanisce e la rinnovo. Anche la fede va rinnovata.",
	},
	["cls.paladin.buff.w07.015"] = {
		"Chiederei a un sacerdote, ma il più vicino non è mai dove sono io. Quindi.",
		"Benedirsi da sé: la versione della Luce del tagliarsi i capelli da soli. Funziona, se nessuno guarda troppo da vicino.",
	},
	["cls.paladin.buff.w07.016"] = {
		"Luce, accompagnami fin dove arrivo, e un passo oltre.",
		"Luce sul mio capo e sulle mie mani. Basterà come fodera per l'armatura.",
	},
	["cls.paladin.buff.w07.017"] = {
		"La prima benedizione la do a me, per una ragione egoista: un paladino che cade presto non protegge nessuno.",
		"Restare in piedi fa parte del tenere in piedi gli altri. La benedizione va dove serve di più, e a volte è qui.",
	},
	["cls.paladin.buff.w07.101"] = {
		"Una benedizione per te. Non pesa niente e porterà comunque un po' del tuo carico.",
		"Ecco. La Luce è sulle tue spalle adesso, oltre che sulle mie.",
		"Portala con te. La Luce è generosa, ma le piace essere usata.",
	},
	["cls.paladin.buff.w07.102"] = {
		"Benedizione fatta. No, non serve inginocchiarsi. Anche se non guasterebbe.",
		"Hai la benedizione. Cerca di non montarti la testa: era destinata alle braccia.",
	},
	["cls.paladin.buff.w07.103"] = {
		"Non mi serve sapere un nome per augurare del bene a qualcuno. Nemmeno la benedizione lo chiede.",
		"Qualunque cosa stia per fare, la farà con un po' più di forza. Spero sia qualcosa di buono.",
		"La benedizione arriva e nessuno si volta. Bene. Una benedizione non dovrebbe aver bisogno di pubblico.",
	},
	["cls.paladin.buff.w07.104"] = {
		"alza la mano aperta verso l'altra persona, e un oro tenue le si posa addosso come polline, e sparisce.",
		"traccia un breve segno verso chi ha di fronte, semplice e sicuro come una stretta di mano.",
	},
	["cls.paladin.buff.w07.105"] = {
		"Adesso niente può toccarti, e tu non puoi toccare niente. Fatti indietro e respira.",
		"Per qualche battito sei intoccabile. Usali per metterti al sicuro, non per strafare.",
	},
	["cls.paladin.buff.w07.106"] = {
		"Le gambe sono di nuovo tue. Corri o carica, come preferisci.",
		"Qualunque cosa ti tenesse i piedi ha appena perso la presa. Muoviti.",
		"Libertà di movimento. Non sprecarla restando lì.",
	},
	["cls.paladin.buff.w07.107"] = {
		"La Potenza, per te. Colpisci un po' più forte di quanto volevi.",
		"Il tuo braccio pesa di più, adesso, nel senso buono. Mettilo all'opera.",
		"Ora nel tuo colpo c'è un po' della forza della Luce. Mira bene.",
	},
	["cls.paladin.buff.w07.108"] = {
		"La Salvezza, a chi ne ha bisogno. L'anima resta affar suo; questa serve solo a far guardare altrove le cose arrabbiate.",
		"Un nome solenne per un favore discreto: chi la porta diventa semplicemente meno interessante da inseguire.",
	},
	["cls.paladin.buff.w07.109"] = {
		"A qualcuno serve un braccio più forte, a qualcun altro un pozzo di mana più pieno. Un'occhiata, e decido.",
		"Scegliere una benedizione per qualcuno è una lettura rapida: come si regge, cosa porta, cosa sta per fare.",
	},
	["cls.paladin.buff.w07.110"] = {
		"Una buona benedizione è come una buona cinghia: nessuno ci pensa finché non regge al momento giusto.",
		"Entro un minuto si dimenticherà di averla. Va bene così: la benedizione, invece, non si dimentica di chi la porta.",
	},
	["cls.paladin.buff.w07.111"] = {
		"Va' nella Luce, ed esci dall'altra parte di qualunque cosa ti aspetti.",
		"Che regga quando ne avrai più bisogno, e passi inosservata il resto del tempo.",
		"Che la Luce ti tenga in piedi, e me abbastanza {g:vicino|vicina} da aiutarti.",
	},
	["cls.paladin.farewell.w07.001"] = {
		"Addio. Cammina a testa alta, e tieni qualcuno alle spalle.",
		"Buona strada. Se i guai ti trovano, trova un paladino.",
		"Alla prossima. Occhio ai posti bui, e che l'orgoglio non ti impedisca di chiedere aiuto.",
	},
	["cls.paladin.greet.w07.001"] = {
		"Salute. Se c'è qualche guaio sulla tua strada, mi piacerebbe saperlo.",
		"Salve. Ti serve una mano, una benedizione o solo qualcuno che cammini accanto? Ho tutte e tre le cose.",
	},
	["cls.paladin.greet.w07.002"] = {
		"Salve. Sì, l'armatura pesa. No, non mi dà fastidio. Sì, lo chiedono tutti.",
		"Salute. Non badare al bagliore: è quasi del tutto innocuo.",
	},
	["cls.paladin.heal.w07.001"] = {
		"La Luce lavora sotto l'armatura, dove io non arrivo, e scalda i lividi a uno a uno.",
		"Nessuna fibbia la ferma. La Luce scivola sotto l'armatura e trova ogni livido che non avevo contato.",
		"Per questo non devo slacciare nemmeno una cinghia. La Luce entra sotto l'armatura come se conoscesse la strada.",
	},
	["cls.paladin.heal.w07.002"] = {
		"Chiedere la Luce per me sembra ancora come prendersi il posto migliore a tavola. Lo prendo lo stesso: una guardia a terra non protegge nessuno.",
		"C'è una piccola vergogna nel rivolgere la Luce sulla mia pelle. Più piccola di quella di cadere dove altri avevano bisogno di me.",
	},
	["cls.paladin.heal.w07.003"] = {
		"Luce, un poco per me. Poi di nuovo agli altri.",
		"Rimettimi in sesto in fretta, Luce. C'è ancora del lavoro in piedi.",
		"Luce, rimettimi in piedi. Al resto penso io.",
	},
	["cls.paladin.heal.w07.004"] = {
		"posa la mano guantata ben aperta sulle proprie costole, e un tepore dorato si allarga dal palmo.",
		"si preme il palmo sul fianco e mormora poche parole semplici; la luce che risponde è quieta e scrupolosa.",
		"chiude gli occhi per la durata di un respiro, e un chiarore pallido {g:gli|le} scorre addosso dalle spalle in giù.",
	},
	["cls.paladin.heal.w07.005"] = {
		"Luce Sacra è una parola lenta da pronunciare con qualcosa che ti colpisce. Ogni colpo ne allontana un po' la fine.",
		"La Luce Sacra vuole tutto il respiro, dall'inizio alla fine. Chi mi sta menando colpi non sembra mai capirlo.",
		"A metà della Luce Sacra, un altro colpo, e le parole inciampano. Riprendi la frase dove è caduta e finiscila.",
	},
	["cls.paladin.heal.w07.006"] = {
		"Fuori dalla mischia c'è tempo per la guarigione lunga. Luce Sacra, lenta e completa, e nessuno a interromperla.",
		"La Luce Sacra è una cura per i momenti di quiete: lunga da pronunciare, completa quando arriva. Questo è uno di quei momenti.",
	},
	["cls.paladin.heal.w07.007"] = {
		"Lampo di Luce. Non è molto, ma è rapido, e rapido è tutto quello che posso permettermi con questo addosso.",
		"Un lampo, non un incendio. Mi tiene in piedi tra un colpo e l'altro, ed è tutto ciò che gli chiedo.",
		"Piccolo e veloce, come un punto di cucito dato di corsa. Il Lampo di Luce è fatto per momenti così.",
	},
	["cls.paladin.heal.w07.008"] = {
		"Una veloce. Non ho tempo per la versione lunga.",
		"Preghiera corta, guarigione corta. Neanche lo scontro ha finito.",
	},
	["cls.paladin.heal.w07.009"] = {
		"Il Lampo di Luce costa poco e dà poco. Tre lampi costano comunque meno di una caduta.",
		"Preferisco tre piccole cure a una grande che si fa aspettare. Alla Luce non dispiace sentirsi chiedere spesso.",
	},
	["cls.paladin.heal.w07.010"] = {
		"Ho sempre pensato di spenderla per qualcun altro. Oggi quel qualcun altro sono io, e alla Luce non sembra importare.",
		"L'ultima misericordia, versata nelle mie stesse ferite. Non è come la immaginavo, ma un paladino a terra non spende più niente.",
	},
	["cls.paladin.heal.w07.011"] = {
		"si posa entrambe le mani sul petto, e la luce si riversa tutta in una volta: il volto resta pallido, il corpo intero.",
		"si preme una mano sul cuore; un bagliore bianco e oro {g:lo|la} attraversa da capo a piedi, e con esso se ne va ogni stilla di magia.",
	},
	["cls.paladin.heal.w07.012"] = {
		"Ferite chiuse, e non una goccia di mana nemmeno per un sigillo. Il resto dello scontro lo fa il braccio.",
		"Il corpo è pieno e il pozzo asciutto fino al fondo. Da qui in poi combatto come un soldato qualunque, e spero che basti.",
		"Ferite chiuse in un colpo solo, mana sparito nello stesso istante. Adesso restiamo io e l'arma.",
	},
	["cls.paladin.heal.w07.013"] = {
		"Certi giorni mi chiedo se la Luce risponda a me o solo all'abitudine di chiedere. Il taglio si chiude comunque.",
		"Se sia grazia o solo esercizio, non sempre lo capisco. Il sangue si ferma, e ho smesso di aver bisogno di saperlo.",
	},
	["cls.paladin.heal.w07.014"] = {
		"Il giuramento dice di proteggere chi non si regge in piedi. In questo momento sono io, e il giuramento non fa eccezioni.",
		"Proteggi chi è caduto, dice il giuramento. Non aggiunge «tranne te». Ho controllato.",
	},
	["cls.paladin.heal.w07.015"] = {
		"Tutta quella fatica, e la Luce la cancella in un respiro. Riprova.",
		"Ferite chiuse. Temo che dovrai ricominciare da capo.",
		"Ogni graffio che mi hai fatto, sparito. Ricominciamo?",
	},
	["cls.paladin.heal.w07.016"] = {
		"Sembra sempre di avvicinarsi troppo a una forgia: prima il calore sul viso, poi dentro tutte le ossa.",
		"Prima un tepore sulla pelle, poi più a fondo, finché anche i vecchi dolori si ricordano di essere stati giovani.",
	},
	["cls.paladin.heal.w07.017"] = {
		"Il mana speso sulla mia pelle è un giudizio che non scaglierò dopo. Ne vale la pena, finché a scagliare resto io.",
		"Ogni cura che tengo per me è un sigillo che poi non potrò permettermi. Il braccio dovrà lavorare di più per compensare.",
	},
	["cls.paladin.heal.w07.018"] = {
		"ruota piano la spalla mentre il dolore svanisce, saggiando l'articolazione come si prova il cardine di una porta.",
		"piega due volte la mano risanata, poi una terza, come se non se ne fidasse ancora del tutto.",
		"butta fuori l'aria dal naso in un lungo respiro e si raddrizza, il dolore sparito dalla postura.",
	},
	["cls.paladin.heal.w07.019"] = {
		"Ecco. Le costole smettono di protestare a ogni respiro.",
		"Respirare non fa più male. Avevo dimenticato quanto spazio ci sia in una boccata d'aria.",
		"La fitta al fianco molla la presa, e di colpo riesco di nuovo a stare {g:dritto|dritta}.",
	},
	["cls.paladin.heal.w07.020"] = {
		"Basta così. Non c'è tempo per essere {g:integro|integra}, solo per restare in piedi.",
		"Non del tutto a posto, solo abbastanza. Per ora dovrà bastare.",
		"Meglio a metà della guarigione che a metà strada dalla tomba.",
	},
	["cls.paladin.heal.w07.021"] = {
		"In quella ci sono {g:entrato|entrata} a occhi aperti. La cura è gratis; la lezione la pago in orgoglio.",
		"Darei la colpa al nemico, ma l'ho visto arrivare e non ho fatto un passo.",
		"Guarire la ferita è facile. Guarire dalla figuraccia che l'ha causata richiederà più tempo.",
	},
	["cls.paladin.heal.w07.022"] = {
		"Una boccetta per me, il mana per quel che verrà. La Luce non se la prenderà per un po' di parsimonia.",
		"Perché sprecare una preghiera su di me, quando basta una fiaschetta? La Luce la tengo per i sigilli.",
	},
	["cls.paladin.heal.w07.023"] = {
		"Sa di pentola di rame. Funziona a meraviglia.",
		"Amara come l'umore di un sergente. Bene, sta facendo effetto.",
		"Bleah. Chi le prepara non ne ha mai dovuta bere una.",
	},
	["cls.paladin.heal.w07.024"] = {
		"stappa la fiala coi denti, sputa via il tappo e la vuota senza abbassare la guardia.",
		"manda giù una pozione rossa tutta d'un fiato e getta via la fiala vuota.",
	},
	["cls.paladin.heal.w07.025"] = {
		"Un paladino che tracanna da una fiala come un mercenario qualunque. L'umiltà ha tante forme; questa ha un sapore orribile.",
		"Niente bagliore, niente mani calde, solo una bottiglia. Mi fa bene ricordare che la Luce non è l'unica misericordia al mondo.",
	},
	["cls.paladin.heal.w07.026"] = {
		"Quando il mana è finito, la bottiglia risponde ancora. Benedetto l'alchimista che l'ha riempita.",
		"Il mana finisce; alle fiale non importa. È tutto il loro fascino.",
	},
	["cls.paladin.heal.w07.027"] = {
		"Chiunque abbia fatto questa pietra, preferisco non chiedere come. È calda nella mano, e la ferita si chiude lo stesso.",
		"Una pietra verde che crepita appena, e sono di nuovo {g:intero|intera}. Ringrazierò chi l'ha fatta e non farò altre domande.",
	},
	["cls.paladin.heal.w07.028"] = {
		"Una pietra in meno in tasca, una ferita in meno addosso. Buon cambio.",
		"Addio pietra. A chi l'ha fatta devo un grazie.",
	},
	["cls.paladin.heal.w07.029"] = {
		"stringe nel pugno una piccola pietra verde finché non si sbriciola, e il colore riaffiora sul suo viso.",
		"riduce in polvere la pietra verde con una mano sola e butta fuori il fiato mentre il chiarore pallido {g:lo|la} pervade.",
	},
	["cls.paladin.heal.w07.030"] = {
		"I vecchi paladini hanno un detto: un cavaliere troppo orgoglioso per curarsi è solo un caduto che ha preso la strada lunga.",
		"«Prima curati, poi pensa alla linea», dicono i vecchi paladini. Sembra egoismo, finché non hai visto una linea spezzarsi.",
	},
	["cls.paladin.heal.w07.031"] = {
		"La Luce mi cura esattamente come curerebbe uno sconosciuto. Niente di più perché la servo. Lo trovo stranamente consolante.",
		"Nessun favore per i devoti. La Luce chiude i miei tagli con la stessa cura semplice che darebbe a chiunque.",
	},
	["cls.paladin.heal.w07.032"] = {
		"Per la Luce, non ancora.",
		"Luce, tienimi insieme ancora un po'.",
		"Non qui, non adesso. Risanami, Luce.",
	},
	["cls.paladin.heal.w07.033"] = {
		"fa un passo indietro dalla mischia, il capo chino per un solo respiro, e si rifà avanti mentre il bagliore svanisce ancora dall'armatura.",
		"si gira sotto un colpo, mormora una parola rapida, e un lampo dorato sigilla lo squarcio prima che arrivi il successivo.",
	},
	["cls.paladin.heal.w07.034"] = {
		"La Luce mi risponde in fretta, ogni volta. È proprio il genere di cosa di cui un paladino non deve mai cominciare a vantarsi.",
		"Chiedo, e la ferita si chiude. Sarebbe facile credermi speciale. Mi sforzo molto di non farlo.",
	},
	["cls.paladin.heal.w07.035"] = {
		"La Luce non lascia cicatrici. Certi giorni ne vorrei una, solo per ricordare quanto è costato.",
		"Neanche un segno sulla pelle. Il corpo dimentica così in fretta. Cerco di ricordare io al posto suo.",
	},
	["cls.paladin.heal.w07.036"] = {
		"si abbassa su un ginocchio mentre la cura fa effetto, e resta così un momento più del necessario.",
		"allenta una cinghia al collo e aspetta, gli occhi socchiusi, che se ne vada l'ultimo dolore.",
	},
	["cls.paladin.heal.w07.037"] = {
		"Meglio. Molto meglio. Buffo come il dolore lo noti solo quando se ne va.",
		"Così va bene. Tutte le giunture si sciolgono insieme, come un pugno che si apre.",
		"Eccolo che se ne va. Il dolore fa i bagagli e sparisce senza nemmeno protestare.",
	},
	["cls.paladin.heal.w07.038"] = {
		"Giudizio scagliato, un respiro per curarmi, e di nuovo a menare. Un istruttore lo chiamerebbe lavoro pulito.",
		"Scaglio il giudizio, chiudo la mia ferita mentre colpisce, e riprendo a menare. Anche curarsi è un passo dell'esercizio.",
	},
	["cls.paladin.heal.w07.039"] = {
		"Un guaritore in armatura pesante. I sacerdoti non sanno mai bene cosa pensare di noi, e nemmeno i guerrieri.",
		"Troppa armatura per un guaritore, troppa misericordia per un soldato. Adesso, essere entrambe le cose mi tiene in vita.",
	},
	["cls.paladin.heal.w07.040"] = {
		"In piedi, muro. Chi mi sta dietro ne ha ancora bisogno.",
		"Uno scudo bucato non protegge nessuno. Tappa i buchi, poi fatti di nuovo avanti.",
		"Contano sul fatto che la prima linea tenga. La prima linea sono io, quindi si cura per prima.",
	},
	["cls.paladin.heal.w07.041"] = {
		"Non c'è nessun altro da chiamare. Solo la Luce e io: una compagnia più piccola di quanto sembri, e migliore.",
		"Senza nessuno intorno, mi curo da me. Alla Luce non sembra pesare una lista di pazienti così corta.",
	},
	["cls.paladin.heal.w07.042"] = {
		"Ecco fatto. Allora, a che punto eravamo?",
		"Meglio. Ora, io e te avevamo un conto in sospeso.",
		"Bene. Tutto sistemato, e la pazienza non è aumentata.",
	},
	["cls.paladin.heal.w07.043"] = {
		"Io sono solo la lampada; la Luce è la fiamma. Anche una lampada va riparata ogni tanto, perché la fiamma abbia dove stare.",
		"Ciò che la Luce mi restituisce, me lo restituisce perché il lavoro continui. Non per me. Per il lavoro.",
	},
	["cls.paladin.heal.w07.044"] = {
		"La carne si rimargina più in fretta della stanchezza. Sulla stanchezza la Luce non ha mai avuto granché da dire.",
		"Il taglio è sparito; la fatica resta. Nessun incantesimo che conosco arriva così in fondo.",
	},
	["cls.paladin.heal.w07.045"] = {
		"si asciuga il sangue dalla fronte col dorso del polso, mentre la ferita sotto si richiude.",
		"sputa una volta, fa una smorfia, e scrolla le spalle mentre il dolore allenta la presa.",
	},
	["cls.paladin.heal.w07.046"] = {
		"Le mie cure le tengo brevi. La Luce è spesa meglio per chi non ha un'armatura come la mia.",
		"Quanto basta per me, non di più. Presto qualcuno di più fragile avrà bisogno del resto.",
	},
	["cls.paladin.heal.w07.047"] = {
		"Ogni volta che la Luce chiude una mia ferita, sembra dire la stessa cosa breve: non ancora, c'è altro da fare.",
		"La risposta della Luce alle mie ferite è sempre la stessa: servi ancora per un po'. Non mi stanco mai di sentirla.",
	},
	["cls.paladin.heal.w07.048"] = {
		"Tutto a posto. Se qualcuno chiede, qui non è successo niente.",
		"E di quel livido non resta niente. Non ne parleremo mai più.",
	},
	["cls.paladin.heal.w07.049"] = {
		"Mi hanno insegnato a chiedere alla Luce in modo semplice, senza fronzoli. Risanami. Basta una parola, se è sentita.",
		"Niente paroloni per le mie ferite. Una richiesta semplice, fatta con onestà, e la Luce fa il resto.",
	},
	["cls.paladin.heal.w07.050"] = {
		"Tutto quello che ho. Prendilo, Luce, e rimettilo dentro di me.",
		"Fino all'ultima goccia, Luce, in questo solo corpo.",
	},
	["cls.paladin.heal.w07.051"] = {
		"fa scorrere un rapido guizzo di luce sulla propria ferita, quasi senza fermarsi tra un colpo e l'altro.",
		"pronuncia secca una parola breve, e un lampo dorato sfiora l'armatura e svanisce.",
	},
	["cls.paladin.heal.w07.052"] = {
		"Un giorno chiederò e non basterà. Non oggi. Oggi la ferita si chiude, e mi prendo l'oggi.",
		"Prima o poi ci sarà una ferita che nessuna Luce potrà chiudere. Non la temo molto. Solo, non voglio che sia questa.",
	},
	["cls.paladin.heal.w07.053"] = {
		"I tagli sono chiusi, ma sotto tutta quest'armatura sudo ancora. Certe miserie la Luce le lascia a me.",
		"Ferite chiuse, eppure ho ancora caldo, mi prude ancora tutto e sono ancora {g:chiuso|chiusa} in questo ferro. La Luce si occupa delle ferite, non della comodità.",
	},
	["cls.paladin.heal.w07.054"] = {
		"s'inginocchia un momento in silenzio, una mano sulla ferita, finché la luce dorata sotto il palmo non si spegne.",
		"china il capo e resta immobile, e il dolore si placa mentre un bagliore lieve si ritira sotto le dita.",
	},
	["cls.paladin.heal.w07.055"] = {
		"Che mi guardi pure mentre mi curo. Che capisca quanto ci vorrà.",
		"Ogni ferita che chiudo è una che dovrà riaprire. Posso andare avanti più a lungo del mio avversario.",
	},
	["cls.paladin.heal.w07.056"] = {
		"Non pretendo di capire la Luce. So che risponde quando sanguino, e per un soldato è fede sufficiente.",
		"I sacerdoti possono discutere su cosa sia la Luce. In mezzo a uno scontro, è ciò che chiude il taglio.",
	},
	["cls.paladin.heal.w07.057"] = {
		"Le ferite si chiudono, la collera no. Chi me le ha fatte sta per sentire la differenza.",
		"Il dolore se n'è andato; il rancore resta. Lo spenderò con giudizio.",
	},
	["cls.paladin.heal.w07.058"] = {
		"esamina con occhio critico l'avambraccio appena risanato, come se il lavoro andasse rimandato indietro.",
		"si dà due pacche sul fianco, con aria soddisfatta, come chi controlla di avere ancora la borsa.",
	},
	["cls.paladin.heal.w07.059"] = {
		"La mano mi trema sopra la ferita. La Luce che vi passa attraverso, mai.",
		"Sono {g:stanco|stanca}, e si vede dalle mani. Strano quanto sia ferma la Luce che le attraversa.",
	},
	["cls.paladin.heal.w07.060"] = {
		"La Luce Sacra è stata la prima cura che mi abbiano insegnato, ed è ancora quella a cui le mani arrivano senza pensarci.",
		"La più semplice delle preghiere che conosco. Luce Sacra, detta sulla mia ferita, regolare come un battito.",
	},
	["cls.paladin.heal.w07.061"] = {
		"Una lezione per dopo: prima la guardia, poi il colpo. La Luce non dovrebbe dover rimediare due volte allo stesso errore.",
		"Quella è colpa del mio gioco di gambe. Ora curo la ferita, domani sistemo i piedi.",
	},
	["cls.paladin.heal.w07.062"] = {
		"Tenete duro un momento! Mi curo e arrivo!",
		"Due respiri e ci sono. Tenete la linea!",
	},
	["cls.paladin.heal.w07.063"] = {
		"Un attimo fa mi colava il sangue nello stivale. Adesso resta solo lo sciacquio a ricordarmelo.",
		"Il sangue ha smesso di scorrere. Lo stivale, purtroppo, ne è ancora pieno.",
	},
	["cls.paladin.heal.w07.064"] = {
		"muove la mascella da una parte all'altra, saggiando un livido che non c'è più.",
		"inspira a fondo, trattiene il fiato e lo lascia andare piano, come per controllare che ogni costola sia al suo posto.",
	},
	["cls.paladin.heal.w07.065"] = {
		"La Luce perdona le mie ferite più in fretta di quanto io perdoni gli errori che me le hanno procurate.",
		"Mi risana senza una parola di rimprovero. Farei bene a imparare quel tipo di misericordia verso {g:me stesso|me stessa}.",
	},
	["cls.paladin.heal.w07.066"] = {
		"Un lampo veloce per sistemare quel che resta. Inutile rimettersi in cammino con graffi che posso cancellare.",
		"Solo la cura piccola, per finire il lavoro. I graffi non valgono una cura lunga.",
	},
	["cls.paladin.heal.w07.067"] = {
		"Mani ferme. Dillo giusto la prima volta; non ce ne sarà una seconda.",
		"Non correre con le parole. Una cura pasticciata è peggio di niente.",
		"Respira, poi chiedi. La paura fa uscire le parole storte.",
	},
	["cls.paladin.heal.w07.068"] = {
		"arretra barcollando di un passo, e quando il piede tocca terra il peggio della ferita si sta già chiudendo.",
		"vacilla sotto il colpo, pianta i piedi, e lascia che la cura faccia presa prima di rispondere a tono.",
	},
	["cls.paladin.heal.w07.069"] = {
		"Grazie. Non solo per la guarigione, ma perché ci sei ancora, anche quando non meritavo di chiedere.",
		"Grazie, Luce. Non lo dico mai abbastanza, e non me ne sono mai {g:pentito|pentita}.",
	},
	["cls.paladin.heal.w07.401"] = {
		"Non discutere, lascia che faccia effetto. Discuterai dopo.",
		"Guarda me. Alla ferita ci pensa la mia mano.",
		"Butta fuori l'aria piano. Ho quasi finito, e tu stai quasi bene.",
	},
	["cls.paladin.heal.w07.402"] = {
		"La Luce non ha preferiti. È venuta per te perché eri qui, e io l'ho chiesto.",
		"Prendila, e i ringraziamenti tienili per la Luce. Io l'ho solo indirizzata verso di te.",
		"Non è mai stata mia da dare. So soltanto a chi chiederla.",
	},
	["cls.paladin.heal.w07.403"] = {
		"Il respiro si fa regolare prima che il colore riaffiori sulle guance. Ho imparato ad ascoltare quello, per primo.",
		"Un viso risanato sembra sempre più giovane per un istante, come se il dolore l'avesse invecchiato.",
		"Guardo il pugno stretto che torna a schiudersi. È lì che capisco che il lavoro ha attecchito.",
	},
	["cls.paladin.heal.w07.404"] = {
		"si volta di lato per un solo respiro, tende il palmo verso chi soffre e manda la Luce a colmare la distanza.",
		"pronuncia una parola breve su chi soffre, e un oro caldo scorre nella ferita come l'acqua che trova una crepa.",
	},
	["cls.paladin.heal.w07.405"] = {
		"Sei di nuovo a posto. Cerca di restarci almeno finché non ho bevuto un sorso d'acqua.",
		"Fatto. Adesso, per cortesia, smetti di piazzarti dove mena quello grosso.",
		"Ho un'intera predica su come si schiva. Ricordami di fartela, dopo.",
	},
	["cls.paladin.heal.w07.406"] = {
		"In piedi e a combattere. Finché posso alzare una mano, qui non cadi.",
		"Vai pure, prenditi il prossimo colpo se proprio devi. Lo disfo io.",
		"Le tue ferite adesso sono affar mio. Le loro lame sono affar tuo.",
	},
	["cls.paladin.heal.w07.407"] = {
		"La Luce risponde per chiunque io le indichi. Non ho mai dovuto giustificarle la scelta, e questo un poco mi spaventa.",
		"Sono io a decidere a chi va la Luce prima degli altri. Nessun giuramento ha mai reso più facile quella scelta.",
	},
	["cls.paladin.heal.w07.408"] = {
		"Farà male per un giorno. Un dolore sordo è onesto: lascialo fare.",
		"La ferita è chiusa. Alla stanchezza non arrivo: quella se ne va solo col sonno.",
	},
	["cls.paladin.heal.w07.409"] = {
		"dà al punto risanato un'occhiata severa, come un muratore guarda un muro, e sembra {g:soddisfatto|soddisfatta}.",
		"si pulisce l'ultimo bagliore dalle dita sulla manica, come fosse farina, e passa oltre.",
		"flette le dita quando la luce le ha lasciate, come per controllare che siano ancora le sue.",
	},
	["cls.paladin.heal.w07.410"] = {
		"Una veloce. Non aggiusta tutto, ma ti tiene in piedi a menare colpi.",
		"Solo un lampo. La cura vera arriva quando smettono di picchiarti.",
		"Piccola e rapida, come un colpo corto. Avanti.",
	},
	["cls.paladin.heal.w07.411"] = {
		"Un lampo compra secondi, non salvezza. In uno scontro, di solito sono i secondi a essere in vendita.",
		"La luce rapida costa poco ed è sottile. Tre di fila costano più di una fatta come si deve, e a volte il tempo per farla come si deve non c'è.",
	},
	["cls.paladin.heal.w07.412"] = {
		"Resisti finché durano le parole. Questa se la prende comoda perché vuole finire il lavoro.",
		"Quella lenta, quella profonda. Non muoverti: vale l'attesa.",
	},
	["cls.paladin.heal.w07.413"] = {
		"{g:Svuotato|Svuotata} in un solo respiro, e chi ne aveva bisogno sta in piedi. È un patto che rifarei ogni volta.",
		"La mia forza adesso è in quel corpo, tutta quanta. Per un po' andrò piano. Ne vale la pena.",
	},
	["cls.paladin.heal.w07.414"] = {
		"Quello era tutto ciò che avevo. Fa' che non mi penta di dove l'ho speso.",
		"Non ne avrò un'altra per parecchio tempo. Dovrai restare in vita senza.",
	},
	["cls.paladin.heal.w07.415"] = {
		"preme entrambi i palmi sulla persona ferita e si china, e la Luce esce da {g:lui|lei} tutta in una volta, come un fiato trattenuto e poi lasciato andare.",
		"impallidisce mentre il bagliore abbandona le sue mani, come se avesse ceduto anche un po' del proprio colore.",
	},
	["cls.paladin.heal.w07.416"] = {
		"Ecco fatto. Non sarà un lavoro da maestro, ma per la strada basta.",
		"Tutto a posto, e appena un po' di malumore. Mi accontento.",
	},
	["cls.paladin.heal.w07.417"] = {
		"Per la Luce, che questo male finisca qui e non vada oltre.",
		"Luce, tu conosci questa persona meglio di me. Ripara ciò che io non vedo.",
		"Luce, questa persona oggi ha portato abbastanza. Prenditi un po' del peso.",
	},
	["cls.paladin.heal.w07.418"] = {
		"Mana per un'altra di queste, forse due. Poi mi tocca curare con una benda e un pessimo carattere.",
		"Ogni cura è un conto: quanto serve all'altro, quanto ne ho io, quanto me ne servirà per la prossima. I conti la Luce li lascia fare a me.",
	},
	["cls.paladin.heal.w07.419"] = {
		"Respira con me. Dentro... e fuori. Ecco, il peggio è passato.",
		"Segui il mio respiro, lento e regolare. Così il dolore se ne va prima.",
	},
	["cls.paladin.heal.w07.420"] = {
		"Nessuno si dissangua a portata della mia mano. Così dice il giuramento, e io lo mantengo.",
		"Ho giurato di mettermi tra il male e chiunque ne avesse bisogno. Oggi tocca a te.",
		"Il mio giuramento ha una clausola breve, su questo: non cadi dove posso arrivare.",
	},
	["cls.paladin.heal.w07.421"] = {
		"lascia la mano guantata sulla spalla ferita un istante più del necessario.",
		"si inginocchia all'altezza della ferita e pronuncia le parole piano, da vicino, senza alcuna fretta.",
	},
	["cls.paladin.heal.w07.422"] = {
		"Non ho giurato alla Luce per passare il tempo a ricucirti. Eppure eccoci qui.",
		"Avanti, allora. Fatti colpire di nuovo. Tanto non avevo altri programmi.",
	},
	["cls.paladin.heal.w07.423"] = {
		"Non toccarla ancora. La pelle nuova è sottile: dalle un'ora.",
		"Lascia stare le bende. La Luce ha fatto un lavoro più pulito di qualsiasi stoffa.",
	},
	["cls.paladin.heal.w07.424"] = {
		"Quando mando la Luce in qualcun altro, per un attimo ne sento la forma: stanchezza, paura, ostinazione. Poi svanisce.",
		"Strana intimità, questa. Non so come si chiami, e la Luce sa già esattamente dove fa male.",
	},
	["cls.paladin.heal.w07.425"] = {
		"Sistemata la ferita. Adesso vai e faglielo rimpiangere.",
		"Fatto. Va' a dare a chi te l'ha fatto qualcosa su cui riflettere.",
	},
	["cls.paladin.heal.w07.426"] = {
		"Posso chiudere ogni ferita che raggiungo in tempo. Quelle che non raggiungerò mi resteranno dentro più a lungo di tutte queste.",
		"Quando funziona, cerco di non pensare al giorno in cui non arriverà in tempo. Quel giorno arriva per chiunque curi.",
	},
	["cls.paladin.heal.w07.427"] = {
		"Riprendi fiato. La Luce non tiene i conti, e nemmeno io.",
		"Non mi devi niente. La Luce dà senza chiedere, e io cerco di fare lo stesso.",
		"Nessun debito. Passalo a chi ne avrà bisogno dopo di te.",
	},
	["cls.paladin.heal.w07.428"] = {
		"Siediti. No, siediti davvero. Il coraggio può aspettare che smetta di sanguinare.",
		"Smettila di contorcerti. La Luce lavora più in fretta su un corpo che sta immobile.",
	},
	["cls.paladin.heal.w07.429"] = {
		"mormora le parole della guarigione, e per un istante i due volti si illuminano dal basso, come per una lanterna tenuta in mezzo.",
		"unisce le mani per un istante, poi le apre verso chi soffre, e la Luce va dove le mani indicano.",
	},
	["cls.paladin.heal.w07.430"] = {
		"Pensa a qualcosa di piacevole mentre lavoro. La birra va per la maggiore.",
		"Questo non fa male. Faceva male prima: questa è la parte bella.",
	},
	["cls.paladin.heal.w07.431"] = {
		"Le mie mani conoscono questo lavoro meglio della mia testa. Sono già a metà delle parole prima che io abbia deciso.",
		"Sigillo sull'arma, Luce nell'altra mano. Un paladino fa due mestieri insieme, e nessuno dei due aspetta.",
	},
	["cls.paladin.heal.w07.432"] = {
		"Non oggi. La Luce ha posato gli occhi su di te e ha deciso: non oggi.",
		"Qualunque cosa ti stesse venendo a cercare, dovrà mettersi in fila dietro di me.",
	},
	["cls.paladin.heal.w07.433"] = {
		"si porta mezzo passo davanti alla persona ferita e cura senza abbassare la guardia.",
		"tiene un occhio sul nemico e uno sulla ferita, e manda la Luce senza voltare la testa.",
	},
	["cls.paladin.heal.w07.434"] = {
		"Non sei un peso. È per chi è nei guai che ho imparato a farlo.",
		"Non scusarti se sanguini. È la cosa meno interessante che farai oggi.",
		"Non serve che tu dica niente. Continua a respirare: come ringraziamento mi basta.",
	},
	["cls.paladin.heal.w07.435"] = {
		"Ringraziano sempre la Luce. Mai chi è {g:arrivato|arrivata} di corsa, armatura e tutto, per portargliela.",
		"Una parola, un bagliore, e qualcuno smette di morire. Eppure non riesco a darmi troppa importanza.",
	},
	["cls.paladin.heal.w07.436"] = {
		"Abbastanza per camminare. Al resto penseremo al prossimo bivacco.",
		"Questo ti porta fino alla prossima pietra miliare, e probabilmente ben oltre.",
	},
	["cls.paladin.heal.w07.437"] = {
		"Guarisci. È la cosa più semplice che la Luce sappia dire.",
		"Guarisci, e alzati. È tutto ciò che la Luce chiede a chi soffre.",
		"Guarisci. La parola è breve perché alla Luce non ne serve una lunga.",
	},
	["cls.paladin.heal.w07.438"] = {
		"Prima chi tiene la linea, poi chi grida più forte. Quell'ordine non è mai giusto, ed è comunque quello corretto.",
		"Scegliere chi prima è un calcolo freddo per un dono caldo. Lo detesto, e lo faccio lo stesso.",
	},
	["cls.paladin.heal.w07.439"] = {
		"dà un colpetto leggero sul braccio della persona appena curata mentre il bagliore svanisce, come si chiude il coperchio di una scatola ben fatta.",
		"sorride, breve e storto, mentre il viso dell'altra persona ritrova colore.",
	},
	["cls.paladin.heal.w07.440"] = {
		"Luce veloce, rimedio veloce. Se vuoi quella elaborata, smetti di farti colpire così in fretta.",
		"Questa è quella economica. Quella buona te la guadagni con una pausa.",
	},
	["cls.paladin.heal.w07.441"] = {
		"La Luce Sacra si prende il suo tempo, e per tutto quel tempo resto lì con la guardia abbassata. È il prezzo del lavoro fatto bene.",
		"Le parole lunghe della Luce Sacra. Le dico tutte, una per una, sperando che niente mi interrompa.",
	},
	["cls.paladin.jest.w07.001"] = {
		"Quanti paladini servono per accendere una lampada? Uno solo, ma prima ci sarà una breve predica sulla lampada.",
		"Perché i paladini non giocano a carte? Ogni volta che hanno una buona mano, quella si mette a brillare.",
	},
	["cls.paladin.levelup.w07.001"] = {
		"I maestri avranno qualcosa di nuovo da insegnarmi. Più da imparare, più da portare e più di cui rispondere.",
		"Un po' più di forza. La forza è la parte facile da guadagnare; meritarla è la parte lenta.",
		"A ogni gradino il giuramento si fa un po' più pesante e un po' più chiaro. Non so quale delle due cose mi sorprenda di più.",
	},
	["cls.paladin.levelup.w07.002"] = {
		"prende un respiro profondo e lo lascia andare piano, e per un istante una tenue luce dorata sembra correre lungo le giunture dell'armatura.",
		"si raddrizza in tutta la sua statura, flettendo una mano che d'un tratto sembra più sicura della presa.",
		"china il capo per un attimo, più in segno di riconoscimento che di preghiera, poi lo rialza con una fermezza nuova.",
	},
	["cls.paladin.lowhp.w07.001"] = {
		"Non ancora. Il giuramento non prevede una clausola per questo.",
		"A terra? Non finché esiste un giuramento col mio nome sopra.",
		"Il giuramento diceva fino alla fine. Questa non lo è.",
	},
	["cls.paladin.lowhp.w07.002"] = {
		"Troppo in basso. Prima la protezione, poi la cura, poi di nuovo dentro. In fretta.",
		"Ragiona. Prima la difesa, poi la cura, poi il colpo. Il panico non è nella lista.",
	},
	["cls.paladin.lowhp.w07.003"] = {
		"vacilla, il sangue alle giunture dell'armatura, e il chiarore che {g:lo|la} avvolge trema come una candela nella corrente, poi si fa saldo.",
		"allarga i piedi mentre i colpi arrivano, e oscilla come un albero maestro nel vento forte, senza cadere.",
	},
	["cls.paladin.lowhp.w07.004"] = {
		"Ahi. D'accordo. Io e la Luce ne riparleremo.",
		"Questa ha fatto male. Presenterò un reclamo alla Luce.",
		"D'accordo. Quello è andato a segno.",
	},
	["cls.paladin.lowhp.w07.005"] = {
		"C'è lo scudo, quello che niente attraversa. Usarlo adesso non è viltà, è buon senso.",
		"Il momento intoccabile è lì, a disposizione. Nessuna vergogna. È l'orgoglio che fa seppellire i paladini.",
	},
	["cls.paladin.lowhp.w07.006"] = {
		"Luce, non ho finito. E nemmeno tu.",
		"Tienimi, Luce. Io tengo te.",
		"Luce, un po' di calore, se puoi. Io non ne ho più molto da dare.",
	},
	["cls.paladin.lowhp.w07.007"] = {
		"Il cuore mi batte nelle orecchie e in bocca sento il ferro. Va bene. Il corpo si lamenta, il giuramento no.",
		"Sangue in bocca, un fischio nelle orecchie. Ormai a tenermi su è più l'armatura che io.",
	},
	["cls.paladin.lowhp.w07.008"] = {
		"Sono {g:ferito|ferita}, non {g:finito|finita}. Occhi sullo scontro, non su di me.",
		"Non fermatevi per me! Una cura mi è rimasta, ed è mia.",
		"Continuate! A curarmi ci penso io; voi badate al nemico.",
	},
	["cls.paladin.lowhp.w07.009"] = {
		"preme una mano tremante sulla propria ferita e pronuncia il nome della Luce a denti stretti.",
		"si stringe l'armatura all'altezza del cuore, e un calore sottile risponde, debole ma presente.",
	},
	["cls.paladin.lowhp.w07.010"] = {
		"L'armatura sta facendo del suo meglio. Qualcuno le dica di impegnarsi di più.",
		"Se quest'armatura avesse dei sentimenti, in questo momento si vergognerebbe moltissimo.",
		"Promemoria: l'armatura, a quanto pare, non è invincibile.",
	},
	["cls.paladin.lowhp.w07.011"] = {
		"Silenzio, là dentro. Troppo. Luce? Luce. Eccoti.",
		"Per un battito non lo trovo, quel calore. Poi c'è, come una mano che trova il corrimano al buio.",
	},
	["cls.paladin.lowhp.w07.012"] = {
		"Hai fatto sanguinare un paladino. Adesso vedrai quanto costa.",
		"{g:Ferito|Ferita}, eh? Bene. Adesso ho un motivo per smetterla con le buone maniere.",
		"Adesso sono {g:arrabbiato|arrabbiata}, e la Luce mi lascia fare.",
	},
	["cls.paladin.lowhp.w07.013"] = {
		"Se cado qui, che l'ultima cosa che ho fatto sia stata utile. Quasi lo è.",
		"Non ho paura di ciò che c'è oltre la porta della Luce. Solo, non sono {g:pronto|pronta} ad attraversarla.",
	},
	["cls.paladin.lowhp.w07.014"] = {
		"Le ginocchia servono per pregare, non per te.",
		"Inginocchiarmi non mi è nuovo: lo faccio ogni giorno. Ma mai per quelli come te.",
	},
	["cls.paladin.lowhp.w07.015"] = {
		"sputa rosso a terra e solleva di nuovo l'arma, più lentamente, ma ancora dritta.",
		"sbatte forte le palpebre contro il buio che s'insinua ai margini della vista e ritrova il nemico.",
	},
	["cls.paladin.lowhp.w07.016"] = {
		"Non mi aggiungerai alle tue file. Per le mie ossa ho altri progetti.",
		"Non oggi. Le mie ossa sono già promesse, e non a te.",
	},
	["cls.paladin.lowhp.w07.017"] = {
		"Se cado io, chi li tiene in piedi? Allora non cado. Semplice.",
		"Contano sulle mie cure. Non posso spenderle tutte per me. Qualcuna sì, però. Qualcuna.",
	},
	["cls.paladin.lowhp.w07.018"] = {
		"Corazza ammaccata e cuore testardo. Impegnati di più.",
		"Questa corazza ha visto giorni peggiori, e anch'io. Avanti, allora.",
	},
	["cls.paladin.lowhp.w07.019"] = {
		"Il mana scarseggia, il sangue ancora di più. Spendi l'uno per salvare l'altro.",
		"Prima la cura, l'orgoglio dopo. Un paladino morto non protegge nessuno.",
	},
	["cls.paladin.muse.w07.001"] = {
		"Le miglia in armatura insegnano una pazienza tutta particolare. Alla strada non importa cosa hai giurato.",
		"Più o meno al decimo miglio, ogni giuramento diventa una questione di piedi.",
		"La strada è la parte lunga del giuramento. Nessuno ti avverte di quanto sia lunga.",
	},
	["cls.paladin.muse.w07.002"] = {
		"Certi giorni cerco la Luce come si cerca il corrimano su una scala buia. C'è sempre stata. Allungo comunque la mano con cautela.",
		"Non ho mai trovato la Luce assente, neanche una volta. Eppure, ogni volta, c'è quel piccolo respiro prima di chiedere.",
		"Per me la fede è soprattutto l'abitudine di allungare la mano lo stesso.",
	},
	["cls.paladin.muse.w07.003"] = {
		"Quando un contadino mi chiama eroe, qualcosa dentro di me si raddrizza e si pavoneggia. Ho imparato a dirgli di tornare a cuccia.",
		"La lode è l'unico colpo che l'armatura non ferma. La incasso in piedi, e poi vado a smaltirla in preghiera.",
		"L'orgoglio non carica mai. Aspetta che qualcuno mi ringrazi, e poi s'infila dalla visiera.",
	},
	["cls.paladin.muse.w07.004"] = {
		"Perché un martello? Non vuole la cote, e chiude le discussioni in una sillaba.",
		"Una spada pretende la cote dopo ogni scontro. A un martello basta un braccio testardo.",
		"Le spade sono per i duellanti. Il martello è per porte, muri e qualsiasi cosa non voglia sentire ragioni.",
	},
	["cls.paladin.muse.w07.005"] = {
		"si inginocchia lì dove si trova, il capo chino per il tempo di tre respiri, poi si rialza senza una parola.",
		"si ferma, sfiora con due dita il centro del pettorale e riparte, come se avesse saldato un piccolo conto.",
	},
	["cls.paladin.muse.w07.006"] = {
		"La Luce non spinge mai. Aspetta come una forgia coperta di cenere, calda ogni volta che ci torno, senza mai trascinarmici.",
		"Nella Luce non c'è niente che mi forzi la mano. Resta solo accesa, e il cammino lo lascia a me.",
	},
	["cls.paladin.muse.w07.007"] = {
		"Ovunque io cammini, una parte del giuramento resta voltata verso le Plaguelands, come chi dorme col viso rivolto alla porta.",
		"Qualunque commissione io stia sbrigando, il Flagello aspetta in fondo alla strada di ogni paladino. Non lo dimentico; semplicemente non ho fretta di arrivarci.",
		"Anche nella commissione più tranquilla, un angolo della mia mente resta di guardia verso Lordaeron.",
	},
	["cls.paladin.muse.w07.008"] = {
		"Cambiare sigillo nel mezzo di uno scontro è come cambiare lingua a metà frase. Mi ci è voluto parecchio per smettere di balbettare.",
		"Due sigilli, due caratteri. Capire quando passare dall'uno all'altro è stata la prima vera lezione dopo le basi.",
	},
	["cls.paladin.muse.w07.009"] = {
		"C'è un'aura che punge chiunque colpisca chi mi sta vicino. Non devo nemmeno guardare. Sembra quasi scorretto, e ho deciso che non mi dispiace.",
		"Chi mette la lama addosso a qualcuno della mia cerchia ne paga un poco, senza mai capire bene perché. È un'aura che si addice a un certo carattere.",
	},
	["cls.paladin.muse.w07.010"] = {
		"Certi giorni la cosa migliore che porto in uno scontro è un'aura di calma per chi lancia incantesimi alle mie spalle.",
		"L'aura che spiego più malvolentieri è quella che tiene saldo chi incanta quando qualcuno lo colpisce a metà parola. Nessuno la vede all'opera. È proprio questo il punto.",
	},
	["cls.paladin.muse.w07.011"] = {
		"Posso alzare uno scudo che niente riesce a passare. Lo uso di rado: un paladino che non può essere toccato dimentica quanto costa il tocco agli altri.",
		"Per qualche istante, niente al mondo può ferirmi. La tentazione lì dentro non è la viltà. È l'orgoglio.",
		"Intoccabile, per un istante. Sono sempre {g:sollevato|sollevata} quando l'istante finisce: non è un buon posto in cui un paladino possa abitare.",
	},
	["cls.paladin.muse.w07.012"] = {
		"C'è una preghiera che dà la mia vita perché un altro si salvi, per intero. L'ho imparata. Continuo a sperare che resti una cosa che so, e non una cosa che ho fatto.",
		"Conosco una preghiera che mi consuma del tutto perché qualcun altro ne esca vivo. Saperla è facile. Essere {g:pronto|pronta} è un'altra faccenda.",
	},
	["cls.paladin.muse.w07.013"] = {
		"Non prego su ogni pasto. Certi stufati da locanda, però, meritano una benedizione: per chi li mangia.",
		"Mi hanno insegnato che la Luce non è per le piccole cose. Chi me l'ha insegnato non aveva mai mangiato il pane di chi viaggia.",
	},
	["cls.paladin.muse.w07.014"] = {
		"Il giuramento è scritto in parole semplici. Il mondo in cui lo porto, no. Ogni giorno traduco, e non sono mai {g:sicuro|sicura} di averlo fatto bene.",
		"Proteggi i deboli, dice. Non dice chi sia debole oggi, né contro cosa. Quella parte devo capirla da {g:solo|sola}.",
		"I voti stanno in una pagina. Le domande che sollevano riempirebbero una biblioteca.",
	},
	["cls.paladin.muse.w07.015"] = {
		"L'Alleanza è una promessa fra popoli che non sempre si stanno simpatici. Il giuramento di un paladino è una promessa più piccola, della stessa forma.",
		"Umani e nani, gnomi ed elfi, sotto un'unica bandiera. Regge perché la gente continua a scegliere di farla reggere. Un po' come un giuramento.",
		"L'Alleanza non si giura una volta per sempre. Si giura di nuovo ogni giorno, in piccoli modi, da gente che potrebbe andarsene.",
	},
	["cls.paladin.muse.w07.016"] = {
		"Dove c'è un cancello, qualcuno deve starci in mezzo. Non mi è mai dispiaciuto essere quel qualcuno.",
		"Dammi un varco e un motivo. Lo tengo tutto il giorno, senza muovermi.",
	},
	["cls.paladin.muse.w07.017"] = {
		"passa uno straccio sulla testa dell'arma finché il metallo non restituisce un bagliore opaco e onesto.",
		"soppesa l'arma prima in una mano poi nell'altra, come se valutasse una domanda più che un attrezzo.",
	},
	["cls.paladin.muse.w07.018"] = {
		"Ogni maestro che ho avuto pronunciava il nome di Uther più piano di qualsiasi altro. Credo sia l'unico nome che non dicono mai di fretta.",
		"Chiedi a un vecchio paladino di Uther e guarda come si abbassa la voce. Non è proprio dolore. È più come passare accanto a un posto dove è crollato qualcosa.",
		"Uther è il nome che ogni maestro pronuncia per ultimo, e più adagio.",
	},
	["cls.paladin.muse.w07.019"] = {
		"Un principe di Lordaeron un tempo portava la Luce e poi l'ha gettata via. I maestri lo raccontano come un monito, e non dicono mai quale parte li spaventi di più.",
		"Ogni novizio sente parlare di Arthas, che era uno di noi, e di ciò che è diventato. La lezione non è che fosse malvagio. È che era certo di sé.",
		"Arthas è la storia che raccontano ai novizi troppo sicuri di sé. Io l'ho sentita più di una volta.",
	},
	["cls.paladin.muse.w07.020"] = {
		"L'Argent Dawn e la Scarlet Crusade alzano entrambe la mano contro il Flagello. La differenza, mi ha detto un vecchio paladino, è cosa fanno quando quella mano si abbatte sui vivi.",
		"Due eredi dell'antico ordine, dicono: uno custodisce il giuramento, l'altro solo la rabbia. La rabbia è più facile da custodire. È questo che mi preoccupa.",
	},
	["cls.paladin.muse.w07.021"] = {
		"Verso la fine di una giornata lunga l'armatura smette di sembrare una protezione e comincia a sembrare un bagaglio. La tengo addosso lo stesso. Sono abitudini così che tengono in vita la gente.",
		"In ogni lunga marcia c'è un'ora in cui l'armatura pesa esattamente quanto pesa. È in quell'ora che il giuramento si guadagna il pane.",
		"Le giornate lunghe fanno di ogni paladino un cavallo da tiro. L'armatura resta addosso comunque: è il mestiere.",
	},
	["cls.paladin.muse.w07.022"] = {
		"Andare avanti, aiutare dove serve, chiedere scusa dove si è sbagliato. È quasi tutto l'addestramento, a dirla tutta.",
		"Prima aiuti, poi spieghi, e se serve chiedi scusa. I maestri la mettevano giù con parole più lunghe.",
	},
	["cls.paladin.muse.w07.023"] = {
		"I morti che camminano si ritraggono dalla Luce come un livido sotto il pollice. Non è un modo nobile di dirlo, ma non ne ho mai trovato uno più vero.",
		"Qualunque cosa muova il Flagello, la Luce ci preme sopra come un dito su una piaga. Li ho visti ritrarsi. Non è bello, e non mi dispiace.",
		"La Luce non odia il Flagello. Semplicemente non può stare nello stesso posto, e a cedere dev'essere il Flagello.",
	},
	["cls.paladin.muse.w07.024"] = {
		"Da quando ho imparato ad avvertire i morti che camminano, in certi posti sento un lieve prurito in fondo alla mente. Ho smesso di pretendere che i luoghi siano innocenti.",
		"C'è un senso che prima non avevo: un formicolio freddo quando qualcosa di morto si muove lì vicino. Certi giorni lo restituirei volentieri.",
	},
	["cls.paladin.muse.w07.025"] = {
		"Esorcismo. Suona più solenne di quanto sia. Il più delle volte è come aprire una finestra in una stanza chiusa da troppo tempo.",
		"I maestri facevano sembrare l'Esorcismo un tuono. Nelle mie mani è più una porta spalancata a calci su qualcosa che avrebbe dovuto andarsene da un pezzo.",
	},
	["cls.paladin.muse.w07.026"] = {
		"Martello della Giustizia. Il nome non l'ho scelto io, ma ammetto che dice quello che fa.",
		"Ho un martello di luce da scagliare che inchioda un nemico sul posto. Giustizia, la chiamano i maestri. Una pausa, direi io, abbastanza lunga perché la giustizia arrivi.",
	},
	["cls.paladin.muse.w07.027"] = {
		"Cerco di pronunciare un giudizio come lo pronuncerebbe un giudice onesto: una volta, chiaramente, e senza goderne.",
		"Ogni Giudizio che scaglio, cerco di scagliarlo senza piacere. La rabbia fa sentenze storte.",
	},
	["cls.paladin.muse.w07.028"] = {
		"La Luce agisce attraverso gente che perde i guanti e discute con gli osti. Gente come me, insomma. Lo trovo molto consolante.",
		"Qualunque cosa la Luce veda in me, non è la perfezione. È umiliante oppure è un sollievo. Quasi sempre tutte e due.",
	},
	["cls.paladin.muse.w07.029"] = {
		"Lo scudo è la cosa più generosa che un soldato si porti dietro. Metà è sempre per qualcun altro.",
		"Non ho mai pensato allo scudo come a una cosa solo mia. Metà appartiene a chi mi sta dietro.",
		"Alza uno scudo e hai fatto un tetto per due. È un conto che mi è sempre piaciuto.",
	},
	["cls.paladin.muse.w07.030"] = {
		"si guarda alle spalle di tanto in tanto, vecchia abitudine di chi è avvezzo ad avere qualcuno da proteggere.",
		"tiene mezzo passo di vantaggio su nessuno in particolare, per abitudine, nel posto di chi porta lo scudo.",
	},
	["cls.paladin.muse.w07.031"] = {
		"Non credo che la Luce mi ami. Credo che si fidi di me, un poco, con riserva. È più difficile esserne all'altezza.",
		"L'amore sarebbe facile. Quello che sento dalla Luce somiglia più alla fiducia, e la fiducia si può perdere.",
		"La fiducia della Luce è come quella di un vecchio cavallo: lenta a concedersi, e preziosissima quando c'è.",
	},
	["cls.paladin.muse.w07.032"] = {
		"La preghiera più difficile è quella di fine giornata. Non per i dubbi. Per la stanchezza: comincio, e mi sveglio con le parole a metà.",
		"L'ultima preghiera della giornata di solito si spegne a metà. Mi piace pensare che la frase la finisca la Luce.",
	},
	["cls.paladin.muse.w07.033"] = {
		"La stessa mano risana e spezza. Una volta mi sembrava strano. Ora credo sia l'unico accordo onesto.",
		"Queste mani chiudono ferite e aprono crani, a volte nello stesso respiro. Un paladino che non sa tenere insieme le due cose dovrebbe cambiare mestiere.",
		"Risanare e spezzare escono dalla stessa mano, e non è la mano a scegliere. Scelgo io.",
	},
	["cls.paladin.muse.w07.034"] = {
		"Potrei dimenticare il mio nome in preda alla febbre e recitare lo stesso il giuramento. I maestri ci hanno pensato bene.",
		"Le parole del giuramento stanno più in fondo della memoria. Mi è capitato di sorprendermi a mormorarle nel dormiveglia.",
	},
	["cls.paladin.muse.w07.035"] = {
		"E se mi sbaglio su qualcuno, e la Luce mi lascia sbagliare? È il pensiero che mi tiene {g:sveglio|sveglia}.",
		"La Luce non fermerà la mia mano se colpisco la persona sbagliata. Si fida che io sappia. Certi giorni quella fiducia è un peso sul petto.",
		"La Luce mi presterebbe la forza per colpire la persona sbagliata con la stessa prontezza di quella giusta. Distinguerle è la parte di lavoro che tocca a me.",
	},
	["cls.paladin.muse.w07.036"] = {
		"Pane, olio per le cinghie, mozziconi di candela, pazienza. In ordine di quanto in fretta li finisco.",
		"Cose che mi mancano sempre: olio per le cinghie, pane e pazienza. La Luce non è mai il problema.",
		"Il mio zaino, a peso: olio per l'armatura, pane, mozziconi di candela e una buona dose di speranza.",
	},
	["cls.paladin.muse.w07.037"] = {
		"La grande cattedrale di Stormwind è stata costruita per preghiere molto più grandi delle mie. Confido che anche le mie trovino posto, lassù tra le volte.",
		"La cattedrale di Stormwind ascolta un'infinità di preghiere. Mi piace pensare che quelle dette per strada arrivino lo stesso, solo un po' più infangate.",
	},
	["cls.paladin.muse.w07.038"] = {
		"I paladini di Ironforge, ho notato, parlano della Luce come i minatori di un filone: una cosa da seguire con pazienza e da non sprecare mai.",
		"Chi si addestra nella Hall of Mysteries di Ironforge parla della Luce come i minatori parlano di una buona vena: va lavorata, seguita con pazienza, mai sperperata.",
	},
	["cls.paladin.muse.w07.039"] = {
		"Un nano con un martello non fa notizia. Un nano con un martello e la Luce alle spalle è un altro discorso.",
		"Il martello la mia gente ce l'ha nel sangue. La Luce mi ha solo detto dove puntare il mio.",
	},
	["cls.paladin.muse.w07.040"] = {
		"La chiamano Light's Hope, la cappella dell'Argent Dawn nelle Plaguelands. Un nome così è molto coraggioso o molto testardo. Probabilmente tutte e due le cose.",
		"Nelle Plaguelands, mi dicono, c'è una cappella che il Flagello non è mai riuscito a prendere. La tengo a mente come i marinai tengono a mente un fuoco sulla costa.",
	},
	["cls.paladin.muse.w07.041"] = {
		"La Luce appartiene a sacerdoti e paladini allo stesso modo, ma la usiamo in modo diverso. Un sacerdote s'inginocchia accanto alla ferita; io mi metto davanti a ciò che l'ha causata.",
		"I sacerdoti portano la Luce al capezzale. Io la porto sulla soglia, fra il capezzale e quello che sta arrivando.",
	},
	["cls.paladin.muse.w07.042"] = {
		"mormora qualche parola sottovoce, e il tenue riverbero dell'aura che {g:lo|la} circonda cambia sfumatura.",
		"lascia cadere un'aura e ne prende un'altra: il cambio si vede solo come una breve increspatura nell'aria attorno a {g:lui|lei}.",
	},
	["cls.paladin.muse.w07.043"] = {
		"Metà del mestiere di paladino è aspettare: accanto a un letto, a un cancello, fuori da una porta mentre qualcuno decide. I maestri non ci hanno mai insegnato ad aspettare. Avrebbero dovuto.",
		"Mi hanno insegnato a colpire, a curare, a benedire. Nessuno mi ha insegnato ad aspettare, ed è questo che il giuramento mi chiede più spesso.",
	},
	["cls.paladin.muse.w07.044"] = {
		"La Luce è di buon umore. Si capisce: le ginocchia hanno smesso di lamentarsi.",
		"Sembra una buona giornata per la Luce. O forse ho solo dormito su qualcosa di più morbido di un sasso.",
		"Le spalle non mi fanno male e nessuno ha bisogno di cure. La Luce dev'essere in vena di strafare.",
	},
	["cls.paladin.muse.w07.045"] = {
		"Ognuno dei morti risorti un tempo era qualcuno. Cerco di ricordarlo fino al momento in cui non posso più permettermelo.",
		"Il Flagello è fatto di contadini, di soldati, dei vicini di casa di qualcuno. La cosa più gentile che posso dar loro è una fine. Vorrei che sembrasse più gentile.",
		"Ai morti cerco di dare una fine e niente di più crudele. Un tempo erano di qualcuno: vale la pena di avere riguardo.",
	},
	["cls.paladin.muse.w07.046"] = {
		"I demoni sono più semplici dei morti, sotto un certo aspetto. Dentro di loro non c'è mai stato nessuno da piangere.",
		"Con i morti esito, pensando a chi erano. Con i demoni no. In loro non c'è mai stato nessuno.",
	},
	["cls.paladin.muse.w07.047"] = {
		"Il giuramento mi chiede di proteggere, non di odiare. Lo tengo a mente ogni volta che in una taverna qualcuno attacca a parlare dell'Orda.",
		"Nei voti non si parla dell'Orda. Proteggi gli innocenti, dicono. Gli innocenti hanno più forme di quanto la gente creda.",
	},
	["cls.paladin.muse.w07.048"] = {
		"Che vengano pure. Ho un martello, una preghiera e nessun posto migliore dove stare.",
		"Una buona arma, una preghiera salda e nessun impegno urgente. Che i guai mi trovino.",
		"Martello pronto, preghiere dette, agenda libera. I guai sono liberi di provarci.",
	},
	["cls.paladin.muse.w07.049"] = {
		"Ogni villaggio che accende ancora le sue lampade è un piccolo argomento a favore della Luce. Li colleziono.",
		"Una finestra illuminata, una staccionata riparata, un bambino che gioca in strada. Li conto come altri contano le monete.",
		"Il fumo da un camino, i panni stesi ad asciugare. Piccole prove che il buio non ha vinto, e le conservo tutte.",
	},
	["cls.paladin.muse.w07.050"] = {
		"fa ruotare una spalla indolenzita sotto il peso dell'armatura, con la smorfia paziente di chi è abituato a portare più della propria parte.",
		"sfila un guanto d'arme, piega le dita intorpidite una per una e lo rimette con un sospiro rassegnato.",
	},
	["cls.paladin.muse.w07.051"] = {
		"Le tenebre più difficili da affrontare sono quelle che parlano con la mia voce e mi dicono che sarebbe più facile smettere di preoccuparmi.",
		"Non tutti i nemici portano marciume o corna. Quello che tengo d'occhio di più parla con la mia voce e mi dice che ho fatto abbastanza.",
		"Il nemico che temo di più non attacca mai. Si limita a suggerirmi, con gentilezza, di mettere da parte il giuramento per un po'.",
	},
	["cls.paladin.muse.w07.052"] = {
		"Misericordia e mollezza non sono la stessa cosa. A volte l'atto misericordioso è quello duro, fatto in fretta.",
		"Ho imparato presto che la misericordia può portare il guanto d'arme. Una gentilezza che non agisce non è gentilezza: è solo stare a guardare.",
		"Mani morbide non vuol dire mani misericordiose. A volte la misericordia dev'essere rapida e pesante.",
	},
	["cls.paladin.muse.w07.053"] = {
		"Ogni nuova preghiera che i maestri mi insegnano arriva con lo stesso avvertimento: è un prestito, non un dono. Ho cominciato a sentirlo come una gentilezza.",
		"Niente di quello che la Luce mi dà è mio fino in fondo. È tutto in prestito, e gli interessi si pagano in fatica.",
	},
	["cls.paladin.muse.w07.054"] = {
		"Mi hanno chiesto se la Luce dice mai di no. Lo dice. Di solito quando le chiedo una strada più facile.",
		"Se la Luce mi rifiuta mai qualcosa? Solo quando le chiedo una scorciatoia.",
		"La Luce mi concede quasi tutto ciò che chiedo. Mai le scorciatoie. Ho smesso di chiederle.",
	},
	["cls.paladin.muse.w07.055"] = {
		"Il giuramento pesa uguale, che qualcuno guardi o no. Sono le ore senza testimoni a metterlo alla prova.",
		"Quando nessuno guarda, il giuramento resta l'unico testimone. Un pubblico molto esigente.",
	},
	["cls.paladin.muse.w07.056"] = {
		"controlla una per una le fibbie dell'armatura, dal collo in giù, con la cura senza fretta di un'abitudine di lunga data.",
		"alza un braccio e poi l'altro per ascoltare l'armatura, come un fabbro ascolta una campana, e sembra {g:soddisfatto|soddisfatta} di ciò che sente.",
	},
	["cls.paladin.muse.w07.057"] = {
		"Il trono di Stormwind è vuoto, e un reggente tiene calda la sedia. Il giuramento non dipende da chi porta la corona. Me lo ripeto più spesso di quanto vorrei.",
		"Un re scomparso, un reggente, voci in ogni locanda. Un giuramento fatto alla Luce, almeno, non dipende dalla politica.",
		"I re scompaiono, i reggenti firmano carte, le voci volano. La Luce tiene per sé i suoi pensieri, e il giuramento va avanti comunque.",
	},
	["cls.paladin.muse.w07.058"] = {
		"La gente guarda un paladino e ne prende in prestito un po' di fermezza. Ho imparato a tenere le preoccupazioni dietro la visiera, dove non possono traboccare.",
		"Qualunque cosa provi, finché la gente guarda il mio viso resta calmo. Ne prendono in prestito il coraggio. I miei conti li regolo dopo, da {g:solo|sola}.",
		"Quando la gente ha paura, guarda il paladino. Così il paladino ha l'aria calma, qualunque cosa succeda sotto.",
	},
	["cls.paladin.muse.w07.059"] = {
		"Se proprio devi pregare, prega in piedi. La Luce non si commuove per le ginocchia ammaccate.",
		"Inginocchiati, se vuoi, ma rialzati presto. Alla Luce servi più in piedi.",
		"La Luce ti sente benissimo anche in piedi. Forse meglio: così il lavoro è più a portata di mano.",
	},
	["cls.paladin.muse.w07.060"] = {
		"C'è una furia della Luce che a una folla di nemici dice soltanto «guardate me». Sottile, non lo è.",
		"C'è una preghiera il cui unico scopo è far arrabbiare ogni nemico con me invece che con i miei compagni. I maestri la chiamavano nobile. I miei lividi la chiamano in un altro modo.",
	},
	["cls.paladin.muse.w07.061"] = {
		"So tirare fuori il veleno da una ferita e la malattia dal sangue. È la cosa meno gloriosa che conosca, e rinuncerei a metà del resto prima che a questa.",
		"Purificare una febbre non fa nascere canzoni. È comunque la preghiera che terrei, se dovessi sceglierne una sola.",
	},
	["cls.paladin.muse.w07.062"] = {
		"Il cavallo da guerra mi è venuto dalla Luce e da una lunga prova, eppure mi guarda come ogni cavallo guarda chi lo monta: quand'è che si mangia?",
		"Un destriero evocato con la preghiera, e mastica il morso e tiene il broncio come qualunque altro. Santo, a quanto pare, non vuol dire dignitoso.",
	},
	["cls.paladin.muse.w07.063"] = {
		"Le prime settimane nell'armatura a piastre mi muovevo come un armadio con delle opinioni. Ora mi dimentico di averla addosso: è un progresso, oppure un pericolo.",
		"La maglia mi ha insegnato a portare il peso. Le piastre mi hanno insegnato a portarlo con grazia, o almeno a smettere di cadere.",
	},
	["cls.paladin.muse.w07.064"] = {
		"Nelle cripte e nelle miniere la Luce sembra ardere più vicino alla pelle, come se anche lei preferisse andare dove serve.",
		"Più il posto è buio, più la Luce mi sta vicina. Ho smesso di trovarlo strano.",
		"Giù nel buio profondo, la Luce sembra meno una lampada e più una mano sulla spalla.",
	},
	["cls.paladin.muse.w07.065"] = {
		"Lo strumento migliore di un paladino? Un panno pulito. Per le ferite, per le armi, per le facce di chi ha paura.",
		"Porta sempre un panno pulito. Fascia un taglio, pulisce una lama e asciuga le lacrime, e nessuna di queste cose può aspettare una preghiera.",
	},
	["cls.paladin.muse.w07.066"] = {
		"Pregare, quasi sempre, non è chiedere. È accordarsi: come un fabbro che batte una lama per sentire se suona giusta.",
		"Quando prego non elenco desideri. Controllo, come si saggia una corda, di essere ancora {g:legato|legata} a qualcosa di solido.",
		"Non prego per essere {g:ascoltato|ascoltata}. Prego per sentire se poggio ancora su qualcosa di vero.",
	},
	["cls.paladin.muse.w07.067"] = {
		"C'è una solitudine particolare nel fare da appoggio agli altri. Nessuno pensa a chiederti su chi ti appoggi tu.",
		"Tutti si appoggiano al paladino. Il paladino si appoggia alla Luce e, nei giorni in cui la Luce tace, alla semplice testardaggine.",
		"Fare da appoggio a tutti è un onore e una solitudine, spesso nella stessa ora.",
	},
	["cls.paladin.muse.w07.068"] = {
		"Non ti sto giudicando. Sono solo {g:un paladino|una paladina} qui vicino con la faccia delusa. È diverso.",
		"La gente dà sempre per scontato che la stia giudicando. Il più delle volte mi sto chiedendo dove ho lasciato l'altro guanto.",
		"Quello sguardo non è un giudizio. È la mia faccia. È fatta così.",
	},
	["cls.paladin.muse.w07.069"] = {
		"La Luce c'era prima della Mano d'Argento, prima del primo re, prima che qualcuno pensasse di darle un nome. Il mio giuramento è un solo punto di cucitura in una stoffa antichissima.",
		"Gli ordini sorgono e si spezzano; la Luce sopravvive a tutti. Io sono una frase breve in un libro lungo, e mi sta bene così.",
		"L'ordine è giovane. La Luce no. Cerco di tenere le due cose nella giusta proporzione.",
	},
	["cls.paladin.muse.w07.070"] = {
		"solleva il viso per un istante, gli occhi chiusi, come in ascolto di qualcosa che sente solo {g:lui|lei}, poi annuisce.",
		"si ferma tra un passo e l'altro, la testa inclinata, poi espira e accenna un sorriso, come se una risposta fosse arrivata.",
	},
	["cls.paladin.muse.w07.071"] = {
		"C'è una preghiera che mette in fuga i morti. Vederli scappare è lo spettacolo più strano: la paura su un volto che non dovrebbe più saperla mostrare.",
		"A quanto pare i morti ricordano la paura anche quando hanno dimenticato tutto il resto. Quella preghiera lo dimostra.",
	},
	["cls.paladin.muse.w07.072"] = {
		"Certi sigilli colpiscono, altri curano mentre colpiscono. Con il Sigillo della Luce ogni colpo è una piccola preghiera per i miei lividi. Pratica, la Luce, quando vuole.",
		"Con il sigillo giusto, ogni fendente restituisce qualcosa. Mi piace che la Luce abbia pensato anche al braccio che colpisce.",
	},
	["cls.paladin.muse.w07.073"] = {
		"Non giuro di vincere. Giuro di restare. Quello lo so mantenere.",
		"Non prometto mai la vittoria. Prometto di esserci alla fine, in un modo o nell'altro.",
		"Vincere non posso prometterlo. Restare fino alla fine, invece, dipende tutto da me.",
	},
	["cls.paladin.muse.w07.074"] = {
		"Fra un villaggio e l'altro c'è sempre qualcuno che ha bisogno di una mano: un carro nel fosso, una capra smarrita. Credo che la Luce ce li metta apposta.",
		"Per un paladino nessuna strada è mai vuota. C'è sempre una ruota impantanata lungo il percorso, e chissà come tocca sempre a me spingerla.",
		"Sospetto che la Luce metta carri nei fossi lungo la mia strada solo per tenermi in esercizio le braccia.",
	},
	["cls.paladin.muse.w07.075"] = {
		"Il giuramento sta appena sotto lo sterno. Nei giorni brutti è una pietra; in quelli buoni, una brace.",
		"Porto il giuramento da qualche parte sotto il pettorale. Certi giorni preme come un sasso, altri scalda come un tizzone.",
	},
	["cls.paladin.muse.w07.076"] = {
		"Ogni villaggio crede che un paladino possa aggiustare tutto. Un pozzo, una mucca, un matrimonio: tutti bisognosi di una benedizione, tutti lo stesso giorno.",
		"La gente chiede a un paladino di benedire le cose più strane. I pozzi, li capisco. Gli stivali, un po' meno. L'ho fatto lo stesso.",
		"A un paladino si può chiedere di benedire qualsiasi cosa. Pozzi, capre, uno sposo agitato. A quanto pare non pongo limiti.",
	},
	["cls.paladin.muse.w07.077"] = {
		"I soldati di guardia si raddrizzano quando passa un paladino. Cerco di raddrizzarmi anch'io per loro: sono lì da più tempo.",
		"Le guardie salutano la mia armatura come una vecchia amica. Io saluto i loro occhi stanchi. Sappiamo tutti e due chi fa davvero la guardia.",
		"Ogni guardia a ogni posto conosce il peso di un lungo turno. Le saluto per {g:primo|prima}: se lo sono guadagnato.",
	},
	["cls.paladin.muse.w07.078"] = {
		"C'è un martello che posso invocare solo quando il nemico è quasi finito. Alla Luce, pare, non piacciono gli addii lunghi.",
		"Quel martello arriva solo alla fine, quando un nemico sta già cedendo. Misericordia e ira in un solo lancio.",
	},
	["cls.paladin.muse.w07.079"] = {
		"E se la Luce fosse solo ciò che prova la brava gente quando trova il coraggio, e niente di più? Gliel'ho chiesto. Non ha obiettato. O è una risposta, o è la mancanza di una.",
		"Certi giorni sospetto che la Luce sia soltanto coraggio con un bel nome. Poi chiude una ferita sotto la mia mano, e il sospetto tace per un po'.",
		"La Luce è reale, o è solo ciò che prova chi ha coraggio? Ho deciso che conta poco, nei giorni in cui la ferita si chiude lo stesso.",
	},
	["cls.paladin.muse.w07.080"] = {
		"posa una mano sull'arma al fianco e ce la lascia per un po', come si tiene la mano sulla testa di un vecchio cane.",
		"batte due volte sull'impugnatura dell'arma, distrattamente, come si dà una pacca a un cavallo prima di un lungo viaggio.",
	},
	["cls.paladin.muse.w07.081"] = {
		"Un vecchio paladino una volta mi ha detto di fidarmi dei giuramenti pronunciati con la voce tremante, e di tenere d'occhio quelli troppo saldi.",
		"Diffida di chi giura senza un tremito, dicono i vecchi paladini. Un giuramento che non costa niente dirlo, costa poco romperlo.",
	},
	["cls.paladin.muse.w07.082"] = {
		"La Luce può chiudere una ferita. Non può chiudere una tomba. Ho imparato la differenza come la impara chiunque.",
		"C'è un limite a ciò che si può risanare, e finisce sul bordo di una tomba. Sapere esattamente dov'è quel bordo è la cosa più dura che la Luce mi abbia insegnato.",
	},
	["cls.paladin.muse.w07.083"] = {
		"Che si dica che è {g:passato|passata} di qui {g:un paladino|una paladina}, e che dopo le cose andavano un po' meglio.",
		"Quando me ne andrò da qui, vorrei che il posto fosse un po' più sicuro di come l'ho trovato. È tutta l'eredità che voglio.",
		"Lascia le cose meglio di come le hai trovate. Se la Luce mi chiede qualcosa di più semplice, non l'ho ancora sentito.",
	},
	["cls.paladin.pray.w07.001"] = {
		"Luce, dammi umiltà quando vinco e onestà quando perdo. Al resto penso io.",
		"Luce, fa' che lo scudo sia la prima cosa che alzo e il martello l'ultima.",
	},
	["cls.paladin.quest_complete.w07.001"] = {
		"Il giuramento non pesa un incarico in base alla sua grandezza. Chiede solo se l'ho portato a termine.",
		"Piccolo lavoro o grande impresa, i voti li giudicano allo stesso modo: fatto, o non fatto.",
		"Nessuna commissione è indegna del giuramento. Ho smesso di aspettarmi che mi dica quali contano.",
	},
	["cls.paladin.quest_complete.w07.002"] = {
		"Fatto. Se arrivano altri guai, mandate a chiamare il paladino più vicino. Probabilmente sarò io.",
		"Finito. Se qualcos'altro dovesse strisciare fuori dai muri, sapete dove trovare un martello.",
		"Sistemato. Sprangate comunque la porta: le buone abitudini durano più della buona sorte.",
	},
	["cls.paladin.quest_complete.w07.003"] = {
		"lascia uscire un lungo respiro e slaccia i guanti d'arme, come se deponesse il compito insieme a loro.",
		"allenta la cinghia al collo con un piccolo sospiro: la commissione è finita, e l'armatura d'un tratto pesa di più.",
		"batte una volta le nocche sul pettorale, un piccolo segnale privato che la faccenda è chiusa.",
	},
	["cls.paladin.quest_complete.w07.004"] = {
		"Mi hanno ringraziato come se avessi fatto qualcosa di straordinario. Ho fatto qualcosa di necessario. La differenza, per me, conta.",
		"La gratitudine è gentile, ma preferirei che dimenticassero me e ricordassero che l'aiuto è arrivato.",
		"Se ricordano l'aiuto e dimenticano chi l'ha portato, ho fatto bene.",
	},
	["cls.paladin.quest_complete.w07.005"] = {
		"Fatto. Direi che non è stato niente, ma i miei piedi mi darebbero del bugiardo.",
		"Ecco. Mi è costato solo una giornata e quasi tutta la pazienza.",
		"Finito. La prossima volta magari un incarico con un po' meno salita.",
	},
	["cls.paladin.quest_complete.w07.006"] = {
		"Non offro questo alla Luce come un dono: alla Luce non servono le mie commissioni. Le faccio perché servono a qualcun altro.",
		"Alla Luce non serviva che lo facessi. Serviva alla gente di qui. È per questo che alla Luce importa.",
		"Qualunque cosa la Luce voglia da me, sospetto che somigli molto a questo: un piccolo guaio risolto per qualcuno che da solo non ce l'avrebbe fatta.",
	},
	["cls.paladin.quest_complete.w07.007"] = {
		"stringe la mano a chi aveva affidato l'incarico, con fermezza, come si suggella un patto.",
		"incrocia lo sguardo di chi aveva chiesto e lo regge per un momento, come per accertarsi che la faccenda sia davvero chiusa.",
		"fa un breve cenno del capo, di quelli che chiudono un registro, e rivolge già l'attenzione a ciò che viene dopo.",
	},
	["cls.paladin.quest_complete.w07.008"] = {
		"Ho fatto quello che mi è stato chiesto. Vorrei credere che quello che mi è stato chiesto fosse giusto. Di solito lo era. Di solito.",
		"Certe volte accetto un incarico sulla fiducia e solo dopo mi chiedo a chi abbia giovato. Il giuramento chiede di meglio.",
		"Fatto. Ora viene la parte che nessuno paga: capire se era giusto.",
	},
	["cls.paladin.quest_complete.w07.009"] = {
		"Ecco. La prossima volta chiedete prima che arrivi a questo punto. Chiedere non è una debolezza.",
		"Fatto. E la prossima volta non aspettate tanto a chiedere aiuto: l'orgoglio è una pessima sentinella.",
		"Finito. Avete fatto bene a chiedere. Molti non lo fanno, e la pagano.",
	},
	["cls.paladin.quest_complete.w07.010"] = {
		"Dopo un lavoro ben fatto resta un piccolo calore. Un tempo credevo fosse orgoglio. Ora credo sia la Luce che, senza dire nulla, annuisce.",
		"Una buona azione portata a termine lascia un calore dietro le costole. L'orgoglio scotta di più; questo è più mite, e dura di più.",
		"Quel piccolo bagliore dopo una cosa fatta bene non è vanità, ho deciso. La vanità vuole un pubblico. Questo si accontenta di nessuno.",
	},
	["cls.paladin.quest_complete.w07.011"] = {
		"Un altro filo annodato. Il resto lo srotola la strada.",
		"Un capo sciolto del mondo annodato. Ce ne sono tanti altri; le dita non mi mancano.",
		"Annodato e chiuso. Più avanti, il prossimo capo sciolto mi sta già aspettando.",
	},
	["cls.paladin.quest_complete.w07.012"] = {
		"conta la ricompensa una volta, con attenzione, e ne mette da parte una quota in un borsello separato, come fa chi dona senza mai dirlo.",
		"soppesa il borsello sul palmo, poi lo divide con la precisione silenziosa di chi sa già dove andrà ogni moneta.",
	},
	["cls.paladin.quest_complete.w07.013"] = {
		"Bene, è sistemato. Mi mangerei una pagnotta intera, crosta compresa.",
		"Ecco fatto. Tutta questa rettitudine mi ha messo appetito.",
		"Fatto. Il lavoro giusto fa venire una fame giusta.",
	},
	["cls.paladin.quest_complete.w07.014"] = {
		"Qualcuno passerà di qui un po' più al sicuro, e non saprà mai perché. Preferisco così.",
		"La guardia migliore è quella che nessuno nota: semplicemente, il pericolo non c'è più.",
		"Nessuno saprà mai che questo guaio è esistito. È così che capisco che è stato risolto bene.",
	},
	["cls.paladin.quest_complete.w07.015"] = {
		"Ogni incarico finito si chiude allo stesso modo: un cenno, una moneta e la strada successiva. Certi giorni vorrei che qualcuno mi chiedesse di restare.",
		"Aiuto dato, grazie ricevuto, e via di nuovo. Nella vita di un paladino gli addii lunghi sono pochi.",
	},
	["cls.paladin.quest_complete.w07.016"] = {
		"È compiuto. Che il resto dei tuoi giorni sia più tranquillo di questo.",
		"La faccenda è chiusa. Spero che tu non abbia mai più bisogno di un paladino: lo dico con affetto.",
		"Finito. Che la tua prossima preoccupazione sia piccola.",
	},
	["cls.paladin.quest_complete.w07.017"] = {
		"Ho cominciato questo incarico pensando di sapere la risposta. Ne esco con meno certezze e domande migliori. I maestri approverebbero.",
		"Ogni commissione corregge qualcosa che credevo di sapere. Questa ha corretto la mia pazienza.",
		"Nessun maestro avrebbe potuto insegnarmi quello che mi ha insegnato questa: quanto spesso la mia prima impressione è sbagliata.",
	},
	["cls.paladin.quest_complete.w07.018"] = {
		"sfiora l'impugnatura dell'arma e china il capo per un respiro, il ringraziamento di un soldato a qualcosa che non si vede.",
		"mormora una sola parola, troppo piano per essere colta, e il tenue bagliore sulle spalle si ravviva per poi svanire.",
		"si raddrizza per un momento, come se un debito fosse stato segnato come saldato in un registro che vede solo {g:lui|lei}.",
	},
	["cls.paladin.quest_complete.w07.019"] = {
		"L'incarico è finito e le mie spalle lo sanno. L'armatura si fa pesante alla fine delle cose, mai all'inizio.",
		"Strano come l'armatura non pesi niente all'andata e una tonnellata al ritorno.",
		"Ogni commissione finisce con la stessa scoperta: ho portato quest'armatura per tutto il tempo.",
	},
	["cls.paladin.quest_complete.w07.020"] = {
		"I vecchi paladini della Mano d'Argento, mi dicono, erano noti per questo: non le grandi battaglie, ma l'aiuto che arrivava quando lo si chiedeva. Vorrei essere {g:noto|nota} anch'io per questo.",
		"Prima che l'ordine si spezzasse, dice la gente, un contadino poteva chiedere aiuto a un paladino e contarci. Cerco di far sì che sia ancora vero, un incarico dopo l'altro.",
	},
	["cls.paladin.quest_complete.w07.021"] = {
		"Un altro torto raddrizzato. La Luce e io facciamo una bella squadra.",
		"Un'altra cosa rimessa in sesto. Meglio di una medaglia, sempre.",
		"Sistemato. Quella sensazione non stanca mai.",
	},
	["cls.paladin.quest_complete.w07.022"] = {
		"A volte mi chiedo se la Luce tenga il conto. Se lo fa, spero che arrotondi per eccesso.",
		"Se la Luce conta le buone azioni, mi piace pensare che sia generosa con le frazioni.",
	},
	["cls.paladin.quest_progress.w07.001"] = {
		"Un pezzo è fatto. Un voto non si mantiene tutto in una volta: si mantiene a pezzi come questo.",
		"A metà strada, più o meno. Lo finirò: l'ho detto.",
		"Un passo avanti. Il resto sono solo altri passi, e ne ho ancora tanti nelle gambe.",
	},
	["cls.paladin.quest_progress.w07.002"] = {
		"Tutto ciò che mi è stato chiesto è fatto. Ora qualcuno merita di saperlo.",
		"Tutto completato. Meglio andare a dirglielo prima che comincino a preoccuparsi.",
		"Con questo è completo. Il ritorno è la parte che mi piace.",
	},
	["cls.paladin.quest_progress.w07.003"] = {
		"si ferma a valutare a che punto è il compito, annuisce tra sé e riprende.",
		"fa il punto su ciò che è già fatto, poi raddrizza le spalle per il resto.",
		"batte il pollice sul pettorale, un piccolo segno di soddisfazione, poi guarda a ciò che resta.",
	},
	["cls.paladin.reputation_change.w07.001"] = {
		"Ora mi guardano con un po' più di favore. Anche la reputazione di un paladino è uno scudo; intendo tenerla lucida.",
		"Adesso hanno un'opinione migliore di me. Dovrò stare {g:attento|attenta}: la stima altrui è facile da usare come appoggio e difficile da meritare.",
		"Un po' più di fiducia guadagnata. La porterò con la stessa cura del giuramento, visto che ne fa parte.",
	},
	["cls.paladin.rez.w07.001"] = {
		"Di nuovo in piedi, armatura compresa. Il giuramento non è decaduto mentre ero via: ha solo aspettato, come fanno i giuramenti.",
		"La morte ha mollato la presa. La prendo come il modo della Luce di dirmi che il lavoro non è finito, e mi rimetto all'opera.",
	},
	["cls.paladin.rezother.w07.001"] = {
		"Svegliati piano. La Luce ha scambiato due parole con la morte, e la morte si è fatta da parte.",
		"Apri gli occhi. La morte ha mollato la presa prima di quanto volesse.",
		"Per un momento non c'eri, e adesso ci sei. È tutto ciò che conta.",
	},
	["cls.paladin.rezother.w07.002"] = {
		"Le lunghe parole della Redenzione, e per tutto il tempo resto in ascolto del primo respiro. Arriva sempre più tardi di quanto vorrei.",
		"La Redenzione è lenta. Dieci battiti di parole su qualcuno che non può sentirle, e poi le sente.",
	},
	["cls.paladin.rezother.w07.003"] = {
		"si inginocchia accanto al corpo e tiene una mano sopra il petto immobile, pronunciando le parole lunghe finché un respiro non si muove sotto il palmo.",
		"si china sul corpo e invoca la Luce con voce bassa e ininterrotta, salda come una mano su una fune.",
	},
	["cls.paladin.rezother.w07.004"] = {
		"Su. Morire non ti esonera dal resto del cammino.",
		"Eccoti qua. La morte è una pessima compagnia comunque: dicono che non parli mai.",
	},
	["cls.paladin.rezother.w07.005"] = {
		"Non chiedo mai dove fossero. Non sono {g:sicuro|sicura} che la Luce vorrebbe farmelo sapere.",
		"Il primo sguardo nei loro occhi è sempre lontano. Aspetto che ritrovi questa sponda prima di parlare.",
	},
	["cls.paladin.rezother.w07.006"] = {
		"In piedi. Non ti lascio qui per terra.",
		"Alzati. Il giuramento non finisce sull'orlo di una tomba, né il mio né il tuo.",
		"Alzati e mettiti al mio fianco. Nessuno resta a terra finché ho forza nelle braccia.",
	},
	["cls.paladin.rezother.w07.007"] = {
		"Piano. Il primo respiro farà male. Il secondo meno.",
		"Resta giù un momento. Il tuo corpo deve ancora ricevere la notizia.",
		"Non provare ancora a parlare. Prima respira: le parole possono aspettare.",
	},
	["cls.paladin.rezother.w07.008"] = {
		"La Luce restituisce la vita, non la forza. Quella arriva col cibo e con una lunga sosta.",
		"Un corpo appena rialzato resta debole per un po'. Starò a portata finché non sarà in grado di tenere il passo.",
	},
	["cls.paladin.rezother.w07.009"] = {
		"Per la Luce, alzati. Non tutto ciò che cade deve restare a terra.",
		"Alzati. La Luce ha già detto di sì; manca solo che il tuo corpo sia d'accordo.",
		"Nel nome della Luce: respira.",
	},
	["cls.paladin.rezother.w07.010"] = {
		"resta in ginocchio un momento dopo che gli occhi si sono aperti, come per accertarsi che il respiro abbia intenzione di restare.",
		"lascia andare un lungo respiro solo quando l'altro corpo si muove, e soltanto allora si rialza da terra.",
	},
	["cls.paladin.thanks.w07.001"] = {
		"Grazie. Me ne ricorderò la prossima volta che a te servirà uno scudo.",
		"Ti ringrazio. Consideralo un debito: i paladini pagano i loro.",
	},
	["cls.paladin.thanks.w07.002"] = {
		"Ti ringrazio di cuore. Farei un inchino, ma con quest'armatura diventa uno spettacolo.",
		"Grazie davvero. Ti benedirei per questo, ma sospetto che preferiresti qualcosa da bere.",
	},
	["cls.paladin.threat.w07.001"] = {
		"Ho giurato di proteggere gli innocenti. Tu non mi sembri sulla lista.",
		"Il mio giuramento copre tutti quelli che sono qui, tranne te. Fatti da parte.",
	},
	["cls.paladin.threat.w07.002"] = {
		"In questo momento porto addosso parecchia Luce. Non darmi un motivo per condividerla.",
		"C'è un sigillo che ti aspetta. Vattene, e potrà restare inutilizzato.",
	},
	["cls.paladin.threat.w07.003"] = {
		"Noterai che porto parecchia armatura. Noterai che tu no. Pensaci.",
		"Io porto addosso mezza fucina, tu soltanto un'aria strafottente. Solo una delle due ferma le lame.",
		"Sono molto difficile da ferire e molto facile da irritare. Tu stai lavorando sulla seconda.",
	},
	["cls.paladin.threat.w07.004"] = {
		"lascia che un bagliore lento si raccolga lungo l'arma e non dice nulla, il che è quasi peggio.",
		"posa una mano sull'arma e regge lo sguardo, mentre un lieve calore sale dall'armatura come da una forgia.",
	},
	["cls.paladin.threat.w07.005"] = {
		"So cosa sei. E so esattamente cosa farne.",
		"Cosa morta, ho un intero giuramento dedicato a quelli come te.",
		"Torna a sdraiarti finché puoi. Non lo chiederò due volte.",
	},
	["cls.paladin.threat.w07.006"] = {
		"Un altro passo e quell'idea te la tolgo dalla testa a martellate.",
		"Prova. Posso fermarti a metà passo, e non capirai nemmeno come.",
	},
	["cls.paladin.victory.w07.001"] = {
		"Prima il fiato. La preghiera di ringraziamento può aspettare che i polmoni siano d'accordo.",
		"Lascia che il cuore rallenti, prima di ringraziare. La Luce non si offenderà per l'attesa.",
	},
	["cls.paladin.victory.w07.002"] = {
		"È fatta. La Luce è rimasta salda quando io non lo ero.",
		"Finito. Ogni volta che il braccio vacillava, la Luce no.",
		"Fatto. Io ho colpito, la Luce ha diretto.",
	},
	["cls.paladin.victory.w07.003"] = {
		"s'inginocchia per un istante accanto al nemico caduto e si porta una mano al cuore, come si fa davanti a una tomba.",
		"traccia un piccolo segno sul caduto, lo stesso gesto breve che fosse una bestia o un brigante.",
	},
	["cls.paladin.victory.w07.004"] = {
		"Il lavoro pesante l'ha fatto la Luce. Il merito del gioco di gambe me lo prendo io.",
		"Bel lavoro di squadra. La Luce si è occupata dei miracoli, io dei lividi.",
	},
	["cls.paladin.victory.w07.005"] = {
		"Ho chiesto forza, ed è arrivata. Non ho mai chiesto se il nemico si meritasse quello che ha portato.",
		"La Luce ha risposto. Lo fa sempre. Quello che mi chiedo è se le capiti mai di sussultare.",
	},
	["cls.paladin.victory.w07.006"] = {
		"Un pericolo in meno per il prossimo viandante. Non mi serve altra ricompensa.",
		"Domani qualcuno passerà di qui senza rischi, e non saprà mai perché. Bene.",
	},
	["cls.paladin.victory.w07.007"] = {
		"allenta con un dito il colletto dell'armatura e lascia entrare piano l'aria più fresca.",
		"solleva il viso per un momento, gli occhi chiusi, mentre il tenue bagliore che {g:lo|la} avvolge si ritira.",
	},
	["cls.paladin.victory.w07.008"] = {
		"Luce, accogli quel che c'era di buono, se mai ce n'era.",
		"Luce, giudica con gentilezza ciò che resta. Io non potevo permettermelo.",
	},
	["cls.paladin.victory.w07.009"] = {
		"Il giudizio, ancora una volta troppo presto. La prossima volta lascia mordere prima il sigillo.",
		"Troppo mana speso troppo presto. La Luce è generosa, le mie riserve no.",
	},
	["cls.paladin.victory.w07.010"] = {
		"Tutti ancora in piedi? Bene. Fatemi vedere chi sanguina.",
		"Fatevi sentire. Chi è ferito venga qui prima di sedersi.",
		"In fila, prima i feriti. La Luce non ha ancora finito di lavorare.",
	},
	["cls.paladin.victory.w07.011"] = {
		"Ha combattuto come se avesse qualcosa per cui vivere. Forse ce l'aveva.",
		"C'è sempre un momento, dopo, in cui mi chiedo cosa stesse difendendo.",
	},
	["cls.paladin.victory.w07.012"] = {
		"Caso chiuso. Presiedeva la Luce, io ho solo letto la sentenza.",
		"Sentenza eseguita. L'udienza è tolta.",
		"Pena scontata. Oggi niente ricorsi.",
	},
	["cls.paladin.victory.w07.013"] = {
		"alza una mano aperta, e l'ultimo chiarore si stacca dal palmo come polvere calda in un raggio di sole.",
		"si porta le nocche del guanto alle labbra, un ringraziamento breve e privato.",
	},
	["cls.paladin.victory.w07.014"] = {
		"Un altro nella lista delle cose che non hanno dato retta a un paladino.",
		"Ecco cosa succede a ignorare chi porta un'armatura lucente. Qualcuno dovrebbe scriverlo su un cartello.",
	},
	["cls.paladin.victory.w07.015"] = {
		"Mi tremano le mani. Lasciale fare. Se lo sono guadagnato.",
		"Il tremito arriva sempre dopo, mai durante. La Luce ha queste delicatezze.",
		"Calma, mani. La vostra parte l'avete fatta.",
	},
	["cls.paladin.victory.w07.016"] = {
		"Ecco. Adesso troviamo un posto per sederci che non sia coperto di... qualunque cosa fosse quella.",
		"Fatto. Speriamo ci sia dell'acqua qui vicino: in quest'armatura ho sudato mezzo fiume.",
	},
	["cls.paladin.victory.w07.017"] = {
		"Riposa, adesso. Come si deve, stavolta.",
		"Dormi. Nessuno ha il diritto di svegliarti ancora.",
		"Ecco. Chiunque tu fossi, adesso sei in pace.",
	},
	["cls.paladin.victory.w07.018"] = {
		"Quello, un tempo, aveva un volto. Forse un nome che qualcuno pronuncia ancora. Spero che la Luce li trovi entrambi.",
		"I morti non scelgono di camminare. Per questo è così difficile sentirsi in pace dopo averli fermati.",
	},
	["cls.paladin.victory.w07.019"] = {
		"Vattene nell'abisso che ti ha fatto, e digli che ti ci ha mandato un paladino.",
		"Un demone in meno al mondo. Il mondo quasi non se ne accorgerà, ed è giusto così.",
	},
	["cls.paladin.victory.w07.020"] = {
		"si guarda attorno lentamente, come fa una sentinella, prima di lasciar ricadere l'arma lungo il fianco.",
		"compie un giro completo su se {g:stesso|stessa}, vigile, e solo allora lascia ricadere le spalle.",
	},
	["cls.paladin.victory.w07.021"] = {
		"Il calore se ne sta andando. Se ne va sempre un po' prima di quanto vorrei.",
		"Quel chiarore nel petto si spegne piano dopo uno scontro, come un focolare quando gli ospiti sono andati via.",
	},
	["cls.paladin.victory.w07.022"] = {
		"La Luce ti ringrazia per la partecipazione.",
		"A nome della Luce, grazie della visita. Per favore, non ripeterla.",
		"La Luce ti augura miglior fortuna, in qualunque cosa venga dopo.",
	},
	["cls.paladin.victory.w07.023"] = {
		"Qualcuno deve ricordare che questa era una vita. Tanto vale che sia chi l'ha spenta.",
		"È facile dimenticare che il nemico era vivo un attimo fa. Cerco di non renderlo facile.",
	},
	["cls.paladin.victory.w07.024"] = {
		"In piedi, giuramento intatto. Una buona giornata di lavoro.",
		"Giuramento mantenuto, nemico a terra, e niente di rotto che non si possa aggiustare.",
	},
	["cls.paladin.victory.w07.025"] = {
		"mormora una breve preghiera sul caduto, parole troppo basse perché altri le colgano.",
		"si porta l'impugnatura dell'arma alla fronte in un piccolo saluto formale al caduto.",
	},
	["cls.paladin.victory.w07.026"] = {
		"Costole ammaccate, un polso indolenzito, un'ammaccatura da qualche parte nell'armatura. Spiccioli. Li pago.",
		"Il corpo tiene un registro: un livido qui, una storta là. Salderò i conti al prossimo fuoco.",
	},
	["cls.paladin.victory.w07.027"] = {
		"Ben combattuto, tutti quanti. Vi benedirei uno per uno, se mi fosse rimasto del mana.",
		"Ottimo lavoro. Ricordatemi di accendere una candela per questo gruppo.",
	},
	["cls.paladin.victory.w07.028"] = {
		"Mi è piaciuto. Troppo. Attenzione: anche l'orgoglio porta l'armatura.",
		"Un piccolo bagliore di soddisfazione. Lo lascio andare prima che diventi qualcosa di peggio.",
	},
	["cls.paladin.victory.w07.029"] = {
		"Non è una vittoria mia. L'ho solo portata fin qui.",
		"Ha vinto la Luce. Io ho solo tenuto aperta la porta.",
		"Io mi prendo i lividi, la Luce il merito. Scambio onesto.",
	},
	["cls.paladin.victory.w07.030"] = {
		"Le piastre salvano la vita, ma non risparmiano le spalle. Le mie si lamenteranno per ore.",
		"La corazza ha preso tutti i colpi che doveva. La mia schiena ha preso la corazza.",
	},
	["cls.paladin.victory.w07.031"] = {
		"lascia ricadere l'arma al fianco, e per un momento l'aria attorno a {g:lui|lei} vibra di un chiarore che svanisce.",
		"si raddrizza piano, e l'ultimo filo di luce scivola via dall'armatura come acqua sull'ardesia.",
	},
	["cls.paladin.victory.w07.032"] = {
		"Questo mi vale un pasto caldo. Su questo la Luce e io siamo d'accordo.",
		"La virtù è premio a se stessa, mi dicono. Un pezzo di pane però lo gradirei.",
	},
	["cls.paladin.victory.w07.033"] = {
		"Dopo non mi sento mai {g:santo|santa}. Solo {g:stanco|stanca}, {g:grato|grata}, e un po' a disagio per quanto mi è piaciuto quel colpo.",
		"Nessuno ti avverte che la rettitudine e il sollievo, nel corpo, si somigliano tanto.",
	},
	["cls.paladin.victory.w07.034"] = {
		"Questo diventerà un racconto. Cercherò di raccontarlo con umiltà.",
		"Uno tosto, ed è a terra. Qualcuno se lo ricordi per me: io sarò troppo {g:modesto|modesta} per raccontarlo bene.",
	},
	["cls.paladin.victory.w07.035"] = {
		"Finita. La Luce si fa silenziosa, e torno a essere solo me, che è già tanto.",
		"Il giuramento può mettersi a riposo per un momento. E anch'io.",
		"Riposo, cuore. Qui abbiamo finito.",
	},
	["cls.paladin.victory.w07.036"] = {
		"Questa è fatta. Avanti con la prossima cosa a cui opporsi.",
		"Uno in meno. Il giuramento non dice quanti: dice solo di andare avanti.",
	},
	["cls.paladin.victory.w07.037"] = {
		"si lascia cadere su un ginocchio, l'armatura che sferraglia, e si concede esattamente un gemito.",
		"si sfila un guanto coi denti e piega le dita intorpidite, con una smorfia.",
	},
	["cls.paladin.victory.w07.038"] = {
		"Perdonami, bestia. Volevi solo vivere, come chiunque.",
		"Riposa, creatura. Facevi solo ciò che fa la tua specie.",
	},
	["cls.paladin.victory.w07.039"] = {
		"Qualcuno così, un tempo, aveva delle scelte. Spero che la Luce le pesi con più dolcezza di quanto potessi fare io.",
		"Una creatura che pensava, e ha scelto questo. Non lo capirò mai, e non smetterò mai di provarci.",
	},
	["cls.paladin.victory.w07.040"] = {
		"Prima: chi ha il fiato corto, chi sanguina, chi finge di non sanguinare. Poi il resto.",
		"Cerco i feriti prima di guardare il nemico. Un'abitudine che vale la pena tenere.",
	},
	["cls.paladin.victory.w07.041"] = {
		"Il giudizio non arriva sempre in fretta. Oggi sì.",
		"Certi debiti la Luce li riscuote con calma. Questo l'ho riscosso io, seduta stante.",
		"Ecco cosa si paga quando la Luce smette di essere paziente.",
	},
	["cls.paladin.victory.w07.042"] = {
		"{g:Vivo|Viva}, {g:intero|intera}, e la Luce ancora con me. Certi giorni è tutta la benedizione che serve.",
		"Niente di rotto, solo sudore. Grazie, Luce, per i favori piccoli e per quelli grandi.",
	},
	["cls.paladin.victory.w07.043"] = {
		"Un morto che cammina in meno. Da qualche parte una tomba ha di nuovo il suo inquilino.",
		"A terra, e stavolta ci resti. La Luce fa la guardia meglio di chi ti ha rialzato.",
	},
	["cls.paladin.victory.w07.044"] = {
		"espira piano tra i denti stretti e scioglie la rigidità del braccio armato.",
		"scuote il braccio armato e saggia la spalla con un cerchio prudente.",
	},
	["cls.shaman.attack.w07.001"] = {
		"Dal cielo alla terra, e tu nel mezzo.",
		"C'è una linea dritta tra il cielo e il terreno. Tu ci stai sopra.",
		"Da lassù a quaggiù, passando per te.",
	},
	["cls.shaman.attack.w07.002"] = {
		"Breve e secca, come uno schiaffo degli elementi.",
		"Una scossa per farti ballare i denti.",
		"Rapida e cattiva, come piace agli spiriti per cominciare.",
	},
	["cls.shaman.attack.w07.003"] = {
		"Svegliare l'arma. Che uno spirito viaggi con ogni colpo.",
		"Ora l'arma vibra. Ogni colpo porta con sé un po' degli elementi.",
		"Che l'arma porti uno spirito per un po'. Colpisce più dritta.",
	},
	["cls.shaman.attack.w07.004"] = {
		"pianta un totem a terra in pieno scontro, senza perdere il passo.",
		"lascia cadere un totem ai propri piedi, quasi con noncuranza, e continua a muoversi.",
	},
	["cls.shaman.attack.w07.005"] = {
		"Ecco. Qualcosa per scaldarti.",
		"Hai freddo? Ci penso io.",
		"Un po' di calore per te, offre la casa.",
	},
	["cls.shaman.attack.w07.006"] = {
		"E un'altra. Gli spiriti oggi sono generosi.",
		"Ancora. Di richieste me ne restano parecchie.",
		"Continuo a chiedere, e continuano a rispondere. Che fortuna.",
	},
	["cls.shaman.attack.w07.007"] = {
		"Ogni incantesimo è un favore chiesto. Tieni il conto.",
		"Chiedi, spendi, chiedi ancora. Conta i favori.",
	},
	["cls.shaman.attack.w07.008"] = {
		"Salta, fulmine. Trova chiunque altro ne voglia.",
		"Lascialo saltare. Uno solo non gli basta mai.",
	},
	["cls.shaman.attack.w07.009"] = {
		"slancia una mano in avanti, e l'aria si spacca con uno schiocco bianco.",
		"scatta col braccio, e una linea di luce frastagliata salta via dalle dita.",
	},
	["cls.shaman.attack.w07.010"] = {
		"Un altro favore degli elementi, consegnato a mano.",
		"Omaggio degli spiriti.",
		"Con i saluti degli spiriti.",
	},
	["cls.shaman.battle.w07.001"] = {
		"Il cielo mi deve un favore. Lo riscuoto su di te.",
		"Ho una tempesta ripiegata tra le mani. Vediamo fin dove si apre.",
		"Se non ti muovi, incontrerai il cielo. Se scappi, lo incontrerai lo stesso.",
	},
	["cls.shaman.battle.w07.002"] = {
		"Chiedere, non comandare. Anche adesso, con quella cosa che mi viene addosso. Chiedere.",
		"Calma. Gli spiriti aiutano chi chiede a voce piana, non chi strilla.",
		"Tieni la voce bassa e uguale. Il panico è un pessimo modo di parlare agli elementi.",
	},
	["cls.shaman.battle.w07.003"] = {
		"inclina il capo come per cogliere una voce lontana, poi si volta verso il nemico.",
		"fa ruotare le spalle una volta e mormora qualche parola al terreno, come si saluta un vecchio alleato prima di una giornata di lavoro.",
	},
	["cls.shaman.battle.w07.004"] = {
		"L'acqua dice di perdonarti. Il fuoco non è d'accordo. Oggi il fuoco parla più forte.",
		"Gli spiriti dell'acqua proponevano di parlarne con calma. Quelli del fuoco no.",
		"Quattro elementi, quattro pareri su cosa fare di te. Uno solo è gentile.",
	},
	["cls.shaman.battle.w07.005"] = {
		"Questo totem resta piantato. E io con lui.",
		"Dove sta il totem, sto io. Vieni a spostarci tutti e due.",
		"Un totem nel terreno, {g:uno sciamano|una sciamana} lì accanto. Nessuno dei due si muove di qui.",
	},
	["cls.shaman.battle.w07.006"] = {
		"Qualunque cosa sia, ha anch'essa uno spirito. Se devo, la ucciderò, e ricorderò di averlo fatto.",
		"Ogni nemico porta una scintilla che gli hanno dato gli elementi. Riprendersela non è mai poca cosa.",
	},
	["cls.shaman.battle.w07.007"] = {
		"Il fuoco mi gira dentro da tutto il giorno. Tu andrai benissimo.",
		"Ho una scintilla che mi prude sotto la pelle da quando mi sono {g:svegliato|svegliata}. Grazie della scusa.",
		"Il fuoco chiedeva qualcosa da fare. Eccoti qua.",
	},
	["cls.shaman.battle.w07.008"] = {
		"tocca uno dopo l'altro i totem alla cintura, rapido come chi conta monete, e si fa avanti.",
		"passa il pollice sui totem appesi alla cintura, poi si mette ben saldo sulle gambe.",
	},
	["cls.shaman.battle.w07.009"] = {
		"Spirito della terra, se ti va, rendi incerto il terreno sotto questo nemico.",
		"Aria, se mi ascolti, prestami un po' della tua prontezza.",
		"Acqua, restami vicina. Potrei aver bisogno di te prima che finisca.",
	},
	["cls.shaman.battle.w07.010"] = {
		"Tieni da parte abbastanza per una buona cura. Tutto il resto va nello scontro.",
		"Regola della borsa di uno sciamano: una cura sempre di riserva, il resto si spende senza pensarci.",
	},
	["cls.shaman.battle.w07.011"] = {
		"Se ti consola, il fulmine punge anche me. Un po'. Meno che te.",
		"Non muoverti. Al fulmine piacciono i bersagli pazienti, e anche a me.",
	},
	["cls.shaman.battle.w07.012"] = {
		"Il Capoguerra parla agli stessi spiriti a cui parlo io. Non facciamo sfigurare nessuno dei due.",
		"Anche Thrall percorre questa via. Preferisco non disonorarla qui.",
	},
	["cls.shaman.battle.w07.013"] = {
		"Le mani non vogliono stare ferme. Pazienza: gli spiriti ascoltano le parole, non le mani.",
		"Il cuore corre troppo. Rallenta il respiro, e gli elementi seguiranno il respiro.",
	},
	["cls.shaman.battle.w07.014"] = {
		"Bene. Speravo proprio di piantare qualcosa, oggi.",
		"Fra un attimo i totem saranno su e io di buon umore. La peggior combinazione possibile, per te.",
		"Dammi il tempo di un respiro per piantare i totem. Poi vorrai aver scelto qualcun altro.",
	},
	["cls.shaman.battle.w07.015"] = {
		"apre una mano, e un filo di luce azzurra guizza tra le dita.",
		"flette le dita; una debole scintilla azzurra salta da una nocca all'altra.",
		"scioglie i polsi con uno scatto, e un bagliore sottile e freddo risale fino ai gomiti.",
	},
	["cls.shaman.battle.w07.016"] = {
		"Il tuo spirito doveva raggiungere gli antenati da tempo. Gli mostrerò la strada.",
		"Qualcosa tiene il tuo spirito inchiodato a quel corpo. Intendo togliere il chiodo.",
		"I morti stanno sotto terra, non ci camminano sopra. Lascia che rimetta le cose a posto.",
	},
	["cls.shaman.battle.w07.017"] = {
		"Te lo chiedo una volta sola, spirito: va' a casa. Poi smetto di chiedere.",
		"Sei lontano dal tuo elemento, e qualcuno ti ha piegato a questo. Vattene, o ti ci mando io.",
	},
	["cls.shaman.battle.w07.018"] = {
		"Niente degli elementi ti ha fatto. Gli elementi non hanno motivo di risparmiarti.",
		"Non appartieni a questo mondo, e la terra lo sa.",
	},
	["cls.shaman.battle.w07.019"] = {
		"Sentilo attraverso il terreno. I piedi capiscono prima degli occhi.",
		"Ascolta con le piante dei piedi. Il terreno porta il peso di ogni passo verso di me.",
	},
	["cls.shaman.battle.w07.020"] = {
		"Occhio al terreno. Sta dalla mia parte, e serba rancore.",
		"Guarda dove metti i piedi. Con la terra di qui ho già scambiato due parole.",
	},
	["cls.shaman.battle.w07.021"] = {
		"si fa immobile, gli occhi socchiusi, come a chiedere licenza a qualcosa sotto i piedi prima del primo colpo.",
		"abbassa lo sguardo per un respiro, muovendo le labbra, prima di rialzarlo sul nemico.",
	},
	["cls.shaman.battle.w07.022"] = {
		"Fra tutti quelli che potevi infastidire, hai scelto chi parla con i fulmini.",
		"Pessima scelta. Io e il tuono ci parliamo.",
	},
	["cls.shaman.battle.w07.023"] = {
		"Il fuoco spinge per partire per primo. Non ancora. Che gli altri prendano posto.",
		"Il fuoco vuole la prima parola, come sempre. Trattienilo un respiro, e morderà più forte.",
	},
	["cls.shaman.battle.w07.024"] = {
		"Spiriti, svegliatevi! Abbiamo un ospite, e non è educato.",
		"In piedi, spiriti! Visite, e di quelle maleducate.",
		"Su, spiriti! È arrivato qualcuno che non sa bussare.",
	},
	["cls.shaman.battle.w07.025"] = {
		"Combatterò, e più tardi chiederò agli spiriti se era proprio necessario. A quella domanda rispondono di rado.",
		"Prima combattere, poi interrogarsi. Gli spiriti avranno comunque la loro opinione.",
	},
	["cls.shaman.battle.w07.026"] = {
		"Prima il totem del fuoco. Che dia lui il primo morso.",
		"Il totem del fuoco va piantato vicino. Il calore non gli ha mai dato fastidio.",
		"Un po' di fuoco ai miei piedi prima di cominciare. Ci finirai dentro da te.",
	},
	["cls.shaman.battle.w07.027"] = {
		"pianta un totem nel terreno col palmo della mano, e la terra sembra afferrarlo.",
		"infila un totem nel suolo con una rapida torsione, come chi pianta il picchetto di una tenda.",
	},
	["cls.shaman.battle.w07.028"] = {
		"Lasciami avvolgere in un po' di fulmine, prima. Poi accomodati pure.",
		"Un attimo, che mi metto addosso qualcosa che fa scintille. Ecco. Prego.",
	},
	["cls.shaman.battle.w07.029"] = {
		"Prima rallentarlo con la terra, poi decidere. Si ragiona meglio quando l'altro arranca.",
		"Legare il terreno attorno e lasciarlo arrancare. Poi io e il fulmine ne discutiamo con calma.",
	},
	["cls.shaman.battle.w07.030"] = {
		"Lo senti? Ogni spirito a un tiro di sasso si è appena voltato a guardarti.",
		"L'aria, il terreno, ogni goccia d'acqua qui intorno: adesso ascoltano tutti me.",
	},
	["cls.shaman.battle.w07.031"] = {
		"L'equilibrio non vuol dire non colpire mai. A volte la bilancia ha bisogno di una spinta.",
		"Gli anziani parlano di equilibrio a voce calma. Nel mezzo di uno scontro non suona mai calmo.",
	},
	["cls.shaman.battle.w07.032"] = {
		"Facciamola breve. Ogni fulmine lo pago di tasca mia.",
		"Sbrighiamoci, d'accordo? Il fulmine costa più a me che a te. Be', quasi.",
	},
	["cls.shaman.battle.w07.033"] = {
		"inspira, e per un attimo l'aria vicina sa di pioggia su pietra calda.",
		"prende fiato, e l'aria tutt'intorno assume l'odore pungente che viene prima del fulmine.",
	},
	["cls.shaman.battle.w07.034"] = {
		"Il tuo spirito correrà libero, dopo. Mi spiace che debba essere io.",
		"Dopo parlerò di te agli spiriti. Adesso, vieni.",
		"Non ce l'ho con te, creatura. Solo con il posto in cui ti trovi.",
	},
	["cls.shaman.battle.w07.035"] = {
		"I miei vecchi maestri avrebbero da ridire su come poggio i piedi. Loro non sono qui, questo sì.",
		"Ogni anziano da cui ho imparato storcerebbe il naso davanti a questa guardia. Per fortuna nessuno di loro sta guardando.",
	},
	["cls.shaman.battle.w07.036"] = {
		"Combattete vicino ai totem! Sono per tutti noi.",
		"Tutti vicino ai totem! Non li pianto mica per me.",
	},
	["cls.shaman.battle.w07.037"] = {
		"avanza col baricentro basso, una mano già stretta intorno a un incantesimo.",
		"si fa avanti senza fretta, una parola per gli elementi già sulle labbra.",
	},
	["cls.shaman.battle.w07.038"] = {
		"Gli spiriti continuano a dirmi di avere pazienza con gli sciocchi. Ne ho avuta parecchia.",
		"Gli anziani dicono che uno sciamano dev'essere lento all'ira. Ci sto mettendo tutta la lentezza possibile.",
	},
	["cls.shaman.battle.w07.039"] = {
		"La forma del lupo, se si mette male. Non prima.",
		"C'è sempre il lupo, se la cosa si guasta. Tenerlo a mente, tenerlo di riserva.",
	},
	["cls.shaman.battle.w07.040"] = {
		"Totem dell'aria nel terreno. Vediamo se ora mi stai dietro.",
		"Lo spirito dell'aria è piantato accanto a me. Tieni il passo, se ci riesci.",
	},
	["cls.shaman.battle.w07.041"] = {
		"Maglia sulle spalle, elementi al mio fianco. Fatti avanti.",
		"Maglia di ferro e tempesta: oggi le porto entrambe. Scegli da dove cominciare.",
	},
	["cls.shaman.battle.w07.042"] = {
		"abbassa gli occhi, come se il terreno avesse detto qualcosa che valeva la pena ascoltare, e annuisce una volta.",
		"piega il capo verso terra, ascolta, e annuisce come chi accetta un patto.",
	},
	["cls.shaman.battle.w07.043"] = {
		"Gli antenati un tempo respiravano come me: sciamani, guerrieri, gente qualunque. Non ho nessuna fretta di unirmi a loro.",
		"Ogni spirito che invoco è stato qualcuno, dicono i vecchi sciamani. Vorrei restare da questa parte della richiesta ancora un po'.",
	},
	["cls.shaman.battle.w07.044"] = {
		"Terra sotto, fuoco a portata di mano, acqua poco dietro. Chiedo, e dopo ve ne sarò {g:debitore|debitrice}.",
		"Spiriti, chiedo, non ordino. Prestatemi ciò che volete, e ve lo renderò in gratitudine.",
	},
	["cls.shaman.battle.w07.045"] = {
		"Hai attaccato briga con qualcuno che ha il cielo a libro paga.",
		"Dovrei dirti che io e il cielo abbiamo un accordo. Stai per vederne le clausole.",
	},
	["cls.shaman.battle.w07.046"] = {
		"Un respiro per la terra, uno per il fuoco. Poi non ne restano da sprecare.",
		"Dentro dal naso, fuori piano. Gli spiriti arrivano prima a una voce calma.",
	},
	["cls.shaman.battle.w07.047"] = {
		"alza una mano, e una breve folata venuta dal nulla solleva la polvere tra {g:lui|lei} e il nemico.",
		"solleva il mento, e un piccolo mulinello di sabbia si alza ai suoi piedi, poi si disperde.",
	},
	["cls.shaman.battle.w07.048"] = {
		"Che stazza, eh? Anche il cielo ne ha, e sta dalla mia parte.",
		"Pesi più di me. La terra pesa più di te. Vediamo con chi si schiera.",
	},
	["cls.shaman.battle.w07.049"] = {
		"Davvero? Per te agli spiriti basterà un cenno.",
		"Per te gli spiriti non si alzano nemmeno dal letto. Faccio da me.",
	},
	["cls.shaman.battle.w07.050"] = {
		"Spiriti di questo luogo, non l'ho cominciata io. Ma vorrei il vostro aiuto per finirla.",
		"Spiriti che abitate qui, scusate il baccano. Non durerà molto.",
		"Spiriti di questa terra, perdonate il disturbo. Farò più in fretta che posso.",
	},
	["cls.shaman.battle.w07.051"] = {
		"Fulmine o arma? Tutti e due. Agli spiriti piace chi non tentenna.",
		"Colpire da vicino o da lontano: agli spiriti non importa, purché chieda come si deve.",
	},
	["cls.shaman.battle.w07.052"] = {
		"batte un piede a terra, forte, come chi bussa a una porta molto più in basso.",
		"pianta il tallone con un tonfo e aspetta, un battito appena, che qualcosa là sotto risponda.",
	},
	["cls.shaman.battle.w07.053"] = {
		"Speravo in una strada tranquilla. Gli spiriti avevano altri piani, e a quanto pare anche tu.",
		"Addio passeggiata tranquilla. Va bene. Spiriti, si lavora.",
	},
	["cls.shaman.battle.w07.054"] = {
		"Eccolo, quel ronzio sotto la pelle. Gli elementi sono svegli, e anch'io.",
		"Di nuovo il pizzicore sulla punta delle dita. Bene. Gli spiriti si sono presentati al lavoro.",
	},
	["cls.shaman.buff.w07.001"] = {
		"Un sorso della pazienza degli spiriti dell'acqua. Giù, allora: mi lasceranno respirare finché non mi trattengo troppo.",
		"Polmoni che per un po' si credono branchie. Gli spiriti hanno il senso dell'umorismo.",
	},
	["cls.shaman.buff.w07.002"] = {
		"Vai, tuffati. Gli spiriti dell'acqua hanno promesso di non affogarti, almeno per un po'.",
		"Ora puoi respirare sott'acqua. Non tirare la corda oltre la pazienza degli spiriti.",
	},
	["cls.shaman.farewell.w07.001"] = {
		"Va' in pace. Fa' attenzione a dove il terreno è molle e a dove il fuoco ha fame.",
		"Addio. Che gli spiriti siano di buon umore ovunque tu vada.",
		"Strade sicure. E se senti tuonare senza una nuvola sopra la testa, sarò io, alle prese con qualcosa.",
	},
	["cls.shaman.greet.w07.001"] = {
		"Salute. Gli spiriti sembrano tranquilli intorno a te. È un buon segno.",
		"Salve. Scusa se lancio un'occhiata a terra: mi piace sapere chi altro sta ascoltando.",
	},
	["cls.shaman.greet.w07.002"] = {
		"Salute, viandante. Terra salda e vento favorevole, come si dice da noi.",
		"Salve. Che la tua strada sia salda e la tua acqua pulita.",
	},
	["cls.shaman.heal.w07.001"] = {
		"Stavolta l'acqua è per il mio taglio. Quando la ferita è mia, la sento più fredda.",
		"Strano chiedere l'acqua per me. Arriva lo stesso, solo che sembra sospirare.",
		"Quando mi curo da {g:solo|sola} la sorgente scorre più rigida, come se il paziente non le andasse a genio.",
	},
	["cls.shaman.heal.w07.002"] = {
		"Di nuovo {g:guarito|guarita} con le mie mani. Gli spiriti ormai saranno stufi della mia faccia.",
		"Un'altra toppa sulla solita pelle. Se l'acqua tenesse i conti, avrei debiti fino al collo.",
		"Curo gli altri tutto il giorno, poi mi prendo proprio il colpo che avrei dovuto vedere. Gli spiriti sono troppo educati per ridere. Quasi sempre.",
	},
	["cls.shaman.heal.w07.003"] = {
		"preme il palmo bagnato sulla propria ferita; l'acqua vi resta in goccioline per un istante, poi penetra, e la pelle si richiude.",
		"passa due dita lungo il taglio come a lisciare la sponda di un ruscello, e la carne si ricuce dietro di loro.",
	},
	["cls.shaman.heal.w07.004"] = {
		"Chiusa. La pelle dimentica in fretta; il resto di me ci mette di più.",
		"Il taglio non c'è più. Dove è entrato lo sento ancora, come una parola che non riesco a ricordare.",
		"Il dolore se ne va, e lascia un po' di rigidità come ricevuta.",
	},
	["cls.shaman.heal.w07.005"] = {
		"Acqua, questa è per me. Te ne sarò {g:debitore|debitrice}.",
		"Spiriti dell'acqua, ancora una per chi non smette mai di chiedere.",
		"Per una volta tocca a me, acqua. Fai in fretta.",
	},
	["cls.shaman.heal.w07.006"] = {
		"Un corpo è fatto per lo più d'acqua, dicono i vecchi sciamani. Guarire è solo ricordargli che forma tenere.",
		"I vecchi sciamani insegnavano che la carne è acqua che ha imparato a stare in piedi. Le chiedo, piano, di ricordarsi la forma.",
	},
	["cls.shaman.heal.w07.007"] = {
		"piega un ginocchio e posa una mano aperta sul terreno; una frescura sale da sotto fin dentro la ferita, e il sangue rallenta.",
		"si sorregge con un palmo sul terreno mentre la guarigione risale in {g:lui|lei} come l'acqua nelle radici.",
	},
	["cls.shaman.heal.w07.008"] = {
		"Chi cura e sta lungo per terra non guarisce nessuno. Quindi prima io, e senza sensi di colpa.",
		"Prima regola della guarigione, per quanto mi riguarda: tenere in piedi chi guarisce.",
	},
	["cls.shaman.heal.w07.009"] = {
		"Dentro il respiro, fuori il dolore. Al resto pensa l'acqua, purché io non le metta fretta.",
		"Respira piano. L'acqua va al passo di chi la chiama, e uno sciamano in preda al panico ottiene una sorgente in preda al panico.",
		"Respiro lento, acqua lenta. Da sempre vanno di pari passo.",
	},
	["cls.shaman.heal.w07.010"] = {
		"Lo spirito del fuoco trova che le ferite siano una bella cosa. Quello dell'acqua non è d'accordo. Oggi, per una volta, sto con l'acqua.",
		"Il fuoco l'avrebbe cauterizzata, e con gusto. Ho chiesto all'acqua. Più gentile, e nessuno sa di bruciato.",
		"Chiedi al fuoco di chiudere una ferita e lo farà, con gran svolazzo e una cicatrice. Al capezzale l'acqua è un ospite migliore.",
	},
	["cls.shaman.heal.w07.011"] = {
		"Niente di grave. Chiedo solo agli spiriti di rimettermi come mi hanno {g:trovato|trovata}.",
		"Un attimo. L'acqua mi sta ricucendo, e odia che le si metta fretta.",
	},
	["cls.shaman.heal.w07.012"] = {
		"Ogni acqua prima o poi trova il mare. A quella che ho dentro ho chiesto di fare il giro lungo.",
		"I fiumi finiscono, i corpi pure. Fino ad allora, l'acqua continua a chiudere quello che la strada apre.",
		"Alla fine ogni ruscello scende a valle. Al mio, oggi, ho chiesto di attardarsi nelle pozze di montagna.",
	},
	["cls.shaman.heal.w07.013"] = {
		"lascia uscire il fiato tra i denti mentre il dolore defluisce, e scuote le mani.",
		"si raddrizza piano, una mano premuta dove c'era il dolore, in attesa di essere {g:sicuro|sicura} che se ne sia andato davvero.",
		"gonfia le guance e sbuffa mentre il bruciore si spegne, poi piega le dita una per una.",
	},
	["cls.shaman.heal.w07.014"] = {
		"Anche per i miei tagli chiedo come si deve. Gli spiriti si accorgono quando uno sciamano comincia a darli per scontati, e non lo dimenticano in fretta.",
		"Con gli spiriti niente scorciatoie, nemmeno quando la ferita è mia. Chiedere, aspettare, ringraziare. Poi sanguinare meno.",
	},
	["cls.shaman.heal.w07.015"] = {
		"Chiudila, acqua! Qui non ho finito!",
		"Ricucila in fretta. Questo mi deve ancora una caduta.",
		"Acqua, sigillala. Ho ancora fulmini da spendere.",
	},
	["cls.shaman.heal.w07.016"] = {
		"Un'onda su di me, poi si torna dentro. Che la cura non diventi un nascondiglio.",
		"Prima la toppa, poi il colpo. Uno sciamano che in battaglia sa solo curarsi è solo un modo più lento di perdere.",
		"Prima l'acqua, finché resta abbastanza di me per trattenerla. Poi di nuovo il fulmine.",
	},
	["cls.shaman.heal.w07.017"] = {
		"arretra di mezzo passo, rivolge all'acqua una parola veloce tra un respiro e l'altro, e il peggio della ferita si chiude mentre la lotta incalza.",
		"tiene un occhio sul nemico e riserva l'altro alla propria ferita, chiamando l'acqua con una voce troppo bassa per arrivare lontano.",
	},
	["cls.shaman.heal.w07.018"] = {
		"Adesso niente fretta. Posso lasciar lavorare l'acqua piano, come piace a lei, e non come pretende uno scontro.",
		"Niente di urgente. L'acqua può prendersi il suo tempo con me: senza fretta lavora sempre meglio.",
		"Lontano da ogni scontro, lascio che la guarigione arrivi al suo ritmo. L'acqua frettolosa lascia segni; quella lenta, quasi niente.",
	},
	["cls.shaman.heal.w07.019"] = {
		"Qui non c'è nessuno a cui chiedere, se non l'acqua. Per fortuna l'acqua non mi ha mai detto di no.",
		"Da {g:solo|sola} per strada, chi cura e chi è curato sono la stessa persona. E quella persona si lamenta parecchio.",
	},
	["cls.shaman.heal.w07.020"] = {
		"si sfiora la fronte con due dita, poi la ferita, un piccolo segno di richiesta, e il dolore comincia a svanire.",
		"pronuncia sulla propria ferita le stesse parole sommesse che direbbe su quella di chiunque, non una di meno e non più in fretta.",
	},
	["cls.shaman.heal.w07.021"] = {
		"Altri si portano dietro le bende. Io porto una promessa dell'acqua, rinnovata ogni volta che chiedo con garbo.",
		"Una striscia di lino farebbe lo stesso lavoro, più lenta e più brutta. L'acqua non mi deve niente, eppure viene.",
		"Niente ago, niente filo, niente puzza di unguento. Solo acqua che accetta di ricordare dove la mia pelle combaciava.",
	},
	["cls.shaman.heal.w07.022"] = {
		"Abbastanza {g:rimesso|rimessa} in sesto da portare i totem per un altro miglio. È l'unica misura che uso.",
		"Bene. I totem non si sarebbero portati da soli, e cominciavano a pesare.",
	},
	["cls.shaman.heal.w07.023"] = {
		"Gli antenati mi guardano ricucire di nuovo la solita ferita da {g:sbadato|sbadata}, immagino. Mi piace pensare che scuotano la testa sorridendo.",
		"Se gli antenati tengono il conto di quante volte mi curo da {g:solo|sola}, preferisco non vederlo.",
	},
	["cls.shaman.heal.w07.024"] = {
		"Il dolore è un piccolo fuoco. L'acqua gli risponde, e per un momento litigano dentro di me. Di solito vince l'acqua, se la lascio fare.",
		"La ferita brucia; la guarigione rinfresca. Io voglio stare a metà strada fra le due.",
	},
	["cls.shaman.heal.w07.025"] = {
		"trae dall'aria un luccichio d'acqua e lo lascia scorrere sulla ferita, freddo e rapido come una sorgente di montagna.",
		"mormora, e un filo sottile d'acqua sembra uscire dal nulla e avvolgere la ferita come una benda che affonda nella pelle.",
	},
	["cls.shaman.heal.w07.026"] = {
		"Il modo migliore di curare una ferita tua: non guardarla finché non è sparita.",
		"Non guardo mai i miei tagli richiudersi. È come guardare la pappa che si addensa, e in qualche modo più imbarazzante.",
		"Guardarsi guarire è come aspettare che l'acqua bolla. Io preferisco fissare l'orizzonte.",
	},
	["cls.shaman.heal.w07.027"] = {
		"Chiedere aiuto è difficile anche quando lo si chiede a una sorgente. L'orgoglio è l'ultima cosa che l'acqua lava via.",
		"L'acqua chiude il taglio in fretta. L'orgoglio ci mette di più. In quel colpo ci sono {g:entrato|entrata} a occhi aperti.",
	},
	["cls.shaman.heal.w07.028"] = {
		"Sorgente della terra profonda, sali per me.",
		"Acqua che scorri sotto le pietre, trovami.",
		"Acqua fresca, da sotto. Qui.",
	},
	["cls.shaman.heal.w07.029"] = {
		"Il cuore smette di correre un battito o due dopo il dolore. Lo aspetto. Inutile alzarsi prima che sia pronto.",
		"Il polso rallenta, il fiato ritorna. Il corpo è sempre l'ultimo a ricevere le buone notizie.",
		"Il dolore se ne va molto prima che le mani smettano di tremare. Lascio che se la prendano comoda.",
	},
	["cls.shaman.heal.w07.030"] = {
		"esamina il punto dov'era la ferita con la fronte aggrottata, come se potesse riaprirsi per dispetto.",
		"tasta la pelle appena guarita con un dito sospettoso.",
	},
	["cls.shaman.heal.w07.031"] = {
		"C'è l'acqua lenta, profonda e accurata, e quella svelta per quando non c'è tempo. Oggi mi serviva quella svelta.",
		"Onda lunga o breve, l'acqua è la stessa. La breve salta soltanto i convenevoli.",
	},
	["cls.shaman.heal.w07.032"] = {
		"Quando se ne va, l'acqua si porta via anche il sangue. Le sono {g:grato|grata} di risparmiarmi quella vista.",
		"Ferita chiusa, e l'acqua ha perfino sciacquato via il sangue. Spiriti scrupolosi.",
	},
	["cls.shaman.heal.w07.033"] = {
		"Aspetta. Fammi mettere un po' d'acqua qui sopra, prima che si faccia strane idee.",
		"Un respiro. Devo convincere l'acqua a chiudermi questa.",
	},
	["cls.shaman.heal.w07.034"] = {
		"La ferita non c'è più. La stanchezza sotto, sì. Nessun incantesimo è mai arrivato così in fondo.",
		"Chiusa, e la stanchezza resta. L'acqua ricuce la carne; nessuno le ha mai chiesto di ricucire una giornata lunga.",
	},
	["cls.shaman.heal.w07.035"] = {
		"Questo corpo è un prestito degli antenati, dicono gli anziani, e se lo aspettano indietro in condizioni decenti. Ci provo.",
		"Gli anziani dicono che i corpi li prendiamo in prestito da chi è venuto prima. Io continuo a rattoppare il mio. Un giorno lo restituirò, ammaccato.",
	},
	["cls.shaman.heal.w07.036"] = {
		"chiude gli occhi mentre la guarigione attecchisce, le labbra che si muovono in silenzio, come chi conta sottovoce.",
		"si fa immobile mentre l'acqua lavora, come in ascolto di qualcosa sotto il rumore.",
	},
	["cls.shaman.heal.w07.037"] = {
		"Gli spiriti dell'acqua sono gentili con me, ma sospetto che sparlino di me alle mie spalle.",
		"{g:Guarito|Guarita} un'altra volta. Immagino gli spiriti dell'acqua sospirare come si sospira davanti a stivali infangati lasciati sulla soglia.",
		"Gli spiriti mi rimettono in sesto senza lamentarsi. Le lamentele, scommetto, arrivano dopo, tra di loro.",
	},
	["cls.shaman.heal.w07.038"] = {
		"Chiusa. Ora chi l'ha aperta conoscerà il fulmine.",
		"{g:Guarito|Guarita}, e più {g:arrabbiato|arrabbiata} di prima. La forza me l'hanno resa gli spiriti; il caratteraccio è tutto mio.",
	},
	["cls.shaman.heal.w07.039"] = {
		"L'acqua che guarisce lascia sempre un sapore in bocca, come un sasso succhiato fino a pulirlo. Ho finito per trovarlo confortante.",
		"Quando l'onda è passata, per un attimo resta un punto freddo nel petto, come se avessi inghiottito un torrente di montagna.",
		"La guarigione lascia sempre un brivido leggero lungo le ossa, come una cantina che tiene il fresco anche quando fuori la giornata si è scaldata.",
	},
	["cls.shaman.heal.w07.040"] = {
		"borbotta all'acqua col tono che si usa con un vicino a cui si sono già chiesti troppi favori.",
		"chiede la guarigione agli spiriti con l'aria un po' imbarazzata di un cliente abituale.",
	},
	["cls.shaman.heal.w07.041"] = {
		"La maggior parte l'ha presa l'armatura. Il resto è affare dell'acqua.",
		"Quello che passa l'armatura tocca all'acqua. Ultimamente lavora parecchio.",
	},
	["cls.shaman.heal.w07.042"] = {
		"Ogni giorno do il mio peso alla terra, camminandoci sopra. Ogni tanto lei mi restituisce qualcosa.",
		"Quando guarisco, il terreno sotto di me vibra. Non forte. Quel tanto che basta per farmi sapere che a tenermi in piedi non ci sono solo io.",
		"Quando mi curo, sento la terra appoggiarsi a me, come chi ti accosta una spalla senza dire niente.",
	},
	["cls.shaman.heal.w07.043"] = {
		"Sto bene. Ormai dentro ho quasi solo acqua, ed è di buon umore.",
		"Non agitarti. Ci hanno già pensato gli spiriti.",
		"Smettila di fissarmi. Ho avuto di peggio, e l'acqua ha lavorato su di peggio.",
	},
	["cls.shaman.heal.w07.051"] = {
		"Il totem ronza ai miei piedi e mi ricuce a piccoli sorsi. I piccoli sorsi si sommano.",
		"Piantarlo, restarci vicino, andare avanti. Il flusso raggiunge il dolore quando è il suo momento.",
	},
	["cls.shaman.heal.w07.052"] = {
		"pianta il totem dell'acqua nel terreno e resta alla sua portata, lasciando che il suo battito lento passi sulle ferite.",
		"pianta un totem ai propri piedi; ne parte un'increspatura leggera, e i lividi peggiori cominciano a sbiadire.",
	},
	["cls.shaman.heal.w07.053"] = {
		"Non inciampare nel totem. È l'unica cosa che mi tiene in piedi.",
		"Quel totem è per me, ma se resti lì vicino lo divido volentieri.",
	},
	["cls.shaman.heal.w07.054"] = {
		"Un totem è una promessa piantata nel terreno. Questa promette acqua, poca e spesso, finché non mi allontano.",
		"Fra tutti i totem, quello dell'acqua è il più paziente. Non guarisce in fretta. Guarisce sempre.",
	},
	["cls.shaman.heal.w07.061"] = {
		"Sa di palude bollita in una pentola di rame. Gli spiriti dell'acqua non mi servirebbero mai una roba così schifosa.",
		"Un intruglio rosso da alchimista, e funziona. Più tardi chiederò scusa all'acqua per averla tradita.",
		"L'acqua la tengo per dopo. Questa la lascio alla boccetta.",
	},
	["cls.shaman.heal.w07.062"] = {
		"Più svelto che chiedere. Giù tutto d'un fiato.",
		"Mi manca il fiato per le parole lunghe. Vada per la bottiglia.",
		"Stavolta l'acqua si riposa. Alla salute.",
	},
	["cls.shaman.heal.w07.063"] = {
		"stappa una pozione con i denti, beve, e borbotta qualcosa che somiglia a delle scuse rivolte all'acqua.",
		"vuota una piccola fiala rossa e poi, per abitudine, ringrazia comunque gli spiriti.",
	},
	["cls.shaman.heal.w07.064"] = {
		"Una pietra da stregone, tiepida nella mano. Gli spiriti stanno alla larga da qualunque cosa l'abbia fatta, e lo farei anch'io, se non funzionasse.",
		"Pietra della salute. Cerco di non pensare a come è stata fatta. Guarisce, e gli spiriti possono accigliarsi più tardi.",
	},
	["cls.shaman.heal.w07.065"] = {
		"Questa pietra non l'ha fatta la terra. Però fa il suo lavoro.",
		"Pietra strana. La terra non la riconoscerebbe come sua, ma le mie ferite non fanno tante storie.",
	},
	["cls.shaman.heal.w07.066"] = {
		"Tutti gli sciamani che conosco giurano sull'acqua e si portano dietro tre pozioni. Io non faccio eccezione.",
		"L'acqua è per quando ho il tempo di chiedere. Questa è per quando non ce l'ho.",
	},
	["cls.shaman.heal.w07.201"] = {
		"Piano. Prima il freddo, poi va meglio.",
		"Sarà come una sorgente di montagna giù per il colletto. Poi non farà più male.",
		"Preparati al brivido. Il bello viene subito dopo.",
	},
	["cls.shaman.heal.w07.202"] = {
		"{target}, stai perdendo pezzi. Permetti.",
		"Calma, {target}. Gli spiriti hanno visto di peggio.",
		"Resta lì, {target}. Mezzo respiro ed è chiusa.",
	},
	["cls.shaman.heal.w07.203"] = {
		"Strano come l'acqua sembri più tiepida quando va a qualcun altro.",
		"Preferisco curare dieci altri che me una volta sola. Chiedere per loro è facile.",
		"L'acqua mi lascia le mani più volentieri quando la ferita non è mia. E io con lei.",
	},
	["cls.shaman.heal.w07.204"] = {
		"volge il palmo verso la ferita altrui e pronuncia una parola sommessa, e un'increspatura d'acqua limpida passa dalla mano al dolore.",
		"scuote le dita come per liberarle dalle gocce, e l'acqua cade dove serve, qualche passo più in là.",
	},
	["cls.shaman.heal.w07.205"] = {
		"L'acqua comincia a riconoscerti. Non è un complimento.",
		"Chiusa. Gli spiriti ti chiedono di smettere di farne collezione.",
		"Ecco. La prossima volta fatti colpire da un'altra parte: l'acqua si annoia di quel punto.",
	},
	["cls.shaman.heal.w07.206"] = {
		"Continua così. L'acqua ce l'hai addosso.",
		"Non fermarti! L'acqua ti segue là dentro.",
		"Avanti, sono qui dietro con la sorgente.",
	},
	["cls.shaman.heal.w07.207"] = {
		"Guardo chi ho davanti, non il nemico. La mia battaglia è che resti in piedi.",
		"Il suo sangue, la mia acqua. Lo scambio è sempre lo stesso, e lo faccio volentieri.",
		"I nemici li contino gli altri. Io conto le ferite dalla mia parte.",
	},
	["cls.shaman.heal.w07.208"] = {
		"Siediti un momento. Fammi vedere bene.",
		"Ora niente fretta. Lascia che l'acqua lavori con calma: viene meglio.",
		"Non ci insegue nessuno. Non muoverti e lascia che la chiuda per bene.",
	},
	["cls.shaman.heal.w07.209"] = {
		"Acqua dei luoghi profondi, per questa persona vale la pena scomodarti.",
		"Spiriti, guardate con favore chi ho davanti. Garantisco io.",
		"Sorgente sotto di noi, sali per chi mi sta accanto.",
	},
	["cls.shaman.heal.w07.210"] = {
		"La ferita la posso chiudere. Il momento in cui ha capito di poter morire, no. Quello resta.",
		"L'acqua ricuce il taglio. Lo spavento nei suoi occhi devo lasciarlo dov'è.",
		"La carne la ricucio in un respiro. Lo sguardo di chi ha appena visto arrivare la fine ci mette molto di più.",
	},
	["cls.shaman.heal.w07.211"] = {
		"manda verso {target} un filo d'acqua fresca, rapido e sicuro come un pesce nella corrente.",
		"lancia un'occhiata a {target}, valuta la ferita con l'occhio di chi cura, e chiama l'acqua oltre la distanza.",
	},
	["cls.shaman.heal.w07.212"] = {
		"Prego. Ora torna là fuori prima che ci ripensi.",
		"Ecco. Ringrazia l'acqua, non me: io ho solo chiesto.",
		"In piedi. La ferita è chiusa, e la scusa pure.",
	},
	["cls.shaman.heal.w07.213"] = {
		"C'è chi serve l'Orda con l'ascia. Io la servo rimandando indietro interi quelli che la portano.",
		"La mia parte di guerra è piccola e bagnata: chiudere quello che la battaglia apre.",
		"L'Orda vince le sue battaglie in piedi. Qualcuno deve rimetterla in piedi ogni volta che cade.",
	},
	["cls.shaman.heal.w07.214"] = {
		"Non muoverti, a meno che tu non voglia un orecchio in più. L'acqua non va per il sottile con le forme.",
		"Non dimenarti. L'acqua è brava, ma non è un sarto.",
	},
	["cls.shaman.heal.w07.215"] = {
		"Quando curo qualcun altro, sento l'acqua uscire da me e andare dall'altra parte, come un fiume che trova un campo più in basso. Conosce solo la discesa.",
		"L'acqua corre sempre verso chi ne ha più bisogno. Io apro soltanto la chiusa.",
		"L'acqua cerca il punto più basso. Una ferita è un punto basso. Io sto in cima e lascio andare.",
	},
	["cls.shaman.heal.w07.216"] = {
		"Dimmi dove ti fa male. Anzi, non serve: ce l'hai scritto addosso.",
		"Fammi vedere. No, lascia perdere, la vedo da qui.",
	},
	["cls.shaman.heal.w07.217"] = {
		"In gruppo l'acqua va divisa come le razioni. Chi sanguina di più mangia per primo.",
		"Tenere in piedi un gruppo intero è come badare a tanti fuocherelli che vogliono legna tutti insieme. Prima questo, poi il prossimo.",
	},
	["cls.shaman.heal.w07.218"] = {
		"Un'onda sola, e salta da una ferita all'altra come un sasso lanciato a rimbalzare su uno stagno.",
		"L'acqua incatenata passa da chi sta male a chi sta peggio. Sembra sapere sempre chi ne ha più bisogno.",
	},
	["cls.shaman.heal.w07.219"] = {
		"Va tutto bene. Gli spiriti ti tengono: puoi lasciar andare il fiato.",
		"Abbassa le spalle. Con tutta quella tensione l'acqua non riesce a entrare.",
		"Apri il pugno. Il dolore se ne va prima da una mano aperta.",
	},
	["cls.shaman.heal.w07.220"] = {
		"guarda la ferita chiudersi da qualche passo di distanza, con l'occhio critico di un vasaio che giudica una ciotola appena cotta.",
		"annuisce una volta, {g:soddisfatto|soddisfatta}, mentre la ferita altrui si richiude.",
	},
	["cls.shaman.heal.w07.221"] = {
		"In piedi. All'Orda servi più che alla terra.",
		"Su. La terra può aspettarti, l'Orda no.",
	},
	["cls.shaman.heal.w07.222"] = {
		"Non ringraziano mai l'acqua. Ringraziano me. Io lo riferisco quando nessuno ascolta.",
		"La gente ringrazia lo sciamano. Lo sciamano ringrazia l'acqua. L'acqua, per quel che ne so, non ringrazia nessuno.",
		"La gratitudine va alle mani che si vedono. Io mi assicuro che la sorgente abbia la sua parte, in privato.",
	},
	["cls.shaman.heal.w07.223"] = {
		"Non ringraziarmi ancora. Ringraziami quando ce ne andremo da qui con le nostre gambe.",
		"Tieniti i ringraziamenti. La giornata non è finita.",
	},
	["cls.shaman.heal.w07.224"] = {
		"Gli spiriti mi prestano la loro acqua più volentieri per gli altri che per me. Non ho mai chiesto perché. Credo di saperlo.",
		"Quando chiedo per qualcun altro, gli spiriti rispondono prima che io finisca di parlare.",
		"Chiedi per te, e gli spiriti ti pesano. Chiedi per un altro, e vengono e basta.",
	},
	["cls.shaman.heal.w07.225"] = {
		"La prossima volta spostati. L'acqua è gratis, la mia pazienza no.",
		"Fatto. E di questa ferita non parliamo più.",
	},
	["cls.shaman.heal.w07.226"] = {
		"concede alla lotta un attimo di distrazione e un mormorio veloce, e l'acqua balza verso chi ne ha bisogno.",
		"tiene il fulmine in una mano e la guarigione nell'altra, e in questo momento a partire per prima è la guarigione.",
	},
	["cls.shaman.heal.w07.227"] = {
		"Resta vicino a me. L'acqua arriva più lontano di quanto pensi, ma non all'infinito.",
		"Non allontanarti mentre ti curo. L'acqua non rincorre nessuno.",
	},
	["cls.shaman.heal.w07.228"] = {
		"Se cade, sarà colpa mia. Quindi non cade.",
		"Ogni persona che curo è una promessa che ho fatto senza dirla ad alta voce.",
		"Non faccio molti giuramenti. Tenere vivo chi mi sta accanto è quello che mantengo senza che nessuno me lo chieda.",
	},
	["cls.shaman.heal.w07.229"] = {
		"Non ancora. Gli antenati oggi hanno la tavola piena.",
		"Il tuo posto tra gli antenati non scappa. Resta qui ancora un po'.",
	},
	["cls.shaman.heal.w07.230"] = {
		"Il taglio lo posso curare. Quello che c'è dietro tanta foga, no.",
		"Curare è la metà facile. Quella difficile è veder ripartire di corsa verso la mischia chi ho appena curato.",
		"Chiudo la ferita, e chi la portava va subito a cercarsene un'altra. Le mie giornate hanno tutte questa forma.",
	},
	["cls.shaman.heal.w07.231"] = {
		"Un'altra ferita ricucita. L'acqua non si stanca mai: la invidio.",
		"Fatto. Se gli spiriti si facessero pagare a ferita, sarei {g:rovinato|rovinata}.",
		"Ecco. Un rammendo che regge, e nemmeno brutto.",
	},
	["cls.shaman.jest.w07.001"] = {
		"Quanti sciamani servono per accendere un fuoco da campo? Uno, più quattro spiriti che vogliono tutti il merito.",
		"Mi chiedono perché gli sciamani siano così calmi. Prova a discutere ogni giorno con quattro elementi: smetti di sprecare energie con le persone.",
	},
	["cls.shaman.levelup.w07.001"] = {
		"Gli spiriti rispondono un respiro prima di prima. O si fidano di più, o ho finalmente capito dove mettermi.",
		"Qualcosa si è assestato fra me e gli elementi. Un po' più di scioltezza, un po' meno bisogno di chiedere due volte.",
	},
	["cls.shaman.levelup.w07.002"] = {
		"piega le dita e un debole crepitio corre fra l'una e l'altra, sparito prima che qualcuno possa giurarci.",
		"pianta bene i piedi e inspira lentamente; per un istante il suolo sembra chinarsi a {g:incontrarlo|incontrarla}.",
	},
	["cls.shaman.levelup.w07.003"] = {
		"Un po' più di tuono nelle mani. Cerca di non starmi troppo addosso finché non ci faccio l'abitudine.",
		"Gli spiriti hanno deciso che valgo un po' più di fatica. Non sarò io a contraddirli.",
	},
	["cls.shaman.lowhp.w07.001"] = {
		"Spiriti, non ho finito! Ancora una spinta!",
		"Non ancora! Terra, fuoco, chiunque: ancora una spinta!",
		"Spiriti, spingete con me! Non è finita!",
	},
	["cls.shaman.lowhp.w07.002"] = {
		"Lascia perdere l'attacco. Un'onda di cura, subito, o il resto non ha senso.",
		"Il fulmine dopo. Prima l'acqua, o non resterà nessuno a scagliarlo.",
		"Il fulmine può aspettare, l'acqua no. Quando sanguini, la sequenza conta.",
	},
	["cls.shaman.lowhp.w07.003"] = {
		"barcolla all'indietro, e per un battito il debole bagliore attorno alle mani trema come una candela nella corrente.",
		"inciampa; il crepitio intorno a {g:lui|lei} sfrigola e quasi si spegne.",
	},
	["cls.shaman.lowhp.w07.004"] = {
		"Se finisce qui, spero di essermi {g:ricordato|ricordata} di mettere un ankh nella borsa.",
		"La reincarnazione è un bel trucco. Preferirei non averne bisogno oggi.",
	},
	["cls.shaman.lowhp.w07.005"] = {
		"Questo ha fatto male. Adesso sono {g:arrabbiato|arrabbiata}, e gli spiriti peggio.",
		"Ahi. Hai irritato me e gli elementi in un colpo solo. Notevole.",
		"Splendido. Adesso il fuoco è di pessimo umore, e francamente anch'io.",
	},
	["cls.shaman.lowhp.w07.006"] = {
		"Spiriti, tenetemi in piedi ancora un poco. Ve ne sarò {g:debitore|debitrice}.",
		"Acqua, terra, chiunque stia ascoltando: l'aiuto mi serve adesso, non dopo.",
		"Ascoltatemi, spiriti. Non chiedo molto. Solo i prossimi respiri.",
	},
	["cls.shaman.lowhp.w07.007"] = {
		"si passa il dorso della mano sulla bocca, guarda il rosso che ci è rimasto e si volta di nuovo verso il nemico.",
		"ondeggia, ritrova l'equilibrio e lascia uscire una risata breve e dura, senza allegria.",
		"si piega in due per un respiro, poi si raddrizza con un ringhio che sembra salire dagli stivali.",
	},
	["cls.shaman.lowhp.w07.008"] = {
		"Gli elementi suonano ovattati, come sentiti da sott'acqua. Non è un buon segno.",
		"Gli spiriti si stanno zittendo. O sono le mie orecchie. In ogni caso, muoviti.",
	},
	["cls.shaman.lowhp.w07.009"] = {
		"Gli anziani mi hanno insegnato tante cose. «Evita questo» doveva essere una di quelle.",
		"Un mio vecchio maestro, ovunque sia, sta sospirando molto forte.",
	},
	["cls.shaman.lowhp.w07.010"] = {
		"Un altro colpo e prendo la forma del lupo e scappo. L'orgoglio guarisce prima delle ossa.",
		"La forma del lupo è pronta. Se la cosa gira male, quattro zampe battono due.",
		"Nessuna vergogna nel lupo. Meglio uno sciamano vivo su quattro zampe che uno morto su due.",
	},
	["cls.shaman.lowhp.w07.011"] = {
		"Il totem dell'acqua, subito. Che arrivi lui dove le mie mani non ce la fanno.",
		"Pianta il flusso curativo e mettiti dentro. Niente orgoglio.",
	},
	["cls.shaman.lowhp.w07.012"] = {
		"L'Orda non si spezza così facilmente, e nemmeno io.",
		"Ho la testardaggine dell'Orda e la pazienza della terra. Ti stancherai prima tu.",
		"Sanguino, sì. Spezzarmi, no. Chiedi a un orco quanto conta la differenza.",
	},
	["cls.shaman.lowhp.w07.013"] = {
		"Sangue mio sulle mani. È al contrario di come dovrebbe. Rimedia.",
		"Sanguino troppo in fretta per pensare. Allora non pensare. Ricuciti.",
		"È più sangue mio di quanto mi piaccia vederne fuori.",
	},
	["cls.shaman.lowhp.w07.014"] = {
		"sussurra qualcosa di brusco al terreno, quasi un rimprovero, e torna a piantare i piedi.",
		"borbotta una parola secca agli elementi, col tono di chi riscuote un vecchio debito.",
		"ringhia una sola parola alla terra, e la terra, a quanto pare, la sente.",
	},
	["cls.shaman.lowhp.w07.015"] = {
		"Toglietemelo di dosso! L'acqua da sola non arriva abbastanza in fretta!",
		"I miei totem da soli non bastano! Qualcuno me lo levi di torno!",
	},
	["cls.shaman.lowhp.w07.016"] = {
		"Prima avvolgermi nel fulmine, poi la cura. Non confondere l'ordine.",
		"Su lo scudo di fulmini, poi curarmi. Il panico salta i passaggi; io no.",
	},
	["cls.shaman.lowhp.w07.017"] = {
		"Le radici affondano per un motivo. Aggrappati, e non mollare il terreno.",
		"Tieniti al terreno come una vecchia radice tiene un pendio. Il resto di me può pure tremare.",
	},
	["cls.shaman.muse.w07.001"] = {
		"La terra è la più lenta dei quattro ad arrabbiarsi e la più lenta a perdonare. Cerco di restarle amica: in fondo, ci dormo sopra.",
		"Il fuoco dimentica un torto appena ha bruciato qualcosa. La terra se lo ricorda per cent'anni. Sto {g:attento|attenta} a dove scavo.",
		"La terra si sveglia piano e si calma ancora più piano. Quando le chiedo qualcosa, chiedo esattamente quello, e non un sassolino di più.",
	},
	["cls.shaman.muse.w07.002"] = {
		"L'acqua guarisce perché ricorda la forma che una cosa aveva prima di rompersi. Io mi limito a ricordarglielo.",
		"Una ferita è un fiume che ha dimenticato gli argini. Gli spiriti dell'acqua sanno dov'erano.",
		"Non sono io a far guarire l'acqua. Le indico il punto dove serve e mi faccio da parte.",
	},
	["cls.shaman.muse.w07.003"] = {
		"Tutti vogliono che uno sciamano dica cosa farà il cielo domani. Sono {g:uno sciamano|una sciamana}, non un indovino col dito bagnato.",
		"La gente mi chiede che cosa abbia in mente il cielo. Rispondo che il cielo non ha piani: cambia idea, e lo fa a gran voce.",
	},
	["cls.shaman.muse.w07.004"] = {
		"raccoglie un sassolino dal sentiero, lo soppesa nel palmo e lo rimette esattamente dov'era.",
		"si china su un ciottolo, lo rigira due volte come se leggesse qualcosa sul fondo, poi lo rimette al suo posto.",
	},
	["cls.shaman.muse.w07.005"] = {
		"Una pretesa vuole una risposta subito. Una richiesta sa aspettare. Gli spiriti capiscono sempre quale delle due ho portato.",
		"Un paio di volte ho provato a mettere fretta agli elementi. Hanno sentito la fretta, e nient'altro.",
		"Chiedere bene vuol dire essere disposti a sentirsi dire di no. Gli spiriti lo fiutano, quando non lo sono.",
	},
	["cls.shaman.muse.w07.006"] = {
		"Il nostro Capoguerra è uno sciamano. Ci penso quando l'Orda mi chiede cose difficili: lui le chiede agli spiriti, e aspetta la risposta come tutti noi.",
		"Thrall ascolta gli elementi prima di parlare per l'Orda. Non tutti i capi se ne prenderebbero la briga. È uno dei motivi per cui lo seguo volentieri.",
		"A capo dell'Orda c'è uno sciamano. Ogni volta che ho la tentazione di dare ordini agli spiriti, ricordo che perfino lui chiede.",
	},
	["cls.shaman.muse.w07.007"] = {
		"Gli anziani degli orchi raccontano di quando i loro sciamani barattarono gli spiriti con un potere più oscuro, e si accorsero che gli elementi avevano smesso di ascoltarli. Quella storia la tengo stretta.",
		"Ci fu un tempo, dicono gli orchi, in cui gli elementi voltarono le spalle a un popolo intero. Si riavvicinarono piano, e solo perché qualcuno li pregò con umiltà. Non lo dimentico mai.",
	},
	["cls.shaman.muse.w07.008"] = {
		"Adesso nello zaino ci sono quattro totem: terra, fuoco, acqua, aria. Ognuno è costato una prova, e ognuno pesa più o meno quanto la prova.",
		"Ormai porto sulla schiena tutti e quattro gli elementi, intagliati e legati. Le mie spalle lo sanno meglio del mio orgoglio.",
	},
	["cls.shaman.muse.w07.009"] = {
		"Il totem del fuoco è l'unico che pianto con un po' di timore. La terra resta dov'è. Il fuoco vuole sapere fin dove gli è permesso arrivare.",
		"Piantare il fuoco non è come piantare la terra. La terra si assesta. Il fuoco si guarda intorno per vedere cosa può raggiungere.",
	},
	["cls.shaman.muse.w07.010"] = {
		"Il totem dell'acqua non chiede altro che un pezzo di terra e un po' di pazienza. Dei quattro, è quello che terrei se potessi tenerne uno solo.",
		"Cure che continuano a scorrere quando le mie mani sono occupate altrove: ecco cosa dà il totem dell'acqua. Lo ringrazio ancora come se fosse una persona.",
	},
	["cls.shaman.muse.w07.011"] = {
		"L'aria è stata l'ultima a fidarsi di me. Ci sono volute una lunga salita e un'attesa ancora più lunga prima che il vento accettasse di stare in un totem per me.",
		"Il totem dell'aria sembra quasi non esserci, anche quando è piantato. È fatto così, il vento: presente, utile, e mai preso del tutto.",
	},
	["cls.shaman.muse.w07.012"] = {
		"Se inciampi nel totem, chiedigli scusa. Dico sul serio. Porta rancore.",
		"Occhio al totem. Giraci intorno, non scavalcarlo. Gli spiriti badano alle buone maniere.",
	},
	["cls.shaman.muse.w07.013"] = {
		"Il lupo che divento non è mio. È uno spirito che mi presta la sua corsa per un po'. Cerco di restituirgliela com'era.",
		"Ogni volta che lascio la forma del lupo, rivolgo un piccolo cenno a chi me l'ha prestata. La strada è andata più in fretta su quattro zampe che non erano mie.",
	},
	["cls.shaman.muse.w07.014"] = {
		"volta appena il viso, come per offrire un orecchio a qualcosa che l'aria sta dicendo.",
		"smette di camminare all'improvviso, il capo piegato, tutto orecchi per qualcosa che agli altri sfugge.",
	},
	["cls.shaman.muse.w07.015"] = {
		"Un ankh nello zaino, non si sa mai. È uno strano conforto, sapere che gli antenati potrebbero rimandarmi indietro ancora una volta, se lo chiedo con garbo nel momento peggiore.",
		"Compro gli ankh come altri comprano la corda: senza sperare di doverli usare, senza mai farne a meno.",
	},
	["cls.shaman.muse.w07.016"] = {
		"Quando gli spiriti mi prestano i loro occhi, vedo oltre la collina successiva. Il guaio viene dopo: di nuovo nella mia testa, tutto mi sembra vicino e piccolo.",
		"Posso mandare lo sguardo avanti lungo la strada e vedere cosa aspetta laggiù. Rientrare nei miei occhi è come infilare stivali gelati.",
	},
	["cls.shaman.muse.w07.017"] = {
		"Camminare sull'acqua mi fa ancora un po' ridere, ogni volta. Gli spiriti dell'acqua devono trovarmi {g:buffo|buffa}, e mi reggono lo stesso.",
		"Un lago che regge il mio peso come fosse una strada: non mi ci abituerò mai. E spero proprio di non abituarmici.",
	},
	["cls.shaman.muse.w07.018"] = {
		"Ogni fulmine che chiamo era già lassù, in attesa. Io gli indico soltanto la strada. È una lezione di umiltà, quanto poco di tutto questo sia mio.",
		"La gente vede il fulmine partire dalle mie mani e pensa che sia mio. Non lo è. Io sono solo il varco che sceglie di attraversare.",
		"Il fulmine non lo creo io. Io traccio un sentiero, e il cielo decide se gli piace.",
	},
	["cls.shaman.muse.w07.019"] = {
		"Quasi sempre i miei vestiti sanno d'aria bruciata. Alla locanda nessuno mi si siede accanto, e ho smesso di chiedermi perché.",
		"Dopo uno scontro a colpi di fulmine, i peli delle braccia mi restano dritti per un'ora. È difficile sembrare dignitosi mentre si sfrigola un po'.",
		"Il fulmine lascia un odore su tutto ciò che possiedo: aria bruciata e pietra bagnata. Io ci sono {g:affezionato|affezionata}. Gli altri no.",
	},
	["cls.shaman.muse.w07.020"] = {
		"Troppo di un solo spirito è una malattia. Il lavoro di uno sciamano è accorgersene presto.",
		"Dove un elemento diventa troppo forte, la terra si ammala. Siamo qui per questo: per vederlo, e chiedere agli altri di fare da contrappeso.",
		"Quando una terra è malata, quasi sempre è uno spirito che si prende più della sua parte. Ci insegnano a cercare prima di tutto quello.",
	},
	["cls.shaman.muse.w07.021"] = {
		"I viaggiatori dicono che la terra, al nord, è malata di peste fino alle radici. Temo il giorno in cui mi inginocchierò lì ad ascoltare.",
		"Si parla di terre dove i morti camminano e il suolo stesso è marcito. Uno sciamano sente una cosa del genere e la sente nello stomaco. Anche la terra può soffrire, come chiunque.",
	},
	["cls.shaman.muse.w07.022"] = {
		"Quando combatto un elementale, combatto un pezzo del mondo piegato male. Non lo odio. Vorrei rimetterlo a posto.",
		"Gli elementali impazziti non sono mostri. Sono spiriti a cui nessuno chiede più niente. Certi giorni penso che sia questo a renderli furiosi.",
		"Un elementale furioso è uno spirito che qualcuno ha strappato via e poi abbandonato. Chiudo lo scontro perché devo, e non ne vado mai {g:fiero|fiera}.",
	},
	["cls.shaman.muse.w07.023"] = {
		"Quando mi serve coraggio immagino gli antenati in fila dietro di me, troppi da contare. Quasi tutti hanno l'aria paziente. Uno o due sembrano spazientiti con me.",
		"Dietro ogni sciamano c'è una lunga fila di morti che hanno fatto questo lavoro prima. Non li vedo. Cerco di camminare come se loro vedessero me.",
	},
	["cls.shaman.muse.w07.024"] = {
		"Lascia il ruscello pulito come l'hai trovato. L'acqua si ricorda di chi è passato.",
		"Non tirare sassi nel fiume per divertimento. Lì dentro, in un certo senso, ci abita qualcuno.",
		"Prima di bere da una sorgente, chiedi il permesso. Anche ad alta voce va bene. A ridere sei solo tu.",
	},
	["cls.shaman.muse.w07.025"] = {
		"Quando le forze mi si prosciugano, bevo acqua e resto immobile. C'è qualcosa di giusto: gli spiriti prima mi riempiono nel modo più semplice.",
		"Non c'è un incantesimo per recuperare le riserve. Acqua, un posto a sedere, e silenzio. Il rimedio più antico vale anche per gli sciamani.",
		"Di nuovo a secco. Uno sciamano va avanti con ciò che gli spiriti prestano e con acqua semplice, e oggi me ne servirà parecchia.",
	},
	["cls.shaman.muse.w07.026"] = {
		"stappa un otre e, prima di bere, lascia cadere qualche goccia a terra, come se pagasse un piccolo pedaggio.",
		"versa uno spruzzo d'acqua sulla terra prima di bere a lungo, un gesto fatto senza nemmeno guardare.",
	},
	["cls.shaman.muse.w07.027"] = {
		"La gente si aspetta che uno sciamano stia in ginocchio a salmodiare. Alcuni di noi salmodiano con uno scudo su un braccio e una mazza nell'altra mano.",
		"Bastone, ascia o mazza, poco importa. Gli spiriti viaggiano lungo l'arma in ogni caso. Il braccio, però, deve fare la sua parte.",
	},
	["cls.shaman.muse.w07.028"] = {
		"Quando sveglio la terra nella mia arma, diventa pesante nel modo giusto, come la stretta di mano di qualcuno forte.",
		"Con la terra desta dentro l'arma, ogni colpo arriva come se l'avesse scagliato il suolo stesso.",
	},
	["cls.shaman.muse.w07.029"] = {
		"Un giorno il fuoco sull'arma, quello dopo il gelo, il vento quando mi serve velocità. L'arma deve credere di avere quattro padroni. In un certo senso li ha.",
		"Cambio ciò che dorme nella mia arma come altri cambiano gli stivali. Fuoco, gelo, vento: ognuno vuole essere usato in un modo diverso.",
	},
	["cls.shaman.muse.w07.030"] = {
		"Con il fulmine che mi gira intorno come uno sciame di api arrabbiate, mi sento più al sicuro e sembro molto più {g:strano|strana}.",
		"Le piccole sfere di fulmine intorno alle spalle ronzano mentre cammino. Quando si spengono, ormai, quel suono mi manca.",
	},
	["cls.shaman.muse.w07.031"] = {
		"Purgare la magia di un nemico vuol dire chiedere agli elementi di spazzarla via. Lo fanno con cura. Certi giorni vorrei che spazzassero anche la mia testa.",
		"C'è un'onestà soddisfacente nello strappare a un nemico uno scudo preso in prestito. Agli elementi non piacciono le cose che fingono di essere ciò che non sono.",
	},
	["cls.shaman.muse.w07.032"] = {
		"Se lo chiedo, gli spiriti possono portarmi a casa sul vento. Certi giorni lo chiedo. Altri voglio sentire ogni miglio del cammino.",
		"Casa è a una richiesta di distanza, quando ho la forza di farla. È bello avere una porta così, anche quando resta chiusa.",
	},
	["cls.shaman.muse.w07.033"] = {
		"Fra tutti i miei totem, quello che lega i piedi alla terra è il più educato. Non fa male a nessuno. Chiede solo al suolo di trattenere le caviglie altrui per un po'.",
		"Adoro quel totem che trattiene a terra per le sue maniere. Niente fuoco, niente tuono. Solo il suolo che si allunga e dice: piano, piano.",
	},
	["cls.shaman.muse.w07.034"] = {
		"Il piccolo totem del fuoco sputa contro tutto ciò che si avvicina, come un bollitore di cattivo umore. Lo pianto e lo lascio brontolare.",
		"Un totem del fuoco è quanto di più simile a un cane da guardia io abbia: piccolo, testa calda, fedele finché non si consuma.",
	},
	["cls.shaman.muse.w07.035"] = {
		"C'è un totem che prende l'incantesimo destinato a me e lo inghiotte intero. Sento sempre di doverlo ringraziare come si deve, dopo, e non c'è mai tempo.",
		"Il mio totem dell'aria se ne sta lì e si mangia una maledizione puntata alla mia testa, senza una parola di lamento. Ho conosciuto gente con meno coraggio.",
	},
	["cls.shaman.muse.w07.036"] = {
		"Il totem di pietra attira i colpi su di sé e si incrina perché non debba incrinarmi io. Ogni volta ne raccolgo i pezzi, almeno col pensiero.",
		"Pianto la pietra e lascio che la bestia mastichi quella invece di me. Non è coraggio. Non è nemmeno viltà. È il mestiere, e basta.",
	},
	["cls.shaman.muse.w07.037"] = {
		"Se mi senti borbottare, non sto parlando con te. E nemmeno da {g:solo|sola}, se è per questo.",
		"Non badare a me. Sto solo portando avanti una conversazione che tu non senti.",
		"Quando sto {g:zitto|zitta} e fisso un sasso, sto lavorando. Davvero.",
	},
	["cls.shaman.muse.w07.038"] = {
		"Agli elementi non importa niente né dell'Orda né dell'Alleanza. Il fuoco brucia gli uni e gli altri. Io servo l'Orda, e cerco di non fingere che lo facciano anche gli spiriti.",
		"Combatto per l'Orda, ma la terra sotto i piedi di un soldato dell'Alleanza è la stessa terra. Mi ci è voluto parecchio per farci pace.",
		"Il fuoco non giura fedeltà a nessuna bandiera. Io ho giurato la mia all'Orda, e cerco di non confondere le due cose.",
	},
	["cls.shaman.muse.w07.039"] = {
		"Orgrimmar è sorta dalla roccia e dalla polvere in una manciata di anni. Chi pensa che la terra non sappia essere generosa non ha mai camminato per le sue strade.",
		"Una città dell'Orda fatta di pietra rossa, con uno sciamano a capo. Gli elementi devono aver guardato la cosa con un certo interesse.",
	},
	["cls.shaman.muse.w07.040"] = {
		"si siede a gambe incrociate con i palmi aperti sulle ginocchia, respirando piano, come se aspettasse che qualcuno li riempia.",
		"si accomoda, chiude gli occhi e resta immobile, come si aspetta davanti a una porta dopo aver bussato.",
	},
	["cls.shaman.muse.w07.041"] = {
		"Una sola parola secca della terra, e l'incantesimo di un nemico gli muore in gola. È una scortesia. La faccio spesso.",
		"Chiedo al suolo un solo scossone, forte, e la cantilena di qualcuno si ferma a metà. Agli spiriti, a quanto pare, piace interrompere.",
	},
	["cls.shaman.muse.w07.042"] = {
		"L'acqua guarisce e l'acqua gela. È lo stesso spirito con due umori, e ho imparato a chiedere quello giusto.",
		"L'elemento più gentile ha un filo gelido. Una volta lo dimenticavo. Adesso lo tengo a portata per tutto ciò che scappa.",
	},
	["cls.shaman.muse.w07.043"] = {
		"Un fulmine che salta da un nemico all'altro, scegliendo strada facendo. Io lo libero, e poi decide da sé. Dovrebbe preoccuparmi più di quanto mi preoccupi.",
		"Il fulmine a catena non va mai proprio dove me lo aspetto. Salta, sceglie, trova il terzo che non avevo visto. L'aria è più furba di me.",
	},
	["cls.shaman.muse.w07.044"] = {
		"Finalmente la maglia di ferro. È pesante e tintinna, e agli spiriti il rumore non sembra dar fastidio. Alle mie ginocchia un po' sì.",
		"I maestri dicevano che il diritto alla maglia me lo sarei {g:guadagnato|guadagnata}. Adesso porto anelli di ferro e chiedo ancora alla terra di rendermi più difficile da spezzare.",
	},
	["cls.shaman.muse.w07.045"] = {
		"Orchi, troll e tauren sono arrivati agli spiriti ciascuno per la propria strada. Nell'Orda ci scambiamo gli appunti. Agli elementi sembra piacere.",
		"Nell'Orda tre popoli parlano con gli elementi, ognuno col suo accento. Quando ci incontriamo c'è sempre qualcuno che lo fa in un altro modo, e vale sempre la pena di guardare.",
	},
	["cls.shaman.muse.w07.046"] = {
		"La gente mi porta i suoi guai come se potessi chiedere al cielo di aggiustarli. Quasi sempre ascolto. Sembra aiutarli più di quanto farebbe il cielo.",
		"La gente immagina che io tenga gli elementi al guinzaglio. Quello che tengo davvero accanto a me è la pazienza, e prendono in prestito anche quella.",
	},
	["cls.shaman.muse.w07.047"] = {
		"Gli elementi hanno un loro calendario. Il fuoco non dorme mai del tutto e l'acqua non è mai del tutto sveglia. Io cerco solo di imparare i loro orari.",
		"Ogni spirito ha il suo passo. Il fuoco corre, la terra striscia, l'acqua vaga, l'aria non si ferma mai. Passo le giornate a cercare di camminare accanto a tutti e quattro.",
		"La terra ragiona in secoli, il fuoco in battiti di cuore. Io, nel mezzo, provo a ragionare e basta.",
	},
	["cls.shaman.muse.w07.048"] = {
		"Su una strada lunga e vuota gli elementi sono l'unica compagnia che non si stanca mai di me. Ci parlo più di quanto ammetterei.",
		"Quando cammino da {g:solo|sola}, non lo sono mai del tutto. I sassi sotto i piedi, l'aria, il ruscello che attraverso: li saluto tutti, e mi aiuta a non perdere la testa.",
	},
	["cls.shaman.muse.w07.049"] = {
		"Le montagne c'erano prima del primo sciamano e ci saranno dopo l'ultimo. Mi fa bene ricordare quanto sia piccola la mia parte.",
		"Qualunque cosa chieda alla terra, era già vecchia quando il mio popolo imparò a chiedere. Cerco di parlarle come {g:il nuovo arrivato|la nuova arrivata} che sono.",
		"La pietra su cui siedo è sopravvissuta a dei re e sopravvivrà a me. Accanto a lei abbasso la voce.",
	},
	["cls.shaman.muse.w07.050"] = {
		"No, i totem non hanno un nome. E va bene, ce l'hanno. No, non te li dico.",
		"Ai miei totem non do nomi. So solo quale tiene il broncio.",
	},
	["cls.shaman.muse.w07.051"] = {
		"A volte gli antenati attraversano il mio sonno senza una parola, limitandosi a guardare. Mi sveglio con la sensazione di essere {g:stato ispezionato|stata ispezionata}, e la voglia di fare meglio.",
		"Ogni tanto i vecchi mi fanno visita in sogno. Non spiegano mai niente. Restano lì finché non capisco di essere {g:stato distratto|stata distratta}.",
	},
	["cls.shaman.muse.w07.052"] = {
		"traccia lentamente un cerchio nella polvere con un dito, lo divide in quattro e lo studia come fosse una mappa.",
		"incide quattro brevi segni nel terreno intorno a sé, uno per ogni direzione, e sembra rilassarsi una volta finito.",
	},
	["cls.shaman.muse.w07.053"] = {
		"Un totem non tiene mai il suo dono solo per me. Chi cammina con me ne riceve la stessa parte. Questo, dei totem, mi piace.",
		"Il totem della terra si divide tra i miei compagni, parti uguali, nessun favorito. Una bella lezione per quasi tutta la gente che conosco.",
	},
	["cls.shaman.muse.w07.054"] = {
		"Nei posti alti l'aria si fa loquace. Salgo per il panorama e resto perché lassù qualcosa continua a farmi domande.",
		"In cima a un crinale gli spiriti dell'aria si fanno vicini, curiosi di chi ha fatto la salita. Mi sento sempre un po' {g:interrogato|interrogata}.",
	},
	["cls.shaman.muse.w07.055"] = {
		"Un fuoco da campo è il volto più amichevole che il fuoco mostri. Mi ci siedo accanto e ricordo che lo stesso spirito, chissà dove, oggi ha bruciato un bosco.",
		"Ogni fuoco per cucinare è un piccolo spirito che accetta di rendersi utile. Io lo nutro, lui nutre me. Un accordo onesto, finché dura.",
	},
	["cls.shaman.muse.w07.056"] = {
		"I maestri la fanno sembrare semplice: chiedi, ascolta, ringrazia. Saltano la parte in cui lo spirito ti dice di no davanti a tutti.",
		"Ogni nuova lezione dal maestro sembra facile, e poi ci vuole un mese di figuracce per farla bene.",
	},
	["cls.shaman.muse.w07.057"] = {
		"Il respiro è aria, il sangue è acqua, le ossa sono terra, e il calore nel petto è fuoco. Uno sciamano non è che un piccolo equilibrio dei quattro che va in giro.",
		"Gli elementi li porto dentro: aria nei polmoni, acqua nelle vene, terra nelle ossa, fuoco nella pancia. Tenerli in equilibrio è la prima lezione, e la più difficile.",
	},
	["cls.shaman.muse.w07.058"] = {
		"I veterani della Terza Guerra raccontano di come l'Orda si schierò accanto ai vecchi nemici per respingere i demoni. Ci penso ogni volta che qualcuno dice che un nemico lo è per sempre.",
		"Perfino l'Orda, dicono i vecchi soldati, ha combattuto spalla a spalla con l'Alleanza, una volta, quando arrivarono i demoni. L'equilibrio, a volte, si accompagna a gente strana.",
	},
	["cls.shaman.muse.w07.059"] = {
		"L'acqua ferma ascolta meglio di quella che corre. Quando ho qualcosa di difficile da chiedere, cerco un lago.",
		"Un fiume veloce non sente niente sopra la propria voce. Uno stagno sente tutto. Le mie domande le porto all'acqua quieta.",
	},
	["cls.shaman.muse.w07.060"] = {
		"Ci sono giorni in cui chiamo e non arriva niente, solo l'eco della mia voce. Ormai non me la prendo. Gli spiriti hanno altro da fare.",
		"Il silenzio degli elementi è il suono peggiore che conosca. Passa sempre. Non passa mai in fretta.",
		"Quando gli spiriti non vengono, non alzo la voce. Mi siedo e aspetto che si ricordino di me.",
	},
	["cls.shaman.muse.w07.061"] = {
		"Cammina un po' più piano. La terra ti sente arrivare da lontano.",
		"Pesti i piedi come se ce l'avessi con la terra. A te non ha fatto niente.",
	},
	["cls.shaman.muse.w07.062"] = {
		"Quando morirò, vorrei entrare nella terra piano e senza storie, come fanno le foglie. Fino ad allora intendo darle meno motivi possibili per avere fretta.",
		"Prima o poi sarò terriccio. Non è una minaccia: è un vecchio accordo fra me e il suolo. Solo che non ho fretta di onorarlo.",
		"Un giorno mi stenderò nella terra per sempre. Ci ho fatto pace, purché quel giorno sia lontano.",
	},
	["cls.shaman.muse.w07.063"] = {
		"passa il pollice lungo le venature intagliate di un totem, lisciando una scheggiatura con gesti lenti e pazienti.",
		"tira fuori un totem e lo lucida sulla manica, come un fabbro che ripulisce il martello preferito.",
	},
	["cls.shaman.muse.w07.064"] = {
		"I guerrieri vogliono che lo scontro finisca in fretta. I maghi lo vogliono astuto. Uno sciamano lo vuole in equilibrio, e così nessuno mi ringrazia mai per la parte che non ha notato.",
		"In ogni scontro faccio tre cose insieme: colpisco, curo, e tengo i totem dove devono stare. La terza non la vede nessuno.",
	},
	["cls.shaman.muse.w07.065"] = {
		"La prima cosa che impara uno sciamano è stare in silenzio. Tutto il resto viene dopo, e viene piano.",
		"Prima del fulmine, prima delle cure, c'era l'ascolto. È ancora la parte più difficile del mestiere, e quella in cui sbaglio più spesso.",
		"I miei maestri parlavano pochissimo e ascoltavano moltissimo. Credevo fosse l'età. Era il mestiere.",
	},
	["cls.shaman.muse.w07.066"] = {
		"Per l'Orda, e per l'equilibrio. Non sempre vanno d'accordo. Cerco di restare fedele a entrambi.",
		"Il mio braccio all'Orda, la mia pazienza agli spiriti. Certi giorni è una spartizione facile. Altri no.",
	},
	["cls.shaman.muse.w07.067"] = {
		"Di nuovo un sasso nello stivale. La terra ha il senso dell'umorismo, e non è per niente sottile.",
		"Ogni sassolino che mi finisce nello stivale sembra un piccolo promemoria dal basso: non montarti la testa.",
		"Scuoto lo stivale e un sassolino ricade a terra, soddisfatto. Messaggio consegnato, immagino.",
	},
	["cls.shaman.muse.w07.068"] = {
		"Quando sono {g:arrabbiato|arrabbiata}, il fuoco arriva fin troppo facilmente. È proprio allora che dovrei chiederlo di meno.",
		"Il mio caratteraccio e gli spiriti del fuoco vanno fin troppo d'accordo. Ho imparato a raffreddare l'uno prima di chiamare gli altri.",
		"Il fuoco risponde più in fretta quando sono {g:furioso|furiosa}. Uno sciamano che se ne accorge dovrebbe preoccuparsi, non compiacersene.",
	},
	["cls.shaman.muse.w07.069"] = {
		"Dopo ogni incantesimo dico grazie, a mezza voce. Nessuno lo sente. Non è per loro.",
		"Una parola di ringraziamento per ogni fulmine, ogni cura, ogni totem. Non costa niente, e tiene gli spiriti ben disposti.",
		"Certi sciamani pensano che la gratitudine sia una formalità. Io sospetto che gli spiriti si facciano lenti con chi la dimentica.",
	},
	["cls.shaman.muse.w07.070"] = {
		"Se il terreno comincia a ronzare, fai un passo indietro. O sono io, o è qualcosa che ti piacerebbe ancora meno.",
		"Uno strano crepitio nell'aria? Probabilmente sono io. Se non sono io, scappa.",
		"Quando a me si rizzano i capelli, dovrebbero rizzarsi anche a te. Ti ho avvisato.",
	},
	["cls.shaman.muse.w07.071"] = {
		"Ogni creatura che uccido ha uno spirito che va da qualche parte. Non so dove. Spero sia un posto più gentile della punta della mia arma.",
		"Uccido, perché la strada lo pretende. Poi dedico un pensiero allo spirito che se n'è appena andato. È il minimo che uno sciamano debba.",
		"I cacciatori ringraziano la bestia. Gli sciamani ringraziano lo spirito che la lascia. Non so chi dei due abbia ragione, così faccio entrambe le cose.",
	},
	["cls.shaman.muse.w07.072"] = {
		"conta piano sulle dita, uno, due, tre, quattro, poi ricomincia, come per controllare che non manchi niente.",
		"tocca col pollice la punta di ogni dito, una dopo l'altra, muovendo le labbra: un piccolo conto privato che si ferma sempre a quattro.",
		"mormora a fior di labbra quattro brevi parole, una per ogni elemento, e prosegue come se niente fosse.",
	},
	["cls.shaman.muse.w07.073"] = {
		"Il giorno in cui comincerò a considerare gli elementi come attrezzi, meriterò di perderli. Me lo ripeto più spesso di quanto vorrei.",
		"Una spada è un attrezzo. Uno spirito no. La differenza è che una spada non decide mai di smettere di lavorare per te.",
		"Tratta uno spirito come un martello, e un giorno ti risponderà come tale: duro, e nel momento sbagliato.",
	},
	["cls.shaman.muse.w07.074"] = {
		"Gli stivali smorzano la voce del suolo. Se avessi i piedi più duri camminerei {g:scalzo|scalza} e sentirei tutto.",
		"Ogni paio di stivali è un muro fra me e la terra. Un muro sottile, ma la differenza la sento.",
		"Alla fine di una lunga camminata mi sfilo gli stivali e resto un momento sulla nuda terra. Il suolo ha cose da dire che il cuoio tiene fuori.",
	},
	["cls.shaman.muse.w07.075"] = {
		"Mangiare, dormire, combattere, ridere. Saltane uno e il resto va storto. L'equilibrio non riguarda solo gli spiriti.",
		"Combatti tutto il giorno senza mangiare, e perfino gli elementi ti diranno che pendi da una parte.",
		"Riposati un po'. Un corpo tirato troppo da una parte si spezza come qualunque altra cosa.",
	},
	["cls.shaman.muse.w07.076"] = {
		"C'è sempre un istante, mentre chiamo il fulmine, in cui mi chiedo se si ricorderà da quale parte di me uscire.",
		"Il potere mi attraversa per uscire. Un giorno chiederò troppo, e si porterà via un pezzo di me. Cerco di chiedere con giudizio.",
		"Rispetto il fulmine come si rispetta l'orlo di un dirupo: da vicino, e senza mai voltargli le spalle.",
	},
	["cls.shaman.muse.w07.077"] = {
		"L'Orda è fatta di popoli che il mondo aveva spinto ai margini. Uno sciamano sa cosa sono i margini: è lì che gli elementi si incontrano.",
		"Nessuno ha costruito l'Orda perché fosse comoda. È stata costruita per sopravvivere, con chi era rimasto. Uno sciamano capisce quel genere di equilibrio.",
		"L'Orda sta insieme come gli elementi: tirandosi l'un l'altro quanto basta, e non di più.",
	},
	["cls.shaman.muse.w07.078"] = {
		"L'acqua che non può muoversi inacidisce. Con la gente è lo stesso. Quando resto troppo in un posto, sento che comincio a sapere di palude.",
		"L'acqua ferma è saggia, quella che corre è sana, e quella intrappolata marcisce. Cerco di essere del secondo tipo, quasi sempre.",
	},
	["cls.shaman.quest_complete.w07.001"] = {
		"Monete nella borsa. Quasi tutte se ne andranno in acqua e in una cinghia migliore per lo scudo. Gli spiriti non si fanno pagare, i mercanti sì.",
		"Una giusta ricompensa. Gli elementi lavorano per un grazie; la mia armatura no, e ha di nuovo bisogno di riparazioni.",
		"Pagato. Ne metterò un po' da parte per il maestro. Le nuove lezioni non costano mai poco, anche quando a insegnarle gratis sono gli spiriti.",
	},
	["cls.shaman.quest_complete.w07.002"] = {
		"Questo è sistemato. Se c'è altro che turba questo posto, preferisco saperlo adesso che più tardi.",
		"Fatto. E già che sono qui: qualcuno ha sentito la terra strana, ultimamente? Lo chiedo per conto degli spiriti.",
		"Finito. Chiamatemi di nuovo se le cose vanno storte. Raddrizzarle è più o meno il mio mestiere.",
	},
	["cls.shaman.quest_complete.w07.003"] = {
		"accetta la ricompensa con un cenno, poi si accovaccia un istante a toccare il suolo, come per far sapere anche a qualcun altro che il lavoro è fatto.",
		"intasca il compenso e lancia una breve occhiata al suolo sotto i piedi, come un operaio che si consulta col caposquadra.",
		"prende ciò che {g:gli|le} viene offerto e, prima di voltarsi, mormora una sola parola rivolta alla terra.",
	},
	["cls.shaman.quest_complete.w07.004"] = {
		"I guai di qualcuno ora pesano un po' meno. Gli elementi non se ne accorgerebbero. Io sì, e dovrà bastare.",
		"Un lavoro piccolo, fatto onestamente. Il mondo è troppo grande per aggiustarlo tutto in una volta, ma toppa dopo toppa sta insieme.",
		"Non cambia molto. Cambia qualcosa. È l'unica differenza che un singolo sciamano possa fare.",
	},
	["cls.shaman.quest_complete.w07.005"] = {
		"Sembravano un po' delusi che non ci abbia salmodiato sopra. La prossima volta canticchierò qualcosa, per far contenti loro.",
		"La gente si aspetta che uno sciamano chiuda un lavoro tra fumo e tamburi. Io l'ho chiuso con un sacco e una lunga camminata.",
		"Niente rito, niente fulmini, solo un compito portato a termine. Credo che a chi me l'ha chiesto sia mancato lo spettacolo.",
	},
	["cls.shaman.quest_complete.w07.006"] = {
		"Il compito è fatto e io vado avanti con gli avanzi. Prima l'acqua, poi un'ora di quiete, poi chiederò di nuovo qualcosa agli spiriti.",
		"Mi fanno male i piedi e lo spirito è ridotto a un filo. Oggi gli elementi mi hanno prestato parecchio: adesso tocca al corpo.",
		"Tutto quel camminare e chiamare, e solo ora che il lavoro è finito mi accorgo di quanta stanchezza ho addosso. Gli spiriti riposano quando vogliono. Io devo ritagliarmi il tempo.",
	},
	["cls.shaman.quest_complete.w07.007"] = {
		"Metà del lavoro l'hanno fatta gli spiriti, quindi a rigore spetta loro metà della ricompensa. La loro parte la tengo io, per sicurezza.",
		"La dividerei con gli elementi, ma non passano mai a riscuotere.",
		"Grazie. La terra dice prego. Più o meno.",
	},
	["cls.shaman.quest_complete.w07.008"] = {
		"Sono compiti come questo a tenere insieme l'Orda: fatti come si deve, da qualcuno che avrebbe potuto tirare dritto. Nessuno ne canta.",
		"L'Orda è fatta di commissioni come questa, portate a termine da gente stanca che avrebbe potuto dire di no. Sono {g:contento|contenta} di non averlo fatto.",
		"Il Capoguerra non saprà mai niente di un compito come questo. Credo che approverebbe lo stesso: anche lui è uno sciamano, e sa come si sommano le piccole cose.",
	},
	["cls.shaman.quest_complete.w07.009"] = {
		"si rimette lo zaino in spalla, e i totem all'interno battono l'uno contro l'altro con un suono cavo, di legno.",
		"si sistema meglio lo zaino sulla schiena e ascolta per un momento i totem che si assestano lì dentro.",
		"tira su lo zaino pesante, e qualcosa di intagliato nel legno, all'interno, risponde con uno schiocco.",
	},
	["cls.shaman.quest_complete.w07.010"] = {
		"Metà dei guai che mi pagano per sistemare, la terra aveva provato ad annunciarli. Nessuno ascolta la terra. Per questo esistono gli sciamani.",
		"Se la gente badasse di più al suolo e all'acqua, avrei molte meno commissioni. E sarei anche più {g:povero|povera}. Credo che agli spiriti la cosa faccia ridere.",
		"Quasi tutti chiedono aiuto solo quando il guaio fa già rumore. La terra ne bisbigliava da settimane.",
	},
	["cls.shaman.quest_complete.w07.011"] = {
		"Che il suolo ti resti saldo sotto i piedi. È la cosa migliore che sappia augurare a qualcuno.",
		"Va' in pace. Acqua quando hai sete, fuoco quando hai freddo, e terra salda per tutta la strada.",
		"Il compito è fatto. Che gli elementi siano gentili con questo posto per un bel pezzo.",
	},
	["cls.shaman.quest_complete.w07.012"] = {
		"Quando un compito chiede di uccidere, lo faccio, e dico una parola per ogni spirito che mando via. Non pareggia i conti, ma li tiene onesti.",
		"Certe ricompense si pagano col sangue, più o meno. Gli spiriti non me ne fanno una colpa. Degli antenati sono meno {g:sicuro|sicura}.",
		"Non tutti i compiti lasciano il mondo più in equilibrio. Questo forse sì. Lo chiederò alla terra più tardi, quando sarà tutto quieto.",
	},
	["cls.shaman.quest_complete.w07.013"] = {
		"china il capo verso chi ha fatto la richiesta e poi, più in fretta, verso il suolo ai suoi piedi.",
		"fa un cenno breve e rispettoso, di quelli che si scambiano persone che sanno entrambe quanto costa una strada difficile.",
		"si porta due dita alla fronte in segno di ringraziamento, e lascia che il gesto finisca indicando la terra.",
	},
	["cls.shaman.quest_complete.w07.014"] = {
		"Per ogni compito che porto a termine, gli spiriti sembrano arrivare un po' più in fretta quando li chiamo. Forse tengono il conto. Forse cammino solo più {g:dritto|dritta}.",
		"Un lavoro fatto bene guadagna fiducia: da chi l'ha chiesto e, credo, dagli elementi che guardano.",
		"Strano come finire una commissione faccia sentire più saldo il suolo sotto di me. O forse sono le mie gambe a essersi fatte più salde.",
	},
	["cls.shaman.quest_complete.w07.015"] = {
		"La prossima volta mandate a chiamare uno sciamano finché il guaio è ancora piccolo. Così costiamo meno.",
		"Se le cose ricominciano ad andare storte, mandate a dire presto. Gli spiriti preferiscono prevenire. Anche i miei piedi.",
		"Fatto. Fatemi un favore: non lasciate che le cose si storcano così un'altra volta.",
	},
	["cls.shaman.quest_complete.w07.016"] = {
		"Qui ho finito. La strada aspetta, e con me non è mai stata paziente.",
		"Un compito in meno sulle spalle. Ce ne sarà un altro prima del prossimo fuoco da campo, e in fondo non lo vorrei diverso.",
		"Finito. Zaino, stivali, arma, e via. Uno sciamano che sta fermo troppo a lungo comincia a mettere radici.",
	},
	["cls.shaman.quest_complete.w07.017"] = {
		"Agli elementi le monete non servono. È uno dei motivi per cui mi fido di loro più che di chi mi paga.",
		"Il denaro è roba da gente. Gli spiriti non me ne hanno mai chiesto, e la cosa mi riposa.",
		"L'oro passa di mano in mano, e la terra sotto non se ne accorge. Certi giorni vorrei somigliarle di più.",
	},
	["cls.shaman.quest_complete.w07.018"] = {
		"Ringraziate gli spiriti, non me. Io ho solo portato il messaggio.",
		"Non ringraziatemi troppo. Il grosso l'hanno fatto gli elementi; io li ho solo indirizzati.",
		"La gratitudine è ben accetta. Mandatene un po' anche alla terra: ha tenuto per tutto il tempo.",
	},
	["cls.shaman.quest_complete.w07.019"] = {
		"Mi piace pensare che gli antenati abbiano guardato e annuito. Di rado dicono qualcosa. Un cenno basterebbe.",
		"Alle mie spalle, da qualche parte, un vecchio sciamano morto da tempo sta approvando oppure sospirando. Mi va bene in tutti e due i casi: vuol dire che guarda.",
		"Agli antenati le ricompense non interessano. Interessa che il lavoro sia fatto bene. Questo, credo, lo era.",
	},
	["cls.shaman.quest_complete.w07.020"] = {
		"si scuote dalle mani la polvere della strada e la lascia ricadere a terra, dove deve stare.",
		"batte le mani per togliersi la terra dai palmi, poi si ferma, come per scusarsi del trattamento brusco.",
	},
	["cls.shaman.quest_complete.w07.021"] = {
		"Fatto, e gli spiriti sono rimasti tranquilli per tutto il tempo. Una bella giornata di lavoro.",
		"Finito. Non si è rotto niente che non dovesse rompersi. Lo chiamo un successo.",
	},
	["cls.shaman.quest_progress.w07.001"] = {
		"A metà strada, più o meno. La terra è paziente; per un altro po' posso esserlo anch'io.",
		"Non è finita, ma manca meno. Mettere fretta a un compito è come mettere fretta a un totem: funziona solo quando si è assestato.",
		"Una parte è fatta. Il resto è là fuori, e gli spiriti non me lo andranno a prendere.",
	},
	["cls.shaman.quest_progress.w07.002"] = {
		"si ferma a fare il punto sul lavoro fatto finora, annuisce una volta e guarda verso ciò che resta.",
		"controlla il conto sulle dita, lo trova scarso, e riprende a camminare senza lamentarsi.",
		"preme un piede sul terreno per un momento, come per chiedergli da che parte stia il resto del lavoro.",
	},
	["cls.shaman.quest_progress.w07.003"] = {
		"Ecco, è tutto. È ora di portare la notizia a chi l'ha chiesta, e di far sapere agli spiriti che possono smettere di trattenere il fiato.",
		"È fatto tutto quello che c'era da fare. Adesso la lunga camminata per dirlo.",
		"Il lavoro è completo. Resta solo da riferirlo, e vorrei riuscirci prima che i miei piedi cambino idea.",
	},
	["cls.shaman.reputation_change.w07.001"] = {
		"La fiducia della gente, la fiducia degli spiriti: la stessa moneta lenta, guadagnata allo stesso modo.",
		"Adesso pensano un po' meglio di me. Gli spiriti mi hanno insegnato che la benevolenza si costruisce come un argine: pietra su pietra, e mai di fretta.",
		"Un nome pronunciato con un po' più di gentilezza. Cercherò di tenerlo così: la buona reputazione, come l'equilibrio, si sbilancia facilmente.",
	},
	["cls.shaman.rez.w07.001"] = {
		"Gli spiriti mi hanno lasciato fare un tratto della strada di là, poi mi hanno {g:richiamato|richiamata} per il gomito. Non so se fossi {g:pronto|pronta} a voltarmi.",
		"La morte era silenziosa e piena di voci che quasi conoscevo. Di nuovo la terra sotto i piedi: più rumorosa, più ruvida, mia.",
	},
	["cls.shaman.rezother.w07.001"] = {
		"Torna. La strada non ha finito con te.",
		"Il tuo spirito è ancora vicino, lo sento indugiare. Da questa parte.",
		"Su, torna indietro. È troppo presto per andartene in giro con i morti.",
	},
	["cls.shaman.rezother.w07.002"] = {
		"Richiamare uno spirito è come chiamare qualcuno dall'altra riva di un fiume largo. Chiami, aspetti, e speri che la voce che risponde sia quella giusta.",
		"C'è sempre un momento, dopo che ho chiamato, in cui niente risponde. Dura un respiro. Sembra una stagione.",
		"Chiamo nel silenzio e ascolto. La risposta, quando arriva, non è mai più forte di un sospiro.",
	},
	["cls.shaman.rezother.w07.003"] = {
		"abbassa la voce e chiama verso la sagoma immobile, come si richiama alla mano un animale diffidente.",
		"solleva entrambe le mani sopra il corpo immobile e ve le tiene, i palmi in giù, finché da sotto non risponde un respiro.",
	},
	["cls.shaman.rezother.w07.004"] = {
		"Su, in piedi. Altrimenti ti aspettava una bella camminata.",
		"Ti ho risparmiato la lunga camminata di ritorno. Per ringraziarmi puoi portarmi lo zaino per un po'.",
		"Rieccoti. Non è successo niente di che, a parte la tua morte.",
	},
	["cls.shaman.rezother.w07.005"] = {
		"Ogni spirito che richiamo torna un po' più freddo. Ci mette un po' a dimenticare dov'è stato.",
		"Chi torna dalla morte non è subito lo stesso. Dagli un momento: il calore arriva dopo.",
	},
	["cls.shaman.rezother.w07.006"] = {
		"Spiriti di chi è venuto prima, rimandate indietro chi è caduto qui.",
		"Spiriti ancestrali, aprite la via. Qui c'è un corpo che aspetta ancora chi lo abita.",
	},
	["cls.shaman.rezother.w07.007"] = {
		"Fatto. Per un po' gambe molli e un gran malumore, ma il cuore batte. Mi va bene tutto.",
		"Di nuovo tra i vivi. Con le ossa doloranti, immagino, e nessuna voglia di scherzi. I miei li tengo per dopo.",
	},
	["cls.shaman.rezother.w07.008"] = {
		"preme un palmo contro la terra e mormora; poco lontano, un respiro si blocca e poi ricomincia.",
		"parla all'aria vuota sopra il corpo come se qualcuno vi stesse in piedi, e aspetta.",
	},
	["cls.shaman.rezother.w07.009"] = {
		"Respira. Bene. Ora non farlo mai più.",
		"Eccoti. Non costringermi a venirti a riprendere due volte nello stesso giorno.",
		"Piano, piano. Morire stanca; tornare, ancora di più.",
	},
	["cls.shaman.rezother.w07.010"] = {
		"Lo spirito si era già voltato verso gli antenati. Gli ho chiesto di girarsi. Non era tenuto ad ascoltarmi. L'ha fatto.",
		"I morti non li trascino indietro. Chiedo. Se tornano, è una loro scelta, e ogni volta ne sono {g:grato|grata}.",
	},
	["cls.shaman.thanks.w07.001"] = {
		"Grazie. Parlerò di te agli spiriti: a loro piace sapere chi è stato gentile.",
		"Ti ringrazio. Gli antenati hanno la memoria lunga per le buone azioni, e io pure.",
	},
	["cls.shaman.thanks.w07.002"] = {
		"Grazie. Se mai la terra ti tremerà sotto i piedi, non sarà per colpa mia.",
		"Molto gentile. Ti offrirei in cambio una scintilla di fulmine, ma mi dicono che è un regalo scomodo.",
	},
	["cls.shaman.threat.w07.001"] = {
		"Vattene, e la terra dimenticherà le tue impronte. Resta, e si ricorderà di te a lungo.",
		"Vattene ora, e chiederò agli spiriti di lasciar correre. Non lo chiederò due volte.",
		"Sparisci finché il terreno ti vuole ancora bene. Può cambiare idea in fretta.",
	},
	["cls.shaman.threat.w07.002"] = {
		"Parlo col fulmine quasi ogni giorno. Non darmi argomenti nuovi da raccontargli.",
		"Io e il tuono parliamo spesso. Vuoi che ti nomini?",
		"Gli spiriti mi chiedono della gente che incontro. Finora, su di te, ho usato parole gentili.",
	},
	["cls.shaman.threat.w07.003"] = {
		"lascia correre un sottile crepitio di luce lungo le nocche, senza dire una parola.",
		"abbassa lo sguardo sul terreno sotto i piedi dell'altro, poi lo rialza, senza fretta.",
	},
	["cls.shaman.threat.w07.004"] = {
		"Gli antenati sono pazienti con gli sciocchi. Io lo sono un po' meno di loro.",
		"Gli spiriti mi chiedono calma. Io chiedo a te di andartene prima che smetta di ascoltarli.",
		"Mi hanno insegnato a chiedere prima di colpire. Considera questa la richiesta.",
	},
	["cls.shaman.threat.w07.005"] = {
		"Nella borsa c'è un totem del fuoco che scalpita per uscire. Non dargli un motivo.",
		"Ho un totem del fuoco che non tocca terra da tutto il giorno. Non candidarti.",
	},
	["cls.shaman.victory.w07.001"] = {
		"Il pozzo per ora è a secco. Gli spiriti lo riempiono coi loro tempi, mai coi miei.",
		"Non mi resta una scintilla. Sedersi, bere, aspettare che gli elementi mi riempiano di nuovo.",
		"Fondo del barile. Gli spiriti mi riempiranno di nuovo, ma con calma.",
	},
	["cls.shaman.victory.w07.002"] = {
		"Grazie, spiriti. Stessa ora domani?",
		"Bel lavoro, tutti quanti. E per tutti quanti intendo gli elementi.",
		"Ottimo lavoro, terra. Anche tu, fuoco. Acqua, puoi metterti comoda.",
	},
	["cls.shaman.victory.w07.003"] = {
		"guarda i totem svanire uno dopo l'altro, e china il capo davanti a ciascuno mentre se ne va.",
		"aspetta che l'ultimo totem sia svanito, e solo allora lascia cadere le spalle.",
	},
	["cls.shaman.victory.w07.004"] = {
		"Gli spiriti hanno dato; io dico grazie. Uno sciamano che salta questo passo li ritrova presto sordi.",
		"Prima un grazie, rapido e semplice, prima di ogni altra cosa. Gli elementi tengono un registro, dicono i vecchi sciamani.",
	},
	["cls.shaman.victory.w07.005"] = {
		"Ecco cosa succede quando il cielo si interessa a te.",
		"Hai sfidato gli elementi. La maggior parte di loro non se n'è nemmeno accorta.",
		"Il cielo non si schiera spesso. Oggi si è schierato con me.",
	},
	["cls.shaman.victory.w07.006"] = {
		"È finita. Gli anziani dicono che ogni spirito alla fine trova il suo elemento. Spero che questo ne trovi uno gentile.",
		"Qualunque scintilla avesse, ora è libera. Spero che vada a posarsi in un luogo meno duro di questo.",
		"Lo spirito è andato oltre. Dirò una parola per lui, anche se lui non l'avrebbe mai detta per me.",
	},
	["cls.shaman.victory.w07.007"] = {
		"Io ti avevo avvisato. Be', il fulmine sì. E ad alta voce.",
		"A mia discolpa, prima c'è stato un gran crepitio. Valeva come avviso.",
		"Non puoi dire che il cielo non ti abbia dato il preavviso.",
	},
	["cls.shaman.victory.w07.008"] = {
		"Contare cosa resta: mana, salute, totem. Poi muoversi.",
		"Meno mana, qualche livido nuovo, i totem tutti al loro posto. Uno scambio onesto.",
	},
	["cls.shaman.victory.w07.009"] = {
		"si accovaccia accanto al nemico abbattuto e posa due dita sul terreno lì vicino, una breve cortesia alla terra che lo accoglierà.",
		"sfiora la terra accanto al corpo, appena un attimo, come per presentarlo al suo nuovo custode.",
	},
	["cls.shaman.victory.w07.010"] = {
		"La prossima volta attacca briga con qualcuno che non abbia il cielo dalla sua.",
		"Lezione per il prossimo: mai litigare con uno sciamano che ha sotto i piedi un buon terreno.",
		"Avviso per chi guarda: l'ultima parola è sempre dello sciamano. Di solito è un tuono.",
	},
	["cls.shaman.victory.w07.011"] = {
		"Quattro elementi e ne ho usati due. Gli anziani lo chiamerebbero pigrizia, e avrebbero ragione.",
		"Mi sono {g:ricordato|ricordata} dell'acqua solo alla fine. Uno sciamano con quattro spiriti che ne chiama due spreca il dono.",
	},
	["cls.shaman.victory.w07.012"] = {
		"Ecco. Gli spiriti possono riprendere le loro faccende, e io le mie.",
		"Finito. Spiriti, siete liberi di andare. Grazie, davvero.",
		"È tutto, spiriti. Andate pure, e grazie.",
	},
	["cls.shaman.victory.w07.013"] = {
		"Sotto i piedi il terreno ha smesso di tremare. Non gli piacciono più di quanto piacciano a me.",
		"Il terreno si quieta. Sente il peso di ogni scontro combattuto sopra di lui, e di ogni caduta.",
		"La terra torna quieta sotto di me, come un cane che si riaccuccia a dormire.",
	},
	["cls.shaman.victory.w07.014"] = {
		"si scuote dalle dita qualche scintilla rimasta, come si fa con l'acqua.",
		"scuote le mani; le ultime scintille cadono a terra e si spengono.",
	},
	["cls.shaman.victory.w07.015"] = {
		"La terra a reggere, il fuoco a picchiare, io a gridare. Gioco di squadra.",
		"Un bel lavoro di gruppo. Soprattutto degli elementi, ma c'ero anch'io.",
	},
	["cls.shaman.victory.w07.016"] = {
		"Mi formicolano ancora le dita. Gli elementi lasciano sempre un po' di sé.",
		"Formicolio fino al gomito. Chiamare gli spiriti non è mai gratis.",
	},
	["cls.shaman.victory.w07.017"] = {
		"Riposate, spiriti. Ve lo siete meritato, e presto avrò di nuovo bisogno di voi.",
		"State tranquilli, spiriti. Non passerà molto prima che vi chieda ancora.",
		"Piano, spiriti. È stato un buon lavoro, e non lo dimenticherò.",
	},
	["cls.shaman.victory.w07.018"] = {
		"Qualcuno, chissà dove, metterà in tavola una scodella di troppo. Questa parte gli spiriti non la spiegano.",
		"Forse aveva qualcuno. Quasi tutti ce l'hanno. Gli elementi si riprendono il corpo e lasciano il resto ai vivi.",
	},
	["cls.shaman.victory.w07.019"] = {
		"Ecco. Stenditi nella terra e restaci. Ti era dovuto da tempo.",
		"Giù nella terra, e stavolta resta dove sei. Al resto penseranno gli antenati.",
	},
	["cls.shaman.victory.w07.020"] = {
		"Va' a casa, spirito. Chi ti ha distorto non può raggiungerti là.",
		"Sciolto, finalmente. Ritrova il tuo elemento e dimentica questo posto.",
	},
	["cls.shaman.victory.w07.021"] = {
		"I totem ne sono usciti senza un graffio. Li invidio un po'.",
		"Totem tutti a posto. Io, un po' meno. Loro i colpi non li prendono mai: ecco il segreto.",
	},
	["cls.shaman.victory.w07.022"] = {
		"raddrizza piano la schiena, sciogliendo la rigidità delle spalle, e la carica leggera nell'aria si disperde.",
		"abbassa le mani, e l'odore pungente del fulmine svanisce dall'aria intorno.",
	},
	["cls.shaman.victory.w07.023"] = {
		"Chi si è fatto male? Ditelo. Mi resta acqua per chi ne ha bisogno.",
		"Fatemi vedere i tagli. Gli spiriti dell'acqua mi devono un favore o due.",
	},
	["cls.shaman.victory.w07.024"] = {
		"L'hanno visto solo gli spiriti. Non applaudono, ma nemmeno dimenticano.",
		"Nessuno ha visto, a parte gli spiriti. Come pubblico basta.",
	},
	["cls.shaman.victory.w07.025"] = {
		"Una in più per l'Orda. Agli spiriti la loro parte di merito.",
		"L'Orda è un po' più forte, ora. Dirò agli spiriti che hanno dato una mano.",
	},
	["cls.shaman.victory.w07.026"] = {
		"Come una tempesta che ha detto la sua, passa. Resta l'aria pulita e un braccio indolenzito.",
		"Finisce come finisce una burrasca: d'un tratto, lasciando tutto lavato.",
	},
	["cls.shaman.victory.w07.027"] = {
		"Resta giù. Alla terra piaci di più così.",
		"Riposa lì. Il terreno ti voleva fin dall'inizio.",
		"Resta lì. La terra è stata paziente: lasciati prendere.",
	},
	["cls.shaman.victory.w07.028"] = {
		"raccoglie un pizzico di polvere, lo lascia scorrere tra le dita e borbotta un grazie.",
		"preme un istante il palmo a terra, come si dà una pacca a un cavallo che ha portato bene.",
	},
	["cls.shaman.victory.w07.029"] = {
		"La forma del lupo e via, prima che qualcos'altro venga a vedere cos'era il fracasso.",
		"Niente indugi. Quattro zampe, strada svelta, e via.",
	},
	["cls.shaman.victory.w07.030"] = {
		"Vai, allora. Corri con gli spiriti della tua specie. Nessun rancore da parte mia.",
		"Il tuo spirito è di nuovo libero di vagare. Spero che dove va la caccia sia buona.",
	},
	["cls.shaman.victory.w07.031"] = {
		"Nessun ankh speso oggi. La mia borsa ringrazia gli spiriti.",
		"L'ankh resta nella borsa un altro giorno. Parsimonia e vita: un'ottima accoppiata.",
	},
	["cls.shaman.victory.w07.032"] = {
		"L'equilibrio tiene, per il momento. Non sprechiamolo a guardarci intorno.",
		"La bilancia è di nuovo in pari. Dove si va adesso?",
		"Equilibrio salvo. Ora, prima che passi qualcos'altro, avanti.",
	},
	["cls.shaman.victory.w07.033"] = {
		"resta un momento accanto al corpo, muovendo le labbra, come a spedire qualcosa dietro allo spirito che se ne va.",
		"indugia presso il nemico abbattuto, mormorando qualche parola per lo spirito che l'ha appena lasciato.",
	},
	["cls.shaman.victory.w07.034"] = {
		"Ah! Gli spiriti hanno visto. Per giorni sarò insopportabile.",
		"Di questa mi vanterò con gli spiriti per una settimana. Faranno finta di ascoltare.",
	},
	["cls.shaman.victory.w07.035"] = {
		"Gli antenati approvano, credo. Con loro è difficile distinguere l'approvazione dal sonno.",
		"Se i vecchi hanno guardato, ora annuiscono. O sonnecchiano. Con gli antenati la differenza è poca.",
	},
	["cls.shaman.victory.w07.036"] = {
		"La maglia ha preso quello che gli spiriti non hanno deviato. Fra tutti e due, nemmeno un graffio degno di nota.",
		"Maglia e spiriti hanno tenuto entrambi. Mi accontento.",
	},
	["cls.shaman.victory.w07.037"] = {
		"Mi hanno risposto ancora. Cerco di non darlo mai per scontato: gli spiriti se ne accorgono, quando lo fai.",
		"Sono venuti quando ho chiesto. Ogni volta che succede, mi impongo di stupirmene.",
	},
	["cls.shaman.victory.w07.038"] = {
		"Fatto. Ora, dov'è finita quella scintilla? Mi sa che mi sono {g:bruciacchiato|bruciacchiata} la manica.",
		"Finito, e mi sono di nuovo {g:strinato|strinata} la manica. Lo spirito del fuoco lo trova divertente.",
		"Vinto, e un solo buco bruciato nel mantello. Una buona giornata, per i conti di uno sciamano.",
	},
	["cls.shaman.victory.w07.039"] = {
		"Dopo, ascolto gli spiriti. Non per essere {g:ringraziato|ringraziata}: per sentire se sono contenti.",
		"Un momento di ascolto, dopo. Se gli spiriti sono inquieti, lo scontro non è davvero finito.",
	},
	["cls.shaman.victory.w07.040"] = {
		"spinge col piede un po' di terra su una chiazza bruciata lasciata dallo scontro.",
		"strofina con lo stivale un segno annerito sul terreno finché quasi scompare, mettendo in ordine dopo gli elementi.",
	},
	["cls.shaman.victory.w07.041"] = {
		"Le vie antiche funzionano ancora. Chiedere, ascoltare, colpire. Poi ringraziare.",
		"Chiesto, risposto, fatto. La via più antica che ci sia, e regge ancora.",
	},
	["cls.shaman.victory.w07.042"] = {
		"Il silenzio di dopo è il momento in cui gli spiriti si fanno più vicini. Non so mai cosa dirgli.",
		"Nella quiete che segue, li sento quasi respirare. Poi passa.",
	},
	["cls.shaman.victory.w07.043"] = {
		"Il fulmine ha esposto le sue ragioni. Tu hai resistito fino alla fine. Ammirevole, a modo suo.",
		"Gli spiriti hanno portato un argomento convincente. Tu l'hai perso.",
	},
}, "base_classes")
