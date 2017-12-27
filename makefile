# Notice: $ should be escaped by $$ in 'make'

README.md:
	echo "# Guessing Game" > README.md
	echo "The \`make\` was run on $(shell date -R)" >> README.md
	echo "The number of lines of code contained in guessinggame.sh is $(shell cat guessinggame.sh | egrep -v "^$$" | wc -l) (stripping off empty lines)" >> README.md
