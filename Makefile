SRC_DIRECTORY = src
COMPILE = pdflatex
COMPILE_OPTIONS = -halt-on-error

%:
	$(COMPILE) $(COMPILE_OPTIONS) $(SRC_DIRECTORY)/$@

clean: clean-logs
	rm -f *.pdf

clean-logs:
	rm -f *.aux
	rm -f *.log