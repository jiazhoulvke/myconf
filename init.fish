alias myproxy='export http_proxy=http://127.0.0.1:8118;export https_proxy=https://127.0.0.1:8118'
alias myproxy='export http_proxy=;export https_proxy='
alias vihuge='vim -n -u NONE -i NONE -N' # 编辑大文件用，不使用交换文件、vimrc、语法高亮、viminfo等

set -x PATH $PATH ~/.local/bin
