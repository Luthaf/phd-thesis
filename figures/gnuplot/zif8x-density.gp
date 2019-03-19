set terminal cairolatex pdf colortext size 13cm,13cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

unset colorbox

set xrange [-8.5:8.5]
set yrange [-8.5:8.5]
unset xtics
unset ytics
unset border

set margin 0.5,0.5,0.5,1.5

DELTA = 0.0375

set multiplot layout 3,4
    set title "\\small 10 \\ce{N2} $\\in$ \\ZIFCH3" offset 0,-0.7
    plot "data/zif8x/ZIF-CH3-10.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 25 \\ce{N2} $\\in$ \\ZIFCH3"
    plot "data/zif8x/ZIF-CH3-25.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 40 \\ce{N2} $\\in$ \\ZIFCH3"
    plot "data/zif8x/ZIF-CH3-40.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 50 \\ce{N2} $\\in$ \\ZIFCH3"
    plot "data/zif8x/ZIF-CH3-50.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 10 \\ce{N2} $\\in$ \\ZIFCl"
    plot "data/zif8x/ZIF-Cl-10.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 25 \\ce{N2} $\\in$ \\ZIFCl"
    plot "data/zif8x/ZIF-Cl-25.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 40 \\ce{N2} $\\in$ \\ZIFCl"
    plot "data/zif8x/ZIF-Cl-40.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 50 \\ce{N2} $\\in$ \\ZIFCl"
    plot "data/zif8x/ZIF-Cl-50.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 8 \\ce{N2} $\\in$ \\ZIFBr"
    plot "data/zif8x/ZIF-Br-8.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 20 \\ce{N2} $\\in$ \\ZIFBr"
    plot "data/zif8x/ZIF-Br-20.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 40 \\ce{N2} $\\in$ \\ZIFBr"
    plot "data/zif8x/ZIF-Br-40.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""

    set title "\\small 50 \\ce{N2} $\\in$ \\ZIFBr"
    plot "data/zif8x/ZIF-Br-50.density.xy.dat" u 1:2:3 w image t"", \
         # "data/ZIF8.png" binary filetype=png center=(0,0) dx=DELTA dy=DELTA with rgbalpha t ""
unset multiplot
