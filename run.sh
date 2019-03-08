#!/bin/sh

set -e 

echo "··························································································"
echo "SOFISLAB - MARTIN VILCHE"
echo "··························································································"

if [ -z "$TIMEZONE" ]; then
echo "···································································································"
echo "VARIABLE TIMEZONE NO SETEADA - INICIANDO CON VALORES POR DEFECTO"
echo "POSIBLES VALORES: America/Montevideo | America/El_Salvador"
echo "···································································································"
else
echo "···································································································"
echo "TIMEZONE SETEADO ENCONTRADO: " $TIMEZONE
echo "···································································································"
echo "SETENADO TIMEZONE"
cat /usr/share/zoneinfo/$TIMEZONE > /etc/localtime

if [ $? -eq 0 ]; then
echo "···································································································"
echo "TIMEZONE SETEADO CORRECTAMENTE"
echo "···································································································"
else

echo "···································································································"
echo "ERROR AL SETEAR EL TIMEZONE - SALIENDO"
echo "···································································································"
exit 1
fi
fi

if [ -z "$JAVA_OPTS" ]; then
echo "···································································································"
echo "VARIABLE JAVA_OPTS NO SETEADA - INICIANDO CON VALORES POR DEFECTO"
echo "PUEDE DEFINIR LA VARIABLE JAVA_OPTS PARA SETEAR PARAMETROS DE JAVA"

JAVA_OPTS="-XX:+UseParallelGC -Dfile.encoding=UTF8 -XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -XX:+ExitOnOutOfMemoryError -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"

echo "···································································································"
else
echo "........................."
echo "VARIABLE JAVA_OPTS SETEADA"
echo "SETEANDO LOS PARAMETROS: " $JAVA_OPTS
echo "........................."
fi

echo "···································································································"
echo "CONFIGURACIONES SETEADAS - INICIANDO SERVICIO......"
echo "···································································································"
exec java $JAVA_OPTS -jar "$@"


