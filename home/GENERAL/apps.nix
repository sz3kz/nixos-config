{ pkgs, ... }:
{
  home.packages = [
    pkgs.gimp2
    pkgs.libreoffice
    pkgs.obsidian
    pkgs.qpdf
    pkgs.vlc
    pkgs.anki
    pkgs.megasync
  ];
}
