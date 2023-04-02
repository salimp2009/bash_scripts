#!/bin/bash

# $? gives the return exit code of previous command
# 0 is success ; anything else is failure

HOST="archlinux.org"
ping -c 1 ${HOST}
RETURN_CODE="$?"

if [[ "${RETURN_CODE}" -eq "0" ]]; then
	echo "${HOST} is reachable"
	# exit 0
else
	echo "${HOST} is not reachable"
	exit 1
fi

ping -c 1 ${HOST} && echo "${HOST} is reachable (message from oneliner)"

exit 0
