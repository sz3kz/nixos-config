{pkgs, declaredSettings, ...}:

{
  home.packages = with pkgs; [
    pciutils
    btop
    fwupd
    upower
  ];
}
