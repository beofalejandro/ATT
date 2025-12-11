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
    echo -e "${EMPHASIS}[*] C O N D I T I O N A L S   ( I F / E L S E ) ${RESET}"
    echo ""

    read -p "[+] Enter a number in range to 1-10 or type 'x' to exit: " numero

    if [[ "$numero" == "x" || "$numero" == "X" ]]; then break; fi

    if ! [[ "$numero" =~ ^-?[0-9]+$ ]]; then
        echo -e "${RED}[ERROR] Please enter a valid integer.${RESET}"
        continue
    fi

    echo ""
    echo -e "${OPERATION}[ANALYSIS]${RESET}"

    if [ "$numero" -lt 5 ]; then
        echo -e "${INFO}Result: The number ${YELLOW}$numero${RESET}${INFO} is LESS than 5.${RESET}"
    elif [ "$numero" -gt 5 ]; then
        echo -e "${INFO}Result: The number ${YELLOW}$numero${RESET}${INFO} is GREATER than 5.${RESET}"
    else
        echo -e "${GREEN}[INFO] Result: The number IS 5!${RESET}"
    fi

    echo ""
done