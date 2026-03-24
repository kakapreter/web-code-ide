# web-code-ide
DOCKER构建WEB-CODE-IDE



root用户执行

```shell
mkdir -p /apps/code-server/workspace

cd /apps/code-server/workspace

# 注意构建时至少8核16G内存
docker build -t code-server-ide .

docker tag code-server-ide:latest code-server-ide:v0.0.1

docker run -d -p 8080:8080 -v /apps/code-server/workspace:/home/coder/project --name code-server-ide code-server-ide:v0.0.1
```

软件版本
```text
e3c5d9629533:/home/coder/project/# java -version 

openjdk version "21.0.10" 2026-01-20 LTS

OpenJDK Runtime Environment Temurin-21.0.10+7 (build 21.0.10+7-LTS)

OpenJDK 64-Bit Server VM Temurin-21.0.10+7 (build 21.0.10+7-LTS, mixed mode, sharing)

e3c5d9629533:/home/coder/project/# python3 -V 

Python 3.11.2
```
推荐插件
```text
Spring Boot Extension Pack

Spring Boot Tools

Spring Boot Dashboard

Spring Initializr Java Support

File Properties Viewer

YAML
```
