{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    time.timeZone = "Europe/Amsterdam";

    i18n = {
      defaultLocale = "en_US.UTF-8";
      extraLocaleSettings = {
        LC_ADDRESS = "nl_NL.UTF-8";
        LC_IDENTIFICATION = "nl_NL.UTF-8";
        LC_MEASUREMENT = "nl_NL.UTF-8";
        LC_MONETARY = "nl_NL.UTF-8";
        LC_NAME = "nl_NL.UTF-8";
        LC_NUMERIC = "nl_NL.UTF-8";
        LC_PAPER = "nl_NL.UTF-8";
        LC_TELEPHONE = "nl_NL.UTF-8";
        LC_TIME = "nl_NL.UTF-8";
      };
    };
    users.users.bresilla = {
      isNormalUser = true;
      shell = pkgs.zsh;
      description = "Trim Bresilla";
      extraGroups = [ "bresilla" "uinput" "dialout" "wheel" "innernet" ];
      packages = with pkgs; [];
    };
  };
}
