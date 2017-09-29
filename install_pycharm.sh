version=$1  # get version from argument

# We need sudo to do some stuff
if [[ $EUID -ne 0 ]]; then
   echo "Please run as root."
   exit 1
fi

echo "=================================================================="
echo "===================== Installing Pycharm ========================="
echo "=================================================================="

# Download Pycharm
if [ ! -f /tmp/pycharm.tar.gz ]; then
    wget -O /tmp/pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-professional-$version.tar.gz"
fi

#create JetBrains dir
if [ ! -d /opt/JetBrains ]; then
    mkdir /opt/JetBrains
fi

# Decompress Pycharm
tar -xzf /tmp/pycharm.tar.gz --directory /opt/JetBrains

# Get rid of existing symlink that points to now-obsolete version
if [ -f /usr/bin/pycharm ]; then
    rm /usr/bin/pycharm
fi

# Create a symlink. Now you can run pycharm on the command line and
# on the first run, it will create a start menu shortcut and such
ln -s "/opt/JetBrains/pycharm-$version/bin/pycharm.sh" /usr/bin/pycharm

echo "=================================================================="
echo "================= Finished installing Pycharm ===================="
echo "=================================================================="
