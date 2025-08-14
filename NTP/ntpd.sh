##########################################################
# NTP server                                             #
# Descripcion: Monitoreo del estado del servidor de hora #
# Autor: Victor J. Mejia Lara                            #
##########################################################
#!/bin/bash

if [ -e /var/run/ntpd.pid ]; then
	# El servidor NTP esta activo
	expr 1
else
	# El servidor NTP esta inactivo
	expr 0
fi
