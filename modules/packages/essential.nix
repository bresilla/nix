{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    environment.systemPackages = with pkgs; [
      wget
      doas
      git
      direnv
      zsh
      eza
      bat
      helix
      innernet
      tailscale
      zerotierone 
      netbird
      vim
      fzy
      fzf
      starship
      zoxide
      atuin
      pixi
      micromamba
      devbox
      devenv
      hub
      gh
      delta
      argc
      dfc
      nnn
      python3
    ];    
  };
}
