{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    networking.useDHCP = true;
    networking.wireless.iwd.enable = true;
    networking.useNetworkd = true;
   };
}
