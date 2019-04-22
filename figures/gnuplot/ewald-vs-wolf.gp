set terminal cairolatex pdf colortext size 13.4cm,10cm font ",10pt"
set tics nomirror

OUTPUT = "../" . system("echo ". ARG0 . " | cut -d '.' -f1 " ) . ".tex"
set output OUTPUT

set margin 5,0,3,3
set key at screen 0.86,0.53 maxrows 3
set xtics 2

set multiplot
    set size 0.31,0.5
    set origin 0.02,0.5
    set yrange [0:12]
    set ytics 3
    set ylabel "g(r)"
    set title "Na - Na"
    plot "data/ewald-vs-wolf/domino-ewald-crystal-md-rdf-Na-Na.dat" w l lw 2 lc 3 t "\\footnotesize Domino -- Ewald -- MD", \
         "data/ewald-vs-wolf/domino-ewald-crystal-mc-rdf-Na-Na.dat" w l lw 2 lc 6 t "\\footnotesize Domino -- Ewald -- MC", \
         "data/ewald-vs-wolf/lammps-ewald-crystal-md-rdf-Na-Na.dat" w l lw 2 lc "#611a99" t "\\footnotesize LAMMPS -- Ewald -- MD", \
         "data/ewald-vs-wolf/domino-wolf-crystal-md-rdf-Na-Na.dat"  w l lw 2 lc "#1adb6d" t "\\footnotesize Domino -- Wolf -- MD", \
         "data/ewald-vs-wolf/domino-wolf-crystal-mc-rdf-Na-Na.dat"  w l lw 2 lc 2 t "\\footnotesize Domino -- Wolf -- MC", \
         "data/ewald-vs-wolf/lammps-wolf-crystal-md-rdf-Na-Na.dat"  w l lw 2 lc "#0d5b2e" t "\\footnotesize LAMMPS -- Wolf -- MD"

    unset ylabel
    set origin (1/3.+0.01),0.5
    set title "Na - Cl"
    plot "data/ewald-vs-wolf/domino-ewald-crystal-md-rdf-Na-Cl.dat" w l lw 2 lc 3 t "", \
         "data/ewald-vs-wolf/domino-ewald-crystal-mc-rdf-Na-Cl.dat" w l lw 2 lc 6 t "", \
         "data/ewald-vs-wolf/lammps-ewald-crystal-md-rdf-Na-Cl.dat" w l lw 2 lc "#611a99" t "", \
         "data/ewald-vs-wolf/domino-wolf-crystal-md-rdf-Na-Cl.dat"  w l lw 2 lc "#1adb6d" t "", \
         "data/ewald-vs-wolf/domino-wolf-crystal-mc-rdf-Na-Cl.dat"  w l lw 2 lc 2 t "", \
         "data/ewald-vs-wolf/lammps-wolf-crystal-md-rdf-Na-Cl.dat"  w l lw 2 lc "#0d5b2e" t ""

    set origin 2/3.,0.5
    set title "Cl - Cl"
    plot "data/ewald-vs-wolf/domino-ewald-crystal-md-rdf-Cl-Cl.dat" w l lw 2 lc 3 t "", \
         "data/ewald-vs-wolf/domino-ewald-crystal-mc-rdf-Cl-Cl.dat" w l lw 2 lc 6 t "", \
         "data/ewald-vs-wolf/lammps-ewald-crystal-md-rdf-Cl-Cl.dat" w l lw 2 lc "#611a99" t "", \
         "data/ewald-vs-wolf/domino-wolf-crystal-md-rdf-Cl-Cl.dat"  w l lw 2 lc "#1adb6d" t "", \
         "data/ewald-vs-wolf/domino-wolf-crystal-mc-rdf-Cl-Cl.dat"  w l lw 2 lc 2 t "", \
         "data/ewald-vs-wolf/lammps-wolf-crystal-md-rdf-Cl-Cl.dat"  w l lw 2 lc "#0d5b2e" t ""

    set yrange [0:4]
    set ytics 1
    set xlabel "r (\\AA)"
    set ylabel "g(r)"
    set origin 0.02,0.0
    unset title
    plot "data/ewald-vs-wolf/domino-ewald-molten-md-rdf-Na-Na.dat" w l lw 2 lc 3 t "", \
         "data/ewald-vs-wolf/domino-ewald-molten-mc-rdf-Na-Na.dat" w l lw 2 lc 6 t "", \
         "data/ewald-vs-wolf/lammps-ewald-molten-md-rdf-Na-Na.dat" w l lw 2 lc "#611a99" t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-md-rdf-Na-Na.dat"  w l lw 2 lc "#1adb6d" t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-mc-rdf-Na-Na.dat"  w l lw 2 lc 2 t "", \
         "data/ewald-vs-wolf/lammps-wolf-molten-md-rdf-Na-Na.dat"  w l lw 2 lc "#0d5b2e" t ""

    unset ylabel
    set origin (1/3. + 0.01),0.0
    plot "data/ewald-vs-wolf/domino-ewald-molten-md-rdf-Na-Cl.dat" w l lw 2 lc 3 t "", \
         "data/ewald-vs-wolf/domino-ewald-molten-mc-rdf-Na-Cl.dat" w l lw 2 lc 6 t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-md-rdf-Na-Cl.dat"  w l lw 2 lc "#1adb6d" t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-mc-rdf-Na-Cl.dat"  w l lw 2 lc 2 t "", \
         "data/ewald-vs-wolf/lammps-ewald-molten-md-rdf-Na-Cl.dat" w l lw 2 lc "#611a99" t "", \
         "data/ewald-vs-wolf/lammps-wolf-molten-md-rdf-Na-Cl.dat"  w l lw 2 lc "#0d5b2e" t ""

    set origin 2/3.,0.0
    plot "data/ewald-vs-wolf/domino-ewald-molten-md-rdf-Cl-Cl.dat" w l lw 2 lc 3 t "", \
         "data/ewald-vs-wolf/domino-ewald-molten-mc-rdf-Cl-Cl.dat" w l lw 2 lc 6 t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-md-rdf-Cl-Cl.dat"  w l lw 2 lc "#1adb6d" t "", \
         "data/ewald-vs-wolf/domino-wolf-molten-mc-rdf-Cl-Cl.dat"  w l lw 2 lc 2 t "", \
         "data/ewald-vs-wolf/lammps-ewald-molten-md-rdf-Cl-Cl.dat" w l lw 2 lc "#611a99" t "", \
         "data/ewald-vs-wolf/lammps-wolf-molten-md-rdf-Cl-Cl.dat"  w l lw 2 lc "#0d5b2e" t ""
unset multiplot
