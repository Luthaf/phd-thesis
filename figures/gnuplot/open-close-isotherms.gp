set terminal cairolatex pdf colortext size 8cm,5cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key spacing 1.3

set xlabel "pressure"
set xrange [0:3.5]
unset tics
set ylabel "uptake"
set yrange [0:1]

set key center right

set arrow from 1.7,0 to 1.7,0.7 nohead lw 3
set label "$P_\\text{trans}$" at 1.1,.5

henry(x) = 3e-2 * x
lf(N, b, v, x) = N * b * x**v / (1 + b * x**v) + henry(x)
langmuir(N, K, x) = N * K * x / (1 + K * x)

plot lf(0.86, 1e-7, 30, x) w l lw 4 lc 8 t "total", \
     langmuir(1.03, 4.0, x) w l lw 4 lc 7 dt 2 t "open", \
     henry(x) w l lw 8 lc 6 dt 3 t "closed"
