# web-code-ide
DOCKER构建WEB-CODE-IDE



root用户执行

command
-------------------------------------
mkdir -p /apps/code-server/workspace

cd /apps/code-server/workspace

docker build -t code-server-ide .

docker tag code-server-ide:latest code-server-ide:v0.0.1

docker run -d -p 8080:8080 -v /apps/code-server/workspace:/home/coder/project --name code-server-ide code-server-ide:v0.0.1
