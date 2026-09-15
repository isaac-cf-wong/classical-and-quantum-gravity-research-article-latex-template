# Classical and Quantum Gravity research article LaTeX template

[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](LICENSE)
[![CI](https://github.com/isaac-cf-wong/classical-and-quantum-gravity-research-article-latex-template/actions/workflows/ci.yml/badge.svg)](https://github.com/isaac-cf-wong/classical-and-quantum-gravity-research-article-latex-template/actions/workflows/ci.yml)

This repository provides a LaTeX template for writing research articles for
_Classical and Quantum Gravity_ (CQG), published by IOP Publishing.

## Features

- Uses the official IOP Publishing `iopjournal` document class
  ([source](https://publishingsupport.iopscience.iop.org/questions/latex-template/))
- Single-column preprint layout suitable for peer review
- `[anonymous]` class option for double-anonymous peer review
- ORCID iDs in the author list via `\orcid{}`
- Back-matter commands for acknowledgments, funding, author contributions
  (CRediT), data availability, and supplementary data
- Numbered (Vancouver) references with `iopart-num.bst`
- `make submission` bundles a flat set of files for upload, as IOP requires

## Files

- `main.tex`: The main LaTeX file for your article
- `iopjournal.cls`, `orcid.pdf`: The IOP class file and the ORCID icon it uses
- `references.bib`: BibTeX references (kept in sync with ADS by `bibsync`)
- `figures/`: Figures used in the article
- `Makefile`: Simplifies compilation using `latexmk`
- `.github/`: CI workflows, pull request template, and issue templates
- `CONTRIBUTING.md`: How to set up the tools, build, and write commit messages
- `CODE_OF_CONDUCT.md`: Contributor Covenant Code of Conduct; replace
  `[INSERT CONTACT METHOD]` with how to report incidents
- `CITATION.cff`: Citation metadata used by Zenodo to archive each GitHub
  release; update the title, authors, and keywords for your paper
- `.gitignore`: Excludes auxiliary files

## CQG author guidelines

The key requirements from the
[CQG author guidelines](https://publishingsupport.iopscience.iop.org/journals/classical-and-quantum-gravity/):

- Abstract of at most 300 words, with no undefined acronyms, references, or
  figure, table, or equation numbers
- Keywords are required at submission
- ORCID iDs are recommended for all authors
- References may use either the Vancouver (numbered) or the Harvard
  (author-year) system
- Figures in vector EPS or PDF where possible, with text of 8 to 12 pt at the
  final size; do not use colour as the only means of conveying information
- File names may only contain `a-z`, `A-Z`, `0-9`, and `_`
- Initial submission is a single PDF file
- Acknowledgments must disclose funding sources with grant numbers and any
  conflicts of interest

## Usage

1. Fork this repository to your own GitHub account:
    - Click the "Fork" button at the top-right of this repository page.
2. Create a new repository for your paper production from your fork.
3. Clone your new repository:

    ```sh
    git clone https://github.com/yourusername/your-repository.git
    ```

4. Run `./setup_repo.sh` to rename the project identifiers to your repository.
5. Edit `main.tex` with your article content.
6. Compile the document using:

    ```shell
    make
    ```

7. For the source upload, create a flat bundle (`submission/` and
   `submission.zip`) with:

    ```shell
    make submission
    ```

For double-anonymous review, change the first line of `main.tex` to
`\documentclass[anonymous]{iopjournal}`.
