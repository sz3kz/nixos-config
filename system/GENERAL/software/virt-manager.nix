{ pkgs, declaredSettings, ... }:

{
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  users.users.${declaredSettings.username}.extraGroups = [ "libvirtd" ];
}
