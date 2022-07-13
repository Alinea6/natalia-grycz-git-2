#!/bin/bash
while test $# -gt 0; do
	case "$1" in
		--date)
			now=$(date)
			echo "Current date: $now"
			exit 1
			;;
		--logs)
			if [ "$#" = 1 ]; then
			for i in {1..100}
			do
				filename="log${i}.txt"
				touch $filename
				echo "${filename}, skrypt.sh, $(date)" >> $filename
			done
			exit 1
			fi
			if [ "$#" = 2 ]; then
			for ((i = 1; i <= $2; i++ )); do
				filename="log${i}.txt"
				touch $filename
				echo "${filename}, skrypt.sh, $(date)" >> $filename
			done
			exit 1
			fi
			;;
	esac
done
