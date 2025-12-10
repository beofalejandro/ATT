#!/bin/bash

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

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] V A R I A B L E S ${RESET}"
    echo ""
    echo -e "${SUGGESTION}[NOTE] You can try with the following file: ${BASE}'./scripts/etc/mars.txt${RESET}' ${RESET}"
    echo -e "${BASE}"
    read -p "[+] Insert you age or type 'x' to exit: ${RESET}" age


    if [[ "$age" == "x" || "$age" == "X" ]]; then 
        break
    fi

    read -p "[+] Insert your name: " name

    echo ""
    echo -e "${INFO}Hi $name, you have $age years old. ${RESET}"
    echo ""

done