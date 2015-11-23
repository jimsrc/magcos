set title "Direcc. Asintóticas para McMurdo"
unset key
set grid
unset yzeroaxis
#
set xlabel "Geographic Longitude"
set ylabel "Geographic Latitude"
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
set label 1 "*" at 166.60,-77.90 font "Arial,20"
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -56,-64 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "80GV" at -69,4 font "Arial,12"
#set label 6 "50GV" at -42,15 font "Arial,12"
#set label 7 "30GV" at -9,28 font "Arial,12"
#set label 8 "20GV" at 10,50 font "Arial,12"

plot 'world.dat' with lines lt 9 ti ""
#
FILE_10000="./AsymDirec_zen00_10.0range.out"   # 10.000 GV
FILE_01000="./AsymDirec_zen00_1.0range.out"    # 01.000 GV
FILE_00100="./AsymDirec_zen00_0.1range.out"    # 00.100 GV
FILE_00010="./AsymDirec_zen00_0.01range.out"   # 00.010 GV
FILE_00001="./AsymDirec_zen00_0.001range.out"  # recoger este file de hegea!
#
repl FILE_10000 u 4:3:(log10($1)) lw 4 lt pal noti
repl FILE_01000 u 4:3:(log10($1)) lw 4 lt pal noti
repl FILE_00100 u 4:3:(log10($1)) lw 4 lt pal noti
repl FILE_00010 u 4:3:(log10($1)) lw 4 lt pal noti


#repl "./AsymDirec_ZEN00_AZIM00.out" u 4:3:1 lw 4 lt pal
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
