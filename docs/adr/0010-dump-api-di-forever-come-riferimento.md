# 0010. Il dump delle API di Forever come riferimento, mai copiato

- Stato: accettata
- Data: 2026-10-29 (da [docs/RIFERIMENTI.md](../RIFERIMENTI.md))

## Contesto

Gli addon per WoW Forever (Interface 16001) usano API che non coincidono né con il retail né con Classic Era, e la documentazione pubblica generale riguarda soprattutto il retail. Per non scrivere codice che chiama funzioni inesistenti serve una fonte affidabile di ciò che il client Forever espone davvero. Esiste un dump estratto dal client stesso con `APIDocumentation`, nel repository pubblico [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons): build 70170 (poco più vecchia di quella di riferimento 70658), con 6.598 funzioni, 1.806 eventi e 797 tipi. Quel repository **non dichiara alcuna licenza**.

## Decisione

1. **Si usa il dump come riferimento per decidere cosa chiamare**, con il file `docs/api.json` (leggibile da macchina) e le definizioni `types/WowForeverAPI.lua`. Prima di usare una funzione o un evento nuovo si controlla lì e poi lo si protegge con Compat ([ADR 0005](0005-compat-valori-segreti-ed-eventi-difensivi.md)).
2. **Copia locale accanto al progetto, non dentro**: `E:\repository\WoW-Addons`, clonata con `git clone --depth 1 https://github.com/Atraeau/WoW-Addons E:/repository/WoW-Addons`. **Nessun file di quel repository entra nel nostro**: non ha licenza, quindi non lo si ridistribuisce. Si consulta e basta; i suoi script non si eseguono (è materiale scaricato).
3. **L'IDE legge le definizioni da lì**: `.luarc.json` le collega con `workspace.library: ["../WoW-Addons/types"]`, e il plugin WoW Lua Language Server fornisce le API di WoW. Non si duplicano nel progetto.
4. **Assenza nel dump non significa assenza nel client.** Le funzioni definite in Lua da FrameXML (ad esempio `Settings.*`, `InterfaceOptions_AddCategory`) non compaiono in `APIDocumentation`. Per quelle valgono Compat e la prova in gioco.
5. **La fonte finale è sempre il client installato** (build 1.60.1.70658). In futuro si potrà estrarre un dump esatto della propria build con l'addon `WowApiExport` (`/apiexport`, poi `/reload`).
6. **Un controllo automatico è previsto** nello step S3: `Tests/check_api.py` leggerà il dump (percorso configurabile) e segnalerà le funzioni ed eventi usati dall'addon che mancano, con eccezioni consentite per FrameXML. Se il dump non c'è, il controllo verrà saltato con un avviso.

Le verifiche già fatte sul dump (2026-10-29) sono nella tabella di [RIFERIMENTI.md](../RIFERIMENTI.md): ad esempio `GetSpellInfo` e `CombatLogGetCurrentEventInfo` risultano **assenti**, e `UnitHealth` ha parametro di tipo limitato (`UnitTokenPvPRestrictedForAddOns`).

## Alternative considerate

- **Copiare il dump nel repository.** Comodo, ma senza licenza non si può ridistribuire. Scartata.
- **Affidarsi alla documentazione del retail** (Warcraft Wiki). Utile per la semantica, ma può differire dal client Forever. Si usa solo come lettura di supporto.
- **Scoprire tutto in gioco.** Lento e dipende dall'utente; il dump evita molti tentativi.
- **Chiedere l'autorizzazione al repository esterno** per includerne i file. Possibile in futuro; non necessaria finché basta consultarlo.

## Conseguenze

- Positive: meno errori su API inesistenti; autocompletamento nell'IDE; scelte di compatibilità motivate.
- Negative: dipendenza da un repository di terzi e da una build leggermente diversa dalla nostra; chi clona il progetto deve clonare a mano anche il dump se vuole l'autocompletamento e il controllo automatico; il controllo non sostituisce la prova nel client.

## Riferimenti

- [docs/RIFERIMENTI.md](../RIFERIMENTI.md), `.luarc.json`.
- GDD §13, §22.
