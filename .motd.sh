echo "               \033[1;0m.:^~~~~~^:                                     "           
echo "           \033[1;0m^7YG#&@@@@@@@&B57:                                 "           
echo "        \033[1;0m^JB@@@@@@@@@@@@@@@@@&G7.                              "           
echo "      \033[1;0m^5@@@@@@@@@@@@@@@@@@@@@@@B7                             "           
echo "     \033[1;0mJ@@@@@@@@@@@@@@@@@@@@@@@@@@@5                            "           
echo "    \033[1;0m5@@@@@@@@@@@@@@@@@@@@@@@@#B&B@~    \033[3;33mdMMMMMP .dMMMb  dMP dMP\033[0m "
echo "   \033[1;0m?@@@@@@@@@@@@@@@@@@@@@@@@&:J@~:.     \033[3;33m.dMP\" dMP\" VP dMP dMP\033[0m" 
echo "  \033[1;0m.#@@@@@@@@@@@@@@@@@@@@@@@J^ JY:     \033[3;33m.dMP\"   VMMMb  dMMMMMP\033[0m  "    
echo " \033[1;0m:P&&&@@@@@@@@@@@@@@@@#GBP~         \033[3;33m.dMP\"   dP .dMP dMP dMP\033[0m  "   
echo " \033[1;0m~!:::7B@@@@@##&@@@@#^.            \033[3;33mdMMMMMP  VMMMP\" dMP dMP\033[0m   "
echo " \033[1;0m?P  \033[31m♁\033[1;0m :@@@&~ ..^!YB#^    "         
echo " \033[1;0mP&??. ~7B@&.  \033[31m.⛢.\033[1;0m  :7!  ""   \033[1;36mHardware:\033[34m $(sysctl -n hw.model)\033[0m \033[1;36mOS:\033[34m $(sw_vers -productName) $(sw_vers -productVersion)\033[0m" # Hardware and OS info
echo "\033[1;0m:#&@B~7:  Y@~ . \033[31m\`\033[1;0m   .#@7""    \033[1;36mCPU:\033[34m $(sysctl -n machdep.cpu.brand_string)\033[0m \033[1;36mMemory:\033[34m $(sysctl hw.memsize | awk '{print $2/1073741824" GB RAM"}')\033[0m"        
echo " \033[1;0m:!PY5?   .G&5BBG7J7P@@7    ""\033[1;36mUser:\033[34m $(whoami)\033[0m \033[1;36mShell:\033[34m $(basename $SHELL)\033[0m"  # User, Shell, and Uptime info
echo "   \033[1;0m.5@Y    :@@P555B@@@P     ""\033[1;36mNetwork:\033[34m $(networksetup -getcomputername)\033[0m" # Network and Brew packages info
echo "     \033[1;0m5@G?J!J@B!:  ^G5J^     ""\033[1;36mDiskspace:\033[34m $(df -h / | awk 'NR==2 {print $4 " available"}' | sed 's/Gi/GB/')\033[0m" 
echo "     \033[1;0m~PB#&@BJ~^:            ""\033[1;36mUptime:\033[34m $(uptime | awk -F'up ' '{print $2}' | cut -d',' -f1-2)\033[0m"
echo "       \033[1;0m...7.                ""\033[1;36mPackages:\033[34m $(brew list | wc -l | tr -d ' ')\033[0m"

# Define color variables with background colors
BG_BLACK="\033[0;40m"
BG_RED="\033[0;41m"
BG_GREEN="\033[0;42m"
BG_YELLOW="\033[0;43m"
BG_BLUE="\033[0;44m"
BG_MAGENTA="\033[0;45m"
BG_CYAN="\033[0;46m"
BG_WHITE="\033[0;47m"
RESET="\033[0m"

# Print a line with the 8 main terminal background colors as blocks
echo -e "         T                  ""${BG_BLACK}     ${RESET}${BG_RED}     ${RESET}${BG_GREEN}     ${RESET}${BG_YELLOW}     ${RESET}${BG_BLUE}     ${RESET}${BG_MAGENTA}     ${RESET}${BG_CYAN}     ${RESET}${BG_WHITE}     ${RESET}"
echo -e "   "
echo -e "   "
echo -e "\033[0m\033[1;37mWelcome, $USER! Today is\033[1;32m $(date +"%a %b %e")\033[1;37m\033[0m Happy coding!\033[0m"