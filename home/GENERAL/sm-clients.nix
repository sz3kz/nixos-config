{ pkgs, ...}:

{
  home.packages = with pkgs; [
    discord
    fluffychat
    reddix
    teams-for-linux
  ];
}
