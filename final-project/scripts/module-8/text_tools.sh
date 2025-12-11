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

LOG_FILE="./scripts/etc/server_dump.log"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] T E X T   T O O L S   ( G R E P / A W K / S E D ) ${RESET}"
    echo ""
    
    echo -e "${OPERATION}[*] Generating dummy log ($LOG_FILE)...${RESET}"
    cat <<EOF > "$LOG_FILE"
2025-10-01 08:00:01 [INFO] User admin logged in from 192.168.1.5
2025-10-01 08:05:22 [ERROR] Database connection failed from 10.0.0.20
2025-10-01 08:10:45 [WARN] High memory usage
2025-10-01 08:15:10 [ERROR] Timeout waiting for service X from 10.0.0.20
2025-10-01 08:20:00 [INFO] User guest logged out
EOF
    sleep 0.5
    
    echo -e "${BASE}Raw File Content:${RESET}"
    cat "$LOG_FILE"
    echo -e "${YELLOW}--------------------------------------${RESET}"

    read -p "[+] Press Enter to apply filters..." dummy

    echo -e "${OPERATION}[1] GREP: Filtering only '[ERROR]' lines...${RESET}"
    grep "ERROR" "$LOG_FILE"
    
    echo ""
    echo -e "${OPERATION}[2] AWK: Extracting IPs (Column 7)...${RESET}"
    grep "ERROR" "$LOG_FILE" | awk '{print "Bad IP:", $7}'
    
    echo ""
    echo -e "${OPERATION}[3] SED: Anonymizing IPs (Replacing numbers with X)...${RESET}"
    grep "ERROR" "$LOG_FILE" | sed 's/[0-9]/X/g'

    rm "$LOG_FILE"

    echo ""
    read -p "Press Enter to continue or 'x' to exit" input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
done