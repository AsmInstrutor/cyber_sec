#!/bin/bash

main() {
	printf "\nCyber Security-RT apresenta a todos:\n\n"|lolcat
	figlet -f slant Cyber|lolcat
	figlet -f slant Sec Tool|lolcat

	echo OPÇÕES|lolcat

	printf "\n[1] - Painel\n[2] - Area do Aluno\n[3] - Atualizador de terminal\n[4] - Ferramentas Hackers\n[5] - Mais opções"|lolcat

	read -p "Sua escolha>_ " esc

	if [ $esc = 1 ];then
		painel

	elif [ $esc = 2 ];then
		school

	elif [ $esc = 3 ];then
		atualizador

	elif [ $esc = 4 ];then
		hacking

	elif [ $esc = 5 ];then
		more
	fi
}

hacking() {
printf "\nCarregando agurade...\n "|lolcat
sleep 1
clear
printf "\nFerramentas mais usadas por hackers:\n\n1° - Nmap\n2° - Burp Suite\n3° - Johnn the Ripe\n\n[!] Lista foi baseada em pesquisas!\n[+] Ferramentas disponiveis para download na area\nde atualizador de terminal "|lolcat

volta
}

painel() {
printf "\nAbrindo painel...\n"
sleep 1
clear
printf "\nOPÇÕES:\n\n[1] - Busca de IPV4\n[2] - Busca de DNS\n[3] - Busca de CEP\n\n[!] Aguarde a próxima atualização, que vamos\ntrazer mais opções!\n "|lolcat

read -p "Sua escolha>_ " opc

if [ $opc = 1 ];then
	sleep 2
	clear
        figlet -f slant IPV4|lolcat

	read -p "Digite o ipv4 que deseja consultar>_ " ip

	curl ipinfo.io/$ip

	volta

elif [ $opc = 2 ];then
	sleep 2
	clear
        figlet -f slant DNS_IP|lolcat

	read -p "Digite o DNS que deseja consultar-exemplo: 1.1.1.1>_ " dns

	curl ipinfo.io/$dns

	volta

elif [ $opc = 3 ];then
	sleep 2
	clear
        figlet -f slant CEP|lolcat

	read -p "Digite o CEP para consultar>_ " cep

	curl viacep.com.br/ws/$cep/json/

	volta

fi
}

more() {
	sleep 1
	clear
	printf "\n[6] - Sobre a Cyber Security\n[7] - Sobre o criador\n[8] - Modo de uso da ferramenta\n[9] - Sair\n[0] - Reportar bug ou informar mais opções\n "|lolcat

	read -p "Sua escolha>_ " esc

	if [ $esc = 6 ];then
		cyber

	elif [ $esc = 7 ];then
		criador

	elif [ $esc = 8 ];then
		uso

	elif [ $esc = 9 ];then
		sair

	elif [ $esc = 0 ];then
		report

	fi
	
}

school() {
	printf "\nProcessando...\n\n"|lolcat
	sleep 2
	clear
	sleep 1
	printf "\n[1] - Oque é ataque DoS\n[2] - Oque é ataque DDoS\n[3] - Oque é falha XSS\n[4] - Oque é falha SQLI\n[5] - Oque é LFI e RFI\n\n "|lolcat

	read -p "Sua escolha>_ " esc

	if [ $esc = 1 ];then
		sleep 1
		clear
		figlet -f slant Denial of|lolcat
	        figlet -f slant Service|lolcat
		sleep 1
                echo "Os ataques DoS (sigla para Denial of Service), 
que podem ser interpretados como 'Ataques de 
Negação de Serviços', consistem em tentativas de 
fazer com que computadores - servidores Web, 
por exemplo - tenham dificuldade ou mesmo sejam 
impedidos de executar suas tarefas. Para isso, 
em vez de 'invadir' o computador ou mesmo 
infectá-lo com malwares, o autor do ataque faz 
com que a máquina receba tantas requisições que 
esta chega ao ponto de não conseguir dar conta 
delas. Em outras palavras, o computador fica 
tão sobrecarregado que nega serviço."|lolcat
                volta

	elif [ $esc = 2 ];then
		sleep 1
		clear
	        figlet Distributed|lolcat
	        figlet -f slant Denial of|lolcat
	        figlet -f slant Service|lolcat
		printf "\nAtaque DDoS (Distributed Denial of Service) é um\nataque de negativação de serviços em conjunto,\n gerelmente o atacante usa computadores\ninfectados por Botnets, chamados de 'Computadores\nZumbies', que começam a atacar o alvo quando\no responsavel pela botnet da a ordem,\no ataque força o servidor ou\nsite interromper o funcionamento correto e leva\na falha de sistema, fazendo o alvo\nficar impossibilitado de receber requisições\n\n"|lolcat
		volta

	elif [ $esc = 3 ];then
		sleep 1
		clear
               	figlet -f slant XSS|lolcat
		printf "\nCross-site scripting (XSS) é um tipo de\nvunerabilidade de sites por meio da qual um\natacante é capaz de inserir scripts maliciosos\nem páginas e aplicativos que seriam confiáveis\ne usá-los para instalar malwares nos navegadores\ndos usuarios. Com XSS os Hackers não tem\nalvos especificos, em vez disso disseminando o\nmalware para inumeras pessoas\n"|lolcat
		volta

	elif [ $esc = 4 ];then
		sleep 1
		clear
         	figlet -f slant SQL I|lolcat
		printf "\n\nO SQL Injection é o nome dado a uma falha na\ncodificação de uma aplicação qualquer (seja web\nou local) que possibilita, por meio de um input\nqualquer, a manipulação de uma consulta SQL. \nEssa manipulação é chamada de injeção, então, o\ntermo Injeção SQL"|lolcat
		volta

	elif [ $esc = 5 ];then
		sleep 1
		clear
         	figlet -f slant LFI and RFI|lolcat

	fi
}

