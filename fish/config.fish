set -g fish_transient_prompt 1

cat ~/.cache/wal/sequences 2> /dev/null

alias ls="eza --group-directories-first --icons"
alias ll="eza --long --group-directories-first --git --icons"
alias la="eza --all --long --group-directories-first --git --icons"
alias cd="z"
alias ff="fastfetch"

mise activate fish | source

zoxide init fish | source
