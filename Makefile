all: build clean

build:
	echo "# Bash, Make, Git and GitHub" >> README.md 
	echo "## Date and time at which make was run: $$(date +%F-%T)" >> README.md
	echo "## Number of lines in README.md file: $$(wc -l guessinggame.sh)" >> README.md
	
clean:
	rm -fr README.md
