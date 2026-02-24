{pkgs, declaredSettings, ...}:

{
  home.packages = with pkgs; [
    neovim
  ];
}
