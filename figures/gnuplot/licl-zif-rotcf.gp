set terminal cairolatex pdf colortext size 13.4cm,5cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key maxrow 3
set xrange [0:20]
set yrange [0:1]

set multiplot layout 1,2
    set ylabel "auto correlation"
    set xlabel "time (ps)"
    plot   "data/licl-zif/water/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 1 t "0 mol/L", \
         "data/licl-zif/LiCl-1M/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 2 t "1 mol/L", \
         "data/licl-zif/LiCl-5M/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 3 t "5 mol/L", \
        "data/licl-zif/LiCl-10M/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 4 t "", \
        "data/licl-zif/LiCl-15M/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 7 t "", \
        "data/licl-zif/LiCl-20M/rotcf-bulk.dat" u ($1/10):2 w l lw 3 lc 8 t ""

    unset ylabel
    plot   "data/licl-zif/water/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 1 t "", \
         "data/licl-zif/LiCl-1M/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 2 t "", \
         "data/licl-zif/LiCl-5M/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 3 t "", \
        "data/licl-zif/LiCl-10M/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 4 t "10 mol/L", \
        "data/licl-zif/LiCl-15M/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 7 t "15 mol/L", \
        "data/licl-zif/LiCl-20M/rotcf-confined.dat" u ($1/10):2 w l lw 3 lc 8 t "20 mol/L"
unset multiplot
