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
}, "base_classes")
