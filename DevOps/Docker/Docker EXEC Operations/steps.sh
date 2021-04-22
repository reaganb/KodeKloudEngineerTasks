ssh banner@stapp03

sudo -i

docker exec kkloud sh -c "export DEBIAN_FRONTEND=noninteractive && apt-get install apache2 -y"

docker exec kkloud sh -c "sed -i 's/80/8085/g' /etc/apache2/ports.conf"

docker exec kkloud sh -c "apachectl -k start"

docker stop kkloud && docker start kkloud

docker exec kkloud sh -c "cat /etc/apache2/ports.conf | grep -i Listen"

docker exec kkloud sh -c "cat /etc/hosts"
#   127.0.0.1       localhost
#   ::1     localhost ip6-localhost ip6-loopback
#   fe00::0 ip6-localnet
#   ff00::0 ip6-mcastprefix
#   ff02::1 ip6-allnodes
#   ff02::2 ip6-allrouters
#   172.17.0.2      7eb7ae46cf61

curl 172.17.0.2:8085


