# Docker入門

## 1. Dockerとは
　パソコンの中にもう一台のパソコンを容易に構築できるツールです（このような内部のパソコンは「仮想PC」や「仮想マシン」、「仮想環境」とよく言われます）。また、他の仮想ツールに比べて軽量に動作します。さらに重要な点として、Docker Hubというインターネット上のサービスと連携することで、他者が作成した環境（例えば、バイオインフォマティクス環境）を簡単に利用することができます。

　興味がある方は、[なぜ仮想PCを構築するのか？](./XX_Why_use_docker.md) もご覧ください。

## 2. Dockerの用語
### Dockerコンテナ
　Dockerはコンテナと呼ばれるもので、「作成・削除したファイル・ディレクトリ（＝フォルダ）」や「インストールしたソフトウェア」、「ソフトウェア間の関係」などの情報を保存している。

### Dockerイメージ
　Dockerイメージは、Dockerコンテナをまとめて配布・再利用できる形にしたもの。

### Docker Hub
　Docker HubはDockerイメージを保存・配布しているインターネット上のサービスのこと。作成した環境（Dockerイメージ）は誰でも無料でDocker Hubに置くことができ（有料サービスもある）、他者（または自身）が作成した環境を自身のパソコンにダウンロードすることもできる。

__ILASセミナーでは、バイオインフォマティクス関連のソフトウェア一式を準備した環境（Dockerイメージ）を利用します。そのイメージは、`qqep685d/ilas2017`という名前でDocker Hubに置いています。__

![Dockerイメージ図](../Images/docker1.png "Dockerイメージ図")

## 3. BioinformaticsとDocker
　バイオインフォマティクスで使用するソフトウェアのほとんどはUNIXベースの環境で動作します。しかし、WindowsはUNIXベースで動いていません。  
　Windowsパソコンでバイオインフォマティクスの仕事をする場合、Virtual Boxなどの仮想マシン上にUNIXベースOS（Ubuntu, CentOSなど）をインストールし、その中に必要なソフトウェアを入れて解析するのが主な方法です。この方法には、仮想PCの構築から解析ソフトウェアの導入まで多くの知識が必要です（ソフトウェアの中にはインストールが非常に難しいものもあります） 。  
　Dockerというソフトウェアを使うことで、他者が構築した環境（バイオインフォマティクスのソフトウェアを使える状態にした環境）をコマンド一行で自身のパソコンにコピーすることが可能になります。このように簡単に解析環境を構築できることは、UNIXベースのパソコン（MacOSなど）でも都合が良いでしょう（とくに、環境構築が苦手な人や面倒な人にとっては）。



[Dockerなしの場合に必要な知識]
- （Windowsの場合）仮想マシン構築
- 解析ソフトウェアのインストール
- 環境設定（PATHの通し方など）
- UNIX/Linuxコマンド
- 解析ソフトウェアの使い方

[Dockerを使った場合に必要な知識]
- Dockerの使い方
- UNIX/Linuxコマンド
- 解析ソフトウェアの使い方


## 4. Dockerのインストール
### Windowsの場合
0. Docker公式ページより[Docker Toolbox](https://www.docker.com/products/docker-toolbox "Docker Toolbox")をダウンロードする。
0. ダウンロードしたファイルをクリックし、Docker Toolboxをインストールする。  
(基本的に何も変更することなく画面を進めていけば良い。)
0. デスクトップ上にある「Docker QuickStart Terminal」を起動する。
0. ターミナル上にクジラの絵が出ればインストール完了。

### MacOSの場合
0. Docker公式ページより[Docker for Mac (Stable版)](https://store.docker.com/editions/community/docker-ce-desktop-mac "Docker for Mac")をダウンロードする。
0. ダウンロードしたファイル（docker.dmg）を起動し、画面にしたがってDockerをインストールする。
0. メニューバーのクジラアイコンをクリックし、「Docker is running」が表示されていればインストール完了。

## （ILASセミナー2017）バイオインフォマティクス環境のインストール＆起動
ターミナル上で
1. Docker Hub上のDockerイメージを探す。  
`docker search ilas2017`  

1. Dockerイメージを入手する。  
`docker pull qqep685d/ilas2017`

1. 入手したイメージよりDockerコンテナを動かす（起動とログイン）  
`docker run -i -t qqep685d/ilas2017 /bin/bash`

1. Docker内のソフトウェアを使ってみる（例: bwa）。  
`bwa`

1. Dockerコンテナから出る（ログアウト）。  
`exit`

1. [Windowsの場合] Dockerマシンを終了する。  
（Macの場合、このプロセスは不要です。）  
`docker-machine stop`  


## ILASセミナー2017環境の内容
　Dockerイメージ「qqep685d/ilas2017」には、以下のソフトウェアが含まれています。

- OS: Ubuntu 14.04 LTS  

- DNA-seq関係ソフト  
bwa (0.7.12), samtools (1.3.1), bcftools (1.3.1), htslib (1.3.1)

- RNA-seq関係ソフト  
Bowtie2 (2.1.0), Tophat2 (2.0.14), cufflinks (2.2.1)

- アライメント/系統樹作成ソフト  
muscle (3.8.31), mafft (7.123b), RAxML (7.2.8), PhyML (20131022)

## 5. Docker外のソフトウェア
　ILASセミナー2017では、以下のソフトウェアも使用するでしょう。
### R
　R公式ページ(https://www.r-project.org/) より、Rの最新版をダウンロードしてください。

### IGV
　The Integrative Genomics Viewer（IGV）の公式ページ(http://software.broadinstitute.org/software/igv/) より、IGVをダウンロードしてください。

### （プログラミング用）テキストエディタ
　Windows標準搭載の
Windows標準搭載のエディタとして「メモ帳」が最初からインストールされていますが、プログラミングには不向きなエディタであるため、適当なエディタをインストールした方が良いでしょう。
- サクラエディタ V2(Unicode版) （http://sakura-editor.sourceforge.net/）
- Notepad++（https://notepad-plus-plus.org/）
- TeraPad（http://www5f.biglobe.ne.jp/~t-susumu/）

- Atom（https://atom.io/）  
動作はやや重い。機能は豊富。

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
