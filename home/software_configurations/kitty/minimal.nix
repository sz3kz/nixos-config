{pkgs, ...}:

{
  home.packages = [
    pkgs.kitty
  ];
  programs.kitty = {
    enable = true;
    theme = "Tokyo Night";
  };
}
