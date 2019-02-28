set terminal cairolatex pdf colortext size 13cm,5cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set yrange [0:1500]
set ytics 250
set ylabel "\\footnotesize porous volume ($\\AA^3$)" offset -1

set auto x
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 1

set xrange [-0.5:2.5]
set xtics scale 0.0

set label "\\scriptsize 0" at -0.35,1290
set label "\\scriptsize 10" at -0.20,1300
set label "\\scriptsize 25" at -0.03,1295
set label "\\scriptsize 40" at 0.13,1265
set label "\\scriptsize 50" at 0.30,1240

set label "\\scriptsize 0" at 0.65,1270
set label "\\scriptsize 10" at 0.81,1260
set label "\\scriptsize 25" at 0.97,1275
set label "\\scriptsize 40" at 1.13,1280
set label "\\scriptsize 50" at 1.30,1225

set label "\\scriptsize 0" at 1.65,1165
set label "\\scriptsize 8" at 1.82,1175
set label "\\scriptsize 20" at 1.98,1167
set label "\\scriptsize 40" at 2.13,1187
set label "\\scriptsize 50" at 2.30,1160

plot 'data/zif8x/porous.dat' using 2 lc 2 t "",\
     '' using 3 lc 6 t "",\
     '' using 4 lc 1 t "",\
     '' using 5 lc 7 t "",\
     '' using 6:xticlabels(1) lc 8 t ""
