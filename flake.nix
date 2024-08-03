{
  description = "nix configs";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-24.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
    };
  };

  outputs = {self, nixpkgs, home-manager, ... }: 
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      flux = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./machines/flux/configuration.nix ];
      };
      # core = lib.nixosSystem {
      #   system = "x86_64-linux";
      #   modules = [ ./machines/core/configuration.nix ];
      # };
    };
  };
}
