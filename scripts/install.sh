#!/bin/bash
#
# Setup the the box. This runs as root

curl -sL https://deb.nodesource.com/setup | sudo bash -

apt-get -y install curl
apt-get -y install wget
apt-get install vim -y
apt-get install zip -y

apt-get install nodejs
sudo apt-get install build-essential

apt-get install openjdk-7-jdk -y

wget https://services.gradle.org/distributions/gradle-2.7-bin.zip -P /etc
unzip /etc/gradle-2.7-bin.zip -d /etc
mv /etc/gradle-2.7 /etc/gradle

echo "/etc/gradle/bin:" + $PATH | sudo tee /etc/environment

# You can install anything you need here.
