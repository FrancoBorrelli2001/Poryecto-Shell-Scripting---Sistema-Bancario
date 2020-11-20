#!/bin/bash
clear
rm Deudores/Deudor*.txt 2>> /dev/null
apa1=001
apa2=002
apa3=003
apa4=004
apa5=005
apa6=006
apa7=007
apa8=008
apa9=009
apa10=010
apa11=011
apa12=012
apa13=013
apa14=014
apa15=015
apa16=016


i=2
while [ $i -le 12 ]
do
	debe=`grep $apa1 historialpagos.txt | cut -d: -f$i`
	if [ "$debe" == 2100 ]
	then
		let monto="$monto"+1
	else
		let monto="$monto"+0
	fi
	let i=i+1

done
let pag1="$monto"*2100

a=2
while [ $a -le 12 ]
do
	debe=`grep $apa2 historialpagos.txt | cut -d: -f$a`
	if [ "$debe" == 2100 ]
	then
		let montt="$montt"+1
	else
		let montt="$montt"+0
	fi
	let a=a+1

done
let pag2="$montt"*2100



b=2
while [ $b -le 12 ]
do
	debe=`grep $apa3 historialpagos.txt | cut -d: -f$b`
	if [ "$debe" == 2100 ]
	then
		let monti="$monti"+1
	else
		let monti="$monti"+0
	fi
	let b=b+1

done
let pag3="$monti"*2100
clear
echo Cargando, espere un momento..

c=2
while [ $c -le 12 ]
do
	debe=`grep $apa4 historialpagos.txt | cut -d: -f$c`
	if [ "$debe" == 2100 ]
	then
		let mont="$mont"+1
	else
		let mont="$mont"+0
	fi
	let c=c+1

done
let pag4="$mont"*2100




d=2
while [ $d -le 12 ]
do
	debe=`grep $apa5 historialpagos.txt | cut -d: -f$d`
	if [ "$debe" == 2100 ]
	then
		let montu"$montu"+1
	else
		let montu"$montu"+0
	fi
	let d=d+1

done
let pag5"$montu"*2100


e=2 
while [ $e -le 12 ]
do
	debe=`grep $apa6 historialpagos.txt | cut -d: -f$e`
	if [ "$debe" == 2100 ]
	then
		let monto1="$monto1"+1
	else
		let monto1="$monto1"+0
	fi
	let e=e+1

done
let pag6="$monto1"*2100

f=2
while [ $f -le 12 ]
do
	debe=`grep $apa7 historialpagos.txt | cut -d: -f$f`
	if [ "$debe" == 2100 ]
	then
		let monto2="$monto2"+1
	else
		let monto2="$monto2"+0
	fi
	let f=f+1

done
let pag7="$monto2"*2100

g=2
while [ $g -le 12 ]
do
	debe=`grep $apa8 historialpagos.txt | cut -d: -f$g`
	if [ "$debe" == 2100 ]
	then
		let monto3="$monto3"+1
	else
		let monto3="$monto3"+0
	fi
	let g=g+1

done
let pag8="$monto3"*2100
clear
echo Cargando, espere un momento...
h=2
while [ $h -le 12 ]
do
	debe=`grep $apa9 historialpagos.txt | cut -d: -f$h`
	if [ "$debe" == 2100 ]
	then
		let montoaa="$montoaa"+1
	else
		let montoaa="$montoaa"+0
	fi
	let h=h+1

done
let pag9="$montoaa"*2100

j=2
while [ $j -le 12 ]
do
	debe=`grep $apa10 historialpagos.txt | cut -d: -f$j`
	if [ "$debe" == 2100 ]
	then
		let montobb="$montobb"+1
	else
		let montobb="$montobb"+0
	fi
	let j=j+1

done
let pag10="$montobb"*2100

k=2
while [ $k -le 12 ]
do
	debe=`grep $apa11 historialpagos.txt | cut -d: -f$k`
	if [ "$debe" == 2100 ]
	then
		let montocc="$montocc"+1
	else
		let montocc="$montocc"+0
	fi
	let k=k+1

done
let pag11="$montocc"*2100

l=2
while [ $l -le 12 ]
do
	debe=`grep $apa12 historialpagos.txt | cut -d: -f$l`
	if [ "$debe" == 2100 ]
	then
		let montodd="$montodd"+1
	else
		let montodd="$montodd"+0
	fi
	let l=l+1

