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

cleanup() {
    echo ""
    echo -e "${RED}[TRAP DETECTED] Interruption signal received!${RESET}"
    echo -e "${OPERATION}[*] Cleaning up temporary processes...${RESET}"
    pkill -P $$ sleep 2>/dev/null
    echo -e "${GREEN}[SAFE EXIT] Done.${RESET}"
    exit 1
}

trap cleanup SIGINT

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] P R O C E S S   C O N T R O L   ( T R A P ) ${RESET}"
    echo ""
    read -p "[+] Press Enter to launch background job or 'x' to exit: " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi

    echo -e "${OPERATION}[*] Launching 'sleep 10' in background (&)...${RESET}"
    
    sleep 10 &
    BG_PID=$!
    
    echo -e "${INFO}  -> Process ID (PID): ${YELLOW}$BG_PID${RESET}"
    echo -e "${BASE}  -> Waiting for it to finish (10s)... (Try Ctrl+C now!)${RESET}"
    
    wait $BG_PID 2>/dev/null
    
    echo -e "${GREEN}[FINISHED] Process $BG_PID completed normally.${RESET}"

    echo ""
done