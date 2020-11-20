#!/bin/bash
clear
echo ---INGRESANDO PAGO---
fecha=`date +%d`
pago=0
monto=0
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


read -p "Ingrese el numero de apartamento: " apartamento

mes=0
for (( i=1; i<=11; i++))
do
	let y=i+1
	montomes=`grep "$apartamento" historialpagos.txt | cut -d: -f$y`

	let mes$i=$montomes
	let pagar="$pagar"+"$montomes"
done
	



if [ $pagar -ge 1 ]
then
echo -n "
---FORMA DE PAGO---

1) Efectivo
2) Deposito bancario
Ingrese la opcion deseada: "
read efectivoodeposito

case $efectivoodeposito in
	1) E=1
		D=0;;
	2) D=1
		E=0;;
	*) echo "Opcion incorrecta "
esac


estemes=`grep $apartamento historialpagos.txt | cut -d: -f12`
if [ $fecha -le 10 ]
then
	if [ $estemes -eq 2100 ]    
	then
		echo "Este mes debe pagar 1995 " 
		let pagar="$pagar"-105
	fi
else
	echo "Este mes debe pagar 2100 "
fi


echo -n "

"Usted debe: " $pagar

1) Pagar todo
2) Pagar por mes
Ingrese la opcion deseada: "
read formapago

case $formapago in
	1)

	echo "

		Su estado de cuenta ya esta al dia "
	       	monto=$pagar		
grep -w $apartamento historialpagos.txt > aux.txt
viejo=`cat aux.txt`





														nuevo="$apartamento"":0:0:0:0:0:0:0:0:0:0:0"

														sed -i 's/'$viejo'/'$nuevo'/p' historialpagos.txt

														

												uniq historialpagos.txt  > auxiliar.txt
														uniq auxiliar.txt > historialpagos.txt
														rm aux.txt											
														rm auxiliar.txt
														echo "$apartamento":"$E":"$D":"$pagar" >> pagos.txt
														p=`grep "$apartamento" pagos.txt | cut -d: -f2`
														if [ $p -eq 1 ]
														then
														echo " El pago a sido en efectivo"
													    sleep 1
														else
														"El pago a sido por Deposito bancario" 
														sleep 1
													    fi;;




2)
clear
mes=0
for (( i=1; i<=11; i++))
do
	let y=i+1
	montomes=`grep "$apartamento" historialpagos.txt | cut -d: -f$y`

	let mes$i=$montomes
done
	  
echo "El estado del apartamento es el siguiente:"   
echo -n $apartamento:" Mes 1:"$mes1", Mes 2:"$mes2", Mes 3:"$mes3", Mes 4:"$mes4," Mes 5:"$mes5," Mes 6:"$mes6," Mes 7:"$mes7," Mes 8:"$mes8," Mes 9:"$mes9," Mes 10:"$mes10," Mes 11:"$mes11"

Ingrese el mes que desea pagar:"

read mes

let mes="$mes"+1

camponuevo=`grep -w $apartamento historialpagos.txt | cut -d: -f$mes`
var="$apartamento":"$camponuevo":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11"    

if [ $mes -eq 12 ]

then

if [ $fecha -le 10 ]
then 
  let camponuevo="$camponuevo"-105
else
	echo "No tiene descuento"
     	sleep 1
fi
fi



echo "Este mes tienes que pagar " $camponuevo " Cuanto  desea pagar?"
read pago
let camponuevo=$camponuevo-$pago
if [ $camponuevo -le 0 ]
then 
	echo "Cantidad de dinero ingresada no valida"

else
	if [ $mes -eq 2 ]
    then
        nvar="$apartamento":"$camponuevo":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/p' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
fi
if [ $mes -eq 3 ]
    then
        nvar="$apartamento":"$mes1":"$camponuevo":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
       fi
       if [ $mes -eq 4 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$camponuevo":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 5 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$camponuevo":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 6 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$camponuevo":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 7 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$camponuevo":"$mes7":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 8 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$camponuevo":"$mes8":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
    fi
    if [ $mes -eq 9 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$camponuevo":"$mes9":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 10 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$camponuevo":"$mes10":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 11 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$camponuevo":"$mes11" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt
   fi
   if [ $mes -eq 12 ]
    then
        nvar="$apartamento":"$mes1":"$mes2":"$mes3":"$mes4":"$mes5":"$mes6":"$mes7":"$mes8":"$mes9":"$mes10":"$camponuevo" 
       sed -i 's/'$var'/'$nvar'/g' historialpagos.txt
       uniq historialpagos.txt  > auxiliar.txt
       uniq auxiliar.txt > historialpagos.txt
       rm auxiliar.txt

 fi
fi

echo "$apartamento":"$E":"$D":"$pagar" >> pagos.txt
														p=`grep "$apartamento" pagos.txt | cut -d: -f2`
														if [ $p -eq 1 ]
														then
														echo " El pago a sido en efectivo"
													    sleep 1
														else
														"El pago a sido por Deposito bancario" 
														sleep 1
													    fi;;





*)echo opcion erronea


esac

echo  "
Volviendo al menu principal.."

else
	echo -n "El apartamento $apartamento no debe nada"
	sleep 1
fi


exit
