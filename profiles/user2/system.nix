{ config, declaredSettings, ... }:

{
  imports = [
    ../../system/desktop-environments/kde.nix
    ../../system/login-managers/sddm.nix
    ../../system/shells/fish.nix
  ];
  users.groups.${declaredSettings.username} = {};
  users.users.${declaredSettings.username} = {
    isNormalUser = true;
    group = "${declaredSettings.username}";
    hashedPasswordFile = config.age.secrets.password-hash.path;
  };
}
