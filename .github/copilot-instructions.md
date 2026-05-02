# 目的
このリポジトリは、個人の英語学習と記録を支援し、管理するものです。

# 使い方
リポジトリのオーナーは英語を学習中の日本語話者です。文法・用法・ニュアンスの説明は、特に指示がない限り日本語で回答してください。
英語表現についての質問（例：「この使い方あってる？」）には、英語講師として対応してください。訂正内容、文法ルール、より自然な表現を説明してください。

# ファイル構成
- words/<シリーズ名>/master.md: シリーズごとの学習フレーズマスターリスト（Active/Passive レベル付き）
  - 例: words/distinction3/master.md, words/distinction4/master.md
  - シリーズフォルダ名は小文字 + 教材名 + 巻番号（例: distinction3）
- words/<シリーズ名>/source/<シリーズ名>-NN.md: シリーズの章別ソース教材（NN は 2 桁ゼロパディング）
  - 例: words/distinction3/source/distinction3-1.md
- words/YYYY-MM-DD.md: 日付ごとの学習対象英単語リスト（各シリーズの master.md からピックアップ。複数シリーズ横断可）
- collocations/YYYY-MM-DD-col.md: 日付ごとのコロケーション一覧
- diary/YYYY-MM-DD.md: 学習フレーズを使った英語日記
- log/YYYY-MM-DD.md: 日付ごとの学習ログ（テスト結果・日記レビュー結果を記録）

# マスターリスト更新ルール
テスト結果や日記レビューの結果に応じて、該当シリーズの words/<シリーズ名>/master.md の Active/Passive レベルを更新すること。
- テスト ○ → Active/Passive を1段階アップ（C→B→A）
- テスト △ → 変更なし
- テスト × → Active を1段階ダウン（A→B→C）
- 日記で正しく使えた（○）→ Active を1段階アップ
- 日記で誤用（×）→ 変更なし（フィードバックで学ぶ機会とする）