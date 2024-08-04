{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    programs = {
      zsh = {
        enable = true;
      };
      gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
      };
      hyprland = {enable = true;};
    };

  };
}
