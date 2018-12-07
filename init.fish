# env {{{1
set -xg PATH $PATH ~/.local/bin
set -xg EDITOR nvim
# }}}

# alias {{{1

# misc {{{2
alias vim='nvim'
# }}}

# git {{{2
alias gco='git checkout'
alias gst='git status'
alias ggpull='git pull origin (git_branch_name)'
alias ggpush='git push origin (git_branch_name)'
# }}}

# proxy {{{2
alias myproxy='export http_proxy=http://127.0.0.1:8118;export https_proxy=https://127.0.0.1:8118'
alias noproxy='export http_proxy=;export https_proxy='
# }}}

# }}}

# local config
if test -e ~/.config/omf/init_local.fish
    . ~/.config/omf/init_local.fish
end
