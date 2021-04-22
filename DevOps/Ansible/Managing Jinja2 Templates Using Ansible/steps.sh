cd ~/ansible/

sed -i 's/hosts: /hosts: stapp01/g' playbook.yml

echo "This file was created using Ansible on {{ inventory_hostname }}" > role/httpd/templates/index.html.j2

vi role/httpd/tasks/main.yml

ansible-playbook -i inventory playbook.yml

ansible stapp01 -i inventory -a "ls -l /var/www/html/index.html"
# stapp01 | CHANGED | rc=0 >>
# -rwxr--r-- 1 tony tony 47 Apr 22 06:16 /var/www/html/index.html

ansible stapp01 -i inventory -a "cat /var/www/html/index.html"
# stapp01 | CHANGED | rc=0 >>
# This file was created using Ansible on stapp01


# ls -R
# .:
#   inventory  playbook.yml  role
#
# ./role:
#   httpd
#
# ./role/httpd:
#   defaults  files  handlers  meta  README.md  tasks  templates  tests  vars
#
# ./role/httpd/defaults:
#   main.yml
#
# ./role/httpd/files:
#
# ./role/httpd/handlers:
#   main.yml
#
# ./role/httpd/meta:
#   main.yml
#
# ./role/httpd/tasks:
#   main.yml
#
# ./role/httpd/templates:
#   index.html.j2
#
# ./role/httpd/tests:
#   inventory  test.yml
#
# ./role/httpd/vars:
#   main.yml

