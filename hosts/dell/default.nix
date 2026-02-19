
{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./hardware-specific-software.nix
    ./hostname.nix
  ];
}

