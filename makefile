all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench Assignment (by Rishabh)" > README.md
	echo -e "\nDate and Time of This Run: $$(date)" >> README.md
	echo -e "\nThe GuessingGame.sh file has this many lines in it:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
