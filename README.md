# Dot-files for zsh 💻

### MotD

_This took way longer than it should have, but I like the result, hope you do too. The terminal window needs to be pretty small width-wise before the formatting is broken so there shouldn't be any problems there. 👍_

![terminal screenshot with custom motd(neofetch inspired)](/assets/motd-screen.png)
_If my skull ascii is too much you could always change the .zshrc to load neofetch install, or do what I do, use both. I have the motd set to load when I use the 'r' alias and I have neofetch set to load when I clear the screen with the 'c' alias. Of course, you can always &lt;control&gt;+l if you want neither._
![terminal screenshot with neofetch displayed](/assets/neofetch.png)

### Aliases

**_.._** = back one directory  
**_..._** = back two directories  
**_...._** = back three directories  
**_....._** = back four directories  
**_......_** = back five directories
**_home_** = home directory
**_root_** = root directory
**_ave_** = ansible-vault encrypt  
**_avd_** = ansible-vault decrypt  
**\_** = sudo  
**_ga_** = git add  
**_gs_** = git status  
**_gc_** = git commit -m  
**_gp_** = git push origin master  
**_rm_** = verbose remove w/ confirmation over 3 files  
**_c_** = clear and load neofetch (for when skulls are too edgelord)  
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
**_pdf2jpg_** = .png coversion to .jpg  
**_vector2png_** = .ai, .eps, or .svg conversion to .png  
**_heic2jpg_** = Apple's latest HEIC image conversion to .jpg  
**_optjpg_** = optimize all .jpg's in a directory  
**_optpng_** = optimizw all .png's in a directory

### Miscelaneous

**_symlink_** = creates a backup of a directory and then creates a symlink of the directory with the original name

## Starship prompt configuration file

I've set up the starship.toml config file to have the prompt look like the powerline prompt. I've set it up using iterm2 so the colors may be broken on an other terminal app. Also 'magenta' wasn't working for some reason. Not sure if it's a bug with starship or with iterm2. I got around it by hard-coding the color with a hex color.

![prompt image](/assets/prompt.png)

You'll want these two lines at the bottom of your .zshrc:

```zsh
export STARSHIP_CONFIG=~/path/to/starship.toml
eval "$(starship init zsh)"
```

If you're using my 'new-mac-setup' script, it will automatically retrieve my dot files and so the lines will be there but since my actual dot files are in this repo the 'path/to/starship.toml' is a symlink and you'll want to change that anyway. For reference my symlink is in `~/.config/starship/starship.toml`.

### Where's my minimalist prompt? 🧐

This is obviously overboard for some people. You can simply delete the sections you don't want from the 'format' block at the top of 'starship.toml'. You don't have to worry about deleting formatting and styling blocks lower in the file.

_Example_ Delete these lines for a minimalist prompt with only the user name, directories, git branch & status, and last-command status:

![lines to delete in starship.toml file for minimalist prompt](/assets/minimal.png)
