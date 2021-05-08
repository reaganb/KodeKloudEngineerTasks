ssh natasha@ststor01

sudo -i

systemctl enable nfs-server
chkconfig nfs-server on
systemctl start nfs-server
systemctl status nfs-server

systemctl enable rpcbind
chkconfig rpcbind on
systemctl start rpcbind
systemctl status rpcbind

cat > /etc/exports << EOF
/code 172.16.238.10(rw,sync,no_root_squash)
/code 172.16.238.11(rw,sync,no_root_squash)
/code 172.16.238.12(rw,sync,no_root_squash)
EOF

exportfs -a
showmount -e ststor01
# Export list for ststor01:
# /data 172.16.238.13
# /code 172.16.238.12,172.16.238.11,172.16.238.10

ls /code
# index

exit ; exit

# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

systemctl enable nfs-server
chkconfig nfs-server on
systemctl start nfs-server
systemctl status nfs-server

systemctl enable rpcbind
chkconfig rpcbind on
systemctl start rpcbind
systemctl status rpcbind

mount -t nfs ststor01:/code /var/www/html
mount | grep nfs
# sunrpc on /var/lib/nfs/rpc_pipefs type rpc_pipefs (rw,relatime)
# nfsd on /proc/fs/nfsd type nfsd (rw,relatime)
# ststor01:/code on /var/www/html type nfs (rw,relatime,vers=3,rsize=524288,wsize=524288,namlen=255,hard,proto=tcp,timeo=600,retrans=2,sec=sys,mountaddr=172.16.238.15,mountvers=3,mountport=20048,mountproto=udp,local_lock=none,addr=172.16.238.15)
ls /var/www/html/
# index




