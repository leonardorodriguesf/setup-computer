#!/usr/bin/env sh

# Exit immediately if a command exits with a non-zero status
set -e

# Use sudo to install Homebrew with root privileges to prevent installation failures.
sudo echo "Cloning setup-computer..."

export SETUP_HOME="$HOME/.local/share/setup-computer"

cd ~
rm -rf "$SETUP_HOME"
# git clone https://github.com/leonardorodriguesf/setup-computer.git "$SETUP_HOME"
# TODO REMOVE THIS AFTER LOCAL TEST
ln -s "$HOME/personal/setup-computer" "$SETUP_HOME"

source "$SETUP_HOME/prerequisites/check-platform.sh"
source "$SETUP_HOME/prerequisites/install-required.sh"

echo "Installation starting..."
ansible-playbook "$SETUP_HOME/install.yaml"
