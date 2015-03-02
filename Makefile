TEX=xelatex
DEP=*.tex *.cls *.bib
CV=cv.pdf
all: $(CV)
	open -a preview $<
$(CV): $(DEP)
	$(TEX) $< -o $@
	$(TEX) $< -o $@
clean:
	rm -f *.log *.aux *.out *.bcf *.xml
