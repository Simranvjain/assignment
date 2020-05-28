README.md:guessinggame.sh
	echo "TITLE: Guessing Game" > README.md
	echo "DATE: `date`" >> README.md
	echo "Number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
