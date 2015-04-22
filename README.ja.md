switch_default_browser_on_osx
=============================

OS X Yosemite上でデフォルトブラウザを切り替えるためのシェルスクリプトと
[Karabiner]( https://pqrs.org/osx/karabiner/index.html.ja )用の設定ファイルです。

デフォルトブラウザを切り替える処理自体は[kerma/defaultbrowser](https://github.com/kerma/defaultbrowser)を使用しています。便利なプログラムをありがとうございます！

このシェルスクリプトは[kerma/defaultbrowser](https://github.com/kerma/defaultbrowser)を実行したあと、Yosemiteが表示する確認ダイアログのボタンをAppleScriptを使って自動的に押すようにしています。

Karabinerを使ってキーボードショートカットから実行するようにすれば、1アクションで素早くデフォルトブラウザを切り替えることができます。

## セットアップ手順

### デフォルトブラウザ切り替えシェルスクリプトのインストール

Finderを開いて `アプリケーション/ユーティリティ/ターミナル` を起動し、
以下のコマンドを実行します。

```
mkdir ~/bin
curl -o ~/bin/switch_default_browser.sh https://raw.githubusercontent.com/hnakamur/switch_default_browser_on_osx/master/switch_default_browser.sh
chmod +x ~/bin/switch_default_browser.sh
```

### Karabiner用設定ファイルを追加

Karabinerを使ってキーボードショートカットでデフォルトブラウザ切り替えを実行したい場合は、[private.xml](https://github.com/hnakamur/switch_default_browser_on_osx/karabiner_config)を `ライブラリ/Application Support/Karabiner/` にコピーします。

あるいは、既に設定ファイルがある場合は、お好みのテキストエディタで設定の内容を適宜コピーしてください。

設定ファイルを書き換えたら、OS Xのタスクバー右上のKarabinerのアイコンをクリックし、[Preferences...]メニューを選択します。
[Change Key]タブを選択した状態で、以下の3つにチェックをつけます。

* Map right-⌘ + S to set default browser to Safari
* Map right-⌘ + C to set default browser to Google Chrome
* Map right-⌘ + F to set default browser to Firefox

### 使用するアプリケーションにコンピュータの制御を許可

1. アップルメニューから[システム環境設定]を開きます。
2. [セキュリティとプライバシー]をクリックします。
3. [プライバシー]タブを選びます。
4. 左のリストで[アクセシビリティ]を選び、左下の[変更するにはカギをクリックします。]を押します。
5. ダイアログが開いたらパスワードを入力して[ロックを解除]ボタンを押します。
6. 右のリストの下の[+]ボタン(プラスの記号のボタン)を押して、ファイル選択ダイアログでアプリケーションを選択し[開く]ボタンを押して追加します。
    * 追加するアプリケーションはシェルスクリプトを起動するアプリケーションです。
    * ターミナルから起動するなら `アプリケーション/ユーティリティ/ターミナル` です。
    * [iTerm2 - Mac OS Terminal Replacement](http://iterm2.com/)から起動する場合は、 `アプリケーション/iTerm` です。
    * Karabinerから起動する場合は `アプリケーション/Karabiner` です。

## ライセンス
このシェルスクリプトはMITライセンスとします。
