
{ config, lib, pkgs, myVariables, ... }:

{
  networking.hostName = myVariables.deviceHostName;
}

