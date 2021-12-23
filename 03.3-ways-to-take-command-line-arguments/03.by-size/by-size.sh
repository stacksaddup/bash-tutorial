#!/usr/bin/env bash

if (( $# < 1 )); then
    echo "ERROR: missing the FILE argument"
    exit 1
fi

file=$1

repeat=1
while (( $# > 0 ));
do
    case "$1" in
	--repeat)
	    shift

	    if [[ -z $1 ]]; then
		echo "ERROR: missing REPEAT value"
		exit 1
	    fi

	    repeat=$1
	    shift
	    ;;
	-*)
	    echo "ERROR: unknown argument: $1"
	    exit 1
	    ;;
	*)
	    shift
	    ;;
    esac
done

for i in $(seq "$repeat");
do
    n=$(( $RANDOM % 10 + 1 ))
    sed -n "${n}p" "$file"
done
