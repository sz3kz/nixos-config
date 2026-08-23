{ pkgs, inputs, ... }:
let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  home.packages = [
    pkgs-unstable.yt-dlp
    pkgs.bluetuith
    pkgs.blueman
    pkgs.fastfetch
    pkgs.flameshot
    pkgs.gimp2
    pkgs.cmus
    pkgs.zip
    pkgs.unzip
    pkgs.file
    pkgs.rclone
    pkgs.arandr
    pkgs.autorandr
    pkgs.libreoffice
    pkgs.obsidian
    pkgs.ffmpeg
    pkgs.qpdf
    pkgs.vlc
    pkgs.brightnessctl
    pkgs.anki
    pkgs.texliveSmall
    pkgs.megasync
    pkgs.spotdl
    pkgs.nixd
    pkgs.lua-language-server

    # modern standard shell command replacements
    pkgs.bat
    pkgs.eza
    pkgs.ripgrep
    pkgs.fd
    pkgs.gping
    pkgs.delta
  ];

  programs.zoxide.enable = true;
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
