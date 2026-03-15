#!/bin/bash
# Edit/Write 後に対象ファイルへ ESLint --fix を自動実行する

FILE=$(cat | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE" ]; then
  exit 0
fi

# .vue / .ts / .js のみ対象
if [[ ! "$FILE" =~ \.(vue|ts|js)$ ]]; then
  exit 0
fi

# ファイルが存在する場合のみ実行
if [ ! -f "$FILE" ]; then
  exit 0
fi

npx eslint --fix "$FILE" 2>/dev/null || true
