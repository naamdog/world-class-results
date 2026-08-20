#!/usr/bin/env bash
# Install the World Class Results skill for Claude Code, Codex, and/or Grok Build.
#
#   ./install.sh                 # all targets
#   ./install.sh codex
#   ./install.sh claude grok

set -euo pipefail

SKILL_NAME="world-class-results"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$REPO_ROOT/skills/$SKILL_NAME"

[ -f "$SOURCE/SKILL.md" ] || {
  echo "Cannot find skills/$SKILL_NAME/SKILL.md. Run this from inside the cloned repo." >&2
  exit 1
}

install_to() {
  local dest="$1" label="$2"
  rm -rf "$dest"
  mkdir -p "$dest"
  cp -R "$SOURCE/." "$dest/"
  echo "  installed  $label  ->  $dest"
}

targets=("$@")
[ ${#targets[@]} -eq 0 ] && targets=(claude codex grok)

echo
echo "World Class Results"

claude_dest="$HOME/.claude/skills/$SKILL_NAME"
for t in "${targets[@]}"; do
  case "$t" in
    claude) install_to "$claude_dest" "Claude Code" ;;
    codex)  install_to "$HOME/.agents/skills/$SKILL_NAME" "Codex      " ;;
    grok)
      install_to "$HOME/.grok/skills/$SKILL_NAME" "Grok Build "
      echo "             plugin route: grok plugin marketplace add naamdog/world-class-results"
      echo "                          grok plugin install world-class-results --trust"
      echo "             verify with: grok inspect"
      ;;
    *) echo "unknown target: $t (expected claude, codex, or grok)" >&2; exit 1 ;;
  esac
done

echo
echo "Done. Restart your agent, then try: rate that out of 10 and push it to 10"
echo
