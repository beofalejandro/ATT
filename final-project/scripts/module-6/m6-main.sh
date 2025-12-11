#!/bin/bash

# Author: beofalejando
# Repository:
#
#
# COLOR
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
LOGO="\033[38;5;198m"
INFO="\033[38;5;45m"
SUGGESTION="\033[38;5;55m"
FILE_CONTENT="\033[38;5;253m"

loading_bar() {
    echo -ne "${OPERATION}[*] Initializing...${RESET} "
    for i in {1..20}; do
        echo -ne "▓"
        sleep 0.07
    done
    echo -e " ${GREEN}[OK]${RESET}"
}

echo ""
loading_bar
echo ""
sleep 0.5
echo ""
echo -e "${GREEN}=============================================================================${RESET}"
while true; do
    sleep 1
    echo -e "${BASE}${RESET}"
    echo "                                                                                   "
    echo "                              M E N U  M O D U L E  6                              "
    echo "                                                                                   "
    echo "   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   "
    echo "                                                                                   "
    echo "   1   |   F U N C T I O N S                                                       "
    echo "   2   |   M O D U L E S                                                           "
    echo "   3   |   S C O P E                                                               "
    echo "                                                                                   "
    echo "   X   |   G O   B A C K                                                           "
    echo "                                                                                   "
    
    read -p "Type your option: " option

    if [[ "$option" == "x" || "$option" == "X" ]]; then 
        break
    fi

    case $option in 
        1) 
            bash ./scripts/module-6/functions.sh
            ;;
        2) 
            bash ./scripts/module-6/modules.sh 
            ;;
        3) 
            bash ./scripts/module-6/scope.sh
            ;;
        *)
            echo -e "${RED}[ERROR] INVALID OPTION${RESET}"
            ;;
    esac    

    echo ""

done  