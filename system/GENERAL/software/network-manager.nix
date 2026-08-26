{ declaredSettings, ... }:

{
  networking.networkmanager = {
    enable = true;
    wifi.backend = "iwd";	# iwmenu needs iwd, but kde needs networkmanager
  };
  users.users.${declaredSettings.username}.extraGroups = [ "networkmanager" ];
}
