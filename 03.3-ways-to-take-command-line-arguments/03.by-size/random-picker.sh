#!/usr/bin/env bash

function usage() {
    cat <<EOF
Usage: $(basename $0) FILE [OPTIONS]

  Randomly pick an item from the given file.

Options:
  --help        Show this message and exit.
  --repeat N    Pick N times. (default: 1)
EOF
}

if (( $# < 1 )); then
    usage
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
		usage
		exit 1
	    fi

	    repeat=$1
	    shift
	    ;;
	-*)
	    usage
	    exit
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
