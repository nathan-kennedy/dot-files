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

#gif creation functions

gif() {
    if [ "$#" -lt 4 ]; then
        echo "Usage: create_gif <source_video> <start_time_hh:mm:ss> <duration_hh:mm:ss> <output_gif> [quality] [width] [fps]"
        return 1
    fi

    local quality=${5:-low}
    local width=${6:-640}
    local fps=${7:-10}
    local palette="/tmp/palette.png"

    if [ "$quality" = "high" ]; then
        ffmpeg -ss "$2" -t "$3" -i "$1" -vf "fps=$fps,scale=$width:-1:flags=lanczos,palettegen" "$palette"
        ffmpeg -ss "$2" -t "$3" -i "$1" -i "$palette" -filter_complex "fps=$fps,scale=$width:-1[x];[x][1:v]paletteuse" -an "$4"
        rm "$palette"
    else
        ffmpeg -ss "$2" -t "$3" -i "$1" -filter_complex "fps=$fps,scale=$width:-1" -an "$4"
    fi
}

#interactive gif creation function

makegif() {
    echo "Enter the source video path:"
    read source_video

    echo "Enter the start time (hh:mm:ss):"
    read start_time

    echo "Enter the duration (hh:mm:ss):"
    read duration

    echo "Enter the output GIF file name:"
    read output_gif

    echo "Enter the quality (high/low, default: low). Press Enter to skip:"
    read quality
    quality=${quality:-low}

    echo "Enter the width (default: 640). Press Enter to skip:"
    read width
    width=${width:-640}

    echo "Enter the frames per second (FPS, default: 10). Press Enter to skip:"
    read fps
    fps=${fps:-10}

    echo "Enter the number of colors for optimization (default: 256). Reducing the number of colors can significantly reduce file size. Try using 128 to see if the results are satisfactory. Press Enter to use the default:"
    read num_colors
    num_colors=${num_colors:-256}

    local temp_gif="temp_$output_gif"
    local palette="/tmp/palette.png"

    if [ "$quality" = "high" ]; then
        ffmpeg -ss "$start_time" -t "$duration" -i "$source_video" -vf "fps=$fps,scale=$width:-1:flags=lanczos,palettegen" "$palette"
        ffmpeg -ss "$start_time" -t "$duration" -i "$source_video" -i "$palette" -filter_complex "fps=$fps,scale=$width:-1[x];[x][1:v]paletteuse" -an "$temp_gif"
        rm "$palette"
    else
        ffmpeg -ss "$start_time" -t "$duration" -i "$source_video" -filter_complex "fps=$fps,scale=$width:-1" -an "$temp_gif"
    fi

    # Optimize the temporary GIF and rename it to the chosen output name
    echo "Optimizing GIF for smaller file size with $num_colors colors..."
    gifsicle -O3 --colors $num_colors "$temp_gif" -o "$output_gif"
    rm "$temp_gif"

    echo "Optimized GIF created: $output_gif"
}
