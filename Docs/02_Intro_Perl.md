# Perlプログラミング基礎

## 1. 事前準備

### (1) エディタをインストールする。  
　サクラエディタをインストールしましょう。  
　http://sakura-editor.sourceforge.net/download.html  
　（V2(Unicode版)をダウンロードしてください。）

### (2) デスクトップに新しいフォルダ（ディレクトリ）を作成する。  
　以下では、デスクトップ上に「ILAS」というディレクトリを作成したとする。  
　__[注意点] フォルダ名は半角英数字のみにする__

### (3) Docker Quick Terminalをダブルクリックし、Dockerを起動させる。

### (4) Docker起動後、`cd Desktop/ILAS/`で(1)で作成したディレクトリに移動する。
　もしデスクトップがCドライブ以外の場所にある場合は、`cd /d`（例としてDドライブへ移動）でドライブの移動も必要です。  
　なんのことかわからない方は、`cd Desktop/ILAS/`で目的のフォルダに移動できるでしょう。

### (5) ターミナルに`docker run --rm -it -v ${PWD}:/root/data/ qqep685d/ilas2017 bash`を入力し、Enterキーを押す。

### (6) `pwd`でワーキングディレクトリを確認し（/root/data/ であるかどうか）、`ls`でディレクトリ内のファイルを確認する。
　なにも問題なければ、デスクトップ上のILASフォルダに入れているファイルと同じ名前のリストが表示されます。  
　ILASフォルダが空の場合、何かファイル（__半角英数字のみのファイル__）を作成し、フォルダに置いて、確認してみください。

---

## 2. プログラミング演習

以降は、  
①Windows側でプログラムファイルを作成し、  
②ILASフォルダにプログラムをおき、  
③Dockerコンテナ（qqep685d/ilas2017）側でそのプログラムを実行します。

本日作るプログラムのサンプルは、  
https://github.com/qqep685d/ilas2017/tree/master/Perl_script  
に載せています。

---

# ILASセミナー2017 目次
## テキスト
- [Docker入門](./00_Starting_Docker.md)
- [Dockerコマンド](./01_Docker_Commands.md)
- [Perlプログラミング基礎](./02_Intro_Perl.md)
- [Pythonプログラミング on Jupyter Notebook (Windows版)](./03_1_Python_on_Jupyter_for_Windows.md)
- [Pythonプログラミング on Jupyter Notebook (Mac版)](./03_2_Python_on_Jupyter_for_Mac.md)
- [RNA-seq解析入門](./04_RNA-seq_analysis.md)

## 補足
- [なぜ仮想PCを構築するのか？](./XX_Why_use_docker.md)
- [（自習用メモ）解析環境の立ち上げ方法](./YY_Memo_for_self-training.md)
