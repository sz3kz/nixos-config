{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bluetuith
    fastfetch
    flameshot
    yt-dlp
  ];
}
