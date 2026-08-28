{ pkgs, inputs, ... }:
let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  home.packages = [
    pkgs-unstable.spotdl

    pkgs.flameshot	# kde does not need

    pkgs.luminance
    pkgs.iwmenu
    pkgs.iwd		# iwmenu dependency, networkmanager backend for KDE compatibility
    pkgs.bzmenu
    pkgs.pwmenu
    pkgs.waypaper
    pkgs.hyprpaper	# waypaper dependency
  ];
  programs.fastfetch.enable = true;
  programs.fuzzel.enable = true;
  programs.yt-dlp = {
    enable = true;
    package = pkgs-unstable.yt-dlp;
  };
}
