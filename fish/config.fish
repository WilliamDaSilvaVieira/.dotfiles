﻿if status is-interactive
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
        hx $argv
    else
        hx (fzf)
    end
end

function nsync
    cd $HOME/flake
    doas chmod -R go+rw .git/ overlays/ pkgs/ configuration.nix flake.lock flake.nix hardware-configuration.nix home.nix
    doas chown -R root .
    nix flake update
    doas nixos-rebuild switch --flake .
    doas chown -R $USER .
end

fish_add_path $HOME/.cargo/bin/

set fish_greeting

starship init fish | source

if test -f "$HOME/.dotfiles/fish/lf_icons.fish"
    source $HOME/.dotfiles/fish/lf_icons.fish
end

if test -f "$HOME/nixos_config/.dotfiles/fish/lf_icons.fish"
    source $HOME/nixos_config/.dotfiles/fish/lf_icons.fish
end
