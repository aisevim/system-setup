#!/bin/bash

echoOnBlue "GiT"
echoIBlue "Installation of 'git' in progress...."

sudo apt install -y git-all
echoIGreen "'git' has been successfully installed"

echoIBlue "copy 'git' config files..."
cp ./data/git/.gitconfig ~/.gitconfig
cp -r ./data/git/.git-custom ~/.git-custom
echoIGreen "copy done"
