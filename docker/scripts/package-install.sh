#!/bin/sh

set -e

sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://jp.archive.ubuntu.com/ubuntu/%g" /etc/apt/sources.list
sed -i.bak -e "s%http://security.ubuntu.com/ubuntu/%http://jp.archive.ubuntu.com/ubuntu/%g" /etc/apt/sources.list

apt-get update && apt-get upgrade -y

apt-get install -y \
  imagemagick \
  sudo \
  net-tools \
  iputils-ping \
  curl \
  git \
  nano \
  unzip \
  apache2 \
  php \
  php-mysql \
  libapache2-mod-php \
  php-xml \
  php-mbstring \
  php-apcu \
  php-intl \
  inkscape \
  php-gd \
  php-cli \
  php-curl \
  php-bcmath

sudo apt-get install apache2 mariadb-server php php-mysql libapache2-mod-php php-xml php-mbstring

apt-get clean

# stop apache

apache2ctl stop