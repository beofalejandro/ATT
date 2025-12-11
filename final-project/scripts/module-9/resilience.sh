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


retry_command() {
    local cmd="$@"      
    local attempt=1
    local max_attempts=3
    
    until $cmd; do
        if (( attempt == max_attempts )); then
            echo -e "${RED}[FAIL] Failed after $max_attempts attempts.${RESET}"
            return 1 
        fi
        
        echo -e "${YELLOW}[WARN] Attempt $attempt failed. Retrying in 1s...${RESET}"
        sleep 1
        ((attempt++))
    done
    
    echo -e "${GREEN}[SUCCESS] Command finished successfully.${RESET}"
    return 0
}

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] R E S I L I E N C E   ( A U T O - R E T R Y ) ${RESET}"
    echo ""
    echo -e "${BASE}We will try to 'ping' a server. Choose a target:${RESET}"
    echo -e "1. Google (Should work)"
    echo -e "2. Fake Server (Will fail and retry)"
    echo -e "x. Exit"
    
    read -p "[+] Option: " opt

    if [[ "$opt" == "x" || "$opt" == "X" ]]; then break; fi
    
    echo ""
    case $opt in
        1)
            echo -e "${OPERATION}[*] Trying to ping google.com...${RESET}"
            retry_command ping -c 1 google.com
            ;;
        2)
            echo -e "${OPERATION}[*] Trying to ping bad-server...${RESET}"
            retry_command ping -c 1 server-que-no-existe
            ;;
        *)
            echo "Invalid option"
            ;;
    esac

    echo ""
done