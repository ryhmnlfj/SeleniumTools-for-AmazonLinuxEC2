#!/bin/sh

## Install Java8 & Selenium Server Standalone 3.4.0(latest version)
##  http://selenium-release.storage.googleapis.com/index.html

sudo yum -y install java-1.8.0-openjdk
sudo alternatives --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java
java -version
wget http://selenium-release.storage.googleapis.com/3.4/selenium-server-standalone-3.4.0.jar
chown ec2-user:ec2-user selenium-server-standalone-3.4.0.jar

## Install geckodriver
##  https://github.com/mozilla/geckodriver/releases

wget https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz
tar zxvf geckodriver-v0.17.0-linux64.tar.gz
chown ec2-user:ec2-user geckodriver
sudo mv geckodriver /usr/local/bin/

## Install Chrome driver
##  https://sites.google.com/a/chromium.org/chromedriver/downloads
##  https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver
## ChromeDriver v2.9 supports Chrome v31-34 (include Chromium 31.0)
##  http://chromedriver.storage.googleapis.com/2.11/notes.txt

sudo ln -s /usr/bin/chromium-browser /usr/bin/google-chrome
wget -O chromedriver_2.9_linux64.zip https://chromedriver.storage.googleapis.com/2.9/chromedriver_linux64.zip
unzip chromedriver_2.9_linux64.zip
chown ec2-user:ec2-user chromedriver
sudo mv chromedriver /usr/local/bin/

