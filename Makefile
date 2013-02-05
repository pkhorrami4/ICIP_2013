LATEX:=/usr/bin/pdflatex
BIBTEX:=/usr/bin/bibtex

main.pdf: main.tex strings.bib refs.bib
	$(LATEX) -halt-on-error main.tex 
	$(BIBTEX) main
	$(LATEX) -halt-on-error main.tex
	$(LATEX) -halt-on-error main.tex
