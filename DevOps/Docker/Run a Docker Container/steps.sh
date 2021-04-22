ssh steve@stapp02

sudo -i

docker run -d --name nginx_2 nginx:alpine

docker ps -n 1
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
# xxxxxxxxxxxx        nginx:alpine        "/docker-entrypoint.…"   ## seconds ago      Up ## seconds       80/tcp              nginx_2