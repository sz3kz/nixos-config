{ osConfig, pkgs, ... }:
{
  home.packages = [
    pkgs.gimp2
    pkgs.libreoffice
    pkgs.obsidian
    pkgs.qpdf
    pkgs.vlc
    pkgs.megasync
  ];

  programs.anki = {
    enable = true;
    sync = {
      keyFile = osConfig.age.secrets.anki-sync-key.path;
      usernameFile = osConfig.age.secrets.anki-sync-user.path;
    };
  };
  programs.texlive.enable = true;	# anki needs this
}
