#!/usr/bin/env bash
# Write a handoff note with the current account, switch, then start a fresh
# session that picks the note up through session-start.sh.
# Usage: switch-with-handoff.sh [cswap switch args...]
set -euo pipefail

claude -p "/handoff" --continue
cswap switch "$@"
exec claude
