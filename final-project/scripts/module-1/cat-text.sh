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
    echo -e "${EMPHASIS}[*] P R I N T  A N Y  T E X T ${RESET}"
    echo -e "${BASE} ${RESET}"
    read -p "[+] Insert you text or type 'x' to exit: " input

    if [[ "$input" == "x" || "$input" == "X" ]]; then 
        break
    fi

    echo ""
    echo -e "${INFO}[INFO] You typed: ${input}${RESET}"
    echo ""

done