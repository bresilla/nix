{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

  };
}
