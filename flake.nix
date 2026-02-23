{
  description = "A very basic flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-25.11";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs: 
    let
      myVariables = import /etc/nixos/settings.nix;
    in {
      nixosConfigurations.${myVariables.deviceHostName} = nixpkgs.lib.nixosSystem {
        specialArgs = { 
          inherit myVariables; 
        };
        modules = [ 
          ./hosts/${myVariables.currentDevice}
          ./system/GENERAL
          ./users/${myVariables.user_profile}/system.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = { 
              inherit myVariables; 
            };
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${myVariables.username} = 
              import ./users/${myVariables.user_profile}/home.nix;
          }
        ];
      };
    };
}
