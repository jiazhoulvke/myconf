# 用于查看载入时间
#BENCHMARK=1 && zmodload zsh/zprof

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

# history file {{{3
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# }}}

#dircolors {{{3
if [[ "$(uname -s)" = "Darwin" ]];then
	#eval `gdircolors ~/.myconf/dircolors.ansi-dark`
else
	eval `dircolors ~/.myconf/dircolors.ansi-dark`
fi
# }}}

# local config file {{{3
if [ -f "$HOME/.zshrc_local" ];then
    . "$HOME/.zshrc_local"
fi

if [ -f "$HOME/Dropbox/cli_conf/zshrc_local" ];then
    . "$HOME/Dropbox/cli_conf/zshrc_local"
fi
# }}}

# fzf {{{3
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_ COMMAND='ag -g ""'

export FZF_DEFAULT_OPTS="--inline-info --layout=reverse"
export FZF_CTRL_T_OPTS="--inline-info --height 50% --layout=reverse --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || [[ \$(file --mime {}) =~ image ]] && catimg -w 50 {} || (highlight -O ansi {} || cat {} || echo {}) 2> /dev/null | head -500'"
# }}}

# completion like emacs, use cache
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' use-cache true

# completion after '='(like --prefix=/usr)
setopt magic_equal_subst

# case insensitive path completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# if the entry is not a command but matches dir, cd to that dir.
setopt autocd

# Remove '/' and '-' from $WORDCHARS for finer Ctrl-w behaviour
export WORDCHARS='*?_.[]~=&;!#$%^(){}<>'
# }}}

# }}}

# zplug: {{{1

[ ! -d ~/.zplug ] && curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source ~/.zplug/init.zsh

#theme
zplug "themes/bureau", from:oh-my-zsh, as:theme

# zplug "junegunn/fzf", use:"shell/completion.zsh"
# zplug "junegunn/fzf", use:"shell/key-bindings.zsh"

zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh

# oh-my-zsh plugins: {{{2
zplug "djui/alias-tips"
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
zplug "zsh-users/zsh-autosuggestions", use:"zsh-autosuggestions.zsh"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", use:"zsh-history-substring-search.zsh"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# }}}

zplug check || zplug install
zplug load

# plugins config: {{{2

# zsh-history-substring-search {{{3
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# }}}

# zsh-autosuggestions {{{3

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Prefix to use when saving original versions of bound widgets
ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX=autosuggest-orig-

ZSH_AUTOSUGGEST_STRATEGY=default

# Widgets that clear the suggestion
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
	history-search-forward
	history-search-backward
	history-beginning-search-forward
	history-beginning-search-backward
	history-substring-search-up
	history-substring-search-down
	up-line-or-beginning-search
	down-line-or-beginning-search
	up-line-or-history
	down-line-or-history
	accept-line
)

# Widgets that accept the entire suggestion
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
	forward-char
	end-of-line
	vi-forward-char
	vi-end-of-line
	vi-add-eol
)

# Widgets that accept the entire suggestion and execute it
ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=(
)

# Widgets that accept the suggestion as far as the cursor moves
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
	forward-word
	emacs-forward-word
	vi-forward-word
	vi-forward-word-end
	vi-forward-blank-word
	vi-forward-blank-word-end
	vi-find-next-char
	vi-find-next-char-skip
)

# Widgets that should be ignored (globbing supported but must be escaped)
ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
	orig-\*
	beep
	run-help
	set-local-history
	which-command
	yank
	yank-pop
)

# Max size of buffer to trigger autosuggestion. Leave undefined for no upper bound.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=

# Pty name for calculating autosuggestions asynchronously
ZSH_AUTOSUGGEST_ASYNC_PTY_NAME=zsh_autosuggest_pty
# }}}

# }}}

# }}}
# vim: fdm=marker
