{declaredSettings, ... }:
{
  networking = {
    hostName = "${declaredSettings.hostname}";
    nameservers = [ "8.8.8.8" "8.8.4.4" "1.1.1.1" "9.9.9.9" ];
    networkmanager.dns = "none";
  };

}
