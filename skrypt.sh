#!/bin/bash
while test $# -gt 0; do
	case "$1" in
		--date)
			now=$(date)
			echo "Current date: $now"
			exit 1
			;;
		--logs)
			for i in {1..100}
			do
				filename="log${i}.txt"
				touch $filename
				echo "${filename}, skrypt.sh, $(date)" >> $filename
			done
			exit 1
			;;
	esac
done
