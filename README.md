# Zabbix_agents
Configuraciones de varios agentes de zabbix para cada servicio o proposito.

# FreeRaidus
## kn.freeradius.conf
Agente zabbix para detectar el estado del servicio de FreeRadius.
* **kn.freeradius.status**_, sstado del servicio_

# OpenVPN
## kn.openvpn.conf
Agente zabbix para detectar el estado del servicio o información relevante sobre el log.
* **kn.openvpn.count**_, muestra el total de usuarios conectados._
* **kn.openvpn.status**_, verifica que este en ejecución el proceso._

# UPS-CP1000AVRLCD
## kn.battery.conf
Agente zabbix para monitorear el estado de la bateria CyberPower CP1000AVRLCD a traves del comando _pwrstat -status__.
* **kn.battery.charge[status]**_, Regresa el estado de la batería, que se obtiene de State_.
* **kn.battery.charge[charge]**_, Regresa el porcentaje de carga de la batería_.
* **kn.battery.charge[timeup]**_, Regresa el tiempo de carga restante ee la batería_.

# NTP
## kn.ntp.status.conf
Agente zabbix para monitorear el estado del servidor de hora.
* **kn.ntp.conf** Regresa el estado (activo/inactivo) del servidor ntp.

# NFS
## kn.nfs.mount.conf
Agente zabbix para monitorear la desconexión del punto de montaje NFS y volver a montarlo en caso de presentar el error de **state file handle**

* **kn.nfs.mount[ _$1_ ]** Si presenta el error, desmonta y monta el directorio indicado en el primer parámetro ($1).
