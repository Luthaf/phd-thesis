set terminal cairolatex pdf colortext size 13cm,6cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set yrange [0:1]
set y2range [0:1]
set xrange [0:4]

set xtics 1
set ytics 0.25
set y2tics 0.58

set key samplen 2 maxrows 2

set ylabel "auto correlation"
set xlabel "time (ns)"
plot "data/imogolite/hbonds-lifetime-si-w.dat"  u ($1*2.5e-3):2 w l lw 4 lc 6 t "silanol to water", \
     "data/imogolite/hbonds-lifetime-w-si.dat"  u ($1*2.5e-3):2 w l lw 4 lc 8 t "water to silanol", \
     "data/imogolite/hbonds-lifetime-w-w.dat"   u ($1*2.5e-3):2 w l lw 4 lc 7 t "water to water", \
     "data/imogolite/hbonds-lifetime-layer.dat" u ($1*2.5e-3):2 w l lw 4 lc 2 axis x1y2 t "at the surface"
