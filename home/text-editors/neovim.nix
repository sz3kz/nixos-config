{ pkgs, inputs, ... }:

let
  pkgs-unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  programs.neovim = {
    enable = true;
    extraLuaPackages = ps: [ ps.magick ];

    extraPackages = [
      pkgs.python3Packages.jupytext
      pkgs.imagemagick
      pkgs.gcc
      pkgs-unstable.tree-sitter
      pkgs.lazygit
      pkgs.nixd
      pkgs.lua-language-server
    ];
    extraPython3Packages = ps: with ps; [
      pynvim
      nbformat
      jupyter-client
      ipykernel
    ];
  };
}
