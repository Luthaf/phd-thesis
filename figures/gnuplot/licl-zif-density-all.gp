set terminal cairolatex pdf colortext size 11.5cm,21.2cm font ",8pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

unset colorbox
set cbrange [0:1]
set xrange [-0.5:0.5]
set yrange [-0.5:0.5]
unset xtics
unset ytics

set multiplot layout 6,3 margins screen 0.01, 0.99, 0.01, 0.99 spacing 0.0
    set palette defined (0 "white", 0.3 "red", 1 "orange")
    set title "\\small 0 mol/L" offset 0,-3
    plot "data/licl-zif/water/density-Ow.ave.dat" u 1:2:3 w image t""

    set title "\\small 1 mol/L"
    plot "data/licl-zif/LiCl-1M/density-Ow.ave.dat" u 1:2:3 w image t""

    set title "\\small 5 mol/L"
    plot "data/licl-zif/LiCl-5M/density-Ow.ave.dat" u 1:2:3 w image t""

    set title "\\small 10 mol/L"
    plot "data/licl-zif/LiCl-10M/density-Ow.ave.dat" u 1:2:3 w image t""

    set title "\\small 15 mol/L"
    plot "data/licl-zif/LiCl-15M/density-Ow.ave.dat" u 1:2:3 w image t""

    set title "\\small 20 mol/L"
    plot "data/licl-zif/LiCl-20M/density-Ow.ave.dat" u 1:2:3 w image t""

    set palette defined (0 "white", 0.3 "blue", 1 "cyan")
    set multiplot next

    set title "\\small 1 mol/L"
    plot "data/licl-zif/LiCl-1M/density-Li.ave.dat" u 1:2:3 w image t""

    set title "\\small 5 mol/L"
    plot "data/licl-zif/LiCl-5M/density-Li.ave.dat" u 1:2:3 w image t""

    set title "\\small 10 mol/L"
    plot "data/licl-zif/LiCl-10M/density-Li.ave.dat" u 1:2:3 w image t""

    set title "\\small 15 mol/L"
    plot "data/licl-zif/LiCl-15M/density-Li.ave.dat" u 1:2:3 w image t""

    set title "\\small 20 mol/L"
    plot "data/licl-zif/LiCl-20M/density-Li.ave.dat" u 1:2:3 w image t""

    set palette defined (0 "white", 0.3 "#005130", 1 "#02c979")
    set multiplot next

    set title "\\small 1 mol/L"
    plot "data/licl-zif/LiCl-1M/density-Cl.ave.dat" u 1:2:3 w image t""

    set title "\\small 5 mol/L"
    plot "data/licl-zif/LiCl-5M/density-Cl.ave.dat" u 1:2:3 w image t""

    set title "\\small 10 mol/L"
    plot "data/licl-zif/LiCl-10M/density-Cl.ave.dat" u 1:2:3 w image t""

    set title "\\small 15 mol/L"
    plot "data/licl-zif/LiCl-15M/density-Cl.ave.dat" u 1:2:3 w image t""

    set title "\\small 20 mol/L"
    plot "data/licl-zif/LiCl-20M/density-Cl.ave.dat" u 1:2:3 w image t""
unset multiplot
