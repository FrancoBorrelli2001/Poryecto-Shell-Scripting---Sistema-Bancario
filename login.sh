clear
tput cup 2 120
date +%D
tput cup 11 45 
echo "User:"
tput cup 12 45
echo "Password:"
tput cup 11 51
read user
tput cup 12 55
tput setaf 0 
read password
tput sgr0
if test $user = "admin" && test $password = "admin"
	then clear
	clear
	sh menu.sh

	else
	clear
	tput cup 58 2
        tput setab 1
        echo "Nombre o contraseña incorrecta"
        tput sgr0
        
	sleep 1
	exit	 	
fi 
