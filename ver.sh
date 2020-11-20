clear
opc=0
while [ $opc -ne 5 ]
do
echo -n "
1) Historial de pagos
2) Datos de los propietarios
3) Deudores
4) Pagos realizados
5) Regresar al menu principal
Elige el archivo que desea ver: "
read opc


case $opc in
	
	1)	echo 
	       	echo ---- Historial de pagos ----
	        echo 	
		cat historialpagos.txt
		;;

	2)	echo
		echo ---- Datos de propietarios ---- 
		echo
		cat datos.txt
		;;
    3)
        echo
		echo ---- Deudores ----
		echo
		ls Deudores
		;;
	
	  4)
	   echo
		echo ---- Pagos realizados ----
		echo
		cat pagos.txt
		;;
	5)
	 echo "Sera redireccionado al menu principal..."
	 sleep 1
	 exit ;;	

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