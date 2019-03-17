if ! [[ $1 =~ '^[0-9]+$' ]] || ! [[ $2 =~ '^[0-9]+$' ]]
then
	echo $1 $2
else
	let sum=$1+$2
	echo $sum
fi
