
vim /etc/puppetlabs/code/environments/production/manifests/demo.pp

pupper parser validate /etc/puppetlabs/code/environments/production/manifests/demo.pp

ssh steve@stapp02

sudo puppet agent -tv

ls -l /opt/sysops/ecommerce.txt

cat /opt/sysops/ecommerce.txt

