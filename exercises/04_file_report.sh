#!/usr/bin/env bash
set -euo pipefail

dir=${1:-.}

if [[ ! -d $dir ]]; then
	echo "Error: '$dir' is not a directory" >&2
	exit 1
fi

f=0
d=0

for item in "$dir"/*; do
	if [[ -f $item ]]; then
		f=$(( f + 1))
	elif [[ -d $item ]]; then
		d=$(( d + 1))
	fi
done
echo "Files: $f"
echo "Directories: $d"

