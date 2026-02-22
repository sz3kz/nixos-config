{ config, lib, pkgs, ... }: {

  # 1. Enable OpenGL/Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # 2. Load the NVIDIA driver
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    # Modesetting is required for most modern setups
    modesetting.enable = true;
    
    # Power management can be glitchy; start with it off
    powerManagement.enable = false;
    
    # Use the NVidia open source kernel module (not the same as Nouveau)
    # Only available for newer cards (Turing/1660 and up). 
    # Set to false if you have an older card.
    open = true;

    # Enable the Nvidia settings menu
    nvidiaSettings = true;

    # Select the driver version (usually 'stable' is best)
    package = config.boot.kernelPackages.nvidia_x11;
  };

}
