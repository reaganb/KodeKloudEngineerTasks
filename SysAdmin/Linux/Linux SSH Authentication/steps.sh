ssh-keygen -t rsa

ls ~/.ssh/
# id_rsa  id_rsa.pub

ssh-copy-id tony@stapp01
ssh-copy-id steve@stapp02
ssh-copy-id banner@stapp03

# Perform on all app servers. No password should be prompted.
# ssh tony@stapp01 | ssh steve@stapp02 | ssh banner@stapp03
