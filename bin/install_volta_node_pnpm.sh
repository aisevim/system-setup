#!/bin/bash

echoOnBlue "VOLTA - NODE - PNPM"
echoIBlue "Installation of 'volta' in progress...."

# node version manager
# https://volta.sh/
curl https://get.volta.sh | bash

volta install node@18
volta install pnpm

echoIGreen "'volta', 'node' and 'pnpm' has been successfully installed"
echo "\n\n\n"
