# Makefile for LaTeX projects without a bibliography

# Main document filename without the extension
MAIN = main

# Command to run LaTeX
LATEX = pdflatex

# Build the main PDF
all: $(MAIN).pdf

# Rule to make the PDF
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)  # Running twice for resolving references

# Clean up auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).toc

# Clean up all generated files
distclean: clean
	rm -f $(MAIN).pdf