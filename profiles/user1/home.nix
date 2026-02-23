{pkgs, declaredSettings, ...}:

{
  imports = [
    ../../home/software_configurations/kitty/minimal.nix
    ../../home/software_configurations/i3/standard.nix
    ../../home/software_configurations/firefox/minimal.nix
  ];

  home.username = declaredSettings.username;
  home.homeDirectory = "/home/${declaredSettings.username}";
  home.packages = with pkgs; [
    neovim
    fastfetch
    nnn
    bluetuith
    fluffychat
    flameshot
    yt-dlp
    discord
    pciutils
  ];

  home.stateVersion = "25.11";
}
