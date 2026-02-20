
# Example configurations with explanations as to what they do!
 
{
  # instructs "flake.nix" to import ./hosts/<currentDevice-value>
  currentDevice = "dell";		# flake.nix imports ./hosts/dell

  # hostname of device
  deviceHostName = "hardware";		# /etc/hostname -> "hardware"

  # primary user's username
  username = "proxi";

  # instructs "flake.nix" to import ./home/users/<currentDevice-value>.nix
  user_profile = "user0";		# flake.nix imports ./home/users/user0.nix

  # instructs "flake.nix" to (via ./home/xserver/default.nix )import ./home/xserver/<guiConfiguration-value>.nix
  # NOTE: will be soon integrated into userX files
  guiConfiguration = "xfce";		# flake.nix (./home/xserver/default.nix) imports ./home/xserver/xfce.nix
}
