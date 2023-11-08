#!/bin/bash

echoOnBlue "ZSH - Oh My ZSH"
echoIBlue "Installation of 'zsh' in progress...."

echo $sudopwd | sudo apt install -y zsh
echo $sudopwd | chsh -s $(which zsh)

echoIBlue "Installation of 'Oh My ZSH' in progress...."
yes Y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echoIBlue "Installation of 'fonts-powerline' for theme 'agnoster'"
sudo apt install -y fonts-powerline

echoIBlue "copy '.zshrc' config file..."
cp ./data/zsh/.zshrc ~/.zshrc
