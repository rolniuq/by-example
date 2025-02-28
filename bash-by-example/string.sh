variable="Some string"

echo "${variable}" # -> Some string

echo "${variable/Some/A}" # string substitution -> A string

length=8
echo "${variable:0:$length}" # -> Some str
echo "${variable: -6}" # -> string

# get string length
echo "${#variable}" # -> 11

# indirect expansion
other_variable="variable"
echo "${!other_variable}" # -> Some string
echo "${other_variable}" # -> variable
