#!/bin/bash
clear

total=0
echo "---- EMITIR ESTADOS DE CUENTA ----"

read -p "Ingrese el numero de apartamento: " apartamento


if [ "$apartamento" -le 16 ]
then

nombre=`grep $apartamento datos.txt | cut -d: -f2`
cedula=`grep $apartamento datos.txt | cut -d: -f3` 

echo "El apartamento pertenece a: " $nombre
echo "Cedula: " $cedula

estemes=`grep "$apartamento" historialpagos.txt | cut -d: -f11`

if [ "$estemes" == 2100 ]
then
	echo "
	Este mes debe 2100 
	"
else
	echo "
	Este mes esta pago 
	"
fi

mes1=0
mes2=0
mes3=0
mes4=0
mes5=0
mes6=0
mes7=0
mes8=0
mes9=0
mes10=0
mes11=0
total=0
for (( i=1; i<=11; i++))
do
	let y=i+1
	montomes=`grep "$apartamento" historialpagos.txt | cut -d: -f$y`

	let mes$i=$montomes
	let total="$total"+"$montomes"
done
		if [ "$total" -ge 8400 ]
		then
			touch Deudores/Deudores$apartamento.txt
			
		fi

                           
echo -n $apartamento:" Mes 1:"$mes1", Mes 2:"$mes2", Mes 3:"$mes3", Mes 4:"$mes4," Mes 5:"$mes5," Mes 6:"$mes6," Mes 7:"$mes7," Mes 8:"$mes8," Mes 9:"$mes9," Mes 10:"$mes10," Mes 11:"$mes11," TOTAL:"$total > estadocuenta.txt
 
	estadodecuenta=`grep $apartamento estadocuenta.txt`
	
echo "Estado de cuenta: " $estadodecuenta

echo -n "
Que desea hacer ahora?
1. Regresar al menu principal
2. salir

Ingrese la opcion deseada: "
read opc

case $opc in
	1) principal.sh;;
	2) echo Saliendo;;
	*) Opcion incorrecta
esac
else
	clear
	tput cup 58 2
        tput setab 1
        echo "Apartamento incorrecto"
        tput sgr0
        echo ""
	sleep 1
	exit
fi




