{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./services.nix
      ./essential.nix
      ./programs.nix
    ];
  options = {};
  config = {};
}
