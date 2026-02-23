{ declaredSettings, ... }:

{
  security.sudo.enable = true;
  users.users.${declaredSettings.username}.extraGroups = [ "wheel" ];
}
