---
name: add-component
description: Vueコンポーネントを追加する
---
# コンポーネント追加

引数で指定されたコンポーネントを `src/components/` に追加してください。

## 要件

- `<script setup lang="ts">` を使用する
- Props は `defineProps<{}>()` で型定義する
- Emits は `defineEmits<{}>()` で型定義する
- スタイルは CSS Modules（`<style module>`）を使用する
- コンポーネント名は PascalCase にする
- CLAUDE.md の設計方針（責務分離・型安全性）に従う

## 対象コンポーネント

$ARGUMENTS
