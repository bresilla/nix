{ config, lib, pkgs, home-manager, disko, ... }:

{
  imports =
    [
      ./hardware-config.nix
      ./disko-config.nix
      ./../../modules/modules.nix
      ./../../overlays/overlays.nix
    ];
  config = {
    networking.hostName = "flux"; 
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "24.05";
    nix.settings.experimental-features = [ "nix-command" "flakes"];
    users.users.root.openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBiuf0IbDIui0Hrw/0x/4d7CLYHUAKFiH82zKb6vzKzG"
    ];
  };
}
