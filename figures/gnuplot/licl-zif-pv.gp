set terminal cairolatex pdf colortext size 10cm,10cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT


set key maxrows 3
set xlabel "pressure (GPa)"
set ylabel "volume (\\si{nm^3})"
set xrange [-0.05:1.05]
set xtics 0.25

set lmargin 6

set multiplot layout 2,1
    set yrange [15:35]
    set ytics 5
    plot "data/licl-zif/water/pv-bulk.dat"    u 1:($2/1000) w lp pt 1 lc 1 lw 4 t"0 mol/L", \
         "data/licl-zif/LiCl-1M/pv-bulk.dat"  u 1:($2/1000) w lp pt 1 lc 2 lw 4 t"1 mol/L", \
         "data/licl-zif/LiCl-5M/pv-bulk.dat"  u 1:($2/1000) w lp pt 1 lc 3 lw 4 t"5 mol/L", \
         "data/licl-zif/LiCl-10M/pv-bulk.dat" u 1:($2/1000) w lp pt 1 lc 4 lw 4 t"10 mol/L", \
         "data/licl-zif/LiCl-15M/pv-bulk.dat" u 1:($2/1000) w lp pt 1 lc 7 lw 4 t"15 mol/L", \
         "data/licl-zif/LiCl-20M/pv-bulk.dat" u 1:($2/1000) w lp pt 1 lc 8 lw 4 t"20 mol/L"

    set yrange [110:150]
    set ytics 10
    plot "data/licl-zif/water/pv-confined.dat"    u 1:($2/1000) w lp pt 1 lc 1 lw 4 t"", \
         "data/licl-zif/LiCl-1M/pv-confined.dat"  u 1:($2/1000) w lp pt 1 lc 2 lw 4 t"", \
         "data/licl-zif/LiCl-5M/pv-confined.dat"  u 1:($2/1000) w lp pt 1 lc 3 lw 4 t"", \
         "data/licl-zif/LiCl-10M/pv-confined.dat" u 1:($2/1000) w lp pt 1 lc 4 lw 4 t"", \
         "data/licl-zif/LiCl-15M/pv-confined.dat" u 1:($2/1000) w lp pt 1 lc 7 lw 4 t"", \
         "data/licl-zif/LiCl-20M/pv-confined.dat" u 1:($2/1000) w lp pt 1 lc 8 lw 4 t"", \
         "data/licl-zif/empty/pv-confined.dat"    u 1:($2/1000) w lp pt 1 lc 8 lw 4 dt 2 t"empty", \

unset multiplot
