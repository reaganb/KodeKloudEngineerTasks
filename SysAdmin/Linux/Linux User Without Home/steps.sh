ssh banner@stapp03

sudo -i

useradd --no-create-home kareem

cat /etc/passwd | grep kareem
# kareem:x:1002:1002::/home/kareem:/bin/bash

ls /home/kareem
# ls: cannot access /home/kareem: No such file or directory
