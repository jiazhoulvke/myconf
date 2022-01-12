# env {{{1
set -xg PATH $PATH ~/.local/bin /usr/local/sbin ~/go/bin
set -xg EDITOR nvim
set -xg FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -l -g ""'
set -xg GOPROXY "https://goproxy.cn,direct"
# }}}

# alias {{{1

# misc {{{2
alias myip='curl -s http://tbip.alicdn.com/api/queryip' # 获取ip信息
alias vihuge='vim -n -u NONE -i NONE -N' # 编辑大文件用，不使用交换文件、vimrc、语法高亮、viminfo等
# }}}

# git {{{2
alias gco='git checkout'
alias gst='git status'
alias ggpull='git pull origin (git_branch_name)'
alias ggpush='git push origin (git_branch_name)'
alias gdw='git diff --word-diff'
# }}}

# proxy {{{2
alias myproxy='export http_proxy=http://127.0.0.1:8118;export https_proxy=http://127.0.0.1:8118'
alias noproxy='export http_proxy=;export https_proxy='
# }}}

# mysql {{{2
alias mysql33060='mysql -uroot -proot -h127.0.0.1 -P33060'
alias mysql33068='mysql -uroot -proot -h127.0.0.1 -P33060'
alias mysql_docker='docker run --rm --name mysql_temp -p 33060:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:8 --default-authentication-plugin=mysql_native_password'
# }}}

# ubuntu {{{2
alias apt_proxy='sudo apt -c ~/.myconf/apt_proxy.conf'
# }}}

# }}}

#theme https://github.com/jiazhoulvke/theme-bira-jzlk
#docker https://github.com/wfscheper/plugin-docker

# ~/.alias
if test -e ~/.alias
    . ~/.alias
end

if test -e ~/.config/alias
    . ~/.config/alias
end

# local config
if test -e ~/.config/omf/init_local.fish
    . ~/.config/omf/init_local.fish
end
