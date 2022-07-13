init:
	touch README.md
	echo "# guessinggame" > README.md
	echo "\nDate make was run" >> README.md
	date >> README.md
	echo "\nLines of Code" >> README.md
	wc -l guessinggame.sh >> README.md
