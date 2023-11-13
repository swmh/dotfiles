if status is-interactive
    set PATH /sbin /usr/sbin $PATH
    set PATH /usr/local/go/bin $HOME/go/bin $PATH
    set PATH $HOME/.local/scripts $HOME/.local/bin $PATH
    set PATH $HOME/.cargo/bin $PATH

    # fzf catppuccin mocha theme
    set -Ux FZF_DEFAULT_OPTS "\
        --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
        --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
        --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

    set fish_greeting

    set EDITOR /usr/local/bin/nvim

    zoxide init --cmd j fish | source
    source ~/.asdf/asdf.fish

    alias ls "exa --icons"
    krabby random
end
