# Dockerイメージのタグバージョン
DOCKER_TAG_VERSION = 1.0

# Dockerイメージのビルド
build-docker-image: Dockerfile
	docker build -t open-interpreter:$(DOCKER_TAG_VERSION) .

# Dockerイメージを削除する
remove-image:
	docker image rm open-interpreter:$(DOCKER_TAG_VERSION)

# Dockerコンテナを起動しつつbashでコンテナ内に入る
run-debug:
	docker container run -it --rm --name "open-interpreter-container" open-interpreter:$(DOCKER_TAG_VERSION) /bin/bash
