{ pkgs, ...}:

{
  home.packages = with pkgs; [
    discord
    fluffychat
  ];
}
