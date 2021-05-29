ssh steve@stapp02

sudo -i

systemct start httpd

curl -I localhost:8080/media
# HTTP/1.1 301 Moved Permanently
# Date: XXX, ## XXX #### ##:##:## GMT
# Server: Apache/2.4.6 (CentOS) PHP/7.2.26 # << Expose Version! Warning!
# Location: http://localhost:8080/media/
# Content-Type: text/html; charset=iso-8859-1

systemct stop httpd


cat << EOF >> /etc/httpd/conf/httpd.conf
ServerTokens Prod
ServerSignature Off
EOF

sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/g" /etc/httpd/conf/httpd.conf

systemctl restart httpd
systemctl status httpd

curl -I localhost:8080/media
# HTTP/1.1 301 Moved Permanently
# Date: XXX, ## XXX #### ##:##:## GMT
# Server: Apache
# Location: http://localhost:8080/media/
# Content-Type: text/html; charset=iso-8859-1
