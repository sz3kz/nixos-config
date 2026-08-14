{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraLuaPackages = ps: [ ps.magick ];
    extraPackages = [ pkgs.imagemagick ];
    extraPython3Packages = ps: with ps; [
      pynvim
      jupyter-client
      ipykernel
    ];
  };
}
