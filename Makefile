all: web

%.pdf: %.tex .FORCE
	latexmk -pdf -output-directory=build -silent -shell-escape -synctex=1 $<
	cp build/$*.{pdf,synctex.gz} .

archive: phd-fraux.archive.pdf
print: phd-fraux.print.pdf
web: phd-fraux.web.pdf

everything: archive print web

phd-fraux.%.pdf: A-%.pdf
	# Use pdftk to save and restore PDF metadata, as ghostscript override them
	# with font metadata
	pdftk $< dump_data_utf8 > metadata.log
	# Compress the pdf file (all images at 300dpi and device independent color profile)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.7 -dPDFSETTINGS=/printer  \
	   -dUseCIEColor -dNOPAUSE -dQUIET -dBATCH -dProcessDSCComments=false \
	   -sOutputFile=tmp.pdf $<
	pdftk tmp.pdf update_info_utf8 metadata.log output $@
	rm -f tmp.pdf

# Force recompilation of pdf everytime, latexmk uses its own algorithm to
# determine wheter it needs to recompile
.FORCE:

# Keep "temporary files"
.SECONDARY:

.PHONY: clean .FORCE .SECONDARY

clean:
	rm -rf build *.{pdf,synctex.gz} metadata.log
