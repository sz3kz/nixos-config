{config, lib, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    vim
    tree
    git
  ];
}
