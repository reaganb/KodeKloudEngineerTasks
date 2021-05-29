xFusionCorp Industries has hosted several static websites on Nautilus Application Servers in Stratos DC. There are some confidential directories on document root that need to be password protected. Because they are using Apache for hosting the websites, the production support team has decided to use .htaccess with basic auth. There is a website that needs to be uploaded to /var/www/html/itadmin on Nautilus App Server 3. However, we need to set up the authentication before that.


Create /var/www/html/itadmin direcotry if doesn't exist.

Add a user kareem in htpasswd and set its password to ksH85UJjhb.

There is a file /tmp/index.html placed on Jump Server. Copy the same to new directory you created, please make sure default document root should remain /var/www/html. Also website should work on URL http://<app-server-hostname>:<port>/itadmin
