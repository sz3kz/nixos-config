{ config, lib, pkgs, ... }: {

  # 1. Enable OpenGL/Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # 2. Load the NVIDIA driver
  services.xserver.videoDrivers = [ "intel" "nvidia" ];
  
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
  };

  boot.extraModprobeConfig = ''
    options nvidia "NVreg_RestrictProfilingToAdminUsers=0"
  '';
}
