
{ config, lib, pkgs, myVariables, ... }:

{
  imports = [
    ./polish-keyboard-layout.nix
  ];

  services.xserver.enable = true;
}

