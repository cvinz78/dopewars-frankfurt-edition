# Anleitung: Push-Skript (`push.sh`)

Mit einem Befehl alle Änderungen im Projektordner committen und zu GitHub pushen —
ohne sich die einzelnen Git-Befehle merken zu müssen.

## Voraussetzungen

- `git` ist installiert und eingerichtet:
  ```bash
  git config --global user.name  "Dein Name"
  git config --global user.email "deine@mail.de"
  ```
- Der Projektordner ist ein Git-Repository mit Remote `origin`
  (hier: `github.com/cvinz78/dopewars-frankfurt-edition`).
- Push-Rechte: Der Rechner muss Zugriff auf das GitHub-Repo haben
  (z. B. über `gh auth login` oder den Git-Credential-Helper).
  Fragt GitHub beim Push nach einem Passwort, gehört ein
  **Personal Access Token** hinein (GitHub akzeptiert bei HTTPS kein
  Web-Passwort mehr).

## Benutzung

Terminal im Projektordner öffnen (dort, wo `dopewars.html` und `push.sh` liegen):

```bash
./push.sh                       # fragt nach einer Commit-Nachricht
./push.sh "Fix: Anzeige-Bug"    # mit fertiger Nachricht, ohne Nachfrage
```

Beim interaktiven Aufruf ist bereits ein Vorschlag eingetragen
(`Update <Datum, Uhrzeit>`) — ein Druck auf **Enter** genügt also.

Das Skript kann auch von überall aus aufgerufen werden, z. B.:
`/home/baba/Dopewars/push.sh "Nachricht"` — es wechselt automatisch in den Projektordner.

## Was das Skript der Reihe nach tut

1. In den Skript-Ordner wechseln
2. Prüfen: git vorhanden? Git-Repository? Aktiver Branch?
3. `git status --short` zeigen — **gibt es nichts zu committen, endet es sauber mit ✅**
4. `git add -A` — alle Änderungen *und* neue Dateien werden stagt.
   Die `.gitignore` selbst bleibt außen vor (sie ignoriert sich selbst,
   genau wie gewünscht). Auch persönliche Spieldaten (`dopewars-daten.json`,
   `DW-Save-*.json`, …) landen nie im Repo.
5. `git commit -m "<deine Nachricht>"`
6. `git push origin <aktueller Branch>` (standardmäßig `main`)
7. Erfolgsmeldung mit Commit-Hash und Repo-URL

## Fehlerfälle und Lösungen

| Meldung | Bedeutung / Lösung |
|---|---|
| `❌ git ist nicht installiert` | git installieren, z. B. `sudo pacman -S git` |
| `❌ Kein Git-Repository gefunden` | Du bist im falschen Ordner oder `.git` fehlt |
| `❌ Kein aktiver Branch` | `git checkout main` ausführen und erneut versuchen |
| `❌ Push abgelehnt` | Erst `git pull --rebase origin main`, dann das Skript erneut starten |
| Passwort-/Token-Abfrage beim Push | Personal Access Token eingeben (siehe Voraussetzungen) |
| `❌ Leere Nachricht` | Es wurde keine Nachricht eingegeben — nichts wurde committet |

## Wichtig für dieses Projekt

- **Bei jeder Änderung an `dopewars.html`** vor dem Push die `APP_VERSION`
  um **0.1 erhöhen** (eine Nachkommastelle — nach `1.9` folgt `2.0`).
- Das Skript committet **alle** Änderungen im Ordner. Wer Dateien bewusst
  ausnehmen will, trägt sie in die `.gitignore` ein (die selbst nicht ins
  Repo geladen wird).

## Beispiel-Session

```text
$ ./push.sh "Version 2.6: kleiner Anzeige-Fix im Markt"
=== Git-Status (Branch: main) ===
 M dopewars.html
=== Änderungen stagen (git add -A) ===
=== Committen ===
[main abc1234] Version 2.6: kleiner Anzeige-Fix im Markt
=== Pushen (origin/main) ===
✅ Fertig! abc1234 Version 2.6: kleiner Anzeige-Fix im Markt
   → https://github.com/cvinz78/dopewars-frankfurt-edition
```
