#!/bin/bash

install_on_fedora() {
  sudo dnf install -y ansible
}

install_on_ubuntu() {
  sudo apt-get update
  sudo apt-get install -y ansible
}

install_on_pacman() {
  sudo pacman -S --noconfirm --needed ansible
}

install_on_mac() {
  brew install ansible
}

OS="$(uname -s)"
case "${OS}" in
Linux*)
  if [ -f /etc/fedora-release ]; then
    install_on_fedora
  elif [ -f /etc/lsb-release ]; then
    install_on_ubuntu
  elif [ -f /etc/pacman.conf ]; then
    install_on_pacman
  else
    echo "Unsupported Linux distribution"
    exit 1
  fi
  ;;
Darwin*)
  install_on_mac
  ;;
*)
  echo "Unsupported operating system: ${OS}"
  exit 1
  ;;
esac

ansible-galaxy collection install -r ~/.bootstrap/requirements.yml
cd ~/.bootstrap && ansible-playbook setup.yml --ask-become-pass

echo "Ansible installation complete."
