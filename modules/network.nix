{ config, lib, pkgs, ... }:

{
  options = {};
  config = {
    networking.wireless.iwd.enable = true;
    networking.useNetworkd = true;
   };
}
