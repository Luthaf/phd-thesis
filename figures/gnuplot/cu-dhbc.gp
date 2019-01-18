set terminal cairolatex pdf colortext size 8cm,6cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set dummy p
langmuir(nmax, K, p) = nmax * K * p / (1 + K * p)

set xlabel "pressure / atm"
set xrange [:80]
set xtics 20
set ylabel "uptake / (mol/mol)"
set yrange [:3]
set ytics 1

set key bottom right spacing 1.3
plot "data/cu-dhbc/isotherms/CH4-desorption.dat" w lp lc 2 pt 6 ps 0.8 t"", \
     "data/cu-dhbc/isotherms/CH4-adsorption.dat" w lp lc 2 pt 7 ps 0.8 t"CH$_4$", \
     langmuir(2.86018, 0.134329, p) w l lc 2 lw 6 t"", \
     "data/cu-dhbc/isotherms/CO2-desorption.dat" w lp lc 7 pt 4 ps 0.8 t"", \
     "data/cu-dhbc/isotherms/CO2-adsorption.dat" w lp lc 7 pt 5 ps 0.8 t"CO$_2$", \
     langmuir(2.7929, 0.699231, p) w l lc 7 lw 6 t"", \
     "data/cu-dhbc/isotherms/O2-desorption.dat" w lp lc 6 pt 8 ps 1 t"", \
     "data/cu-dhbc/isotherms/O2-adsorption.dat" w lp lc 6 pt 9 ps 1 t"O$_2$", \
     langmuir(2.67873, 0.0342924, p) w l lc 6 lw 6 t""
