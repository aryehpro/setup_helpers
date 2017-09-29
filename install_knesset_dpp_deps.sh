#! /bin/bash

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

./install_docker.sh
./install_docker_compose.sh
./install_python3.6.sh
./install_v_e_wrapper.sh
