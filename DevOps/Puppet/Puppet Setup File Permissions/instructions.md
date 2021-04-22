The Nautilus DevOps team has put data on all app servers in Stratos DC. jump host is configured as Puppet master server, and all app servers are already been configured as Puppet agent nodes. The team needs to update content of some of the exiting files as well as update its permissions, etc. Please find below more details about the task:

1. Create a Puppet programming file demo.pp under /etc/puppetlabs/code/environments/production/manifests directory on master node i.e Jump Server. Using puppet file resource, perform the below mentioned tasks.
 
2. File ecommerce.txt already exists under /opt/sysops directory on App Server 2.
 
3. Add content Welcome to xFusionCorp Industries! in file ecommerce.txt on App Server 2.
 
4. Set permissions 0777 for file ecommerce.txt on App Server 2.

Note: Please perform this task using demo.pp only, do not create any separate inventory file.