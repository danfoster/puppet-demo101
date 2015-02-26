#!/bin/sh

#myip=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`
#myhostname=`hostname -s`
#echo "$myip $myhostname" >> /etc/hosts

# HACK: Manual IP of the vagrant host. Change to your host
echo "137.222.34.141 puppet" >> /etc/hosts

yum install -y vim
systemctl stop firewalld

yum install -y puppet-server
systemctl start puppetmaster

echo 'export PATH=$PATH:/vagrant/bin' >> /root/.bashrc
cp -f /vagrant/etc/puppet.conf /etc/puppet/
