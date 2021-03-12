README.md: guessinggame.sh
	touch README.md
	echo "Unix Workbench Assignment: Guessing Game bash script" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
