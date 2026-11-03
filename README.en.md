# Dope Wars – Frankfurt Edition (Dopewars Web)

> 🇩🇪 Deutsche Fassung: [README.md](README.md)

A browser remake of the classic **Dope Wars / Dopewars** — a **single HTML
file** (`dopewars.html`), no installation, no server, no dependencies.
Open the file, enter your name, play.

**Languages:** German (default) and English — switch under
**⚙ Settings → Sprache / Language** (takes effect everywhere at once after
*Apply*).

## Getting started

1. Double-click `dopewars.html` in your browser (Chrome/Edge/Firefox).
2. Enter your name → **Start game**.
3. If a game is already running you'll see **▶ Resume game** — the game is
   saved automatically after every action.

## Rules in brief

- Buy drugs cheap, travel and sell them expensive — each trip costs one day
  and accrues interest (debt **10 %/day**, bank **5 %/day**).
- Your **coat** holds 100 units; **hookers** carry 10 extra each and take one
  fatal hit for you.
- The **police** attack (the chance rises with your wealth and the location's
  police-%): *Fire* (all weapons) or *Run* (about 60 % success). Without a
  gun, running is your only option.
- **Crack** is the hottest drug: usually near its maximum price (45,000) —
  the more police at the location, the higher the price; only rarely does the
  market crash.
- Endings: **time's up**, **shot**, **paraquat** or **completely broke**.
  Score = cash + account − debt → **Hall of Fame** (top 10).

## Features

- Freely selectable game length (**Days**, default 62 — e.g. 365)
- 10 drugs with bargain events (**bright cyan**) and price explosions (**red**)
- Loan shark, bank, gun shop, pub — reachable from every location
- 8 locations (Frankfurt, Central Station, City Park, Berlin, …) with their own
  police-%
- Guns, escalation cops (Kok Schmidt → Kok Meyer → Narc), doctor after fights
- 4 color themes: Darkskin, BlueMoon, Creamy, Retro
- **Mobile-optimized** — compact layouts for narrow screens and a fixed action
  bar at the bottom of the screen
- Autosave + **Resume game**, save/highscore/config files (JSON)
- External data file for Chrome/Edge: automatically saves config + highscores +
  the running game to a JSON file in the game folder

## Settings (⚙)

Almost everything is configurable and stored in your browser: language,
currency symbol, **Days**, starting cash/debt, interest rates, coat space,
hooker values, cheap divider/expensive multiplier, **locations** (name,
police %, drug count), **drugs** (name, price range, cheap message, events,
"in demand"), **guns** and **cops** (armor, deputies, penalties) as well as the
**terms** (hooker/hookers, loan shark …). Inventory carries over by name when
you apply. Reset to factory defaults via **Reset** (highscores are kept).

## Files in the project folder

| File | Contents |
|---|---|
| `dopewars.html` | The complete game (HTML + CSS + JavaScript) |
| `README.md` | German readme |
| `README.en.md` | This file (English) |
| `LICENSE` | License text (GNU General Public License v3) |
| `AGENTS.md` | Working rules for coding agents (no game content) |
| `push.sh` | Script: commit & push in one step (`./push.sh`) |
| `ANLEITUNG.md` | Manual for the push script (German) |

Save games/highscores live in browser storage (localStorage) by default and can
be exported/imported as JSON files via the settings.

## License

This is a port of the classic **Dopewars** (© Ben Webb), which is licensed
under the GNU General Public License **"version 2 or any later version"**.
Based on that "or later" option, this port is released under the
**GNU General Public License v3** — the full license text is in the
[`LICENSE`](LICENSE) file. Copyright notices for the original are preserved
(port: © 2026, Frankfurt Edition).

---
*Good luck on the street.* 🌿
