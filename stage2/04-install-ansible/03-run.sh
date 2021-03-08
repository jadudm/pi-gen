#!/bin/bash -e

on_chroot << EOF
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee -a /etc/apt/sources.list
apt install dirmngr -y
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update
apt install -y ansible
EOF
