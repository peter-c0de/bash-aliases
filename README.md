# bash-aliases

## Steps:

1. Add the following code to the .bashrc in the home directory

```bash
### My Aliases ###

# Github Token:
github_password="password1234"
alias ghp='echo $github_code'

# Download YT Mp3:
downloadMp3(){ yt-dlp -x --audio-format mp3 $1; }

# Download YT Mp4:
downloadMp4(){ yt-dlp --format mp4 $1; 
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