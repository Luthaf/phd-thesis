all: thesis.pdf

%.pdf: %.tex .FORCE
	latexmk -pdf -output-directory=build -silent -shell-escape -synctex=1 $<
	cp build/$*.{pdf,synctex.gz} .

archive: thesis.pdf
	pdftk $< output $@.pdf

.FORCE:
.PHONY: clean .FORCE

clean:
	rm -rf build *.{pdf,synctex.gz}
