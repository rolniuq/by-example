#!usr/bin/bash

# read lines from a file

count=0

#while read -r LINE; do
#  printf "%s %s\n" "$count" "$LINE"
#  count=$((count + 1))
#done < "$1"

while [[ count -lt 10 ]]; do
  echo "counter: $count"
  count=$((count + 1))
done

