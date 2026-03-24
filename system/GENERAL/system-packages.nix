{config, lib, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    vim
    tree
    git
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
   "discord"
   "nvidia-x11"
   "nvidia-settings"
   "vscode"
  ];
}
