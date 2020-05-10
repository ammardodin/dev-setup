#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

# Install the Command Line Tools
set +e
xcode-select -p
RETVAL=$?
set -e
if [[ "$RETVAL" -ne "0" ]]; then
    echo "Installing XCode Command Line Tools"
    xcode-select --install
    read -p "Continue? [Enter]"
fi

# Install brew
if [[ ! -x "/usr/local/bin/brew" ]]; then
    echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" > /dev/null
fi

# Install Python 2
if [[ ! -d "/usr/local/Cellar/python" ]]; then
    echo "Installing python 2"
    brew install python
fi

# Install Python 3
if [[ ! -d "/usr/local/Cellar/python3" ]]; then
    echo "Installing python 3"
    brew install python3
fi

# Update pip packages
/usr/local/bin/pip install -U pip setuptools wheel
/usr/local/bin/pip3 install -U pip setuptools wheel

# Install Ansible
if [[ ! -x "/usr/local/bin/ansible" ]]; then
    brew install ansible
fi
