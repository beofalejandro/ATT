#!/bin/bash

# Colores
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
GREEN="\033[38;5;42m"
YELLOW="\033[38;5;226m"
INFO="\033[38;5;45m"
RESET="\033[0m"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] A R R A Y S   ( L I S T S ) ${RESET}"
    echo ""
    echo -e "${OPERATION}[*] Defining array: colors=(red green purple)${RESET}"
    read -p "Press Enter to return or 'x' to exit: " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
    
    colors=(red green purple)
    
    echo -e "${BASE}Positions (Index):${RESET}"
    echo -e " [0] -> ${colors[0]}"
    echo -e " [1] -> ${colors[1]}"
    echo -e " [2] -> ${colors[2]}"
    
    echo ""
    echo -e "${INFO}[INFO]My favorite color is: ${colors[1]}${RESET}"
    
    echo ""
done