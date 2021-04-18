#!/bin/bash

kill_process() {
	taskkill //IM $1 //F
}

fetch_input() {
	if [[ -z $1 ]]; then
		echo "Please enter the Image name of the process you would like to kill"
		echo "OPTIONS:"
		for p in "${!PROCESSES[@]}"; do
			echo "- $p"
		done
		read INPUT
	fi
}

declare -A PROCESSES

PROCESSES=(
	["edge"]="msedge.exe"
	["notepad"]="notepad.exe"
	["chrome"]="chrome.exe"
	["spotify"]="Spotify.exe"
	["discord"]="Discord.exe"
	["steam"]="steam.exe"
	["vs"]="Code.exe"
)

INPUT="$1"
fetch_input $INPUT

for p in "${!PROCESSES[@]}"; do
	if [[ $p == $INPUT ]]; then
		kill_process ${PROCESSES[$p]}
		exit;
	fi
done

echo "$INPUT is not supported, please introduce it to killer.sh 'PROCESSES' dictionary"