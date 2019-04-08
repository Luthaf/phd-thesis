set terminal cairolatex pdf colortext size 13cm,9cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set view map
set ylabel "$r\\ (\\AA)$" offset 2

set xrange [-10:10]
set yrange [0:10]
set tics out scale 0.5
set ytics offset 2

set cbrange [0:0.012]
unset colorbox

set margin 2,0,0,0

ORIGIN=-0.02
DELTA=4.25
set arrow from first (ORIGIN - 2 * DELTA),0 to first (ORIGIN - 2 * DELTA),10 nohead front lw 6 dt (2,2) lc rgb "#22444444"
set arrow from first (ORIGIN - 1 * DELTA),0 to first (ORIGIN - 1 * DELTA),10 nohead front lw 6 dt (2,2) lc rgb "#22444444"
set arrow from first (ORIGIN + 0 * DELTA),0 to first (ORIGIN + 0 * DELTA),10 nohead front lw 6 dt (2,2) lc rgb "#22444444"
set arrow from first (ORIGIN + 1 * DELTA),0 to first (ORIGIN + 1 * DELTA),10 nohead front lw 6 dt (2,2) lc rgb "#22444444"
set arrow from first (ORIGIN + 2 * DELTA),0 to first (ORIGIN + 2 * DELTA),10 nohead front lw 6 dt (2,2) lc rgb "#22444444"

set multiplot
    set size 1,0.45
    set origin 0,0.55
    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'web-blue', 4 'blue' )
    splot '< xzcat data/imogolite/density-rz-Ow.dat.xz' u 1:2:3 with image title ""

    set origin 0,0.1
    set xlabel "$z\\ (\\AA)$"
    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'orange', 4 'red' )
    splot '< xzcat data/imogolite/density-rz-Hw.dat.xz' u 1:2:3 with image title ""
unset multiplot
