ssh clint@stbkp01

sudo -i

sed -i 's/About/Software/g' /root/nautilus.xml

cat /root/nautilus.xml  | grep About | wc -l
# 0

cat /root/nautilus.xml  | grep Software | wc -l
# 88

