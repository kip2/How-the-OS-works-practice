# How the work OS practice

「作って学ぶ OSのしくみ」本の実習用リポジトリです。

## 実行環境

- Macbook Pro(2021)
- Apple M1 Max
- MacOS sequoia 15.4.1

## TIPS

### rust-analyzerを効かせたい

今回のリポジトリの用に、プロジェクトルートでVScodeを開いた場合は、ルート直下に作ったプロジェクトの`main.rs`を開いてもrust-analyzerが効かない。

そういった場合は以下の対応をすれば解決することが可能。

1. `.vscode/settings.json`を作成する。

プロジェクトルートに`.vscode/settings.json`を作成する。

2. `settings.json`に以下の記載をする。

作成した`settings.json`を開き、以下の記載を追加する。

```json
{
    "rust-analyzer.linkedProjects": [
        // Cargo.tomlファイルのパスは現環境のもの。
        "chapter-2/wasabi/Cargo.toml",
        // 追加する場合は以下の用に対象のパスを追加していくと良い
        // "chapter-3/wasabi/Cargo.toml",
      ]
}
```

記載しているパスはこのリポジトリのものを記載してる。
環境ごとに差異があると思うので、対象の`Cargo.toml`が存在するパスを指定してほしい。

### rust-analyzerが1.77には対応していないと言ってくる

`rust-analyzer`のLSPが、バージョン1.78以上にしか対応してないって言ってきた場合の対処。

どうやら、最新バージョン(20250502時点)の`rust-analyzer`は、Rustのバージョン1.78以上でしか動いてくれないらしい。

なので、1.77で対応している`rust-analyzer`を持ってくる必要がある。

とはいえ、手元のPCにいれてるグローバルな`rust-analyzer`のバージョンを落としてくはない(他にもRust触るし、そちらは最新バージョンのRust使うので。え？みんなもつかうよね？)。
なので、このリポジトリでのみ、1.77に対応した`rust-analyzer`を使用したい。

この問題の解決方法としてはざっくり以下のようになる。

1. version1.77に対応しているrust-analyzerを公式リポジトリから取得する。
取得後はzipを解答して、実行権限を与える。
バージョンはAIにきいて2024-03-11版を取得している。
1.78にのみ対応したバージョン以前ならどれでも良いと思う

なお、ダウンロードして実行権限を付与するところまでをシェルスクリプトとして用意している。
利用する場合は、自分の環境のM1 Mac向けのシェルスクリプトになっているため、そのままは使用せず、あくまで参考情報として利用してほしい。

[ダウンロード用シェルスクリプト](./setup-rust-analyzer.sh)

2. .vscode/settings.jsonに、以下のように記載する。

```json
{
  "rust-analyzer.server.path": "rust-analyzer/bin/rust-analyzer-1.77"
}
```

パスはrust-analyzerの1.77対応バージョンを保存したディレクトリを指定する（上記の記載パスはあくまで例）。

