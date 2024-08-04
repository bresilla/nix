{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./boot.nix
      ./users.nix
      ./security.nix
      ./network.nix
      ./collections/collections.nix
    ];
  options = {};
  config = {
    environment.variables = {
      LANG = "en_US.UTF-8";
      LANGUAGE = "en_US:en";
      LC_ALL = "en_US.UTF-8";
    };
  };
}
