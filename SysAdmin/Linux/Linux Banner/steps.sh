
scp /tmp/nautilus_banner tony@stapp01
scp /tmp/nautilus_banner steve@stapp02
scp /tmp/nautilus_banner banner@stapp03

ssh peter@sp!dy

sudo yum install openssh-clients

exit
scp /tmp/nautilus_banner banner@stapp03

cp /tmp/nautilus_banner /etc/motd

# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03
