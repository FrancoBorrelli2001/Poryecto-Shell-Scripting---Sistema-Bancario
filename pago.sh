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
pagar=0
while [ $pagar -eq 0 ]

do
	


read -p "Ingrese el numero de apartamento: " apartamento


	mes=0
for (( i=1; i<=11; i++))
do
	let y=i+1
	montomes=`grep "$apartamento" historialpagos.txt | cut -d: -f$y`

	let mes$i=$montomes
	let pagar="$pagar"+"$montomes"
done

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

campo=`grep -w $apartamento historialpagos.txt | cut -d: -f$mes`

if [ $campo -gt 0 ]
then

if [ $mes -eq 12 ]

then

if [ $fecha -le 10 ]
then 
  let campo="$campo"-105
else
	echo "No tiene descuento ya que el pago no fue en la fecha debida"
     	sleep 1
fi
fi



echo "Este mes tienes que pagar " $campo " Cuanto  desea pagar?"
     
read pagar

let campo=$campo-$pagar
if [ $campo -gt 0 ]
then 
	mes11=8
    sed -e "s/$mes11/$campo/" historialpagos.txt
	uniq historialpagos.txt  > auxiliar.txt
	uniq auxiliar.txt > historialpagos.txt
else
 	echo "Cantidad de dinero ingresada no valida"

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
													    fi
													else
														echo "El mes ya ha sido pago"
														sleep 1
													fi
													    
													    ;;





*)echo opcion erronea


esac

echo  "
Volviendo al menu principal.."

else
	echo -n "El apartamento $apartamento no debe nada"
	sleep 1
fi


exit
