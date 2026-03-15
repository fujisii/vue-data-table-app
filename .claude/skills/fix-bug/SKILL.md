---
name: fix-bug
description: バグを修正する
allowed-tools: Read, Grep, Glob, Bash, Edit, Write
---
# バグ修正

以下の情報をもとにバグを調査・修正してください。

## 対象

$ARGUMENTS

## 手順

1. エラーメッセージや再現手順から原因を特定する
2. 関連ファイルを調査する（`src/` 配下）
3. 最小限の変更で修正する
4. 修正後に `npm run typecheck` と `npm run lint` でエラーがないことを確認する

## 方針

- **根本原因を修正する**（症状を隠すだけのコードは書かない）
- TypeScript の型エラーは `any` で回避しない
- 修正箇所以外のコードは変更しない
