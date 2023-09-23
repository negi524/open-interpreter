# Dockerイメージのタグバージョン
DOCKER_TAG_VERSION = 1.0
DOCKER_IMAGE_NAME = open-interpreter
DOCKER_CONTAINER_NAME = open-interpreter-container

# Dockerイメージのビルド
build: Dockerfile
	docker build -t $(DOCKER_IMAGE_NAME):$(DOCKER_TAG_VERSION) .

# Dockerイメージを削除する
remove-image:
	docker image rm $(DOCKER_IMAGE_NAME):$(DOCKER_TAG_VERSION)

# Dockerコンテナを起動しつつbashでコンテナ内に入る
debug: .env
	docker container run -it --rm --name $(DOCKER_CONTAINER_NAME) --env-file ./.env $(DOCKER_IMAGE_NAME):$(DOCKER_TAG_VERSION) /bin/bash
