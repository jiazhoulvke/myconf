# config: {{{1

# emacs风格按键绑定
bindkey -e

# path: {{{2
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:~/.local/bin
# }}}

# alias: {{{2
alias tmux='tmux -2'
alias info='info --vi-keys'
alias ll='ls -lSrh'
alias myproxy='export http_proxy=http://127.0.0.1:8118;export https_proxy=http://127.0.0.1:8118'
alias noproxy='export http_proxy=;export https_proxy='
# }}}

# other: {{{2
if [[ "$(uname -s)" = "Darwin" ]];then
	#eval `gdircolors ~/.myconf/dircolors.ansi-dark`
else
	eval `dircolors ~/.myconf/dircolors.ansi-dark`
fi

if [ -f "$HOME/.zshrc_local" ];then
    . "$HOME/.zshrc_local"
fi

if [ -f "$HOME/Dropbox/cli_conf/zshrc_local" ];then
    . "$HOME/Dropbox/cli_conf/zshrc_local"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
# }}}

# }}}

# zplug: {{{1

#install: curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source ~/.zplug/init.zsh

#theme
zplug "themes/bureau", from:oh-my-zsh, as:theme

zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh

# oh-my-zsh plugins: {{{2
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/composer", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/jump", from:oh-my-zsh
zplug "plugins/man", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
# }}}

zplug load
# }}}
# vim: fdm=marker
