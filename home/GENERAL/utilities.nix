{ pkgs, inputs, ... }:
let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  home.packages = [
    pkgs.fastfetch
    pkgs.arandr		# kde does not need
    pkgs.autorandr	# kde does not need
    pkgs.brightnessctl
    pkgs.texliveSmall
    pkgs.luminance

    pkgs-unstable.yt-dlp
    pkgs.spotdl
    pkgs.flameshot	# kde does not need

    pkgs.nixd
    pkgs.lua-language-server

    pkgs.fuzzel
    pkgs.iwmenu
    pkgs.iwd		# iwmenu needs iwd, configured as a backend for networkmanager for KDE compatibility
    pkgs.bzmenu
    pkgs.pwmenu
  ];
}
