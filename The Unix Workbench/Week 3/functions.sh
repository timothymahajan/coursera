#multiplies a sequence of numbers taken in as a parameter
function plier {
	local multiply=1
	for num in $@
	do
		let multiply=multiply\*$num
	done
	echo $multiply

}

#returns 1 if given parameter is even; 0 if given parameter is odd
function isiteven {
	if [[ $1%2 -eq 0 ]]
	then
		echo "1"
	else
		echo "0"
	fi
}

#prints number of even numbers in a sequence taken in as a parameter
function nevens {
	local sum=0
	for num in $@
	do
		let sum=sum+$(isiteven num)
	done
	echo $sum

}

#prints the percentage of odd numbers in a given sequence taken in as a parameter
function howodd {
	local sum=0
	for num in $@
	do
		let sum=sum+$(isiteven num)
	done
	let sum=$#-sum
	echo "$sum * 100 / $#" | bc -l
}

#given parameter n, returns first n numbers in Fibonnaci Sequence
function fib {
	local fib_sequence=(0 1)
	let local index=$1-1
	if [[ $index -eq 0 ]]
	then
		echo ${fib_sequence[index]}
	elif [[ $index -eq 1 ]]
	then
		echo ${fib_sequence[*]}
	else
		for i in $(seq 2 $index)
		do
			let local temp=${fib_sequence[i-1]}+${fib_sequence[i-2]}
			fib_sequence+=($temp)
		done
		echo ${fib_sequence[*]}
	fi
}
