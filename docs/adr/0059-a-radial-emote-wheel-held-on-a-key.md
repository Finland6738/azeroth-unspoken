# 0059. A radial emote wheel, held on a key the player binds

- Status: Accepted (built in one pull request; nothing of it has been tried in the game client)
- Date: 2026-11-24 (the owner's request of the same day, after the UI-ECO migration and release 0.3.0)

## Context

A roleplayer uses the game's emotes all the time: `/wave`, `/bow`, `/dance`, `/train`, `/moo`. Typing them breaks the
scene, and the game's own emote menu (the chat bubble button) is a long list in a small menu. The owner asked for a
**radial menu**: hold the middle mouse button, a round, semi-transparent wheel appears at the cursor, the slice under the
direction of the mouse lights up, and releasing the button plays that emote. Releasing near the centre cancels.

The addon is offline and private ([ADR 0002](0002-fully-offline-no-ai.md), [ADR 0003](0003-private-narrator-and-chat-gateway.md)):
an emote is a public action of the character, but one the player makes by hand, like typing `/dance`. Nothing here sends
chat text or decides for the player.

The client is WoW Forever 1.60.1 (Interface 16001, Lua 5.1). The API dump ([ADR 0010](0010-forever-api-dump-as-reference.md))
lists every function this needs: `C_ChatInfo.PerformEmote(emoteName, targetName, suppressMoveError)` and the older
`DoEmote`, `GetCursorPosition`, `IsMouseButtonDown`, `IsKeyDown`, `PlaySound` and `C_Sound.PlaySound`, `GetBindingKey`,
`GetBindingAction`, `SetBinding`, `SaveBindings` and `GetCurrentBindingSet`, and the events `PLAYER_REGEN_DISABLED`,
`PLAYER_LEAVING_WORLD`, `CINEMATIC_START`, `LOADING_SCREEN_ENABLED` and `PLAY_MOVIE`. It does not list the game's own Lua
tables and strings: `SOUNDKIT` and the emote strings `EMOTE<n>_TOKEN` of the chat frame, which are read with a fallback. The look is the NEBULA look of [ADR 0058](0058-nebula-ecosystem-look-and-credits.md), and its
invariants apply (tokens only, both themes, no text in code, reduced motion, no protected frame).

## Decision

1. **The trigger is a key binding the player chooses.** `Bindings.xml` gains `AZEROTHUNSPOKEN_WHEEL` with
   `runOnUp="true"`; its body passes the key state, `AzerothUnspoken_EmoteWheel(keystate)`. A modern client gives the body
   a local `keystate` ("down" or "up"); an old one sets a global of the same name: the same line reads either. A call with
   no state at all counts as a press that is then released by the watchdog (point 6).
   - The binding **ships unbound**. The player binds the middle mouse button (`BUTTON3`), or any key, in the game's Key
     Bindings, under *Azeroth Unspoken*.
   - Settings > *Emote wheel* offers **Bind the middle mouse button**: two clicks (the first one says what `BUTTON3` does
     now, if anything; the second binds it), only out of combat, saved in the current binding set with `SaveBindings`. A
     second button gives `BUTTON3` back (unbinds it from the wheel). The addon **never takes a key by itself**.
2. **It opens on press.** No delay by default, as the owner described it. A *hold delay* of 0 to 0.5 s is a setting: with a
   delay, a release before it does nothing, so a short click of the key stays free. A release inside the dead zone cancels.
3. **Emotes come from the client.** The list is read once from the game's own strings, `EMOTE<n>_TOKEN` and its
   `EMOTE<n>_CMD1` (the localised command, such as `/dance`), so an emote that WoW Forever adds appears by itself. If the
   client has no such strings, a short built-in list of common tokens is used. An emote is played with
   `C_ChatInfo.PerformEmote(token)` when the client has it, else `DoEmote(token)`; neither is protected. A slice whose token
   the client does not list still shows (by its token) and is tried; nothing breaks if the client refuses it.
4. **Eight slices, from 4 to 12.** Slice 1 is centred at the top and the others follow clockwise. Each has an icon of the
   addon's icon sheet (four new ones: hand, note, smile, train; others reuse the sheet) and, when labels are on, a short
   name: the locale key `emote_<TOKEN>` when there is one (English and Italian), otherwise the client's own command
   without the slash. The centre names the lit emote, or says *Cancel* inside the dead zone, so the choice is written in
   words and not shown by colour alone.
5. **The look follows the theme.** A round disc in `surface-1` at 86 %, a `border-strong` ring, thin separators in
   `border-subtle`, the dead zone in `surface-3`; the lit slice gets an `accent` disc behind its icon (the icon turns
   `on-accent`), a glow (the one neon element of the view, off with *Neon effects: off*) and its label in `text-1`. Two new
   textures, `disc_256` and `ring_256`, keep the edge sharp at the wheel's size. The wheel follows the window scale
   setting. It is an ordinary, unprotected frame in the `FULLSCREEN_DIALOG` strata that **never takes the mouse**, so the
   key's release reaches the binding.
6. **It never stays on screen.** It closes on the release; on Esc (it is one of `UISpecialFrames`); when it is hidden by
   anything (the interface hidden with Alt+Z, a loading screen); on entering combat, on leaving the world and at the start of
   a cinematic; after 15 seconds open; and through a **watchdog** that checks, while it is open, that the bound key is
   still held (`IsMouseButtonDown` for a mouse button, `IsKeyDown` for a key). A release that never arrives (another frame
   took the mouse, the game lost focus) then cancels within a tenth of a second. The watchdog trusts the client only if it
   says the key is down at the moment the wheel opens; otherwise it stands aside and the timeout remains. A `/reload` starts
   with the wheel closed: nothing of it is saved but the settings.
7. **Motion and sound.** Opening is a 0.15 s scale from 0.85 with a fade-in; confirming or cancelling is a 0.1 s fade-out
   (`UI/Motion.lua`, `Motion.PopIn` and `Motion.FadeOut`). With *Animations: off* the wheel appears and goes at once. A tick
   plays when the lit slice changes and a confirm sound when an emote is played: the client's sound kits by name from
   `SOUNDKIT`, with fixed ids as the fallback, through `PlaySound`, else `C_Sound.PlaySound`. *Sounds: off* mutes both.
8. **The geometry is pure Lua.** `EmoteWheel.Math` turns the cursor (`GetCursorPosition` divided by the wheel's effective
   scale) into an offset from the centre, the offset into an angle (0 at the top, clockwise, in [0, 2π)) and the angle into
   a slice, with the dead zone; the tests prove the 0/360 boundary, the centred slices and the scale.
9. **Settings** (account, `ui.wheel`): `slices` (4-12, 8), `labels` (on), `deadZone` (16-80 units, 30), `holdDelay`
   (0-0.5 s, 0), `sounds` (on) and `emotes`, twelve tokens, one per slice (the first `slices` are used). The Settings page
   has a section for them, after *Appearance*, with a slice picker and its emote; `/au wheel` sets and resets the slices
   and binds or frees the middle button from the chat, and `/au emotes` prints the client's list. Both are in a new group
   of `/au help`, *Emotes* (a group holds at most nine lines and the four others were full).

## Alternatives considered

- **Take the middle button with an override binding while the addon is loaded.** It would work at once, but it takes a key
  from the player without asking and fights other addons that bind it. Rejected: the player binds it, or asks the
  Settings to.
- **A mouse-down script on the world frame.** The world frame is the game's own and hooking its clicks is fragile and
  close to taint; the binding system already gives press and release.
- **Hard-coded emote tokens.** Simple, but WoW Forever may add or rename emotes; the client's own list is the truth, the
  built-in list only a fallback.
- **One drawn wedge per slice.** A wedge texture fits one slice count only; a disc, separators and a lit disc under the icon
  work for any count from 4 to 12 with three textures.
- **Confirm a missed release.** If the release never arrives, the player's intent is unknown; cancelling plays nothing
  public by mistake.

## Consequences

- **Positive:** any emote in two gestures, without typing; the client's own emote list; a wheel that follows the themes,
  the scale, the reduced motion and the neon setting; no key taken without consent.
- **Costs:** a binding, a settings section, six locale keys per emote label that has one, two textures and four icons, a
  section in the Settings page and its tests, and one more `FULLSCREEN_DIALOG` frame.
- **Not verified in the game client:** how 1.60.1 passes `keystate` and whether the release of a mouse button bound to a
  key reaches the binding over a frame; which `EMOTE<n>_TOKEN` strings the client defines and whether `PerformEmote` and
  `DoEmote` both play them; the sound kits; the cursor scale at UI scales other than 1; whether `IsKeyDown` and
  `IsMouseButtonDown` answer while the key is held; the look and the timings of the animations. The offline tests use a
  simulated client.

## References

- `AzerothUnspoken/UI/EmoteWheel.lua`, `AzerothUnspoken/Core/Emotes.lua`, `AzerothUnspoken/Bindings.xml`,
  `AzerothUnspoken/UI/SettingsFrame.lua`, `AzerothUnspoken/UI/Motion.lua`; `Tests/TestEmoteWheel.lua`.
- Wiki: [Emote Wheel](../wiki/Emote-Wheel.md); spec: [`docs/specs/ui-style.md`](../specs/ui-style.md) §2.2.
- [ADR 0058](0058-nebula-ecosystem-look-and-credits.md) (look and invariants), [ADR 0010](0010-forever-api-dump-as-reference.md)
  (the API dump), [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (Compat).
