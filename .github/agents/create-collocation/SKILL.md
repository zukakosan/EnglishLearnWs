---
name: create-collocation
description: "words/ ディレクトリ内の英単語リスト(YYYY-MM-DD.md)を元に、collocations/ ディレクトリにコロケーションリスト(YYYY-MM-DD-col.md)を作成する。USE FOR: コロケーション作成, collocation, 単語リストからコロケーション生成, 英語学習用コロケーション"
---

# コロケーションリスト作成スキル

## 概要

`words/` ディレクトリ内の英単語・フレーズリストを元に、対応するコロケーションリストを `collocations/` ディレクトリに作成する。

## 入力

- `words/YYYY-MM-DD.md`: 1行1フレーズの英単語・英語表現リスト

## 出力

- `collocations/YYYY-MM-DD-col.md`: Markdown テーブル形式のコロケーションリスト

## 手順

1. 対象の `words/YYYY-MM-DD.md` ファイルを読み込む。
2. 各フレーズについて、以下の情報を調べる:
   - **意味**: 日本語での簡潔な意味説明
   - **collocations**: 関連するコロケーション（類似の1単語表現 + 複数語からなるイディオム）
3. `collocations/YYYY-MM-DD-col.md` としてファイルを作成する。

## 出力フォーマット

ファイルは以下の Markdown テーブル形式とする:

```markdown
| # | 意味 | collocations |
|---|------|-------------|
| フレーズ | 日本語の意味 | コロケーション1 / コロケーション2 / コロケーション3 / ... |
```

### カラム説明

| カラム | 内容 |
|--------|------|
| `#` | 元の英単語・フレーズ |
| `意味` | 日本語での簡潔な意味説明 |
| `collocations` | `/` 区切りで複数のコロケーションを記述 |

### コロケーション記述のルール

- **なるべくイディオムを含める**こと。
- 類義の **1単語表現**（例: shady, sketchy）と **複数語のイディオム**（例: a dodgy deal, sounds dodgy）の両方を含める。
- 1フレーズにつき **5個以上** のコロケーションを目安に記述する。
- `/` で区切って1つのセルに記述する。

## 出力例

```markdown
| # | 意味 | collocations |
|---|------|-------------|
| last minute | 直前の・土壇場の | at the last minute / last-minute decision / last-minute change / leave sth to the last minute / a last-minute rush |
| dodgy | 怪しい・信用できない | shady / sketchy / fishy / a dodgy deal / dodgy character / sounds dodgy / a bit dodgy |
| apples and oranges | まったく別物・比較にならない | comparing apples and oranges / chalk and cheese / two different things / can't compare / not the same thing at all |
```

## 注意事項

- `words/` のファイル名が `YYYY-MM-DD.md` でない場合でも、出力ファイルは正しい日付形式 `YYYY-MM-DD-col.md` で作成する。
- 既存の `collocations/` ファイルがある場合は上書きせず、ユーザーに確認する。
- ファイルは **必ず `create_file` ツールで実際に作成** すること（コードブロックの提示だけでは不十分）。
