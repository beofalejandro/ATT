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
    echo "                              M E N U  M O D U L E  8                              "
    echo "                                                                                   "
    echo "   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   --   "
    echo "                                                                                   "
    echo "   1   |   T E X T   T O O L S                                                     "
    echo "   2   |   A P I   J S O N                                                         "
    echo "   3   |   O P T I M I Z A T I O N                                                 "
    echo "                                                                                   "
    echo "   X   |   G O   B A C K                                                           "
    echo "                                                                                   "
    
    read -p "Type your option: " option

    if [[ "$option" == "x" || "$option" == "X" ]]; then 
        break
    fi

    case $option in 
        1) 
            bash ./scripts/module-8/text_tools.sh
            ;;
        2) 
            bash ./scripts/module-8/api_json.sh 
            ;;
        3) 
            bash ./scripts/module-8/optimization.sh
            ;;
        *)
            echo -e "${RED}[ERROR] INVALID OPTION${RESET}"
            ;;
    esac    

    echo ""

done  