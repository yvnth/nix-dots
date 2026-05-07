export PATH="$HOME/.cargo/bin:$HOME/.config/scripts:$PATH"
export GOPATH="$HOME/.local/share/go"
export PATH="$PATH:$GOPATH/bin"

export EDITOR=hx
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export SYSTEMD_EDITOR="$EDITOR"
export MANPAGER='hx'

export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"

HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/bash/history"
mkdir -p "$(dirname "$HISTFILE")"
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend cmdhist lithist

source ~/.config/shell/aliases

eval "$(fzf --bash)"
eval "$(zoxide init bash --cmd cd)"
