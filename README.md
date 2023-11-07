# dot-files

### MotD

![alt text](/assets/motd-screen.png)

### Aliases

**_.._** = back one directory
**_..._** = back two directories
**_...._** = back three directories
**_....._** = back four directories
**_......_** = back five directories
**\_** = sudo
**_ga_** = git add
**_gs_** = git status
**_gc_** = git commit -m
**_gp_** = git push origin master
**_rm_** = verbose remove w/ confirmation over 3 files
**_c_** = clear and load message of the day
**_mkcd_** = make directory and cd into it
**_md_** = mkdir
**_rmd_** = rmdir (verbose)
**_del_** = unsafe remove (no confirmation and recursive deletion)
**_rms_** = save removal (verbose with confirmation for every file)
**_la_** = list all files including hidden
**_ls_** = list w/ colors
**_l_** = list w/ long format, all files including hidden, and human readable byte sizes
**_ll_** = list w/ long format and human readable byte sizes
**_brave_** = open Brave browser
**_logseq_** = open LogSeq app
**_chathistory_** = open chat history for aichat (chatGPT tool for command line)
**_speedtest_** = network speedtest check
**_pb_** = copy to clipboard via piping
**_notes_** = LogSeq git repository
**_repos_** = git repositories directory
**_dnsflush_** = flush DNS cache (password needed)
**_r_** = clear && source ~/.zshrc
**_psmem_** = list computer processes by memory use with clean formatting
**_pscpu_** = list computer processes by cpu use with clean formatting
**_dusage_** = list disk usage for items in current directory with clean formatting
**_greph_** = grep command line history
**_grepa_** = grep aliases
**_grep_** = standard grep with colors added
**_egrep_** = grep -E with colors and ignores common hidden file types
**_fgrep_** = grep -F with colors and ignores common hidden file types
**_zsh_** = load .zshrc and its source files: .motd.sh .functions.sh and .alias.sh in VS code

## Functions

### Git

**_acp_** = git automation - check for changes to commit, then git add -A, git commit -m, and git push origin {current branch}.

### ImageMagick

**_orgimg_** = takes a directory and organizes all images into folders named with the file extension.
