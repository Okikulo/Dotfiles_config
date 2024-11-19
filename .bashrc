#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/usr/bin/helix:$HOME/.cargo/bin"

# Custom alias
alias locki="swaylock -i ~/wallpapers/mountains.png --scaling fill"
alias yz="yazi"
alias dotfile="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# Custom enviroment variables
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Directory Persistance Yazi
function zi() {
    tmp="$(mktemp)"
    yazi --cwd-file "${tmp}"
    if [[ -f "${tmp}" ]]; then
        dir="$(cat "${tmp}")"
        rm -f "${tmp}"
        if [[ -d "${dir}" ]]; then
            cd "${dir}"
        fi
    fi
}
