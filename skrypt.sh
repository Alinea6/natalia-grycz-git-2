#!/bin/bash
while test $# -gt 0; do
	case "$1" in
		--date | -d)
			now=$(date)
			echo "Current date: $now"
			exit 1
			;;
		--logs | -l)
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
		--help | -h)
			echo 'Available flags and argument for this script:
			--date - show current date
			--logs - creates 100 files with filename, script name and date
			--logs <numeric argument> - just as above, but you can specify number of files
			--help - shows available options'
			exit 1
			;;
	esac
done
