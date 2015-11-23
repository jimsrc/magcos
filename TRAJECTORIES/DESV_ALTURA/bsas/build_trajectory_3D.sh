##
# PROGRAMA PARA COMPUTAR DIRECC Y POSICIONES ASINTOTICAS 
# (EN SISTEMA DE COORDENADAS GEO)
#
# $1 : RIGIDEZ DE LA PARTICULA en [GV]
# $2 : Dst (signo "-" incluido) en [nT]
#
./una.sh $1 $2
#
cat "$1"GV*.out > out_"$1"GV
#
cat out_$1GV | awk '{if($1!="Rl" && $1!="Rigidity") print $3,$4,$5,$6,$7}' > $1GV_dat
#
##
