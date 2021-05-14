ssh steve@stapp02

sudo -i

docker pull nginx:alpine

docker run -d --name blog -p 5004:80 nginx:alpine

docker ps
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
# XXXXXXXXXXXX        nginx:alpine        "/docker-entrypoint.…"   8 seconds ago       Up 7 seconds        0.0.0.0:5004->80/tcp   blog

curl localhost:5004
# <!DOCTYPE html>
# <html>
# <head>
# <title>Welcome to nginx!</title>
# <style>
#     body {
#         width: 35em;
#         margin: 0 auto;
#         font-family: Tahoma, Verdana, Arial, sans-serif;
#     }
# </style>
# </head>
# <body>
# <h1>Welcome to nginx!</h1>
# <p>If you see this page, the nginx web server is successfully installed and
# working. Further configuration is required.</p>
#
# <p>For online documentation and support please refer to
# <a href="http://nginx.org/">nginx.org</a>.<br/>
# Commercial support is available at
# <a href="http://nginx.com/">nginx.com</a>.</p>
#
# <p><em>Thank you for using nginx.</em></p>
# </body>
# </html>