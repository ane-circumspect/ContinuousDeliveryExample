#!/bin/bash
##Instructions: This script will set up the environment with tools I like and things you will need to run my Docker practice. 
##Acme will auto generate a SSL for a website if needed. To Do For Me -- Learn more on how to apply those to websites. 
## If running on EC2 it is recommended to reboot the EC2 instance 
##This line will need to be run in order to get the cert
## acme.sh --issue -d "$domain" -w /home/wwwroot/"$domain" --force

sudo yum update -y

sudo yum install vim -y

yum groupinstall "Development Tools" -y

sudo apt install build-essential checkinstall zlib1g-dev -y

sudo yum install docker -y

yum install socat -y

yum install git -y

git config --global user.name "ane-circumspect"

git config --global user.email "ane-circumspect@hotmail.com"

git init

curl https://get.acme.sh | sh

sudo service docker start

sudo usermod -a -G docker ec2-user

git config --global --list


wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz

tar xzfv Python-3.8.5.tgz

cd Python-3.8.5

./configure

make

make test

sudo make install 

cd ..
install python3-pip

sudo easy_install pip==9.0.3

pip install --upgrade pip

pip install --user ansible




