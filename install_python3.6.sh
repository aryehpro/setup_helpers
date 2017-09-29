#! /bin/bash

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

echo "=================================================================="
echo "=================== Installing Python 3.6 ========================"
echo "=================================================================="

# Install python 3.6
if [ ! -f /usr/bin/python3.6 ]; then
    apt install python3.6
fi

# Install python-dev package for python3 default
version=`python3 -V | grep -o [0-9].[0-9]`
if [ ! -f /user/include/python$version/Python.h ]; then
    apt install python$version-dev
fi

# Install python-dev package for python3.6
if [ ! -f /usr/include/python3.6/Python.h ]; then
    apt install python3.6-dev
fi

echo "=================================================================="
echo "=============== Finished installing Python 3.6 ==================="
echo "=================================================================="
