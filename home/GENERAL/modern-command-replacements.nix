{ pkgs, ... }:

{
  home.packages = [
    pkgs.gping
  ];
  programs.eza.enable = true;
  programs.ripgrep.enable = true;
  programs.fd.enable = true;
  programs.zoxide.enable = true;
  programs.bat.enable = true;
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };

}
