{ config, lib, pkgs, ... }:

{
  imports =[];
  options = {
    modules.hyprland.enable = lib.mkEnableOption "enable hyprland config";
  };
  config = lib.mkIf config.modules.hyprland.enable {
    programs.hyprland = {
      enable = true;
    };
  };
}
