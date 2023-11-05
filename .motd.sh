cols=$(tput cols)
block_size=5
pattern=(40 45 41 43 42 44 46 47)  # Black, Magenta, Red, Yellow, Green, Blue, Teal, White
pattern_length=${#pattern[@]}
blocks_needed=$((cols / block_size))
printed_blocks=0
chars_printed=0
while [ $printed_blocks -lt $blocks_needed ]; do
  for color in "${pattern[@]}"; do
    if [ $printed_blocks -ge $blocks_needed ]; then
      break
    fi
    if [ $((chars_printed + block_size)) -gt $cols ]; then
      # Calculate remaining spaces and print a smaller block
      remaining=$((cols - chars_printed))
      printf "\033[%sm%${remaining}s\033[0m" "$color" " "
      chars_printed=$((chars_printed + remaining))
    else
      printf "\033[%sm%${block_size}s\033[0m" "$color" " "
      chars_printed=$((chars_printed + block_size))
    fi
    printed_blocks=$((printed_blocks + 1))
  done
done
# Move to the next line
printf "\n"
echo "                                                                       "
echo "                                                                       "
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
echo "                                 "
echo "                                 "
echo "                                 "
echo -e "\033[0m\033[1;37mWelcome, Nathan! Today is\033[1;32m $(date +"%a %b %e")\033[1;37m\033[0m Happy coding!\033[0m"