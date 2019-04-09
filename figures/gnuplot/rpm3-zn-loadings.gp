set terminal cairolatex pdf colortext size 13.4cm,18cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key above height 3 maxrow 1 font ",8pt"
set logscale x
set xrange [1e-3:1]
set xtics format "\\footnotesize $10^{%T}$"
set yrange [0:10]
set ytics 2


set multiplot layout 3,2
    set ylabel "uptake / (mol/mol)"
    set key samplen -1 textcolor variable title "\\ce{C4H10} / \\ce{C3H8} (OFAST)"
    plot "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.9$", \
         "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C3-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{C4H10} / \\ce{C3H8} (IAST)"
    plot "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C3H8-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C4}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C3}$"

    set key samplen -1 textcolor variable title "\\ce{C3H8} / \\ce{C2H6} (OFAST)"
    set ylabel "uptake / (mol/mol)"
    plot "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C3} = 0.1$", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C3} = 0.5$", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C3} = 0.9$", \
         "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C3-C2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{C3H8} / \\ce{C2H6} (IAST)"
    plot "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C3H8-C2H6-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C3}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C2}$"

    set xlabel "pressure / atm"
    set ylabel "uptake / (mol/mol)"
    set key samplen -1 textcolor variable title "\\ce{C4H10} / \\ce{C2H6} (OFAST)"
    plot "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.1$", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.5$", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{C4} = 0.9$", \
         "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/OFAST-C4-C2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{C4H10} / \\ce{C2H6} (IAST)"
    plot "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/rpm3-zn/IAST-C4H10-C2H6-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{C4}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{C2}$"
unset multiplot
