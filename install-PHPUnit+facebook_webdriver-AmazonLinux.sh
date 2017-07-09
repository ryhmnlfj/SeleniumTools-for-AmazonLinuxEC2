#!/bin/sh

## Install PHP & composer

sudo yum -y install php-cli
php --version
curl -sS https://getcomposer.org/installer | php
php composer.phar --version

## Install PHPunit & facebook/webdriver
## (require php-xml)

sudo yum -y install php-xml
php composer.phar require phpunit/phpunit
php composer.phar require facebook/webdriver

