all: thesis.pdf

%.pdf: %.tex .FORCE
	latexmk -pdf -output-directory=build -silent -shell-escape -synctex=1 $<
	cp build/$*.{pdf,synctex.gz} .

archive: thesis.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dUseCIEColor -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$@.pdf $<

.FORCE:
.PHONY: clean .FORCE

clean:
	rm -rf build *.{pdf,synctex.gz}
