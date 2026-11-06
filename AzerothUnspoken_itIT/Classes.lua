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
}, "base_classes")
