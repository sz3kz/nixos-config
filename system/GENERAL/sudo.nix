{ pkgs, declaredSettings, ... }:

{
  security.sudo.package = pkgs.sudo.override { withInsults = true; };
  security.sudo.enable = true;
  users.users.${declaredSettings.username}.extraGroups = [ "wheel" ];
}
