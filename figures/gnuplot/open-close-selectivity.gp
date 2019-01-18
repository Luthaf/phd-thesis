set terminal cairolatex pdf colortext size 8cm,5cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set xlabel "pressure"
set xrange [0:12]
unset xtics

set ylabel "uptake"
set yrange [0:1.1]
unset ytics

set label "closed" at .2,.8 tc lt 7 front
set label "open" at 4.2,.8 tc lt 7 front
set label "closed" at 3,.2 tc lt 6 front
set label "open" at 7,.2 tc lt 6 front

set object rect from 2.2,0 to 6,1.1 back fc rgb "black" fs solid 0.2 noborder

set arrow heads filled from 9.1,.7 to 9.1,.98 lw 4

set label "$\\Delta n$" at 9.3,.85 front

lf(N, b, v, x) = N * b * x**v / (1 + b * x**v)

plot lf(1, 0.05, 4, x)    w l lw 4 lc 7 t "", \
     lf(0.7, 1e-8, 10, x) w l lw 4 lc 6 t ""
