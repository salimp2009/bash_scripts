#!/bin/bash

# define a function
hello() {
	for NAME in "$@"; do
		echo "Hello $NAME"
	done
	now
}

now() {
	echo "It is $(date +%r)"
}

# calling function
hello Semos Salim Didem Demir
hello "$@"

set_globalvar() {
	GLOBAL_VAR=1
	local LOCAL_VAR=2
	echo "LOCAL_VAR = $LOCAL_VAR"
}

set_globalvar

echo "GLOBAL_VAR= $GLOBAL_VAR"
