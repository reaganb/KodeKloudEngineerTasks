ssh clint@stbkp01

sudo -i

iptables -A INPUT -p tcp --dport 8097 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -p tcp --dport 5002 -m conntrack --ctstate NEW -j REJECT

iptables-save > /etc/sysconfig/iptables

systemctl restart iptables
systemctl status iptables
