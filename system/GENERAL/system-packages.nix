{config, lib, pkgs, ...}:

{
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
