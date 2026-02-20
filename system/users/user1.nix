
{ config, lib, pkgs, myVariables, ... }:

{
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
