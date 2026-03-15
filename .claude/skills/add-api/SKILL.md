---
name: add-api
description: APIエンドポイント定義を追加する
allowed-tools: Read, Glob, Write, Edit
---
# API エンドポイント追加

引数で指定されたエンドポイントの定義を `src/api/` に追加してください。

## 要件

- Axios を使用し、`src/api/` に関数として定義する
- レスポンス型は `src/types/` に定義する
- 関数名は `fetch{リソース名}` または `post{リソース名}` の形式にする
- エラーハンドリングは composable 側に委ねる（API 関数では throw する）
- `any` は使用しない
- CLAUDE.md の設計方針（責務分離・型安全性）に従う

## 対象エンドポイント

$ARGUMENTS
