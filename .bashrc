#PS1="\[\e]2;\u@\H \w\a\e[32;1m\]\T$\[\e[0m\] "
#PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\]\W\[\e[1;34m\]\$ \[\e[0m\]'
export PS1="${debian_chroot:+($debian_chroot)}\[\e[36;3;1m\]\w\[\e[35;1m\]\$\[\e[0m\]"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -l -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
