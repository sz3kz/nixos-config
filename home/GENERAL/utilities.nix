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

    # modern standard shell command replacements
    zoxide
    bat
    eza
    ripgrep
  ];

  programs.zoxide.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
