# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

# Download Pycharm
if [ ! -f /tmp/chrome.deb ]; then
    wget -O /tmp/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
fi

# Install chrome
dpkg -i /tmp/chrome.deb
sudo apt install -f
dpkg -i /tmp/chrome.deb
