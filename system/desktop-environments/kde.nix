{pkgs, ...}:

{
  services = {
    desktopManager.plasma6.enable = true;
  };
  environment.systemPackages = with pkgs; [
    kdePackages.krohnkite
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    bluedevil
    spectacle
    kate
  ];
}
