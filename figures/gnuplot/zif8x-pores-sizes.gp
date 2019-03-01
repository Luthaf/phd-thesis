set terminal cairolatex pdf colortext size 13cm,5cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key samplen 1 at graph 0.4,0.95
set xrange [8:12]
set xlabel "\\scriptsize pore size (\\AA)"
set xtics 1
set yrange [5e0:2e3]
unset ytics
set ylabel "\\scriptsize pore size distribution (log scale)" offset -1
set logscale y

set multiplot layout 1,3
    set title "\\ZIFCH3"
    plot    "data/zif8x/ZIF-CH3.psd.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-10.psd.dat" w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-25.psd.dat" w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-40.psd.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-CH3-50.psd.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"

    unset ylabel

    set title "\\ZIFCl"
    plot    "data/zif8x/ZIF-Cl.psd.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-10.psd.dat" w l lw 4 lc 6 t"\\scriptsize 10 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-25.psd.dat" w l lw 4 lc 1 t"\\scriptsize 25 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-40.psd.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-Cl-50.psd.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}2"


    set title "\\ZIFBr"
    plot    "data/zif8x/ZIF-Br.psd.dat" w l lw 4 lc 2 t"\\scriptsize 0 \\ce{N2}", \
          "data/zif8x/ZIF-Br-8.psd.dat" w l lw 4 lc 6 t"\\scriptsize 8 \\ce{N2}", \
         "data/zif8x/ZIF-Br-20.psd.dat" w l lw 4 lc 1 t"\\scriptsize 20 \\ce{N2}", \
         "data/zif8x/ZIF-Br-40.psd.dat" w l lw 4 lc 7 t"\\scriptsize 40 \\ce{N2}", \
         "data/zif8x/ZIF-Br-50.psd.dat" w l lw 4 lc 8 t"\\scriptsize 50 \\ce{N2}"
unset multiplot
