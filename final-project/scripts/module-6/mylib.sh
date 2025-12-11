LIB_COLOR="\033[38;5;213m" 
RESET="\033[0m"

calculate_sum() {
    local a=$1
    local b=$2
    echo $((a + b))
}

show_system_info() {
    echo -e "${LIB_COLOR}[LIB] System: $(uname -s) | User: $USER${RESET}"
}