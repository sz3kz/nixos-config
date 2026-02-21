###########################################
# SETTINGS' EXPLANATIONS & EXAMPLE VALUES #
###########################################
{
  # Instructs "flake.nix" to import "./hosts/<currentDevice-value>"
  # Example: "flake.nix" to import "./hosts/dell/default.nix"
  currentDevice = "dell-g3-15-3500";

  # Value of 'networking.hostName' (declared in './system/GENERAL/hostname.nix')
  # Example: networking.hostName -> "hardware"
  deviceHostName = "hardware";

  # Primary user's username, primary user's password hash file name
  # Example: users.users.jack = {...}, hashedPasswordFile = "/etc/nixos/system/PASSWORDS/jack.hash"
  username = "jack";

  # Instructs "flake.nix" to import: 
  #   "./system/users/<user_profile>.nix" (system-level user configurations)
  #   "./home/user_profiles/<user_profile>.nix" (home-level user configurations)
  # Example: "flake.nix" to import:
  #   "./system/users/user0.nix", and 
  #   "./home/user_profiles/user0.nix"
  user_profile = "user0";
}
