# This is for the user's fish configuration

{
  programs.fish = {
    enable = true;
    shellAliases = {
      cd = "echo \"fish: Unbased command: cd\" #"; # use zoxide in favor of cd builtin
    };

    interactiveShellInit = ''
      zoxide init fish | source
      direnv hook fish | source

      set fish_greeting
      echo "You want a good shell? Go fish!"
    '';
  };
}
