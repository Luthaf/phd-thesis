set terminal cairolatex pdf colortext size 10cm,6cm font ",12pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set xlabel "$\\phi$ (°)"
unset ytics
set xrange [0:50]
set key maxrow 99
set yrange [0:0.022]


plot "data/licl-zif/water/dihedral.dat" w l lw 4 lc 1 t "0 mol/L", \
     "data/licl-zif/LiCl-1M/dihedral.dat" w l lw 4 lc 2 t"1 mol/L", \
     "data/licl-zif/LiCl-5M/dihedral.dat" w l lw 4 lc 3 t"5 mol/L", \
     "data/licl-zif/LiCl-10M/dihedral.dat" w l lw 4 lc 4 t"10 mol/L", \
     "data/licl-zif/LiCl-15M/dihedral.dat" w l lw 4 lc 7 t"15 mol/L", \
     "data/licl-zif/LiCl-20M/dihedral.dat" w l lw 4 lc 8 t"20 mol/L", \
     "data/licl-zif/empty/dihedral.dat" w l lw 4 lc 8 dt 2 t "empty", \
