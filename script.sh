### My Aliases List ###
aliases_list="
\e[31mAliases ###\e[0m
ghp - Trust in the Lord with all your heart and lean not on your own understanding
vsc0de - opens VSCode
dir_sizes - shows directories sizes
html-temp - clones html template
bs-temp - clones bootstrap template

\e[31mFunctions ###\e[0m
run_bashrc() - runs .bashrc
echoTest() - testing parameters/arguments
updateYTDLP() - updates yt-dlp
downloadMp3(youtubelink) - download .mp3 from youtube using yt-dlp
downloadMp4(youtubelink) - download .mp4 from youtube using yt-dlp
mergeMp4Mp3(mp4,mp3) - merge mp4  with new mp3
pdf2png(pdf) - pdf to pngs
wav2mp3() - convert all WAV files in current directory to MP3

\e[31mReact ###\e[0m
reactVite - creates new vite
reactRun - runs react local server
reactIghp - install gh-pages
reactDeploy - deploy project
"

# Show All of the User's Aliases:
alias as_list='echo -e "$aliases_list"'

### My Aliases ###

# Github Token:
# Requirements: xsel
# echo -n: exclude the "\n"
github_password="password1234"
proverbs5_3="Trust in the Lord with all your heart and lean not on your own understanding."
alias ghp='echo $proverbs5_3; echo -n $github_password | xsel -b'

# Opens Current Directory in VSCode
# Requirements: VSCode
alias vsc0de='code .; exit'

# Get the Directories Sizes and Order them Descendingly
alias dir_sizes='du -skh * | sort -hr'

# Download: Peter CODE's HTML Template
# Requirements: git
alias html-temp='git clone https://github.com/peter-c0de/html-temp; cd html-temp; bash clean.sh; exit'

# Download: Peter CODE's JavaSCript Template
# Requirements: git
alias js-temp='git clone https://github.com/peter-c0de/js-temp; cd js-temp; bash clean.sh; exit'

# Download: Peter CODE's Bootstrap Template
# Requirements: git
alias bs-temp='git clone https://github.com/peter-c0de/bs-temp; cd bs-temp; bash clean.sh; exit'

# Runs .bashrc: Must when modifing .bashrc file
run_bashrc() { source ~/.bashrc; }

# Testing Parameters/Arguments
echoTest(){ echo $1 $2 $3; }

# Updates yt-dlp
# Requirements: yt-dlp
updateYTDLP(){ pip3 install --upgrade yt-dlp;  }

# Download YT Mp3:
# Requirements: yt-dlp
downloadMp3(){ yt-dlp -x --audio-format mp3 $1; }

# Download YT Mp4:
# Requirements: yt-dlp
downloadMp4(){ yt-dlp --format mp4 $1; }

# Merge MP4 with New Mp3:
# Requirements: ffmpeg
mergeMp4Mp3(){ ffmpeg -i $1 -i $2 -map 0:v -map 1:a -c:v copy -shortest $3; }

# PDF to PNGs:
# Requirements: imagemagick, poppler-utils, pdftoppm
pdf2png(){ pdftoppm -png $1 png; }

# WAV to MP3
# Requirements: ffmpeg
wav2mp3() {
    for f in *.wav; do
        [ -f "$f" ] || continue
        filename="${f%.*}"
        ffmpeg -i "$f" -codec:a libmp3lame -qscale:a 2 "${filename}.mp3"
    done
}

# REACT Aliases
alias reactVite='npx create-vite@latest'
alias reactRun='npm run dev'
alias reactIghp='npm install --save-dev gh-pages'
alias reactDeploy='npm run deploy'

