---
name: createCollocation
description: 単語のコロケーションリストを作成する
---

createCollocation は単語のコロケーションのリストを作成する機能です。
類似の1単語表現と、複数後からなるイディオムをどちらも含めてください。

words/ には、学習対象の単語リストが YYYY-MM-DD.md という形で含まれます。
各ファイルに対応するコロケーションの対応リストを YYYY-MM-DD-col.md として collocations/ 内に作成してください。
なお、ファイルは md の表形式とし、以下のカラムを持ちます。collocations は、なるべくイディオムを含め、複数記述します。
| # | 意味 | collocations |