{config, lib, pkgs, declaredSettings, ...}:

{
  services.fwupd.enable = true;

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ declaredSettings.username ];
  virtualisation.virtualbox.guest.enable = true;
  virtualisation.virtualbox.guest.dragAndDrop = true;

  services.upower.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    tree
    git
    arandr
    autorandr
    discord
    # ---- i3
    lxappearance
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
   "discord"
   "nvidia-x11"
   "nvidia-settings"
   "vscode"
  ];
}
