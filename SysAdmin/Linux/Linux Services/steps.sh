# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

yum install -y nscd

systemctl enable nscd
systemctl start nscd
systemctl status nscd
