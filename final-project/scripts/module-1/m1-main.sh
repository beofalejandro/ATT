#!/bin/bash

# Author: beofalejando
# Repository:
#
#
# COLOR
BASE=""
EMPHASIS=""
OPERATION=""
RED=""
YELLOW=""
GREEN=""


VERDE="\e[1;32m"
ROJO="\e[1;31m"
CYAN="\e[1;36m"
BLANCO="\e[1;37m"
RESET="\e[0m"

# Barra de carga falsa
loading_bar() {
    echo -ne "${CYAN}[*] Initializing modules and tools...${RESET} "
    for i in {1..20}; do
        echo -ne "▓"
        sleep 0.07
    done
    echo -e " ${VERDE}[OK]${RESET}"
}

echo ""
loading_bar
echo ""
sleep 0.5
echo ""
echo -e "${VERDE}=============================================================================${RESET}"
while true; do
    sleep 1
    echo "                                                                                   "
    echo "                                      M E N U                                      "
    echo "                                                                                   "
    echo "   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   "
    echo "                                                                                   "
    echo "   1   |   P R I N T  A N Y  T E X T                                               "
    echo "   2   |   P R I N T  A N Y  F I L E                                               "
    echo "                                                                                   "
    echo "   X   |   E X I T          B   |   G O  B A C K                                   "
    echo "                                                                                   "

    read -p "Into you option: " option

    if [[ "$option" == "x" || "$option" == "X" ]]; then 
        echo "Good bye then"
        break
    fi
    if [[ "$option" == "b" || "$option" == "B" ]]; then 
        bash ../final-project/main.sh
    fi

    case $option in 
        1) 
            echo "Starting 1"
            bash ./scripts/module-1/m1-main.sh
            ;;
        1) 
            echo "Starting 1"
            date
            ;;
        *)
            echo "⚠️  El número $option no es una opción válida del menú."
            ;;
    esac    

    echo ""

done  