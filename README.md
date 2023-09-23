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
make build
```

### Dockerイメージの削除

```bash
make remove-image
```

### デバッグしつつDockerコンテナの立ち上げ

```bash
make debug
```

## Open Interpreter実行

https://github.com/KillianLucas/open-interpreter/#commands

```bash
interpreter --fast
```
