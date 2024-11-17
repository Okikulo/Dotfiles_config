#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/usr/bin/helix:$HOME/.cargo/bin"

# Custom
alias locki="swaylock -i ~/wallpapers/mountains.png --scaling fill"
alias yz="yazi"
alias dotfile="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
