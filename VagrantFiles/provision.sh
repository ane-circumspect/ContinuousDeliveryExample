#!usr/bin/bash



echo "Installing Apache and setting it up..."
apt-get update >/dev/null 2>&1
apt-get install -y apache2 >/dev/null 2>&1
rm -rf /var/www
ln -fs /vagrant /var/www

echo "Installing vim editor"
apt-get install -y vim 

echo "Installing wget"
apt-get -y wget
