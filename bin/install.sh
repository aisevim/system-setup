#!/bin/bash
source lib/colors.sh
source lib/helper_functions.sh

read -s -p "Enter Password for sudo: " sudopwd

source bin/install_curl.sh
source bin/install_git.sh
source bin/install_volta_node_pnpm.sh
source bin/install_zsh.sh

echoIBlue "Restart the computer"
