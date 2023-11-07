#!/bin/bash

if HEL::command_not_exist "curl"; then
	echoIBlue "Installation of 'curl' in progress...."

	# https://curl.se/
  sudo apt install -y curl

	if ! HEL::command_not_exist "curl"; then
		echoIGreen "'curl' has been successfully installed"
	else
	  echoOnIRed "failed on 'curl' install :("
		exit 1
	fi
fi
