#!/bin/bash

## This is another way to create a SSL Certification for Nginx and Apache web-servers
## This checks to see if you are the root user. If not, it tells you to try again as the root user.

checkRoot(){
   if "[ $(id -u) -ne 0 ]"; then
     printf "Script must be run as root"
     exit 1
   fi
}

##  This section will check the existence of files with -P, then &> creates a new file for the standard output or error. Next section takes Yes in many formats
checkpackages(){
   lst='dialog openssl'
   for items in $lst
   do
    type -P "$items" &>/dev/null || {
       echo -en "\n Package \"$items\" is not installed!"
       echo -en "\n Install now? [yes]/[no]: "
       read -r ops
       case $ops in
           YES|yes|Y|y) sudo apt-get install "$items" ;;
           	     *)  echo -e "\n Exiting..."
               		 exit 1 ;;
       esac
    }
   done
}

checkRoot
checkNeededPackages

while true; do
    cmd=(dialog --title "Create SSL Certificate for NGinX/Apache" \
                --menu "You MUST set the server URL (e.g., myaddress.dyndns.org) before starting create certificate. Choose task:" 20 60 15)
    options=(1 "Set server URL ($__servername)"
             2 "Generate new SSL certificate for NGiNX"
             3 "Generate new SSL certificate for Apache"
             4 "Exit")
    choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    if [ "$choice" != "" ]; then
        case $choice in
            1) setServerName ;;
            2) checkServerName
               installCertificateNginx ;;
            3) checkServerName
               installCertificateApache ;;
            4) clear
               exit 0 ;;
        esac
    else
        break
    fi
done
clear

exit 0
