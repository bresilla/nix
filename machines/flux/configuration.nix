{ config, lib, pkgs, home-manager,... }:

{
  imports =
    [
      ./hardware-config.nix
      ./../../modules/modules.nix
      ./../../overlays/overlays.nix
    ];
  config = {
    networking.hostName = "flux"; 
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "24.05";
    nix.settings.experimental-features = [ "nix-command" "flakes"];
  };
}
