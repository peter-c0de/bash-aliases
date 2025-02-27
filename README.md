# bash-aliases

## Steps:

1. Add the following code to the .bashrc in the home directory

```bash
### My Aliases ###

# Github Token:
# Requirements: xsel
# echo -n: exclude the "\n"
github_password="password1234"
alias ghp='echo $github_code; echo -n $github_password | xsel -b'

# Opens Current Directory in VSCode
alias vsc0de='code .; exit'

# Testing Parameters/Arguments
echoTest(){ echo $1 $2 $3; }

# Download YT Mp3:
downloadMp3(){ yt-dlp -x --audio-format mp3 $1; }

# Download YT Mp4:
downloadMp4(){ yt-dlp --format mp4 $1; 

# Merge MP4 with New Mp3:
# Requirements: ffmpeg
mergeMp4Mp3(){ ffmpeg -i $1 -i $2 -map 0:v -map 1:a -c:v copy -shortest $3; }

# PDF to PNGs:
# Requirements: imagemagick, poppler-utils, pdftoppm
pdf2png(){ pdftoppm -png $1 png; }
```

2. Re-run the .bashrc
>Filename: .bashrc

>To run: .

```bash
$ cd~
$ . .bashrc
```

## Links:

https://linuxize.com/post/how-to-create-bash-aliases/

https://opensource.com/article/19/7/bash-aliases

https://stackoverflow.com/questions/7131670/make-a-bash-alias-that-takes-a-parameter

https://askubuntu.com/questions/17536/how-do-i-create-a-permanent-bash-alias

https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html
