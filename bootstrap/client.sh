#!/bin/sh

# HACK: Manual IP of the vagrant host. Change to your host
echo "137.222.34.141 puppet" >> /etc/hosts

yum install -y vim
systemctl stop firewalld
