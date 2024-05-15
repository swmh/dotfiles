if status is-interactive
    set PATH /sbin /usr/sbin $PATH
    set PATH /usr/local/go/bin $HOME/go/bin $PATH
    set PATH $HOME/.local/scripts $HOME/.local/bin $PATH
    set PATH $HOME/.cargo/bin $PATH
    set PATH $HOME/Apps/RustRover-233.11799.306/bin $PATH
    set PATH $HOME/Apps/zig-linux-x86_64-0.11.0 $PATH
    set PATH $HOME/zig/bin $PATH
    set EDITOR $HOME/.local/bin/hx
    set VISUAL $HOME/.local/bin/hx

    set secure_path $PATH

    # fzf catppuccin mocha theme
    set -Ux FZF_DEFAULT_OPTS "\
        --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
        --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
        --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

    set fish_greeting

    zoxide init --cmd j fish | source
    source ~/.asdf/asdf.fish

    alias ls "exa --icons"
    alias cat bat
    alias k="kubectl"
    alias ocaml="rlwrap ocaml"
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /home/swmh/.ghcup/bin $PATH # ghcup-env

# opam configuration
source /home/swmh/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true
