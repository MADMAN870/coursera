# Variables
SCRIPT = guessinggame.sh
README = README.md

# Default target
all: $(README)

# Rule to create README.md
$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "This project was created as part of a programming exercise." >> $(README)
	echo "" >> $(README)
	echo "## Date and Time" >> $(README)
	echo "\`\`\`" >> $(README)
	date >> $(README)
	echo "\`\`\`" >> $(README)
	echo "" >> $(README)
	echo "## Lines of Code in guessinggame.sh" >> $(README)
	echo "\`\`\`" >> $(README)
	wc -l < $(SCRIPT) >> $(README)
	echo "\`\`\`" >> $(README)

# Clean up
clean:
	rm -f $(README)
