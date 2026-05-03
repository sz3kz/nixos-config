{declaredSettings, ...}:

{
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ declaredSettings.username ];
  #virtualisation.virtualbox.guest.enable = true;
  virtualisation.virtualbox.guest.dragAndDrop = true;
}
