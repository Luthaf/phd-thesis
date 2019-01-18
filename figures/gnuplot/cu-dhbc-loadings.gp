set terminal cairolatex pdf colortext size 13cm,18cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key above height 3 maxrow 1 font ",8pt"
set xrange [0:80]
set xtics 20
set yrange [0:3]
set ytics 1

set multiplot layout 3,2
    set ylabel "uptake / (mol/mol)"
    set key samplen -1 textcolor variable title "\\ce{CO2} / \\ce{O2} (OFAST)"
    plot "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CO2} = 0.1$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{CO2} = 0.5$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{CO2} = 0.9$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{CO2} / \\ce{O2} (IAST)"
    plot "data/cu-dhbc/IAST-CO2-O2-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/IAST-CO2-O2-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{CO2}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{O2}$"

    set key samplen -1 textcolor variable title "\\ce{CH4} / \\ce{O2} (OFAST)"
    set ylabel "uptake / (mol/mol)"
    plot "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.1$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.5$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.9$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{CH4} / \\ce{O2} (IAST)"
    plot "data/cu-dhbc/IAST-CH4-O2-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/IAST-CH4-O2-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{CH4}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{O2}$"

    set xlabel "pressure / atm"
    set ylabel "uptake / (mol/mol)"
    set key samplen -1 textcolor variable title "\\ce{CH4} / \\ce{CO2} (OFAST)"
    plot "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.1$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.5$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize $y_\\smallce{CH4} = 0.9$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    unset ylabel
    set key samplen 4 textcolor "black" title "\\ce{CH4} / \\ce{CO2} (IAST)"
    plot "data/cu-dhbc/IAST-CH4-CO2-0.1.dat" u 1:($3+$4) w l lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.5.dat" u 1:($3+$4) w l lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.9.dat" u 1:($3+$4) w l lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.1.dat" u 1:3 w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.5.dat" u 1:3 w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.9.dat" u 1:3 w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.1.dat" u 1:4 w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.5.dat" u 1:4 w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/IAST-CH4-CO2-0.9.dat" u 1:4 w l dt 4 lc 6 lw 8 title "", \
         -1 w l dt 2 lc 8 lw 6 title "$n_\\smallce{CH4}$", \
         -1 w l dt 4 lc 8 lw 6 title "$n_\\smallce{CO2}$"
unset multiplot
