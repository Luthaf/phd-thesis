set terminal cairolatex pdf colortext size 13.4cm,15cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key at graph 0.45,0.9
set logscale x
set xrange [1e-3:1]
set xtics format "\\small $10^{%T}$"
set yrange [0:10]
set ytics 2 format "\\small %g"

set margin 2,0,2.5,0

set label "OFAST" at screen 0.26,0.98
set label "IAST" at screen 0.72,0.98

set label "\\ce{C4H10} / \\ce{C3H8}" rotate at screen 0.02,0.73
set label "\\ce{C3H8} / \\ce{C2H6}" rotate at screen 0.02,0.44
set label "\\ce{C4H10} / \\ce{C2H6}" rotate at screen 0.02,0.14

set multiplot
    set size 0.4,0.3
    set origin 0.1,0.65
    set ylabel "uptake (mol/mol)" offset 2
    set key samplen -1 textcolor variable
    plot "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.9$", \
         "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.65
    unset ylabel
    set key samplen 3 textcolor "black"
    plot "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C4H10}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C3H8}$"

    set origin 0.1,0.35
    set key samplen -1 textcolor variable
    set ylabel "uptake (mol/mol)" offset 2
    plot "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C3H8} = 0.1$", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C3H8} = 0.5$", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C3H8} = 0.9$", \
         "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.35
    unset ylabel
    set key samplen 3 textcolor "black"
    plot "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C3H8}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C2H6}$"

    set origin 0.1,0.05
    set xlabel "pressure / atm" offset 1
    set ylabel "uptake (mol/mol)" offset 2
    set key samplen -1 textcolor variable
    plot "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C4H10} = 0.9$", \
         "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.05
    unset ylabel
    set key samplen 3 textcolor "black"
    plot "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C4H10}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C2H6}$"
unset multiplot
