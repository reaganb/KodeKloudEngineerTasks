# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

systemctl get-default
# multi-user.target

systemctl enable graphical.target

systemctl start graphical.target

systemctl status graphical.target

systemctl get-default
# graphical.target