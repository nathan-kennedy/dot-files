#!/bin/zsh

# Create a descriptor (number 3) pointing to the log file
exec 3>>/Users/nate/Documents/Logseq-git/LogSeq-PKB/logs/log.txt

# Ensure .zshrc is loaded
source $HOME/.zshrc

# Drop any output from loading .zshrc
exec &>/dev/null

{
    # Get the current date
    date=$(date +"%Y_%m_%d")

    # Logseq journal directory
    journal_dir="/Users/nate/Documents/Logseq-git/LogSeq-PKB/journals"

    # Today's journal file path
    journal_file="${journal_dir}/${date}.md"

    # Check if today's journal file exists
    if [ ! -f "$journal_file" ]; then
        # The file does not exist, create it
        touch "$journal_file"
    fi

    # Change directory to the correct git repository
    cd /Users/nate/Documents/Logseq-git/LogSeq-PKB

    # Commit message
    commit_message="save $(date +"%m.%d.%y")"

    # Print current changes in git
    echo " " >&3
    echo "$(date)" >&3
    echo "Current changes:" >&3
    git diff >&3

    # Run acp function with the formatted date
    acp $commit_message >&3

    echo "$(date): Daily Journal Script Ran via launchd." >&3
    echo " " >&3
} |& tee -a /Users/nate/Documents/Logseq-git/LogSeq-PKB/logs/log.txt

# Close the file descriptor
exec 3<&-
