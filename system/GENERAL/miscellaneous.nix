{ pkgs, declaredSettings, ... }:

{
  programs.nix-ld.enable = true;	# needed to run remote clang-format & clang-tidy binaries via pre-commit git hook
  programs.steam.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.enableRedistributableFirmware = true;

  hardware.i2c.enable = true;
  services.udev.extraRules = ''
    KERNEL=="i2c-[0-9]*", GROUP="i2c", MODE="0660"
    ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="amdgpu_bl1", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
  '';
  users.users.${declaredSettings.username}.extraGroups = [ "i2c" ];

}
