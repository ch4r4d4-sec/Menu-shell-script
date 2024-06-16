#!/bin/bash

show_menu() {
   echo "===================="
   echo "   Menu Principal   "
   echo "===================="
   echo "1. Exibir data e hora atuais"
   echo "2. Listar arquivos  no diretório atual"
   echo "3. Exibir espaço livre em disco"
   echo "4. Mostrar tempo de atividade do sistema"
   echo "5. Sair"
   echo "===================="
   echo -n "Por favor, insira a sua escolha [1-5]: "
}

display_date_time() {
   echo "Data e hora atuais: $(date)"
}

list_files() {
   echo "Arquivo no diretório atual: "
   ls -la
}

display_disk_space() {
   echo "Espaço livre em disco: "
   df -h
}

show_uptime() {
   echo "Tempo de atividade do sistema: "
   uptime
}

while treu; do
   show_menu
   read choice

   case $choice in 
      1) 
         display_date_time
         ;;
      2)
         list_files
         ;;
      3) 
         display_disk_space
         ;;
      4)
         show_uptime
         ;;
      5) 
         echo "Saindo... Até logo!"
         exit 0
         ;;
      *)
         echo "Escolha inválida, por favor tente novamente."
         ;;
   esac 

   echo "Pressione Enter para continuar"
   read
done
