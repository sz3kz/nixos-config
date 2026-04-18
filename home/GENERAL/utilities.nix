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
    tree
    libreoffice
    obsidian
    ffmpeg
    zoxide
  ];

  programs.zoxide.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
