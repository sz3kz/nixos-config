
{ config, lib, pkgs, myVariables, ... }:

{

  imports = [
    ../xserver/xfce.nix
    ../xserver/GENERAL
  ];
  users.groups.${myVariables.username} = {};
  users.users.${myVariables.username} = {
    isNormalUser = true;
    shell = pkgs.fish;
    group = "${myVariables.username}";
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPasswordFile = "/etc/nixos/system/passwords/${myVariables.username}.hash";
  };

  programs.fish.enable = true;
}
