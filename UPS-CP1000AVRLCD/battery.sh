########################################################
# Battery power level                                  #
# Descripcion: monitoreo de la capacidad de la bateria #
# Autor: Victor J. Mejia Lara                          #
########################################################
#!/bin/bash

case "$1" in
'charge')
	BATTERY=`/usr/sbin/pwrstat -status | /bin/grep "Battery Capacity" | /bin/cut -d ' ' -f 3`
	if [ $? -ne 0 ]; then
		BATTERY=-1
	fi
	expr $BATTERY
	;;
'timeup')
	TIMERE=`pwrstat -status | grep Remaining | cut -d ' ' -f 3`
	if [ $? -ne 0 ]; then
		TIMERE=-1
	fi
	expr $TIMERE
	;;
'status')
	STATUS=`/usr/sbin/pwrstat -status | grep State | cut -d ' ' -f 2`
	if [ $? -ne 0 ]; then
		STATUS=-1
	fi

	echo $STATUS
	;;
*)
	echo "usage $0 charge|timeup"
esac
