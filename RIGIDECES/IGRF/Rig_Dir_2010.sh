set polar
set angle degree

#set bmargin 0
#set ylabel "Latitud [º]"
#set xlabel "Longitud [º]"
#unset xtics
#unset ytics
unset xlabel
unset ylabel
set grid polar
#set cblabel "Cutoff Rigidiy [GV]"
#set cbrange [0:18]
#FILE = './RigVsPos_1992.out'
set label 1 "0GV" at 0,0 font "Arial,10"
set label 2 "20GV" at 0,-20 font "Arial,10"
set label 3 "40GV" at 0,-40 font "Arial,10"
set label 4 "ESTE" at 90,0 font "Arial Bold,12"
set label 5 "OESTE" at -30,0 font "Arial Bold,12"
set label "NORTE" at 0,50 font "Arial Bold,12"
set label "SUR" at 0,-50 font "Arial Bold,12"
#
pl './RigidityVsDirection_2010.out' u ($1==90?$2-90:1/0):4 ti "zen=90º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==87?$2-90:1/0):4 ti "zen=87º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==84?$2-90:1/0):4 ti "zen=84º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==63?$2-90:1/0):4 ti "zen=63º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==54?$2-90:1/0):4 ti "zen=54º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==30?$2-90:1/0):4 ti "zen=30º" w l lw 4, './RigidityVsDirection_2010.out' u ($1==3?$2-90:1/0):4 ti "zen=3º" w l lw 4
