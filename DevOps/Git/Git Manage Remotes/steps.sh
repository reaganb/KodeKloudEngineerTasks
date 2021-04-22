ssh natasha@ststor01

sudo -i

cd /usr/src/kodekloudrepos/official

git remote -v

git remote add dev_official /opt/xfusioncorp_official.git

git remote -v

cp /tmp/index.html .

git add index.html

git commit -m "add index.html to dev_official"

git push dev_official master




