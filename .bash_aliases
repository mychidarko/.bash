alias sudo='sudo '

alias path='echo -e ${PATH//:/\\n}'

alias poweroff='sudo shutdown -h now'

alias ~='code'
alias ~~='code-insiders'

# git stuff
alias gac='git add . && git commit -m'
alias gp='git push'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gitlog='git log --graph --oneline --decorate --all'
alias glog='git log --graph --all --decorate'
alias gc='git clone'
alias gs='git status'
alias git@mychi='git config --global user.name "darko-mychi" && git config --global user.email "mickdd22@gmail.com" && git config --global init.defaultBranch main'

alias hs='history | grep'

alias xampp='sudo ~/xampp-start.sh'

alias c='clear'
alias cl='clear;ls;pwd'
alias pl='pwd; ls'

# custom bash config
alias bash:code='code ~/.bash'
alias bash:codi='code-insiders ~/.bash'
alias bash:cd='cd ~/.bash'
alias bash:aliases='cat ~/.bash/.bash_aliases'
alias bash:re='source ~/.bashrc && echo Bash config reloaded'
alias zsh:re='source ~/.zshrc && echo Zsh config reloaded'

alias ssh:re='ssh-add -D'
alias ssh:config='${EDITOR:-code} ~/.ssh/config'
alias ssh:clear='rm ~/.ssh/multiplex/* -f && echo SSH connection cache cleared;'
alias ssh:list='echo Currently open ssh connections && echo && l ~/.ssh/multiplex/'

# navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias pj='cd ~/Projects'
alias ldir='ls -al | grep ^d'

alias df='df -h'
alias df2='df -Tha --total'
alias du='du -ach | sort -h'
alias free='free -mt'

alias mkdir='mkdir -pv'
alias xcp='rsync -ah --info=progress2'
alias cx='chmod +x'

alias myip='curl http://ipecho.net/plain; echo'

alias randpass='openssl rand -base64 20'

alias panic='espeak "OH NO, the sky is falling!"'

alias q='exit'

# npm yarn stuff
alias ya='yarn add'
alias yag='yarn global add'
