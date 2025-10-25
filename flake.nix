{
  description = "My first flake idk what im doing :p";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows="nixpkgs";
  };

  outputs = { self, nixpkgs,home-manager,... }: 
    let
        lib=nixpkgs.lib;
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
    in{

        homeConfigurations = {
            oscar = home-manager.lib.homeManagerConfiguration{
                inherit pkgs;
                modules = [./home.nix ];
            };
        };

    };

 
}
