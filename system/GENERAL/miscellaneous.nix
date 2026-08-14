{ pkgs, ...}:

{
  programs.nix-ld.enable = true;	# needed to run remote clang-format & clang-tidy binaries via pre-commit git hook
  programs.steam.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.enableRedistributableFirmware = true;
}
