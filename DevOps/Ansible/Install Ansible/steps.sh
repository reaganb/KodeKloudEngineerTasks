# Ansible Installation on Centos 7
# Reference: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-rhel-centos-or-fedora

sudo -i

yum install python3 python3-pip -y

python3 -m pip install pip --upgrade

exit

ansible --version
# ansible 2.6.10
#   config file = None
#   configured module search path = ['/home/thor/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
#   ansible python module location = /usr/local/lib/python3.6/site-packages/ansible
#   executable location = /usr/local/bin/ansible
#   python version = 3.6.8 (default, Nov 16 2020, 16:55:22) [GCC 4.8.5 20150623 (Red Hat 4.8.5-44)]

