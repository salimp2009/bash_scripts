#!/bin/bash

message="SHELL SCRIPTING IS FUN!"

HOSTNAME=$(hostname)

echo "${message}"

echo "This script is running on ${HOSTNAME}."

FILE="/etc/shadow"

if [[ -f "${FILE}" ]]; then
	echo "Shadow passwords are enabled "
	if [[ -w "${FILE}" ]]; then
		echo "& you have permission to edit them"
	else
		echo " & you don't have permission to edit them"
	fi
else
	echo "/etc/shadow directory does not exist"
fi

ANIMALS="man bear pig dog"

for VAR in "man" "bear" "pig" "dog"; do
	echo "$VAR"
done

for VAR in ${ANIMALS}; do
	echo "${VAR} in animal list"
done

# positional parameters
echo "name of script: ${0}"
echo "first parameter: ${1}"
echo "second parameter: ${2}"

# $@ is all parameters passed to script
echo "Executing script: ${0}"
for USER in "$@"; do
	echo "$USER"
done

# read -p ; prompts a string and that is stored as a variable
# -r ; prevent escaping characters
read -r -p "Please enter a user name: " USER
echo "the username entered: ${USER}"

# read -r -p "Please enter directory name to look for under ${HOME}: " DIR
read -r "Please enter directory name to look for under ${HOME}: "

if [[ -d "${HOME}/$DIR" ]]; then
	echo "you entered: ${DIR}"
	ls -la "${HOME}/${DIR}"
else
	echo "${DIR} does not exist"
fi
