export PS1="${debian_chroot:+($debian_chroot)}\[\e[36;3;1m\]\w\[\e[35;1m\]\$\[\e[0m\]"
alias ls='ls --color'
alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'
alias lls='ls -Slh'
alias llt='ls -rtlh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ggpush="git push origin \$(git branch | grep '*' | awk '{print \$2}')"
alias ggpull="git pull origin \$(git branch | grep '*' | awk '{print \$2}')"
alias gst='git status'
alias gco='git checkout'
alias gcm='git checkout master'
alias ggcommit='git commit -a'
alias gengxin='sudo apt-get update && sudo apt-get upgrade'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias tmux='tmux -2'
alias info='info --vi-keys'

shopt -s histappend
HISTCONTROL=ignoredups
HISTIGNORE="[   ]*:&:bg:fg:exit"
PROMPT_COMMAND='history -a ~/.bash_history; echo -ne "\033]0;$PWD\007"; $PROMPT_COMMAND;'
HISTIMEFORMAT="%F %T"
HISTSIZE=99999

source $HOME/.myconf/z.sh

#https://github.com/seebi/dircolors-solarized
eval `dircolors ~/.myconf/dircolors.ansi-dark`

if [ -f "$HOME/.bashrc_local" ];then
    . "$HOME/.bashrc_local"
fi

if [ -f "/etc/bash_completion" ];then
    . /etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# vim: filetype=sh
