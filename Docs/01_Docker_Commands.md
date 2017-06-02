# Dockerコマンド
## Dockerイメージの探す・取得・確認・削除
- Dockerhubにあるイメージを探す（`docker search`）  
例：`docker search ilas2017`  

- Dockerhubからイメージを取得する（`docker pull`）  
例：`docker pull qqep685d/ilas2017`

- パソコン内にあるDockerfileからイメージを取得する（`docker build`）  
例：Dockerfileがあるディレクトリで、`docker build -t ilas2017 .`

- 取得したイメージを確認する（`docker images`）

- イメージを削除する（`docker rmi [イメージID]`）

## Dockerコンテナを起動・ログイン・ログアウト・確認・削除
- コンテナを起動＆ログインする（`docker run`）  
例：`docker run -i -t qqep685d/ilas2017 /bin/bash`  
例：`docker run --rm -v /[自身のパソコンの任意のディレクトリ]/:/root/data/  -i -t qqep685d/ilas2017 /bin/bash`  
（--rmオプションで、ログアウト時に作業履歴を削除する）  
（-vオプションで、自身のパソコンの任意ディレクトリとDockerの/root/data/ディレクトリを接続する; データのやりとりが可能になる）

- コンテナを確認する（`docker ps -a`）

- 停止中のコンテナを再開させる（`docker start [コンテナID]`）

- 起動中のコンテナにログインする（`docker attach [コンテナID]`）

- 起動中のコンテナを停止させる（`docker stop [コンテナID]`）

- コンテナを削除する（`docker rm [コンテナID]`）

## Dockerコンテナについて注意点
- `docker run`で起動されるコンテナは、毎回異なるIDが付与される。

- コンテナ内の作業はコンテナIDに紐付けされており、その作業はコンテナからログアウト後も一時保存された状態で残される。`docker ps -a`でコンテナの履歴を確認できる。

- 履歴にあるコンテナ内に再度ログインするためには、`docker start [コンテナID]`（コンテナを起動）と`docker attach [コンテナID]`（コンテナにログイン）が必要。

- 不要になったコンテナの履歴は、`docker rm [コンテナID]`で削除が可能。
