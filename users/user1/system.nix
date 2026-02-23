
{ config, lib, pkgs, myVariables, ... }:

{

  imports = [
    ../../system/xserver/i3.nix
    ../../system/xserver/lightdm.nix
    ../../system/xserver/GENERAL
    ../../system/GENERAL/timezone-polish.nix
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
