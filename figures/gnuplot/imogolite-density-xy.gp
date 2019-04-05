set terminal cairolatex pdf colortext size 13.4cm,6.5cm font ",12pt"

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set view map
set size ratio -1
set xlabel "$x\\ (\\AA)$"
set ylabel "$y\\ (\\AA)$"

set xrange [-10:10]
set yrange [-10:10]
set tics out scale 0.5

set cbrange [0:0.1]
unset colorbox

set multiplot layout 1,2
    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'web-blue', 4 'blue' )
    splot '< xzcat data/imogolite/density-xy-Ow.dat.xz' u 1:2:3 with image notitle

    set palette defined ( 0 'white', 1 'green', 1 'white', 2 'red', 2 'white', 3 'black', 3 'white', 3.5 'orange', 4 'red' )
    splot '< xzcat data/imogolite/density-xy-Hw.dat.xz' u 1:2:3 with image notitle
unset multiplot
