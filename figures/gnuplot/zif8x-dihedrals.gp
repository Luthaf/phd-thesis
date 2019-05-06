set terminal cairolatex pdf colortext size 13.7cm,5cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set xrange [0:50]
set xlabel "$\\phi$ (°)"
unset ytics
set yrange [0:0.09]

set key samplen 3

set multiplot layout 1,3

set title "\\ZIFCH3"
plot    "data/zif8x/ZIF-CH3.dihedrals.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
     "data/zif8x/ZIF-CH3-10.dihedrals.dat" w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
     "data/zif8x/ZIF-CH3-25.dihedrals.dat" w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
     "data/zif8x/ZIF-CH3-40.dihedrals.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
     "data/zif8x/ZIF-CH3-50.dihedrals.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"

set title "\\ZIFCl"
plot    "data/zif8x/ZIF-Cl.dihedrals.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
     "data/zif8x/ZIF-Cl-10.dihedrals.dat" w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
     "data/zif8x/ZIF-Cl-25.dihedrals.dat" w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
     "data/zif8x/ZIF-Cl-40.dihedrals.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
     "data/zif8x/ZIF-Cl-50.dihedrals.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"


set title "\\ZIFBr"
plot    "data/zif8x/ZIF-Br.dihedrals.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
      "data/zif8x/ZIF-Br-8.dihedrals.dat" w l lw 4 lc 6 t"\\scriptsize 8 \\ce{N2}", \
     "data/zif8x/ZIF-Br-20.dihedrals.dat" w l lw 4 lc 1 t"\\scriptsize 20 \\ce{N2}", \
     "data/zif8x/ZIF-Br-40.dihedrals.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
     "data/zif8x/ZIF-Br-50.dihedrals.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"

unset multiplot
