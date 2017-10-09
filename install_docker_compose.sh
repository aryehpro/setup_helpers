#! /bin/bash
function version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1"; }

# We need sudo to do some stuff
if [ "${EUID}" != "0" ]; then
   echo "Please run as root."
   exit 1
fi

echo "=================================================================="
echo "================= Installing Docker-compose ======================"
echo "=================================================================="

# Install docker-compose
apt install -y docker-compose
version=`docker-compose version --short`


# Check version
min_version=1.13.0
if version_gt $min_version $version; then
    curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    echo `docker-compose --version`
fi

echo "=================================================================="
echo "============= Finished installing Docker-compose ================="
echo "=================================================================="
