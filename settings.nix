{
  # instructs "flake.nix" to import ./hosts/<currentDevice-value>
  currentDevice = "dell-g3-15-3500";		# flake.nix imports ./hosts/dell

  # hostname of device
  deviceHostName = "hardware";		# /etc/hostname -> "hardware"

  # primary user's username
  username = "proxi";

  # instructs "flake.nix" to import ./home/users/<currentDevice-value>.nix
  user_profile = "user0";		# flake.nix imports ./home/users/user0.nix
}
