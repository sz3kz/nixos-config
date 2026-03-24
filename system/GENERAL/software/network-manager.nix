{ declaredSettings, ... }:

{
  networking.networkmanager.enable = true;
  users.users.${declaredSettings.username}.extraGroups = [ "networkmanager" ];
}
