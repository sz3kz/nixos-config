
{ config, lib, pkgs, myVariables, ... }:

{

  imports = [
    ../xserver/i3.nix
    ../xserver/lightdm.nix
    ../xserver/GENERAL
  ];
  users.groups.${myVariables.username} = {};
  users.users.${myVariables.username} = {
    isNormalUser = true;
    shell = pkgs.fish;
    group = "${myVariables.username}";
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPasswordFile = "/etc/nixos/system/PASSWORDS/${myVariables.username}.hash";
  };

  programs.fish.enable = true;
}
