echo "Explicit list:"

for picture in img001.jpg img002.jpg img003.jpg
do
	echo "picture is equal to $picture"
done

echo ""
echo "Array:"

stooge=(curly larry moe)
for stooge in ${stooges[*]}
do
	echo "Current stooge: $stooge"
done

echo ""
echo "Command substitution:"

for code in $(ls)
do
	echo "$code is a bash script"
done

