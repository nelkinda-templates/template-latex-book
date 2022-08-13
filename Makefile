.ONESHELL:
SHELL:=/bin/bash

LATEX:=lualatex
#LATEX:=pdflatex
#LATEX:=xetex

.PHONY: all
all: book.pdf

book.pdf: book.tex data/*.tex chapters/*/*.tex data/book.bib
	-$(LATEX) $<
	-bibtex book.aux
	-makeindex book
	-makeglossaries book
	-$(LATEX) $<
	-makeindex book
	-makeglossaries book
	$(LATEX) $<

.PHONY: clean
clean::
	$(RM) {,*/}*.{aux,dvi,log,bbl,blg,lof,lol,lot,toc,idx,ilg,ind,out,ist,glo,acn,acr,alg,glg,gls}

.PHONY: distclean
distclean:: clean
	$(RM) *.pdf

.PHONY: view
view::
	xdg-open book.pdf
