### My Aliases ###

# Github Token:
github_password="password1234"
alias ghp='echo $github_code'

# Testing Parameters/Arguments
echoTest(){ echo $1 $2 $3; }

# Download YT Mp3:
# Requirements: yt-dlp
downloadMp3(){ yt-dlp -x --audio-format mp3 $1; }

# Download YT Mp4:
# Requirements: yt-dlp
downloadMp4(){ yt-dlp --format mp4 $1; 


