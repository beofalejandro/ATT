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

greet_user() {
    local name="$1" 
    local age="$2"
    
    echo -e "${GREEN}  -> Function says: Hello ${name}, you are ${age} years old.${RESET}"
}

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] B A S I C   F U N C T I O N S ${RESET}"
    echo ""

    read -p "[+] Enter a name or type 'x' to exit: " input_name
    if [[ "$input_name" == "x" || "$input_name" == "X" ]]; then break; fi
    
    read -p "[+] Enter an age: " input_age

    echo -e "${OPERATION}[*] Calling function 'greet_user' with arguments...${RESET}"
    greet_user "$input_name" "$input_age"

    echo ""
done