done
let pag12="$montodd"*2100

m=2
while [ $m -le 12 ]
do
	debe=`grep $apa13 historialpagos.txt | cut -d: -f$m`
	if [ "$debe" == 2100 ]
	then
		let montoee="$montoee"+1
	else
		let montoee="$montoee"+0
	fi
	let m=m+1

done
let pag13="$montoee"*2100

n=2
while [ $n -le 12 ]
do
	debe=`grep $apa14 historialpagos.txt | cut -d: -f$n`
	if [ "$debe" == 2100 ]
	then
		let montoff="$montoff"+1
	else
		let montoff="$montoff"+0
	fi
	let n=n+1

done
let pag14="$montoff"*2100

o=2
while [ $o -le 12 ]
do
	debe=`grep $apa15 historialpagos.txt | cut -d: -f$o`
	if [ "$debe" == 2100 ]
	then
		let montogg="$montogg"+1
	else
		let montogg="$montogg"+0
	fi
	let o=o+1

done
let pag15="$montogg"*2100

p=2
while [ $p -le 12 ]
do
	debe=`grep $apa16 historialpagos.txt | cut -d: -f$p`
	if [ "$debe" == 2100 ]
	then
		let montohh="$montohh"+1
	else
		let montohh="$montohh"+0
	fi
	let p=p+1

done

let pag16="$montohh"*2100
clear
if [ $pag1  -gt 8000 ]
then 	
 	echo "El apartamento 001 debe: $"$pag1
	touch Deudores/Deudores"$apa1".txt
fi

if [ $pag2  -gt 8000 ]
 then 	
 	echo "El apartamento 002 debe: $"$pag2
 	touch Deudores/Deudores"$apa2".txt
fi

if [ $pag3  -gt 8000 ]
 then 	
 	echo "El apartamento 003 debe: $"$pag3
 	touch Deudores/Deudores"$apa3".txt
fi
if [ $pag4  -gt 8000 ]
 then 	
 	echo "El apartamento 004 debe: $"$pag4
 	touch Deudores/Deudores"$apa4".txt
fi
	
if [ $pag5  > 8000 ]
 then 	
 	echo "El apartamento 005 debe: $"$pag5
 	touch Deudores/Deudores"$apa5".txt

fi
if [ $pag6  -gt 8000 ]
 then 	
 	echo "El apartamento 006 debe: $"$pag6
 	touch Deudores/Deudores"$apa6".txt
fi

if [ $pag7  -gt 8000 ]
 then 	
 	echo "El apartamento 007 debe: $"$pag7
 	touch Deudores/Deudores"$apa7".txt
fi
if [ $pag8  -gt 8000 ]
 then 	
 	echo "El apartamento 008 debe: $"$pag8
 	touch Deudores/Deudores"$apa8".txt
fi
if [ $pag9  -gt 8000 ]
 then 	
 	echo "El apartamento 009 debe: $"$pag9
 	touch Deudores/Deudores"$apa9".txt
fi
if [ $pag10  -gt 8000 ]
 then 	
 	echo "El apartamento 010 debe: $"$pag10
 	touch Deudores/Deudores"$apa10".txt
fi
if [ $pag11 -gt 8000 ]
 then 	
 	echo "El apartamento 011 debe: $"$pag11
 	touch Deudores/Deudores"$apa11".txt
fi
if [ $pag12 -gt 8000 ]
 then 	
 	echo "El apartamento 012 debe: $"$pag12
 	touch Deudores/Deudores"$apa12".txt
 	
fi
if [ $pag13 -gt 8000 ]
 then 	
 	echo "El apartamento 013 debe: $"$pag13
 	touch Deudores/Deudores"$apa13".txt
fi
if [ $pag14 -gt 8000 ]
 then 	
 	echo "El apartamento 014 debe: $"$pag14
 	touch Deudores/Deudores"$apa14".txt
fi
if [ $pag15 -gt 8000 ]
 then 	
 	echo "El apartamento 015 debe: $"$pag15
 	touch Deudores/Deudores"$apa15".txt
fi
if [ $pag16 -gt 8000 ]
 then 	
 	echo "El apartamento 016 debe: $"$pag16
 	touch Deudores/Deudores"$apa16".txt
fi


