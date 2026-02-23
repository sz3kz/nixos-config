{ pkgs, declaredSettings, ... }:

{
  imports = [
    ../../system/xserver/i3.nix
    ../../system/xserver/lightdm.nix
    ../../system/xserver/GENERAL
    ../../system/GENERAL/timezone-polish.nix
  ];
  users.groups.${declaredSettings.username} = {};
  users.users.${declaredSettings.username} = {
    isNormalUser = true;
    shell = pkgs.fish;
    group = "${declaredSettings.username}";
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPasswordFile = "/etc/nixos/system/PASSWORDS/${declaredSettings.username}.hash";
  };

  programs.fish.enable = true;
}
