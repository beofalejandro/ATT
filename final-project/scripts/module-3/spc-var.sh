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
    echo -e "${EMPHASIS}[*] S P E C I A L   V A R I A B L E S ${RESET}"
    echo ""
    echo -e "${BASE}Type a sentence or a list of words separated by spaces or 'x' to exit:${RESET}"
    
    read -p "[+] Arguments: " user_args

    if [[ "$user_args" == "x" || "$user_args" == "X" ]]; then break; fi

    set -- $user_args

    echo ""
    echo -e "${OPERATION}[ANALYSIS]${RESET}"
    
    echo -e "${BASE}[+] Total arguments count (\$#): ${YELLOW}$#${RESET}"
    echo -e "${BASE}[+] All arguments list (\$@):    ${YELLOW}$@${RESET}"
    echo -e "${BASE}[+] First argument (\$1):        ${YELLOW}$1${RESET}"
    
    echo ""
    echo -e "${INFO}These variables are you writed${RESET}"
    echo ""
done