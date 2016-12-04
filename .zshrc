# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/imma/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#beep aus
setopt NO_BEEP

autoload -U colors && colors

autoload -U promptinit
promptinit

PROMPT="%{$fg[white]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[yellow]%}%1/%{$reset_color%}]"

#vi mode
set -o vi

bindkey '[3~' delete-char
bindkey '[1;5D' emacs-backward-word
bindkey '[1;5C' emacs-forward-word
bindkey '[5~' history-beginning-search-backward
bindkey '[6~' history-beginning-search-forward

#libreoffice gtk3
#export SAL_USE_VCLPLUGIN=gtk3
#defautlt java-versionen über archlinux-java status einsehbar
export JAVA_HOME=/usr/lib/jvm/default

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias syu='sudo pacman -Syu'
alias ..='cd ..'
alias music='zsh  ~/.scripts/music-player'
alias lock='dm-tool lock'
alias lk='zsh ~/.scripts/locker.sh'
alias hc='herbstclient'
alias clock='while :; do printf "%s\r" "$(date +%r)"; sleep 1 ; done'
alias feh-diashow='feh -ZXF'
alias find-biggest-files='du -a . | sort -nr | head -n +10'


#lazy git
alias gs="git status"
alias gp="git pull"
alias gpo="git push origin"
alias gd="git diff"
alias gds="git diff --staged"
alias gdh="git diff HEAD HEAD^"
alias gt="git difftool"
alias gth="git difftool HEAD HEAD^"
alias git-clone-latest-only="echo 'todo'"
alias git-tree="git log --graph --abbrev-commit --decorate --oneline --all"
alias git-check-for-updates="git fetch origin && git log HEAD..origin/master --oneline"
alias git-clone-latest-only="git clone --depth=1 --branch=master"
alias git-show-changes='git log -p' #File
