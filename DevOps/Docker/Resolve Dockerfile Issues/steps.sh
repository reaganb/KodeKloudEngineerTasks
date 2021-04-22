ssh banner@stapp03

sudo -i

cd /opt/docker

docker build .

sed -i 's/IMAGE/FROM/g' Dockerfile

sed -i 's/ADD/RUN/g' Dockerfile

docker build .

