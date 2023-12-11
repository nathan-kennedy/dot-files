#!/bin/zsh

{
    # Ensure .zshrc is loaded
    source $HOME/.zshrc

    # Get the current date
    date=$(date +"%Y_%m_%d")

    # Commit message
    commit_message="save $(date +"%m.%d.%y")"

    # Logseq journal directory
    journal_dir="/Users/nate/Documents/Logseq-git/LogSeq-PKB/journals"

    # Today's journal file path
    journal_file="${journal_dir}/${date}.md"

    # Check if today's journal file exists
    if [ ! -f "$journal_file" ]; then
        # The file does not exist, create it
        touch "$journal_file"
    fi

    # Run your acp function with the formatted date
    acp $commit_message

    echo "$(date): Daily Journal Script Ran via launchd."
} &>> /Users/nate/Documents/Logseq-git/LogSeq-PKB/logs/log.txt
