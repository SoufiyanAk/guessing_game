all: README.md

README.md: guessinggame.sh
	echo -n "Title : Guessing game project: " > README.md
	echo -n "\nThe date: " >> README.md
	date +%Y-%m-%d >> README.md
	echo -n "\nNumber of lines in guessinggame.sh:" >> README.md
	grep -c '' guessinggame.sh >> README.md
clean:
	rm README.md
