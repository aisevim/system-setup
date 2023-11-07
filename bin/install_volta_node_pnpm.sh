#!/bin/bash

echoIBlue "Installation of 'volta' in progress...."

# node version manager
# https://volta.sh/
curl https://get.volta.sh | bash

echoIBlue "install node 18"
volta install node@18
volta install pnpm

if ! HEL::command_not_exist "pnpm" && ! HEL::command_not_exist "node"; then
	echoIGreen "'node' and 'pnpm' has been successfully installed"
else
	echoOnIRed "failed on 'node' or 'pnpm' install :("
	exit 1
fi
