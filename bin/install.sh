#!/bin/bash
source lib/colors.sh

read -s -p "Enter Password for sudo: " sudopwd
read -s -p "Enter git user name: " gitname
read -s -p "Enter git email: " gitemail

source bin/install_curl.sh
source bin/install_git.sh
source bin/install_volta_node_pnpm.sh
source bin/install_zsh.sh

echoIBlue "Restart the computer"
