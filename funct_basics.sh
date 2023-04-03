#!/bin/bash

# define a function
hello() {
	echo "hello from function hello :)"
	now
}

now() {
	echo "It is $(date +%r)"
}

# calling function
hello
