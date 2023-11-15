## ALIASES ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias home='~'
alias root='/'
alias ave='ansible-vault encrypt'
alias avd='ansible-vault decrypt'
alias _='sudo '
alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push origin'
alias gd='git diff'
alias rm='rm -v -I'
alias c="clear && neofetch" 
alias r='clear && source ~/.zshrc'
alias greph='history | grep $1'
alias grepa='alias | grep $1'
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias md='mkdir'
alias rmd='rmdir -v'
alias del='rm -fr'
alias rms='rm -i -v'
alias la='ls -A'
alias ls='ls -G'
alias l='ls -lah'
#exa alias with all the fixin's
alias ll='exa -lhaUm --git --group-directories-first -s=type'
#exa directories only alias with all the fixin's
alias ld='exa -lhUmaD --git'
#exa files only alias with all the fixin's
alias lf='exa -lhUmaF | grep -v "/$"'
#open aichat history in vscode
alias chathistory='code $HOME/Library/Application\ Support/aichat/messages.md'
#check network speed/quality
alias speedtest='speedtest-cli'
#copy to clipboard (paste board)
alias pb='pbcopy'
#Logseq graph database for git version control
alias notes="cd '$HOME/Documents/Logseq-git/Logseq Personal Graph - git repo'"
#Git repos directory shortcut
alias repos="cd ~/git_repos"
#Trash uses Finder trash instead of sysrem API to esure 'allow putback'
alias trash='trash -F'
#Flush DNS cache - password needed
alias dnsflush='sudo killall -HUP mDNSResponder && sudo killall mDNSResponderHelper && sudo dscacheutil -flushcache'
#open zshrc config and MOTD in VS Code
alias zsh='code ~/.zshrc ~/.zsh/.alias.sh ~/.zsh/.motd.sh ~/.zsh/.functions.sh'
#simplified 'du' with nice formatting
alias dusage="du -hd 1 | sort -hr | awk 'BEGIN { print \"SIZE     DIRECTORY\"; print \"------------------\" } { print \$1, \$2 }'"
#full 'ps aux' output sorted by memory (less cmd args, pid, and vsz) with dashed line row separators
alias psmem="ps aux | sort -nr -k 4 | head -11 | awk 'BEGIN { count=1; } NR==1 {print \"NO   USER               %CPU  %MEM    USAGE   COMMAND\"; print \"---- ------------------- ----- ------ ------- --------------------------------\"} NR > 1 {printf \"%-4d %-20s %-6s %-7s %-8s %s\n\", count++, \$1, \$3, \$4, \$6/1024, \$11; print \"---- ------------------- ----- ------ ------- --------------------------------\"}' | column -t"
#full 'ps aux' output sorted by cpu (less cmd args, pid, and vsz) with dashed line row separators
alias pscpu="ps aux | sort -nr -k 3 | head -11 | awk 'BEGIN { count=1; } NR==1 {print \"NO   USER               %CPU  %MEM    USAGE   COMMAND\"; print \"---- ------------------- ----- ------ ------- --------------------------------\"} NR > 1 {printf \"%-4d %-20s %-6s %-7s %-8s %s\n\", count++, \$1, \$3, \$4, \$6/1024, \$11; print \"---- ------------------- ----- ------ ------- --------------------------------\"}' | column -t"
##Apps
alias brave='open -a "Brave Browser.app"'
alias logseq='open -a Logseq'
