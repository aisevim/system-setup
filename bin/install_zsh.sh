#!/bin/bash

echoIBlue "Installation of 'zsh' in progress...."

# https://github.com/ohmyzsh/ohmyzsh
sudo apt install -y zsh
echoIGreen "'curl' install success"

echoIBlue "Change default shell"
chsh -s $(which zsh)

echoIBlue "Installation of 'Oh My ZSH' in progress...."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install -y fonts-powerline
