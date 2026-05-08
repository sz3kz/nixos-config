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
    libreoffice
    obsidian
    ffmpeg
    qpdf
    vlc

    # modern standard shell command replacements
    bat
    eza
    ripgrep
    fd
    gping
    delta
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
