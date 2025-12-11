#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

RESULT_FILE="./scripts/etc/system_scan.txt"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] P I P E S   &   F I L T E R S ${RESET}"
    echo ""
    echo -e "${BASE}We will list /etc, filter for 'conf' files, sort them, and save.${RESET}"
    read -p "[+] Press Enter to run pipeline (or 'x' to exit): " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi

    echo ""
    echo -e "${OPERATION}[RUNNING PIPELINE]${RESET}"
    echo -e "Command: ls /etc | grep 'conf' | head -n 5 | tee $RESULT_FILE"
    echo -e "${YELLOW}--------------------------------------${RESET}"
    
    ls /etc | grep "conf" | head -n 5 | tee "$RESULT_FILE"

    echo -e "${YELLOW}--------------------------------------${RESET}"
    
    if [ -f "$RESULT_FILE" ]; then
        echo -e "${GREEN}[SUCCESS] Output saved to ${RESULT_FILE}${RESET}"
        rm "$RESULT_FILE"
    fi

    echo ""
done