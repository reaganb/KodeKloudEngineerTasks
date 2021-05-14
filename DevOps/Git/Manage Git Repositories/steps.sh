ssh max@ststor01

cd /home/max

git clone http://git.stratos.xfusioncorp.com/max/story_beta.git

cp  /usr/dba/* story_beta/

cd story_beta/

git add *

git commit -m "add stories"
git push
# Username for 'http://git.stratos.xfusioncorp.com': max
# Password for 'http://max@git.stratos.xfusioncorp.com': Max_pass123

git checkout -b max_games

cp /tmp/stories/story-index-max.txt .

sed -i 's/Mooose/Mouse/g' story-index-max.txt

git add *

git commit -m "typo fixed for Mooose"

git push origin max_games
# Username for 'http://git.stratos.xfusioncorp.com': max
# Password for 'http://max@git.stratos.xfusioncorp.com': Max_pass123
