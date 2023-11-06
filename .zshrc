#uncomment line below '#zmodload zsh/zprof' and very last line of current file '#zprof' to run a timing diagnostic if prompt is slow to load.
#zmodload zsh/zprof

#formatted with nerd-fonts Source Code Pro Medium (missing characters )
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{yellow}  שׂ %f%F{red}%b %f'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{magenta}%f %F{yellow}%f %F{green}%n%f %F{yellow}%f %F{blue}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}%F{magenta} %f'
export LSCOLORS=ExFxBxDxCxegedabagacad

setopt AUTO_CD 

autoload -Uz compinit
compinit

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/etc/profile.d/z.sh

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

setopt HIST_IGNORE_DUPS  # Don't record duplicate entries
setopt HIST_IGNORE_SPACE # Don't record entries starting with a space
setopt HIST_FIND_NO_DUPS # Don't display duplicates in history search
setopt HIST_SAVE_NO_DUPS # Don't write duplicates to history file
HISTSIZE=5000            # Number of entries to keep in memory
SAVEHIST=10000            # Number of entries to save to disk
HISTFILE=~/.zsh_history  # Location of history file

# Enable colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

#Message of the day
source ~/.zsh/.motd.sh
#Aliases file
source ~/.zsh/.alias.sh
#Functions file
source ~/.zsh/.functions.sh
#zprof
