# Based on https://github.com/w3cj/dotfiles

HOST_NAME=emaniDev
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin:"/mnt/c/Program Files/Git/bin"


export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtorg='\e[0;33m' # Orange
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("🐐" "🐱‍👤" "🎲" "🍊" "🐉" "🌵" "🏴‍☠️")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtorg%s: $txtred%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

fortune | cowsay -f tux

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias invm='source ~/.nvm/nvm.sh'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ----------------------
# Code
# ----------------------
alias cmd='/mnt/c/WINDOWS/system32/cmd.exe /C'
alias code-insiders='/mnt/c/Users/{USER}/AppData/Local/Programs/"Microsoft VS Code Insiders/Code - Insiders.exe"'
# ----------------------
# Git Aliases
# ----------------------
alias git='git.exe'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
