ssh banner@stapp03

sudo -i

mkdir -p /var/www/html/itadmin

mkdir -p /etc/httpd/kareem

htpasswd -c /etc/httpd/kareem/.htpasswd kareem
# New password: ksH85UJjhb
# Re-type new password: ksH85UJjhb

systemctl restart httpd

echo "AuthType Basic
AuthName \"Password Required\"
Require valid-user
AuthUserFile /etc/httpd/kareem/.htpasswd" > /var/www/html/itadmin/.htaccess

exit
exit

#  At jump host
scp /tmp/index.html banner@stapp03:/tmp


ssh banner@stapp03
sudo -i
cp /tmp/index.html /var/www/html/itadmin/

curl -u "kareem:ksH85UJjhb" http://localhost:8080/itadmin/index.html
# This is xFusionCorp Industries Protected Directory!





