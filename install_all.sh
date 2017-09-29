#! /bin/bash

read -p "enter desired pycharm version" pycharm_version
read -p "enter email address" email

sudo ./install_chrome.sh
sudo ./install_pycharm.sh $pycharm_version

./install_knesset_dpp_deps.sh

./generate_ssh.sh $email
