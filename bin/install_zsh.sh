#!/bin/bash

echoIBlue "install 'zsh'..."
# https://github.com/ohmyzsh/ohmyzsh
sudo apt install zsh
echoIGreen "'curl' install success"

echoIBlue "Change default shell"
chsh -s $(which zsh)

echoIBlue "install Oh My ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install fonts-powerline
