set terminal cairolatex pdf colortext size 13cm,5cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set multiplot layout 1,2
    set xlabel "pressure (bar)"
    set ylabel "intake (\\% wt)"
    set yrange [0:35]

    plot "data/hmc-mof5/isotherme-massique.dat" w yerrorlines lw 4 lc 8 pt 0 t""

    set ylabel "volume (\\si{nm^3})"
    set ytics 0.2
    set yrange [16.8:17.8]

    plot "data/hmc-mof5/volume.dat" u 1:($2/1e3):($3/1e3) w yerrorlines lw 4 lc 8 pt 0 t""
unset multiplot
