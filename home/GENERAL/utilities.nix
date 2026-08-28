{ pkgs, inputs, ... }:
let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  home.packages = [
    pkgs.fastfetch

    pkgs-unstable.yt-dlp
    pkgs.spotdl

    pkgs.flameshot	# kde does not need

    pkgs.luminance
    pkgs.fuzzel
    pkgs.iwmenu
    pkgs.iwd		# iwmenu needs iwd, configured as a backend for networkmanager for KDE compatibility
    pkgs.bzmenu
    pkgs.pwmenu
  ];
}
