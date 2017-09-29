# Basic Environment Setup Helper Scripts

**note** All scripts assume they are running on a fresh install of ubuntu (tested for 17.04), and that all paths are default.
**note 2** All scripts should be run with sudo

## Available scripts:
- **install_chrome.sh** - installs the latest stable version of google chrome browser

- **install_pycharm.sh** - installs pycharm IDE. the version to be installed is passed as a command line argument (i.e. `./install_pycharm.sh 2017.2.3`)

- **install_docker.sh** - installs docker CE

- **install_docker_compose.sh** - installs docker compose version 1.16.1 (the version number is hard coded in the script, but you can edit this)

- **install_python3.6.sh** - installs python3.6

- **install_v_e_wrapper.sh** - installs virtualenvwrapper

- **generate_ssh.sh** - generates an ssh key to be used with github and puts it in the clipboard. your email address should be passed as a command line argument (i.e. `./generate_ssh.sh foo@bar.com`)

- **install_knesset_dpp_deps.sh** - runs install_docker.sh, install_docker_compose.sh, install_python3.6.sh and install_v_e_wrapper.sh

- **install_all.sh** - prompts for pycharm version and email address, then runs install_chrome.sh, install_pycharm.sh, install_knesset_dpp_deps.sh and generate_ssh.sh
