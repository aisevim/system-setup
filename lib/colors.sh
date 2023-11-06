#!/bin/bash

declare -A Colors

Colors+=(
	# Regular
	["Black"]='\e[0;30m'
	["Red"]='\e[0;31m'
	["Green"]='\e[0;32m'
	["Yellow"]='\e[0;33m'
	["Blue"]='\e[0;34m'
	["Purple"]='\e[0;35m'
	["Cyan"]='\e[0;36m'
	["White"]='\e[0;37m'

	# Bold
	["BBlack"]='\e[1;30m'
	["BRed"]='\e[1;31m'
	["BGreen"]='\e[1;32m'
	["BYellow"]='\e[1;33m'
	["BBlue"]='\e[1;34m'
	["BPurple"]='\e[1;35m'
	["BCyan"]='\e[1;36m'
	["BWhite"]='\e[1;37m'

	# Underline
	["UBlack"]='\e[4;30m'
	["URed"]='\e[4;31m'
	["UGreen"]='\e[4;32m'
	["UYellow"]='\e[4;33m'
	["UBlue"]='\e[4;34m'
	["UPurple"]='\e[4;35m'
	["UCyan"]='\e[4;36m'
	["UWhite"]='\e[4;37m'

	# High Intensity
	["IBlack"]='\e[0;90m'
	["IRed"]='\e[0;91m'
	["IGreen"]='\e[0;92m'
	["IYellow"]='\e[0;93m'
	["IBlue"]='\e[0;94m'
	["IPurple"]='\e[0;95m'
	["ICyan"]='\e[0;96m'
	["IWhite"]='\e[0;97m'

	# BoldHigh Intens
	["BIBlack"]='\e[1;90m'
	["BIRed"]='\e[1;91m'
	["BIGreen"]='\e[1;92m'
	["BIYellow"]='\e[1;93m'
	["BIBlue"]='\e[1;94m'
	["BIPurple"]='\e[1;95m'
	["BICyan"]='\e[1;96m'
	["BIWhite"]='\e[1;97m'

	# Background
	["OnBlack"]='\e[40m'
	["OnRed"]='\e[41m'
	["OnGreen"]='\e[42m'
	["OnYellow"]='\e[43m'
	["OnBlue"]='\e[44m'
	["OnPurple"]='\e[45m'
	["OnCyan"]='\e[46m'
	["OnWhite"]='\e[47m'

	# High Intensity Backgrounds
	["OnIBlack"]='\e[0;100m'
	["OnIRed"]='\e[0;101m'
	["OnIGreen"]='\e[0;102m'
	["OnIYellow"]='\e[0;103m'
	["OnIBlue"]='\e[0;104m'
	["OnIPurple"]='\e[0;105m'
	["OnICyan"]='\e[0;106m'
	["OnIWhite"]='\e[0;107m'
)
ColorReset='\e[0m'

for key in "${!Colors[@]}"; do
	value="${Colors[$key]}"

	eval "echo$key() { echo -e \"${value}\$1${ColorReset}\"; }"
done
