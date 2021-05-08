# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup

sed -i 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

systemctl restart sshd
systemctl status sshd

