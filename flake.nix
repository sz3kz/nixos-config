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
    obsidian-electron-overlay = {
      url = "github:NixOS/nixpkgs/0c88e1f2bdb93d5999019e99cb0e61e1fe2af4c5";
    };
  };

  outputs = { self, nixpkgs, home-manager, obsidian-electron-overlay, ... } @inputs: 
    let
      declaredSettings= import /etc/nixos/settings.nix;
    in {
      nixosConfigurations.${declaredSettings.hostname} = nixpkgs.lib.nixosSystem {
        specialArgs = { 
          inherit declaredSettings; 
        };
        modules = [ 
          ./hosts/${declaredSettings.host}
          ./system/GENERAL
          ./profiles/${declaredSettings.profile}/system.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = { 
              inherit declaredSettings; 
            };
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${declaredSettings.username} = 
              import ./profiles/${declaredSettings.profile}/home.nix;
          }
          # Overlay
          ({ pkgs, ... }: {
            #nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (pkgs.lib.getName pkg) [
            #  "obsidian"
            #];
            nixpkgs.overlays = [
              (final: prev: {
                obsidian = (import obsidian-electron-overlay {
                  system = prev.system;
                  config = { allowUnfree = true; };
                }).obsidian;
              })
            ];
          })
        ];
      };
    };
}
