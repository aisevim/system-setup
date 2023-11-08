#!/bin/bash
source lib/colors.sh

read -p "Enter git user name: " gitname
read -p "Enter git email: " gitemail

source bin/install_curl.sh
source bin/install_git.sh
source bin/install_volta_node_pnpm.sh
source bin/install_zsh.sh

echoIBlue "Restart the computer"
