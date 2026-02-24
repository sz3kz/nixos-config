{pkgs, ...}:

{
  home.packages = [
    pkgs.kitty
  ];
  programs.kitty = {
    enable = true;
    themeFile = "tokyo_night_night";
  };
}
