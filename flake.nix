{
  description = "nix configs";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-24.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    snowfall = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, disko, ... }: 
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      flux = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./machines/flux/configuration.nix ];
      };
      nixo = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ 
          ./machines/nixo/configuration.nix 
          disko.nixosModules.disko
        ];
      };
    };
  };
}
