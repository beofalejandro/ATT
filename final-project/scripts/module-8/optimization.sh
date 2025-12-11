#!/bin/bash

BASE="\033[38;5;15m"
EMPHASIS="\033[38;5;128m"
OPERATION="\033[38;5;45m"
YELLOW="\033[38;5;226m"
GREEN="\033[38;5;42m"
INFO="\033[38;5;45m"
RESET="\033[0m"

heavy_task() {
    sleep 2
}

while true; do
    sleep 1
    echo ""
    echo -e "${EMPHASIS}[*] O P T I M I Z A T I O N   ( B A C K G R O U N D ) ${RESET}"
    echo ""
    echo -e "${BASE}We will run 3 tasks (2 seconds each).${RESET}"
    echo ""
    
    read -p "[+] Press Enter to start SEQUENTIAL test..." dummy

    echo -e "${OPERATION}[*] Running Sequentially (Wait 2s... Wait 2s... Wait 2s...)${RESET}"

    time {
        heavy_task
        echo -e "   -> Task 1 done"
        heavy_task
        echo -e "   -> Task 2 done"
        heavy_task
        echo -e "   -> Task 3 done"
    }

    echo ""
    echo -e "${INFO}[ANALYSIS] It took ~6 seconds (2+2+2).${RESET}"
    echo ""
    
    read -p "[+] Press Enter to start PARALLEL test" dummy
    
    echo -e "${OPERATION}[*] Running in Parallel (All at once using '&')${RESET}"
    
    time {
        heavy_task &
        PID1=$!
        heavy_task &
        PID2=$!
        heavy_task &
        PID3=$!
        
        echo -e "   -> Tasks launched in background"
        
        wait $PID1 $PID2 $PID3
        echo -e "   -> All tasks done"
    }
    
    echo ""
    echo -e "${GREEN}[ANALYSIS] It took 2 seconds! (Optimization Success)${RESET}"

    echo ""
    read -p "Press Enter to continue or 'x' to exit" input
    if [[ "$input" == "x" || "$input" == "X" ]]; then break; fi
done