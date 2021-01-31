#20204646

#reference: https://en.wikibooks.org/wiki/Bash_Shell_Scripting

function confbash(){

	find / -type f -name "*.conf"; 
	printf "\n"
	echo '..............Completed.................'
    printf "\n"
	exit
	   	  
}
confbash