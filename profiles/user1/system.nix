{ pkgs, declaredSettings, ... }:

{
  imports = [
    ../../system/xserver/i3.nix
    ../../system/xserver/lightdm.nix
    ../../system/xserver/GENERAL
    ../../system/GENERAL/timezone-polish.nix
    ../../system/shells/fish.nix
  ];
  users.groups.${declaredSettings.username} = {};
  users.users.${declaredSettings.username} = {
    isNormalUser = true;
    group = "${declaredSettings.username}";
    hashedPasswordFile = "/etc/nixos/system/PASSWORDS/${declaredSettings.username}.hash";
  };
}
