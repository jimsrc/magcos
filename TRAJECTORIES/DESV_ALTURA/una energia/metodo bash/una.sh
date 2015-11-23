#
# PROGRAMA PARA COMPUTAR DIRECC Y POSICIONES ASINTOTICAS 
# (EN SISTEMA DE COORDENADAS GEO)
#
# ARGUMENTOS (INPUT) :
# 1º : RIGIDEZ DE LA PARTICULA en [GV]
# 2º : Dst (signo "-" incluido) en [nT]
#
# idea de input: rigidez de la pla, dst, pdyn, posicion de arribo
#!/bin/bash
echo "DESVIACION VS ALTURA..."
Energia=$1
Dst=$2
Long_inic=(0.1 5.0 10.0)
pasos=(0.1 0.5 0.5)
Long_fin=(5.0 10.0 50.0)
indices=(0 1 2)
for i in ${indices[*]}
do
	Lo=${Long_inic[$i]}
	paso=${pasos[$i]}
	Lf=${Long_fin[$i]}
	for L in $(seq $Lo $paso $Lf)
	do
		echo -e '/tracking/storeTrajectory 0
		/tracking/verbose 0
		/run/verbose 1
		/MAGCOS/USERLIMIT/SetMaxStepLength .1 Re
		/MAGCOS/USERLIMIT/SetMaxTrajectoryLength 0.7 Re
		/MAGCOS/INTEGRATION/SetPrecision 1e-6 
		/MAGCOS/INTEGRATION/SetG4MaxStep 1e-1 re
		/MAGCOS/INTEGRATION/SetDeltaIntersection 1e-2 re
		/MAGCOS/BFIELD/SetStartDate 2010 1 1 0 0 0
		/MAGCOS/BFIELD/SetGeomagneticFieldModel IGRF
		/MAGCOS/BFIELD/SetExternalFieldModel TSY2001
		/MAGCOS/BFIELD/SetDst '$Dst' nT
		/gps/particle proton
		/MAGCOS/SOURCE/SetPosition GEOID 20. km -35.3 290.7 degree
		/MAGCOS/RIGIDITYVECTOR/Reset
		/MAGCOS/RIGIDITYVECTOR/AddValues '$Energia'. -0.001 1
		/MAGCOS/SOURCE/SetDirection GEOID 0. 0. degree
		/tracking/storeTrajectory 1
		/MAGCOS/DRAW/DrawTrajectory true
		/MAGCOS/DRAW/DrawPoints false
		/MAGCOS/DRAW/SetColour 1 0 0
		/MAGCOS/DRAW/SetCoordinateSystem GEO
		/MAGCOS/INTEGRATION/SelectG4IntegrationMethod
		/MAGCOS/USERLIMIT/SetMaxTrajectoryLength '$L' Re
		/MAGCOS/SCENARIO/ComputeAsymptoticDirections '$Energia'GV_long_trayec='$L'Re.out \n exit' | STATIC_MAGNETOCOSMICS

	done
done
#echo 'exit'
#echo 'exit' | STATIC_MAGNETOCOSMICS > Re_$X
