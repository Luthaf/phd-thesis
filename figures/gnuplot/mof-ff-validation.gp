set terminal cairolatex pdf colortext size 13cm,10cm font ",9pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

# set terminal pdfcairo size 13cm,10cm font ",9pt"
# OUTPUT = system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".pdf"
# set output OUTPUT

set key at graph 0.98,0.4 samplen 0 spacing 1.7

set multiplot layout 2,2
    set label 1 "(a)" at graph 0.1,0.85
    set xrange [1:2.1]
    set xtics 0.2
    set xlabel "\\footnotesize DFT bond lengths ($\\AA$)"
    set yrange [1:2.1]
    set ytics 0.2
    set ylabel "\\footnotesize MOF-FF bond lengths ($\\AA$)" offset -1
    plot x w l lw 3 lc "grey" t"", \
         "data/mof-ff/bonds-CH3.dat" u 2:3 w p lc "#a4c3dc" pt 7 t "\\ZIFCH3", \
         "data/mof-ff/bonds-Cl.dat"  u 2:3 w p lc "#6ca798" pt 9 t "\\ZIFCl", \
         "data/mof-ff/bonds-Br.dat"  u 2:3 w p lc "#ca8b7b" pt 15 t "\\ZIFBr"


    set label 1 "(b)"
    set xrange [100:140]
    set xtics 10
    set xlabel "\\footnotesize DFT angles (°)"
    set yrange [100:140]
    set ytics 10
    set ylabel "\\footnotesize MOF-FF angles (°)"
    plot x w l lw 3 lc "grey" t"", \
         "data/mof-ff/angles-CH3.dat" u 2:3 w p lc "#a4c3dc" pt 7 t "", \
         "data/mof-ff/angles-Cl.dat"  u 2:3 w p lc "#6ca798" pt 9 t "", \
         "data/mof-ff/angles-Br.dat"  u 2:3 w p lc "#ca8b7b" pt 15 t ""


    set label 1 "(c)"
    set xrange [-200:200]
    set xtics 100
    set xlabel "\\footnotesize DFT dihedral angles (°)"
    set yrange [-200:200]
    set ytics 100
    set ylabel "\\footnotesize MOF-FF dihedral angles (°)"
    plot x w l lw 3 lc "grey" t"", \
         "data/mof-ff/dihedrals-CH3.dat" u 2:3 w p lc "#a4c3dc" pt 7 t "", \
         "data/mof-ff/dihedrals-Cl.dat"  u 2:3 w p lc "#6ca798" pt 9 t "", \
         "data/mof-ff/dihedrals-Br.dat"  u 2:3 w p lc "#ca8b7b" pt 15 t ""

    set label 1 "(d)"
    set xrange [0:2000]
    set xtics 500
    set xlabel "\\footnotesize DFT vibrations ($cm^{-1}$)"
    set yrange [0:2000]
    set ytics 500
    set ylabel "\\footnotesize MOF-FF vibrations ($cm^{-1}$)"
    plot x w l lw 3 lc "grey" t"", \
         "data/mof-ff/vibrations-CH3.dat" u 2:3 w p lc "#a4c3dc" pt 7 t "", \
         "data/mof-ff/vibrations-Cl.dat"  u 2:3 w p lc "#6ca798" pt 9 t "", \
         "data/mof-ff/vibrations-Br.dat"  u 2:3 w p lc "#ca8b7b" pt 15 t ""

unset multiplot
