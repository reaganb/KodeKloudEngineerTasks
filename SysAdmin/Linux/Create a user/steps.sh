ssh banner@stapp03

sudo -i

mkdir /var/www/jim

useradd --uid 1718 --home-dir /var/www/jim --create-home jim

id jim
# uid=1718(jim) gid=1718(jim) groups=1718(jim)

ls -l /var/www
# total 4
# drwx------ 2 jim jim 4096 XXX ## ##:## jim

cat /etc/passwd | grep jim
# jim:x:1718:1718::/var/www/jim:/bin/bash


