ssh loki@stlb01

sudo -i

haproxy -c -f /etc/haproxy/haproxy.cfg
# [ALERT] 132/053627 (108) : parsing [/etc/haproxy/haproxy.cfg:57] : 'timeout' supports 'client', 'server', 'connect', 'check', 'queue', 'http-keep-alive', 'http-request', 'tunnel', 'tarpit', 'client-fin' and 'server-fin' (got 'checking')
# [ALERT] 132/053627 (108) : Error(s) found in configuration file : /etc/haproxy/haproxy.cfg
# [ALERT] 132/053627 (108) : Fatal errors found in configuration.

sed -i 's/timeout checking/timeout check/g' /etc/haproxy/haproxy.cfg

cat /etc/haproxy/haproxy.cfg | grep 'timeout check'
# timeout check           10s

haproxy -c -f /etc/haproxy/haproxy.cfg
# Configuration file is valid

systemctl enable haproxy
systemctl restart haproxy
systemctl status haproxy

