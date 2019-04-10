INPUTS=$(wildcard gnuplot/*.gp)
CWD := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

TEX_OUTPUTS=$(patsubst gnuplot/%.gp,%.tex, $(INPUTS))
PDF_OUTPUTS=$(patsubst gnuplot/%.gp,%.pdf, $(INPUTS))

all: ${TEX_OUTPUTS} ${PDF_OUTPUTS}

%.pdf: gnuplot/%.gp
	@cd gnuplot && gnuplot $(notdir $<)

%.tex: %.pdf
	@sed -i '' 's|includegraphics{../|includegraphics{|' $@

clean:
	rm -f ${TEX_OUTPUTS} ${PDF_OUTPUTS}
