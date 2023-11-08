#!/bin/bash

echoOnBlue "CURL"
echoIBlue "Installation of 'curl' in progress...."

# https://curl.se/
echo $sudopwd | sudo apt install -y curl

echoIGreen "'curl' has been successfully installed"
