# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

groupadd nautilus_developers

id sonya
# id: sonya: no such user

useradd sonya

usermod sonya -aG nautilus_developers

id sonya
# uid=1002(sonya) gid=1003(sonya) groups=1003(sonya),1002(nautilus_developers)

