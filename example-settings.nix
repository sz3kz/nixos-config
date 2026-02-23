###########################################
# SETTINGS' EXPLANATIONS & EXAMPLE VALUES #
###########################################
{
  # Instructs "flake.nix" to import "./hosts/<currentDevice-value>"
  # Example: "flake.nix" to import "./hosts/dell/default.nix"
  host = "dell";

  # Value of 'networking.hostName' (declared in './system/GENERAL/hostname.nix')
  # Example: networking.hostName -> "hardware"
  hostname = "hardware";

  # Primary user's username, primary user's password hash file name
  # Example: users.users.jack = {...}, hashedPasswordFile = "/etc/nixos/system/PASSWORDS/jack.hash"
  username = "jack";

  # Instructs "flake.nix" to import: 
  #   "./profiles/<profile>/system.nix" (system-level user configurations)
  #   "./profiles/<profile>/home.nix" (home-level user configurations)
  # Example: "flake.nix" to import:
  #   "./profiles/user1/home.nix", and 
  #   "./profiles/user1/system.nix"
  profile = "user1";
}
