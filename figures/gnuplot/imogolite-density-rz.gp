set terminal cairolatex pdf colortext size 10cm,8cm font ",12pt"
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

set multiplot layout 2,1
    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'web-blue', 4 'blue' )
    splot '< xzcat data/imogolite/density-rz-Ow.dat.xz' u 1:2:3 with image title ""

    set xlabel "$z\\ (\\AA)$"
    set bmargin 2
    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'orange', 4 'red' )
    splot '< xzcat data/imogolite/density-rz-Hw.dat.xz' u 1:2:3 with image title ""
unset multiplot
