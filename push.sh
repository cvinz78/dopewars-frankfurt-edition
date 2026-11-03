#!/usr/bin/env bash
# =====================================================================
# push.sh — Automatischer Commit & Push
# Dope Wars – Frankfurt Edition
#
# Verwendung:
#   ./push.sh                     → fragt nach einer Commit-Nachricht
#   ./push.sh "Meine Nachricht"   → nutzt die Nachricht direkt
#
# Ablauf: Status zeigen → alle Änderungen stagen → committen → pushen.
# Die .gitignore bleibt dabei außen vor (sie ignoriert sich selbst).
# Details siehe ANLEITUNG.md
# =====================================================================
set -euo pipefail

# Immer im Ordner des Skripts arbeiten — egal von wo es aufgerufen wird
cd "$(dirname "$0")"

# Git vorhanden?
if ! command -v git >/dev/null 2>&1; then
  echo "❌ git ist nicht installiert (z. B.: sudo pacman -S git)."
  exit 1
fi

# Ist das hier ein Git-Repository?
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "❌ Kein Git-Repository gefunden (erwartet in: $(pwd))."
  exit 1
fi

BRANCH="$(git branch --show-current)"
if [ -z "$BRANCH" ]; then
  echo "❌ Kein aktiver Branch (detached HEAD?). Bitte erst: git checkout main"
  exit 1
fi

echo "=== Git-Status (Branch: $BRANCH) ==="
if [ -z "$(git status --porcelain)" ]; then
  echo "✅ Nichts zu committen — alles ist schon auf dem neuesten Stand."
  exit 0
fi
git status --short

# Nachricht: Parameter 1 — sonst interaktiv abfragen (mit Datum als Vorschlag)
NACHRICHT="${1:-}"
if [ -z "$NACHRICHT" ]; then
  read -r -e -p "Commit-Nachricht: " -i "Update $(date +%d.%m.%Y, %H:%M Uhr)" NACHRICHT
fi
if [ -z "${NACHRICHT// /}" ]; then
  echo "❌ Leere Nachricht — Abbruch (nichts wurde geändert)."
  git reset >/dev/null 2>&1 || true
  exit 1
fi

echo "=== Änderungen stagen (git add -A) ==="
git add -A

echo "=== Committen ==="
git commit -m "$NACHRICHT"

echo "=== Pushen (origin/$BRANCH) ==="
if git push origin "$BRANCH"; then
  echo
  echo "✅ Fertig! $(git log --oneline -1)"
  REMOTE_URL="$(git remote get-url origin 2>/dev/null || true)"
  [ -n "$REMOTE_URL" ] && echo "   → $REMOTE_URL"
else
  echo
  echo "❌ Push abgelehnt — wahrscheinlich ist origin/$BRANCH weiter als lokal."
  echo "   Lösung:  git pull --rebase origin $BRANCH"
  echo "   Danach dieses Skript erneut ausführen."
  exit 1
fi
