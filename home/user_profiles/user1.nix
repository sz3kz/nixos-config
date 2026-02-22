{config, pkgs, myVariables, ...}:

{
  imports = [
    ../software_configurations/kitty/minimal.nix
    ../software_configurations/i3/standard.nix
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
    flameshot
    yt-dlp
    discord
  ];

  home.stateVersion = "25.11";
}
