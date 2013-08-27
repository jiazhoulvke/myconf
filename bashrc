export PS1="${debian_chroot:+($debian_chroot)}\[\e[36;3;1m\]\w\[\e[35;1m\]\$\[\e[0m\]"
alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'
alias lls='ls -Slh'
alias llt='ls -rtlh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ggpush='git push origin master'
alias ggpull='git pull origin master'
alias ggcommit='git commit -a'
alias gengxin='sudo apt-get update && sudo apt-get upgrade'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

shopt -s histappend
PROMPT_COMMAND='history -a;echo -ne "\033]0;$PWD\007'
HISTIMEFORMAT="%F %T"
HISTSIZE=2048

#https://github.com/seebi/dircolors-solarized
eval `dircolors ~/.myconf/dircolors.ansi-dark`

if [ -f "$HOME/.bashrc_local" ];then
    . "$HOME/.bashrc_local"
fi

# vim: filetype=sh
