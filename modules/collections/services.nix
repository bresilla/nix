{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
      services = {
      xserver = {
        xkb.layout = "us";
        xkb.variant = "";
      };
      logind = { 
        lidSwitch = "ignore";
      };
      openssh.enable = true;
      tailscale.enable = true;
      zerotierone.enable = true;
      netbird.enable = true;
    };
  };
}
