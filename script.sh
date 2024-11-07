### My Aliases ###

# Github Token:
github_password="password1234"
alias ghp='echo $github_code'

# Download YT Mp3:
downloadMp3(){ yt-dlp -x --audio-format mp3 $1; }

# Download YT Mp4:
downloadMp4(){ yt-dlp --format mp4 $1; 
