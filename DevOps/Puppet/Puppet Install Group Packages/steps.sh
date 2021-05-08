puppet module install puppet-yum

vi /etc/puppetlabs/code/environments/production/manifests/apps.pp

puppet parser validate /etc/puppetlabs/code/environments/production/manifests/apps.pp

# Perform on all app servers
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03

sudo -i

puppet agent -tv
