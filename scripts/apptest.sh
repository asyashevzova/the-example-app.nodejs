#!/bin/bash
function checkservice () {
	if [ $(curl -s localhost:3000 >/dev/null; echo $?) == 0 ] 
	then
		exit 0
	else
		exit 1
	fi
}

checkservice
