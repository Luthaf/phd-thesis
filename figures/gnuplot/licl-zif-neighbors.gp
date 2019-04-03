set terminal cairolatex pdf colortext size 12cm,7cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key maxrows 1 top center samplen 2

set xlabel "Concentration (mol/L)"
set ylabel "Water neighbors"

# Manually add LiCl to the legend
set label "Li-Cl neighbors" at first 9.3,6.5
set arrow from first 14.75,6.5 to first 15.95,6.5 nohead ls 1 lw 4
set arrow from first 15.35,6.4 to first 15.35,6.6 nohead ls 1 lw 4

set yrange [0:8]
set ytics 2
set y2range [0:8]
set y2tics 2

plot "data/licl-zif/neighbors-confined.dat" u 1:3 w lp lw 4 lc 6 pt 1 ps 0.7 dt 1 t"water", \
     "data/licl-zif/neighbors-bulk.dat" u 1:3 w lp lw 4 lc 6 pt 1 ps 0.7 dt 2 t"", \
     "data/licl-zif/neighbors-confined.dat" u 1:6 w lp lw 4 lc 7 pt 1 ps 0.7 dt 1 t"Li", \
     "data/licl-zif/neighbors-bulk.dat" u 1:6 w lp lw 4 lc 7 pt 1 ps 0.7 dt 2 t"", \
     "data/licl-zif/neighbors-confined.dat" u 1:8 w lp lw 4 lc 2 pt 1 ps 0.7 dt 1 t"Cl", \
     "data/licl-zif/neighbors-bulk.dat" u 1:8 w lp lw 4 lc 2 pt 1 ps 0.7 dt 2 t"", \
     "data/licl-zif/neighbors-confined.dat" u 1:5 w lp axes x1y2 lw 4 lc 1 pt 1 ps 0.7 dt 1 t"", \
     "data/licl-zif/neighbors-bulk.dat" u 1:5 w lp axes x1y2 lw 4 lc 1 pt 1 ps 0.7 dt 2 t"", \
