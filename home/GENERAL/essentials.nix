{ pkgs, ... }:

{
  home.packages = [
    pkgs.zip
    pkgs.unzip
    pkgs.file
    pkgs.ffmpeg
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
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
