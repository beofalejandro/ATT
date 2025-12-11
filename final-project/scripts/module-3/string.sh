#!/bin/bash

# Colores
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
FILE_CONTENT="\033[38;5;253m"
RESET="\033[0m"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] S T R I N G   M A N I P U L A T I O N ${RESET}"
    echo ""

    read -p "[+] Input a filename or type 'x' to exit: " filename

    if [[ "$filename" == "x" || "$filename" == "X" ]]; then break; fi

    backup_name=${filename/txt/bak}

    uppercase_name=${filename^^}

    echo ""
    echo -e "${OPERATION}[RESULTS]${RESET}"
    echo -e "${BASE}Original Input:      ${FILE_CONTENT}${filename}${RESET}"
    echo -e "${BASE}Backup Name (subst): ${YELLOW}${backup_name}${RESET}"
    echo -e "${BASE}Uppercase Format:    ${YELLOW}${uppercase_name}${RESET}"
    
    echo ""
    echo -e "${INFO}[INFO] Useful for batch renaming files.${RESET}"
    echo ""
done