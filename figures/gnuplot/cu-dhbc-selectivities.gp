set terminal cairolatex pdf colortext size 13.4cm,14cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key spacing 1.3

set key top right
set xrange [0:80]
set xtics 20

set margin 2,0,2,0

set label "\\ce{CO2} / \\ce{O2}" rotate at screen 0.001,0.82
set label "\\ce{CH4} / \\ce{O2}" rotate at screen 0.001,0.52
set label "\\ce{CH4} / \\ce{CO2}" rotate at screen 0.001,0.22

set multiplot
    set size 0.4,0.3
    set origin 0.1,0.7

    set ylabel "selectivity"
    set yrange [-100:2500]
    set ytics 1000
    plot "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" w l lw 6 lc 8 t "$y_{\\ce{CO2}} = 0.1$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" w l lw 6 lc 7 t "$y_{\\ce{CO2}} = 0.5$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" w l lw 6 lc 6 t "$y_{\\ce{CO2}} = 0.9$", \
         "data/cu-dhbc/IAST-CO2-O2-0.1.dat" w l lw 6 lc 8 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CO2-O2-0.5.dat" w l lw 6 lc 7 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CO2-O2-0.9.dat" w l lw 6 lc 6 dt (6, 4) t ""

    unset key

    set logscale y
    set yrange [1:8000]
    set ytics auto
    unset ylabel
    set origin 0.55,0.7
    replot
    unset logscale

    set yrange [-0.5:10]
    set ytics 5
    set origin 0.1,0.4
    set ylabel "selectivity"
    plot "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" w l lw 6 lc 8 t "$y_{\\ce{CH4}} = 0.1$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" w l lw 6 lc 7 t "$y_{\\ce{CH4}} = 0.5$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" w l lw 6 lc 6 t "$y_{\\ce{CH4}} = 0.9$", \
         "data/cu-dhbc/IAST-CH4-O2-0.1.dat" w l lw 6 lc 8 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CH4-O2-0.5.dat" w l lw 6 lc 7 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CH4-O2-0.9.dat" w l lw 6 lc 6 dt (6, 4) t ""


    set logscale y
    set yrange [1:10]
    set ytics auto
    unset ylabel
    set origin 0.55,0.4
    replot
    unset logscale

    set xlabel "pressure / atm"

    set yrange [0:1]
    set ytics 0.5
    set origin 0.1,0.1
    set ylabel "selectivity"
    plot "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" w l lw 6 lc 8 t "$y_{\\ce{CH4}} = 0.1$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" w l lw 6 lc 7 t "$y_{\\ce{CH4}} = 0.5$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" w l lw 6 lc 6 t "$y_{\\ce{CH4}} = 0.9$", \
         "data/cu-dhbc/IAST-CH4-CO2-0.1.dat" w l lw 6 lc 8 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.5.dat" w l lw 6 lc 7 dt (6, 4) t "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.9.dat" w l lw 6 lc 6 dt (6, 4) t ""

    set logscale y
    set yrange [0.01:1]
    set ytics auto
    unset ylabel
    set origin 0.55,0.1
    replot
    unset logscale
unset multiplot
