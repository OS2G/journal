.PHONY: clean cleansmall journal.pdf

TEX=latexmk
TEXFLAGS=-pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

all: journal.pdf cleansmall

journal.pdf: journal.tex 
	$(TEX) $(TEXFLAGS) $<

clean:
	$(TEX) -C

cleansmall:
	$(TEX) -c
