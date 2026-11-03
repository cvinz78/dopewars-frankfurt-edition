# AGENTS.md — Regeln für Coding-Agents

## Tabs schließen

Wenn zum Arbeiten Tabs geöffnet werden (z. B. Browser-Tabs im In-App-Browser
zum Testen oder Prüfen von Dateien), sind sie **nach Abschluss der Arbeit
wieder zu schließen**.

- Nur Tabs, die als Ergebnis für den Nutzer gedacht sind (Deliverable),
  bleiben offen.
- Reine Arbeits-/Test-Tabs werden am Ende der Aufgabe explizit mit
  `tab.close()` geschlossen.

## Versionsnummer

Die Versionsnummer steht in `dopewars.html` in der Konstante `APP_VERSION`
und ist auf dem Startbildschirm, im Einstellungs-Dialog und in allen
Datei-Exporten sichtbar.

- Format: **eine Nachkommastelle** (z. B. `1.5`) — niemals dreistellig
  (kein `1.1.0`, kein `1.10`).
- **Nach `1.9` folgt `2.0`**, nach `2.9` folgt `3.0` usw.
- Bei **jeder Code-Änderung** wird die Nummer um **0.1 erhöht**.
- Nur Code-Änderungen erhöhen die Version — Änderungen nur an dieser
  AGENTS.md oder an sonstigen Arbeitsdateien nicht.
