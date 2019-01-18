set terminal cairolatex pdf colortext size 13cm,12cm
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key spacing 1.3

set key top right
set xrange [0:80]
set xtics 20

set multiplot layout 3,2
    set ylabel "\\ce{CO2} / \\ce{O2} selectivity"
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
    replot
    unset logscale

    set yrange [-0.5:10]
    set ytics 5
    set ylabel "\\ce{CH4} / \\ce{O2} selectivity"
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
    replot
    unset logscale

    set xlabel "pressure / atm"

    set yrange [0:1]
    set ytics 0.5
    set ylabel "\\ce{CH4} / \\ce{CO2} selectivity"
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
    replot
    unset logscale
unset multiplot
#     set title "\\ce{C4H10} / \\ce{C2H10} in \\RPMZn"
#     set key top left
#
#     set xtics auto
#     set ytics auto
#     set logscale
#     set xlabel "pressure / bar"
#     set xrange [1e-3:1]
#     set yrange [10:10000]
#     plot "RPM3-Zn/OFAST-C4-C2-0.1.dat" w l lc 6 lw 6 t "$y_{\\ce{C4}} = 0.1$", \
#          "RPM3-Zn/OFAST-C4-C2-0.5.dat" w l lc 7 lw 6 t "$y_{\\ce{C4}} = 0.5$", \
#          "RPM3-Zn/OFAST-C4-C2-0.9.dat" w l lc 8 lw 6 t "$y_{\\ce{C4}} = 0.9$", \
#          "RPM3-Zn/IAST-C4H10-C2H6-0.1.dat" w l lc 6 dt (6, 4) lw 6 t "", \
#          "RPM3-Zn/IAST-C4H10-C2H6-0.5.dat" w l lc 7 dt (6, 4) lw 6 t "", \
#          "RPM3-Zn/IAST-C4H10-C2H6-0.9.dat" w l lc 8 dt (6, 4) lw 6 t ""
# unset multiplot
