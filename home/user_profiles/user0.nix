{config, pkgs, myVariables, ...}:

{
  imports = [
    ../software_configurations/kitty/minimal.nix
    ../software_configurations/xfce/kitty-terminal.nix
    ../software_configurations/firefox/minimal.nix
  ];

  home.username = myVariables.username;
  home.homeDirectory = "/home/${myVariables.username}";
  home.packages = with pkgs; [
    neovim
    fastfetch
    nnn
    bluetuith
    fluffychat
  ];

  home.stateVersion = "25.11";
}
