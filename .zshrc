# Load version control information for use in the prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Customize the version control information format for git repositories
# This sets the branch name to appear in red and the git icon in yellow
zstyle ':vcs_info:git:*' formats '%F{yellow}  󰘬 %f%F{yellow}%b %f'
 
# Configure the prompt appearance
# Displays an arrow, the directory path, the git branch, and a symbol before the cursor
setopt PROMPT_SUBST
PROMPT='%F{magenta}%f %F{yellow} %f%F{green}%n%f %F{yellow} %f %F{blue}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}%F{magenta} %f'

# Set directory and file color scheme for 'ls' and 'grep' commands
export LSCOLORS=ExFxBxDxCxegedabagacad

# Automatically navigate to a directory without typing 'cd'
setopt AUTO_CD 

# Load and initialize the completion system, providing options and file paths predictions
autoload -Uz compinit
compinit

# Load syntax highlighting, which provides different coloring for commands, options, paths, etc.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load auto-suggestions, which provides suggestions for commands as you type based on command history
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load 'z', which tracks your most visited directories and allows quick navigation to them
source $(brew --prefix)/etc/profile.d/z.sh

# Configure how command completions are displayed and navigated
zstyle ':completion:*' menu select
# Configure how the command line tries to auto-correct and match your input
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# History configuration: how history entries are recorded and how duplicates are handled
setopt HIST_IGNORE_DUPS  # Ignore duplicate entries
setopt HIST_IGNORE_SPACE # Ignore entries that start with a space
setopt HIST_FIND_NO_DUPS # Find command without duplicates
setopt HIST_SAVE_NO_DUPS # Don't write duplicates to the history file
HISTSIZE=5000            # Keep 5000 entries in memory
SAVEHIST=10000           # Save 10000 entries to the history file
HISTFILE=~/.zsh_history  # Set the location of the history file

# Enable colored man pages for better readability
export LESS_TERMCAP_mb=$'\E[01;31m'       # Begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # Begin bold
export LESS_TERMCAP_me=$'\E[0m'           # End mode
export LESS_TERMCAP_se=$'\E[0m'           # End standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # Begin standout-mode (for info box)
export LESS_TERMCAP_ue=$'\E[0m'           # End underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # Begin underline

# Custom scripts for additional configuration
source ~/.zsh/.motd.sh      # Load a custom message of the day script
source ~/.zsh/.alias.sh     # Load a custom aliases script
source ~/.zsh/.functions.sh # Load a custom functions script
