set terminal cairolatex pdf colortext size 10cm,7.5cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set datafile separator ","

set xrange [:0.90]
set xlabel "$P / P_0$"
set logscale x
set xtics format "$10^{%T}$"

set yrange [0:450]
set ytics 100
set ylabel "uptake (\\si{cm^3/cm^3} STP)"

set key at graph 0.95,0.5 samplen 2

plot "data/zif8x/zif8-ch3-adsorption.csv" u 1:4 w lp lc 8 pt 7 ps 0.5 lw 3 title "\\footnotesize\\ZIFCH3", \
     "data/zif8x/zif8-ch3-desorption.csv" u 1:4 w lp lc 8 pt 6 ps 0.5 lw 3 title "", \
     "data/zif8x/zif8-cl-adsorption.csv" u 1:4 w lp lc 2 pt 7 ps 0.5 lw 3 title "\\footnotesize\\ZIFCl", \
     "data/zif8x/zif8-cl-desorption.csv" u 1:4 w lp lc 2 pt 6 ps 0.5 lw 3 title "", \
     "data/zif8x/zif8-br-adsorption.csv" u 1:4 w lp lc 7 pt 7 ps 0.5 lw 3 title "\\footnotesize\\ZIFBr", \
     "data/zif8x/zif8-br-desorption.csv" u 1:4 w lp lc 7 pt 6 ps 0.5 lw 3 title ""
