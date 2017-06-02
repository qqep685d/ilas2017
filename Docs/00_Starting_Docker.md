# BioinformaticsとDocker
　バイオインフォマティクスで使用するソフトウェアのほとんどはUNIXベースの環境で動作します。しかし、WindowsはUNIXベースで動いていません。  
　Windowsパソコンでバイオインフォマティクスの仕事をする場合、Virtual Boxなどの仮想マシン上にUNIXベースOS（Ubuntu, CentOSなど）をインストールし、その中に必要なソフトウェアを入れて解析するのが主な方法です。この方法には、仮想マシンの構築から解析ソフトウェアの導入まで多くの知識が必要です（ソフトウェアの中にはインストールが非常に難しいものもあります） 。  
　Dockerというソフトウェアを使うことで、他者が構築した環境（バイオインフォマティクスのソフトウェアを使える状態にした環境）をコマンド一行で自身のパソコンにコピーすることが可能になります。
![Dockerイメージ図](../Images/docker.png "Dockerイメージ図")
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


# Dockerのインストール
## Windowsの場合
0. Docker公式ページより[Docker Toolbox](https://www.docker.com/products/docker-toolbox "Docker Toolbox")をダウンロードする。
0. ダウンロードしたファイルをクリックし、Docker Toolboxをインストールする。  
(基本的に何も変更することなく画面を進めていけば良い。)
0. デスクトップ上にある「Docker QuickStart Terminal」を起動する。
0. ターミナル上にクジラの絵が出ればインストール完了。

## MacOSの場合
0. Docker公式ページより[Docker for Mac (Stable版)](https://store.docker.com/editions/community/docker-ce-desktop-mac "Docker for Mac")をダウンロードする。
0. ダウンロードしたファイル（docker.dmg）を起動し、画面にしたがってDockerをインストールする。
0. メニューバーのクジラアイコンをクリックし、「Docker is running」が表示されていればインストール完了。

# （ILASセミナー2017）バイオインフォマティクス環境のインストール＆起動
ターミナル上で
0. Dockerhub上のDockerイメージを探す。  
`docker search ilas2017`  

0. Dockerイメージを入手する。  
`docker pull qqep685d/ilas2017`

0. 入手したイメージよりDockerコンテナを動かす（起動とログイン）  
`docker run -i -t qqep685d/ilas2017 /bin/bash`

0. Docker内のソフトウェアを使ってみる（例: bwa）。  
`bwa`

0. Dockerコンテナから出る（ログアウト）。  
`exit`

# ILASセミナー2017環境の内容
　Dockerイメージ「qqep685d/ilas2017」には、以下のソフトウェアが含まれています。

- OS: Ubuntu 14.04 LTS  

- DNA-seq関係ソフト  
bwa (0.7.12), samtools (1.3.1), bcftools (1.3.1), htslib (1.3.1)

- RNA-seq関係ソフト  
Bowtie2 (2.1.0), Tophat2 (2.0.14), cufflinks (2.2.1)

- アライメント/系統樹作成ソフト  
muscle (3.8.31), mafft (7.123b), RAxML (7.2.8), PhyML (20131022)

# Docker外のソフトウェア
　ILASセミナー2017では、以下のソフトウェアも使用するでしょう。
## R
　R公式ページ(https://www.r-project.org/) より、Rの最新版をダウンロードしてください。

## IGV
The Integrative Genomics Viewer（IGV）の公式ページ(http://software.broadinstitute.org/software/igv/) より、IGVをダウンロードしてください。