
{ config, lib, pkgs, myVariables, ... }:

{
  imports = [
    ./${myVariables.guiConfiguration}.nix
    ./polish-keyboard-layout.nix
  ];

  services.xserver.enable = true;
}

