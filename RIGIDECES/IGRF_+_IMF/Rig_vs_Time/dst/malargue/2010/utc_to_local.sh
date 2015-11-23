#
# Script para convertir un archivo con la 
# 1ra columna de tiempos en UTC a hora local (GMT-3)
#
# INPUT:
# $1 : nombre del file a convertir
# $2 : el Dst (sin "nT")
# 
# ej.:
# ./utc_to_local.sh RigVsTime_Dst\=0_RES.out 0
#

# 
# defino el "offset" tal que queremos obtener 
# el horario 'UTC - offset':
#
una_hora=3600  # 3600=1hr
offset=3*$una_hora	# Malargue --> 'UTC-3'
#
echo $offset
cat $1 | awk '{if($1>='$offset') {print $1-'$offset', $2, $3, $4} if($1<'$offset') {print $1+86400-'$offset', $2, $3, $4}}' > aux_file1

sort -n aux_file1 > aux_file2

# 
# corrige lo q debe decir en las primeras 3 columnas
#
cat aux_file2 | awk '{if($1!=-'$offset') {print $1, $2, $3, $4} if($1==-'$offset') {print "# GEO", $2, $3, $4}}' > local_dst"$2".dat

# borrando dummies
rm aux_file1
rm aux_file2
