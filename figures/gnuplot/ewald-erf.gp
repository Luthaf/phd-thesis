set terminal cairolatex pdf colortext size 9cm,5cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set xrange [0:5]
set yrange [0:5]
unset tics

set key spacing 1.5

set arrow from first 1,0 to first 1,0.3 nohead lw 4
set label "$1 / \\alpha$" at first 0.8,-0.4

plot 1 / x w l lw 4 lc 8 t "$1 / r$", \
     erfc(x) / x w l lw 4 lc 7 t "$\\erfc(\\alpha r) / r$", \
     erf(x) / x w l lw 4 lc 6 t "$\\erf(\\alpha r) / r$"
