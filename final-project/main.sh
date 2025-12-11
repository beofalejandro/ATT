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
    echo -ne "${OPERATION}[*] Initializing modules and tools...${RESET} "
    for i in {1..20}; do
        echo -ne "▓"
        sleep 0.07
    done
    echo -e " ${GREEN}[OK]${RESET}"
}

clear

echo -e "${LOGO}"
cat << "EOF"
 _____ ____   ____    _    _     ___    _    
| ____/ ___| / ___|  / \  | |   |_ _|  / \   
|  _| \___ \| |     / _ \ | |    | |  / _ \  
| |___ ___) | |___ / ___ \| |___ | | / ___ \ 
|_____|____/ \____/_/   \_\_____|___/_/   \_\  v1.0
EOF
echo -e "${RESET}"
echo -e "${GREEN}=============================================================================${RESET}"
echo ""

# Loading bar
loading_bar
echo ""
sleep 0.5
echo -e "${INFO}[INFO] FOR BEST RESULTS USE THE SHELL IN FULLSCREEN${RESET}"
echo ""
echo -e "${GREEN}=============================================================================${RESET}"
while true; do
    sleep 1
    echo -e "${BASE}${RESET}"
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
    echo "                                                                                   "
    echo "   X   |   E X I T                                                                 "
    echo "                                                                                   "

    read -p "Type your option: " option

    if [[ "$option" == "x" || "$option" == "X" ]]; then 
        echo "[INFO] Good bye"
        break
    fi

    case $option in 
        1) 
            bash ./scripts/module-1/m1-main.sh
            ;;
        2) 
            bash ./scripts/module-2/m2-main.sh
            ;;
        3) 
            bash ./scripts/module-3/m3-main.sh
            ;;
        4) 
            bash ./scripts/module-4/m4-main.sh
            ;;
        5) 
            bash ./scripts/module-5/m5-main.sh
            ;;
        *)
            echo -e "${RED}[ERROR] INVALID OPTION${RESET}"
            ;;
    esac    

    echo ""

done  