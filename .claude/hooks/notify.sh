#!/bin/bash
# Claude Code が通知を送るときに macOS 通知を表示する

PAYLOAD=$(cat)
TITLE=$(echo "$PAYLOAD" | jq -r '.title // "Claude Code"')
MESSAGE=$(echo "$PAYLOAD" | jq -r '.message // "入力を待っています"')

osascript -e "display notification \"$MESSAGE\" with title \"$TITLE\"" 2>/dev/null || true
