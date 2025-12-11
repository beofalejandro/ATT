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
    echo -e "${EMPHASIS}[*] D E B U G G I N G   M O D E S ${RESET}"
    echo ""
    echo -e "${BASE}Select a debugging technique to demonstrate or type 'x' to exit:${RESET}"
    echo -e "1. Trace Mode (set -x)"
    echo -e "2. Unset Variable Check (set -u)"
    echo -e "3. Exit on Error (set -e)"
    echo -e "x. Exit"
    
    read -p "[+] Option: " dbg_opt

    if [[ "$dbg_opt" == "x" || "$dbg_opt" == "X" ]]; then break; fi

    echo -e "${YELLOW}--- DEMO START ---${RESET}"
    

    case $dbg_opt in
        1)
            (
                echo -e "${INFO}Enabling 'set -x' (Show commands)...${RESET}"
                set -x 
                name="Raul"
                age=25
                echo "User is $name"
            )
            ;;
        2)
            (
                echo -e "${INFO}Enabling 'set -u' (Crash on undefined vars)...${RESET}"

                set -u
                echo "My name is $MY_DEFINED_VAR"
                echo "This line will NEVER run."
            ) || echo -e "${RED}[CAUGHT] Script failed as expected (Unbound variable).${RESET}"
            ;;
        3)
            (
                echo -e "${INFO}Enabling 'set -e' (Exit immediately on error)...${RESET}"
                
                set -e
                echo "Step 1: OK"
                ls /directory_that_does_not_exist 
                echo "Step 2: THIS SHOULD NOT PRINT"
            ) || echo -e "${RED}[CAUGHT] Script aborted immediately due to error.${RESET}"
            ;;
        *)
            echo "Invalid option"
            ;;
    esac

    echo -e "${YELLOW}--- DEMO END ---${RESET}"
    echo ""
done