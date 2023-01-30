PROJECTS := fall-2022 spring-2023

.PHONY: all clean cleansmall $(PROJECTS)

TEX=latexmk
TEXFLAGS=-pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

all: fall-2022 spring-2023 cleansmall

fall-2022:
	@echo "==== Building Journal Fall 2022 ===="
	@${MAKE} --no-print-directory -C 'Fall 2022'

spring-2023:
	@echo "==== Building Journal Spring 2023 ===="
	@${MAKE} --no-print-directory -C 'Spring 2023'

clean:
	@${MAKE} --no-print-directory -C 'Fall 2022' clean
	@${MAKE} --no-print-directory -C 'Spring 2023' clean

cleansmall:
	@${MAKE} --no-print-directory -C 'Fall 2022' cleansmall
	@${MAKE} --no-print-directory -C 'Spring 2023' cleansmall
