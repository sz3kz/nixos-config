{pkgs, ...}:

{
  services = {
    desktopManager.plasma6.enable = true;
    power-profiles-daemon.enable = true;
  };
  environment.systemPackages = with pkgs; [
    kdePackages.krohnkite
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    spectacle
    kate
  ];
}
