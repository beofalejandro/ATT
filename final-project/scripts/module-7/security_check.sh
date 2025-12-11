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
    echo -e "${EMPHASIS}[*] S E C U R I T Y   V A L I D A T O R ${RESET}"
    
    echo ""
    echo -e "${INFO}Enter a file path to read or type 'x' to exit (e.g. /etc/hosts):${RESET}"
    read -p "[+] Path: " file_path

    if [[ "$file_path" == "x" || "$file_path" == "X" ]]; then break; fi

    echo -e "${OPERATION}[*] Running security checks...${RESET}"
    sleep 0.5

    if [[ "$file_path" =~ [\|\&\;] ]]; then
        echo -e "${RED}[SECURITY ALERT] Dangerous characters detected! Input rejected.${RESET}"
        continue
    fi

    if [ ! -e "$file_path" ]; then
        echo -e "${RED}[ERROR] File does not exist.${RESET}"
        continue
    fi

    if [ -d "$file_path" ]; then
        echo -e "${RED}[ERROR] Target is a directory, not a file.${RESET}"
        continue
    fi

    if [ ! -r "$file_path" ]; then
        echo -e "${RED}[PERMISSION DENIED] You do not have read access to this file.${RESET}"
        continue
    fi
    echo -e "${GREEN}[SAFE] File passed all checks.${RESET}"
    echo -e "${BASE}--- Preview (Head) ---${RESET}"
    head -n 3 "$file_path"
    echo -e "${BASE}----------------------${RESET}"

    echo ""
done