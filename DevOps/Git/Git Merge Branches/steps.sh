ssh natasha@ststor01

sudo -i

cd /usr/src/kodekloudrepos/news/

git checkout -b xfusion

cp /tmp/index.html .

git add index.html

git commit -m "added /tmp/index.html"

git checkout master

git merge xfusion

git push origin xfusion
git push origin master

