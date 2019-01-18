set terminal cairolatex pdf colortext size 8cm,6cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set dummy A
set dummy K
set dummy N
set dummy p

henry(A, p) = A * p
langmuir(N, K, p) = N * K * p / (1 + K * p)

set logscale x
set xlabel "pressure / bar"
set xrange [1e-3:1]
set ylabel "uptake / (mol/mol)"
set yrange [-1:10]
set ytics 2

set key top left spacing 1.3

plot "data/rpm3-zn/isotherms/C2H6-adsorption.dat" w lp pt 7 ps 0.8 lc 6 t "\\ce{C2H6}", \
     "data/rpm3-zn/isotherms/C2H6-desorption.dat" w lp pt 6 ps 0.8 lc 6 t "", \
     henry(0.905166, p) w l lc 6 lw 6 t"", \
     langmuir(4.81869, 1.74415, p) w l lc 6 lw 6 t"", \
     "data/rpm3-zn/isotherms/C3H8-adsorption.dat" w lp pt 9 ps 1 lc 7 t "\\ce{C3H8}", \
     "data/rpm3-zn/isotherms/C3H8-desorption.dat" w lp pt 8 ps 1 lc 7 t "", \
     [:0.3] henry(2.88575, p) w l lc 7 lw 6 t"", \
     langmuir(8.99765, 41.9608, p) w l lc 7 lw 6 t"", \
     "data/rpm3-zn/isotherms/C4H10-adsorption.dat" w lp pt 5 ps 0.8 lc 2 t "\\ce{C4H10}", \
     "data/rpm3-zn/isotherms/C4H10-desorption.dat" w lp pt 4 ps 0.8 lc 2 t "", \
     [:0.03] henry(27.2624, p) w l lc 2 lw 6 t"", \
     langmuir(5.86621, 698.995, p) w l lc 2 lw 6 t""
