alias la="ls -a --color"
alias ll="ls -hl --color"
alias lla="ls -ahl --color"
alias ls="ls --color"


export PATH="$HOME/.local/bin:$PATH"


export VISUAL="nvim"
export EDITOR="nvim"


export FZF_DEFAULT_OPTS='--tmux center,70%,70% --layout reverse --border top'

export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}' --multi"

eval "$(fzf --bash)"


eval "$(starship init bash)"


help() {
    "$@" --help 2>&1 | bat --style=plain --language=help
}


[ -f $HOME/.bashrc.local ] && . $HOME/.bashrc.local
