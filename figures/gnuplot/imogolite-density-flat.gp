set terminal cairolatex pdf colortext size 13cm,13cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set view map

set xrange [-11:11]
set yrange [-5:5]
set ytics 4.25

set tics out scale 0.5
set ytics offset 2

set cbrange [0:0.01]
unset colorbox

DELTA_Y=4.25
set arrow from first -10,-DELTA_Y to first 10,-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ff4444"
set arrow from first -10,0 to first 10,0 nohead front lw 6 dt (2,2) lc rgb "#22ff4444"
set arrow from first -10,DELTA_Y to first 10,DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ff4444"

DELTA_X=3.45
ORIGIN=-11
set arrow from first (ORIGIN + 0.5 * DELTA_X),0 to first (ORIGIN + 1 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 1 * DELTA_X),-DELTA_Y to first (ORIGIN + 2 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 2 * DELTA_X),-DELTA_Y to first (ORIGIN + 3 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 3 * DELTA_X),-DELTA_Y to first (ORIGIN + 4 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 4 * DELTA_X),-DELTA_Y to first (ORIGIN + 5 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 5 * DELTA_X),-DELTA_Y to first (ORIGIN + 6 * DELTA_X),DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"

set arrow from first (ORIGIN + 0.5 * DELTA_X),0 to first (ORIGIN + 1* DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 1 * DELTA_X),DELTA_Y to first (ORIGIN + 2 * DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 2 * DELTA_X),DELTA_Y to first (ORIGIN + 3 * DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 3 * DELTA_X),DELTA_Y to first (ORIGIN + 4 * DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 4 * DELTA_X),DELTA_Y to first (ORIGIN + 5 * DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"
set arrow from first (ORIGIN + 5 * DELTA_X),DELTA_Y to first (ORIGIN + 6 * DELTA_X),-DELTA_Y nohead front lw 6 dt (2,2) lc rgb "#22ffaa00"

set margin 2,0,0,0

max(a, b) = (a > b) ? a : b
set ylabel "$z$ (\\AA)" offset 4

set palette defined ( 0 'white', 1 'blue', 2 'red', 3 'yellow' );
set multiplot
    set size 1,0.33
    set origin 0,0.7
    splot '<xzcat data/imogolite/density-flat-Ow.dat.xz' u 1:2:(max($3,$6)) with image title ""

    set origin 0,0.4
    splot '<xzcat data/imogolite/density-flat-Hw.dat.xz' u 1:2:(max($3,$6)) with image title ""

    set origin 0,0.1
    set xlabel "circular coordinate (\\AA)"
    splot '<xzcat data/imogolite/density-flat-Hint.dat.xz' u 1:2:(max($3,$6)) with image title ""
unset multiplot
