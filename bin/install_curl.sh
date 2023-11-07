#!/bin/bash

if HEL::command_not_exist "curl"; then
	echoOnBlue "CURL\n"
	echoOnBlue "\n"

	echoIBlue "Installation of 'curl' in progress...."

	# https://curl.se/
  sudo apt install -y curl

	if ! HEL::command_not_exist "curl"; then
		echoIGreen "'curl' has been successfully installed\n\n\n"
	else
	  echoOnIRed "failed on 'curl' install :("
		exit 1
	fi
fi
