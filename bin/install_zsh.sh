#!/bin/bash

echoOnBlue "ZSH - Oh My ZSH\n"
echoIBlue "Installation of 'zsh' in progress...."

# https://github.com/ohmyzsh/ohmyzsh
sudo apt install -y zsh
echoIGreen "'zsh' has been successfully installed"

echoIBlue "Change default shell"
chsh -s $(which zsh)

echoIBlue "Installation of 'Oh My ZSH' in progress...."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echoIBlue "Installation of 'fonts-powerline' for theme 'agnoster'"
sudo apt install -y fonts-powerline
echoIGreen "'fonts-powerline' has been successfully installed\n\n\n"
