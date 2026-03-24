# The least amount of software needed to make changes to the nixos config
{pkgs, ...}:

{
  users.users.root.packages = with pkgs; [
    vim
    tree
    git
  ];
}
