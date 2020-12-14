# template-latex-book
Template for LaTeX projects, especially books.

To build your PDF from the sources, just run `make`.

## Features
* Title page
* Table of Contents
* List of Figures, Tables, and Listings
* Bibliography
* Frontmatter with roman page numbers, for preface and forword
* Multiple parts to group chapters
* Chapters (obviously), with epigraphs
* Appendix
* Backmatter with acronyms, glossary, and index
* Output as PDF, with Hyperlinks

## Example Structure
* `book.tex` ⇐ main structure, should only be changed for structural changes like adding or removing chapters, or enabling and disabling features
* `chapters/` ⇐ regular content goes here
* `data/` ⇐ acronyms, bibliography, glossary
* `gfx/` ⇐ graphics
* `src/` ⇐ source code listings included in the book

## Links
See also: [LaTeX Cheat Sheet](https://nelkinda.com/blog/latex-cheat-sheet/)
