array=(one two three four five six)

echo "${array[1]}" # -> two

echo "${array[@]}" # -> one two three four five six

echo "${#array[@]}" # -> 6

echo "${array[@]:3:2}" # -> four five

for item in "${array[@]}"
do
  echo "$item"
done

for ((i = 0; i < ${#array[@]}; i++)); do
  echo "$i ${array[$i]}"
done

