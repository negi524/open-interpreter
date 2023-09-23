# open-interpreter
open-interpreterの実行環境

## 準備

### OpenAIのAPIキーを設定

環境変数のファイルをコピーし、`.env`ファイルにAPIキーを設定する

```bash
cp .env.sample .env
```

## 環境構築

### Dockerイメージのビルド

```bash
make build-docker-image
```

### Dockerイメージの削除

```bash
make remove-image
```

### デバッグしつつDockerコンテナの立ち上げ

```bash
make run-debug
```
