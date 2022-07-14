function main {

echo "How many proper files might be in this directory? Enter your guess:"
read input

local re='^[0-9]+$'
local solution=$(ls | wc -l)
local dis=1
while [[ $dis == 1 ]]
do
	if ! [[  $input =~ $re  ]]
	then
		echo"Error: Please stick to numbers." >&2;
		read input
	else
		if [[ $input == $solution ]]
		then
			echo "Exactly! Congratulations!"
			let dis=0
			exit
		elif [[ $input -gt $solution ]]
		then
			echo "$input is above the searched number."
			read input
		elif [[ $input -lt $solution ]]
		then
			echo "$input is below the searched number."
			read input
		else
			echo "The searched number is $solution."
			read input
		fi
	fi
done
}

main
