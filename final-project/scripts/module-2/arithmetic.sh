#!/bin/bash

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
    echo -e "${EMPHASIS}[*] A R I T H M E T I C   C A L C U L A T O R ${RESET}"
    echo ""
    read -p "[+] Enter first number (A) or 'x' to exit: " num_a
    if [[ "$num_a" == "x" ]]; then break; fi

    read -p "[+] Enter second number (B) or 'x' to exit: " num_b
    if [[ "$num_b" == "x" ]]; then break; fi

    if ! [[ "$num_a" =~ ^[0-9]+$ ]] || ! [[ "$num_b" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}[ERROR] Please enter valid integers.${RESET}"
        continue
    fi
    
    sum=$((num_a + num_b))
    sub=$((num_a - num_b))
    mul=$((num_a * num_b))
    
    if [ "$num_b" -ne 0 ]; then
        div=$((num_a / num_b))
        mod=$((num_a % num_b))
    else
        div="undefined"
        mod="undefined"
    fi

    echo ""
    echo -e "${OPERATION}[INFO] Results for operations:${RESET}"
    echo -e "${INFO}[+] Sum (+):      ${YELLOW}$sum${RESET}"
    echo -e "${INFO}[-] Subtract (-): ${YELLOW}$sub${RESET}"
    echo -e "${INFO}[*] Multiply (*): ${YELLOW}$mul${RESET}"
    echo -e "${INFO}[/] Divide (/):   ${YELLOW}$div${RESET}"
    echo -e "${INFO}[%] Modulo (%):   ${YELLOW}$mod${RESET}"
    echo ""

    #read -p "[+] Press Enter to continue or 'x' to exit: " input
    #if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
done