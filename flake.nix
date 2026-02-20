
{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    settings = {
      url = "path:/etc/nixos";
      flake = false;
    };

  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs: 
    let
      myVariables = import "${inputs.settings}/settings.nix";
    in {
      nixosConfigurations.${myVariables.deviceHostName} = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit myVariables; };
        modules = [ 
          ./system/general 
          ./hosts/${myVariables.currentDevice}
          { _module.args.myVariables = myVariables; }
          ./system/users/${myVariables.user_profile}.nix
          ./home/xserver
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = { inherit myVariables; };

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${myVariables.username} = import ./home/user_profiles/${myVariables.user_profile}.nix;
          }
        ];
      };
    };
}
