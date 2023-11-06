#!/bin/bash

if HEL::command_not_exist "curl"; then
	echoIBlue "install 'volta'..."

	# https://volta.sh/
	# node version manager
  curl https://get.volta.sh | bash

	echoIBlue "install node 18"
	volta install node@18
	volta install pnpm

	if ! HEL::command_not_exist "pnpm" && ! HEL::command_not_exist "node"; then
		echoIGreen "'node' and 'pnpm' install success"
	else
		echoOnIRed "'pnpm' install failed :("
		exit 1
	fi
fi
