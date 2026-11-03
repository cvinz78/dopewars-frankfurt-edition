# Dope Wars – Frankfurt Edition (Dopewars Web)

> 🇬🇧 **English version: [English Version](#english-version)** (unten / below)
> · zusätzlich als eigene Datei / also as a separate file: [README.en.md](README.en.md)

Ein Browser-Remake des Klassikers **Dope Wars / Dopewars** — als **einzige
HTML-Datei** (`dopewars.html`), ohne Installation, ohne Server, ohne Abhängigkeiten.
Datei öffnen, Namen eingeben, loslegen.

**Sprachen:** Deutsch (Standard) und Englisch — umschaltbar unter
**⚙ Einstellungen → Sprache / Language** (wirkt nach *Übernehmen* sofort überall).

## Spielstart

1. `dopewars.html` im Browser doppelklicken (Chrome/Edge/Firefox).
2. Namen eingeben → **Spiel starten**.
3. Läuft schon ein Spiel, erscheint **▶ Spiel fortsetzen** — das Spiel wird nach
   jeder Aktion automatisch gesichert.

## Kurzregeln

- Kaufe Waren billig, reise und verkaufe sie teuer — jede Reise kostet einen Tag
  und lässt Zinsen laufen (Schulden **10 %/Tag**, Bank **5 %/Tag**).
- Dein **Mantel** fasst 100 Einheiten; **Huren** tragen je 10 extra und fangen
  einmal einen tödlichen Treffer ab.
- Die **Polizei** greift an (Chance steigt mit Vermögen und Orts-Polizei-%):
  *Feuern* (alle Waffen) oder *Rennen* (ca. 60 % Erfolg). Ohne Waffe nur Rennen.
- **Crack** ist die begehrteste Ware: meist nahe am Höchstpreis (45.000) — je
  mehr Polizei am Ort, desto teurer; nur selten bricht der Markt ein.
- Enden: **Zeit um**, **erschossen**, **Paraquat** oder **komplett pleite**.
  Punkte = Bargeld + Konto − Schulden → **Hall of Fame** (Top 10).

## Features

- Spiellänge frei wählbar (**Tage**, Standard 62 — z. B. auch 365)
- 10 Waren mit Schnäppchen-Events (**Hellcyan**) und Preisexplosionen (**rot**)
- Kredithai, Bank, Waffenladen, Kneipe — von jedem Ort aus
- 8 Orte (Frankfurt, Hauptbahnhof, Stadtpark, Berlin, …) mit eigener Polizei-%
- Waffen, Eskalations-Cops (Kok Schmidt → Kok Meyer → V-Mann), Arzt nach Kämpfen
- 4 Farbschemata: Darkskin, BlueMoon, Creamy, Retro
- **Für Handys optimiert** — kompakte Layouts für schmale Displays und feste
  Aktionsleiste am unteren Bildschirmrand
- Autosave + **Spiel fortsetzen**, Spielstand-/Highscore-/Config-Dateien (JSON)
- Externe Datendatei für Chrome/Edge: sichert Config + Highscores + Spielstand
  automatisch in eine JSON-Datei im Spielordner

## Einstellungen (⚙)

Praktisch alles ist konfigurierbar und wird im Browser gespeichert:
Sprache, Währungssymbol, **Tage**, Startgeld/-schulden, Zinssätze, Mantelplatz,
Huren-Werte, Billig-Teiler/Teuer-Faktor, **Orte** (Name, Polizei %, Warenzahl),
**Waren** (Name, Preisspanne, Schnäppchen-Text, Events, „gefragt“), **Waffen**
und **Polizisten** (Rüstung, Begleiter, Malus-Werte) sowie die **Begriffe**
(Hure/Huren, Kredithai …). Bestände wandern beim Übernehmen per Ware/Waffen-Name
mit. Zurücksetzen per **Reset** (Werkseinstellungen, Highscores bleiben).

## Dateien im Projektordner

| Datei | Inhalt |
|---|---|
| `dopewars.html` | Das komplette Spiel (HTML + CSS + JavaScript) |
| `README.md` | Diese Datei (Deutsch + Englisch untereinander) |
| `README.en.md` | Englische Fassung als eigene Datei |
| `LICENSE` | Lizenztext (GNU General Public License v3) |
| `AGENTS.md` | Arbeitsregeln für Coding-Agents (kein Spielinhalt) |
| `push.sh` | Skript: Commit & Push in einem Schritt (`./push.sh`) |
| `ANLEITUNG.md` | Anleitung zum Push-Skript |

Spielstände/Highscores liegen standardmäßig im Browser-Speicher (localStorage)
und können über die Einstellungen als JSON-Datei exportiert/importiert werden.

## Lizenz

Dies ist ein Port des klassischen **Dopewars** (© Ben Webb), das unter der
GNU General Public License **„Version 2 oder später“** lizenziert ist. Auf
Grundlage dieser „or later“-Option wird dieser Port unter der
**GNU General Public License v3** veröffentlicht — der vollständige Lizenztext
liegt in der Datei [`LICENSE`](LICENSE). Copyright-Hinweise an das Original
bleiben erhalten (Port: © 2026, Frankfurt Edition).

---
*Viel Glück auf der Straße.* 🌿

---

# English Version

> 🇩🇪 Deutsche Fassung: siehe oben / German version: see above ·
> additionally as a separate file / zusätzlich als eigene Datei: [README.md](README.md)

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
| `README.md` | This file (German + English, one below the other) |
| `README.en.md` | English version as a separate file |
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
