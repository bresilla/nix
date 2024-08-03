{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./boot.nix
      ./users.nix
      ./security.nix
      ./network.nix
      ./environment.nix
      ./packages/packages.nix
    ];
  options = {};
  config = {};
}
