{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bluetuith
    fastfetch
    flameshot
    yt-dlp
    gimp2
    alsa-utils
    cmus
    zip
    unzip
    file
    rclone
    arandr
    autorandr
    git
    libreoffice
    obsidian
    ffmpeg
    zoxide
    bat
    eza
  ];

  programs.zoxide.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
