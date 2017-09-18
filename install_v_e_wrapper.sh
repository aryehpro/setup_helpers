#! /bin/bash

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

# Install PIP
if [ ! -f /usr/local/bin/pip ]; then
    wget -O /tmp/get-pip.py "https://bootstrap.pypa.io/get-pip.py"
    python3 /tmp/get-pip.py
fi

# Install virtualenv
if [ -f /usr/local/bin/pip ] && [ ! -f /usr/local/bin/virtualenv ]; then
    pip install virtualenv
fi

# Install virtualenvwrapper
if [ -f /usr/local/bin/pip ] && [ ! -f /usr/local/bin/virtualenvwrapper.sh ]; then
    pip install virtualenvwrapper
fi

# Add to shell startup file
echo "" >> ~/.bashrc
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# Update shell
source ~/.bashrc
