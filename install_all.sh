#! /bin/bash

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

read -p "enter desired pycharm version" pycharm_version
read -p "enter email address" email

./install_chrome.sh
./install_pycharm.sh $pycharm_version

./install_knesset_dpp_deps.sh

./generate_ssh.sh $email
