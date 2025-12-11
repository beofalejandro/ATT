#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

my_var="I AM GLOBAL"

bad_function() {
    echo -e "${RED}  [Bad Func] I am changing 'my_var' without 'local' keyword!${RESET}"
    my_var="MODIFIED BY BAD FUNCTION"
}

good_function() {
    local my_var="I AM LOCAL"
    echo -e "${GREEN}  [Good Func] Inside here, my_var is: '$my_var'${RESET}"
}

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] V A R I A B L E   S C O P E ${RESET}"
    echo -e "${BASE}Demonstrating 'local' vs Global variables.${RESET}"
    
    my_var="I AM GLOBAL"
    
    echo -e "${INFO}1. Initial Global Value:${RESET} ${YELLOW}'$my_var'${RESET}"
    
    read -p "[+] Press Enter to run 'Good Function' (safe)... " dummy
    if [[ "$dummy" == "x" ]]; then break; fi
    
    good_function
    echo -e "${INFO}2. After Good Function, Global Value is:${RESET} ${YELLOW}'$my_var'${RESET}"
    echo -e "${BASE}(It remained safe because we used 'local')${RESET}"
    echo ""
    
    read -p "[+] Press Enter to run 'Bad Function' (unsafe)... " dummy
    
    bad_function
    echo -e "${INFO}3. After Bad Function, Global Value is:${RESET} ${RED}'$my_var'${RESET}"
    echo -e "${BASE}(The global variable was overwritten!)${RESET}"

    echo ""
    read -p "Press Enter to restart demo or 'x' to exit: " input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
done