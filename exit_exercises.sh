#!/bin/bash

# echo "This script will exit with a return code 0;"
# echo "you can check with '$?' after running script"

read -r -p "Please enter a file or directory name to check at ${HOME}:  " DIR_FILE

if [[ -f "${HOME}/${DIR_FILE}" ]]; then
	echo "you entered ${DIR_FILE}"
	exit 0
elif [[ -d "${HOME}/${DIR_FILE}" ]]; then
	echo "you entered ${DIR_FILE}"
	exit 1
else
	echo "you entered ${DIR_FILE}"
	exit 2
fi
