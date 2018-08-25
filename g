#!/bin/bash

function _status {
	echo

	echo -e "comando: git status"
	echo
	git status

	echo
}

function _pull {
	echo

	echo -e " git pull"
	echo
	git pull

	echo
}


function _send {

	_status
	
	if [ -z "`git status --porcelain`" ]
		then
			echo -e " Nothing to commit."
			echo
			exit
	fi


	echo -e " Going to ADD all, COMMIT and PUSH."
	echo -e " Enter commit message (leave blank to abort)."
	echo
	echo -n -e " [msg]: "
	read msg
	echo

	if [ -z "$msg" ]
		then
			echo -e " Aborted."
			echo
			exit
	fi

	echo -e " git add --all"
	echo
	git add --all
	echo

	echo -e " git commit -m \"$msg\""
	echo
	git commit -m "$msg"
	echo

	echo -e " git push"
	echo
	git push
	echo
}


case $1 in
		"status")
			_status
			;;

		"pull")
			_pull
			;;
			
		"send" | "push")
			_send
			;;

		*)
			echo -e "\n Invalid ACTION '$1', use one of {check, pull, send} !\n";
			;;

	esac
