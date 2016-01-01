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

bindkey '[3~' delete-char
bindkey '[1;5D' emacs-backward-word
bindkey '[1;5C' emacs-forward-word
bindkey '[5~' history-beginning-search-backward
bindkey '[6~' history-beginning-search-forward

#libreoffice gtk3
#export SAL_USE_VCLPLUGIN=gtk3

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias syu='sudo pacman -Syu'
alias ..='cd ..'
alias wifi='nmtui'
