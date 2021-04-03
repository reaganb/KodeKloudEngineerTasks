ssh tony@stapp01

# At App Server 1
sudo docker images

sudo docker image save media:datacenter -o media_datacenter.image

scp media_datacenter.image banner@stapp03:/home/banner/

ssh banner@stapp03

# At App Server 3
sudo systemctl enable docker && sudo systemctl start docker

sudo docker image load -i media_datacenter.image

sudo docker images
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# media                datacenter         xxxxxxxxxxxx        19 minutes ago      100MB

