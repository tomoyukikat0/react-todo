FROM node:16.8.0
RUN mkdir /myapp

WORKDIR /myapp
COPY ["package.json", "yarn.lock", "./"]
# パッケージをインストール
RUN yarn install
# ファイルを全部作業用ディレクトリにコピー
COPY . .
# コンテナを起動する際に実行されるコマンド
ENTRYPOINT [ "yarn", "start" ]
