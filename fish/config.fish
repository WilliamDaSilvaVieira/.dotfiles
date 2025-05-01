if status is-interactive
    freshfetch
end

alias l "eza -lag --sort=type"

function v
    if test -n "$argv"
        nvim $argv
    else
        nvim (fzf)
    end
end

function h
    if test -n "$argv"
        helix $argv
    else
        helix (fzf)
    end
end

fish_add_path $HOME/.cargo/bin/

set fish_greeting
set -gx EDITOR helix
set -gx VISUAL helix

starship init fish | source

zoxide init fish | source
