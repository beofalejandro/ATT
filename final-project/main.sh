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

clear

echo -e "${VERDE}"
cat << "EOF"
 _____ ____   ____    _    _     ___    _    
| ____/ ___| / ___|  / \  | |   |_ _|  / \   
|  _| \___ \| |     / _ \ | |    | |  / _ \  
| |___ ___) | |___ / ___ \| |___ | | / ___ \ 
|_____|____/ \____/_/   \_\_____|___/_/   \_\  v1.0
EOF
echo -e "${RESET}"

echo -e "${VERDE}=============================================================================${RESET}"
echo -e "${BLANCO}Target: ${ROJO}SYSTEM_ROOT${BLANCO} | Mode: ${VERDE}ACTIVE${RESET}"
echo -e "${VERDE}=============================================================================${RESET}"
echo ""

# Loading bar
loading_bar
echo ""
sleep 0.5
echo -e "${BLANCO}[INFO] FOR BEST RESULTS USE THE SHELL IN FULLSCREEN${RESET}"
echo ""
echo -e "${VERDE}=============================================================================${RESET}"
while true; do
    sleep 1
    echo "                                                                                   "
    echo "                                      M E N U                                      "
    echo "                                                                                   "
    echo "   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   "
    echo "                                                                                   "
    echo "   1   |   M O D U L E  1                                                          "
    echo "   2   |   M O D U L E  2                                                          "
    echo "   3   |   M O D U L E  3                                                          "
    echo "   4   |   M O D U L E  4                                                          "
    echo "   5   |   M O D U L E  5                                                          "
    echo "   6   |   M O D U L E  6                                                          "
    echo "   7   |   M O D U L E  7                                                          "
    echo "   8   |   M O D U L E  8                                                          "
    echo "   9   |   M O D U L E  9                                                          "
    echo "   10  |   P R A C T I C A L  A P P L I C A T I O N S                              "
    echo "                                                                                   "
    echo "   X   |   E X I T                                                                 "
    echo "                                                                                   "

    read -p "Into you option: " option

    if [[ "$option" == "x" || "$option" == "X" ]]; then 
        echo "Good bye then"
        break
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
        1) 
            echo "Starting 1"
            date
            ;;
        *)
            echo "⚠️ El número $opcion no es una opción válida del menú."
            ;;
    esac    

    echo ""

done  