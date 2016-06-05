#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export VISUAL="vim"

export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx

screenfetch

alias cman='man -M /usr/local/zhman/share/man/zh_CN'
alias lsa='ls -a --color=auto'
alias grep='grep --color=auto'
alias vi='vim'
alias sshvps='ssh -p 17847 root@216.189.159.243'

#bash历史补全
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
