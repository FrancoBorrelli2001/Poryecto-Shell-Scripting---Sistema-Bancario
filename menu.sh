#!/bin/bash
opcion=0
sh generardeudores.sh
while [ $opcion -ne 5 ]
do
clear
tput cup 2 120
date +%D
tput cup 8 30
echo "Para escoger una de las opciones, simlpemente ingrese el numero correspondiente"
echo " "
        tput cup 11 55
echo " 1) Ingresar nuevo pago"
tput cup 13 55
echo " 2) Emitir estado de cuenta"
tput cup 15 55
echo " 3) Consultar estado de pagos"
tput cup 17 55
echo " 4) Ver archivo "
tput cup 19 55
echo "5) Salir"
tput cup 20 55
echo " Opcion: "
tput cup 20 64
read opcion

case $opcion in
1) sh pago.sh;;
2) sh estado.sh;;
3) sh consulta.sh;;
4) sh ver.sh;;
5) exit;;

*)   
       	clear
	tput cup 58 2
        tput setab 1
        echo "opcion incorrecta"
        tput sgr0
        echo ""
	sleep 1;;
esac
done

