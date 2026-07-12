{ declaredSettings, ... }:

{
  imports = [
    ../../system/wayland/kde.nix
    ../../system/wayland/sddm.nix
    ../../system/shells/fish.nix
  ];
  users.groups.${declaredSettings.username} = {};
  users.users.${declaredSettings.username} = {
    isNormalUser = true;
    group = "${declaredSettings.username}";
    hashedPasswordFile = "/etc/nixos/system/PASSWORDS/${declaredSettings.username}.hash";
  };
}
