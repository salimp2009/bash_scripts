#!/bin/bash
########################################
# counts the files for a given directory
# needs to be refactored using find
# ls list directories as well
########################################

read -r -p "Please enter a directory name to count num of files: " DIR
file_count() {
	if [[ -f "${DIR}" ]]; then
		echo "you entered a file name; not a directory!"
		return 1
	else
		local NUM_FILES
		NUM_FILES=$(ls "${DIR}" | wc -l)
		if [[ "$?" -eq 0 ]]; then
			echo "${DIR}"
			echo "${NUM_FILES}"
			return 0
		fi
		echo "something went wrong!"
		return 1
	fi
}

file_count
SUCCESS_FAIL="$?"
if [[ ${SUCCESS_FAIL} != 0 ]]; then
	echo "something went wrong, please try again!"
	exit 1
fi
