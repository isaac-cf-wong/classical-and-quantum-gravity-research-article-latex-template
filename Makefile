# Makefile for compiling CQG article

filename = main

LATEXMK=latexmk

# IOP asks for all submission files in one directory, without subfolders.
SUBMISSION_DIR = submission
SUBMISSION_FILES = $(filename).tex $(filename).bbl references.bib iopjournal.cls orcid.pdf

.PHONY: all main.pdf submission clean

all: main.pdf

main.pdf:
	$(LATEXMK) -pdf ${filename}

gitID.txt:
	@echo "Recording Git commit ID..."
	git describe --abbrev=8 --dirty --always --tags > gitID.txt

submission: main.pdf
	@echo "Collecting flat submission files into $(SUBMISSION_DIR)/..."
	rm -rf $(SUBMISSION_DIR) $(SUBMISSION_DIR).zip
	mkdir -p $(SUBMISSION_DIR)
	cp $(SUBMISSION_FILES) $(SUBMISSION_DIR)/
	find figures -type f ! -name '.gitignore' ! -name 'README.md' -exec cp {} $(SUBMISSION_DIR)/ \;
	cd $(SUBMISSION_DIR) && zip -q ../$(SUBMISSION_DIR).zip *

clean:
	@echo "Cleaning auxiliary and output files..."
	rm -f $(filename).pdf *.aux *.bbl *.blg *.log *.toc *.out *.fdb* *.fls gitID.txt
	rm -rf $(SUBMISSION_DIR) $(SUBMISSION_DIR).zip
