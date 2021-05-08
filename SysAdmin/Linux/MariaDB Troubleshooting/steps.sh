ssh peter@stdb01

sudo -i

yum install mysql -y

systemctl enable mariadb
systemctl start mariadb
systemctl status mariadb