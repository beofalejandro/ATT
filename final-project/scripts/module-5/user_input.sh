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
    echo -e "${EMPHASIS}[*] U S E R   I N P U T   ( R E A D ) ${RESET}"
    echo ""

    read -p "[+] Enter your username or type 'x' to exit: " user_name

    if [[ "$user_name" == "x" || "$user_name" == "X" ]]; then break; fi

    echo -e "${OPERATION}[*] Testing Silent Mode (-s)${RESET}"
    read -s -p "[+] Enter a fake password: " password
    echo "" 
    
    echo -e "${OPERATION}[*] Testing Timeout Mode (-t 3s)${RESET}"
    echo -e "${BASE}Quick! Type something in 3 seconds:${RESET}"
    if read -t 3 quick_input; then
        echo -e "${GREEN}-> You made it, Absolute Cinema! You typed: $quick_input${RESET}"
    else
        echo -e "${RED}-> Too slow, Khehehe! (Timeout triggered)${RESET}"
    fi

    echo ""
    echo -e "${INFO}[SUMMARY]${RESET}"
    echo -e "User: ${YELLOW}$user_name${RESET}"
    echo -e "Pass: ${YELLOW}(Hidden)${RESET}"
    echo ""

done