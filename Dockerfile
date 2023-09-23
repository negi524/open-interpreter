FROM python:3.11

# 作業ディレクトリを定義する
WORKDIR /workspace

ENV OPENAI_API_KEY=hoge

RUN pip install open-interpreter
