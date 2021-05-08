ssh banner@stapp03

sudo -i

cd /opt/docker

vi docker-compose.yml

docker-compose up -d

# Verify

docker-compose logs -f web_service

ls /opt/dba
# index1.html

docker-compose exec web_service sh
ls /usr/local/apache2/htdocs
# index1.html
exit

curl localhost:8086
# <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
# <html>
#  <head>
#   <title>Index of /</title>
#  </head>
#  <body>
# <h1>Index of /</h1>
# <ul><li><a href="index1.html"> index1.html</a></li>
# </ul>
# </body></html>

