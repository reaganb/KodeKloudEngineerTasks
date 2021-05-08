sed -i 's/#remote_user = root/remote_user = kareem/g' /etc/ansible/ansible.cfg

cat /etc/ansible/ansible.cfg | grep kareem
# remote_user = kareem