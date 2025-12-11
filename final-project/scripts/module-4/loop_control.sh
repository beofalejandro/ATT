#!/bin/bash

# Colores
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] L O O P   C O N T R O L   ( C O N T I N U E ) ${RESET}"
    echo ""
    read -p "[+] Press Enter to start the loop (or 'x' to exit): " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi

    echo ""
    echo -e "${OPERATION}[RUNNING LOOP]${RESET}"

    for num in 1 2 3 4 5 6 7 8 9 10
    do
        if [ $num -eq 3 ]; then
            echo -e "${RED}  -> Skipping number 3 (continue triggered)${RESET}"
            continue
        fi
        
        echo -e "${GREEN}  -> Processing number: $num${RESET}"
        sleep 0.5
    done

    echo ""
    echo -e "${INFO}[INFO] Loop finished successfully.${RESET}"
    echo ""
done