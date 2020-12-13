.ONESHELL:
SHELL:=/bin/bash

book.pdf: book.tex data/*.tex chapters/*/*.tex data/book.bib
	-pdflatex $<
	-bibtex book.aux
	-makeindex book
	-makeglossaries book
	-pdflatex $<
	-makeindex book
	-makeglossaries book
	pdflatex $<

.PHONY: clean
clean::
	$(RM) {,*/}*.{aux,dvi,log,bbl,blg,lof,lol,lot,toc,idx,ilg,ind,out,ist,glo,acn,acr,alg,glg,gls}

.PHONY: distclean
distclean:: clean
	$(RM) *.pdf

.PHONY: view
view::
	xdg-open book.pdf
