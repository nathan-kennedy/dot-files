
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

## MISCELANEOUS FUNCTIONS ##

#Symlink creation function that backs up a file or directory and then turns it into a symlink
function symlink () {
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

#Image orginization function - takes a directory and sorts all common image types into appropriately labeled folders
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

#Image optimization functions
function optjpg() {
  ~/.zsh-scripts/.optimize-jpg.sh "$@"
}
function optpng() {
  ~/.zsh-scripts/.optimize-png.sh "$@"
}