#!/bin/bash
##Instructions: This script will set up the environment with tools I like and things you will need to run my Docker practice. 
##Acme will auto generate a SSL for a website if needed. To Do For Me -- Learn more on how to apply those to websites. 
## If running on EC2 it is recommended to reboot the EC2 instance 
##This line will need to be run in order to get the cert
## acme.sh --issue -d "$domain" -w /home/wwwroot/"$domain" --force

sudo yum update -y

sudo yum install vim -y

sudo yum install docker -y

yum install socat -y

curl https://get.acme.sh | sh

sudo service docker start

sudo usermod -a -G docker ec2-user







