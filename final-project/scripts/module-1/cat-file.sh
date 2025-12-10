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
    echo -e "${EMPHASIS}[*] P R I N T  A N Y  F I L E ${RESET}"
    echo ""
    echo -e "${SUGGESTION}[NOTE] You can try with the following file: ${BASE}'./scripts/etc/yellow.txt${RESET}' ${RESET}"
    echo -e "${BASE}"
    read -p "[+] Insert you file path or type 'x' to exit: ${RESET}" input_file

    if [[ "$input_file" == "x" || "$input_file" == "X" ]]; then 
        break
    fi

    echo ""
    echo -e "${INFO}Your file content is: ${RESET}"
    cat "$input_file"
    echo ""

done
