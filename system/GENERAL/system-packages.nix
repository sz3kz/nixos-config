{pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    tree
    git
    arandr
    autorandr
    # ---- i3
    lxappearance
  ];
}
