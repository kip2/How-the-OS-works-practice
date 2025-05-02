# chapter 2

各種、実行用のシェルスクリプトを用意した

## download.sh

画像ファイルをダウンロードして、バイナリイメージを作成するところまでのコマンド

## run-qemu-binary_boot.sh

`download.sh`で作成したバイナリイメージを読み込む形でqemuを起動する

## get-uefi-fm.sh

UEFIのファームウェアをダウンロードする。

## run-qemu-uefi.sh

ダウンロードしたUEFIファームウェアでQEMUを起動する。

## run-qemu-wasabi.sh

Rustで作成したwasabi(UEFIアプリ)を読み込んで起動する。

