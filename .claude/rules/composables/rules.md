# src/composables/ のルール

`src/composables/` 配下のファイルを編集・作成するときは以下を必ず守る。

- ファイル名は `use{機能名}.ts` の形式にする
- サーバー状態の管理には `@tanstack/vue-query` を使う（`ref` + `watch` での手動フェッチは避ける）
- `isLoading`・`error` など状態を必ず返す
- ビジネスロジックはここに集約し、コンポーネントに漏らさない
- すべての型を明示する（`any` 禁止）
