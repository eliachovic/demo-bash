#!/usr/bin/env bash
set -euo pipefail
if [[$# -eq 0 ]]; then
	echo "Usage: $0" >&2
	exit 1
fi


n=$1

if [[ ! $n =~ ^-?[0-9]+$ ]]; then
	echo "Error: '$n' is not valid" >&2
	exit 2
fi

if (( n % 2 == 0 )); then
	echo "$n is even"
else
	echo "$n is odd"
fi
