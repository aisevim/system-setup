#!/bin/bash

echoIBlue "copy git config files..."

cp ./data/git/.gitconfig ~/.gitconfig
cp -r ./data/git/.git-custom ~/.git-custom

echoIGreen "copy done"
