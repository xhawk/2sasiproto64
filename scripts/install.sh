#!/bin/bash
#
# Setup the the box. This runs as root
curl -L https://www.opscode.com/chef/install.sh | sudo bash

curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -

apt-get -y install curl
apt-get -y install wget
apt-get install vim -y
apt-get install zip -y

apt-get install nodejs -y
apt-get install build-essential -y
apt-get install python-software-properties -y
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install gcc-4.8
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

apt-get install make

apt-get install openjdk-7-jdk -y

wget https://services.gradle.org/distributions/gradle-2.7-bin.zip -P /etc
unzip /etc/gradle-2.7-bin.zip -d /etc
mv /etc/gradle-2.7 /etc/gradle

echo "/etc/gradle/bin:"$PATH | sudo tee /etc/environment

# You can install anything you need here.
