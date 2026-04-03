{pkgs, declaredSettings, ...}:

{
  imports = [
    ../../home/GENERAL
    ../../home/terminals/kitty.nix
    ../../home/system-graphical-interfaces/i3.nix
    ../../home/browsers/firefox.nix
    ../../home/text-editors/neovim.nix
    ../../home/text-editors/clion.nix
  ];

  home.username = declaredSettings.username;
  home.homeDirectory = "/home/${declaredSettings.username}";
  home.stateVersion = "25.11";
}
