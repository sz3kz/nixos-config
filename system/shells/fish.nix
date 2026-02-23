{ pkgs, declaredSettings, ... }:

{
  users.users.${declaredSettings.username} = {
    shell = pkgs.fish;
  };
  programs.fish.enable = true;
}
