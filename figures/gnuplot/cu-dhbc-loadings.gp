set terminal cairolatex pdf colortext size 13.4cm,16cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set key above height 0 maxrow 1 font ",4pt"
set xrange [0:80]
set xtics 20 format "\\small %g"
set yrange [0:3]
set ytics 1 format "\\small %g"

set margin 2,0,2.5,2

set label "OFAST" at screen 0.26,0.98
set label "IAST" at screen 0.72,0.98

set label "\\ce{CO2} / \\ce{O2}" rotate at screen 0.02,0.75
set label "\\ce{CH4} / \\ce{O2}" rotate at screen 0.02,0.48
set label "\\ce{CH4} / \\ce{CO2}" rotate at screen 0.02,0.14

set multiplot
    set size 0.4,0.3
    set origin 0.1,0.65
    set ylabel "uptake / (mol/mol)" offset 2
    set key samplen -1 textcolor variable
    plot "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CO2} \\kern-0.5ex= 0.1$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize ~~$y_\\smallce{CO2} \\kern-0.5ex= 0.5$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize ~~$y_\\smallce{CO2} \\kern-0.5ex= 0.9$", \
         "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CO2-O2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.65
    unset ylabel
    set key samplen 9 textcolor "black"
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
         -1 w l dt 4 lc 8 lw 6 title "~~~~~~~~$n_\\smallce{O2}$"

    set origin 0.1,0.35
    set key samplen -1 textcolor variable
    set ylabel "uptake / (mol/mol)" offset 2
    plot "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CH4} \\kern-0.5ex= 0.1$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize ~~~~$y_\\smallce{CH4} \\kern-0.5ex= 0.5$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize ~~~~$y_\\smallce{CH4} \\kern-0.5ex= 0.9$", \
         "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-O2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.35
    unset ylabel
    set key samplen 9 textcolor "black"
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
         -1 w l dt 4 lc 8 lw 6 title "~~~~~~~~$n_\\smallce{O2}$"

    set origin 0.1,0.05
    set xlabel "pressure / atm"
    set ylabel "uptake / (mol/mol)" offset 2
    set key samplen -1 textcolor variable
    plot "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:3 w l lc 1 lw 6 title "\\footnotesize $y_\\smallce{CH4} \\kern-0.5ex= 0.1$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:3 w l lc 2 lw 6 title "\\footnotesize ~~~~$y_\\smallce{CH4} \\kern-0.5ex= 0.5$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:3 w l lc 6 lw 6 title "\\footnotesize ~~~~$y_\\smallce{CH4} \\kern-0.5ex= 0.9$", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:($3*$4) w l dt 2 lc 1 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:($3*$4) w l dt 2 lc 2 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:($3*$4) w l dt 2 lc 6 lw 6 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.1.dat" u 1:($3*(1 - $4)) w l dt 4 lc 1 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.5.dat" u 1:($3*(1 - $4)) w l dt 4 lc 2 lw 8 title "", \
         "data/cu-dhbc/OFAST-CH4-CO2-0.9.dat" u 1:($3*(1 - $4)) w l dt 4 lc 6 lw 8 title ""

    set origin 0.55,0.05
    unset ylabel
    set key samplen 9 textcolor "black"
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
         -1 w l dt 4 lc 8 lw 6 title "~~~~~~~~$n_\\smallce{CO2}$"
unset multiplot
