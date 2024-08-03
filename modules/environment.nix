{ config, lib, pkgs, ... }:

{
  imports =[];
  options = {};
  config = {
    environment.variables = {
      LANG = "en_US.UTF-8";
      LANGUAGE = "en_US:en";
      LC_ALL = "en_US.UTF-8";
    };
  };
}
