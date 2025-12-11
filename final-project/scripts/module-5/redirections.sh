#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

LOG_FILE="./scripts/etc/logs.txt"
ERROR_FILE="./scripts/etc/errors.txt"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] F I L E   R E D I R E C T I O N S ${RESET}"
    echo ""

    read -p "[+] Press Enter to generate logs (or 'x' to exit): " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi

    echo -e "${OPERATION}[*] Creating/Overwriting ${LOG_FILE} (>)...${RESET}"
    echo "Start of Log - $(date)" > "$LOG_FILE"

    echo -e "${OPERATION}[*] Appending data to ${LOG_FILE} (>>)...${RESET}"
    echo "Processing Step 1..." >> "$LOG_FILE"
    echo "Processing Step 2..." >> "$LOG_FILE"

    echo -e "${OPERATION}[*] Generating a fake error to ${ERROR_FILE} (2>)...${RESET}"
    ls /folder_that_does_not_exist 2> "$ERROR_FILE"

    echo ""
    echo -e "${INFO}[RESULTS]${RESET}"
    
    echo -e "${YELLOW}--- Content of $LOG_FILE ---${RESET}"
    cat "$LOG_FILE"
    
    echo -e "${RED}--- Content of $ERROR_FILE ---${RESET}"
    cat "$ERROR_FILE"

    rm "$LOG_FILE" "$ERROR_FILE"

done