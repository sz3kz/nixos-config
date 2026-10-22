{pkgs, declaredSettings, ...}:

{
  home.packages = with pkgs; [
    pciutils
  ];
  programs.htop.enable = true;
}
