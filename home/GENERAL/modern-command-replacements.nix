{ pkgs, ... }:

{
  home.packages = [
    pkgs.eza
    pkgs.ripgrep
    pkgs.fd
    pkgs.gping
    pkgs.delta
  ];

  programs.zoxide.enable = true;
  programs.bat.enable = true;
}
