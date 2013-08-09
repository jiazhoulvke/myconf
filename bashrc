export PS1="${debian_chroot:+($debian_chroot)}\[\e[36;3;1m\]\w\[\e[35;1m\]\$\[\e[0m\]"
alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'
alias lls='ls -Slh'
alias llt='ls -rtlh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#https://github.com/seebi/dircolors-solarized
eval `dircolors ~/.myconf/dircolors.ansi-dark`

if [ -f "$HOME/.bashrc_local" ];then
    . "$HOME/.bashrc_local"
fi
