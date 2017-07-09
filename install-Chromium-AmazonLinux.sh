#!/bin/sh

## Add CentOS6 repository
##  https://medium.com/@davidkadlec/installing-google-chrome-on-amazon-linux-ec2-d1cb6aa37f28

sudo touch /etc/yum.repos.d/centos.repo
sudo echo -e "[CentOS-base]\nname=CentOS-6 - Base\nmirrorlist=http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=os\ngpgcheck=1\ngpgkey=http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-6\n\n" >> /etc/yum.repos.d/centos.repo
sudo echo -e "#released updates\n[CentOS-updates]\nname=CentOS-6 - Updates\nmirrorlist=http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=updates\ngpgcheck=1\ngpgkey=http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-6\n\n" >> /etc/yum.repos.d/centos.repo
sudo echo -e "#additional packages that may be useful\n[CentOS-extras]\nname=CentOS-6 - Extras\nmirrorlist=http://mirrorlist.centos.org/?release=6&arch=x86_64&repo=extras\ngpgcheck=1\ngpgkey=http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-6\n" >> /etc/yum.repos.d/centos.repo

## [optional] Install "Japanese Support" for Firefox

sudo yum -y groupinstall "Japanese Support"

## Install Chromium
##  https://people.centos.org/hughesjr/chromium/6/

sudo wget http://people.centos.org/hughesjr/chromium/6/chromium-el6.repo
sudo mv chromium-el6.repo /etc/yum.repos.d/
sudo yum -y install chromium
chromium-browser --version

