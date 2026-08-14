{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraLuaPackages = ps: [ ps.magick ];
    extraPackages = with pkgs; [
      python3Packages.jupytext
      imagemagick
    ];
    extraPython3Packages = ps: with ps; [
      pynvim
      jupyter-client
      ipykernel
    ];
  };
}
