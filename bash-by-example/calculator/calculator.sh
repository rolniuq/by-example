echo "Welcome to bash calculator"

echo "Enter your first number:"
read first
echo "Enter your second number:"
read second

echo "
  Please select an option below

  1. Add
  2. Sub
  3. Mul
  4. Div
"
read option

if [[ $option == 1 ]]; then
  res=$((first + second))
  echo "Your result is:" $first + $second = $res

elif [[ $option == 2 ]]; then
  res=$((first - second))
  echo "Your result is:" $first - $second = $res

elif [[ $option == 3 ]]; then
  res=$((first * second))
  echo "Your result is: $first * $second = $res"

else
  if [[ second == 0 ]]; then
    echo "Cannot div 0 bro..."
    exit 1
  else
     res=$((first / second))
    echo "Your result is:" $first / $second = $res
  fi
 fi
