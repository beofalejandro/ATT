#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
FILE_CONTENT="\033[38;5;253m"
RESET="\033[0m"

temp_file="./scripts/etc/demo_chmod.txt"
touch "$temp_file"
chmod 000 "$temp_file"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] P E R M I S S I O N S   M A N A G E R (C H M O D) ${RESET}"
    echo ""
    
    # GET THE CURRENT PERMISSIONS OF THE FILE
    perms=$(ls -l "$temp_file" | awk '{print $1}')
    
    echo -e "${BASE}Example file: ${FILE_CONTENT}${temp_file}${RESET}"
    echo -e "${INFO}[STATUS] Permissions: ${YELLOW}${perms}${RESET}"
    echo -e "${BASE}[INFO] Examples: 777 (All), 400 (Read Only), +x (Executable), 000 (None)${RESET}"
    echo ""
    read -p "[+] Enter permission code (or 'x' to exit): " perm_code

    if [[ "$perm_code" == "x" || "$perm_code" == "X" ]]; then 
        rm "$temp_file"
        break
    fi

    # APPLY THE PERMISSIONS
    echo -e "${OPERATION}[*] Applying: chmod ${perm_code} ${temp_file}...${RESET}"
    chmod "$perm_code" "$temp_file" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        new_perms=$(ls -l "$temp_file" | awk '{print $1}')
        echo -e "${GREEN}[SUCCESS] Permissions changed to: ${new_perms}${RESET}"
        
        if [[ "$perm_code" == *"x"* || "$perm_code" == "7"* || "$perm_code" == *"1"* || "$perm_code" == *"3"* || "$perm_code" == *"5"* ]]; then
             echo -e "${INFO}[INFO] File is now executable (x).${RESET}"
        fi
    else
        echo -e "${RED}[ERROR] Invalid permission code.${RESET}"
    fi

    echo ""
done