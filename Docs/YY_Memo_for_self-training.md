# （自習用メモ）解析環境の立ち上げ方法
## 0. 事前準備
1. Docker Quick Terminalの起動
1. デスクトップ上のILAS(ILASセミナー用のフォルダ名)に移動  
`cd Desktop/ILAS/`

## 1. 練習環境の開始コマンド
### UNIX/Linuxコマンド  
`docker run --rm -it -v ${PWD}:/root/data/ qqep685d/ilas2017 bash`  

### Perlプログラミング  
`docker run --rm -it -v ${PWD}:/root/data/ qqep685d/ilas2017 bash `  
[注意点]  
プログラム保存の際、文字コード「UTF-8」と改行コード[UNIX(LF)]にする。  
作成したプログラムは、デスクトップ上のILASセミナー用のフォルダに置く。

### Pythonプログラミング  
1) `docker run --rm -it -p 8888:8888 -v ${PWD}:/opt/notebook eipdev/alpine-jupyter-notebook`  

2) ウェブブラウザを起動  
[注意点]  
Internet Explore, FireFox, Google ChromeはOK。__（Microsoft Edgeはダメ）__  

3) ターミナルに表示されている`http://`の1行をコピーし、アドレスバーに貼り付け（ペースト）する。  

4) `http://0.0.0.0:8888/`の部分を`http://192.168.99.100:8888/`に変える。  
[備考]  
_アドレスバーに`192.168.99.100`を先に入力し、パスワードを求められた後、ターミナルに表示されているtoken以下（イコールより後ろの文字列）をコピー＆ペーストしても良い。_  

5) 杉原さん配布テキスト（ファイル名の最後が.ipynb）をダブルクリックして開く。  
[備考]  
テキスト（.ipynb）は、何個かのフォルダ階層を降りていった先にあるかもしれません。  
テキストはこちらからダウンロードしてください。  
https://github.com/yu57th/Python_Lecture
1. 上記URLにアクセス。
1. 右上あたりの「Clone or download」をクリック。
1. Download Zip
1. ダウンロードフォルダを開く。
1. ダウンロードしたファイルを右クリックで展開する。
1. 展開したフォルダをデスクトップ上のILASフォルダに移動する。

---

# ILASセミナー2017 テキスト
- Docker入門  
https://github.com/qqep685d/ilas2017/blob/master/Docs/00_Starting_Docker.md

- Dockerコマンド  
https://github.com/qqep685d/ilas2017/blob/master/Docs/01_Docker_Commands.md

- Perlプログラミング基礎  
https://github.com/qqep685d/ilas2017/blob/master/Docs/02_Intro_Perl.md

- Pythonプログラミング on Jupyter Notebook (Windows版)  
https://github.com/qqep685d/ilas2017/blob/master/Docs/03_1_Python_on_Jupyter_for_Windows.md  

- Pythonプログラミング 実習データ  
https://github.com/yu57th/Python_Lecture

- RNA-seq解析入門  
https://github.com/qqep685d/ilas2017/blob/master/Docs/04_RNA-seq_analysis.md  

- なぜ仮想PCを構築するのか？  
https://github.com/qqep685d/ilas2017/blob/master/Docs/XX_Why_use_docker.md
