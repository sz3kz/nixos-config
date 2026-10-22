{ pkgs, ... }:
{
  home.packages = [
    pkgs.gimp2
    pkgs.libreoffice
    pkgs.obsidian
    pkgs.qpdf
    pkgs.vlc
    pkgs.megasync
  ];
  programs.anki.enable = true;
  programs.texlive.enable = true;	# anki needs this
}
