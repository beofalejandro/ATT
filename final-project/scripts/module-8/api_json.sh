#!/bin/bash

# Colores
BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

JSON_FILE="./scripts/etc/data.json"

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] D A T A   I N T E G R A T I O N   ( J S O N ) ${RESET}"
    echo ""

    echo -e "${OPERATION}[*] Creating mock JSON data...${RESET}"
    cat <<EOF > "$JSON_FILE"
{
  "server": "prod-01",
  "status": "active",
  "users": [
    { "id": 101, "name": "Alice", "role": "admin" },
    { "id": 102, "name": "Bob", "role": "dev" }
  ],
  "uptime": 99.9
}
EOF
    cat "$JSON_FILE"
    echo -e "${YELLOW}--------------------------------------${RESET}"
    
    read -p "[+] Press Enter to parse data..." dummy

    if command -v jq &> /dev/null; then
        echo -e "${GREEN}[JQ DETECTED] Using native JSON parsing.${RESET}"
        
        echo -e "${INFO}-> Server Status:${RESET}"
        jq -r '.status' "$JSON_FILE"
        
        echo -e "${INFO}-> First User Name:${RESET}"
        jq -r '.users[0].name' "$JSON_FILE"
        
    else
        echo -e "${YELLOW}[WARNING] 'jq' not found. Using 'grep' fallback (less precise).${RESET}"
        echo -e "${INFO}-> Server Status:${RESET}"
        grep "status" "$JSON_FILE" | cut -d '"' -f 4
    fi

    rm "$JSON_FILE"

    echo ""
    echo -e "${BASE}Tip: In real scripts, install 'jq' for robust JSON handling.${RESET}"
    read -p "Press Enter to continue or 'x' to exit... " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
done