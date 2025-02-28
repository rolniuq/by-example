echo "Enter max number:"
read MAX

echo "Enter min number:"
read MIN

echo "Enter number from $MIN to $MAX:"
read NUM

if [[ $NUM -lt $MIN || $NUM -gt $MAX ]]; then
  echo "WTF...???. Enter number from $MIN to $MAX"
  exit 1
fi

echo "Cool. Your number is $NUM"
