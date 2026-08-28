{ pkgs, inputs, ... }:
let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  home.packages = [
    pkgs.fastfetch
    pkgs.zip
    pkgs.unzip
    pkgs.file
    pkgs.arandr		# kde does not need
    pkgs.autorandr	# kde does not need
    pkgs.ffmpeg
    pkgs.brightnessctl
    pkgs.texliveSmall

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

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "sz3kz";
      user.email = "139809645+sz3kz@users.noreply.github.com";
      core = {
        editor = "nvim";
        pager = "delta";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
