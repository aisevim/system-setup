#!/bin/bash

if HEL::command_not_exist "curl"; then
	# https://curl.se/
  sudo apt install curl

	if ! HEL::command_not_exist "curl"; then
	  echoIGreen "curl install success"
	else
	  echoOnIRed "curl install failed :("
		exit 1
	fi
fi
