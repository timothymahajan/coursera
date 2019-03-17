function addseq {
	#local should be added so as not to affect global variables in terminal
	local sum=0
	for element in $@
	do
		let sum=sum+$element
	done
	echo $sum
}
