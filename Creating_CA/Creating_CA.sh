#!/bin/bash

## To Use this Script - Move to the box where the certs will arrive. Chmod to executable, and run. This will ask for your root password. If you have an admin change the sudo to sudo su admin. 


sudo su root

yum install sudo -y

yum install update -y

yum install vim -y

yum install which -y

echo -e "Installed my favorite tools"

echo -e "Installing Openssh Server and Clients"

yum install openssh-server openssh clients

echo -e "No idea what is happening but we are busy doing something"

sed 's@session\s*required\s*pan_login.so@session optional pam_login.so@g' -i /etc/pam.d/sshd

echo -e "Setting up Host Key for RSA1"

ssh-keygen -q -f /etc/ssh/ssh_host_key -N '' -t rsa1

echo -e "Setting up Host key for RSA"

ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa

echo -e "Setting up Host Key for DSA"

ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

echo -e "Setting up Host Key for ECDSA"

ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa -b 521

echo -e "Setting up local RSA for Root User"

ssh-keygen -f /root/.ssh/id_rsa -t rsa
