#
# Script para extraer el valor Rc de cada penumbra.
# Ese valor esta escrito en el archivo_data de la
# penumbra. No es deducido.
#
# Argumentos:
# $1 : Dst (incluyendo "-").
# Por ejemplo:
# ./extraer_rc.sh "-100.0"
#
horas=(0 2 4 6 8 10 12 14 16 18 20 22)
indices_horas=(0 1 2 3 4 5 6 7 8 9 10 11)

for i in ${indices_horas[*]}
do
	echo ${horas[i]}
	cat 'Dst='$1'_hr='${horas[i]}'_Rup=1.00GV_max_trajec=1000.0Re.out' | awk 'END{print $4}'
done
