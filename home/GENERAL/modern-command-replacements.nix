{ pkgs, ... }:

{
  home.packages = [
    pkgs.eza
    pkgs.ripgrep
    pkgs.fd
    pkgs.gping
  ];

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };

  programs.zoxide.enable = true;
  programs.bat.enable = true;
}
