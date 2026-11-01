{ config, declaredSettings, ... }:

{
  imports = [
    ../../system/xserver/i3.nix
    ../../system/xserver/lightdm.nix
    ../../system/xserver/GENERAL
    ../../system/shells/fish.nix
  ];
  users.groups.${declaredSettings.username} = {};
  users.users.${declaredSettings.username} = {
    isNormalUser = true;
    group = "${declaredSettings.username}";
    hashedPasswordFile = config.age.secrets.password-hash.path;
  };
}
