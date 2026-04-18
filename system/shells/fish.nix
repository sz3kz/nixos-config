# This configuration is just to register the shell
# on the system and hook it to the primary user,
# any configurations are done via home-manager

{ pkgs, declaredSettings, ... }:

{
  users.users.${declaredSettings.username} = {
    shell = pkgs.fish;
  };
  programs.fish.enable = true;
}
