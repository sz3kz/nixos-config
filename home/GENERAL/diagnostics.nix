{pkgs, declaredSettings, ...}:

{
  home.packages = with pkgs; [
    pciutils
  ];
  programs.btop.enable = true;
}
