ssh clint@stbkp01

sudo -i

firewall-cmd --permanent --zone=public --add-port=3004/tcp
# success

firewall-cmd --reload
# success

systemctl restart firewalld

firewall-cmd --zone=public --list-all
