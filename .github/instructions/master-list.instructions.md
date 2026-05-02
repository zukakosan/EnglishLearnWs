---
description: "Use when adding, editing, or updating phrases in words/<series>/master.md. Covers initial registration format, update rules for the 最終更新 column, and test count tracking."
applyTo: "words/**/master.md"
---
# マスターリスト編集ルール

## 新規フレーズ登録

新しいフレーズを追加するとき、「最終更新」列は日付ではなく `未テスト` と記入する。「出題回数」「×回数」はともに `0` とする。

```markdown
| 99 | new phrase | 意味 | - | - | 未テスト | 0 | 0 | 備考 |
```

## テスト後の最終更新

テスト（クイズ）で出題されたフレーズは、判定結果（○/△/×）やレベル変動の有無にかかわらず、「最終更新」列を当日の日付（YYYY-MM-DD）に更新する。

## テスト後の出題回数・×回数

テスト（クイズ）で出題されたフレーズは、以下のルールで「出題回数」「×回数」を更新する。

- 出題されたフレーズ → `出題回数` を +1
- 判定が × のフレーズ → `×回数` も +1
- △（惜しい）は `×回数` にカウントしない
- 日記レビューの判定は `出題回数` `×回数` いずれにもカウントしない（テストのみが対象）
