ssh tony@stapp01

sudo -i

yum update -y

yum install policycoreutils policycoreutils-python selinux-policy selinux-policy-targeted libselinux-utils setroubleshoot-server setools setools-console mcstrans -y

sestatus
# SELinux status:                 disabled

sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config