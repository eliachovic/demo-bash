#!/usr/bin/env bash
set -euo pipefail
N=${1:-5}
while (( N > 0 )); do
	echo "$N"
	N=$((N - 1))
done
echo "Liftoff!"
