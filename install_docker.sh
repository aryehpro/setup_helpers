# We need sudo to do some stuff
if [ "${EUID}" != "0" ]; then
   echo "Please run as root."
   exit 1
fi

# Get release name
release_name=`lsb_release -cs`

echo "=================================================================="
echo "===================== Installing Docker =========================="
echo "=================================================================="

# Set up the repository
apt update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $release_name stable"

# Install docker CE
apt update
apt install -y docker-ce

echo "=================================================================="
echo "================= Finished installing Docker ====================="
echo "=================================================================="
