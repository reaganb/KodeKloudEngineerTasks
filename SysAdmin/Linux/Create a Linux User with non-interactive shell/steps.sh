ssh banner@stapp03

sudo -i

useradd -s /bin/false anita

cat /etc/passwd | grep anita
# anita:x:1002:1002::/home/anita:/bin/false