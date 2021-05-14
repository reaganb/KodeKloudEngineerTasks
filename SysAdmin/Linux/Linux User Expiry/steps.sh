ssh tony@stapp01

sudo -i

useradd ravi -e 2021-04-15

id ravi
# uid=1002(ravi) gid=1002(ravi) groups=1002(ravi)

cat /etc/passwd | grep ravi
# ravi:x:1002:1002::/home/ravi:/bin/bash

chage -l ravi
# Last password change                                    : XXX ##, 2021
# Password expires                                        : never
# Password inactive                                       : never
# Account expires                                         : Apr 15, 2021
# Minimum number of days between password change          : 0
# Maximum number of days between password change          : 99999
# Number of days of warning before password expires       : 7
