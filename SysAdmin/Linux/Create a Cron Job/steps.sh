# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

yum install cronie -y

systemctl enable crond
systemctl start crond
systemctl status crond

echo "*/5 * * * * echo hello > /tmp/cron_text" >> /etc/crontab

systemctl restart crond
systemctl status crond

ls -l /tmp/cron_text
# -rw-r--r-- 1 root root # Xxx # ##:## /tmp/cron_text

cat /tmp/cron_text
# hello
