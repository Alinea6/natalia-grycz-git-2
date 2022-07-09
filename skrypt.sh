#!/bin/bash
while test $# -gt 0; do
	case "$1" in
		--date)
			now=$(date)
			echo "Current date: $now"
			exit 1
			;;
	esac
done
