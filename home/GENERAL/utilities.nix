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
  ];
}
