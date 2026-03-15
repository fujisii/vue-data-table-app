# CLAUDE.md

このファイルは Claude Code がリポジトリで作業する際のガイダンスを提供します。

## 注意事項

- Claude Code とのやり取りおよびこのファイルの更新は**日本語**で行う。

## プロジェクト概要

[react-data-table-app](https://github.com/fujisii/react-data-table-app) を Vue.js / Nuxt.js に置き換えたデータテーブルアプリケーション。
ファシリテーター一覧の表示・検索・ソート・ページネーション機能を提供する。

## 技術スタック

| 用途 | ライブラリ |
|------|-----------|
| フレームワーク | Nuxt 3 |
| 言語 | TypeScript |
| ビルドツール | Vite (Nuxt 経由) |
| スタイリング | CSS Modules |
| サーバー状態管理 | @tanstack/vue-query |
| HTTP クライアント | Axios |
| UI コンポーネント | Reka UI (Radix Vue) |
| アイコン | Lucide Vue Next |
| コード品質 | ESLint, Prettier |

## 主要機能

- データテーブル表示（名前・ログイン ID）
- 部分一致検索（デバウンス付き）
- カラムソート（昇順・降順）
- ページネーション（20件/ページ）
- ローディング表示
- エラーダイアログ（リトライ機能付き）

## アーキテクチャ

技術的関心事（レイヤー）でコードを分類する。

```
src/
├── api/          # API クライアント・エンドポイント定義
├── components/   # UI コンポーネント
├── composables/  # ビジネスロジック（React の custom hooks 相当）
├── types/        # TypeScript 型定義
└── app.vue       # ルートコンポーネント
```

### 設計方針

- **責務分離**: ビジネスロジックは composables、表示は components に集約する
- **型安全性**: TypeScript を全体で活用し、`any` は原則禁止
- **パフォーマンス**: `computed` / `watch` を活用し、不要な再レンダリングを抑制

### React → Vue 対応表

| React | Vue / Nuxt |
|-------|-----------|
| `useState` | `ref` / `reactive` |
| `useCallback` | `computed` / 関数定義 |
| Custom Hook | Composable (`use*.ts`) |
| `React.memo` | `v-memo` / `computed` |
| Context API | `useState` (Nuxt) / Pinia |

## 開発コマンド

```bash
npm install          # 依存関係インストール
npm run dev          # 開発サーバー起動 (http://localhost:3000)
npm run build        # プロダクションビルド
npm run preview      # ビルド結果のプレビュー
npm run lint         # ESLint 実行
npm run lint:fix     # ESLint 自動修正
npm run typecheck    # TypeScript 型チェック
```

## 環境変数

`.env.example` をコピーして `.env` を作成する。

```
NUXT_PUBLIC_API_BASE_URL=http://localhost:3000
```

## コーディング規約

- コンポーネントは `<script setup lang="ts">` を使用する
- composable ファイル名は `use` プレフィックスを付ける（例: `useFacilitators.ts`）
- 型定義は `types/` ディレクトリに集約する
- API 呼び出しは `api/` ディレクトリに集約し、composable から呼び出す
- CSS は CSS Modules を使用し、グローバルスタイルは最小限にする
- コミットメッセージは日本語で記述する
