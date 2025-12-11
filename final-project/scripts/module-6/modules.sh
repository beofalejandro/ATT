#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
YELLOW="\033[38;5;226m"
INFO="\033[38;5;45m"
RESET="\033[0m"

# RUTA A LA LIBRERÍA
LIBRARY="./scripts/module-6/mylib.sh"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] M O D U L A R I Z A T I O N   ( S O U R C E ) ${RESET}"
    echo ""
    
    if [ -f "$LIBRARY" ]; then
        echo -e "${OPERATION}[*] Sourcing $LIBRARY...${RESET}"
        
        # IMPORTACIÓN DE LIBRERÍA
        source "$LIBRARY"
        
        echo -e "${INFO}[INFO] Functions loaded into memory.${RESET}"
    else
        echo -e "${RED}[ERROR] Library file not found!${RESET}"
        break
    fi

    echo ""
    read -p "[+] Enter Number A or type 'x' to exit: " num_a
    if [[ "$num_a" == "x" ]]; then break; fi
    read -p "[+] Enter Number B: " num_b

    echo -e "${OPERATION}[*] Using 'calculate_sum' from library...${RESET}"
    
    total=$(calculate_sum "$num_a" "$num_b")
    
    echo -e "${YELLOW}  Result: $total${RESET}"
    
    echo -e "${OPERATION}[*] Using 'show_system_info' from library...${RESET}"
    show_system_info

    echo ""
done