set terminal cairolatex pdf colortext size 13cm,4cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key samplen 1 at graph 0.4,0.95
set yrange [0:60]
unset ytics

set multiplot layout 1,3
    set title "\\ZIFCH3"
    plot "data/zif8x/ZIF-CH3-10.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-25.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-40.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-50.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"

    set title "\\ZIFCl"
    plot "data/zif8x/ZIF-Cl-10.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-25.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-40.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-50.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"

    set title "\\ZIFBr"
    plot  "data/zif8x/ZIF-Br-8.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 6 t"\\scriptsize 8 \\ce{N2}", \
         "data/zif8x/ZIF-Br-20.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 1 t"\\scriptsize 20 \\ce{N2}", \
         "data/zif8x/ZIF-Br-40.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-Br-50.rdf.center-N.dat" u 1:($2*$1) w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"
unset multiplot