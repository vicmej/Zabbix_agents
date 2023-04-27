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
* **kn.battery.charge[status]**_, Regresa el estado de la batería, que se obtiene de _State_.
* **kn.battery.charge[charge]**_, Regresa el porcentaje de carga de la batería_.
* **kn.battery.charge[timeup]**_, Regresa el tiempo de carga restante ee la batería_.
