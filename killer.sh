#!/bin/bash

kill_process() {
	taskkill //IM $1 //F
}

validate_input() {
	if [[ -z $1 ]]; then
		echo "Please enter the Image name of the process you would like to kill"
		read INPUT
	fi
}

INPUT="$1"
validate_input $INPUT
declare -A PROCESSES

PROCESSES=(
	["edge"]="msedge.exe"
	["notepad"]="notepad.exe"
	["chrome"]="chrome.exe"
	["Spotify"]="spotify.exe"
	["discord"]="Discord.exe"
	["steam"]="steam.exe"
	["vs"]="Code.exe"
)

for p in "${!PROCESSES[@]}"; do
	if [[ $p == $INPUT ]]; then
		kill_process ${PROCESSES[$p]}
		exit;
	fi
done

echo "$INPUT is not supported, please introduce it to killer.sh 'PROCESSES' dictionary"