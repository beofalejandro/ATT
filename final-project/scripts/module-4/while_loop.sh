#!/bin/bash

# Colores
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
RESET="\033[0m"

while true; do
    echo ""
    echo -e "${EMPHASIS}[*] W H I L E   L O O P   ( C O U N T D O W N ) ${RESET}"
    echo ""
    echo -e "${BASE}Enter start number (e.g. 5) or 'x' to exit:${RESET}"
    read -p "[+] Start at: " count

    [[ "$count" == "x" || "$count" == "X" ]] && break

    echo ""
    echo -e "${OPERATION}[*] T-Minus remaining: ${RESET}"
    
    while [ "$count" -gt 0 ]; do
        echo -e "${YELLOW}  $count...${RESET}"
        sleep 0.8
        count=$((count - 1))
    done

    echo -e "${GREEN}  ZERO! ${RESET}"
    echo ""
done