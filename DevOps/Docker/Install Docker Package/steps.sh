ssh steve@stapp02

sudo -i

# Install Docker on CentOS 7: https://docs.docker.com/engine/install/centos/

yum remove docker \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-engine

yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo -y

yum install docker-ce docker-ce-cli containerd.io -y

systemctl enable docker
systemctl start docker
systemctl status docker

docker -v
# Docker version 20.10.6, build 370c289


# Install docker-compose on CentOS 7: https://docs.docker.com/compose/install/

curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose -v
# docker-compose version 1.29.1, build c34c88b2
