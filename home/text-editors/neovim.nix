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
    ];
    extraPython3Packages = ps: with ps; [
      pynvim
      jupyter-client
      ipykernel
    ];
  };
}
