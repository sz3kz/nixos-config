{ myVariables, ... }
{
  imports = [
    ./${myVariables.user_profile}.nix
  ];

  users.mutableUsers = false;
  security.sudo.enable = true;
}

