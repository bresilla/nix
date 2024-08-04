{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./services.nix
      ./programs.nix
      ./packages/packages.nix
    ];
  options = {};
  config = {
    environment.systemPackages = with pkgs; [
      wget
      doas
      git
      zsh
      tmux
      screen
      python3
#---------------------
      innernet
      tailscale
      zerotierone 
      netbird
#---------------------
      nnn
      argc
      atuin
      bat
      choose
      delta
      devbox
      direnv
      devenv
      dfc
      eza
      fzf
      fzy
      gh
      gum
      helix
      hub
      ipinfo
      ollama
      pixi
      starship
      tealdeer
      tab-rs
      zoxide
      micromamba
    ];    
  };
}
