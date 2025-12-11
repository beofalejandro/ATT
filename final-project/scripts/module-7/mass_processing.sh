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

TEMP_DIR="temp_logs_demo"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] M A S S   F I L E   P R O C E S S I N G ${RESET}"
    echo ""
    
    read -p "[+] Press Enter to start generation or 'x' to exit: " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi

    echo -e "${OPERATION}[*] Setting up workspace ($TEMP_DIR)...${RESET}"
    mkdir -p "$TEMP_DIR"
    
    for i in {1..5}; do
        echo "Log entry #$i" > "$TEMP_DIR/server_$i.log"
    done
    echo -e "${GREEN}  -> Created 5 .log files.${RESET}"

    echo -e "${OPERATION}[*] Processing files matching '*.log'...${RESET}"
    sleep 1
    
    count=0
    for file in "$TEMP_DIR"/*.log
    do
        filename=$(basename "$file")
        echo -e "${INFO}  -> Processing: ${YELLOW}$filename${RESET}"
        
        mv "$file" "$file.processed"
        ((count++))
        sleep 0.2
    done

    echo -e "${GREEN}[SUCCESS] Processed $count files.${RESET}"
    sleep 10
    echo -e "${OPERATION}[*] Cleaning up...${RESET}"
    rm -rf "$TEMP_DIR"

    echo ""
done