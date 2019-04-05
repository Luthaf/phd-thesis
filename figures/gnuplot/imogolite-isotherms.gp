set terminal cairolatex pdf colortext size 11cm,6cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key at screen 0.5,0.9 samplen 2 font ",10pt"

set xrange [1e-3:10]
set yrange [0:16]
set ylabel "water uptake (\\%wt)"
set xlabel "pressure (kPa)"
set xtics format "$10^{%T}$"

set logscale x

plot "data/imogolite/isotherm-exp.dat"       w  p lc 8 lw 2 ps 0.8 pt 1 t "\\footnotesize experimental\\cite{Konduri2008}", \
     "data/imogolite/isotherm-zang.dat"      w lp lc 6 lw 4 ps 0.6 pt 2 t "\\footnotesize rigid nanotube\\cite{Zang2010}", \
     "data/imogolite/isotherm-zang-flex.dat" w lp lc 3 lw 4 ps 0.6 pt 2 t "\\footnotesize flexible nanotube\\cite{Zang2010}", \
     "data/imogolite/isotherm-tip4p.dat"     w lp lc 2 lw 4 ps 0.6 pt 2 t "\\footnotesize TIP4P (this work)", \
     "data/imogolite/isotherm-spc.dat"       w lp lc 7 lw 4 ps 0.6 pt 2 t "\\footnotesize SPC (this work)"
