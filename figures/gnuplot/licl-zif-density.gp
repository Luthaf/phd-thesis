set terminal cairolatex pdf colortext size 13cm,12.5cm font ",8pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

unset colorbox
set xrange [-0.5:0.5]
set yrange [-0.5:0.5]
set xtics 0.25
set ytics 0.25
set cbrange [0:1]

set tics format "\\tiny %g"

DELTA=0.00225

set label "O" at screen 0.01,(5.0 / 6.0) font ",30pt" textcolor "red"
set label "Li" at screen 0.01,(3.0 / 6.0 + 0.02) font ",30pt" textcolor "blue"
set label "Cl" at screen 0.01,(1.0 / 6.0 + 0.02) font ",30pt" textcolor "#005130"

set multiplot
    set size square 0.36
    set origin 0.0/3,2.0/3
    set palette defined (0 "white", 0.3 "red", 1 "orange")
    set title "1 mol/L"
    plot "data/licl-zif/LiCl-1M/density-Ow.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (1.0/3-0.025),2.0/3
    set title "10 mol/L"
    plot "data/licl-zif/LiCl-10M/density-Ow.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (2.0/3-0.05),2.0/3
    set title "20 mol/L"
    plot "data/licl-zif/LiCl-20M/density-Ow.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    unset title
    set origin 0.0/3,1.0/3
    set palette defined (0 "white", 0.3 "blue", 1 "cyan")
    plot "data/licl-zif/LiCl-1M/density-Li.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (1.0/3 - 0.025),1.0/3
    plot "data/licl-zif/LiCl-10M/density-Li.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (2.0/3 - 0.05),1.0/3
    plot "data/licl-zif/LiCl-20M/density-Li.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin 0.0/3,0
    set palette defined (0 "white", 0.3 "#005130", 1 "#02c979")
    plot "data/licl-zif/LiCl-1M/density-Cl.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (1.0/3 - 0.025),0
    plot "data/licl-zif/LiCl-10M/density-Cl.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set origin (2.0/3 - 0.05),0
    plot "data/licl-zif/LiCl-20M/density-Cl.ave.dat" u 1:2:3 w image t"", \
         "data/licl-zif/zif8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""
unset multiplot
