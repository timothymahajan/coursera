int=5
sum=0

while [[ $int -gt 0 ]]
do
	let sum=$sum+$int
	for i in {0..10}
	do
		if [[ i%2 -eq 0 ]]
		then
			echo "this is it: $i"
		fi
	done
	let int=$int-1
	let sum=0
done
