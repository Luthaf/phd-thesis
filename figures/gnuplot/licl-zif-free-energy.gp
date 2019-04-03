set terminal cairolatex pdf colortext size 10cm,10cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key center top
set xrange [-20:20]

set multiplot layout 2,1
    set ylabel "free energy (kcal/mol)"
    set yrange [-10:50]
    set ytics 10
    plot "data/licl-zif/free/free-Li.dat" u 1:($2 - 2.0) w l lw 4 lc 7 t"\\ce{Li}", \
         "data/licl-zif/free/free-Cl.dat" u 1:($2 - 1.0) w l lw 4 lc 2 t"\\ce{Cl}", \
         "data/licl-zif/free/free-H2O.dat" u 1:($2 - 2.0) w l lw 4 lc 6 t"\\ce{H2O}"

    set xlabel "x ($\\AA$)"
    set ylabel "number of neighbors"
    set yrange [0:10]
    set ytics 2
    plot "data/licl-zif/free/neighbors-Li.dat" w l lw 4 lc 7 t"", \
         "data/licl-zif/free/neighbors-Cl.dat" w l lw 4 lc 2 t"", \
         "data/licl-zif/free/neighbors-H2O.dat" w l lw 4 lc 6 t""
unset multiplot
