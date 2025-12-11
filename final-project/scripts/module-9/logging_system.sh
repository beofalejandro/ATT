#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

LOG_FILE="./scripts/etc/app.log"
MAX_SIZE=50 

log_msg() {
    local message="$1"
    echo "[$(date '+%F %T')] $message" >> "$LOG_FILE"
}

check_rotate() {
    if [ -f "$LOG_FILE" ]; then
        current_size=$(wc -c < "$LOG_FILE")
        
        if (( current_size > MAX_SIZE )); then
            echo -e "${OPERATION}[ROTATE] Log is too big ($current_size bytes). Rotating...${RESET}"
            timestamp=$(date +%H%M%S)
            mv "$LOG_FILE" "./scripts/etc/olderlogs/app_$timestamp.log.old"
            touch "$LOG_FILE"
            echo -e "${GREEN}[SUCCESS] Log rotated to app_$timestamp.log.old${RESET}"
        fi
    fi
}

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] L O G G I N G   &   R O T A T I O N ${RESET}"
    echo ""
    echo -e "${BASE}Current Log File: $LOG_FILE${RESET}"
    
    if [ -f "$LOG_FILE" ]; then
        echo -e "${BASE}--- Content ---${RESET}"
        cat "$LOG_FILE"
        echo -e "${BASE}---------------${RESET}"
    fi
    
    read -p "[+] Enter a log message (or 'x' to exit): " user_msg

    if [[ "$user_msg" == "x" || "$user_msg" == "X" ]]; then 
        rm -f *.log *.log.old
        break 
    fi
    log_msg "$user_msg"
    echo -e "${INFO}-> Message saved.${RESET}"
    
    check_rotate

    echo ""
done