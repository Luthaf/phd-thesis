set terminal cairolatex pdf colortext size 13.4cm,7cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

unset xlabel
set xrange [0:20]

set key samplen 2

set lmargin 7

set multiplot layout 2,2
    set ylabel "$\\tau_1$ (ps)" offset -1
    set yrange [0:4]
    set ytics 1
    plot "data/licl-zif/hbonds-confined.fit.dat" u 1:2 every :::0::0 w lp lw 4 lc 7 t "", \
         "data/licl-zif/hbonds-bulk.fit.dat" u 1:2 every :::0::0 w lp lw 4 lc 6  t ""

    set key top left
    set ylabel "$\\tau_2$ (ps)"
    set yrange [0:80]
    set ytics 20
    plot "data/licl-zif/hbonds-confined.fit.dat" u 1:3 every :::0::0 w lp lw 4 lc 7 t "confined", \
         "data/licl-zif/hbonds-bulk.fit.dat" u 1:3 every :::0::0 w lp lw 4 lc 6 t "bulk"

    set xlabel "\\small concentration (mol/L)"
    set ylabel "$A_1$ (\\%)" offset 0.8
    set yrange [0:100]
    set ytics 25
    plot "data/licl-zif/hbonds-confined.fit.dat" u 1:4 every :::0::0 w lp lw 4 lc 7 t "", \
         "data/licl-zif/hbonds-bulk.fit.dat" u 1:4 every :::0::0 w lp lw 4 lc 6 t ""

    set ylabel "$A_2$ (\\%)"
    set yrange [0:100]
    set ytics 25
    plot "data/licl-zif/hbonds-confined.fit.dat" u 1:5 every :::0::0 w lp lw 4 lc 7 t "", \
         "data/licl-zif/hbonds-bulk.fit.dat" u 1:5 every :::0::0 w lp lw 4 lc 6 t ""

unset multiplot
