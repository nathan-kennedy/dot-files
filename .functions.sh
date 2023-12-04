## GIT FUNCTIONS ##

#git add, commit -m, push function (no need to use quotes for commit message 😉)
function acp() {
	# Check if there are any changes to add
	if [ -z "$(git status --porcelain)" ]; then
		echo "No changes to commit."
		return 1
	fi

	# Check if a commit message is provided
	if [ -z "$1" ]; then
		echo "Please provide a commit message."
		return 1
	fi

	# Concatenate all arguments into one commit message
	local message="$*"

	# Add all changes
	git add -A

	# Commit the changes with the concatenated message
	git commit -m "$message"

	# Push the changes to the master branch
	git push origin master
}

## MISCELLANEOUS FUNCTIONS ##

#Symlink creation function that backs up a file or directory and then turns it into a symlink
function symlink() {
	if [ -e "$1" ]; then
		# Create a timestamp for the backup
		timestamp=$(date +"%Y%m%d%H%M%S")
		# Rename using the timestamp to avoid conflicts
		mv "$1" "$1.backup.$timestamp"
		ln -sf "$2" "$1"
	else
		echo "$1 does not exist."
		return 1
	fi
}

## IMAGE MANIPULATION FUNCTIONS ##

#Image organization function - takes a directory and sorts all common image types into appropriately labeled folders
function orgimg() {
	~/.zsh-scripts/.organize_images.sh "$@"
}

#Image conversion functions
function jpg2png() {
	~/.zsh-scripts/.jpg2png.sh "$@"
}
function jpg2webp() {
	~/.zsh-scripts/.jpg2webp.sh "$@"
}
function png2jpg() {
	~/.zsh-scripts/.png2jpg.sh "$@"
}
function png2webp() {
	~/.zsh-scripts/.png2webp.sh "$@"
}
function webp2jpg() {
	~/.zsh-scripts/.webp2jpg.sh "$@"
}
function webp2png() {
	~/.zsh-scripts/.webp2png.sh "$@"
}
function pdf2jpg() {
	~/.zsh-scripts/.pdf2jpg.sh "$@"
}
function jpg2pdf() {
	~/.zsh-scripts/.jpg2pdf.sh "$@"
}
function vector2png() {
	~/.zsh-scripts/.vector2png.sh "$@"
}
function heic2jpg() {
	~/.zsh-scripts/.heic2jpg.sh "$@"
}

#Image optimization functions
function optjpg() {
	~/.zsh-scripts/.optimize-jpg.sh "$@"
}
function optpng() {
	~/.zsh-scripts/.optimize-png.sh "$@"
}

source ~/git_repos/makegif/makegif.sh

# Searching the web

function ddg() {
	brave "https://www.duckduckgo.com/?q=$1"
}

function google() {
	brave "https://www.google.com/search?q=$1"
}

function youtube() {
	brave "https://www.youtube.com/results?search_query=$1"
}

# Torrent magnet creation

funcion magnet() {
    local infohash=$1

    if [ -z "$infohash" ]; then
        echo "Error: Please provide an info hash"
        return 1
    fi
    local trackers="$(curl -s https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best.txt | head -n 20)"
    trackers=$(printf '%s' "$trackers" | awk '{ printf "&tr="; printf "%s", $0 }')
    trackers=${trackers//:/\%3A}
    trackers=${trackers//\//\%2F}

    local magnet_link="magnet:?xt=urn:btih:$infohash$trackers"

    # Print the magnet link to the terminal
    echo $magnet_link

    # And copy it to the clipboard
    echo -n $magnet_link | pbcopy
}

function dl-torrent() {
  aria2c -d /Users/nate/Downloads --bt-save-metadata=true "$(pbpaste)"
}
