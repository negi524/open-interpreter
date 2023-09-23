FROM python:3.11

# 作業ディレクトリを定義する
WORKDIR /workspace

RUN pip install open-interpreter
