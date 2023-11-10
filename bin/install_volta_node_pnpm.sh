#!/bin/bash

echoOnBlue "VOLTA - NODE - PNPM"
echoIBlue "Installation of 'volta' in progress...."

# node version manager
# https://volta.sh/
curl https://get.volta.sh | bash

~/.volta/bin/volta install node@20
~/.volta/bin/volta install pnpm

echoIGreen "'volta', 'node' and 'pnpm' has been successfully installed"
