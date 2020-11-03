# atcoder-setting-initializer

例えば、第 170 回コンテストに参加する場合は、
`make abc num=170`
とすると、

`./template/template.cpp`に記述しているコードが雛形となり、各問題ファイルにコピーされる。
`./abc170/`が作成され、
`./abc170/samples`に入出力が入る。
例えば、
`./abc170/samples/a/input/2.txt`は、A 問題の入力例２。

`cd ./abc170/`をし、`make build file=b`とすると、B 問題がビルドされる。
`make build`のみだと全問題がビルドされる。

`./abc170/build`がコンパイル先.

TODO:自動テスト