atualizador() {
	printf "\nProcessando! Aguarde...\n"
	clear
	sleep 1
	printf "\n[1] - Atualizar terminal\n[2] - Instalar Python3\n[3] - Instalar openssh\n[4] - Instalar editor de texto vim\n[5] - Instalar editor de texto nano\n[6] - Instalar editor de texto neovim\n[7] - Instalar Nmap\n\n"|lolcat
	read -p "Sua escolha>_ " pm

	if [ $pm = 1 ];then
		clear
		sleep 1
		echo Atualizando o Terminal

		apt-get update && apt-get upgrade

		clear
		sleep 1
		echo Terminal atualizado!
		volta

	elif [ $pm = 2 ];then
		clear
		sleep 1
		echo Instalando Python

		apt-get install python

		clear 
		sleep 1
		echo Python instalado!
		volta

	elif [ $pm = 3 ];then
		clear
		sleep 1
		echo Instalando OpenSSH

		apt-get install openssh

		clear
		sleep 1
		echo OpenSsh instalado!
		volta

	elif [ $pm = 4 ];then
		clear
		sleep 1
		echo Instalando Vim

		apt-get install vim

		clear
		sleep 1
		echo Editor vim instalado com sucesso!
		volta

	elif [ $pm = 5 ];then
		clear
		sleep 1
		echo Instalando Nano

		apt-get install nano

		clear
		sleep 1
		echo nano instalado!
		volta

	elif [ $pm = 6 ];then
		clear
		sleep 1
		echo instalando neovim

		apt-get install neovim

		clear
		sleep 1
		echo Neovim instalado
		volta

	elif [ $pm = 7 ];then
		clear
		sleep 1
		echo Instalando NMAP

		apt-get install nmap

		clear
		sleep 1
		echo Nmap instalado
		volta

	fi
}

sair() {
read -p "Confirmar a saída[s/sim & n/não]>_ " sair
if [ $sair = s ];then
	echo Saindo...
	sleep 1
	echo Obrigado pelo uso!
	sleep 0.9
	clear

elif [ $sair = n ];then
	echo Aguarde! Estou processando!...
	sleep 1
	main

fi
}

uso() {
printf "\nMODO DE USO:\n"|lolcat
printf "Para usar a ferramenta deve-se escolher o numero\nconforme o da sua escolha, caso escolha errado, a\nferramenta será fechada automaticamente, para o\nuso de cada ferramenta, o apoio de uso está em\ntodas as opções!\n\n"|lolcat

volta
}

criador() {
printf "O criador da Cyber Sec Tool é um dos criadores do\ngrupo, responsável pela criação de ferramentas\npara o grupo, um estudante de Assembly e\nprogramador de Shell Script nas horas vagas,\nmorador da cidade de Jales no estado de São Paulo,\npossui a idade de 17 anos e é um dos\nrepresentantes oficiais do grupo.\n\nPara contato:\n
E-mail: jankees.softwares.66@gmail.com\n
WhatsApp: (67) 99831-8445\n"

volta
}

cyber() {
printf "\nSobre a Cyber Security\n\n"|lolcat
printf "A Cyber Security-RT (Cyber Security Red Team) é\num grupo dedicado ao ensino de pessoas que\ndesejam ser no futuro um profissional no Hacking\ne na Programação, possuimos nossos cursos\ntotalmente gratuitos e plataformas de conversas\ntotalmente abertas a todos os interessados,\npossuimos ferramentas para o uso na area hacking\nou até mesmo para o aprendizado, se quiser fazer\nparte do nosso grupo, entre em contato com o\ncriador atravéz do e-mail do mesmo!\n"|lolcat

printf "\nAgradecemos por usar a nossa ferramenta!\n "|lolcat

volta
}

volta() {
	sleep 5

	read -p "Deseja voltar ao menu inicial?[s/sim &n/não]>_ " menu

	if [ $menu = s ];then
		echo Voltando ao menu inicial, aguarde.
		sleep 1
		clear
		main

	elif [ $menu = n ];then
		echo Saindo
		sleep 1
          	clear
	fi
	}

main
