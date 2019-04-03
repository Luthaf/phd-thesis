set terminal cairolatex pdf colortext size 13.4cm,9cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set palette defined (\
    0   "black", \
    0.1 "#0c2c84", \
    0.2 "#225ea8", \
    0.3 "#1d91c0", \
    0.5 "#41b6c4", \
    1   "#7fcdbb" \
)

set xrange [0:20]

set lmargin 5
set bmargin 2

set multiplot
    set size 0.5,0.4

    set colorbox horizontal user origin screen 0.15,0.90 size 0.25,0.04
    set cblabel "\\footnotesize bulk liquid pressure (GPa)" offset 0,5
    set cbrange [0:1]
    set cbtics 1./3. offset 0,0.2 format "\\footnotesize %.2g"

    set origin 0,0.45
    set ylabel "$\\tau_1$ (ps)"
    set yrange [0:4]
    set ytics 1
    plot "data/licl-zif/rotcf-bulk.fit.dat" u 1:2:6 w lp lw 2 palette t ""

    unset colorbox

    set origin 0.5,0.45
    set ylabel "$\\tau_2$ (ps)" offset 1
    set yrange [0:100]
    set ytics 25
    plot "data/licl-zif/rotcf-bulk.fit.dat" u 1:3:6 w lp lw 2 palette t ""

    set origin 0,0.05
    set xlabel "\\footnotesize concentration (mol/L)"
    set ylabel "$A_1$ (\\%)" offset 1.5
    plot "data/licl-zif/rotcf-bulk.fit.dat" u 1:4:6 w lp lw 2 palette t ""

    set origin 0.5,0.05
    set ylabel "$A_2$ (\\%)" offset 1
    plot "data/licl-zif/rotcf-bulk.fit.dat" u 1:5:6 w lp lw 2 palette t ""

    set palette defined (\
        0   "black", \
        0.3 "#ff4949", \
        0.5 "#ff8049", \
        1   "#ffb749" \
    )

    unset ylabel
    unset xlabel
    unset xtics
    unset ytics

    set origin 0,0.45
    set yrange [0:4]
    set colorbox horizontal user origin screen 0.65,0.90 size 0.25,0.04
    set cblabel "\\footnotesize confined liquid pressure (GPa)" offset 0,5
    plot "data/licl-zif/rotcf-confined.fit.dat" u 1:2:6 w lp lw 2 palette t ""
    unset colorbox

    set origin 0.5,0.45
    set yrange [0:100]
    plot "data/licl-zif/rotcf-confined.fit.dat" u 1:3:6 w lp lw 2 palette t ""

    set origin 0,0.05
    plot "data/licl-zif/rotcf-confined.fit.dat" u 1:4:6 w lp lw 2 palette t ""

    set origin 0.5,0.05
    plot "data/licl-zif/rotcf-confined.fit.dat" u 1:5:6 w lp lw 2 palette t ""
unset multiplot
