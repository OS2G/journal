PROJECTS := journal-2022-23

.PHONY: all clean cleansmall $(PROJECTS)

TEX=latexmk
TEXFLAGS=-pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

journal-2022-23:
	@echo "==== Building Journal 2022-23 ===="
	@${MAKE} --no-print-directory -C 2022-23

clean:
	@${MAKE} --no-print-directory -C 2022-23 clean

cleansmall:
	@${MAKE} --no-print-directory -C 2022-23 cleansmall
