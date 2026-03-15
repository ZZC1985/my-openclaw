FROM ubuntu:22.04-slim
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt update && apt install -y curl wget unzip && \
    rm -rf /var/lib/apt/lists/*
RUN curl -L https://mirror.aliyun.com/clawhub/install.sh | sh
WORKDIR /app
COPY openclaw.json /app/
EXPOSE 10000
RUN mkdir -p /root/.openclaw
