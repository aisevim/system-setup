#!/bin/bash

if HEL::command_not_exist "git"; then
	echoIBlue "install 'git'..."
	sudo apt install git-all
	echoIGreen "'git' install success"
fi

echoIBlue "copy git config files..."
cp ./data/git/.gitconfig ~/.gitconfig
cp -r ./data/git/.git-custom ~/.git-custom
echoIGreen "copy done"
