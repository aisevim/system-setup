if HEL::command_not_exist "curl"; then
  sudo apt install curl

	if ! HEL::command_not_exist "curl"; then
	  echoIGreen "curl install success"
	else
	  echoOnIRed "curl install failed :("
		exit 1
	fi
fi
