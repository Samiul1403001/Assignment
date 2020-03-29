all: README.md

README.md:
	echo "# Guessing game: Guess your files">README.md
	date>>README.md
	wc -l guessinggame.sh>>README.md
