set terminal cairolatex pdf colortext size 13cm,5cm font ",7pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key samplen 1 spacing 1.5

set logscale
set xlabel "\\small pressure / bar"
set xrange [1e-3:1]
set ylabel "\\small selectivity"
set tics format "\\footnotesize$10^{%T}$"
set xtics offset 0,-0.2

set multiplot layout 1,3
    set title "\\ce{C3H8} / \\ce{C2H6}"
    set key top left
    set yrange [1:1000]
    plot "data/rpm3-zn/OFAST-C3-C2-0.1.dat" w l lc 6 lw 6 t "\\footnotesize$y_{\\smallce{C3}} = 0.1$", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" w l lc 7 lw 6 t "\\footnotesize$y_{\\smallce{C3}} = 0.5$", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" w l lc 8 lw 6 t "\\footnotesize$y_{\\smallce{C3}} = 0.9$", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" w l lc 6 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" w l lc 7 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" w l lc 8 dt (6, 4) lw 6 t ""

    unset ylabel
    set title "\\ce{C4H10} / \\ce{C3H8}"
    set key top right
    set yrange [1:100]
    plot "data/rpm3-zn/OFAST-C4-C3-0.1.dat" w l lc 6 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" w l lc 7 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" w l lc 8 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.9$", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" w l lc 6 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" w l lc 7 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" w l lc 8 dt (6, 4) lw 6 t ""

    set title "\\ce{C4H10} / \\ce{C2H6}"
    set key top center
    set yrange [10:10000]
    plot "data/rpm3-zn/OFAST-C4-C2-0.1.dat" w l lc 6 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" w l lc 7 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" w l lc 8 lw 6 t "\\footnotesize$y_{\\smallce{C4}} = 0.9$", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" w l lc 6 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" w l lc 7 dt (6, 4) lw 6 t "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" w l lc 8 dt (6, 4) lw 6 t ""
unset multiplot
