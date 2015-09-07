all: pdf

pdf:
	pdflatex --shell-escape phd
	bibtex phd
	pdflatex --shell-escape phd

clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out
	rm -f head/*.aux head/*.log
	rm -f main/*.aux main/*.log
	rm -f tail/*.aux tail/*.log
