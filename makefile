all: README.md

README.md:
	echo "# Guessing game: Guess your files">README.md
	echo " ">>README.md
	echo "## ">>README.md
	date>>README.md
	echo " ">>README.md
	echo "## ">>README.md
	wc -l guessinggame.sh>>README.md
