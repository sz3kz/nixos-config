{pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    tree
    git
    arandr
    # ---- i3
    lxappearance
  ];
}
