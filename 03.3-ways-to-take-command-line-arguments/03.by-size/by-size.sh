  if (( $# < 1 )); then
      echo "ERROR: missing the FILE argument"
      exit 1
  fi

  file=$1

  repeat=4
  for i in $(seq "$repeat");
  do
      n=$(( $RANDOM % 10 + 1 ))
      sed -n "${n}p" "$file"
  done
