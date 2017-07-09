#!/bin/sh

## Add EPLL repository
##  https://lambda-linux.io/

curl -X GET -o RPM-GPG-KEY-lambda-epll https://lambda-linux.io/RPM-GPG-KEY-lambda-epll
sudo rpm --import RPM-GPG-KEY-lambda-epll
curl -X GET -o epll-release-2017.03-1.2.ll1.noarch.rpm https://lambda-linux.io/epll-release-2017.03-1.2.ll1.noarch.rpm
sudo yum -y install epll-release-2017.03-1.2.ll1.noarch.rpm

## Install Firefox (with X11 include Xvfb)
##  https://lambda-linux.io/blog/2015/01/28/announcing-firefox-browser-support-for-amazon-linux/
##  https://github.com/SeleniumHQ/selenium/wiki/FirefoxDriver
##  https://support.mozilla.org/ja/kb/install-older-version-of-firefox

sudo yum -y --enablerepo=epll install firefox-compat
wget -O firefox-45.9.0esr-ja.tar.bz2 "https://download.mozilla.org/?product=firefox-45.9.0esr-SSL&os=linux64&lang=ja"
bzcat firefox-45.9.0esr-ja.tar.bz2 | tar xvf -
sudo mv firefox /usr/local/bin/firefox-45.9.0esr-ja
sudo ln -s /usr/local/bin/firefox-45.9.0esr-ja/firefox /usr/local/bin/firefox

