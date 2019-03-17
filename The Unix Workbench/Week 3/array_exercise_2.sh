array_one=(one two three four five)
array_two=(one two three four five)
len_array_one=${#array_one[*]}
len_array_two=${#array_two[*]}
let sum=len_array_one+len_array_two
echo $sum
