# Dot-files for zsh 💻

### MotD

_This took way longer than it should have, but I like the result, hope you do too. The terminal window needs to be pretty small before the formatting is broken. 👍_

![alt text](/assets/motd-screen.png)

### Aliases

**_.._** = back one directory  
**_..._** = back two directories  
**_...._** = back three directories  
**_....._** = back four directories  
**_......_** = back five directories  
**_ave_** = ansible-vault encrypt  
**_avd_** = ansible-vault decrypt  
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
**_trash_** = trash with Finder instead of system API  
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

**_acp_** = git automation - check for changes to commit, then git add -A, git commit -m, and git push origin {current branch}. No need to use quotes for commit message.

### ImageMagick

**_orgimg_** = takes a directory and organizes all images into folders named with the file extension.  
**_jpg2png_** = .jpg and .jpeg conversion to .png  
**_jpg2webp_** = .jpg and .jpeg conversion to webp  
**_png2jpg_** = .png conversion to .jpg  
**_png2webp_** = .png conversion to .webp  
**_webp2jpg_** = .webp conversion to .jpg  
**_webp2png_** = .webp conversion to .png  
**_optjpg_** = optimize all .jpg's in a directory  
**_optpng_** = optimizw all .png's in a directory
