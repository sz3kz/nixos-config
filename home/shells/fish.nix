# This is for the user's fish configuration

{
  programs.fish = {
    enable = true;
    shellAliases = {
      cd = "echo \"fish: Unbased command: cd\" && false #"; # use zoxide in favor of cd builtin
      cat = "echo \"fish: Unbased command: cat\" && false #"; # use bat in favor of cat command
      ls = "echo \"fish: Unbased command: ls\" && false #"; # use eza in favor of ls command
      ezai = "eza --icons";
      ezait = "eza --icons --tree";
    };

    interactiveShellInit = ''
      zoxide init fish | source
      direnv hook fish | source

      set fish_greeting
      echo "You want a good shell? Go fish!"
    '';
  };
}
